struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(true, false, true, vec4<i32>(0i, -27591i, 0i, -1i))), Struct_2(Struct_1(false, false, false, vec4<i32>(15985i, 2147483647i, 0i, 20117i))), Struct_2(Struct_1(true, true, false, vec4<i32>(2147483647i, 6393i, -1i, -47290i))), Struct_2(Struct_1(true, true, false, vec4<i32>(1i, 8176i, 1i, i32(-2147483648)))), Struct_2(Struct_1(true, true, true, vec4<i32>(2147483647i, i32(-2147483648), -33369i, 27691i))), Struct_2(Struct_1(false, false, false, vec4<i32>(2147483647i, -41202i, -1i, -29777i))), Struct_2(Struct_1(true, true, false, vec4<i32>(20072i, 51785i, 1i, 12077i))), Struct_2(Struct_1(true, false, true, vec4<i32>(17038i, -38663i, 31539i, 0i))), Struct_2(Struct_1(true, false, true, vec4<i32>(48130i, i32(-2147483648), -8523i, 15958i))));

var<private> global2: array<i32, 25>;

var<private> global3: array<i32, 10> = array<i32, 10>(-6175i, -1i, -4353i, -4340i, 31930i, -1i, -8149i, -18208i, 0i, 22459i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(-1665f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1169f)))), _wgslsmith_f_op_f32(floor(-1087f)));
    var var_1 = global1[_wgslsmith_index_u32(~(~countOneBits(~1u)), 9u)];
    var var_2 = global1[_wgslsmith_index_u32(0u, 9u)];
    global1 = array<Struct_2, 9>();
    var_1 = Struct_2(var_1.a);
    return var_2.a;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = vec2<u32>(43869u, 0u);
    let var_1 = vec4<f32>(530f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-200f))), 681f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-704f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-893f - -506f) * _wgslsmith_f_op_f32(f32(-1f) * -611f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(960f, -240f, all(vec3<bool>(false, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-872f, 399f))))));
    var var_2 = var_1.x;
    global2 = array<i32, 25>();
    var var_3 = all(vec3<bool>(!(!any(vec3<bool>(true, true, false))), true, true || (false && all(vec4<bool>(true, true, false, false)))));
    return func_1();
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 10u)], arg_2.d.x, -33766i), vec3<i32>(u_input.b.x, -26492i, 0i))) | arg_1.d.zwy, arg_1.d.xzz, vec3<i32>(countOneBits(1i & arg_2.d.x), 61552i, ~(arg_0.a.d.x | -2147483647i) >> (~1u % 32u)));
    let var_1 = ~_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(abs(abs(_wgslsmith_add_u32(0u, 0u))), 25u)], 13469i);
    return vec4<bool>(true, arg_0.a.a, false, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(904f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1515f, 680f), _wgslsmith_f_op_f32(step(-372f, _wgslsmith_div_f32(-792f, 1261f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-265f, 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(745f * -2030f))), 916f) - vec4<f32>(1f, 1f, 1f, 1f));
    global1 = array<Struct_2, 9>();
    let var_1 = Struct_1(true, !(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(36095u, 25u)], -28275i), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(0u, 25u)], 2147483647i), vec3<bool>(true, false, true)), vec3<i32>(u_input.b.x, -1i, u_input.b.x)) != -1i), all(select(func_3(global1[_wgslsmith_index_u32(~1u, 9u)], func_1(), func_2(1u)), vec4<bool>(true, true, true, true), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false)))), vec4<i32>(2147483647i, countOneBits(global2[_wgslsmith_index_u32(1u, 25u)]), abs(max(-2147483647i, ~global3[_wgslsmith_index_u32(1u, 10u)])), 9365i));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~1u) & countOneBits(select(select(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 113907u, 1u), vec3<u32>(4294967295u, 0u, 0u)), func_3(global1[_wgslsmith_index_u32(0u, 9u)], var_1, var_1).x), 1u, true)), 9u)];
    let var_3 = ~select(4294967295u, ~(1u << (0u % 32u)), true);
    let var_4 = var_3 ^ 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 208f, var_0.x) - _wgslsmith_f_op_vec3_f32(trunc(var_0.wyx))), var_0.wwz)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1508f, 1012f, 395f), vec3<f32>(var_0.x, -1109f, -953f)) - _wgslsmith_f_op_vec3_f32(-var_0.zxy))), ~firstTrailingBit(24219u), select(countOneBits(vec3<u32>(min(4294967295u, var_3), _wgslsmith_add_u32(var_3, 131081u), var_3)), ~(~vec3<u32>(49087u, var_3, var_3)), !select(select(vec3<bool>(var_1.c, var_2.a.a, true), vec3<bool>(var_2.a.a, var_2.a.b, var_2.a.b), vec3<bool>(var_1.c, false, true)), !vec3<bool>(var_1.a, var_2.a.a, true), !vec3<bool>(true, false, var_2.a.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-986f, 127f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -785f))), u_input.b.x);
}

