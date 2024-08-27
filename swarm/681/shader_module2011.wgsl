struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(1u, 35088u, 100320u), vec3<u32>(4294967295u, 4294967295u, 3448u), vec3<u32>(20020u, 54913u, 0u), vec3<u32>(41043u, 0u, 30815u), vec3<u32>(51978u, 21888u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(28443u, 46781u, 1u), vec3<u32>(1u, 0u, 50497u), vec3<u32>(14126u, 15235u, 49918u), vec3<u32>(12225u, 0u, 124394u), vec3<u32>(4294967295u, 4294967295u, 25415u), vec3<u32>(27168u, 1u, 70933u), vec3<u32>(20911u, 1u, 1u), vec3<u32>(0u, 1u, 90400u), vec3<u32>(74615u, 60587u, 4294967295u), vec3<u32>(95731u, 3114u, 4294967295u), vec3<u32>(67256u, 4294967295u, 36384u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 4294967295u, 7079u), vec3<u32>(1u, 17291u, 0u), vec3<u32>(4294967295u, 14215u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 55735u, 14239u), vec3<u32>(4862u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 83654u));

var<private> global2: array<i32, 27> = array<i32, 27>(-1i, -81480i, 13850i, -78227i, -1i, i32(-2147483648), 2147483647i, -16610i, i32(-2147483648), 0i, -62813i, -20534i, -27490i, -61310i, 1i, i32(-2147483648), 0i, 1i, 0i, 1i, 1i, -56287i, -26670i, 33100i, -1i, 0i, -27729i);

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, false));

var<private> global4: vec2<u32> = vec2<u32>(9825u, 75062u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    global2 = array<i32, 27>();
    let var_0 = select(!vec4<bool>(true, any(global0.a) || global3.a.x, any(select(arg_0.c.wxz, vec3<bool>(arg_1.a.x, true, global3.a.x), vec3<bool>(false, global3.a.x, true))), false && global3.a.x), arg_0.c, select(!global3.a.x, global3.a.x, !any(vec2<bool>(true, arg_1.a.x))));
    var var_1 = select(!select(global0.a.zx, vec2<bool>(false, all(vec3<bool>(arg_0.c.x, arg_0.a.x, arg_0.a.x))), true), !(!arg_1.a), false);
    let var_2 = vec4<f32>(158f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(294f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-263f * 1000f), -688f))), _wgslsmith_div_f32(796f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 416f))))), _wgslsmith_f_op_f32(ceil(1000f)));
    let var_3 = 9911i;
    return select(select(!vec4<bool>(global0.a.x, true, true, arg_0.c.x), !vec4<bool>(any(vec4<bool>(false, false, var_0.x, false)), u_input.c.x < u_input.b, all(vec2<bool>(false, global0.a.x)), true), any(select(vec3<bool>(global3.a.x, false, var_0.x), !var_0.wwx, !var_0.zxx))), !(!select(select(vec4<bool>(var_0.x, arg_1.a.x, global3.a.x, global3.a.x), global0.c, arg_0.c), global0.c, vec4<bool>(false, arg_1.a.x, false, false))), !(!arg_1.a.x));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    global0 = Struct_2(vec3<bool>(any(select(!vec4<bool>(arg_2.a.x, false, global0.a.x, arg_1), vec4<bool>(arg_3, arg_2.a.x, true, arg_3), true)), false, true), i32(-1i) * -2147483647i, select(global0.c, func_3(Struct_2(select(vec3<bool>(global3.a.x, false, arg_2.a.x), global0.c.zxy, global0.c.wxx), i32(-1i) * -2147483647i, vec4<bool>(true, arg_1, arg_3, arg_3)), arg_2), false));
    var var_0 = abs(~u_input.a.x) >> (abs(~_wgslsmith_div_u32(26362u, 1u)) % 32u);
    global4 = u_input.c.xw;
    global0 = Struct_2(global0.a, i32(-1i) * -2147483647i, global0.c);
    global1 = array<vec3<u32>, 25>();
    return Struct_2(!vec3<bool>(global0.a.x, func_3(Struct_2(vec3<bool>(arg_3, global3.a.x, false), global2[_wgslsmith_index_u32(4294967295u, 27u)], global0.c), Struct_1(arg_2.a)).x, true), 19692i, func_3(Struct_2(vec3<bool>(true, true, true), -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), global0.c), arg_2));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global0 = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-932f - -773f))), _wgslsmith_f_op_f32(-486f + _wgslsmith_f_op_f32(floor(-1355f))))))), !arg_0.c.x, arg_1, false);
    return arg_1;
}

fn func_1() -> f32 {
    var var_0 = ~reverseBits(vec4<i32>(-global0.b, min(_wgslsmith_add_i32(1i, global0.b), ~global2[_wgslsmith_index_u32(119869u, 27u)]), global2[_wgslsmith_index_u32(global4.x, 27u)], -12851i));
    let var_1 = -abs(var_0.x);
    var var_2 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f * 1510f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-157f)) * 861f)), false, Struct_1(!(!global3.a)), 93478u > u_input.d), Struct_1(select(global3.a, func_3(Struct_2(global0.c.zzz, global2[_wgslsmith_index_u32(global4.x, 27u)], vec4<bool>(global3.a.x, global0.c.x, true, global0.a.x)), Struct_1(vec2<bool>(global0.a.x, global3.a.x))).zw, true)));
    global2 = array<i32, 27>();
    var var_3 = abs(~(~global4.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-289f)) + _wgslsmith_f_op_f32(1360f * 1f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -364f;
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1111f + _wgslsmith_f_op_f32(944f + -110f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1410f)), _wgslsmith_f_op_f32(func_1())), true);
    let var_2 = true;
    var var_3 = _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-abs(u_input.a.ww), u_input.a.wz << (select(vec2<u32>(u_input.b, 4294967295u), u_input.c.wy, global3.a.x) % vec2<u32>(32u))), -7167i), ~max(24243i, -1i));
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f))));
    let x = u_input.a;
    s_output = StorageBuffer(max(-17435i, global2[_wgslsmith_index_u32(global4.x, 27u)]), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(var_4 * var_4), -1098f, _wgslsmith_f_op_f32(-var_4)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(113f + var_4), _wgslsmith_div_f32(1332f, var_4)) * -1449f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f), 1f)));
}

