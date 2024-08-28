struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> bool {
    global1 = Struct_2(-726f, Struct_1(global1.b.b.x, !select(!vec3<bool>(global0.b.b.x, global0.b.b.x, true), select(vec3<bool>(true, global0.b.a, global1.b.a), global0.b.b, global0.b.a), global1.b.a & true)));
    return false;
}

fn func_2(arg_0: f32) -> u32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a)))) * -1099f), Struct_1(true, global1.b.b));
    var var_0 = ~u_input.e.x;
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -158f), Struct_1(!any(vec4<bool>(global1.b.b.x, false, global0.b.a, global1.b.b.x)), vec3<bool>(true, global1.b.a == true, global0.b.a))));
    let var_2 = Struct_3(var_1.a);
    var var_3 = var_1.a;
    return u_input.a.x;
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(global1.b.b.x, !vec3<bool>(any(!vec2<bool>(true, arg_0.x)), global1.b.b.x, !all(arg_0.zx)));
    let var_1 = Struct_3(Struct_2(-326f, global1.b));
    var var_2 = vec2<i32>(-7729i, 1i);
    var var_3 = vec4<u32>(~(_wgslsmith_add_u32(60087u, ~4294967295u) | ~firstTrailingBit(u_input.b.x)), 42190u, _wgslsmith_add_u32(((u_input.a.x << (4294967295u % 32u)) << (1u % 32u)) | 1u, abs(4294967295u)), abs(0u));
    var_2 = _wgslsmith_sub_vec2_i32(u_input.e.yw, vec2<i32>(var_2.x, (abs(2413i) >> (~u_input.b.x % 32u)) >> (~4294967295u % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(494f, Struct_1(false | global1.b.b.x, !vec3<bool>(any(vec3<bool>(false, global0.b.a, global1.b.b.x)), func_1(27319i, vec3<i32>(u_input.c, -5329i, u_input.e.x)), global0.b.a)));
    let var_0 = func_2(global1.a);
    let var_1 = abs(min(u_input.e.x & u_input.c, _wgslsmith_mod_i32(-55350i, u_input.d) & ~reverseBits(27649i)));
    let var_2 = -(~(~1i << (1u % 32u)));
    let var_3 = vec3<i32>(min(0i, var_2) << (u_input.b.x % 32u), 9391i, var_1);
    var var_4 = global1.b.b.x;
    global0 = Struct_2(_wgslsmith_f_op_f32(global0.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, global1.b.b.x, global1.b.a, global1.b.a))) + _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-516f))))), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-2286f)))), -1000f), vec3<u32>(u_input.a.x, _wgslsmith_div_u32(~u_input.b.x | ~var_0, var_0), var_0), ~abs(u_input.a.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.a)), _wgslsmith_f_op_f32(-global1.a)), global1.a, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true))), 2411f));
}

