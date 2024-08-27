struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(4294967295u, -1i, vec4<i32>(1i, 5046i, 0i, 11077i), -1i), Struct_4(61013u, 16509i, vec4<i32>(2147483647i, 9515i, -1i, -1i), 44362i), Struct_4(41410u, 2147483647i, vec4<i32>(2147483647i, 25461i, 46354i, 41837i), -1i), Struct_4(1u, 0i, vec4<i32>(2287i, 30927i, 10457i, i32(-2147483648)), 2147483647i), Struct_4(75073u, i32(-2147483648), vec4<i32>(-78771i, 2147483647i, 31764i, 29087i), 2147483647i), Struct_4(4215u, 2147483647i, vec4<i32>(2147483647i, -18636i, -16631i, -26002i), 7434i), Struct_4(7127u, 6609i, vec4<i32>(-1i, 1i, 12734i, -30116i), 1i), Struct_4(58149u, -59672i, vec4<i32>(2147483647i, 2066i, 63679i, -1i), -1i), Struct_4(48011u, 8277i, vec4<i32>(-1i, i32(-2147483648), 0i, -27235i), -14693i), Struct_4(35914u, 0i, vec4<i32>(9848i, -17747i, i32(-2147483648), 4388i), 2147483647i), Struct_4(37934u, -57478i, vec4<i32>(-1i, -28745i, -11383i, 0i), 32586i), Struct_4(0u, 1i, vec4<i32>(-82940i, 0i, -22595i, i32(-2147483648)), 41012i), Struct_4(58854u, 55088i, vec4<i32>(i32(-2147483648), -1i, -15781i, 11395i), 1i), Struct_4(4294967295u, 0i, vec4<i32>(0i, 33845i, 0i, 1i), -28636i), Struct_4(4294967295u, 0i, vec4<i32>(2147483647i, 18124i, -75792i, -1i), 41794i), Struct_4(0u, 2147483647i, vec4<i32>(21515i, 1i, i32(-2147483648), 1i), 1i));

var<private> global2: array<i32, 24> = array<i32, 24>(2147483647i, 9289i, i32(-2147483648), 30936i, -1i, -1i, 2147483647i, -45007i, 13654i, 1i, 2147483647i, -90325i, -52123i, -33112i, i32(-2147483648), 16585i, 26347i, -1561i, 47032i, -13912i, 31505i, 35131i, 23715i, 2147483647i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = Struct_3(Struct_1(!all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 69815u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 26u)], 26u)], 26u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(120879u, 26u)], global0[_wgslsmith_index_u32(u_input.d, 26u)], 4294967295u), vec3<u32>(0u, 4294967295u, u_input.d))), vec3<u32>(u_input.b, u_input.d, 1u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f), -244f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-253f))))));
    global1 = array<Struct_4, 16>();
    let var_1 = var_0.a.b.xz;
    global2 = array<i32, 24>();
    let var_2 = vec2<bool>(true, any(!(!vec4<bool>(var_1.x, var_0.a.a, var_1.x, true))));
    return ~(18245i << (1u % 32u));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = any(vec3<bool>(true, true, true));
    let var_1 = !select(vec3<bool>(true, all(vec4<bool>(false, true, false, true)), false), vec3<bool>(false, false, select(true, u_input.d <= arg_0.c.x, any(vec4<bool>(false, true, true, false)))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), true));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(383f, -1229f, -1050f))), vec3<f32>(1662f, 193f, 718f), var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2416f - -560f), _wgslsmith_f_op_f32(step(277f, -2009f)), true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(309f)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1454f + 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1632f)) * _wgslsmith_f_op_f32(abs(1247f))))));
    var var_3 = _wgslsmith_clamp_i32(-2147483647i, ~7857i >> (~_wgslsmith_sub_u32(arg_0.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)]) % 32u), 1i) >= abs(-u_input.e);
    let var_4 = -608f;
    return var_4;
}

fn func_2(arg_0: u32, arg_1: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(510f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2410f * -245f), 1205f)), _wgslsmith_f_op_f32(max(620f, -1003f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -918f)))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1807f + 600f), any(vec4<bool>(false, true, arg_1, arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(617f, 1317f)) * -656f))), 1614f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_2(-22889i, u_input.e, vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 26u)], 101929u, global0[_wgslsmith_index_u32(u_input.d, 26u)], global0[_wgslsmith_index_u32(arg_0, 26u)]), vec2<u32>(41546u, u_input.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1857f, -1169f, arg_1))) + 1582f)));
    global2 = array<i32, 24>();
    global1 = array<Struct_4, 16>();
    let var_1 = _wgslsmith_f_op_f32(abs(var_0.x));
    global2 = array<i32, 24>();
    return StorageBuffer(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, _wgslsmith_mod_u32(arg_0, 70710u), ~6554u), ~(~vec3<u32>(0u, u_input.d, arg_0))), abs(vec3<u32>(u_input.d, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(arg_0, 26439u))))), vec4<i32>(select(0i, min(-1i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)])), true), u_input.c.x, -5066i, -4900i), _wgslsmith_f_op_f32(f32(-1f) * -324f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 26>();
    var var_0 = vec4<bool>(true, true, u_input.b >= 63882u, true);
    var var_1 = _wgslsmith_sub_i32(-global2[_wgslsmith_index_u32(61682u, 24u)], ~(i32(-1i) * -24496i));
    let var_2 = Struct_1(var_0.x, vec3<bool>(!var_0.x, !(1u >= ~u_input.b), !(!any(vec3<bool>(false, var_0.x, false)))), _wgslsmith_sub_u32(~0u, 14376u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-572f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f * -2073f)))));
    let var_3 = var_0.x;
    var var_4 = -vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, -4761i), _wgslsmith_div_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.d, 24u)], 1903i), u_input.e)), -(func_1(global2[_wgslsmith_index_u32(u_input.b, 24u)]) ^ (u_input.e & -1i)));
    let x = u_input.a;
    s_output = func_2(u_input.d, !all(!var_0.wyw));
}

