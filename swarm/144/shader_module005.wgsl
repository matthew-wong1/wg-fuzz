struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(0i, 2147483647i, 47756i), vec3<i32>(6297i, -31394i, -1i), vec3<i32>(1i, 21529i, 19827i), vec3<i32>(-1i, 2147483647i, 23359i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(6898i, -19158i, 8121i), vec3<i32>(1i, 971i, -1i), vec3<i32>(1i, -1i, i32(-2147483648)));

var<private> global1: u32 = 1u;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    var var_0 = 2147483647i >> (u_input.a % 32u);
    global1 = u_input.a;
    global3 = array<Struct_1, 16>();
    return Struct_2(firstLeadingBit(vec2<u32>(abs(abs(u_input.a)), 4294967295u >> ((u_input.a & 1u) % 32u))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1964f, -1373f)), -1000f), 20200i, vec2<f32>(-1301f, _wgslsmith_f_op_f32(f32(-1f) * -537f))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(8384u, 0u & u_input.a, 1u, u_input.a), vec4<u32>(35704u, u_input.a, 20452u, 68310u))), 16u)], 16939u);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> i32 {
    global1 = arg_2.a.x;
    return _wgslsmith_div_i32(arg_2.c.b, ~(~(-40380i)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 801f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2047f, global2.x, -174f) + vec3<f32>(global2.x, global2.x, global2.x))))), 11552i, vec2<f32>(956f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1248f * global2.x))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~_wgslsmith_div_u32(u_input.a, 1u), u_input.a, ~u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 13943u, u_input.a, u_input.a) >> (~(vec4<u32>(4294967295u, u_input.a, 15439u, 52423u) << (vec4<u32>(u_input.a, 6806u, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(reverseBits(u_input.a), min(4294967295u, 38420u), 0u, ~0u) ^ (~vec4<u32>(0u, u_input.a, 0u, u_input.a) | ~vec4<u32>(u_input.a, u_input.a, 7687u, 32864u)))), 8u)];
    let var_3 = func_2();
    let var_4 = -abs(~vec4<i32>(var_1.b, func_3(Struct_3(var_3, u_input.a, vec3<bool>(true, var_0.x, var_0.x)), var_3.b.b, Struct_2(var_3.a, var_3.b, Struct_1(vec3<f32>(1476f, -940f, 775f), var_3.c.b, var_3.b.c), var_3.d)), var_1.b & 2147483647i, _wgslsmith_add_i32(-6420i, 0i)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_mod_i32(-1i, (-17826i >> (~_wgslsmith_add_u32(1u, u_input.a) % 32u)) ^ var_0.c.b);
    global3 = array<Struct_1, 16>();
    var var_2 = _wgslsmith_f_op_f32(global2.x + var_0.b.c.x);
    let var_3 = Struct_4(vec2<bool>(true, true), func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer((select(min(var_0.d, var_0.d), var_0.a.x & u_input.a, false) ^ abs(var_0.a.x)) | abs(_wgslsmith_sub_u32(72755u, u_input.a)));
}

