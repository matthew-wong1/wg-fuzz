struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
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

var<private> global0: f32;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    return !(!(!any(vec4<bool>(false, true, false, true)) | true));
}

fn func_2(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = func_3() && all(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1452f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-291f * 1000f))), _wgslsmith_f_op_f32(-global1.a.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1189f)) * -1600f), var_1.x)));
    var var_2 = _wgslsmith_add_i32(arg_0.x, ~arg_0.x);
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(var_1.xz * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.a)))))));
    return vec3<bool>(!(true || all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), false, !all(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(418f * -637f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.a.x)), _wgslsmith_f_op_f32(abs(1094f))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(752f - global1.a.x))));
    global0 = -196f;
    var var_1 = select(vec3<bool>(true, arg_0.x, arg_0.x), select(arg_0, select(func_2(vec4<i32>(1i, 1i, 1i, 1i)), vec3<bool>(true, func_3(), all(arg_0.yz)), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 28769i, 1i, 2147483647i), vec4<i32>(-2147483647i, 2147483647i, 1i, -56780i)))), arg_0.x), func_2((_wgslsmith_clamp_vec4_i32(vec4<i32>(-48277i, -8430i, 22056i, -2147483647i), vec4<i32>(-47502i, 69631i, -37430i, -2147483647i), vec4<i32>(-157i, -3271i, -22619i, -66970i)) >> (select(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 12450u, 1u), arg_0.x) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_mult_i32(-16001i, 1i), _wgslsmith_add_i32(20806i, -48726i), ~2147483647i, reverseBits(13915i))));
    return ~reverseBits(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(func_1(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), -33144i, func_1(vec3<bool>(false, false, true)) >> ((u_input.b.x >> (u_input.b.x % 32u)) % 32u));
    var var_1 = true;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global1.a.x) - vec2<f32>(1123f, global1.a.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a + vec2<f32>(-398f, global1.a.x))))));
    var var_3 = Struct_1(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true), true), false), select(vec2<bool>(!func_2(vec4<i32>(-2147483647i, -31283i, -44383i, var_0.x)).x, _wgslsmith_f_op_f32(f32(-1f) * -613f) != _wgslsmith_f_op_f32(min(var_2.a.x, 198f))), vec2<bool>(func_3(), false), !vec2<bool>(82797u > u_input.a, any(vec3<bool>(true, true, true)))));
    var_3 = Struct_1(select(var_3.b, vec3<bool>(true, !var_3.b.x, select(u_input.a < 4294967295u, func_3(), var_3.b.x)), func_2(-_wgslsmith_div_vec4_i32(vec4<i32>(1i, -57044i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 0i, 2147483647i)))), select(var_3.a, func_2(vec4<i32>(var_0.x, var_0.x, -var_0.x, -36204i)), var_3.b), vec2<bool>(func_3(), true));
    var var_4 = u_input.a;
    let var_5 = !var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(5530i);
}

