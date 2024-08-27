struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(false, vec4<u32>(4294967295u, 1u, 0u, 47497u), -41160i), Struct_1(true, vec4<u32>(0u, 0u, 1u, 4294967295u), 1i), Struct_1(true, vec4<u32>(1u, 4294967295u, 10838u, 18750u), 10457i), Struct_1(false, vec4<u32>(8453u, 1u, 15957u, 4294967295u), -26057i), Struct_1(true, vec4<u32>(0u, 4294967295u, 4294967295u, 0u), 2147483647i), Struct_1(true, vec4<u32>(0u, 36u, 21193u, 19318u), 19210i), Struct_1(false, vec4<u32>(12778u, 38323u, 4294967295u, 79870u), i32(-2147483648)), Struct_1(false, vec4<u32>(30305u, 45889u, 22715u, 1u), -21236i), Struct_1(true, vec4<u32>(31348u, 22972u, 1u, 30744u), 10723i), Struct_1(true, vec4<u32>(14833u, 0u, 4294967295u, 12323u), -13800i), Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 0u, 0u), 26543i), Struct_1(true, vec4<u32>(12224u, 14767u, 41883u, 37593u), 37200i), Struct_1(true, vec4<u32>(0u, 23720u, 15967u, 1u), 27818i), Struct_1(true, vec4<u32>(0u, 4294967295u, 30177u, 44748u), i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<u32> {
    let var_0 = Struct_1(arg_1 & any(select(select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1)), vec4<bool>(false, arg_1, arg_1, arg_1), true)), abs(~abs(countOneBits(vec4<u32>(arg_0, u_input.a, 57738u, 1u)))), -(-(-81750i << (arg_0 % 32u)) << (min(~arg_0, ~arg_0) % 32u)));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    var var_1 = var_0;
    let var_2 = var_0;
    return var_1.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global0 = array<Struct_1, 14>();
    let var_0 = u_input.a;
    global0 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(307f))), 586f), _wgslsmith_f_op_f32(-2404f - 1127f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-383f + _wgslsmith_f_op_f32(trunc(677f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f), -1000f))), vec4<f32>(-466f, 3087f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1998f, 609f), -1909f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1210f)))))), 493f)));
    var var_2 = _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(arg_1.b.yww, arg_1.b.xxx) | select(abs(vec3<u32>(20764u, 1u, 56678u)), abs(~vec3<u32>(0u, 15288u, u_input.a)), !select(vec3<bool>(true, false, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, true), true)), _wgslsmith_clamp_vec3_u32(arg_0.b.wzx, ~vec3<u32>(0u, 3174u, _wgslsmith_sub_u32(4294967295u, 3134u)), firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.b.yzw, arg_1.b.wwx), ~vec3<u32>(u_input.a, 21345u, u_input.a)))));
    return arg_0.b.xxw ^ abs(firstLeadingBit(max(vec3<u32>(0u, var_2.x, var_2.x), vec3<u32>(var_0, var_0, arg_0.b.x) ^ arg_0.b.xwy)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_2;
    var var_1 = var_0.c;
    let var_2 = arg_2;
    var_1 = abs(_wgslsmith_sub_i32(-65720i, 35623i ^ arg_1.c));
    let var_3 = -12968i;
    return ~func_3(arg_2, Struct_1(false, var_0.b, _wgslsmith_mod_i32(37152i, ~(-16543i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-477f, -2017f, 1808f, 290f))), global0[_wgslsmith_index_u32(0u, 14u)], Struct_1(true, func_1(36767u, true), 1i)), abs(vec3<u32>(33621u, u_input.a, u_input.a))), ~select(~(~vec3<u32>(23582u, 29589u, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 49503u), vec3<u32>(0u, u_input.a, u_input.a))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    let var_1 = global0[_wgslsmith_index_u32(var_0.x >> (select(~_wgslsmith_dot_vec2_u32(vec2<u32>(26972u, 0u), var_0.yy), 0u, !(true != all(vec4<bool>(false, false, true, false)))) % 32u), 14u)];
    var var_2 = _wgslsmith_f_op_f32(-423f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -792f))));
    var var_3 = max(_wgslsmith_mult_i32(-var_1.c, var_1.c ^ _wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, var_1.c), var_1.c)), -55686i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(firstTrailingBit(var_1.c), min(var_1.c, var_1.c)) & vec2<i32>(1i, _wgslsmith_sub_i32(-1i, var_1.c))), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-693f, _wgslsmith_f_op_f32(abs(595f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-678f, -166f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-629f, 380f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1857f), _wgslsmith_f_op_f32(f32(-1f) * -945f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-592f, -552f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1373f) * vec2<f32>(-1000f, 1430f))))), i32(-1i) * -41558i);
}

