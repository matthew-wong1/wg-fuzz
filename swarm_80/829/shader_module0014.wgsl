struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
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

var<private> global0: vec3<f32>;

var<private> global1: Struct_1 = Struct_1(true, -1529f, vec3<f32>(1702f, -715f, -333f), 2628f, -1i);

var<private> global2: u32;

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(true, global1.c.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(global1.c)), _wgslsmith_f_op_vec3_f32(floor(global1.c)))), _wgslsmith_f_op_f32(floor(640f)), global1.e);
    var var_1 = max(vec2<u32>(13945u, ~u_input.c), vec2<u32>(abs(11201u) | firstLeadingBit(u_input.c), 1u) ^ ~abs(countOneBits(vec2<u32>(u_input.c, u_input.c))));
    var var_2 = 1i;
    var var_3 = Struct_1(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) + _wgslsmith_f_op_f32(sign(global1.b))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c), global1.c), -494f, global1.e);
    var var_4 = _wgslsmith_sub_vec4_u32(select(countOneBits(abs(vec4<u32>(u_input.c, u_input.c, 4294967295u, 893u))), select(~vec4<u32>(var_1.x, u_input.c, var_1.x, 1u), firstTrailingBit(vec4<u32>(6596u, 32199u, u_input.c, u_input.c)), select(vec4<bool>(var_3.a, true, false, false), vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(var_0.a, true, global1.a, true))), vec4<bool>(false, var_1.x > var_1.x, true & var_3.a, all(vec2<bool>(var_0.a, var_0.a)))) ^ vec4<u32>(abs(4294967295u), ~17840u, var_1.x, 1u), vec4<u32>(~(~var_1.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.x, var_1.x), 12213u), select(~u_input.c, 1u, any(vec4<bool>(var_3.a, false, global1.a, var_3.a))), min(6430u, 1u)) & (vec4<u32>(28809u, 1u, 0u, u_input.c) & ((vec4<u32>(33102u, u_input.c, 44813u, var_1.x) >> (vec4<u32>(var_1.x, 0u, 0u, var_1.x) % vec4<u32>(32u))) & (vec4<u32>(var_1.x, 1u, var_1.x, var_1.x) >> (vec4<u32>(1u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))))));
    return global1.b;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -516f), _wgslsmith_f_op_f32(f32(-1f) * -1093f), arg_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1290f)), _wgslsmith_add_i32(-2147483647i, firstTrailingBit(arg_2.e)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-arg_2.c.x), arg_2.d);
    let var_2 = arg_2;
    let var_3 = global1.a;
    global1 = arg_2;
    return Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * -777f), 2123f, _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(560f, global1.c.x, arg_2.d) * global1.c) + vec3<f32>(_wgslsmith_f_op_f32(-788f * var_0.c.x), _wgslsmith_f_op_f32(select(var_1.x, -140f, global3.x)), _wgslsmith_f_op_f32(global0.x + 949f)))), -1203f, var_0.e ^ ~(-27845i));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = firstLeadingBit(54235u);
    var var_1 = vec4<u32>(min(4294967295u, 39322u), ~arg_0, 72760u, u_input.c);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(sign(-182f))))) <= global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(776f + _wgslsmith_f_op_f32(746f * global1.c.x)) - func_2(_wgslsmith_f_op_f32(select(1431f, global1.b, true)), all(vec2<bool>(true, global3.x)), arg_1).d) * global1.d), arg_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - -336f), _wgslsmith_f_op_f32(sign(arg_1.d)))))), _wgslsmith_f_op_f32(f32(-1f) * -250f))), -2147483647i);
    let var_3 = false;
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1163f)))), select(any(select(select(vec3<bool>(true, true, arg_1.a), vec3<bool>(true, var_3, var_3), arg_1.a), !vec3<bool>(false, true, arg_1.a), var_2.a || false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(891f)) + _wgslsmith_f_op_f32(round(global1.d))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.b, -1562f)) - global1.b), var_2.a), func_2(arg_1.d, false, var_2)).c;
    return Struct_1(any(select(vec3<bool>(!var_3, var_2.a, arg_1.e <= var_2.e), vec3<bool>(true, select(global1.a, global1.a, true), select(global1.a, false, var_3)), !select(vec3<bool>(var_2.a, true, false), vec3<bool>(true, false, false), vec3<bool>(false, arg_1.a, false)))), var_2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c)), 1087f, u_input.a.x);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_1 {
    global0 = global1.c;
    return func_4(~69498u, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - -1209f), _wgslsmith_f_op_f32(-global0.x)))), global1.a, Struct_1(true, 705f, _wgslsmith_f_op_vec3_f32(-global1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(floor(-393f))), arg_3)));
}

fn func_5(arg_0: Struct_1) -> f32 {
    global1 = func_1(false, u_input.c, _wgslsmith_f_op_f32(max(global1.c.x, global0.x)), 2147483647i);
    global1 = arg_0;
    var var_0 = arg_0;
    let var_1 = Struct_1(true, -650f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(func_2(global1.c.x, global3.x, Struct_1(true, 2531f, vec3<f32>(global1.c.x, -1104f, arg_0.c.x), 1000f, global1.e)).d, global1.a, arg_0).c + _wgslsmith_f_op_vec3_f32(exp2(var_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -231f, 430f))) - arg_0.c), global3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f))))), ~var_0.e);
    global2 = u_input.c;
    return -252f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c * vec3<f32>(_wgslsmith_f_op_f32(func_5(func_1(global3.x, 4294967295u, 858f, 1i))), _wgslsmith_f_op_f32(264f * _wgslsmith_div_f32(global0.x, global1.b)), global1.b)) + func_2(_wgslsmith_div_f32(func_4(~u_input.c, Struct_1(false, global0.x, global1.c, global1.d, u_input.a.x)).c.x, 287f), global3.x, Struct_1(!global3.x, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(global1.b - -181f)), global1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + global1.d), global0.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(74671i, 0i, -7201i, 29251i), reverseBits(vec4<i32>(global1.e, -26922i, -59570i, global1.e))))).c);
    let var_1 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, var_0.x)) == 1932f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(func_4(61384u, Struct_1(false, -832f, global1.c, -1087f, global1.e)).b, 1158f), _wgslsmith_f_op_f32(f32(-1f) * -1514f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(global1.c)))), 1590f, ~18715i);
    var var_2 = var_1.c;
    var var_3 = any(!select(!vec3<bool>(false, global3.x, var_1.a), !(!vec3<bool>(true, global3.x, global3.x)), true));
    let var_4 = true;
    var var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(var_1.c.x - -697f), var_4)), var_1.c.x, 1441f, -779f));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 683f, var_2.x)))), var_5.zyx))), vec3<f32>(_wgslsmith_div_f32(-1039f, _wgslsmith_f_op_f32(f32(-1f) * -450f)), _wgslsmith_f_op_f32(1000f + -880f), _wgslsmith_f_op_f32(f32(-1f) * -174f)));
    var var_6 = -u_input.b;
    global3 = vec3<bool>(!func_1(var_4, ~10529u, _wgslsmith_f_op_f32(-global0.x), ~select(-2147483647i, 1609i, global1.a)).a, !(26967u != u_input.c), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_sub_i32(global1.e, var_1.e) ^ ((i32(-1i) * -1i) >> ((0u ^ u_input.c) % 32u))));
}

