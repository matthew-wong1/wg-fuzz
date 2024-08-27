struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
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

var<private> global0: array<f32, 32> = array<f32, 32>(-204f, 620f, 1609f, -234f, -208f, 713f, -962f, -290f, -588f, -816f, 636f, -1857f, 1012f, -518f, 767f, -1015f, 733f, -976f, 746f, 1701f, -1000f, -1990f, -115f, -215f, -790f, -686f, 293f, 812f, -121f, -251f, -877f, -1122f);

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<f32> {
    var var_0 = vec2<f32>(605f, global0[_wgslsmith_index_u32(~1u, 32u)]);
    global1 = Struct_1(arg_0.a, arg_0.b, select(vec2<bool>(!(!arg_0.a), true), vec2<bool>(!(!global1.a), true && arg_0.c.x), !global1.c), -129f);
    let var_1 = u_input.b;
    global0 = array<f32, 32>();
    global1 = arg_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1, 32u)] + var_0.x)), 223f, arg_0.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-729f, global1.d, global0[_wgslsmith_index_u32(4294967295u, 32u)])), vec3<f32>(1068f, arg_0.d, arg_0.d))) - vec3<f32>(var_0.x, 290f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.b, 32u)]))))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(all(vec3<bool>(false, all(vec3<bool>(true, global1.a, global1.c.x)), true)), ~(~0u), !global1.c, global0[_wgslsmith_index_u32(1u, 32u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(true || global1.a, ~11206u, !global1.c, 406f), vec4<bool>(global1.a, false, select(true, global1.c.x, global1.a), global1.a)))));
    global0 = array<f32, 32>();
    let var_1 = Struct_2(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1244f, 352f, -580f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)))));
    var_0 = Struct_2(Struct_1(!all(!vec3<bool>(false, global1.c.x, true)), ~abs(1u), !global1.c, -143f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(!global1.c.x, 0u, select(vec2<bool>(true, false), vec2<bool>(var_1.a.a, false), vec2<bool>(true, var_1.a.a)), -926f), vec4<bool>(var_0.a.a & true, true, global1.c.x, var_0.a.a))))));
    let var_2 = Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, global0[_wgslsmith_index_u32(59298u, 32u)], 328f) + _wgslsmith_f_op_vec3_f32(-var_1.b)) * var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-278f, -685f, -541f)))), vec3<bool>(true && var_0.a.a, true, true))));
    return var_2;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global0 = array<f32, 32>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(arg_1.a.d).a.d + _wgslsmith_f_op_f32(ceil(arg_2.d))))), -287f));
    let var_1 = -80132i;
    let var_2 = _wgslsmith_add_vec2_u32(~(firstTrailingBit(vec2<u32>(72445u, 23335u)) & (vec2<u32>(649u, arg_2.b) ^ vec2<u32>(0u, global1.b))) >> (max(vec2<u32>(arg_1.a.b, arg_1.a.b) >> ((vec2<u32>(1u, u_input.b) & vec2<u32>(u_input.b, arg_2.b)) % vec2<u32>(32u)), abs(~vec2<u32>(arg_1.a.b, 34591u))) % vec2<u32>(32u)), ~firstTrailingBit(countOneBits(~vec2<u32>(3878u, u_input.a))));
    global0 = array<f32, 32>();
    return arg_2;
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = func_4(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)]) * _wgslsmith_f_op_f32(global1.d * global0[_wgslsmith_index_u32(u_input.a, 32u)])) <= global0[_wgslsmith_index_u32(reverseBits(~46753u), 32u)], all(select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, true), vec2<bool>(true, arg_0), false), any(vec3<bool>(arg_0, true, global1.a))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-130f, -793f, false))))), func_2(_wgslsmith_f_op_f32(-1075f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f)))).a);
    let var_1 = Struct_2(func_2(763f).a, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(var_0, vec4<bool>(arg_0, false, false, var_0.c.x))).x, -424f)).b - _wgslsmith_f_op_vec3_f32(-func_2(global0[_wgslsmith_index_u32(global1.b, 32u)]).b)));
    let var_2 = func_2(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * var_0.d))), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_1.a.b, 2888u), 32u)])));
    global1 = func_4(vec2<bool>(arg_0, all(vec4<bool>(true, arg_0, var_0.c.x, var_2.a.a)) | false), func_2(global1.d), var_2.a);
    let var_3 = 1f;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    let var_0 = func_1(!any(select(select(vec3<bool>(true, false, global1.a), vec3<bool>(true, false, global1.a), vec3<bool>(true, global1.a, global1.c.x)), !vec3<bool>(global1.a, global1.c.x, false), all(global1.c))));
    let var_1 = _wgslsmith_div_vec2_u32(~vec2<u32>(34775u, 21565u), (abs(~vec2<u32>(u_input.b, 1u)) & ~vec2<u32>(u_input.a, 1u)) ^ min((vec2<u32>(global1.b, u_input.b) | vec2<u32>(global1.b, u_input.a)) >> (vec2<u32>(global1.b, 4646u) % vec2<u32>(32u)), reverseBits(vec2<u32>(62082u, global1.b))));
    let var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(round(649f))).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-208f, _wgslsmith_f_op_f32(-206f * -1338f), -488f))));
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(~(-var_0)), var_0 | min(~u_input.c.x, func_1(var_2.a.c.x))));
}

