struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-1i, -3747i), vec2<i32>(-13281i, 0i), vec2<i32>(11161i, 18400i), vec2<i32>(0i, -1215i), vec2<i32>(19349i, -39509i), vec2<i32>(5212i, 46593i), vec2<i32>(-14461i, -25897i), vec2<i32>(0i, -50437i), vec2<i32>(10128i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, -3177i), vec2<i32>(i32(-2147483648), -17902i), vec2<i32>(34487i, -1i), vec2<i32>(1i, 12519i), vec2<i32>(-10027i, -11738i), vec2<i32>(-41209i, -2528i), vec2<i32>(i32(-2147483648), 25362i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, -1i), vec2<i32>(32060i, -12946i), vec2<i32>(1i, 18583i), vec2<i32>(1i, 17964i));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: u32;

var<private> global4: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    return 1142f;
}

fn func_2() -> u32 {
    let var_0 = -_wgslsmith_mult_i32(u_input.a.x, firstTrailingBit(-12392i));
    let var_1 = 1u;
    global4 = vec4<f32>(_wgslsmith_f_op_f32(657f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_vec2_f32(global2.a, vec2<f32>(-1000f, global2.a.x))), _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<u32>(53296u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1, var_1), vec3<u32>(var_1, 1u, 15383u)), var_1), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global1.a))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.x))) - global2.a.x)), _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + -393f), global1.a.x, any(vec4<bool>(false, false, false, false))))), global2.a.x);
    global4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1368f, -768f, -465f, global1.a.x))) + vec4<f32>(-759f, 610f, 1000f, _wgslsmith_f_op_f32(-global2.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1209f, 2523f, global2.a.x, global2.a.x) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-103f, global4.x, global1.a.x, 839f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -199f, global1.a.x, global1.a.x) * vec4<f32>(global2.a.x, -645f, global2.a.x, global1.a.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.x, 677f, global1.a.x, global4.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(269f, 442f, -636f, global1.a.x), vec4<f32>(global1.a.x, -1570f, 1663f, 650f), vec4<bool>(false, true, true, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1662f, -676f, -127f, global1.a.x))))));
    let var_2 = select(_wgslsmith_div_vec3_i32(min(~reverseBits(vec3<i32>(9856i, var_0, u_input.a.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(4294967295u, 22u)], vec2<i32>(var_0, 0i)), -2147483647i, max(-1i, -2147483647i))), -vec3<i32>(~u_input.a.x, 1i, u_input.a.x >> (var_1 % 32u))), ~(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, 0i, u_input.a.x), ~vec3<i32>(18085i, var_0, -1i))), !vec3<bool>(select(true, var_0 > 22054i, var_1 < 4294967295u), true, false));
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32(27089u, _wgslsmith_sub_u32(45045u, firstLeadingBit(1u << (var_1 % 32u))), 0u), 7780u);
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    global1 = Struct_1(global4.xz);
    let var_1 = false;
    var var_2 = -select(u_input.a.x, u_input.a.x, ~(~0u) == func_2());
    global2 = Struct_1(vec2<f32>(-118f, _wgslsmith_f_op_f32(func_3(Struct_1(global2.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global4.x, global2.a.x, var_1)), _wgslsmith_f_op_f32(-global2.a.x), !var_0)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(59710u, 0u, 0u), vec3<u32>(45724u, 5071u, 0u), vec3<bool>(var_0, var_1, var_0)), ~vec3<u32>(4294967295u, 31703u, 36550u)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global1.a.x)))))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(1130f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(global2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global1 = func_1();
    let var_0 = !(-17787i > firstLeadingBit((u_input.a.x << (45394u % 32u)) << (abs(0u) % 32u)));
    var var_1 = func_1();
    var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global4.wxx)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_i32(u_input.a.x, 1i, ~(-2479i)), _wgslsmith_mult_u32(1u, ~_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 20912u), ~16563u)), -1i, _wgslsmith_f_op_f32(func_3(Struct_1(var_2.xx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))), global1.a.x), ~(select(vec3<u32>(4294967295u, 17699u, 0u), vec3<u32>(0u, 23154u, 10558u), false) | ~vec3<u32>(46466u, 57062u, 1u)), Struct_1(global1.a))));
}

