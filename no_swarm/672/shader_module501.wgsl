struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
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

var<private> global0: array<f32, 32>;

var<private> global1: array<bool, 7> = array<bool, 7>(true, false, true, false, true, false, false);

var<private> global2: Struct_1;

var<private> global3: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global2 = arg_0;
    let var_0 = select(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(select(14834u, 0u, global1[_wgslsmith_index_u32(1u, 7u)]), 7u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 57790u, 68483u), 7u)]), true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)])), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false)), select(vec2<bool>(global1[_wgslsmith_index_u32(86568u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(4734u, 7u)]), vec2<bool>(global1[_wgslsmith_index_u32(17557u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]), vec2<bool>(false, true)), select(vec2<bool>(false, global1[_wgslsmith_index_u32(19251u, 7u)]), vec2<bool>(global1[_wgslsmith_index_u32(16250u, 7u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(34448u, 7u)]))), !global1[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(all(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(84462u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u)), 7u)] && !global1[_wgslsmith_index_u32(12047u, 7u)])), select(vec2<bool>(!global1[_wgslsmith_index_u32(1u, 7u)], all(select(vec2<bool>(true, false), vec2<bool>(false, false), global1[_wgslsmith_index_u32(4294967295u, 7u)]))), vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 7u)], all(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 7u)]))), vec2<bool>(global1[_wgslsmith_index_u32(~(~45498u), 7u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 19097u), vec2<u32>(79364u, 32599u)), 32u)] == _wgslsmith_f_op_f32(trunc(-725f)))), select(vec2<bool>(global1[_wgslsmith_index_u32(29219u, 7u)], any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], false, true, false)) & select(true, true, global1[_wgslsmith_index_u32(4294967295u, 7u)])), vec2<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 0u), 7u)], all(!vec3<bool>(global1[_wgslsmith_index_u32(153752u, 7u)], global1[_wgslsmith_index_u32(121048u, 7u)], global1[_wgslsmith_index_u32(2771u, 7u)]))), !vec2<bool>(global1[_wgslsmith_index_u32(countOneBits(0u), 7u)], true)));
    let var_1 = vec4<u32>(1u, ~countOneBits(1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 14319u), ~vec2<u32>(4294967295u, 2509u)) ^ 1u, ~83655u), abs(~(4294967295u << (~4294967295u % 32u))));
    let var_2 = _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 32u)]));
    global0 = array<f32, 32>();
    return ~1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    var var_0 = arg_0.a;
    var var_1 = select(~arg_0.c, vec2<u32>(abs(abs(func_3(Struct_1(var_0.a, var_0.c.wyw, vec4<i32>(5128i, var_0.a.x, u_input.a.x, global2.b.x))))), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_2, arg_2, 6245u, arg_3.x) << (vec4<u32>(19761u, arg_3.x, 17251u, arg_2) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~vec4<u32>(17410u, 55768u, 10392u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, 4294967295u, arg_3.x), vec4<u32>(1u, arg_2, arg_3.x, arg_2), vec4<u32>(arg_2, 4294967295u, arg_3.x, 4294967295u))))), !((!global1[_wgslsmith_index_u32(7909u, 7u)] || true) || any(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 7u)], false, false))));
    var var_2 = Struct_1(global2.c, vec3<i32>(global2.c.x, _wgslsmith_mod_i32(abs(_wgslsmith_add_i32(global2.a.x, arg_0.d.x)), ~reverseBits(u_input.a.x)), var_0.b.x), vec4<i32>(~max(global2.c.x, arg_0.d.x) >> (~max(358u, arg_0.c.x) % 32u), global2.b.x, _wgslsmith_sub_i32(-6091i, 27639i), global2.c.x));
    var var_3 = arg_0;
    global1 = array<bool, 7>();
    return _wgslsmith_mod_u32(arg_2, firstLeadingBit(4294967295u));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = false;
    global3 = false;
    var_0 = true;
    global2 = arg_2;
    let var_1 = Struct_1(~(~(-global2.a)), global2.b << (~(~vec3<u32>(0u, 71161u, 50076u)) % vec3<u32>(32u)), _wgslsmith_div_vec4_i32(~(arg_2.a & ~arg_2.a), -vec4<i32>(global2.b.x & 2147483647i, ~arg_2.b.x, -2147483647i, arg_1.c.x << (arg_3 % 32u))));
    return true;
}

