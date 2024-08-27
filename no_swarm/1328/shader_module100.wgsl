struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(314f, -902f, 1000f, -1000f, -1597f, 286f, -163f, 713f, -762f, 616f, -1829f, -112f, 414f, 1000f, 600f, -1443f, -712f, 1358f, -442f);

var<private> global1: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<bool>) -> vec2<u32> {
    let var_0 = min(max(reverseBits(~abs(u_input.a)), abs(arg_1.www)), u_input.a);
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(1i, 2147483647i, 0i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -44898i, -62598i, 1i) << (vec4<u32>(790u, 26396u, arg_0.c.x, arg_2.c.x) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 28083i, 1i, 2147483647i), vec4<i32>(-1i, 35565i, 0i, 10136i)))), ~(i32(-1i) * -1i), _wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(28151i, -8234i, 1i) & _wgslsmith_dot_vec2_i32(vec2<i32>(-3959i, -41152i), vec2<i32>(-1i, 12380i))), -1i) & vec4<i32>(i32(-1i) * -51857i, -1i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(32553i, 1i, 18635i, -1i), ~vec4<i32>(44026i, 0i, -28044i, -21973i))), _wgslsmith_div_i32(0i, ~_wgslsmith_clamp_i32(1i, 22869i, 0i)));
    global1 = arg_2;
    global1 = Struct_2(global1.b.a.x, global1.b, _wgslsmith_div_vec2_u32(min(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, u_input.a.x), vec2<u32>(7227u, 1u)), firstTrailingBit(min(vec2<u32>(17582u, 29995u), u_input.a.xx))), reverseBits(arg_1.xz)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.d))));
    global0 = array<f32, 19>();
    return vec2<u32>(~max(u_input.a.x, ~(~55098u)), _wgslsmith_div_u32(arg_0.c.x >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.c.x, arg_0.c.x), ~global1.c) % 32u), 1u));
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 19>();
    var var_0 = global1.b.a.x;
    var var_1 = Struct_1(!global1.b.a);
    var var_2 = Struct_2(all(global1.b.a.xz) || global1.b.a.x, Struct_1(vec3<bool>(any(vec4<bool>(var_1.a.x, var_1.a.x, global1.a, global1.a)), var_1.a.x, global1.a & true)), ~max(func_3(Struct_2(global1.b.a.x, global1.b, u_input.a.zx, global1.d), vec4<u32>(global1.c.x, global1.c.x, global1.c.x, 37030u), Struct_2(global1.a, Struct_1(var_1.a), vec2<u32>(21719u, global1.c.x), vec2<f32>(global1.d.x, global0[_wgslsmith_index_u32(global1.c.x, 19u)])), select(vec4<bool>(false, var_1.a.x, false, var_1.a.x), vec4<bool>(true, false, global1.a, var_1.a.x), global1.b.a.x)), u_input.a.zx), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(global1.d.x - global1.d.x))))));
    var var_3 = _wgslsmith_mult_u32(~0u, var_2.c.x);
    return Struct_2(true, Struct_1(select(!var_2.b.a, vec3<bool>(var_2.b.a.x, var_2.c.x < var_2.c.x, false), var_2.b.a)), ~((vec2<u32>(u_input.a.x, 3820u) | vec2<u32>(global1.c.x, global1.c.x)) ^ _wgslsmith_mod_vec2_u32(var_2.c, global1.c)) << (min(var_2.c, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(198u, u_input.a.x), vec2<u32>(24197u, 4294967295u)), countOneBits(vec2<u32>(4294967295u, 17309u)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(var_2.d, _wgslsmith_f_op_vec2_f32(var_2.d + vec2<f32>(225f, 241f))))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.d.x, 1594f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1026f))))), global1.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 19u)])))))));
    global0 = array<f32, 19>();
    var var_1 = func_2().b;
    var var_2 = _wgslsmith_dot_vec2_u32(~(~arg_1.c) | ((arg_1.c & u_input.a.xz) & ~arg_1.c), firstTrailingBit(countOneBits(~u_input.a.xz))) << (~(~(~5168u)) % 32u);
    var_2 = ~(~_wgslsmith_div_u32(_wgslsmith_mult_u32(6687u, u_input.a.x), ~u_input.a.x));
    return arg_1.b;
}

