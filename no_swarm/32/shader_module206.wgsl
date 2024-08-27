struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: i32,
    d: Struct_4,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 5481u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_2(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true));
    var var_1 = ~1u;
    let var_2 = 20992u;
    var_1 = u_input.c;
    global0 = Struct_1(~(~countOneBits(~u_input.b)));
    return !var_0.a;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = select(vec4<bool>(true, true, true, !((global0.a.x > 4294967295u) || all(vec2<bool>(true, true)))), !select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), false), true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-323f)));
    let var_2 = Struct_2(!select(func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a))), !vec3<bool>(true, var_0.x, var_0.x), func_3(~vec3<i32>(u_input.a, u_input.a, u_input.a))));
    var var_3 = !var_2.a.yx;
    var_0 = vec4<bool>(!(!var_2.a.x), true, _wgslsmith_f_op_f32(337f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), -1455f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -718f) + -644f)));
    return Struct_1(abs(u_input.b));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    global0 = func_2(-137f);
    var var_0 = ~vec4<u32>(abs(u_input.c) & func_2(_wgslsmith_f_op_f32(min(-1438f, -580f))).a.x, ~global0.a.x | ~(~64246u), 0u, ~u_input.b.x >> (1u % 32u));
    var var_1 = _wgslsmith_f_op_f32(sign(975f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-791f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-301f))), -290f)));
    var_1 = 987f;
    return (true & !(1i == arg_0.x)) != true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_3(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1707f))), 139f)), vec4<bool>(false, false, 1u == func_2(_wgslsmith_f_op_f32(f32(-1f) * -2182f)).a.x, !(!(46876i == arg_2.x))), abs(~u_input.b), !select(select(!vec4<bool>(false, arg_0, arg_1, true), select(vec4<bool>(true, false, true, arg_1), vec4<bool>(arg_1, arg_0, arg_0, arg_0), arg_0), !arg_1), select(!vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, arg_0, arg_1, arg_0), false), vec4<bool>(arg_2.x > 2147483647i, false, true, true)));
    global0 = Struct_1(~select(vec2<u32>(u_input.c, 0u), u_input.b, !vec2<bool>(arg_0, var_0.d.x)) >> (~(~(u_input.b & vec2<u32>(4294967295u, global0.a.x))) % vec2<u32>(32u)));
    var var_1 = Struct_2(var_0.d.zzw);
    let var_2 = Struct_4(Struct_2(func_3(vec3<i32>(arg_2.x, ~u_input.a, _wgslsmith_div_i32(arg_2.x, u_input.a)))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1331f));
    let var_3 = !var_0.b.zxy;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4((max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.a)), reverseBits(u_input.a)) > abs(-u_input.a)) || all(vec4<bool>(true, true, true, true)), func_1(-(~(-vec3<i32>(-2147483647i, 3798i, -6199i)))), _wgslsmith_sub_vec3_i32(~(select(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(1i, -2147483647i, -2147483647i), false) << ((vec3<u32>(15273u, global0.a.x, u_input.b.x) ^ vec3<u32>(u_input.c, global0.a.x, global0.a.x)) % vec3<u32>(32u))), vec3<i32>(-40078i, -2147483647i, _wgslsmith_sub_i32(-17649i, _wgslsmith_sub_i32(3896i, u_input.a)))));
    let var_1 = var_0.a;
    let var_2 = func_2(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f + 1355f)), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -312f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 932f, var_0.c, -1010f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(976f, var_0.c, 1112f, 1745f))))))));
    global0 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) - _wgslsmith_f_op_f32(round(1757f))) + _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(173f + var_3.x))))));
    var var_4 = func_3(-_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)) & (vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, 41168i, 34456i)), -vec3<i32>(2147483647i, -1i, u_input.a) & ~vec3<i32>(37658i, 1i, 23391i))).xx;
    var_4 = select(func_3(vec3<i32>(-1i, u_input.a, _wgslsmith_add_i32(min(u_input.a, 21445i), -u_input.a))).yx, var_0.a.a.yx, vec2<bool>(all(vec3<bool>(all(var_1.a.yy), true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~vec4<u32>(48206u, global0.a.x, 39452u, global0.a.x)), firstLeadingBit(vec3<i32>(u_input.a, -firstTrailingBit(u_input.a), u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 5447i, _wgslsmith_sub_i32(u_input.a, _wgslsmith_clamp_i32(-4544i, 2147483647i, u_input.a))), ~abs(vec3<i32>(u_input.a, 1i, u_input.a)) & (vec3<i32>(-2147483647i, 26240i, 2147483647i) << (vec3<u32>(u_input.b.x, 4294967295u, 4294967295u) % vec3<u32>(32u)))));
}

