struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(2147483647i, -1i, -23484i, 2147483647i, 2147483647i, -1761i, 1i, 21247i, 22840i, -1i, -1i, i32(-2147483648), 2147483647i, -3854i, 23074i);

var<private> global1: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1242f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global1.a.x)), -572f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), global1.a.x) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1082f, _wgslsmith_f_op_f32(global1.a.x * 854f), global1.a.x, _wgslsmith_f_op_f32(-global1.a.x))))), max(max(-max(global1.b, global1.b), countOneBits(select(vec3<i32>(7555i, 1i, arg_1.x), global1.b, vec3<bool>(false, true, arg_0)))), abs(vec3<i32>(firstLeadingBit(u_input.b.x), _wgslsmith_clamp_i32(global1.b.x, -1i, arg_1.x), 1i))));
    let var_0 = vec3<bool>(false, any(!(!select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, false, false, false)))), arg_0);
    global0 = array<i32, 15>();
    let var_1 = Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(33610u, u_input.c, u_input.c), vec3<u32>(1u, 6261u, 64141u)), reverseBits(u_input.a)), vec4<u32>(select(u_input.a, 42644u, false), ~u_input.c, firstLeadingBit(48173u), 15840u)), _wgslsmith_sub_vec4_u32(max(~vec4<u32>(97303u, 14912u, u_input.d, 37303u), vec4<u32>(u_input.d, u_input.a, 37231u, u_input.c)), vec4<u32>(1u, ~u_input.a, ~1u, 1u))), Struct_1(global1.a, _wgslsmith_mod_vec3_i32(-global1.b, _wgslsmith_add_vec3_i32(~global1.b, ~vec3<i32>(2147483647i, arg_1.x, -1i)))), ~51719i);
    return 376f;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-283f)), _wgslsmith_f_op_f32(max(global1.a.x, global1.a.x)), _wgslsmith_f_op_f32(ceil(global1.a.x)) < _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(858f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(251f - 1113f), 1688f))), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, ~global1.b.yz)))), vec3<i32>(-26311i, ~(-14854i), -42510i));
    let var_1 = Struct_1(global1.a, firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(1u, 15u)], var_0.b.x << (97149u % 32u), -2147483647i)) >> (~select(~arg_0.zzx, abs(vec3<u32>(23273u, u_input.d, 4294967295u)), global0[_wgslsmith_index_u32(arg_0.x, 15u)] != global0[_wgslsmith_index_u32(23939u, 15u)]) % vec3<u32>(32u)));
    var var_2 = arg_0.zyz >> (~arg_0.wyy % vec3<u32>(32u));
    return Struct_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(select(u_input.d, var_2.x, false), 19425u, 1u, _wgslsmith_sub_u32(var_2.x, arg_0.x)), ~abs(arg_0)), Struct_1(vec4<f32>(404f, 141f, _wgslsmith_div_f32(1836f, _wgslsmith_f_op_f32(-global1.a.x)), 606f), -var_0.b), ~countOneBits(var_0.b.x));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_4 {
    var var_0 = -vec4<i32>(64757i, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(7137u, arg_1.a.x, min(max(u_input.c, 0u), 4101u)), 15u)], u_input.e, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.e), countOneBits(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(63756u, 15u)], -1i))));
    var_0 = ~(~(-countOneBits(vec4<i32>(arg_1.c, 47615i, 0i, 44795i) << (vec4<u32>(arg_1.a.x, arg_1.a.x, 4294967295u, arg_1.a.x) % vec4<u32>(32u)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.b.a.x, -1000f), _wgslsmith_f_op_f32(select(160f, global1.a.x, arg_2.x)), arg_1.b.a.x, -1000f) - arg_1.b.a), arg_1.b.a, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, arg_2.x, true), false)))), firstTrailingBit(vec3<i32>(1i, arg_1.b.b.x, firstTrailingBit(2147483647i))));
    global0 = array<i32, 15>();
    let var_2 = -670f;
    return Struct_4(_wgslsmith_add_vec4_i32(firstTrailingBit(select(vec4<i32>(global1.b.x, var_1.b.x, arg_1.b.b.x, var_1.b.x), vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], -13550i), vec4<bool>(false, arg_2.x, arg_2.x, false))), min(-vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(3230u, 15u)], global1.b.x, arg_1.b.b.x), -vec4<i32>(var_0.x, 1i, 1i, 17570i))) << (firstLeadingBit(select(arg_1.a, arg_1.a, false)) % vec4<u32>(32u)), -(select(vec2<i32>(-1i, var_1.b.x), var_1.b.xz, vec2<bool>(false, false)) | -var_0.xx) << (~(~vec2<u32>(arg_1.a.x, 46927u) << ((arg_1.a.wz | arg_1.a.yw) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_3(true, 21327u, Struct_1(func_2(~vec4<u32>(u_input.a, 8556u, arg_1.a.x, 40117u)).b.a, abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b.b.x, global0[_wgslsmith_index_u32(u_input.a, 15u)], 11993i), arg_1.b.b))), vec4<u32>(_wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, u_input.a, u_input.d), arg_1.a.wzx)), 48565u, ~0u, ~(u_input.d << (6041u % 32u)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    global1 = func_4(all(!(!vec2<bool>(arg_0.c.a, true))), func_2(~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(6224u, 4294967295u, 1u, arg_3.d.x), arg_1.a))), select(select(!select(vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(arg_0.c.a, arg_3.a), vec2<bool>(true, arg_0.c.a)), vec2<bool>(true, true), arg_3.a), !vec2<bool>(all(vec2<bool>(arg_0.c.a, arg_0.c.a)), arg_0.c.a), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), arg_0.c.a), vec2<bool>(true, arg_0.c.a), !vec2<bool>(arg_0.c.a, false)))).c.c;
    let var_0 = arg_3;
    let var_1 = arg_0;
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-401f, _wgslsmith_f_op_f32(func_3(false, arg_3.c.b.yz)), -576f, arg_2)), vec3<i32>(-2147483647i, 1i, firstLeadingBit(-var_0.c.b.x)));
    global0 = array<i32, 15>();
    return func_2(vec4<u32>(4294967295u, 0u & var_0.b, ~_wgslsmith_clamp_u32(arg_3.b, 1u, 31644u) ^ _wgslsmith_dot_vec4_u32(~var_1.c.d, arg_1.a), _wgslsmith_sub_u32(~arg_0.c.b, _wgslsmith_dot_vec4_u32(var_1.c.d, var_1.c.d))));
}

