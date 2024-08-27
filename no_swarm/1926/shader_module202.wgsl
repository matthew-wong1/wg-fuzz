struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(-24896i, vec4<u32>(8648u, 0u, 53931u, 4621u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(-(vec2<i32>(580i, 1i) << (global1.b.zx % vec2<u32>(32u))), ~abs(vec2<i32>(global1.a, -51246i)) ^ vec2<i32>(-9313i, ~arg_0.a)), firstLeadingBit(2147483647i));
    global1 = arg_0;
    var var_1 = arg_0;
    global1 = Struct_1(-2147483647i, abs(firstTrailingBit(vec4<u32>(arg_0.b.x, arg_0.b.x, 27852u, 4294967295u))));
    let var_2 = arg_0;
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(-11883i, _wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(global1.a, global1.a)) & ~global1.a, min(_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, -7295i), select(2147483647i, global1.a, false)), -global1.a)), global1.a, _wgslsmith_div_i32(global1.a, i32(-1i) * -15363i));
    var_0 = ~(~_wgslsmith_mult_vec4_i32(reverseBits(select(vec4<i32>(-9327i, global1.a, var_0.x, global1.a), vec4<i32>(var_0.x, -2147483647i, global1.a, global1.a), vec4<bool>(false, false, false, false))), vec4<i32>(~global1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.x, global1.a, 2147483647i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), 10492i, 0i)));
    global0 = _wgslsmith_sub_i32(13140i, abs(~firstTrailingBit(global1.a)));
    let var_1 = 0i;
    var var_2 = true;
    return func_2(Struct_1(var_0.x, ~firstTrailingBit(global1.b)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = _wgslsmith_clamp_i32(arg_0.a >> (14473u % 32u), reverseBits(~(6790i >> (max(1u, global1.b.x) % 32u))), arg_0.a);
    global0 = global1.a;
    var var_0 = Struct_1(_wgslsmith_clamp_i32(~func_2(Struct_1(global1.a, global1.b)).a, global1.a, global1.a), vec4<u32>(~70391u, arg_0.b.x, ~func_1().b.x & _wgslsmith_clamp_u32(global1.b.x, 9067u, global1.b.x), global1.b.x));
    let var_1 = func_1();
    var_0 = Struct_1(~var_1.a, ~select(select(vec4<u32>(4294967295u, u_input.a, 21494u, 1u), vec4<u32>(1u, 52854u, var_1.b.x, global1.b.x), vec4<bool>(true, true, true, true)), reverseBits(~vec4<u32>(57235u, var_1.b.x, arg_0.b.x, var_0.b.x)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))));
    return ~(~global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(~global1.b, global1.b);
    global0 = func_3(func_1()) & 2147483647i;
    global1 = func_1();
    let var_1 = abs(firstLeadingBit(max(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global1.a, 39527i), vec3<i32>(global1.a, global1.a, global1.a)), vec3<i32>(-50826i, -7682i, -34197i))) ^ abs(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(2147483647i, 0i, global1.a)), vec3<i32>(global1.a, global1.a, global1.a))));
    let var_2 = func_3(Struct_1(var_1.x, func_1().b));
    let x = u_input.a;
    s_output = StorageBuffer(1146f, global1.b.xx, ~(-global1.a), _wgslsmith_f_op_f32(abs(1000f)), 114f);
}

