struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(9245u, 13096u, 1453u), vec2<i32>(0i, 43243i), -1043f, 2147483647i, -2982f), Struct_1(vec3<u32>(52049u, 4294967295u, 1u), vec2<i32>(2147483647i, 15605i), 2017f, 0i, -1037f), Struct_1(vec3<u32>(48298u, 1u, 50364u), vec2<i32>(-1i, 18105i), -2624f, -59272i, 1176f), Struct_1(vec3<u32>(27895u, 4294967295u, 4294967295u), vec2<i32>(-26405i, 24161i), 176f, 50258i, 1642f), Struct_1(vec3<u32>(96233u, 39904u, 4294967295u), vec2<i32>(25760i, 2147483647i), 494f, -1i, -482f), Struct_1(vec3<u32>(70637u, 0u, 0u), vec2<i32>(14766i, -18446i), 1004f, 0i, -436f), Struct_1(vec3<u32>(16917u, 4294967295u, 1u), vec2<i32>(1i, 59235i), -1279f, -1i, 293f), Struct_1(vec3<u32>(31335u, 13432u, 10061u), vec2<i32>(1i, -18868i), 1025f, 0i, -219f), Struct_1(vec3<u32>(6282u, 4294967295u, 80837u), vec2<i32>(12787i, 2147483647i), 860f, i32(-2147483648), -374f), Struct_1(vec3<u32>(18075u, 36377u, 8724u), vec2<i32>(i32(-2147483648), 8316i), 1551f, 12237i, -1100f), Struct_1(vec3<u32>(28688u, 7500u, 67681u), vec2<i32>(-76725i, -20798i), 1623f, -13459i, -1607f), Struct_1(vec3<u32>(22465u, 1u, 1u), vec2<i32>(54152i, 24196i), -694f, 1i, -1826f));

var<private> global1: array<vec2<u32>, 4>;

