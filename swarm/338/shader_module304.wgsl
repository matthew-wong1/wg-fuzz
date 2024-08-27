struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> Struct_1 {
    return Struct_1(global0.a);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = arg_3;
    global0 = arg_2;
    global0 = func_1();
    global0 = func_1();
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a.x, ~(~95646u)), ~vec2<u32>(~u_input.b.x, 6420u)));
    return 28943u;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 621f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(128f, arg_0, false))))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1294f - _wgslsmith_f_op_f32(-arg_0)), 2091f))));
    var var_1 = Struct_1(max(vec2<u32>(0u, abs(1u) ^ func_3(global0.a.x, true, Struct_1(global0.a), Struct_1(vec2<u32>(15698u, u_input.b.x)))), func_1().a));
    let var_2 = vec3<u32>(~(~_wgslsmith_div_u32(1u, u_input.b.x) | 28004u), u_input.b.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.a.x, 4294967295u), ~firstTrailingBit(global0.a.x)));
    var_1 = Struct_1(~(u_input.b.yz | _wgslsmith_clamp_vec2_u32(vec2<u32>(3873u, u_input.b.x), vec2<u32>(u_input.b.x, var_1.a.x) >> (vec2<u32>(83240u, var_2.x) % vec2<u32>(32u)), vec2<u32>(u_input.b.x, global0.a.x))));
    let var_3 = func_1();
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(534f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-885f, 1041f))))));
    global0 = Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xx, ~vec2<u32>(u_input.b.x, var_0.a.x)), ~reverseBits(vec2<u32>(1u, u_input.b.x))), func_2(-1094f).a));
    let var_1 = true;
    let var_2 = true && any(vec4<bool>(select(!var_1, any(vec3<bool>(var_1, var_1, var_1)), !var_1), !var_1, true, !var_1));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(730f + _wgslsmith_f_op_f32(1000f + 151f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-207f + 402f))), _wgslsmith_div_f32(-1959f, _wgslsmith_f_op_f32(select(1000f, -1620f, var_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 688f))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.a.x, firstTrailingBit(min(4294967295u, 32072u)), ~(~18642u)), 1u), u_input.a.zx);
}

