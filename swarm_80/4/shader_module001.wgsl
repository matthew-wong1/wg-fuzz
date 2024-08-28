struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32;

var<private> global2: f32 = -1530f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: f32) -> vec4<f32> {
    let var_0 = global0.yy;
    let var_1 = Struct_4(Struct_3((arg_0.c.d.x == arg_0.c.d.x) || (_wgslsmith_f_op_f32(abs(arg_2)) > -867f), !select(select(arg_0.c.d, vec4<bool>(false, arg_0.c.d.x, true, arg_0.c.d.x), arg_0.c.d), select(arg_0.c.d, arg_0.c.d, vec4<bool>(arg_0.c.d.x, true, arg_0.c.d.x, true)), vec4<bool>(arg_0.c.d.x, arg_0.c.d.x, false, arg_0.c.d.x)), max(~(arg_1 & u_input.c), reverseBits(-vec3<i32>(arg_0.c.a.x, -14550i, 0i))), global0.ww, global0.x), ~vec2<u32>(~arg_0.c.c.x, abs(~arg_0.c.c.x)), Struct_2(true, -u_input.c.yy, Struct_1(-vec4<i32>(u_input.a.x, u_input.b, 0i, 46759i), _wgslsmith_f_op_f32(global0.x * 496f), u_input.d.xx, arg_0.c.d)));
    var var_2 = var_1.c.c;
    let var_3 = 682f;
    var var_4 = vec3<u32>(_wgslsmith_sub_u32(var_1.b.x, _wgslsmith_mod_u32(73934u, 1u)) >> (_wgslsmith_clamp_u32(~var_2.c.x, u_input.d.x, 4294967295u) % 32u), ~firstTrailingBit(~(~32867u)), u_input.d.x);
    return vec4<f32>(489f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.c.b), _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, var_1.a.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(341f - 429f) + _wgslsmith_f_op_f32(var_0.x * 1000f)) - _wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-723f)))))));
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1060f, -1243f, 2081f, global0.x) - vec4<f32>(global0.x, -1000f, global0.x, global0.x)))))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(false, vec2<i32>(u_input.b, 1i), Struct_1(vec4<i32>(1i, 24997i, 0i, u_input.c.x), 1000f, vec2<u32>(25791u, u_input.d.x), vec4<bool>(false, false, false, true))), vec3<i32>(-2147483647i, -51679i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -434i), vec2<i32>(38203i, u_input.b))), _wgslsmith_f_op_f32(-global0.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-932f, global0.x, global0.x, -746f))) * vec4<f32>(-575f, -568f, _wgslsmith_f_op_f32(max(900f, -1048f)), global0.x)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(true, -u_input.c.xy, Struct_1(vec4<i32>(0i, 23235i, 1i, -2147483647i), -482f, u_input.d.zy, vec4<bool>(false, true, false, true))), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.b) & vec3<i32>(-1i, -20603i, -12632i), -vec3<i32>(-1i, -13403i, 18987i)), global0.x))));
    global0 = vec4<f32>(-1303f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1905f, _wgslsmith_f_op_f32(global0.x + -246f)))))), global0.x, _wgslsmith_f_op_f32(global0.x - -911f));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(global0.zyx)))))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), global0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))))));
    var var_1 = abs(~(~abs(vec3<u32>(u_input.d.x, 4294967295u, arg_0.x)) ^ (~vec3<u32>(arg_0.x, arg_0.x, arg_0.x) << (select(vec3<u32>(u_input.d.x, arg_0.x, arg_0.x), vec3<u32>(64236u, u_input.d.x, u_input.d.x), false) % vec3<u32>(32u)))));
    var_1 = u_input.d | u_input.d;
    return vec3<bool>(false, !any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), any(vec4<bool>(true, true, false, false)))), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false)))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_4) -> f32 {
    let var_0 = ~select(_wgslsmith_mod_vec4_i32(arg_2.c.c.a, arg_2.c.c.a), -(vec4<i32>(0i, 2147483647i, arg_0, arg_1.x) ^ arg_2.c.c.a), vec4<bool>(arg_2.c.a, all(select(vec3<bool>(false, arg_2.a.a, false), vec3<bool>(true, arg_2.c.a, arg_2.c.c.d.x), arg_2.a.b.x)), !(global0.x >= global0.x), true));
    var var_1 = !func_2(vec2<u32>(1u, 1u));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, arg_2.c.c.b)), -547f, 1837f, arg_2.c.c.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, arg_2.c.c.b, arg_2.a.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.d.x, global0.x, global0.x, global0.x) * vec4<f32>(-721f, global0.x, global0.x, arg_2.a.d.x)))))));
    var var_2 = arg_2;
    var_2 = Struct_4(Struct_3(any(vec3<bool>(true, true, true)), select(vec4<bool>(arg_2.c.c.d.x, false, func_2(vec2<u32>(5878u, 0u)).x, all(vec4<bool>(arg_2.c.a, true, false, true))), vec4<bool>(true, select(arg_2.a.a, true, true), false, arg_2.c.c.d.x), any(vec3<bool>(false, var_1.x, var_1.x))), _wgslsmith_div_vec3_i32(vec3<i32>(~49489i, u_input.c.x, 54831i), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(var_2.c.c.a.x, 1i, 2147483647i)), arg_1)), vec2<f32>(870f, _wgslsmith_f_op_f32(sign(349f))), _wgslsmith_f_op_f32(round(global0.x))), vec2<u32>(~(0u ^ var_2.b.x) ^ ~(~arg_2.b.x), ~var_2.c.c.c.x), arg_2.c);
    return var_2.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(371f, global0.x)) * _wgslsmith_f_op_f32(func_1(-16299i, u_input.c, Struct_4(Struct_3(true, vec4<bool>(false, true, false, false), vec3<i32>(2147483647i, 8008i, u_input.c.x), global0.yz, 778f), vec2<u32>(76629u, u_input.d.x), Struct_2(true, vec2<i32>(u_input.c.x, -4547i), Struct_1(vec4<i32>(-47871i, 0i, u_input.b, -1i), global0.x, vec2<u32>(u_input.d.x, 4294967295u), vec4<bool>(false, false, false, false))))))) * _wgslsmith_f_op_f32(f32(-1f) * -362f)) + -941f) - _wgslsmith_f_op_vec4_f32(func_3(Struct_2(true, ~(-vec2<i32>(-68777i, u_input.b)), Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, 52846i, u_input.c.x), -1166f, vec2<u32>(51677u, 22986u) & u_input.d.yz, select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))), select(~(u_input.c | u_input.c), _wgslsmith_div_vec3_i32(~vec3<i32>(-25603i, u_input.b, u_input.c.x), vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x)), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2328f, global0.x) * _wgslsmith_f_op_vec4_f32(func_3(Struct_2(false, vec2<i32>(2147483647i, u_input.a.x), Struct_1(vec4<i32>(u_input.a.x, 8041i, u_input.b, -2147483647i), 314f, u_input.d.yy, vec4<bool>(true, true, false, true))), u_input.c, -879f)).x))).x);
    var var_0 = !any(func_2(~u_input.d.xx));
    var var_1 = ~u_input.a.x;
    global1 = _wgslsmith_div_f32(global0.x, -1498f);
    var_1 = _wgslsmith_sub_i32(-42570i, select(28974i, u_input.a.x, any(vec2<bool>(true, true))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, 380f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 542f, 1000f, global0.x) * vec4<f32>(global0.x, global0.x, 726f, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 623f) + vec4<f32>(1000f, global0.x, global0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-437f, -729f, -1703f, 851f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1328f, global0.x, global0.x, global0.x))) - vec4<f32>(978f, _wgslsmith_f_op_f32(min(988f, 1029f)), _wgslsmith_f_op_f32(select(global0.x, -1477f, true)), 1f))));
    global1 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec4<i32>(24422i, 788i, ~(u_input.c.x ^ -2147483647i), 1i) & max(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-1i, u_input.c.x)), max(u_input.c.x, 6541i), 0i, ~u_input.b), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-916i, u_input.b, u_input.a.x, u_input.c.x), vec4<i32>(60562i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(false, true, false, false)), -vec4<i32>(u_input.a.x, u_input.b, 1i, u_input.a.x))));
}

