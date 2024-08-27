struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_div_f32(-872f, _wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, arg_0.a.x))))) >= 526f;
    return vec2<u32>(1u, ~arg_1.d);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.a.zx)));
    let var_1 = 2858i;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a))))), arg_0.b);
    var var_3 = -897f;
    var var_4 = var_2.a;
    return select(!select(select(vec3<bool>(false, false, arg_0.b.x), !vec3<bool>(false, true, arg_0.b.x), select(vec3<bool>(arg_0.b.x, var_2.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, true, false), arg_0.b.x)), vec3<bool>(var_2.b.x, any(vec2<bool>(false, true)), all(vec3<bool>(true, var_2.b.x, arg_0.b.x))), true), select(vec3<bool>(true, false, true), !vec3<bool>(var_2.b.x != arg_0.b.x, all(vec4<bool>(true, var_2.b.x, arg_0.b.x, var_2.b.x)), !var_2.b.x), vec3<bool>(true, true != !var_2.b.x, all(vec4<bool>(true, arg_0.b.x, var_2.b.x, arg_0.b.x)))), !select(select(select(vec3<bool>(var_2.b.x, true, arg_0.b.x), vec3<bool>(true, var_2.b.x, var_2.b.x), vec3<bool>(arg_0.b.x, true, arg_0.b.x)), vec3<bool>(true, var_2.b.x, var_2.b.x), !arg_0.b.x), vec3<bool>(arg_0.b.x, all(vec2<bool>(true, var_2.b.x)), var_1 <= 19910i), true));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = u_input.c;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1422f)), _wgslsmith_f_op_f32(630f - arg_0.a.x), -1988f) * _wgslsmith_div_vec3_f32(vec3<f32>(688f, arg_0.a.x, 2353f), var_1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-530f, _wgslsmith_f_op_f32(-arg_0.a.x), var_1.a.x))));
    let var_3 = Struct_3(~((-1i | firstTrailingBit(1i)) | -_wgslsmith_mult_i32(34062i, -1i)));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.a, vec3<f32>(-493f, _wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x), func_3(var_1))) - arg_0.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, 497f)) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -765f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(818f, _wgslsmith_f_op_f32(arg_0.a.x * var_1.a.x), var_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a, arg_0.a)), true))));
    return Struct_2(var_1, -2277i, abs(~(-40157i)), select(max(_wgslsmith_mod_u32(0u, min(var_0.x, u_input.b)), var_0.x), 0u, any(!(!vec4<bool>(true, false, var_1.b.x, true)))));
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = arg_0.b;
    let var_1 = Struct_3(-select(var_0, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.b, arg_0.b, 0i, arg_0.c), vec4<i32>(-466i, 58193i, -52086i, 50320i)), arg_0.a.b.x || true));
    let var_2 = vec3<bool>(select(true, true, (_wgslsmith_f_op_f32(arg_0.a.a.x - arg_0.a.a.x) < 380f) && select(false & arg_0.a.b.x, arg_0.a.b.x, true)), func_2(func_2(func_2(Struct_1(arg_0.a.a, vec2<bool>(true, true))).a).a).a.b.x, all(arg_0.a.b));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(u_input.c.zz, func_1(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1576f, -527f, -581f))), vec2<bool>(true, true)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-704f, 1043f, -1040f)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), -1i, 1i, 92986u), -63028i, firstTrailingBit(reverseBits(-16871i))));
    var var_1 = 713f;
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(func_4(func_2(Struct_1(vec3<f32>(889f, 102f, -975f), vec2<bool>(true, true)))), ~_wgslsmith_mod_i32(firstLeadingBit(2147483647i), ~4080i)), 0i, -1i);
    var var_3 = var_2;
    let var_4 = !func_3(func_2(Struct_1(vec3<f32>(987f, -292f, 657f), func_3(Struct_1(vec3<f32>(-658f, 949f, -1000f), vec2<bool>(true, false))).zy)).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(select(vec3<u32>(func_2(Struct_1(vec3<f32>(305f, 869f, -2777f), var_4.xy)).d, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), u_input.c.x), ~countOneBits(vec3<u32>(u_input.c.x, var_0.x, 1u)), select(select(vec3<bool>(false, false, var_4.x), vec3<bool>(var_4.x, true, false), var_4), var_4, true)), u_input.c), _wgslsmith_add_u32(countOneBits(var_0.x), 12128u), ~(-var_3.xx));
}

