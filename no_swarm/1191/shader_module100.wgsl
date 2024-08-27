struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: u32) -> vec4<u32> {
    let var_0 = min(~(~4294967295u), arg_2);
    let var_1 = Struct_2(countOneBits(vec3<u32>(var_0, ~1u | abs(u_input.b.x), 5614u)), u_input.b.xz, vec4<u32>(u_input.d.x, ~1u, (firstTrailingBit(136807u) >> (countOneBits(u_input.c) % 32u)) << (~arg_2 % 32u), arg_2));
    var var_2 = ~22866u;
    var var_3 = -(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 50916i, 1i, -15788i), min(vec4<i32>(0i, -8066i, 1i, -13464i), vec4<i32>(61573i, 15595i, -7080i, 915i)))) << (20840u % 32u);
    var_2 = _wgslsmith_clamp_u32(max(_wgslsmith_add_u32(var_0, ~(var_0 | var_0)), max(~u_input.c, _wgslsmith_div_u32(6140u | var_1.c.x, max(1u, 1u)))), var_0, _wgslsmith_clamp_u32(arg_2 & firstLeadingBit(~1u), ~(~arg_2) >> (~min(82277u, 0u) % 32u), var_1.b.x));
    return firstLeadingBit(var_1.c) << (vec4<u32>(firstTrailingBit(var_1.b.x), 4206u, firstLeadingBit(4294967295u), 0u) % vec4<u32>(32u));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(vec3<u32>(~min(u_input.b.x, u_input.c), ~(u_input.c | 8906u), u_input.b.x), ~vec2<u32>(~1u, u_input.a.x), countOneBits(_wgslsmith_mult_vec4_u32(func_3(vec4<f32>(-716f, 616f, 667f, 971f), vec2<f32>(549f, -1858f), 22509u), vec4<u32>(u_input.a.x, 51428u, u_input.c, 1u)))), Struct_2(u_input.b, ~(~u_input.b.yz), vec4<u32>(u_input.d.x, u_input.c ^ func_3(vec4<f32>(-1000f, -480f, -818f, -684f), vec2<f32>(-1345f, -1872f), u_input.b.x).x, (1u << (0u % 32u)) << (max(18935u, u_input.b.x) % 32u), ~4294967295u)), Struct_2(u_input.d, ~_wgslsmith_div_vec2_u32(u_input.d.xx, u_input.b.zx), abs(vec4<u32>(u_input.d.x, ~u_input.c, u_input.c, ~u_input.a.x))), true, countOneBits(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-47921i, -1i, 56659i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 44444i, -40389i), vec3<i32>(1i, 0i, 2147483647i))), 1i, ~(~13400i), -(~(-56624i)))));
    var var_1 = _wgslsmith_sub_vec3_u32(~func_3(vec4<f32>(_wgslsmith_f_op_f32(1000f - 1497f), _wgslsmith_f_op_f32(floor(478f)), _wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(min(1411f, 504f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, -839f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(407f, -103f), vec2<f32>(1000f, -661f)))), u_input.b.x).wxy, vec3<u32>(var_0.c.b.x & reverseBits(var_0.a.a.x), ~(~18731u ^ func_3(vec4<f32>(-1000f, -392f, -1000f, 691f), vec2<f32>(2409f, -1416f), 14068u).x), _wgslsmith_sub_u32(u_input.d.x, 1u)));
    var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(~1u, abs(var_1.x), ~(~0u)), vec3<u32>(select(69520u, abs(770u), var_0.d), var_0.b.b.x, 40086u));
    var_0 = Struct_3(var_0.b, var_0.a, Struct_2(~(~u_input.b), vec2<u32>(55625u, _wgslsmith_dot_vec3_u32(u_input.d, var_0.a.c.xzz)) ^ func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-934f, 636f, -1801f, 135f), vec4<f32>(-251f, 618f, 790f, 990f), var_0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(377f, -132f)), var_1.x).yx, ~vec4<u32>(60333u, ~4294967295u, var_1.x, var_0.a.b.x)), false, vec4<i32>(var_0.e.x, ~_wgslsmith_div_i32(-50342i, -var_0.e.x), firstLeadingBit(min(min(var_0.e.x, 1i), var_0.e.x << (u_input.c % 32u))), _wgslsmith_sub_i32(min(var_0.e.x, _wgslsmith_dot_vec3_i32(var_0.e.yzw, vec3<i32>(var_0.e.x, 1i, -1i))), abs(-1i))));
    var_0 = Struct_3(Struct_2(vec3<u32>(_wgslsmith_mod_u32(var_0.a.c.x, firstTrailingBit(var_0.a.c.x)), u_input.a.x, 17486u), var_0.b.b, ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.b.x, 4662u, 84173u, var_0.b.c.x), ~var_0.a.c)), var_0.a, var_0.b, true, select(vec4<i32>(~var_0.e.x, ~(-1i), _wgslsmith_add_i32(var_0.e.x, var_0.e.x), ~(-1i)), _wgslsmith_mult_vec4_i32(-var_0.e, firstTrailingBit(var_0.e)), any(vec4<bool>(var_0.d, true, var_0.d, true)) & var_0.d) & vec4<i32>(_wgslsmith_mod_i32(11006i, _wgslsmith_mod_i32(-32891i, var_0.e.x)), -(8590i << (var_1.x % 32u)), var_0.e.x, firstTrailingBit(~35156i)));
    return Struct_1(~var_0.e.xwz);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    var var_0 = u_input.b.x;
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(-arg_1, _wgslsmith_add_vec3_i32(-vec3<i32>(arg_1.x, -31254i, arg_1.x), -arg_1 | countOneBits(vec3<i32>(11614i, arg_1.x, 31293i))), ~_wgslsmith_add_vec3_i32(arg_1, vec3<i32>(arg_1.x, -1i, arg_1.x))));
    var_1 = func_2();
    var var_2 = arg_0.c.zw;
    var_1 = func_2();
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<f32> {
    let var_0 = any(select(select(vec3<bool>(!arg_0, func_1(Struct_2(u_input.b, u_input.b.zz, vec4<u32>(u_input.d.x, 31512u, 58330u, u_input.c)), arg_1.a, Struct_2(u_input.d, vec2<u32>(0u, 27063u), vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, u_input.a.x))), arg_0), vec3<bool>(arg_0 & arg_0, arg_0, true), vec3<bool>(true, arg_0, false)), vec3<bool>(true, func_1(Struct_2(vec3<u32>(4294967295u, u_input.a.x, 24961u), u_input.b.zx, vec4<u32>(u_input.b.x, 0u, u_input.c, u_input.a.x)), vec3<i32>(0i, arg_1.a.x, 3554i), Struct_2(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), u_input.a, vec4<u32>(44128u, 29070u, 89899u, 43817u))), arg_0 & arg_0), !vec3<bool>(false, arg_0, true)));
    let var_1 = -(arg_2 >> (vec2<u32>(1u, ~_wgslsmith_add_u32(24033u, u_input.d.x)) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2113f) * _wgslsmith_f_op_f32(f32(-1f) * -589f)))))));
    var_2 = -1554f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f * 1006f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f - -1046f) + _wgslsmith_f_op_f32(select(1000f, 1166f, arg_0)))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -750f), -808f, -674f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(3202f, 457f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f + -1266f) + _wgslsmith_f_op_f32(-614f * -315f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(func_1(Struct_2(u_input.d, vec2<u32>(u_input.d.x, u_input.d.x), vec4<u32>(6691u, 42128u, u_input.b.x, 0u)), vec3<i32>(17010i, 29529i, 47586i), Struct_2(u_input.d, vec2<u32>(0u, u_input.d.x), vec4<u32>(u_input.a.x, 46161u, 1u, 33976u))), Struct_1(vec3<i32>(-1i, 20385i, 11413i)), ~vec2<i32>(1i, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1081f, -191f, -757f))), true)))));
    var var_2 = Struct_1(vec3<i32>(func_2().a.x, _wgslsmith_add_i32(~(~1136i), firstTrailingBit(-16368i)), _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, 23361i), ~2147483647i), ~_wgslsmith_div_i32(47131i, 5901i))));
    let var_3 = 1u;
    var_2 = func_2();
    var var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(74759u, 1u, ~_wgslsmith_div_u32(var_3, u_input.c), u_input.a.x), select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, var_3, 4294967295u, 4294967295u)), countOneBits(vec4<u32>(22652u, 4443u, 0u, 82754u))), vec4<u32>(1u, var_3, _wgslsmith_div_u32(1u, u_input.d.x), 63460u), vec4<bool>(true, true, true, true))) >> (vec4<u32>(min(abs(abs(var_3)), 4294967295u), _wgslsmith_add_u32(u_input.a.x, 4294967295u), u_input.b.x, ~_wgslsmith_clamp_u32(u_input.a.x >> (u_input.b.x % 32u), var_3, 4294967295u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u) ^ select(vec4<u32>(var_3, 9821u, var_4.x, u_input.c), vec4<u32>(115920u, 0u, 25911u, 1u), vec4<bool>(true, true, true, true))), select(min(vec4<u32>(57005u, var_4.x, var_4.x, var_4.x), vec4<u32>(4294967295u, var_3, 35547u, 4294967295u)), vec4<u32>(0u, 1u, u_input.d.x, 0u) >> (vec4<u32>(4294967295u, 0u, 1u, var_3) % vec4<u32>(32u)), true) ^ vec4<u32>(~0u, var_3, ~var_3, _wgslsmith_div_u32(var_4.x, 0u))));
}

