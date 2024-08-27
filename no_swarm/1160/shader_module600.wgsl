struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(-1607f, -984f, -1000f), Struct_1(vec3<i32>(-14004i, i32(-2147483648), -63958i), vec4<f32>(1000f, -1016f, 194f, 232f)), Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(960f, 100f, 1239f, 894f), vec2<i32>(-9745i, 1i), vec3<bool>(true, false, false)));

var<private> global1: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false));

var<private> global2: array<vec4<bool>, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: i32) -> i32 {
    global2 = array<vec4<bool>, 12>();
    var var_0 = -1092f;
    var var_1 = global0.b;
    var var_2 = global0.c;
    let var_3 = global0.c;
    return 1i;
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    let var_0 = firstLeadingBit(u_input.b.ywy);
    let var_1 = ~vec3<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.x, var_0.x), ~u_input.b.yyx), reverseBits(max(var_0.x, var_0.x) | func_3(0i, global0.b.a.zy, 0i)));
    global0 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))), global0.c.b.x), _wgslsmith_f_op_f32(global0.c.b.x + _wgslsmith_f_op_f32(f32(-1f) * -784f)), global0.b.b.x), global0.b, global0.c);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(select(1582f, global0.c.b.x, arg_0.x)))), global0.c.b.x, -1836f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(399f, -829f, -644f), vec3<f32>(global0.b.b.x, global0.b.b.x, global0.c.b.x), vec3<bool>(false, true, false))))) - vec3<f32>(_wgslsmith_div_f32(global0.c.b.x, 1240f), 3185f, -1120f)), all(select(vec4<bool>(false, arg_0.x, global0.c.d.x, arg_0.x), vec4<bool>(global0.c.a.x, false, arg_0.x, arg_0.x), 1u >= u_input.a.x)))), Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b | vec4<i32>(var_0.x, 8216i, -1i, u_input.b.x), select(u_input.b, vec4<i32>(0i, var_1.x, var_1.x, u_input.b.x), arg_0.x)), _wgslsmith_sub_i32(var_0.x, -1i), func_3(-1349i, var_1.zy >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), func_3(global0.c.c.x, global0.c.c, u_input.b.x))), vec4<f32>(-236f, -759f, global0.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * 323f)))), global0.c);
    return -8204i;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4) -> f32 {
    var var_0 = ~_wgslsmith_add_i32(~(-63i), func_2(!vec4<bool>(arg_2.c, true, true, arg_2.c)));
    let var_1 = (vec3<u32>(u_input.a.x, firstLeadingBit(u_input.a.x), ~_wgslsmith_sub_u32(1u, 0u)) ^ vec3<u32>(9670u, ~1u, 3230u)) >> (select(u_input.a.wwx, ~u_input.a.yzy, -39129i < arg_1.b.a.x) % vec3<u32>(32u));
    var var_2 = vec2<u32>(~var_1.x, var_1.x);
    var var_3 = global0.c;
    var var_4 = true;
    return arg_2.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(global0.c.b.zzx, _wgslsmith_f_op_vec3_f32(global0.c.b.zzw - vec3<f32>(_wgslsmith_div_f32(-1000f, -165f), global0.b.b.x, _wgslsmith_f_op_f32(-1190f - _wgslsmith_f_op_f32(func_1(global0.b.b, Struct_3(global0.b.b.yyz, Struct_1(u_input.b.yzw, vec4<f32>(global0.c.b.x, global0.c.b.x, global0.a.x, global0.a.x)), Struct_2(vec4<bool>(global0.c.a.x, false, false, false), vec4<f32>(-1094f, global0.b.b.x, global0.a.x, -392f), vec2<i32>(2147483647i, -3803i), global0.c.a.xyx)), Struct_4(1i, Struct_3(global0.c.b.yzx, Struct_1(u_input.b.wzw, global0.c.b), Struct_2(vec4<bool>(false, global0.c.d.x, global0.c.a.x, global0.c.a.x), global0.c.b, u_input.b.ww, vec3<bool>(global0.c.a.x, false, global0.c.d.x))), true)))))));
    global1 = array<vec4<bool>, 16>();
    var var_1 = u_input.a.x;
    var var_2 = Struct_4(select(-33058i, ~abs(global0.b.a.x), true), Struct_3(var_0, Struct_1(vec3<i32>(~global0.c.c.x, ~u_input.b.x, max(global0.c.c.x, global0.c.c.x)), global0.c.b), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(max(u_input.a.x, u_input.a.x), reverseBits(u_input.a.x)), 16u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.b.b.x, global0.a.x, -274f))), firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.b.xw, vec2<i32>(global0.c.c.x, -1i))), select(select(vec3<bool>(true, false, true), vec3<bool>(global0.c.d.x, true, false), global0.c.a.zwx), vec3<bool>(false, true, true), true))), true);
    var var_3 = select(!(func_2(select(vec4<bool>(var_2.b.c.d.x, false, var_2.c, false), global1[_wgslsmith_index_u32(0u, 16u)], vec4<bool>(var_2.c, global0.c.a.x, global0.c.a.x, false))) < _wgslsmith_mult_i32(global0.c.c.x, -47345i)), true, true);
    var var_4 = _wgslsmith_f_op_f32(-var_0.x);
    global2 = array<vec4<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_0.x)));
}

