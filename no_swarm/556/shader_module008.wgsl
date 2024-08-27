struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(-23289i, i32(-2147483648), -10989i, -101172i), vec4<i32>(-70026i, 1i, -10730i, 1i), vec4<i32>(2147483647i, -17480i, -40274i, -18632i), vec4<i32>(1i, -6847i, -1i, 1i), vec4<i32>(2147483647i, -2309i, 8551i, -58835i), vec4<i32>(47465i, 1i, 2147483647i, -2170i), vec4<i32>(1i, 1i, 8365i, -7796i), vec4<i32>(2147483647i, -30187i, 1i, -30186i), vec4<i32>(-33151i, 0i, -32470i, 0i), vec4<i32>(-19475i, -24267i, -1i, 1i), vec4<i32>(-21059i, 1506i, i32(-2147483648), 1i), vec4<i32>(0i, -1i, -20279i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 0i, 26028i), vec4<i32>(38575i, i32(-2147483648), -36430i, 25507i), vec4<i32>(-11405i, 0i, -35783i, 0i), vec4<i32>(1i, i32(-2147483648), -1i, 12045i), vec4<i32>(7678i, 0i, 0i, 1i));

var<private> global2: array<Struct_1, 31>;

var<private> global3: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(60457u, 31u)];
    global1 = array<vec4<i32>, 17>();
    let var_1 = -639f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -532f) - var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))), !var_0.e.x)) + var_0.a);
    let var_3 = var_0.b.wzz;
    var_0 = Struct_1(-469f, vec4<i32>(0i, 49374i, _wgslsmith_add_i32(_wgslsmith_mult_i32(-var_0.c.x, max(-40745i, 0i)), 13667i), 1i), vec4<i32>(abs(_wgslsmith_mod_i32(var_3.x, u_input.a.x)), -1i, -1i, ~var_3.x), 30910u, select(var_0.e, var_0.e, !(!var_0.e.x)));
    global2 = array<Struct_1, 31>();
    let var_4 = _wgslsmith_sub_vec3_u32(((countOneBits(vec3<u32>(61971u, var_0.d, 4294967295u)) ^ vec3<u32>(0u, 27344u, var_0.d)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.d, u_input.b.x) | vec3<u32>(u_input.b.x, 4294967295u, 0u), ~vec3<u32>(57968u, 0u, u_input.b.x)) % vec3<u32>(32u))) >> (~(~vec3<u32>(0u, 0u, 1u) & ~vec3<u32>(85142u, 2093u, var_0.d)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~vec3<u32>(~4294967295u, var_0.d, ~var_0.d), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 44749u, var_0.d), vec3<u32>(62975u, var_0.d, var_0.d) | vec3<u32>(21110u, 39537u, 55125u)) ^ _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b.x, 4294967295u, 1u)), vec3<u32>(var_0.d, u_input.b.x, 0u))));
    var var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1036f + var_1), _wgslsmith_sub_i32(25768i, 2147483647i), -(u_input.a.ww >> (min(u_input.b, select(u_input.b, u_input.b, vec2<bool>(false, var_0.e.x))) % vec2<u32>(32u))));
}

