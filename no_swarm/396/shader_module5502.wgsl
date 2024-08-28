struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(true, vec4<bool>(false, true, true, false), true), 260f, Struct_1(true, vec4<bool>(true, true, true, false), false), vec3<bool>(false, false, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = 1007f;
    global0 = Struct_2(Struct_1(349f <= global0.b, select(select(global0.a.b, vec4<bool>(true, arg_0, false, false), global0.d.x), !vec4<bool>(arg_0, arg_0, true, arg_0), !(false | arg_0)), arg_0), -1000f, Struct_1(global0.b != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1363f - global0.b), -1000f), vec4<bool>(!(!arg_0), true, true | all(vec3<bool>(true, true, arg_0)), true), any(global0.c.b)), !global0.d);
    let var_1 = Struct_2(Struct_1(!arg_0, global0.c.b, any(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(global0.c.c, true, false), vec3<bool>(global0.c.b.x, false, true)))), _wgslsmith_f_op_f32(step(-1296f, 204f)), Struct_1(false, !(!(!global0.a.b)), ~(u_input.c | u_input.d) < 4294967295u), vec3<bool>(false, all(select(vec2<bool>(global0.c.a, false), !vec2<bool>(global0.a.c, true), global0.d.yz)), -u_input.b.x > u_input.e.x));
    var_0 = _wgslsmith_f_op_f32(global0.b * -831f);
    var_0 = global0.b;
    return select(!(!global0.d), !global0.d, all(select(!select(global0.a.b, vec4<bool>(false, var_1.c.c, global0.a.b.x, arg_0), var_1.d.x), select(!global0.c.b, vec4<bool>(true, false, false, true), !vec4<bool>(true, var_1.c.b.x, true, arg_0)), true)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(global0.c, _wgslsmith_div_f32(global0.b, 1413f), Struct_1(global0.d.x, select(global0.c.b, select(!vec4<bool>(true, true, global0.c.c, true), vec4<bool>(global0.c.b.x, false, true, true), true), !vec4<bool>(false, false, false, global0.d.x)), any(func_3(!global0.d.x, _wgslsmith_clamp_vec2_i32(u_input.b.wx, u_input.e.wx, vec2<i32>(44418i, u_input.e.x))))), select(global0.c.b.zww, vec3<bool>(global0.c.c, !any(global0.c.b.yx), any(vec3<bool>(true, global0.d.x, global0.c.c)) | true), !global0.c.b.zzx));
    var var_0 = Struct_1(true, global0.c.b, false);
    return global0.c;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_2 {
    var var_0 = global0.c;
    let var_1 = firstLeadingBit(vec3<u32>(u_input.c, 58909u, 4294967295u) << ((~vec3<u32>(arg_1, 3996u, 1u) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.c, 1u), vec3<u32>(10048u, 1u, arg_1)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = func_2();
    var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(floor(global0.b))), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_3)), -273f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_3, arg_3)))), _wgslsmith_f_op_f32(-arg_3))));
    return Struct_2(Struct_1(false, select(func_2().b, vec4<bool>(!arg_0.x, true, arg_1 > 2542u, true), var_0.b), all(global0.d.yy) & true), _wgslsmith_f_op_f32(f32(-1f) * -125f), func_2(), !(!(!func_2().b.wxy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(1u < u_input.d, false), 1u, select(_wgslsmith_mult_i32(u_input.e.x, u_input.b.x), u_input.e.x, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-842f)) + -2312f), _wgslsmith_div_f32(821f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b), global0.b)))));
    var var_1 = Struct_2(var_0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2114f, 898f)))))), Struct_1(false, var_0.c.b, true), global0.d);
    let var_2 = countOneBits(vec4<i32>(abs(_wgslsmith_add_i32(~1i, 0i)), -97722i, min(u_input.e.x, _wgslsmith_dot_vec4_i32(u_input.b, u_input.e)) & 23321i, countOneBits(u_input.b.x)));
    var var_3 = var_1.b;
    var var_4 = func_1(global0.c.b.ww, (u_input.d & 1u) >> (1u % 32u), -select(abs(-1i), firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, var_2.x)), any(!vec3<bool>(false, var_0.d.x, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1f, var_0.b)), 1f)))));
    var var_5 = ~(-firstLeadingBit(~select(7640i, -1i, false)));
    global0 = Struct_2(Struct_1(!all(vec3<bool>(global0.d.x, false, global0.c.a)), var_1.c.b, func_3(false, var_2.xw).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(275f, -191f) - _wgslsmith_div_f32(-464f, var_0.b)))) + func_1(func_3(-131f != global0.b, ~vec2<i32>(-8377i, -43988i)).xy, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.d, 50933u), firstTrailingBit(vec4<u32>(4294967295u, 23777u, 51298u, u_input.d))), -1i, 1170f).b), func_2(), func_3(false, var_2.zy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global0.b)), _wgslsmith_div_f32(588f, 1f))));
}

