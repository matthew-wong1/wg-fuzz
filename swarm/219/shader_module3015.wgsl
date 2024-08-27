struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 6> = array<i32, 6>(-3144i, -38929i, -1i, -4496i, -40897i, 2147483647i);

var<private> global2: f32;

var<private> global3: array<u32, 12>;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(2147483647i, 8469i), -1074f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    return abs(~global4.a.x);
}

fn func_3() -> i32 {
    let var_0 = vec2<u32>(select(select(_wgslsmith_div_u32(firstLeadingBit(1441u), ~u_input.c.x), countOneBits(reverseBits(66507u)), false), ~(~select(u_input.c.x, u_input.b.x, true)), true | (global4.b >= _wgslsmith_f_op_f32(select(-1165f, -1105f, true)))), 54597u);
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(19652u, 6u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], 6u)]), global1[_wgslsmith_index_u32(countOneBits(97460u), 6u)]), ~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 12u)] & 121444u, 6u)]), _wgslsmith_sub_i32(firstLeadingBit(func_1(Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(85165u, 6u)], 15505i), 1680f), true)), -9647i)), global4.b);
    let var_2 = Struct_1(select(global4.a, global4.a, vec2<bool>(true, true)) | vec2<i32>(var_1.a.x, min(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, global1[_wgslsmith_index_u32(0u, 6u)], 32585i), vec4<i32>(global4.a.x, global1[_wgslsmith_index_u32(1u, 6u)], 1i, 14219i)), select(1i, global1[_wgslsmith_index_u32(60256u, 6u)], false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-347f, _wgslsmith_f_op_f32(-1000f + 355f), false))))));
    var var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, var_3.b) + vec2<f32>(var_1.b, -246f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(480f, -567f), vec2<f32>(var_3.b, -3190f))) * vec2<f32>(global4.b, -470f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 1389f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1245f * _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_div_f32(-525f, var_3.b))));
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-884f + 770f));
    global4 = arg_1;
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(22246u, 6u)], arg_1.a.x, -2147483647i, -2147483647i) & vec4<i32>(u_input.a.x, arg_2, arg_0.a.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], 6u)]), ~vec4<i32>(77989i, 22660i, u_input.a.x, arg_1.a.x) ^ vec4<i32>(0i, 39959i, global1[_wgslsmith_index_u32(4072u, 6u)], -2147483647i)) >> (firstTrailingBit(57573u) % 32u), -func_3());
    global1 = array<i32, 6>();
    global4 = Struct_1(~vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, -22847i), vec3<i32>(global4.a.x, arg_2, -46924i)), u_input.a.x), -937f);
    return global3[_wgslsmith_index_u32(4294967295u, 12u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<i32, 6>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(vec2<i32>(func_1(Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30636u, 12u)], 6u)], global1[_wgslsmith_index_u32(50991u, 6u)]), 1482f), true) >> (~54448u % 32u), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global4.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 6u)])), vec2<i32>(global4.a.x, 24644i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.b))) * _wgslsmith_f_op_f32(f32(-1f) * -1441f)) * -1730f));
    global4 = func_4(vec4<bool>(~(~u_input.c.x) <= func_2(Struct_1(var_0.a, global4.b), Struct_1(var_0.a, var_0.b), _wgslsmith_div_i32(2147483647i, 2147483647i)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))) && false, true, true), vec3<f32>(_wgslsmith_f_op_f32(-1486f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global4.b, -3036f)), _wgslsmith_f_op_f32(1306f * -196f), true))), -122f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1557f))), -160f)), Struct_1(var_0.a, global4.b));
    global4 = func_4(vec4<bool>(!(_wgslsmith_add_i32(1i, -51689i) != _wgslsmith_dot_vec4_i32(vec4<i32>(8169i, -2147483647i, global4.a.x, -23405i), vec4<i32>(var_0.a.x, global4.a.x, global4.a.x, global4.a.x))), all(vec3<bool>(true, 4294967295u <= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], true)), !select(true, any(vec2<bool>(false, false)), any(vec2<bool>(false, true))), any(vec4<bool>(true, all(vec4<bool>(false, true, true, true)), any(vec2<bool>(true, false)), 0u >= u_input.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-800f, var_0.b, -678f)))), func_4(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.b, 1068f, var_0.b))), Struct_1(vec2<i32>(_wgslsmith_mod_i32(-52667i, 1i), _wgslsmith_div_i32(0i, global4.a.x)), global4.b)));
    var var_1 = var_0.a.x;
    var_1 = reverseBits(func_4(vec4<bool>(true, true, global4.b != 128f, 1u >= global3[_wgslsmith_index_u32(34560u, 12u)]), vec3<f32>(global4.b, _wgslsmith_f_op_f32(f32(-1f) * -843f), var_0.b), func_4(vec4<bool>(false, true, false, false), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(744f, global4.b, var_0.b))), Struct_1(vec2<i32>(global4.a.x, 11487i), global4.b))).a.x & var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(var_0.b, 757f)))) + _wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-546f, global4.b, var_0.b))), func_4(vec4<bool>(true, true, false, false), vec3<f32>(global4.b, -286f, var_0.b), Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 12u)], 6u)], u_input.a.x), var_0.b))).b - var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(-1015f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(-1000f, var_0.b))), 2839f, -134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) - var_0.b)), reverseBits(firstLeadingBit(1i)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1574f, 1257f), vec2<f32>(global4.b, 1434f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b, global4.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(110f * var_0.b), -100f)))));
}

