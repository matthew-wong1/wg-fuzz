struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<u32, 20>;

var<private> global2: array<vec3<u32>, 32>;

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> f32 {
    global4 = arg_0;
    var var_0 = Struct_1(arg_0.a, _wgslsmith_add_vec2_u32(reverseBits(reverseBits(vec2<u32>(4294967295u, global4.b.x))), vec2<u32>(arg_3.b.x, ~abs(global1[_wgslsmith_index_u32(u_input.c.x, 20u)]))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.c.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(291f, _wgslsmith_f_op_f32(floor(arg_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-837f + 407f) * -1000f), any(!vec3<bool>(arg_3.a, false, false)))), _wgslsmith_f_op_f32(-global4.c.x), 722f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(409f + 940f) * -1439f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x) * 1777f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(-arg_0.c.x), arg_0.a))), 493f));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, ~(arg_3.b.x | 53118u)), var_0.b.x, firstLeadingBit(~1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global4.b.x, u_input.c.x, 0u), u_input.c)), select(vec4<u32>(_wgslsmith_mod_u32(countOneBits(0u), abs(4294967295u)), arg_0.b.x, u_input.c.x, u_input.c.x), abs(~(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 20u)], 4294967295u, 49227u, arg_3.b.x))), arg_3.a)), 22u)];
    global0 = array<Struct_1, 22>();
    return _wgslsmith_f_op_f32(var_1.x + arg_3.c.x);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global4 = global0[_wgslsmith_index_u32(1u, 22u)];
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(29094u, u_input.c.x << (~firstTrailingBit(38588u) % 32u)), 22u)];
    global1 = array<u32, 20>();
    var var_1 = -17664i;
    let var_2 = _wgslsmith_f_op_f32(func_3(Struct_1(arg_0, u_input.c.xx, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.c.x, -1162f, _wgslsmith_f_op_f32(1047f - -1716f), _wgslsmith_f_op_f32(-global4.c.x))))), u_input.a.x, _wgslsmith_add_i32(-select(u_input.a.x, u_input.a.x, !global4.a), firstLeadingBit(2147483647i)), global0[_wgslsmith_index_u32(0u, 22u)]));
    return Struct_1(!select(false, true, !arg_0) & false, vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.x, 40253u), 20u)], 20u)]), 4294967295u & _wgslsmith_div_u32(0u, var_0.b.x)), 20u)], ~0u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(172f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.c.x * global4.c.x))), var_2, var_2))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(-2147483647i >= abs(~_wgslsmith_mod_i32(u_input.b.x, 2664i)));
    let var_1 = ~(-28597i);
    global3 = _wgslsmith_f_op_f32(-global4.c.x);
    let var_2 = var_0;
    var var_3 = -1040f;
    return func_2(false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_f32(abs(arg_0.c.x));
    var var_1 = select(vec3<bool>(arg_1.a, true, any(!vec4<bool>(true, arg_0.a, global4.a, true)) && all(vec2<bool>(arg_0.a, true))), !(!(!vec3<bool>(global4.a, arg_1.a, true))), !select(select(vec3<bool>(arg_0.a, arg_0.a, false), select(vec3<bool>(true, true, false), vec3<bool>(arg_0.a, arg_1.a, arg_1.a), arg_0.a), true), vec3<bool>(true, -2469i == u_input.b.x, true), (u_input.b.x <= u_input.a.x) & !arg_0.a));
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(1u, 1u, arg_1.b.x)), 22u)];
    let var_3 = func_2(true);
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    global2 = array<vec3<u32>, 32>();
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global4.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(256f, _wgslsmith_f_op_f32(609f * arg_0.c.x))) + arg_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1958f, -631f))))))));
    let var_0 = arg_1.wy;
    let var_1 = -918f;
    global2 = array<vec3<u32>, 32>();
    return func_4(func_2(any(!select(vec2<bool>(false, arg_0.a), vec2<bool>(true, false), vec2<bool>(false, true)))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_5(func_4(func_1(), Struct_1(true, ~vec2<u32>(1u, 85136u) << (~vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(global4.b.x, 20u)]) % vec2<u32>(32u)), global4.c)), vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.c.x))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -1521f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) * -326f)), _wgslsmith_div_vec3_f32(global4.c.yzx, global4.c.wyy), _wgslsmith_f_op_f32(sign(-1000f)));
    global2 = array<vec3<u32>, 32>();
    var var_0 = global0[_wgslsmith_index_u32(func_1().b.x, 22u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1306f, var_0.c.x) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(160f, global4.c.x), global4.c.yw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, 981f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1830f, global4.c.x))))));
    var var_2 = ~abs(_wgslsmith_mult_i32(u_input.b.x, max(abs(u_input.b.x), -2147483647i)));
    var_0 = Struct_1(!var_0.a, firstLeadingBit(global4.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2461f, -876f, 492f, -1077f), _wgslsmith_f_op_vec4_f32(var_0.c * var_0.c)), vec4<f32>(_wgslsmith_f_op_f32(873f + -745f), 875f, -490f, var_1.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-394f, 903f, var_1.x, var_0.c.x) + global4.c))), var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(~u_input.c.x, _wgslsmith_add_u32(var_0.b.x, 1u), ~global4.b.x) >> (_wgslsmith_add_vec3_u32(abs(u_input.c), _wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(var_0.b.x, 32u)], vec3<u32>(var_0.b.x, var_0.b.x, 2753u))) % vec3<u32>(32u))), 426f, u_input.b.xxw, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.c.zxz))));
}

