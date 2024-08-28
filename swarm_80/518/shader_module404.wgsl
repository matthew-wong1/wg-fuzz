struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    var var_0 = firstTrailingBit(_wgslsmith_mult_i32(i32(-1i) * -1i, ~u_input.c.x));
    let var_1 = any(!select(vec3<bool>(true, all(vec3<bool>(false, true, true)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), vec3<bool>(false, true, false)));
    let var_2 = Struct_2(vec2<f32>(1f, 1f), false);
    var_0 = u_input.c.x;
    var_0 = -u_input.b.x;
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    let var_0 = select(vec3<bool>(select(arg_1.a.x, !any(vec2<bool>(arg_0.d, false)), arg_1.a.x), _wgslsmith_f_op_f32(ceil(arg_0.c.x)) != -1255f, u_input.c.x != min(~u_input.b.x, ~u_input.c.x)), arg_2, true);
    let var_1 = arg_0;
    let var_2 = Struct_1(select(select(vec2<bool>(arg_2.x && arg_1.a.x, false), vec2<bool>(true, 29908i == u_input.b.x), select(arg_2.zz, arg_1.a, arg_1.a)), !arg_2.xx, -663f >= arg_0.a.x), abs(firstLeadingBit(u_input.d)));
    let var_3 = _wgslsmith_f_op_f32(min(815f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-533f * _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(min(var_1.b.a.x, 125f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) - -1328f) - -611f))));
    var var_4 = _wgslsmith_f_op_f32(1081f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)));
    return var_3;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> vec2<f32> {
    var var_0 = true;
    var_0 = false;
    let var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1395u), ~(~(vec2<u32>(u_input.e.x, 0u) & u_input.d.xz))), u_input.e);
    var var_2 = true | arg_0.x;
    let var_3 = var_1;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-166f, 888f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-569f, 1000f) * _wgslsmith_div_f32(-948f, -1000f)), _wgslsmith_f_op_f32(func_4(Struct_3(vec3<f32>(-261f, -129f, 632f), Struct_2(vec2<f32>(1142f, -1094f), true), vec2<f32>(1877f, 1842f), true), Struct_1(arg_0.xy, vec3<u32>(u_input.e.x, 19380u, var_3.x)), !arg_0, func_3()))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-230f, -1736f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(908f, 169f) + vec2<f32>(673f, -339f)))))));
}

fn func_1() -> StorageBuffer {
    var var_0 = 388f;
    var var_1 = 1f;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(true, true, true), _wgslsmith_mod_i32(u_input.b.x, -8425i)))) + vec2<f32>(_wgslsmith_div_f32(-1000f, 2538f), _wgslsmith_f_op_f32(step(-308f, _wgslsmith_f_op_f32(f32(-1f) * -1695f))))), all(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_2.a))), var_2.b);
    var_0 = var_2.a.x;
    return StorageBuffer(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

