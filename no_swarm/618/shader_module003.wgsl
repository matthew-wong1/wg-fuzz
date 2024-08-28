struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_0 = vec2<bool>(true, true);
    var var_1 = 1i;
    let var_2 = firstLeadingBit(-vec4<i32>(1i, 1i, 1i, 1i) & (vec4<i32>(-1i) * -select(vec4<i32>(23791i, 0i, 0i, -2147483647i), vec4<i32>(0i, 63392i, 2147483647i, 25380i), false)));
    return _wgslsmith_add_i32(i32(-1i) * -((i32(-1i) * -77435i) & var_2.x), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_2.xy, vec2<i32>(2147483647i, 2147483647i)) << (~0u % 32u), countOneBits(var_2.x) & -2147483647i));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(1579f - global1.c.x);
    global0 = array<Struct_1, 16>();
    var var_1 = ~select(_wgslsmith_add_vec2_i32(~vec2<i32>(81946i, -1i), select(vec2<i32>(-71065i, -1i), vec2<i32>(0i, 0i), vec2<bool>(true, true))), vec2<i32>(1i, 1i) | vec2<i32>(~2147483647i, 9681i >> (u_input.a.x % 32u)), vec2<bool>(true, true));
    let var_2 = 0u;
    var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, abs(max(-2147483647i, 5414i))), vec2<i32>(1i, -1i));
    return u_input.a;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32(10810i, func_2(Struct_1(vec4<u32>(42212u, 1u, _wgslsmith_div_u32(u_input.a.x, global1.a.x), ~u_input.a.x), u_input.a, _wgslsmith_f_op_vec3_f32(global1.c - _wgslsmith_f_op_vec3_f32(global1.c - global1.c))), global0[_wgslsmith_index_u32(max(global1.b.x, u_input.a.x << (0u % 32u)), 16u)]));
    var var_1 = !(!(!(all(vec4<bool>(true, false, true, false)) | true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(global1.c.xy));
    global1 = Struct_1(_wgslsmith_mod_vec4_u32(global1.a, ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 16220u, 7264u, 0u), ~global1.a)), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(func_3(vec4<u32>(u_input.a.x, 2040u, u_input.a.x, 6487u)), global1.a.yxy & ~u_input.a), global1.a.yww), global1.c);
    global0 = array<Struct_1, 16>();
    return Struct_2(select(vec4<bool>(select(true, false, true), true, true, any(vec3<bool>(true, true, false)) & all(vec3<bool>(true, false, false))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), _wgslsmith_f_op_f32(-var_2.x) != _wgslsmith_f_op_f32(global1.c.x - 890f)), vec4<bool>(true, true, true, true)), ~(~65589u), ~global1.a.zy, vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, 2147483647i, firstTrailingBit(0i)), 2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-33940i, -25622i), vec2<i32>(0i, -20042i))), 1i, 1i, _wgslsmith_mod_i32(23371i, func_2(Struct_1(global1.a, vec3<u32>(58613u, 1u, 4294967295u), global1.c), global0[_wgslsmith_index_u32(u_input.a.x, 16u)]))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: bool) -> vec2<f32> {
    var var_0 = Struct_1(vec4<u32>(~0u, global1.b.x, firstTrailingBit(~65917u), ~select(21187u, _wgslsmith_add_u32(arg_2.c.x, global1.a.x), !arg_0)), vec3<u32>(global1.b.x, reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_2.b, arg_2.c.x), 4294967295u)), _wgslsmith_mod_u32(47463u, ~54868u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2941f) + _wgslsmith_f_op_f32(global1.c.x - 738f)), _wgslsmith_f_op_f32(round(global1.c.x)), _wgslsmith_f_op_f32(-global1.c.x))));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_1 = select(0u, ~1u >> (_wgslsmith_sub_u32(1u, firstTrailingBit(26275u)) % 32u), _wgslsmith_dot_vec4_u32(var_0.a, min(vec4<u32>(var_0.a.x, 87038u, var_0.b.x, var_0.b.x), global1.a)) < ~5684u) ^ global1.b.x;
    return global1.c.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-108f, global1.c.x) * vec2<f32>(-533f, _wgslsmith_f_op_f32(max(503f, global1.c.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(true, vec4<bool>(true, true, true, true), func_1(58544u), false)) * global1.c.xz))));
    var var_1 = vec4<u32>(~1351u, 101576u, 1u, select(reverseBits(~_wgslsmith_div_u32(1u, 4294967295u)), (~5189u & _wgslsmith_sub_u32(global1.a.x, global1.a.x)) & abs(~0u), !all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true))));
    let var_2 = Struct_1(vec4<u32>(1u, ~(~_wgslsmith_div_u32(46539u, var_1.x)), u_input.a.x, 1u), (~(~vec3<u32>(global1.a.x, var_1.x, global1.b.x)) & abs(select(var_1.zwy, var_1.wzz, true))) & _wgslsmith_mult_vec3_u32(u_input.a, global1.a.wwy), global1.c);
    var var_3 = vec3<i32>(_wgslsmith_add_i32(max(6461i, 0i), 1i) >> (~_wgslsmith_mod_u32(global1.a.x, u_input.a.x) % 32u), -1i, ~countOneBits(~2147483647i)) >> (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, var_2.a.x, 48647u), u_input.a), ~var_2.b.x), ~76229u, ~reverseBits(0u | var_2.a.x)) % vec3<u32>(32u));
    var_3 = vec3<i32>(~(var_3.x << (select(1u, 27743u, true) % 32u)), -1i, _wgslsmith_sub_i32(var_3.x, reverseBits(func_1(var_1.x << (var_1.x % 32u)).d.x)));
    var_1 = ~(~vec4<u32>(max(global1.b.x, var_2.a.x), 16438u & global1.b.x, firstLeadingBit(var_1.x), ~32033u) << (_wgslsmith_mult_vec4_u32(var_2.a, ~vec4<u32>(u_input.a.x, global1.a.x, 60330u, global1.b.x)) % vec4<u32>(32u)));
    global1 = Struct_1(_wgslsmith_add_vec4_u32(firstLeadingBit(global1.a & abs(vec4<u32>(4294967295u, 56516u, 0u, global1.a.x))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(44122u, u_input.a.x, var_2.b.x, 3994u)), var_2.a)), vec3<u32>(_wgslsmith_sub_u32(~86572u, _wgslsmith_dot_vec4_u32(var_2.a, firstLeadingBit(var_2.a))), 1u, var_2.b.x >> (4076u % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 765f, var_2.c.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(-354f, 1000f, -628f), vec3<f32>(366f, -370f, var_2.c.x)))), vec3<f32>(global1.c.x, -136f, var_0.x)));
    var_3 = ~(select(min(vec3<i32>(-1i, var_3.x, var_3.x) ^ vec3<i32>(-34616i, -2147483647i, var_3.x), firstLeadingBit(vec3<i32>(var_3.x, var_3.x, var_3.x))), vec3<i32>(var_3.x, 25314i, var_3.x) >> (~global1.b % vec3<u32>(32u)), all(vec3<bool>(false, false, false))) | vec3<i32>(abs(20666i), firstLeadingBit(var_3.x) >> (var_2.b.x % 32u), ~(-21933i)));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, ~var_1.x, 4294967295u, var_1.x), firstTrailingBit(firstLeadingBit(var_2.a))), abs(~(var_1.x >> (0u % 32u)))), -1145f, vec3<i32>(var_3.x, max(~504i, var_3.x), _wgslsmith_dot_vec2_i32(~var_3.yx, vec2<i32>(1i, _wgslsmith_div_i32(var_3.x, 1525i)))), ~var_3.x);
}

