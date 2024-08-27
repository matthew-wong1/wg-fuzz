struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: bool = false;

var<private> global1: array<f32, 21> = array<f32, 21>(-641f, 983f, 1069f, -1445f, -266f, -841f, -619f, 873f, -141f, 752f, 1192f, -595f, 596f, -1011f, -591f, 1686f, 1228f, 1000f, 732f, -312f, 981f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(arg_1));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-676f, var_1.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-194f, -1688f, -145f) * _wgslsmith_f_op_vec3_f32(var_1.zxx * var_1.yzz))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_f32(select(var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false)), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 21u)]))))));
    var var_3 = _wgslsmith_mult_vec3_u32(arg_0, firstLeadingBit(countOneBits(vec3<u32>(~arg_0.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), firstLeadingBit(4294967295u)))));
    var_0 = arg_0.x;
    return 209f;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], arg_2);
    var var_1 = any(select(vec2<bool>(false, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true))), vec2<bool>(true, true), true));
    global1 = array<f32, 21>();
    global1 = array<f32, 21>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<u32>(0u, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 2259f, arg_2, arg_0.a.x)))), arg_0.a.x)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a.x, -671f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1160f))), _wgslsmith_f_op_f32(func_3(u_input.a.www, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -466f, 2772f, -1000f), vec4<f32>(arg_2, -1363f, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 535f)))))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))))));
    return Struct_1(arg_0.a.zx, any(select(vec3<bool>(true, any(vec3<bool>(true, true, false)), all(vec3<bool>(true, false, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), true)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.www, abs(vec3<u32>(u_input.a.x, u_input.a.x, 0u))), vec3<u32>(u_input.a.x, u_input.a.x, 75695u)));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    global0 = false;
    var var_0 = u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a.x), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 21u)], false)))) * _wgslsmith_f_op_f32(func_3(~u_input.a.yww, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(19706u, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)], arg_2.a.x, 1000f)))))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    global0 = false;
    global0 = all(vec4<bool>(any(!vec4<bool>(false, arg_3.b, false, arg_3.b)), false, arg_3.b || all(!vec4<bool>(false, arg_2.b, true, true)), false));
    let var_0 = Struct_1(arg_3.a, arg_3.b, ~u_input.a.zzy);
    global1 = array<f32, 21>();
    global1 = array<f32, 21>();
    return !(!(!(!select(vec2<bool>(var_0.b, false), vec2<bool>(false, arg_3.b), vec2<bool>(true, var_0.b)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x * 777f), _wgslsmith_f_op_f32(-arg_1.a.x)), arg_0.b == (arg_0.a.x < 804f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -119f)))) == 754f;
    let var_0 = func_5(1i, ~max(arg_1.c.x, ~(~u_input.a.x)), Struct_3(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(abs(1f)), 1f, _wgslsmith_f_op_f32(func_4(all(vec2<bool>(arg_0.b, true)), ~vec2<u32>(9047u, arg_0.c.x), func_2(Struct_2(vec3<f32>(-815f, arg_1.a.x, -666f)), Struct_2(vec3<f32>(1009f, 1005f, 554f)), global1[_wgslsmith_index_u32(25549u, 21u)])))), (arg_0.b & !arg_0.b) && arg_0.b), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(-1202f, arg_0.a.x))), true, firstTrailingBit(~(~vec3<u32>(43402u, u_input.a.x, u_input.a.x)))));
    global1 = array<f32, 21>();
    global1 = array<f32, 21>();
    let var_1 = ~arg_0.c.x;
    return _wgslsmith_mult_vec4_u32(reverseBits(~(u_input.a >> ((u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)))), firstTrailingBit(max(select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0.c.x, 6957u, 65827u), u_input.a), ~u_input.a, !var_0.x), ~countOneBits(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -74447i;
    global0 = false;
    var var_1 = _wgslsmith_sub_u32(~(~(~u_input.a.x)), u_input.a.x);
    var var_2 = true;
    let var_3 = ~(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 4207u), _wgslsmith_dot_vec4_u32(func_1(Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), true, vec3<u32>(u_input.a.x, 0u, 0u)), Struct_1(vec2<f32>(1365f, 1000f), true, u_input.a.xxy)), firstLeadingBit(u_input.a))));
    var var_4 = func_2(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(749f)), -214f, 777f)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 21u)] * -286f), 1488f, -476f))), func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(678f, -1132f, global1[_wgslsmith_index_u32(var_3, 21u)]))))), Struct_2(vec3<f32>(-736f, -115f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 21u)])))), -696f).a.x);
    var_0 = ~min(29240i, 1i);
    var var_5 = select(vec2<bool>(var_4.b, !any(vec2<bool>(var_4.b, var_4.b))), vec2<bool>(false, _wgslsmith_f_op_f32(-410f * var_4.a.x) <= global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, reverseBits(u_input.a.x)), 21u)]), func_5(39614i, 13985u, Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.a.x, 524f, -1029f, -1000f), vec4<f32>(1105f, global1[_wgslsmith_index_u32(9150u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(78438u, 21u)])))), var_4.b), func_2(Struct_2(vec3<f32>(283f, -403f, global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1691f, global1[_wgslsmith_index_u32(var_3, 21u)], var_4.a.x), vec3<f32>(global1[_wgslsmith_index_u32(var_4.c.x, 21u)], global1[_wgslsmith_index_u32(var_4.c.x, 21u)], -923f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 21u)])) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 21u)] * var_4.a.x)))).x);
    let var_6 = min(-26826i, 0i >> (~abs(_wgslsmith_div_u32(4294967295u, var_4.c.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(2294f);
}

