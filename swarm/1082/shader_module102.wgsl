struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    var var_0 = vec2<bool>(false, ~u_input.a == 1u);
    let var_1 = ~u_input.a;
    return -select(countOneBits(select(u_input.b.yz, u_input.b.zy, var_0.x)), vec2<i32>(-1i, u_input.b.x), all(vec4<bool>(!var_0.x, arg_0 != arg_0, false, any(vec2<bool>(var_0.x, var_0.x)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec3<bool>) -> u32 {
    var var_0 = any(!select(arg_3, !select(arg_3, vec3<bool>(true, arg_3.x, true), true), !arg_3.x));
    var_0 = false;
    var var_1 = all(arg_1.a.a);
    let var_2 = true;
    var_0 = all(select(arg_1.a.a.xx, select(arg_3.zx, arg_3.zz, !(!arg_3.yy)), vec2<bool>(true, var_2)));
    return ~u_input.a;
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_3(vec2<i32>(i32(-1i) * -2147483647i, 22489i));
    var var_1 = select(func_3(arg_0, Struct_4(Struct_1(vec4<bool>(true, true, true, true))), firstLeadingBit(var_0.a), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), ~max(4294967295u, 4294967295u), _wgslsmith_f_op_f32(1215f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2202f)))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-234f))))));
    let var_2 = Struct_4(Struct_1(vec4<bool>(true, true, true, true)));
    var_1 = u_input.a;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(-538f, 1701f, select(-2147483647i <= (u_input.b.x | u_input.b.x), var_2.a.a.x, true))), 142f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -342f) - _wgslsmith_f_op_f32(f32(-1f) * -1204f)) * 228f)), 1050f);
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1922f + -1400f), _wgslsmith_f_op_f32(f32(-1f) * -333f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-822f)) * _wgslsmith_f_op_f32(trunc(-247f)))))), -1641f, _wgslsmith_f_op_f32(-281f + -383f), _wgslsmith_div_f32(2449f, _wgslsmith_div_f32(1753f, _wgslsmith_f_op_f32(func_2(func_1(-1665f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + var_0.x))), var_0.x, var_0.x, var_0.x);
    var var_1 = Struct_2(Struct_1(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, _wgslsmith_mult_i32(u_input.b.x, 19115i) == ~u_input.b.x, true)), !any(vec3<bool>(true, false, true)), all(vec4<bool>(true, true, true, true)) & (_wgslsmith_f_op_f32(1695f - _wgslsmith_f_op_f32(-var_0.x)) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.x, 525f))))), true);
    var_1 = Struct_2(Struct_1(var_1.a.a), all(vec3<bool>(false, all(var_1.a.a.zz), !(!var_1.c))), all(select(!vec2<bool>(var_1.b, var_1.a.a.x), !var_1.a.a.wy, true)), any(select(vec2<bool>(!var_1.a.a.x, !var_1.c), select(vec2<bool>(true, false), !vec2<bool>(var_1.d, false), false), vec2<bool>(true, false))));
    var var_2 = var_1.a;
    var_2 = var_1.a;
    var_1 = Struct_2(var_1.a, var_1.d & any(!select(var_1.a.a, vec4<bool>(true, true, true, var_2.a.x), vec4<bool>(true, var_1.c, var_2.a.x, var_1.d))), false, true);
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(u_input.b.zy, abs(u_input.b.xy | _wgslsmith_mod_vec2_i32(u_input.b.zy, vec2<i32>(0i, -1i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2192f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(340f - 1452f) - -753f), var_0.x)), min(u_input.a, _wgslsmith_mult_u32(~countOneBits(4294967295u), firstTrailingBit(u_input.a))), i32(-1i) * -u_input.b.x, -(~0i));
}

