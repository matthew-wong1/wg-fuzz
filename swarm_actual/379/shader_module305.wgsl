struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -677f);
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 13878u), abs(~vec2<u32>(90230u, u_input.a))) << (_wgslsmith_add_u32(~u_input.a << (countOneBits(51722u) % 32u), 1u) % 32u), Struct_1(!(!(!vec4<bool>(global0.x, true, global0.x, global0.x)))));
    var var_2 = var_1.b.a.wx;
    let var_3 = Struct_2(~(~u_input.a << (~(4294967295u >> (u_input.a % 32u)) % 32u)), var_1.b);
    let var_4 = _wgslsmith_dot_vec4_i32(countOneBits(select(~vec4<i32>(-15163i, -2147483647i, 12458i, u_input.b), select(vec4<i32>(0i, -7789i, 19006i, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.b, -2147483647i, 0i), vec4<i32>(u_input.b, 24979i, -1349i, 17042i), vec4<i32>(29988i, u_input.b, u_input.b, u_input.b)), global0.x), vec4<bool>(7135u <= var_1.a, global1.x != global1.x, false, !global0.x))), vec4<i32>(u_input.b, -36467i, -firstLeadingBit(1i & u_input.b), min(reverseBits(_wgslsmith_sub_i32(-34039i, 5194i)), 1i)));
    return var_1.b.a.xz;
}

fn func_2() -> vec2<bool> {
    global0 = func_3();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1011f)) - -154f)), _wgslsmith_f_op_f32(-global1.x), 1516f);
    var var_0 = select(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(9511u, u_input.a) % vec2<u32>(32u))) >> (~(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, _wgslsmith_mod_i32(0i, u_input.b)), vec2<i32>(select(-2147483647i, u_input.b, true), -u_input.b))), vec2<i32>(-10881i, -2147483647i), !vec2<bool>(true, _wgslsmith_f_op_f32(-global1.x) >= 1343f));
    let var_1 = _wgslsmith_clamp_i32(abs(max(firstLeadingBit(firstTrailingBit(5823i)), var_0.x & _wgslsmith_add_i32(1i, var_0.x))), 2147483647i, 96444i);
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(_wgslsmith_div_i32(u_input.b, -6178i), _wgslsmith_dot_vec4_i32(vec4<i32>(-22051i, -62106i, u_input.b, u_input.b), vec4<i32>(1i, -1i, var_1, u_input.b)), -1i, countOneBits(u_input.b)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(var_0.x, var_1, 22001i, 40895i)), firstTrailingBit(vec4<i32>(-1i, 2147483647i, 1i, 2147483647i)))), firstTrailingBit(countOneBits(~vec4<i32>(u_input.b, 1i, u_input.b, var_1)))), countOneBits(-_wgslsmith_sub_i32(-u_input.b, -u_input.b)), -var_1, ~_wgslsmith_clamp_i32(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, -24416i, u_input.b), -vec4<i32>(var_1, var_1, u_input.b, -47357i)), var_1));
    return vec2<bool>(!(any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), global0.x)) & false), global0.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    global0 = func_2();
    var var_0 = reverseBits(abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -8647i, -27740i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -1i, -65095i), vec3<i32>(-1i, 18345i, u_input.b)), ~vec3<i32>(-1i, u_input.b, -8555i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(global1.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.yz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 1299f))))))));
    var var_2 = 2147483647i << (arg_0.x % 32u);
    let var_3 = select(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(var_0.x, -69913i, 0i, u_input.b)), select(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.x, u_input.b, var_0.x), vec4<i32>(-2147483647i, 0i, var_0.x, 1i)), abs(vec4<i32>(1i, var_0.x, 2147483647i, 1i)), vec4<bool>(false, true, global0.x, true)))), -(~var_0.xx), true);
    return Struct_1(vec4<bool>(true, true, all(vec2<bool>(true, true)), false));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(arg_0.b.a);
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(28794u, arg_0.a, 1u, u_input.a) | vec4<u32>(1u, arg_0.a, u_input.a, 0u)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, 31444u), vec4<u32>(4294967295u, u_input.a, 26299u, 4294967295u)), vec4<u32>(reverseBits(1u), u_input.a, 0u, ~0u))), ~vec4<u32>(arg_0.a, _wgslsmith_div_u32(countOneBits(1u), 1u), _wgslsmith_mult_u32(abs(4294967295u), _wgslsmith_sub_u32(u_input.a, arg_0.a)), ~max(arg_0.a, 0u)));
    let var_2 = global0.x;
    var var_3 = !arg_0.b.a.x;
    let var_4 = vec2<bool>(var_0.a.x, global1.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)) + global1.x));
    return Struct_1(var_0.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    global0 = arg_0.b.a.yx;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(~abs(u_input.a) | 1u, func_4(Struct_2(u_input.a & u_input.a, func_1(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec2<u32>(1u, 0u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), false)), _wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, 26134i, 1i), -vec3<i32>(-7893i, u_input.b, u_input.b)))), _wgslsmith_mult_vec2_i32(-vec2<i32>(~u_input.b, ~u_input.b), firstLeadingBit(vec2<i32>(~(-1i), min(1i, u_input.b)))));
    global0 = func_2();
    var_0 = Struct_2(reverseBits(~max(firstTrailingBit(var_0.a), 1u)), func_4(func_5(func_5(func_5(Struct_2(0u, Struct_1(vec4<bool>(var_0.b.a.x, var_0.b.a.x, false, var_0.b.a.x))), vec2<i32>(-2147483647i, u_input.b)), max(vec2<i32>(-4351i, 1334i), vec2<i32>(0i, u_input.b))), ~vec2<i32>(u_input.b, 5404i) << (vec2<u32>(u_input.a, 38514u) % vec2<u32>(32u))), abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(63564i, -57595i, u_input.b), vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(u_input.b, -2147483647i, -18074i)))));
    var var_1 = -617f;
    var var_2 = ~_wgslsmith_sub_vec2_u32(countOneBits(~countOneBits(vec2<u32>(u_input.a, u_input.a))), vec2<u32>(1u, 1u));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1690f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
    let var_4 = -1i;
    var_2 = ~vec2<u32>(var_2.x, ~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(reverseBits(u_input.a), var_2.x, var_0.a, 50985u), (vec4<u32>(0u, 0u, u_input.a, var_0.a) << (max(vec4<u32>(var_2.x, 0u, var_0.a, 1u), vec4<u32>(u_input.a, var_0.a, u_input.a, 22661u)) % vec4<u32>(32u))) ^ vec4<u32>(1u, ~4294967295u, _wgslsmith_mult_u32(0u, var_2.x), _wgslsmith_mod_u32(1u, u_input.a)), true));
}

