struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: u32) -> vec3<f32> {
    let var_0 = Struct_1(arg_1.x);
    let var_1 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -179f))))), 10040u);
    var var_2 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), true)), select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, any(vec3<bool>(false, false, false)), 0i < u_input.b.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, true, true)), select(all(vec3<bool>(false, true, true)), false, true)), vec4<bool>(false, true, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))))), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, u_input.b.x != u_input.b.x, any(vec3<bool>(false, true, true)), true), all(vec3<bool>(true, true, -1921f == arg_1.x))));
    global0 = var_1;
    global0 = var_1;
    return vec3<f32>(_wgslsmith_f_op_f32(floor(471f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.a + 231f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -171f)), _wgslsmith_f_op_f32(110f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(541f)))))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> vec2<i32> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(vec3<f32>(global0.b.a, global0.b.a, global0.a.a), arg_0, 4294967295u), vec4<f32>(835f, global0.a.a, 1093f, 1000f), u_input.a.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a.a, arg_0, -909f))), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 1u);
    var var_1 = Struct_4(vec3<i32>(22064i, 0i | u_input.b.x, ~(min(u_input.b.x, u_input.b.x) | (i32(-1i) * -6690i))), global0.b.a);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1086f)))) * arg_0);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) - _wgslsmith_div_f32(-408f, global0.b.a))))), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(777f, 947f), global0.b.a))))));
    var_3 = _wgslsmith_f_op_f32(ceil(var_1.b));
    return firstTrailingBit(max(var_1.a.zx, u_input.b.yz)) >> ((vec2<u32>(~(59753u ^ var_0.c), ~u_input.a.x) << (vec2<u32>(var_0.c, ~reverseBits(global0.c)) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = 529f;
    global0 = Struct_2(global0.a, global0.b, countOneBits(countOneBits(~1u | (global0.c & 0u))));
    var_0 = _wgslsmith_f_op_f32(884f * _wgslsmith_div_f32(global0.a.a, -1309f));
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_3(Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2809f, 1643f, global0.b.a))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(460f, global0.b.a, 602f), vec3<f32>(453f, global0.a.a, -1113f), arg_1))), vec3<f32>(global0.b.a, global0.b.a, _wgslsmith_f_op_f32(-global0.b.a))), _wgslsmith_f_op_f32(min(1535f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.a))))), global0.c | ~6774u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(834f, -2466f)) * -110f) + _wgslsmith_f_op_f32(-424f + -1479f)), _wgslsmith_div_f32(global0.b.a, _wgslsmith_f_op_vec3_f32(func_3(Struct_5(vec3<f32>(global0.b.a, global0.a.a, -799f), global0.a.a, 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(998f, global0.a.a, -883f, 854f) * vec4<f32>(-1034f, -400f, global0.b.a, global0.a.a)), 4294967295u)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-900f)) - -694f)), var_1)).x;
    return Struct_2(global0.b, global0.a, u_input.a.x);
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = func_4(reverseBits(_wgslsmith_mult_vec2_i32(firstLeadingBit(func_2(730f, vec3<bool>(false, true, false))), vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, -1i))), select(u_input.b.x != 20928i, true && ((u_input.a.x > global0.c) | any(vec2<bool>(false, false))), any(vec2<bool>(true, true)) != (reverseBits(u_input.a.x) >= firstTrailingBit(u_input.a.x))), vec2<i32>(-1i) * -abs(vec2<i32>(1i, 1i)));
    var var_0 = !(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    var var_1 = Struct_2(global0.a, global0.a, select(~(func_4(vec2<i32>(u_input.b.x, u_input.b.x), true, vec2<i32>(0i, 16524i)).c >> (26389u % 32u)), global0.c, false));
    let var_2 = !(!(!var_0.x)) || var_0.x;
    let var_3 = ~(~(~(~_wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(var_1.c, 0u)))));
    return func_4(u_input.b.yy, var_2 && !select(false, var_2, u_input.b.x >= u_input.b.x), -u_input.b.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.wxx;
    global0 = func_1(1u);
    var var_1 = global0.b.a;
    global0 = func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xy), 0i | u_input.b.x), u_input.b.x), -vec2<i32>(1i, 0i)), false, ~vec2<i32>(-abs(u_input.b.x), reverseBits(-2147483647i)));
    var var_2 = -(~(~u_input.b.x) | abs(~u_input.b.x)) & -11721i;
    let x = u_input.a;
    s_output = StorageBuffer(max(min(u_input.a.zzy, var_0), var_0));
}

