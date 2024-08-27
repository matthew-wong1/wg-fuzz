struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(24282u, vec4<u32>(4294967295u, 1u, 30158u, 4294967295u), vec2<i32>(1i, -36331i), 0i);

var<private> global1: Struct_2 = Struct_2(4294967295u, vec3<i32>(2147483647i, -7712i, 16536i), vec3<i32>(2147483647i, 221i, 0i));

var<private> global2: array<Struct_2, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -6990i, global0.c.x, select(global0.d, global0.c.x, true)), firstTrailingBit(vec3<i32>(global1.b.x, 11423i, u_input.a) & vec3<i32>(2147483647i, 2608i, u_input.a))) >> (_wgslsmith_div_vec3_u32(select(u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.x, global1.a, 34847u), global0.b.wzz), true), vec3<u32>(_wgslsmith_mod_u32(global1.a, 4294967295u), global0.a, ~u_input.b.x)) % vec3<u32>(32u)), ~(-global1.c), ~_wgslsmith_add_i32(~(-2147483647i), ~u_input.a), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(893f, _wgslsmith_div_f32(-404f, -384f), true)))), 428f));
}

