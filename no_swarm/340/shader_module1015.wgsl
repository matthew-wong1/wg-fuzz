struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-189f, 617f, -1336f);

var<private> global1: i32 = 15245i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> i32 {
    var var_0 = vec3<i32>(reverseBits(~(-53078i)), 2147483647i, _wgslsmith_mult_i32(abs(firstTrailingBit(-37008i)), (i32(-1i) * -arg_0.x) << (13027u % 32u)));
    let var_1 = abs(~(~reverseBits(~vec4<u32>(23189u, arg_1, 4294967295u, 5811u))));
    let var_2 = arg_0;
    global0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x, global0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1084f, -980f, global0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(601f, global0.x, 220f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 845f, 542f), vec3<f32>(global0.x, global0.x, global0.x)))))))));
    return var_2.x ^ (-249i >> (var_1.x % 32u));
}

fn func_3() -> bool {
    let var_0 = select(select(!vec2<bool>(select(false, true, false), true), vec2<bool>(false, true), all(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec3<bool>(false, true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-997f, -746f, global0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2348f, global0.x, global0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2123f, global0.x, global0.x) * vec3<f32>(global0.x, 1366f, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, global0.x))), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -279f, global0.x))));
    let var_1 = vec2<u32>(51834u, 0u);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1742f, _wgslsmith_f_op_f32(239f + 476f))))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -793f))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-840f, -556f, 1021f) + vec3<f32>(882f, global0.x, global0.x))))))));
    return !(any(var_0) || !(_wgslsmith_sub_i32(1i, 2147483647i) <= countOneBits(u_input.a)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec4<f32>) -> bool {
    let var_0 = Struct_4(vec4<u32>(_wgslsmith_div_u32(arg_2.a, arg_2.a | 13519u), _wgslsmith_add_u32(_wgslsmith_add_u32(~36198u, 20099u), ~_wgslsmith_sub_u32(arg_1.x, arg_1.x)), arg_2.a, reverseBits(1075u) & ~(arg_1.x >> (arg_1.x % 32u))), vec4<i32>(0i >> (arg_2.a % 32u), abs(u_input.a) ^ _wgslsmith_add_i32(u_input.a >> (38274u % 32u), 55858i), u_input.b, u_input.a));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_3.x), select(select(vec4<bool>(func_3(), arg_0, all(vec2<bool>(arg_0, true)), arg_0), !select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), !select(vec4<bool>(false, false, arg_0, false), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(true, arg_0, true, false))), !vec4<bool>(true, true, true, arg_0), true));
    var var_2 = func_3();
    var var_3 = u_input.a;
    let var_4 = arg_3;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(~reverseBits(i32(-1i) * -49696i), ~(~(-27881i) << (1u % 32u))), func_1(vec2<i32>(1i, -1i), select(reverseBits(_wgslsmith_mod_u32(74484u, 1u)), abs(1u), false), firstLeadingBit(i32(-1i) * -u_input.a)), 28637i);
    var var_1 = Struct_2(global0.x, select(vec4<bool>(false, false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), false & func_2(false, vec4<u32>(23332u, 1u, 0u, 1u), Struct_3(1u), vec4<f32>(global0.x, 527f, 935f, global0.x))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), -357f == global0.x), vec4<bool>(true, true, true, true), true), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a, global0.x, 759f)))))), -843f);
}

