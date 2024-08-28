struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, true, -26118i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1886f, 750f) * vec2<f32>(-798f, 1532f))))));
    global0 = Struct_1(false, !(_wgslsmith_div_u32(arg_0, abs(arg_0)) != _wgslsmith_div_u32(arg_0, arg_0 ^ 17417u)), i32(-1i) * -_wgslsmith_mod_i32(global0.c, ~(-1i)));
    global0 = Struct_1(!global0.b, !(-695f > var_0.x), global0.c);
    let var_1 = vec3<f32>(-429f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = Struct_1(!(!(firstTrailingBit(-15714i) > -u_input.a)), true, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(-1i), _wgslsmith_mult_i32(u_input.a, 23834i)), max(vec2<i32>(global0.c, u_input.a), abs(vec2<i32>(u_input.a, u_input.a)))), vec2<i32>(111i, 0i)));
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> u32 {
    global0 = Struct_1(all(select(vec4<bool>(!arg_0.a, arg_0.b, true, !arg_0.a), select(vec4<bool>(global0.b, global0.a, arg_0.a, false), !vec4<bool>(false, true, false, arg_0.a), select(false, arg_0.a, true)), arg_0.a)), true, firstTrailingBit(~(-reverseBits(12687i))));
    let var_0 = _wgslsmith_sub_vec2_u32(~select(vec2<u32>(_wgslsmith_add_u32(1u, arg_2), _wgslsmith_div_u32(arg_2, arg_2)), vec2<u32>(arg_2, arg_1 & arg_2), arg_0.b), vec2<u32>(arg_1, reverseBits(arg_2)));
    let var_1 = vec4<u32>(~0u, _wgslsmith_div_u32(1u, ~_wgslsmith_add_u32(arg_2, arg_1 ^ arg_2)), (_wgslsmith_mod_u32(arg_2, arg_1) << (1u % 32u)) ^ countOneBits(_wgslsmith_add_u32(~0u, arg_1)), 57619u);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -770f) * 1f), -607f)));
    let var_3 = arg_0;
    return ~countOneBits(18990u);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(global0.b, global0.b != true, global0.c);
    global0 = func_2(59165u);
    global0 = func_2(func_3(func_2(~28732u), ~20687u, ~(~abs(63117u))));
    var var_0 = Struct_2(~(reverseBits(_wgslsmith_mult_u32(60912u, 0u)) ^ _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 1u), vec2<u32>(45350u, 46527u)), vec2<u32>(31089u, 52047u) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)))));
    let var_1 = -443f;
    return Struct_1(false, !global0.b, 4579i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = _wgslsmith_mod_i32(-26393i, _wgslsmith_sub_i32(10682i, u_input.a)) == -abs(global0.c);
    let var_1 = 1275f;
    let var_2 = Struct_2(1u);
    let var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(ceil(-199f)));
    var_0 = _wgslsmith_f_op_f32(step(-927f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(floor(1000f))))) == _wgslsmith_f_op_f32(min(463f, var_1));
    global0 = Struct_1(!(!all(vec4<bool>(false, false, false, global0.a))), all(!select(vec2<bool>(false, false), vec2<bool>(global0.b, global0.a), select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.b, false), true))), abs(global0.c | global0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, 1351f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1569f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-500f)), var_4)));
}