fn func_1() -> vec4<bool> {
    global1 = Struct_2(true, func_4(~(~abs(-5371i)), func_2()), vec2<u32>(0u | _wgslsmith_div_u32(firstLeadingBit(global1.c.x), global1.c.x), 0u >> (min(1u, select(u_input.a.x, 15854u, false)) % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 19u)])), func_2().d.x)));
    global1 = func_2();
    return !(!vec4<bool>(global1.a, all(vec3<bool>(global1.b.a.x, global1.b.a.x, global1.b.a.x)), global1.b.a.x, global1.b.a.x));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-899f, _wgslsmith_f_op_f32(abs(-2301f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1167f))), global1.d.x))));
    let var_1 = func_2();
    let var_2 = -1i;
    var var_3 = -375f;
    let var_4 = vec2<i32>(-1i << (~(~var_1.c.x) % 32u), var_2);
    return func_4(min(-1854i >> (~(~0u) % 32u), arg_0), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -1i, 11601i, -28257i) << ((vec4<u32>(1u, 11918u, 17653u, global1.c.x) & vec4<u32>(4294967295u, 19491u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), max(1i, -28101i | _wgslsmith_dot_vec3_i32(vec3<i32>(61193i, 1i, -58764i), vec3<i32>(-19729i, 1i, 26415i)))), all(vec2<bool>(any(vec4<bool>(true, global1.a, global1.a, global1.b.a.x)), true)) | all(select(select(vec4<bool>(false, global1.b.a.x, global1.a, global1.b.a.x), vec4<bool>(global1.a, global1.b.a.x, global1.a, global1.a), vec4<bool>(false, true, false, global1.b.a.x)), vec4<bool>(global1.a, false, global1.a, true), func_1())), abs(vec3<u32>(34191u, _wgslsmith_clamp_u32(min(u_input.a.x, u_input.a.x), 1u, _wgslsmith_mult_u32(1u, global1.c.x)), u_input.a.x)));
    global1 = Struct_2(!any(func_1().zyz) | !(!var_0.a.x), global1.b, ~u_input.a.xy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.d + vec2<f32>(global1.d.x, global0[_wgslsmith_index_u32(global1.c.x, 19u)])) * vec2<f32>(-777f, 1917f)))))));
    let var_1 = _wgslsmith_div_vec4_i32(-(firstLeadingBit(max(vec4<i32>(-35623i, 1i, 12556i, 29808i), vec4<i32>(1i, 35036i, 4677i, 1i))) >> (abs(select(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(global1.c.x, global1.c.x, global1.c.x, 1u), global1.b.a.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(1i, 1i, 1i, 1i)));
    var_0 = Struct_1(func_5(var_1.x >> (abs(~global1.c.x) % 32u), global1.a, max(countOneBits(firstTrailingBit(u_input.a)), ~(u_input.a << (u_input.a % vec3<u32>(32u))))).a);
    var_0 = global1.b;
    var var_2 = func_2().b;
    global0 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(35206u, 858f, countOneBits(vec3<i32>(max(var_1.x, 73300i) & ~var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.x) >> (global1.c % vec2<u32>(32u)), var_1.wx | var_1.yy), var_1.x)), reverseBits(select(countOneBits(4294967295u), 50606u, false)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.d.x, 252f), _wgslsmith_f_op_f32(sign(253f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.c.x, 19u)]), _wgslsmith_f_op_f32(-global1.d.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d.x, global0[_wgslsmith_index_u32(1u, 19u)], 483f, global1.d.x), vec4<f32>(global1.d.x, global0[_wgslsmith_index_u32(43586u, 19u)], global1.d.x, -1000f), var_0.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, global1.d.x, global0[_wgslsmith_index_u32(60492u, 19u)], -1688f)))))));
}

