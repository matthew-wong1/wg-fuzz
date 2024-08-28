struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648), vec2<bool>(false, false), vec4<bool>(true, true, true, true));

var<private> global1: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_2(~0i, !arg_1.b, select(select(!arg_2.c, arg_1.c, select(global0.b.x, true, global0.b.x) == true), global0.c, arg_2.c));
    global1 = select(arg_2.c, arg_3.c, !vec4<bool>(all(global0.c), !(!var_0.c.x), all(!arg_3.c), false));
    var_0 = Struct_2(min(744i, _wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(-27897i, arg_2.a))), select(vec2<bool>(false, any(global0.c)), arg_1.b, arg_1.c.x), vec4<bool>(any(select(!global0.c, select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, arg_1.b.x), arg_3.c), 57223i >= global0.a)), all(select(arg_1.b, var_0.c.yw, all(vec2<bool>(arg_3.b.x, arg_2.b.x)))), arg_1.c.x, arg_1.c.x));
    var var_1 = arg_1;
    global1 = vec4<bool>(true, true, true & (!(true & global1.x) & global1.x), !(!global0.b.x));
    return countOneBits(~u_input.a ^ arg_0);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> i32 {
    let var_0 = !vec3<bool>(false, true, arg_0.x);
    var var_1 = Struct_2(arg_3 << (~(~_wgslsmith_div_u32(arg_1.a.x, 12362u)) % 32u), global0.b, select(vec4<bool>(!any(vec3<bool>(global0.b.x, var_0.x, global1.x)), !(72698u < u_input.a), global1.x, false), global0.c, !(var_0.x == all(vec4<bool>(global0.b.x, false, arg_0.x, false)))));
    global1 = global0.c;
    global1 = vec4<bool>(true, false, !global1.x, any(!vec2<bool>(any(var_0.xy), false == var_0.x)));
    global0 = Struct_2(2147483647i, global1.xw, !vec4<bool>(global1.x, _wgslsmith_f_op_f32(ceil(arg_1.b)) >= arg_1.b, var_0.x, countOneBits(arg_3) < -arg_3));
    return _wgslsmith_mod_i32(-2147483647i, arg_3);
}

fn func_2() -> u32 {
    var var_0 = false && !global0.b.x;
    global0 = Struct_2(-(~global0.a), !(!select(!vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, global0.c.x), !vec2<bool>(global1.x, false))), global0.c);
    let var_1 = global1.wx;
    global0 = Struct_2(~func_4(!global0.c, Struct_1(vec2<u32>(32018u, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -550f)), func_3(u_input.a, Struct_2(global0.a, global1.yw, vec4<bool>(false, global0.b.x, true, var_1.x)), Struct_2(31728i, global0.b, global0.c), Struct_2(39458i, global0.c.wz, global0.c)), -749i), select(vec2<bool>(true, false), global1.xw, !(!global0.c.yx)), vec4<bool>(global0.b.x, global0.c.x, all(!global0.c.wy), all(!vec4<bool>(global0.c.x, global0.b.x, false, false)) || var_1.x));
    var var_2 = Struct_2(-global0.a, vec2<bool>(true, !select(true, true && global0.b.x, global0.c.x)), vec4<bool>(global1.x, global1.x, false, !(!var_1.x & any(global0.c))));
    return u_input.a;
}

fn func_1() -> i32 {
    let var_0 = ((firstTrailingBit(abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))) | countOneBits(~vec4<u32>(u_input.a, 6031u, 4294967295u, u_input.a))) >> (vec4<u32>(func_2(), 4294967295u, ~func_2(), u_input.a) % vec4<u32>(32u))) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a, 19818u), u_input.a, u_input.a, u_input.a ^ 0u), vec4<u32>(~4294967295u, ~u_input.a, max(4713u, u_input.a), 0u)) % vec4<u32>(32u));
    global1 = global0.c;
    global0 = Struct_2(-1i, vec2<bool>(global0.c.x, !global1.x), select(select(select(!vec4<bool>(true, global0.b.x, global0.b.x, true), !vec4<bool>(global1.x, true, global0.c.x, global1.x), global0.c), global0.c, !any(global0.c.ww)), global0.c, select(vec4<bool>(any(vec4<bool>(global1.x, false, false, true)), false, all(vec4<bool>(false, true, true, global1.x)), select(true, false, false)), !(!global0.c), (u_input.a != 0u) && (107493u == var_0.x))));
    global0 = Struct_2(_wgslsmith_mult_i32(0i, global0.a), global0.b, select(select(!global0.c, !(!global0.c), vec4<bool>(!global0.c.x, global0.a <= global0.a, true, global1.x)), !select(global0.c, select(vec4<bool>(global0.c.x, global0.c.x, global1.x, global0.b.x), vec4<bool>(global0.c.x, true, false, global0.c.x), global0.c), true), false | any(!vec4<bool>(true, global0.c.x, false, global0.c.x))));
    global1 = vec4<bool>(-_wgslsmith_clamp_i32(1i, global0.a, _wgslsmith_sub_i32(global0.a, -68247i)) < -1648i, true, !global0.c.x, firstTrailingBit(var_0.x) > _wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), var_0.yw, var_0.xx)), ~var_0.zx));
    return -1i;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)));
    var var_1 = reverseBits(abs(vec4<i32>(arg_1, firstLeadingBit(func_1()), -global0.a, _wgslsmith_mod_i32(-28444i, ~global0.a))));
    var var_2 = global0.b;
    var var_3 = vec2<u32>(u_input.a, 16517u);
    let var_4 = vec4<bool>(true, true, false, var_2.x);
    return Struct_1(~vec2<u32>(~0u, _wgslsmith_sub_u32(select(24724u, var_3.x, false), ~var_3.x)), _wgslsmith_f_op_f32(sign(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.c;
    let var_0 = func_5(-func_1(), -2147483647i, 1696f);
    var var_1 = Struct_1(var_0.a, var_0.b);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -1000f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, var_0.b))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b - var_1.b), _wgslsmith_f_op_f32(-1475f * 742f))), !any(vec2<bool>(false, false))))));
    var var_3 = vec3<bool>(global0.a == -37348i, global1.x, !(!(!all(vec2<bool>(false, false)))));
    var_1 = Struct_1(vec2<u32>(28489u, ~(~336u)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-397f - -1000f), 1003f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, var_0.b)) + 990f), _wgslsmith_f_op_f32(f32(-1f) * -739f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.b)), var_0.b, _wgslsmith_f_op_f32(var_0.b + -1384f), 1046f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1623f, -291f, 1130f, -860f), vec4<f32>(-916f, 202f, 575f, var_1.b), global0.c)))))), ~(i32(-1i) * -4697i));
}

