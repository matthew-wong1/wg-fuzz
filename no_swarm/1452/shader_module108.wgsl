struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_4,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_3, 11>;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_2(-12435i, true);
    global2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), 416f) * _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -2194f), global0.x)))), global0.x, -347f, -1471f);
    let var_1 = arg_0.x || all(!(!select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, var_0.b, false))));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_3 = Struct_1(vec4<u32>(1u, 4294967295u, 1u, ~(~u_input.d)), firstTrailingBit(u_input.c));
    return select(countOneBits(~(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b))), 37458u, false);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(Struct_1(u_input.b, ~vec2<i32>(max(-13006i, u_input.c.x), ~(-10927i))), any(vec3<bool>(true, true, true)), Struct_4(global2.wy, vec4<bool>(any(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, false)), true, true), _wgslsmith_clamp_vec4_u32(vec4<u32>(func_3(vec2<bool>(false, true)), max(0u, 50855u), firstLeadingBit(1u), u_input.b.x), vec4<u32>(u_input.a.x, 67749u, u_input.b.x, _wgslsmith_mult_u32(1u, u_input.d)), vec4<u32>(u_input.a.x, 37685u, u_input.d, countOneBits(0u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(global2.yy)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1294f), 1004f), true)), vec2<bool>((31979u << (u_input.d % 32u)) >= 68574u, any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f + _wgslsmith_f_op_f32(-global2.x))), false);
    let var_1 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1128f), var_0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-424f * 1053f))))))));
    let var_2 = firstLeadingBit(~var_0.a.a.wxz);
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + global2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x * var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, global0.x))))));
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-global2.xy), !(!vec4<bool>(global2.x != 1000f, !var_0.c.b.x, true, false)), ~u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1314f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.d.x), global2.x))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.a - var_3.yy))))), !select(!var_0.c.e, vec2<bool>(true, !var_0.c.b.x), vec2<bool>(var_0.b, var_0.b)));
    return Struct_2(-u_input.c.x, 7617u <= _wgslsmith_mult_u32(countOneBits(1u), firstTrailingBit(var_2.x)));
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = Struct_3(6702i);
    global2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(494f + -248f), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global2.x)) + -552f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))) + -1798f), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(718f, 936f)))))));
    var var_1 = u_input.d;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global2.x)), -321f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(472f - _wgslsmith_f_op_f32(min(global2.x, global2.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1212f, global0.x)), _wgslsmith_f_op_f32(round(-869f)), _wgslsmith_f_op_f32(step(global0.x, global0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(global2.zyz, global2.zzx)))))));
    global0 = global2.wyz;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global0.x, 345f, global2.x) * vec4<f32>(248f, 1000f, global2.x, 683f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(687f, -2472f, global0.x, global2.x) * vec4<f32>(global0.x, global0.x, 607f, 991f))))) + vec4<f32>(479f, _wgslsmith_f_op_f32(-1746f + _wgslsmith_f_op_f32(f32(-1f) * -429f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(f32(-1f) * -611f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)))));
}

fn func_1() -> Struct_5 {
    let var_0 = ~vec2<u32>(_wgslsmith_mod_u32(4294967295u, 71826u), _wgslsmith_dot_vec4_u32(abs(max(vec4<u32>(1957u, u_input.b.x, 55550u, u_input.d), u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 58292u, 1u, u_input.b.x), u_input.b)));
    var var_1 = _wgslsmith_clamp_vec2_i32(u_input.c, u_input.c, abs(~(-vec2<i32>(-1i, u_input.c.x))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2())));
    var_1 = ~u_input.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 1000f))), 382f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yz * global2.zx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1212f, -371f)))))));
    return Struct_5(Struct_1(~u_input.b, firstLeadingBit(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(var_1.x, u_input.c.x)), firstLeadingBit(vec2<i32>(u_input.c.x, var_1.x))))), _wgslsmith_sub_i32(u_input.c.x, abs(-38421i)) < 11713i, Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.xx - vec2<f32>(1015f, 643f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, var_2.x))), global0.zx), !vec4<bool>(all(vec4<bool>(false, true, false, true)), select(true, false, false), true, u_input.a.x == 1u), u_input.b, global2.wx, vec2<bool>(!select(true, false, true), select(false, u_input.a.x > 1u, false))), 405f, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<Struct_3, 11>();
    var var_1 = firstLeadingBit(_wgslsmith_div_u32(var_0.c.c.x, 1u));
    let var_2 = global2.zyy;
    let var_3 = Struct_5(Struct_1(~vec4<u32>(var_0.a.a.x, u_input.d | 82934u, func_3(vec2<bool>(var_0.b, true)), abs(var_0.a.a.x)), _wgslsmith_add_vec2_i32(-u_input.c, var_0.a.b)), false, Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.d), global0.zx), !select(!vec4<bool>(true, true, false, var_0.b), !var_0.c.b, any(vec3<bool>(var_0.c.b.x, true, true))), u_input.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1377f, -691f) + vec2<f32>(var_0.d, var_0.c.d.x))), _wgslsmith_f_op_vec2_f32(-global2.wy))), var_0.c.b.yx), var_2.x, var_0.c.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(1i, select(u_input.c.x, reverseBits(var_0.a.b.x), false && var_0.c.e.x), var_3.a.b.x, ~1i), _wgslsmith_add_vec4_u32(var_0.a.a >> (~(~vec4<u32>(u_input.d, var_3.c.c.x, 8371u, 66700u)) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(~0u, ~var_0.a.a.x, var_0.c.c.x ^ 0u, u_input.a.x))));
}

