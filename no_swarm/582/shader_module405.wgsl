struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 436f;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: i32;

var<private> global3: array<i32, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-750f, -216f, -177f) - vec3<f32>(144f, -103f, -193f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1972f, 1620f, 724f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-434f, -1145f, 311f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-743f, -2006f, 388f) + vec3<f32>(299f, -404f, -1433f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(-2749f, _wgslsmith_f_op_f32(ceil(-1795f)), _wgslsmith_f_op_f32(step(1000f, -1408f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-433f, -568f, -2123f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1055f, -1323f, 439f), vec3<f32>(110f, -1689f, -733f), global1.x))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(113f, -660f, 1472f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1123f, -1000f, 1260f)) - vec3<f32>(1000f, -1443f, -548f))))));
    var var_1 = vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-840f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.a.x) * -354f))) + -209f));
    var var_2 = var_0.b.yy;
    var var_3 = true;
    let var_4 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(61653u, u_input.a.x), ~(vec2<u32>(15167u, u_input.a.x) & vec2<u32>(u_input.a.x, 1u))), 34865u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.a.x, ~u_input.a.x, 51513u), u_input.a.x));
    return global1.xyw;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = select(-abs(-2147483647i), -reverseBits(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], -8876i)), ~u_input.a.x <= max(u_input.a.x, ~1u));
    let var_1 = ~firstLeadingBit(abs(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(3936u, 4294967295u)), _wgslsmith_div_vec2_u32(vec2<u32>(2498u, 4294967295u), u_input.a.zy))));
    let var_2 = Struct_2(arg_0.b, vec3<f32>(-1754f, arg_0.a.x, arg_0.b.x));
    let var_3 = -27575i;
    global1 = vec4<bool>(all(select(select(global1.yzx, global1.yxx, true), func_3(), !func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, var_2.b.x))) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a.x)) + _wgslsmith_f_op_f32(1000f * 120f)), var_2.b.x)), firstTrailingBit(22847u) > ~(~(~var_1.x)), !global1.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -2858f);
}

fn func_1() -> vec2<i32> {
    global3 = array<i32, 12>();
    var var_0 = u_input.a.xy;
    var_0 = reverseBits(~vec2<u32>(u_input.a.x, 0u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1090f))) + 335f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1396f, -1491f, true)) + _wgslsmith_f_op_f32(-1264f * 253f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(760f - 148f) - _wgslsmith_f_op_f32(-1101f * 1377f)) + _wgslsmith_div_f32(_wgslsmith_div_f32(447f, 554f), 1f))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(735f, var_1.x, -1305f) * vec3<f32>(-114f, var_1.x, var_1.x)), vec3<f32>(587f, var_1.x, var_1.x)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)), global1.x))), -396f);
    return ~(-((vec2<i32>(-1i) * -vec2<i32>(global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(19814u, 12u)])) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 0i) | vec2<i32>(global3[_wgslsmith_index_u32(var_0.x, 12u)], global3[_wgslsmith_index_u32(0u, 12u)]), ~vec2<i32>(global3[_wgslsmith_index_u32(9975u, 12u)], global3[_wgslsmith_index_u32(35752u, 12u)]), vec2<i32>(global3[_wgslsmith_index_u32(83958u, 12u)], global3[_wgslsmith_index_u32(var_0.x, 12u)]) ^ vec2<i32>(global3[_wgslsmith_index_u32(var_0.x, 12u)], global3[_wgslsmith_index_u32(1u, 12u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.a.x, u_input.a.x);
    global3 = array<i32, 12>();
    let var_1 = _wgslsmith_dot_vec2_i32(func_1(), ~(-(~abs(vec2<i32>(global3[_wgslsmith_index_u32(var_0.x, 12u)], global3[_wgslsmith_index_u32(u_input.a.x, 12u)])))));
    global3 = array<i32, 12>();
    let var_2 = ~reverseBits(~(~u_input.a.x));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2951f, -318f, 570f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1406f, -1000f)))), 1282f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<u32>(~(var_0.x << (u_input.a.x % 32u)), ~75757u, ~0u));
}