var<private> global2: array<bool, 28>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(arg_0.a.yy, arg_0.a.zx), 79535u), min(abs(1u), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(1u, 4u)], vec2<u32>(arg_0.a.x, arg_0.a.x))), 0u, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.a.x, 0u), _wgslsmith_dot_vec3_u32(arg_0.a & vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a))));
    let var_1 = vec3<i32>(min(firstLeadingBit(_wgslsmith_add_i32(-1i, 2147483647i >> (arg_0.a.x % 32u))), ~(-3883i) >> (_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~33642u, 4u)], ~var_0.ww) % 32u)), 0i, ~reverseBits(u_input.a));
    var var_2 = -148f;
    var var_3 = select(!select(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], true)), !select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_0.x, 28u)]), vec3<bool>(global2[_wgslsmith_index_u32(39632u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], false), false), true), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~var_0.yzz, var_0.xwz), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, var_0.x, var_0.x), vec3<u32>(7940u, 0u, arg_0.a.x)) >> (vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u))), 28u)], any(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], global2[_wgslsmith_index_u32(12717u, 28u)], global2[_wgslsmith_index_u32(7666u, 28u)], true), select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(var_0.x, 28u)]), vec4<bool>(false, true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], false, false, false)), select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], false, global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)]), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(arg_0.a.x, 28u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], false, global2[_wgslsmith_index_u32(14928u, 28u)])))), arg_0.d >= arg_0.b.x), ((true && all(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], global2[_wgslsmith_index_u32(arg_0.a.x, 28u)]))) == false) && (global2[_wgslsmith_index_u32(77498u, 28u)] == false));
    global2 = array<bool, 28>();
    return -11602i;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = func_3(arg_2);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f) * _wgslsmith_f_op_f32(arg_0 + 864f)), arg_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_2.e)), _wgslsmith_f_op_f32(exp2(arg_0)), -435f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0), 1157f))));
    var var_2 = Struct_1(vec3<u32>(arg_2.a.x, ~48211u >> (1u % 32u), abs(18357u)), arg_2.b, arg_0, -((abs(-56434i) << (arg_2.a.x % 32u)) & -u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_2.e))))));
    var var_3 = -(vec3<i32>(var_2.b.x, ~u_input.a, arg_2.d) & -(-vec3<i32>(11386i, 1i, -53801i) | _wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_2.b.x, u_input.a), vec3<i32>(0i, -2221i, u_input.b))));
    let var_4 = arg_1.yx;
    return vec2<bool>(true, arg_1.x);
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = 134f;
    var var_1 = select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 28u)], all(select(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 28u)], true), func_2(var_0, vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], true), global0[_wgslsmith_index_u32(24122u, 12u)]), vec2<bool>(true, false)))), vec2<bool>(true, select(any(vec4<bool>(true, true, true, true)), global2[_wgslsmith_index_u32(12968u, 28u)], false)), global2[_wgslsmith_index_u32(~(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, arg_0.a.x), _wgslsmith_mod_u32(6882u, arg_0.a.x)) & (_wgslsmith_dot_vec2_u32(arg_0.a.xy, arg_0.a.zx) | _wgslsmith_mult_u32(arg_0.a.x, arg_0.a.x))), 28u)]);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.a.x, arg_0.a.x, 1u, 0u) << (~vec4<u32>(40514u, arg_0.a.x, arg_0.a.x, arg_0.a.x) % vec4<u32>(32u)), vec4<u32>(~0u, arg_0.a.x, ~0u, _wgslsmith_mult_u32(8076u, 19055u))), abs(firstTrailingBit(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 1u, 1u, arg_0.a.x)), vec4<u32>(109452u, 4232u, arg_0.a.x, arg_0.a.x) ^ vec4<u32>(35614u, 29334u, 14539u, 48466u))))), 12u)];
    global0 = array<Struct_1, 12>();
    let var_3 = Struct_1(arg_0.a, _wgslsmith_add_vec2_i32(~firstTrailingBit(-arg_0.b), vec2<i32>(arg_0.b.x, u_input.b)), var_2.c, -196i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * var_0) - -302f)));
    return vec3<u32>(_wgslsmith_clamp_u32(48445u, ~(~var_3.a.x), 69303u), 106732u, _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_3.a.x), arg_0.a.zz), 11220u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~abs(func_1(Struct_1(vec3<u32>(1276u, 1u, 62580u), vec2<i32>(u_input.b, -1i), -1012f, u_input.a, 788f)) & vec3<u32>(1u, 1u, 1u)), ~vec2<i32>(u_input.b, ~u_input.b << (~8798u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-870f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(873f + 945f), _wgslsmith_f_op_f32(round(-305f)))) + _wgslsmith_f_op_f32(f32(-1f) * -704f)), -300i, _wgslsmith_f_op_f32(1f + -271f));
    var var_1 = Struct_1(var_0.a, reverseBits(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(var_0.b, var_0.b)), 2053f, var_0.d, _wgslsmith_f_op_f32(abs(1501f)));
    var_1 = Struct_1(countOneBits(vec3<u32>(~62261u, ~var_1.a.x, 4294967295u)), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.d, var_1.d, 45461i, var_0.b.x), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, var_1.d, var_1.d, var_1.b.x), vec4<i32>(0i, var_0.d, -1i, 19864i)))), var_1.d | _wgslsmith_add_i32(var_1.d, ~u_input.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -722f))))))), var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c, var_1.e)) * var_1.e) - _wgslsmith_div_f32(-1694f, -416f)));
    let var_2 = !func_2(var_1.c, vec3<bool>(any(!vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.a.x, 28u)], true)), false, min(1u, var_0.a.x) > 67227u), global0[_wgslsmith_index_u32(reverseBits(var_0.a.x), 12u)]).x;
    let var_3 = 19151u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(-vec3<i32>(var_0.d, var_0.b.x, 0i)), min(abs(vec3<i32>(var_0.d, u_input.a, 1i)), ~vec3<i32>(2147483647i, 0i, u_input.b)), -min(vec3<i32>(var_0.d, 0i, u_input.b), vec3<i32>(3214i, -46026i, -1i))), abs(-(~vec3<i32>(0i, 23587i, u_input.a)))), abs(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 2147483647i, var_1.b.x), vec3<i32>(u_input.a, u_input.b, -39702i), vec3<i32>(var_1.b.x, -1i, -55897i)) >> (max(vec3<u32>(4856u, 3581u, 68512u), var_1.a) % vec3<u32>(32u)), -vec3<i32>(23054i, 0i, var_1.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-2026f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f * 863f)))))), ~_wgslsmith_sub_vec2_i32(firstTrailingBit(var_0.b), var_0.b));
}

