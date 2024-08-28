struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: vec3<f32>) -> bool {
    var var_0 = Struct_3(firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(10685u, u_input.e.x, u_input.e.x) & vec3<u32>(62477u, 9475u, 0u), vec3<u32>(1u, countOneBits(4294967295u), ~u_input.e.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(-1642f, 922f)))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.x))), 987f)));
    global0 = _wgslsmith_mod_i32(-2147483647i, 2147483647i);
    global1 = arg_2;
    let var_1 = Struct_3(_wgslsmith_mult_u32(~var_0.a, u_input.e.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(182f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(198f - arg_3.x), -1954f, true)))));
    var var_2 = arg_0;
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -1965f)), _wgslsmith_f_op_f32(sign(arg_1.x)))), 1162f, 386f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -472f)))), !vec4<bool>(any(select(vec4<bool>(arg_0, arg_0, global1.a.c.a, global1.b.x), vec4<bool>(global1.a.b.x, global1.a.a.a, false, false), true)), arg_0, !all(global1.a.b.zx), arg_0), vec2<bool>(arg_0, !arg_0), Struct_2(global1.a.c, !vec3<bool>(func_3(arg_1.x, arg_2, Struct_5(global1.a, global1.b), vec3<f32>(744f, arg_1.x, arg_1.x)), func_3(-1195f, arg_2, Struct_5(global1.a, vec2<bool>(false, true)), vec3<f32>(677f, -2109f, arg_1.x)), arg_0), Struct_1(any(vec2<bool>(true, global1.a.a.a)))));
    global1 = Struct_5(Struct_2(Struct_1(true), vec3<bool>(false, arg_1.x >= _wgslsmith_f_op_f32(var_0.a.x - arg_1.x), true), var_0.d.c), select(vec2<bool>(!global1.a.a.a, true && all(var_0.b)), !(!vec2<bool>(global1.b.x, true)), !var_0.c.x));
    let var_1 = var_0.a.x;
    global0 = 26442i;
    var var_2 = global1.a.c;
    return _wgslsmith_f_op_f32(ceil(var_0.a.x));
}

fn func_1(arg_0: i32) -> Struct_5 {
    global0 = _wgslsmith_add_i32(50186i, firstLeadingBit(-arg_0));
    global1 = Struct_5(global1.a, global1.a.b.xy);
    var var_0 = Struct_3(117914u, vec2<f32>(-1352f, _wgslsmith_f_op_f32(1243f + _wgslsmith_f_op_f32(func_2(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, 1000f)), -vec4<i32>(1i, u_input.c, u_input.b, 0i))))));
    let var_1 = _wgslsmith_f_op_f32(round(-764f));
    var var_2 = firstLeadingBit(39564i);
    return Struct_5(global1.a, global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-761f, 705f)))))))));
    global0 = _wgslsmith_clamp_i32(abs(u_input.b), u_input.a, u_input.a);
    global1 = func_1(u_input.b);
    let var_1 = ~(max(countOneBits(~18358u), u_input.e.x) & ~u_input.d.x);
    global1 = Struct_5(global1.a, vec2<bool>(global1.b.x, !global1.a.c.a));
    let var_2 = Struct_5(global1.a, select(global1.b, global1.b, vec2<bool>(true, !(!global1.a.a.a))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1565f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-648f * -1828f))) + _wgslsmith_f_op_f32(floor(-998f)))));
    var var_3 = u_input.a;
    let var_4 = select(var_2.a.b.zz, var_2.a.b.xz, select(vec2<bool>(false, !all(vec2<bool>(var_2.a.b.x, false))), !global1.a.b.zy, global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(abs(firstLeadingBit(vec4<i32>(2147483647i, -12231i, 36784i, -13072i))), _wgslsmith_sub_vec4_i32(abs(firstLeadingBit(vec4<i32>(u_input.c, 3391i, u_input.c, u_input.b))), -(~vec4<i32>(38505i, -1i, u_input.a, u_input.b)))), u_input.b);
}

