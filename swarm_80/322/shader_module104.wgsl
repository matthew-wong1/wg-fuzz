struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(!all(vec2<bool>(true, false)), true, false);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<f32>) -> bool {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_div_f32(-1198f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -789f))));
    let var_2 = Struct_1(-_wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -1i, -18783i), arg_1.a));
    var var_3 = vec2<i32>(~(~_wgslsmith_clamp_i32(~13037i, var_0.a, min(-1i, var_0.a))), var_0.a);
    let var_4 = any(vec3<bool>(true, any(vec4<bool>(any(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, false)), true, true)), true));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(false, true);
    let var_1 = ~(~vec4<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(arg_3.a, 1i)), arg_2.a, firstTrailingBit(_wgslsmith_clamp_i32(2147483647i, 0i, arg_0.a)), 44483i));
    let var_2 = select(vec3<bool>(false || (-2147483647i != u_input.d.x), false, var_0.x), select(select(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, true), false), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, false), var_0.x), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), true)), !var_0.x), !func_2(), vec3<bool>(var_0.x, !func_3(vec3<u32>(arg_1, 50562u, arg_1), Struct_1(arg_3.a), 43914i, vec3<f32>(473f, -773f, 683f)), ~arg_1 < _wgslsmith_sub_u32(37151u, arg_1))), select(vec3<bool>(any(vec2<bool>(false, true)), -arg_0.a <= _wgslsmith_add_i32(var_1.x, arg_3.a), ~arg_1 <= 1u), !select(!vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, true, false), var_0.x), vec3<bool>(arg_2.a > -var_1.x, true | !var_0.x, true)));
    let var_3 = reverseBits(2147483647i);
    var var_4 = arg_2;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(~2147483647i));
    var var_1 = Struct_1(u_input.b << (_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(23679u, 32922u), vec2<u32>(0u, 27217u))), vec2<u32>(_wgslsmith_mult_u32(31263u, 0u), ~10566u)) % 32u));
    var_1 = func_1(var_0, 4294967295u, Struct_1(0i), var_0);
    var_1 = Struct_1(-countOneBits(var_0.a));
    var var_2 = _wgslsmith_sub_u32(1u, 0u) >> (_wgslsmith_div_u32(1u, 51864u) % 32u);
    let var_3 = Struct_1(-_wgslsmith_mult_i32(-58683i, var_0.a));
    var var_4 = abs(u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1132f, _wgslsmith_f_op_f32(f32(-1f) * -105f), 529f))), abs(firstTrailingBit(vec3<u32>(1u, 1u, 1u))), firstTrailingBit(max(firstTrailingBit(vec2<u32>(47590u, 53283u)), min(vec2<u32>(4294967295u, 38531u), vec2<u32>(0u, 8363u)))) | vec2<u32>(~_wgslsmith_div_u32(44943u, 8518u), 4294967295u), vec2<i32>(~(~1i), var_3.a));
}

