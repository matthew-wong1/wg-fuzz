struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(945f, 258f, 2358f, 829f), vec4<f32>(-345f, -652f, 974f, 627f), vec4<f32>(1528f, -192f, -1922f, -478f), vec4<f32>(-939f, -705f, 686f, -605f), vec4<f32>(-400f, 174f, -1000f, 219f), vec4<f32>(-438f, 626f, 627f, -240f), vec4<f32>(-1111f, 246f, -1000f, -979f), vec4<f32>(726f, 549f, 1822f, -373f), vec4<f32>(-1743f, -418f, -1607f, -924f), vec4<f32>(-2115f, 329f, -381f, 2016f), vec4<f32>(-544f, 183f, -835f, 1582f), vec4<f32>(1508f, 1000f, 840f, -164f), vec4<f32>(-1457f, -553f, 267f, 212f), vec4<f32>(-147f, -859f, -937f, 555f), vec4<f32>(400f, -113f, 868f, -719f), vec4<f32>(576f, 868f, -989f, -679f));

var<private> global2: Struct_2 = Struct_2(Struct_1(1u, 34269i, vec3<bool>(false, false, true), vec4<i32>(1i, 7089i, i32(-2147483648), 47596i), vec2<f32>(1027f, -439f)), Struct_1(1u, -12073i, vec3<bool>(false, true, true), vec4<i32>(-13729i, 46989i, 5982i, 1i), vec2<f32>(161f, 1851f)), 208f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec4<bool> {
    return !(!select(vec4<bool>(arg_3, any(arg_0.c), true, true), select(!vec4<bool>(arg_0.c.x, true, true, arg_2.b.c.x), !vec4<bool>(true, arg_3, global2.b.c.x, arg_0.c.x), !vec4<bool>(arg_3, true, false, arg_0.c.x)), vec4<bool>(!global2.b.c.x, global2.a.b <= global2.b.d.x, arg_3 | global2.a.c.x, true)));
}

fn func_2(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = !select(vec4<bool>(!global2.b.c.x, false, global2.b.c.x, true), func_3(global2.a, Struct_2(global2.b, Struct_1(0u, -1i, vec3<bool>(true, global2.b.c.x, true), global2.a.d, global2.a.e), 1400f), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global2.b.e.x), false), vec4<bool>(all(!vec4<bool>(true, global2.a.c.x, true, global2.a.c.x)), any(select(vec4<bool>(global2.b.c.x, true, false, global2.b.c.x), vec4<bool>(false, global2.b.c.x, false, global2.a.c.x), global2.a.c.x)), !(u_input.a.x >= u_input.a.x), global2.b.c.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(select(531f, global2.a.e.x, true)))))) - _wgslsmith_f_op_f32(-global2.a.e.x));
    global1 = array<vec4<f32>, 16>();
    let var_2 = var_0.x;
    var_0 = vec4<bool>(all(var_0.ywz), false, any(func_3(global2.a, Struct_2(global0[_wgslsmith_index_u32(global2.b.a, 15u)], global2.b, 1029f), Struct_2(global2.b, Struct_1(u_input.a.x, arg_1, var_0.xzy, vec4<i32>(global2.a.d.x, arg_0, arg_0, arg_1), vec2<f32>(var_1, global2.b.e.x)), -245f), all(vec3<bool>(true, var_0.x, true))).zzy) || any(select(global2.a.c, vec3<bool>(var_0.x, true, global2.b.c.x), var_0.x)), !var_0.x);
    return false;
}

fn func_1(arg_0: bool) -> vec3<bool> {
    return vec3<bool>(global2.b.c.x, !func_2(~_wgslsmith_sub_i32(-16166i, -1i), -1i), arg_0);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(global2.a.a, Struct_2(global0[_wgslsmith_index_u32(global2.a.a, 15u)], Struct_1(global2.a.a, arg_0.b, arg_0.c, _wgslsmith_add_vec4_i32(global2.b.d, -arg_0.d), _wgslsmith_f_op_vec2_f32(-arg_0.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_u32(_wgslsmith_mod_u32(61687u, 1u), u_input.a.x), max(-(vec3<i32>(arg_0.d.x, -47424i, 27974i) ^ vec3<i32>(arg_0.d.x, global2.b.b, 8462i)), -(vec3<i32>(global2.a.d.x, global2.a.b, -47950i) ^ vec3<i32>(arg_0.d.x, global2.a.b, 0i))));
    var var_1 = ~(~(~u_input.a.xy ^ firstLeadingBit(~u_input.a.zy)));
    var var_2 = !func_3(Struct_1(1u, ~(-57965i), func_3(global0[_wgslsmith_index_u32(global2.b.a, 15u)], Struct_2(global0[_wgslsmith_index_u32(36202u, 15u)], arg_0, -765f), var_0.b, true).zyw, -firstLeadingBit(vec4<i32>(-1i, 15918i, -40895i, arg_0.b)), vec2<f32>(-881f, _wgslsmith_f_op_f32(-global2.a.e.x))), Struct_2(Struct_1(~var_0.b.a.a, 2147483647i, select(arg_0.c, vec3<bool>(global2.b.c.x, global2.b.c.x, var_0.b.b.c.x), false), vec4<i32>(var_0.d.x, global2.b.b, var_0.b.b.d.x, arg_0.b) ^ global2.b.d, var_0.b.b.e), global2.b, _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(-arg_0.e.x))), var_0.b, !global2.b.c.x).wxz;
    let var_3 = _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(-(i32(-1i) * -2147483647i), var_0.b.a.d.x << (~33454u % 32u), 2147483647i), reverseBits(select(-1i, _wgslsmith_sub_i32(global2.a.d.x & arg_0.b, -1i & global2.b.d.x), any(!vec4<bool>(false, false, true, var_2.x)))));
    var var_4 = Struct_2(Struct_1(max(var_1.x, ~min(1u, var_1.x)), abs(29716i), select(select(select(vec3<bool>(false, true, true), var_0.b.b.c, vec3<bool>(true, false, false)), !vec3<bool>(var_0.b.b.c.x, true, true), global2.a.c.x), func_1(arg_0.c.x || var_2.x), var_0.b.b.c), ~(~arg_0.d) | -_wgslsmith_add_vec4_i32(arg_0.d, vec4<i32>(var_0.b.a.b, var_0.d.x, -25214i, 0i)), vec2<f32>(_wgslsmith_f_op_f32(abs(1094f)), global2.b.e.x)), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    var var_0 = func_4(Struct_1(~select(1u, global2.b.a, false) ^ global2.b.a, _wgslsmith_div_i32(-(i32(-1i) * -33112i), _wgslsmith_mod_i32(~2147483647i, global2.b.b ^ 15307i)), select(select(vec3<bool>(true, global2.b.c.x, false), global2.b.c, func_1(false)), global2.b.c, vec3<bool>(false, global2.b.c.x, any(vec4<bool>(true, global2.b.c.x, global2.a.c.x, false)))), vec4<i32>(firstLeadingBit(global2.b.b), global2.a.d.x, _wgslsmith_dot_vec2_i32(global2.b.d.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(34897i, global2.a.d.x), global2.b.d.ww)), -global2.b.d.x), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1349f + global2.a.e.x))), global2.a.e.x)));
    var var_1 = global2.b;
    global2 = var_0.b;
    global0 = array<Struct_1, 15>();
    var var_2 = var_0.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(35523i);
}

