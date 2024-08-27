struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(479u, 0u, 0u, 0u), vec4<u32>(37267u, 1u, 53908u, 14698u), vec4<u32>(0u, 0u, 47656u, 1u), vec4<u32>(48292u, 13789u, 38017u, 4294967295u), vec4<u32>(107367u, 0u, 4294967295u, 17068u), vec4<u32>(10536u, 4294967295u, 1u, 54897u), vec4<u32>(0u, 63919u, 41287u, 33429u), vec4<u32>(1u, 1u, 49895u, 0u), vec4<u32>(4294967295u, 52206u, 12975u, 1u), vec4<u32>(0u, 12227u, 0u, 4294967295u), vec4<u32>(45693u, 16200u, 32770u, 53609u), vec4<u32>(17781u, 64409u, 1u, 4294967295u), vec4<u32>(0u, 0u, 24280u, 61932u), vec4<u32>(4294967295u, 26286u, 1u, 26213u), vec4<u32>(1u, 35876u, 11715u, 19924u), vec4<u32>(20104u, 51188u, 55719u, 23108u), vec4<u32>(1u, 66683u, 0u, 12661u), vec4<u32>(85108u, 4294967295u, 4294967295u, 26705u), vec4<u32>(0u, 0u, 21163u, 1u), vec4<u32>(4294967295u, 24333u, 90597u, 88762u), vec4<u32>(14836u, 3021u, 24971u, 341u), vec4<u32>(4294967295u, 4870u, 28718u, 21856u), vec4<u32>(8401u, 11522u, 1197u, 4294967295u), vec4<u32>(33257u, 35729u, 0u, 0u), vec4<u32>(0u, 23373u, 24685u, 99643u), vec4<u32>(64155u, 37930u, 27012u, 4294967295u), vec4<u32>(0u, 4294967295u, 40685u, 22014u), vec4<u32>(4294967295u, 1u, 0u, 41503u), vec4<u32>(1u, 4294967295u, 1u, 15110u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(27629u, 0u, 4294967295u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> f32 {
    global0 = array<vec4<u32>, 31>();
    var var_0 = true & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-700f))) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-229f * 109f), _wgslsmith_f_op_f32(abs(509f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-487f)) - _wgslsmith_f_op_f32(floor(-1703f)))));
    let var_1 = true;
    var_0 = true;
    var_0 = !(false || var_1) | any(select(vec2<bool>(true, true), vec2<bool>(select(false, true, false), var_1), var_1));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1546f) - _wgslsmith_f_op_f32(-767f + -654f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-250f, -1436f)) - _wgslsmith_f_op_f32(trunc(-1687f))), true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1581f)));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(267f, _wgslsmith_f_op_f32(sign(-717f)), _wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.a.x, 0u), u_input.e.x)), _wgslsmith_f_op_f32(step(-1698f, -1219f)))), -124f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-223f - -423f), _wgslsmith_div_f32(278f, 1464f))) + _wgslsmith_f_op_f32(step(-850f, _wgslsmith_f_op_f32(774f * -267f))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(select(u_input.a, u_input.a, vec2<bool>(true, true)), ~u_input.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(815f + 397f))), _wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(floor(-1746f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1353f, -511f)), -1200f))), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), -510f, _wgslsmith_f_op_f32(3082f * -1507f), -240f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1638f, 435f, -1860f, -396f), vec4<f32>(527f, 194f, -1340f, 2234f))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2047f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 437f)));
    var var_1 = 95558u;
    var_1 = countOneBits(u_input.d << (~u_input.d % 32u));
    global0 = array<vec4<u32>, 31>();
    let var_2 = Struct_2(var_0.d, -1574f, Struct_1(var_0.c.a, -105f), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.c.a * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1701f, var_0.a.b, var_0.a.b, -977f), var_0.d.a, select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a.x - var_0.b))));
    return -1000f;
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(907f)), -856f, -1000f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(322f, 527f, -1000f, -1335f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-431f, -701f, 204f, 635f), vec4<f32>(-1415f, -302f, 1000f, 1511f))))), _wgslsmith_f_op_f32(-1550f + _wgslsmith_f_op_f32(f32(-1f) * -198f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -466f) - 539f), Struct_1(vec4<f32>(-1275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-241f * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -226f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(535f)), -948f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(570f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(457f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-944f, 1394f, 1360f, 451f))))), -401f));
    global0 = array<vec4<u32>, 31>();
    global0 = array<vec4<u32>, 31>();
    global0 = array<vec4<u32>, 31>();
    var_0 = Struct_2(var_0.c, -966f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))), _wgslsmith_f_op_f32(func_3(vec2<u32>(0u, u_input.a.x) ^ arg_0.yy, u_input.e.x)), _wgslsmith_div_f32(-1000f, 1323f), _wgslsmith_f_op_f32(func_2())), var_0.b), var_0.d);
    return _wgslsmith_div_u32(~abs(1u >> (1u % 32u)), arg_0.x) | (~0u | ~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 31>();
    let var_0 = ~vec3<u32>(~(~func_1(vec4<u32>(u_input.d, 1u, u_input.d, u_input.a.x))), 62704u, 0u);
    global0 = array<vec4<u32>, 31>();
    global0 = array<vec4<u32>, 31>();
    global0 = array<vec4<u32>, 31>();
    let var_1 = _wgslsmith_f_op_f32(ceil(1903f));
    global0 = array<vec4<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, _wgslsmith_div_i32(-u_input.b ^ firstLeadingBit(0i), u_input.c), 0i, u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))) + _wgslsmith_f_op_f32(-var_1))), u_input.a);
}

