struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(600f, -439f, -383f), vec3<f32>(512f, -898f, -136f), vec3<f32>(-2007f, 204f, -1557f), vec3<f32>(-550f, 1336f, -487f), vec3<f32>(-509f, 895f, -195f), vec3<f32>(1933f, 267f, 283f), vec3<f32>(916f, -136f, -611f), vec3<f32>(-739f, 2006f, -1000f), vec3<f32>(1000f, 492f, 184f), vec3<f32>(-1599f, 1388f, 1442f));

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    global0 = array<vec3<f32>, 10>();
    global1 = array<Struct_1, 11>();
    var var_0 = 39764i;
    let var_1 = any(select(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true), vec3<bool>(true, !any(vec4<bool>(false, true, false, true)), true), true));
    var var_2 = i32(-1i) * -70372i;
    return vec2<bool>(all(select(select(vec3<bool>(var_1, true, false), vec3<bool>(var_1, var_1, true), true), !vec3<bool>(var_1, var_1, true), false)), var_1);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_1(((countOneBits(u_input.a) | 1u) ^ arg_3.b) < (~_wgslsmith_dot_vec3_u32(vec3<u32>(21368u, arg_3.b, 10806u), vec3<u32>(u_input.a, 0u, 4294967295u)) >> (~(arg_3.b ^ u_input.a) % 32u)));
    var_0 = Struct_1(true);
    global0 = array<vec3<f32>, 10>();
    var var_1 = vec2<u32>(1u, min(4294967295u, u_input.a ^ u_input.a)) << (((~vec2<u32>(4294967295u, 18027u) >> (abs(firstLeadingBit(vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_u32(reverseBits(firstLeadingBit(vec2<u32>(56266u, 50543u))), vec2<u32>(select(18407u, u_input.a, arg_2.a), 1u | u_input.a))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(round(221f));
    return 55508u;
}

fn func_2() -> i32 {
    let var_0 = func_4(func_3(), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(346f, -1753f, 1289f), global0[_wgslsmith_index_u32(u_input.a, 10u)], true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-236f, 144f, 1249f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-292f, 1713f, 215f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2977f, 976f, -890f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1307f, 1000f, -1075f))), global0[_wgslsmith_index_u32(u_input.a, 10u)], !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))))), global1[_wgslsmith_index_u32(~u_input.a, 11u)], Struct_3(select(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(true, true)), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(4294967295u, u_input.a)), 0u, true), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 4294967295u, abs(u_input.a)), 1u & u_input.a, min(reverseBits(u_input.a), u_input.a)), 340f));
    let var_1 = Struct_3(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(var_0, 0u, 4319u, 6541u), vec4<u32>(u_input.a, 4294967295u, var_0, u_input.a)), select(vec4<u32>(24430u, u_input.a, 71921u, var_0), vec4<u32>(56487u, 4294967295u, u_input.a, 4294967295u), true)) ^ vec4<u32>(46143u ^ var_0, _wgslsmith_mod_u32(u_input.a, 967u), 4294967295u, 13558u >> (u_input.a % 32u)), vec4<u32>(1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(30488u, var_0), vec2<u32>(1u, 12939u))), 1u & abs(var_0), 4294967295u)), ~u_input.a, 1081f);
    global1 = array<Struct_1, 11>();
    var var_2 = var_1.c;
    var var_3 = Struct_4(Struct_2(Struct_1(select(true, true, any(vec4<bool>(true, true, false, true)))), ~vec2<u32>(u_input.a, ~u_input.a), global1[_wgslsmith_index_u32(8767u, 11u)], max(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_1.b, 37663u), vec3<u32>(var_1.a, 0u, var_0) ^ vec3<u32>(var_1.a, var_0, u_input.a)), ~_wgslsmith_mult_u32(var_0, 44153u))), Struct_2(Struct_1(true), vec2<u32>(~37332u, ~(~96692u)), Struct_1(_wgslsmith_f_op_f32(-var_1.c) > -1000f), u_input.a), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), true), all(select(vec4<bool>(all(vec3<bool>(false, true, false)), all(vec2<bool>(true, false)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    return _wgslsmith_dot_vec2_i32(countOneBits(reverseBits(vec2<i32>(-1i) * -vec2<i32>(-22692i, -1i))), countOneBits(~vec2<i32>(1i, -16845i)));
}

fn func_5(arg_0: vec3<i32>, arg_1: f32) -> i32 {
    let var_0 = true;
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    global0 = array<vec3<f32>, 10>();
    var var_1 = Struct_4(Struct_2(global1[_wgslsmith_index_u32(u_input.a, 11u)], min(abs(vec2<u32>(u_input.a, 4294967295u)), select(~vec2<u32>(u_input.a, 31972u), ~vec2<u32>(u_input.a, 1u), var_0)), Struct_1(var_0), u_input.a), Struct_2(Struct_1(all(!vec2<bool>(true, var_0))), min(~(~vec2<u32>(1u, u_input.a)), ~(~vec2<u32>(36610u, u_input.a))), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, u_input.a, 1u), 11u)], 4294967295u), vec4<bool>(func_3().x, true, true, all(!(!vec4<bool>(false, var_0, var_0, var_0)))), var_0);
    return firstTrailingBit(abs(arg_0.x));
}

fn func_6(arg_0: vec4<i32>) -> vec2<bool> {
    return select(!select(func_3(), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, false)), !all(vec4<bool>(false, true, true, true))), select(vec2<bool>(any(vec4<bool>(true, true, true, true)) | (26345u != u_input.a), func_3().x), !select(vec2<bool>(true, true), func_3(), all(vec2<bool>(false, true))), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !vec2<bool>(!all(vec3<bool>(true, false, false)), arg_0.x <= arg_0.x));
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = func_6(vec4<i32>(~1i, ~reverseBits(1i), func_5(vec3<i32>(firstLeadingBit(2147483647i), func_2(), ~2147483647i), arg_0), _wgslsmith_add_i32(-22705i, 61366i)));
    global1 = array<Struct_1, 11>();
    global0 = array<vec3<f32>, 10>();
    let var_1 = Struct_1(all(func_3()) == !func_3().x);
    let var_2 = !(!(!var_0.x));
    return Struct_4(Struct_2(Struct_1(true), ~max(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), var_1, _wgslsmith_sub_u32(u_input.a, reverseBits(4294967295u << (u_input.a % 32u)))), Struct_2(global1[_wgslsmith_index_u32(~u_input.a & 0u, 11u)], _wgslsmith_sub_vec2_u32(~(vec2<u32>(69417u, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 79862u))), Struct_1(267f == arg_0), 26905u | u_input.a), !vec4<bool>(!all(vec3<bool>(true, var_1.a, var_1.a)), false, !var_2, !var_1.a), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global0 = array<vec3<f32>, 10>();
    var_0 = 36134u;
    let var_1 = -859f;
    var var_2 = func_1(1557f);
    var_0 = reverseBits(var_2.b.b.x);
    let var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -148f))).b;
    var var_4 = Struct_1(true);
    var var_5 = ((~var_2.a.d & 36351u) | var_2.b.d) <= _wgslsmith_add_u32(var_2.a.d, ~_wgslsmith_sub_u32(1u, ~var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