fn func_1(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = ~(~(~(~(41128u & u_input.d))));
    var var_1 = -121f;
    var var_2 = func_5(func_4(!any(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), arg_0)), func_2(min(~vec4<u32>(u_input.d, u_input.a, 4294967295u, 27403u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, u_input.c, 1618u, 4294967295u), vec4<u32>(var_0, 102883u, var_0, u_input.d)))), vec2<bool>(select(true, arg_0.x, all(vec2<bool>(arg_0.x, false))), false)), Struct_2(max(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 57867u, u_input.d), vec4<u32>(0u, 4294967295u, var_0, var_0)), vec4<u32>(var_0, var_0, u_input.c, 67668u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(9357u, u_input.c, 14626u, u_input.d), vec4<u32>(17998u, 33037u, 421u, var_0)) % vec4<u32>(32u))), Struct_1(_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(382f, global1.a.x, global1.a.x, global1.a.x) + vec4<f32>(global1.a.x, 1053f, global1.a.x, global1.a.x))), vec3<i32>(-1i) * -global1.b), global1.b.x), global1.a.x, Struct_3(arg_0.x, u_input.c, func_2(abs(~vec4<u32>(var_0, u_input.c, 40515u, var_0))).b, _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 0u, var_0, 4294967295u), ~vec4<u32>(u_input.a, 4294967295u, 27961u, var_0), ~vec4<u32>(68859u, 49298u, 1u, 0u)) ^ (_wgslsmith_div_vec4_u32(vec4<u32>(var_0, u_input.a, var_0, 642u), vec4<u32>(4294967295u, 1u, 18016u, u_input.d)) >> (select(vec4<u32>(u_input.c, var_0, 0u, 4294967295u), vec4<u32>(u_input.a, 137877u, 0u, u_input.c), vec4<bool>(true, false, true, arg_0.x)) % vec4<u32>(32u)))));
    global1 = func_5(func_4(arg_0.x, Struct_2(~(~vec4<u32>(var_2.a.x, u_input.d, var_2.a.x, 0u)), var_2.b, 2147483647i), !arg_0.xy), func_5(func_4(all(arg_0), func_5(func_4(arg_0.x, Struct_2(var_2.a, Struct_1(vec4<f32>(248f, -847f, var_2.b.a.x, -350f), var_2.b.b), 0i), vec2<bool>(false, arg_0.x)), func_2(var_2.a), -170f, func_4(true, Struct_2(vec4<u32>(u_input.a, 58459u, 1u, u_input.d), var_2.b, u_input.b.x), vec2<bool>(arg_0.x, false)).c), arg_0.xz), Struct_2(var_2.a, func_4(arg_0.x, Struct_2(var_2.a, Struct_1(global1.a, global1.b), global0[_wgslsmith_index_u32(var_2.a.x, 15u)]), select(arg_0.yy, arg_0.xx, arg_0.zy)).c.c, var_2.b.b.x), 286f, func_4(true, func_2(~var_2.a), arg_0.zz).c), _wgslsmith_f_op_f32(var_2.b.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1151f)) + _wgslsmith_f_op_f32(1000f * -819f)), -521f)), Struct_3(true, u_input.d & ~(~var_2.a.x), var_2.b, func_5(func_4(true, Struct_2(var_2.a, Struct_1(global1.a, vec3<i32>(-38471i, -27964i, 2147483647i)), var_2.c), arg_0.yx), func_5(Struct_4(vec4<i32>(-1i, u_input.e, 12801i, -1i), vec2<i32>(1i, -1i), Struct_3(arg_0.x, 42383u, Struct_1(vec4<f32>(522f, global1.a.x, global1.a.x, var_2.b.a.x), vec3<i32>(1i, u_input.e, global1.b.x)), var_2.a)), Struct_2(vec4<u32>(43771u, 4294967295u, 50559u, 1u), Struct_1(global1.a, global1.b), 0i), global1.a.x, Struct_3(false, 131580u, var_2.b, var_2.a)), _wgslsmith_f_op_f32(145f - var_2.b.a.x), func_4(arg_0.x, Struct_2(vec4<u32>(12866u, var_0, var_0, var_0), Struct_1(var_2.b.a, vec3<i32>(10657i, 0i, 0i)), 2147483647i), vec2<bool>(arg_0.x, arg_0.x)).c).a | vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), var_2.a.wy), 37808u, u_input.c))).b;
    let var_3 = _wgslsmith_add_u32(~(~(var_0 | u_input.a)), _wgslsmith_dot_vec3_u32(var_2.a.zwz, ~_wgslsmith_add_vec3_u32(var_2.a.xwx, _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.x, 36673u, var_0), var_2.a.zyw))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global1.a, vec4<f32>(global1.a.x, global1.a.x, -364f, -191f))))) * _wgslsmith_f_op_vec4_f32(-global1.a)), select(global1.b, reverseBits(global1.b) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2004i, global1.b.x), -vec3<i32>(72688i, u_input.e, global1.b.x)), select(func_1(vec3<bool>(true, true, true)), vec3<bool>(true, true, 360f < global1.a.x), vec3<bool>(true, true, true))));
    let var_1 = true;
    let var_2 = Struct_3(func_1(!(!vec3<bool>(var_1, true, true))).x, 0u, func_2((vec4<u32>(u_input.d, 56285u, 29102u, 61731u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 367u, u_input.c, 43815u), vec4<u32>(0u, u_input.c, u_input.a, u_input.d))) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 47680u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 45912u, u_input.d))).b, func_5(Struct_4(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, global1.b.x, 1i, global1.b.x), vec4<i32>(1i, -70226i, u_input.b.x, global1.b.x)) >> (~vec4<u32>(u_input.d, 62220u, u_input.d, u_input.d) % vec4<u32>(32u)), vec2<i32>(2147483647i, global1.b.x), func_4(var_1, Struct_2(vec4<u32>(u_input.c, 1u, u_input.c, u_input.d), var_0, u_input.e), !vec2<bool>(var_1, true)).c), Struct_2(~abs(vec4<u32>(1u, u_input.d, 1u, 9764u)), Struct_1(global1.a, ~global1.b), global1.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -658f), -1140f, var_1)), Struct_3(func_4(true, func_2(vec4<u32>(76193u, 58021u, u_input.a, u_input.d)), vec2<bool>(false, var_1)).c.a, 4294967295u, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1221f, 1128f, -1452f) + vec4<f32>(global1.a.x, var_0.a.x, 1000f, var_0.a.x)), var_0.b ^ var_0.b), func_5(func_4(true, Struct_2(vec4<u32>(u_input.d, u_input.d, 16410u, u_input.d), Struct_1(var_0.a, var_0.b), global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec2<bool>(false, false)), Struct_2(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), Struct_1(vec4<f32>(-464f, global1.a.x, global1.a.x, var_0.a.x), var_0.b), var_0.b.x), var_0.a.x, func_4(var_1, Struct_2(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), var_0, -2147483647i), vec2<bool>(var_1, true)).c).a)).a);
    global0 = array<i32, 15>();
    let var_3 = func_4(false, Struct_2(_wgslsmith_mult_vec4_u32(select(func_2(var_2.d).a, vec4<u32>(4294967295u, 38895u, var_2.b, 1u), vec4<bool>(var_2.a, var_1, var_2.a, var_1)), vec4<u32>(~var_2.b, var_2.d.x, select(1u, 4294967295u, var_2.a), var_2.d.x)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, var_2.c.a.x, global1.a.x, global1.a.x) * vec4<f32>(var_2.c.a.x, -1000f, var_2.c.a.x, var_2.c.a.x)))), vec3<i32>(-20296i, abs(global1.b.x), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(56960u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)]))), func_4(all(!vec2<bool>(var_1, true)), Struct_2(vec4<u32>(4294967295u, 15263u, var_2.b, 91664u) << (var_2.d % vec4<u32>(32u)), func_2(var_2.d).b, ~global0[_wgslsmith_index_u32(43130u, 15u)]), vec2<bool>(false, true)).c.c.b.x), vec2<bool>(any(vec4<bool>(var_1, true, true, !var_2.a)), true)).c;
    var var_4 = !(u_input.e < ~u_input.e);
    let var_5 = func_2((_wgslsmith_mult_vec4_u32(var_2.d, abs(vec4<u32>(u_input.c, var_2.d.x, 29614u, 1u))) << (select(func_2(vec4<u32>(4294967295u, 6952u, 58850u, u_input.c)).a, select(vec4<u32>(u_input.a, u_input.a, var_2.b, 1u), vec4<u32>(u_input.c, var_3.b, 1701u, 1u), var_1), select(vec4<bool>(true, var_1, var_2.a, false), vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a), vec4<bool>(var_3.a, var_1, true, var_3.a))) % vec4<u32>(32u))) >> (var_3.d % vec4<u32>(32u))).b.a.x;
    var var_6 = _wgslsmith_add_vec3_i32(~(-select(var_0.b, global1.b, !vec3<bool>(var_2.a, true, true))), abs(vec3<i32>(var_2.c.b.x, var_2.c.b.x, func_2(vec4<u32>(1u, u_input.c, u_input.c, var_3.d.x)).c)));
    var var_7 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(reverseBits(u_input.a), u_input.d, ~countOneBits(var_7.b))), _wgslsmith_add_vec2_i32(global1.b.zy, firstTrailingBit(var_0.b.xx | -var_6.yy)), var_0.a.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(626f, var_2.c.a.x) + vec2<f32>(1330f, 3172f)), vec2<f32>(109f, var_0.a.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.xz)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_3.c.a.x + 1436f), var_5, _wgslsmith_f_op_f32(global1.a.x - -2387f), -2614f), var_2.c.a)));
}

