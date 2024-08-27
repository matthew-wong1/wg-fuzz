struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(-706f, vec2<i32>(-39050i, 0i), -1i, vec4<bool>(true, true, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = vec2<bool>(false, !(!global1.d.x));
    var var_2 = ~(~vec2<u32>(_wgslsmith_clamp_u32(0u, 25784u, abs(u_input.c)), _wgslsmith_mult_u32(u_input.d, 36019u)));
    let var_3 = u_input.b.xzx;
    var var_4 = abs(~_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.x, -2147483647i, var_0.x, -1i)) & _wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 0i, -5311i, 0i), vec4<i32>(1i, 2147483647i, arg_0.x, -93739i)), vec4<i32>(11410i, -global1.c, -29288i, i32(-1i) * -2147483647i)));
    return -firstTrailingBit(var_0.xx) & global1.b;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(-611f, reverseBits(firstLeadingBit(global1.b)), global1.c, !vec4<bool>(all(global1.d.www), true, global1.a > _wgslsmith_f_op_f32(max(arg_0, arg_0)), global1.d.x));
    global1 = Struct_1(var_0.a, select(_wgslsmith_mult_vec2_i32(countOneBits(var_0.b), func_3(vec3<i32>(1i, 0i, global1.b.x), 0i)), _wgslsmith_clamp_vec2_i32(global1.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c, 0i), global1.b, vec2<i32>(-33675i, global1.c)), countOneBits(global1.b)), global0.x) ^ -firstLeadingBit(-vec2<i32>(u_input.a, u_input.a)), ~(-u_input.a), global1.d);
    let var_1 = u_input.b;
    let var_2 = Struct_1(1788f, vec2<i32>(-global1.c, func_3(vec3<i32>(~9679i, abs(24298i), 38719i), 38891i & global1.b.x).x), -16122i, !select(vec4<bool>(all(vec3<bool>(false, global1.d.x, false)), true, var_1.x >= var_1.x, true), vec4<bool>(false, true, true, -999f >= var_0.a), var_0.a < _wgslsmith_f_op_f32(874f * 133f)));
    var var_3 = Struct_1(arg_0, _wgslsmith_div_vec2_i32(global1.b, var_2.b), reverseBits(abs(-2147483647i)), !vec4<bool>(false, false, true, all(select(vec3<bool>(global1.d.x, false, true), vec3<bool>(global1.d.x, true, var_2.d.x), true))));
    return var_2;
}

fn func_1() -> vec3<u32> {
    global0 = select(global1.d.yx, !(!vec2<bool>(true, select(global1.d.x, global1.d.x, global1.d.x))), !(!any(!vec3<bool>(false, global0.x, global0.x))));
    global1 = Struct_1(-1000f, vec2<i32>(_wgslsmith_mod_i32(1i, ~1i), reverseBits(u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, ~(~1i), -33204i, _wgslsmith_add_i32(global1.c, _wgslsmith_add_i32(u_input.a, u_input.a))), (~vec4<i32>(0i, 23040i, u_input.a, 20091i) | _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, 17023i, 0i, global1.b.x), vec4<i32>(u_input.a, -41898i, u_input.a, global1.c))) & (firstLeadingBit(vec4<i32>(-50481i, 1249i, 0i, 2147483647i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(global1.c, global1.c, -1i, u_input.a), vec4<i32>(2147483647i, u_input.a, -2147483647i, global1.b.x)))), select(vec4<bool>(!global1.d.x, false, global1.d.x, any(global1.d.xw)), select(select(global1.d, !vec4<bool>(false, false, global0.x, true), global1.d), global1.d, vec4<bool>(any(vec4<bool>(false, global1.d.x, false, true)), false, false, true)), global0.x));
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - -834f));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(var_0.c, select(56681i, min(firstTrailingBit(12784i), firstTrailingBit(u_input.a)), _wgslsmith_f_op_f32(sign(-623f)) > -314f), abs(max(-var_0.b.x, 2147483647i))), vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, -1i, -45788i)) & vec3<i32>(12354i, -1i, global1.c), vec3<i32>(global1.b.x, _wgslsmith_div_i32(0i, -2147483647i), u_input.a)), reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.c, global1.b.x, global1.c), vec4<i32>(global1.b.x, u_input.a, u_input.a, var_0.c)), ~vec4<i32>(25817i, -2147483647i, u_input.a, 12146i))), u_input.a));
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - 424f))), vec2<i32>(1i, var_1.x) << (~(~u_input.b.zx) % vec2<u32>(32u)), 2147483647i, func_2(819f).d);
    return reverseBits(vec3<u32>(_wgslsmith_mod_u32(~u_input.d, select(_wgslsmith_add_u32(48391u, u_input.c), u_input.c, all(vec2<bool>(global0.x, true)))), abs(0u), 4294967295u));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    global0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * _wgslsmith_div_f32(global1.a, -175f)) * -214f), global1.a)).d.wz;
    var var_0 = 667f;
    let var_1 = max(firstTrailingBit(~(u_input.a ^ global1.c)), -(~(~(u_input.a >> (0u % 32u)))));
    return func_2(_wgslsmith_f_op_f32(-1f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + global1.a))))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a >> (51646u % 32u), 2147483647i), select(firstLeadingBit(global1.b), vec2<i32>(18976i, 0i) << (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)), any(vec3<bool>(false, global0.x, global1.d.x)))) >> (~(~vec2<u32>(u_input.d, 7539u)) % vec2<u32>(32u)), firstTrailingBit(global1.c), global1.d);
    var var_0 = global1.d.ywy;
    global1 = func_4(27026u, false, _wgslsmith_clamp_vec3_u32(u_input.b.wyw, _wgslsmith_div_vec3_u32(~u_input.b.wzz, func_1()), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.b.yzz) & u_input.b.wyz));
    var var_1 = vec4<u32>(u_input.d, 0u, u_input.b.x, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a);
}