fn func_1() -> vec2<u32> {
    var var_0 = select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(102812u, 10067u)) ^ countOneBits(29651u), 7u)], func_4(global0[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(global2.a, global2.a.ywx, global2.c), vec2<f32>(-1849f, global0[_wgslsmith_index_u32(1u, 32u)]), vec2<u32>(0u, 58071u), global2.b.xx), vec2<f32>(-1000f, -208f), 8808u, vec2<u32>(11730u, 34239u)), 32u)], Struct_1(global2.c, global2.b, vec4<i32>(global2.a.x, u_input.c, -2147483647i, 2147483647i)), Struct_1(vec4<i32>(global2.c.x, global2.b.x, global2.c.x, u_input.d.x), vec3<i32>(u_input.b.x, -10804i, u_input.c), vec4<i32>(-2147483647i, 36760i, global2.a.x, 12760i)), ~1u), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(3400u, 32u)])) <= _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(816u, 32u)]))), select(select(!vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 7u)], true, global1[_wgslsmith_index_u32(0u, 7u)]), !vec4<bool>(global1[_wgslsmith_index_u32(725u, 7u)], false, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(25756u, 7u)]), !vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(37393u, 7u)])), vec4<bool>(true, true, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(31160u, 7u)], global1[_wgslsmith_index_u32(105685u, 7u)])), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(74713u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]))), vec4<bool>(!any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(22610u, 7u)], true)) & all(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(101293u, 7u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(18302u, 7u)], global1[_wgslsmith_index_u32(41712u, 7u)]), global1[_wgslsmith_index_u32(0u, 7u)])), true, any(vec4<bool>(true, true, func_4(global0[_wgslsmith_index_u32(4294967295u, 32u)], Struct_1(vec4<i32>(global2.b.x, u_input.b.x, -1i, u_input.b.x), vec3<i32>(13852i, global2.b.x, global2.b.x), global2.c), Struct_1(vec4<i32>(global2.a.x, 1i, 8886i, u_input.d.x), global2.c.yyx, vec4<i32>(global2.a.x, u_input.a.x, u_input.b.x, global2.a.x)), 23270u), false)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(54951u, _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 15037u), 37941u)), 7u)]), select(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(17438u, 7u)], global1[_wgslsmith_index_u32(27351u, 7u)], global1[_wgslsmith_index_u32(100288u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(global1[_wgslsmith_index_u32(43017u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(28123u, 7u)], global1[_wgslsmith_index_u32(29113u, 7u)], false, global1[_wgslsmith_index_u32(0u, 7u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], true, global1[_wgslsmith_index_u32(1u, 7u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 7u)], true, global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(45111u, 7u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], false, global1[_wgslsmith_index_u32(56390u, 7u)], global1[_wgslsmith_index_u32(67494u, 7u)])), !global1[_wgslsmith_index_u32(0u, 7u)]), select(select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(10121u, 7u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(26245u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(global1[_wgslsmith_index_u32(14433u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], false, false)), !vec4<bool>(global1[_wgslsmith_index_u32(11045u, 7u)], true, true, true), !global1[_wgslsmith_index_u32(53798u, 7u)]), vec4<bool>(any(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 7u)])), true || global1[_wgslsmith_index_u32(21100u, 7u)], false, global1[_wgslsmith_index_u32(~0u, 7u)]), select(select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(39557u, 7u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 7u)], false, global1[_wgslsmith_index_u32(4294967295u, 7u)]), false), vec4<bool>(global1[_wgslsmith_index_u32(85277u, 7u)], false, false, global1[_wgslsmith_index_u32(1u, 7u)]), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], true, global1[_wgslsmith_index_u32(8736u, 7u)], global1[_wgslsmith_index_u32(1934u, 7u)]))), select(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(57198u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 7u)], false, true, global1[_wgslsmith_index_u32(13477u, 7u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(20406u, 7u)], global1[_wgslsmith_index_u32(43966u, 7u)], global1[_wgslsmith_index_u32(25900u, 7u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], true, global1[_wgslsmith_index_u32(64497u, 7u)], global1[_wgslsmith_index_u32(27275u, 7u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(18975u, 7u)], true, global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(global1[_wgslsmith_index_u32(6662u, 7u)], false, false, false)), false), !select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(73311u, 7u)], false, global1[_wgslsmith_index_u32(33764u, 7u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 7u)], true, global1[_wgslsmith_index_u32(1u, 7u)]), vec4<bool>(global1[_wgslsmith_index_u32(86002u, 7u)], true, global1[_wgslsmith_index_u32(36182u, 7u)], global1[_wgslsmith_index_u32(10863u, 7u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)], false, global1[_wgslsmith_index_u32(10996u, 7u)], true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], true, global1[_wgslsmith_index_u32(27577u, 7u)]), false))));
    let var_1 = Struct_1(-global2.a, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(~(-35217i), -1i), ~global2.b.x ^ -u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -18296i, global2.c.x, -506i), global2.a) << (1u % 32u)), global2.c.zxy), global2.a);
    global1 = array<bool, 7>();
    let var_2 = vec4<i32>(abs(global2.b.x), -2147483647i, global2.b.x, (global2.c.x | 2147483647i) & (i32(-1i) * -2147483647i));
    let var_3 = Struct_2(Struct_1(select(~vec4<i32>(-1i, var_2.x, global2.c.x, global2.c.x), _wgslsmith_clamp_vec4_i32(~var_1.c, ~vec4<i32>(-21914i, 47442i, -53273i, var_1.a.x), vec4<i32>(global2.a.x, -69684i, 52493i, u_input.c)), vec4<bool>(var_2.x <= 0i, all(vec4<bool>(false, false, var_0.x, var_0.x)), true, global1[_wgslsmith_index_u32(1u, 7u)])), ~vec3<i32>(-21880i, ~u_input.a.x, _wgslsmith_mult_i32(global2.c.x, 16374i)), var_2), vec2<f32>(-375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2625f))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(17246u), select(4294967295u, 35580u, global1[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 1u))), min(~vec2<u32>(45851u, 0u), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(44340u, 58704u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(15637u, 4294967295u)))), _wgslsmith_add_vec2_i32(~vec2<i32>(reverseBits(0i), var_2.x), -vec2<i32>(u_input.d.x, ~11564i)));
    return ~var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    let var_0 = ~firstLeadingBit(min(vec2<u32>(_wgslsmith_mod_u32(14194u, 4294967295u), reverseBits(0u)), _wgslsmith_div_vec2_u32(func_1(), ~vec2<u32>(0u, 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1491f, 330f, -1164f) * vec3<f32>(-1129f, global0[_wgslsmith_index_u32(10844u, 32u)], -505f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 32u)], -1716f, global0[_wgslsmith_index_u32(1u, 32u)]))), vec3<f32>(2760f, -1270f, global0[_wgslsmith_index_u32(var_0.x, 32u)]))))));
    global1 = array<bool, 7>();
    let var_2 = u_input.a.x;
    global1 = array<bool, 7>();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(select(var_0.x, var_0.x, global1[_wgslsmith_index_u32(var_0.x, 7u)]), ~0u, 1u)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, ~63454u, var_0.x & 1u), abs(countOneBits(vec3<u32>(1u, 0u, var_0.x)))), _wgslsmith_add_vec3_u32(~(vec3<u32>(19223u, 27402u, 0u) << (vec3<u32>(53857u, var_0.x, var_0.x) % vec3<u32>(32u))), ~vec3<u32>(0u, var_0.x, var_0.x)))), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(reverseBits(countOneBits(_wgslsmith_sub_u32(77649u, var_0.x) & _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(var_0.x, 55851u)))), 32u)]);
}

