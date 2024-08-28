struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false));

var<private> global1: Struct_1 = Struct_1(-33973i);

var<private> global2: u32 = 0u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = vec2<i32>(-1i, _wgslsmith_mult_i32(u_input.a, (firstLeadingBit(1i) & _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-1i, u_input.d.x, global1.a, global1.a))) >> (~(~27069u) % 32u)));
    global1 = Struct_1(i32(-1i) * -2147483647i);
    global2 = ~(~(~u_input.e.x));
    global0 = array<vec4<bool>, 31>();
    let var_1 = firstTrailingBit(reverseBits(countOneBits(_wgslsmith_clamp_vec3_i32(-vec3<i32>(61927i, global1.a, 32536i), u_input.d.xzy, select(vec3<i32>(u_input.d.x, -1i, global1.a), vec3<i32>(23495i, u_input.d.x, global1.a), true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(606f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-260f, 1320f)), _wgslsmith_f_op_f32(f32(-1f) * -1901f))))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-2311f, -1468f), -741f);
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.d.yz, u_input.d.ww);
    let var_2 = u_input.e.wy & firstLeadingBit(~(~(~vec2<u32>(0u, u_input.e.x))));
    var var_3 = Struct_1(abs(max(i32(-1i) * -1i, global1.a)));
    var var_4 = Struct_2(~abs(var_2.x));
    return Struct_1(global1.a);
}

fn func_1(arg_0: Struct_3) -> i32 {
    global0 = array<vec4<bool>, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) - vec2<f32>(-720f, arg_0.c))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, arg_0.c), vec2<f32>(arg_0.c, -852f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(474f, 487f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.c, arg_0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(1212f, 729f) - vec2<f32>(arg_0.c, -746f)))), vec2<f32>(_wgslsmith_f_op_f32(-1000f - 686f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true))) * vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1154f - -410f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, -262f))))));
    global1 = Struct_1(_wgslsmith_add_i32(i32(-1i) * -_wgslsmith_div_i32(global1.a, -2147483647i), arg_0.a));
    let var_1 = func_2();
    global1 = Struct_1(1i);
    return countOneBits(_wgslsmith_mult_i32(func_2().a, _wgslsmith_sub_i32(1i, ~(-48891i))) ^ ~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.x << (~(~0u) % 32u);
    let var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.e.x, _wgslsmith_mod_u32(~countOneBits(u_input.e.x), countOneBits(~42056u))), 1641u);
    var var_2 = u_input.b;
    let var_3 = Struct_1(1208i & countOneBits(firstLeadingBit(func_1(Struct_3(-24287i, vec2<i32>(49415i, 1548i), 392f, Struct_2(14623u), var_1)))));
    global2 = var_1;
    let var_4 = ~34160u;
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(939f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(~(~vec2<u32>(u_input.e.x, var_4)))), 991u);
}

