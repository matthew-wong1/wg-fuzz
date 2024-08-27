struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(1i, 1i, -26620i), vec3<i32>(i32(-2147483648), 25098i, 2147483647i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, -25658i, 2147483647i), vec3<i32>(33145i, 1492i, 34056i), vec3<i32>(1i, -5584i, 81216i), vec3<i32>(597i, 2910i, -1569i), vec3<i32>(-5343i, 56229i, -24637i), vec3<i32>(0i, 40024i, -806i), vec3<i32>(42641i, 18166i, -24830i), vec3<i32>(57371i, 695i, 19811i), vec3<i32>(-18416i, 0i, 16050i), vec3<i32>(48034i, -1i, 2147483647i), vec3<i32>(2147483647i, -1i, -14456i));

var<private> global1: bool = false;

var<private> global2: vec3<i32> = vec3<i32>(-29661i, i32(-2147483648), 9909i);

var<private> global3: array<Struct_1, 7>;

var<private> global4: u32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>) -> vec3<i32> {
    global0 = array<vec3<i32>, 14>();
    let var_0 = Struct_1(true);
    let var_1 = arg_0;
    global2 = ~(global0[_wgslsmith_index_u32(u_input.b.x, 14u)] & vec3<i32>(firstLeadingBit(abs(1i)), u_input.d, ~101777i & arg_0.x));
    let var_2 = firstTrailingBit(1u);
    return -reverseBits(-(vec3<i32>(-1i) * -global0[_wgslsmith_index_u32(u_input.b.x, 14u)]));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    global3 = array<Struct_1, 7>();
    global0 = array<vec3<i32>, 14>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1358f - -972f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f) + -1172f)) - -645f));
    global2 = func_2(abs(~(-firstTrailingBit(vec2<i32>(-1i, global2.x)))));
    global1 = 1u < u_input.b.x;
    return -global2.x;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<f32> {
    var var_0 = 0i;
    global2 = -_wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(~u_input.a.x, 14u)]);
    var_0 = _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_add_i32(u_input.d, -22738i)), ~1i, 1i), 1i);
    global2 = max(-vec3<i32>(u_input.d, _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(global2.yx, vec2<i32>(u_input.d, -1i))), ~func_1(u_input.a.x, arg_0, arg_0, vec4<u32>(69299u, 18021u, u_input.b.x, u_input.b.x))), global0[_wgslsmith_index_u32(1u, 14u)]);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-727f))), -561f))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(-1023f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-399f, 352f)) - _wgslsmith_f_op_f32(select(-1199f, -1000f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1440f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(569f * -2116f), _wgslsmith_f_op_f32(f32(-1f) * -1809f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2300f)) * _wgslsmith_f_op_f32(f32(-1f) * -886f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = max(vec3<i32>(-2147483647i, u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 39418i, global2.x), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c ^ u_input.c), 14u)])), global0[_wgslsmith_index_u32(0u, 14u)]);
    global2 = ~(~vec3<i32>(~(-1i), func_1(0u, global3[_wgslsmith_index_u32(4294967295u, 7u)], Struct_1(true), vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, 19510u)), ~global2.x)) ^ vec3<i32>(-global2.x, -12873i, -global2.x);
    var var_0 = ~(~(~1u)) & min(_wgslsmith_mult_u32(u_input.b.x, ~(~5696u)), u_input.b.x);
    let var_1 = Struct_1((u_input.c >> (_wgslsmith_sub_u32(0u, 0u) % 32u)) <= u_input.b.x);
    let var_2 = global3[_wgslsmith_index_u32(u_input.c, 7u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))) + _wgslsmith_f_op_f32(1143f - -415f));
    var var_4 = 1u;
    var_0 = u_input.a.x;
    var var_5 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-672f, var_3, var_3), vec3<f32>(680f, var_3, -508f), vec3<bool>(true, true, var_2.a))), _wgslsmith_f_op_vec3_f32(func_3(var_1, false))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(604f, -205f, var_3)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(var_3, -1165f), -991f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_5.x, 22062i, 1u, ~0u);
}

