struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec2<f32>(1000f, 726f), false, 1447f, 1986f, 0u));

var<private> global1: vec2<f32> = vec2<f32>(-566f, 1720f);

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    return arg_0;
}

fn func_1() -> Struct_2 {
    var var_0 = abs(_wgslsmith_div_vec2_i32(vec2<i32>(~2147483647i, -31885i), abs(-u_input.b.xx) << (~(vec2<u32>(64889u, global0.a.e) >> (vec2<u32>(global0.a.e, global0.a.e) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global0 = Struct_4(global2[_wgslsmith_index_u32(global0.a.e, 31u)]);
    let var_1 = !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1770f))) > -359f);
    let var_2 = 27458u;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-202f)), _wgslsmith_f_op_f32(trunc(-566f)), 652f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(990f, global1.x, global1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, -1206f, 1192f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global0.a.c, _wgslsmith_f_op_f32(global1.x + global1.x))), _wgslsmith_f_op_f32(global1.x * 1635f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.a.x, -1895f)) * _wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, -2957f, -1444f))))));
    return func_2(Struct_2(vec2<u32>(global0.a.e, min(4294967295u, var_2) ^ ~0u)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, var_3.x), vec2<f32>(_wgslsmith_f_op_f32(global0.a.a.x - -163f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.x)))))));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    var var_0 = global0.a.e << (32089u % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, -2024f));
    var var_2 = 1181f;
    let var_3 = global2[_wgslsmith_index_u32(~4294967295u, 31u)];
    var var_4 = var_3.e;
    return vec4<i32>(-1i, _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, u_input.a.x, 50818i)) >> (_wgslsmith_div_u32(firstLeadingBit(29918u), select(1u, 1u, global0.a.b)) % 32u), 6051i), -26315i, u_input.a.x & u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 31>();
    let var_0 = func_1();
    let var_1 = _wgslsmith_mult_vec3_u32(firstLeadingBit(~select(~vec3<u32>(0u, var_0.a.x, var_0.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(48810u, 45104u, 22588u), vec3<u32>(global0.a.e, global0.a.e, 1u)), !vec3<bool>(true, global0.a.b, global0.a.b))), ~vec3<u32>(~(~0u), 4294967295u, 33306u >> (_wgslsmith_mod_u32(1u, 4294967295u) % 32u)));
    var var_2 = vec4<i32>(abs(min(abs(-1i), u_input.a.x ^ -7595i) | u_input.a.x), select(~u_input.a.x, -firstLeadingBit(~u_input.b.x), true), -reverseBits(~(~u_input.b.x)), -28161i);
    global2 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(func_3(238f) >> (vec4<u32>(var_1.x, 137240u, var_1.x, global0.a.e) % vec4<u32>(32u))), ~vec4<i32>(select(2147483647i, -10251i, global0.a.b), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 1i, -2147483647i), false), 46007u, var_1);
}

