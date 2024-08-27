struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(50161u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(14262u, 4294967295u), vec2<u32>(110885u, 1428u), vec2<u32>(48849u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(14671u, 1u), vec2<u32>(78382u, 22047u), vec2<u32>(12368u, 59759u), vec2<u32>(13225u, 4294967295u), vec2<u32>(11081u, 38448u), vec2<u32>(54739u, 14108u), vec2<u32>(4294967295u, 27849u), vec2<u32>(9590u, 4294967295u), vec2<u32>(0u, 58720u), vec2<u32>(1u, 1u), vec2<u32>(402u, 3614u));

var<private> global1: array<f32, 24> = array<f32, 24>(-1249f, 1165f, 871f, -270f, -196f, 391f, 441f, 911f, 1284f, -1107f, -158f, -1000f, -139f, -1300f, -367f, -1000f, 890f, -1852f, 589f, 863f, 654f, -1458f, -179f, 470f);

var<private> global2: array<Struct_1, 17>;

var<private> global3: Struct_1;

var<private> global4: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(1u, 20770u, 4294967295u, 0u), vec4<u32>(293u, 1u, 49956u, 4294967295u), vec4<u32>(0u, 1u, 47283u, 0u), vec4<u32>(0u, 1u, 4294967295u, 24315u), vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(50357u, 26337u, 0u, 31291u), vec4<u32>(0u, 53490u, 0u, 0u), vec4<u32>(0u, 65130u, 1u, 38363u), vec4<u32>(0u, 4294967295u, 4294967295u, 44822u), vec4<u32>(2843u, 4294967295u, 4294967295u, 47129u), vec4<u32>(1u, 0u, 4294967295u, 39035u), vec4<u32>(61326u, 1276u, 0u, 24983u), vec4<u32>(66753u, 0u, 4294967295u, 23220u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(global3.a);
    global4 = array<vec4<u32>, 13>();
    global1 = array<f32, 24>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e.x, 31173u), 17u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 10464u), 24u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(282f))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx, ~_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(1u, 17u)], vec2<u32>(u_input.e.x, u_input.d))), 24u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(657f, global1[_wgslsmith_index_u32(18580u, 24u)], global1[_wgslsmith_index_u32(u_input.d, 24u)], -439f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-886f, 929f, global1[_wgslsmith_index_u32(99607u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)])))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], -1920f, 1079f, -621f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1490f, global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], -682f) - vec4<f32>(549f, -852f, global1[_wgslsmith_index_u32(73311u, 24u)], -2657f)), vec4<bool>(global3.a, false, true, true))))), !vec4<bool>(var_0.a, true, true, true & any(vec2<bool>(false, true)))));
    return vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.d) | u_input.a), 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -190f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(405f)) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(484u, 24u)])))), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~0u << (u_input.a.x % 32u), 24u)]), -1380f));
}

fn func_2() -> vec3<f32> {
    global1 = array<f32, 24>();
    let var_0 = global2[_wgslsmith_index_u32(~(~countOneBits(u_input.b.x)) & u_input.b.x, 17u)];
    global4 = array<vec4<u32>, 13>();
    let var_1 = vec4<u32>(_wgslsmith_add_u32(84156u, u_input.a.x ^ _wgslsmith_add_u32(min(4294967295u, 35983u), u_input.b.x)), select(abs(u_input.d), u_input.d, global3.a), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, 0u), global0[_wgslsmith_index_u32(u_input.e.x, 17u)]), global0[_wgslsmith_index_u32(~4294967295u, 17u)]), 17u)] & vec2<u32>(u_input.d, select(u_input.b.x, 934u, global3.a)), u_input.a.xy), _wgslsmith_sub_u32(~u_input.a.x, min(u_input.e.x, select(firstLeadingBit(u_input.b.x), _wgslsmith_div_u32(u_input.d, 4294967295u), true))));
    let var_2 = global2[_wgslsmith_index_u32(~(~(max(~29637u, select(var_1.x, u_input.e.x, true)) << (firstLeadingBit(4294967295u) % 32u))), 17u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global2[_wgslsmith_index_u32(u_input.a.x, 17u)]))), vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(56813u, 24u)] - 1000f), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(41503u, 24u)])), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(var_1.x, 24u)])))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)] - -440f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(25179u, 24u)])), 287f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-992f, -1433f, _wgslsmith_f_op_f32(max(1228f, global1[_wgslsmith_index_u32(u_input.d, 24u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], _wgslsmith_f_op_f32(-782f + 286f), global1[_wgslsmith_index_u32(abs(4294967295u), 24u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-117f, -619f, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), _wgslsmith_div_vec3_f32(vec3<f32>(397f, -1000f, global1[_wgslsmith_index_u32(u_input.e.x, 24u)]), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], -850f, global1[_wgslsmith_index_u32(u_input.b.x, 24u)])))))));
    var var_1 = global3.a;
    let var_2 = vec3<bool>(true, !(!((var_0.x > global1[_wgslsmith_index_u32(4294967295u, 24u)]) || global3.a)), global3.a && !global3.a);
    let var_3 = global2[_wgslsmith_index_u32(1u, 17u)];
    let var_4 = max(select(u_input.a | countOneBits(vec3<u32>(u_input.d, 4820u, 0u)), vec3<u32>(0u, u_input.d, _wgslsmith_mod_u32(~51561u, ~43820u)), true), u_input.a);
    return Struct_1(abs(u_input.a.x) != 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-1i, -1i, !(global3.a | !any(vec2<bool>(false, false))));
    var_0 = 1i;
    global3 = func_1();
    var_0 = -_wgslsmith_div_i32(select(_wgslsmith_dot_vec2_i32(select(u_input.c.xy, u_input.c.yx, vec2<bool>(false, true)), -vec2<i32>(39293i, u_input.c.x)), max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -61924i, 0i, 0i), vec4<i32>(-1i, 2147483647i, u_input.c.x, -2147483647i)), -2147483647i), global3.a), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), ~18482i), u_input.c.yz));
    let var_1 = func_1();
    let var_2 = Struct_1(true);
    let var_3 = var_2;
    let var_4 = firstTrailingBit(_wgslsmith_mult_u32(~u_input.a.x, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x << (var_4 % 32u), u_input.a, 20432u, 63594u);
}

