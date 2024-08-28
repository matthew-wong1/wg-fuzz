struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(-24185i, -1i, 0i, 16918i, 2147483647i, 1i, -58820i, -16044i, -40745i, 1i, -5071i, 49353i, -20726i, -56316i, 0i, -1i, 0i, 0i, -5173i, 2735i, -1i, -13958i, 2147483647i, -1i, -674i, -4653i, i32(-2147483648));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = 1204f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(197f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f)))))));
    let var_1 = Struct_1(u_input.b, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_div_i32(~u_input.a.x, 2147483647i)), i32(-1i) * -max(u_input.a.x, u_input.b)), ~_wgslsmith_div_u32(~4294967295u, abs(~127404u)));
    var var_2 = !select(true, select(all(vec2<bool>(true, true)), false, true), true);
    let var_3 = var_1.c;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(select(u_input.b, _wgslsmith_mod_i32(21481i, 23023i), select(true, false, false)), var_1.b), var_1.b, global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.e.xx, vec2<u32>(5108u, var_1.c))), 27u)] | reverseBits(-global0[_wgslsmith_index_u32(u_input.e.x, 27u)]), -45282i), vec4<i32>(-4352i, ~(-17838i), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(var_1.c, 0u) >> (~4294967295u % 32u)), 27u)], 2147483647i));
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.a;
    let var_1 = Struct_3(vec2<i32>(func_3(), ~_wgslsmith_sub_i32(var_0.x, -53680i)), -u_input.a, countOneBits(max(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, -24982i, u_input.b), u_input.a), -u_input.b), abs(select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 704i), vec2<i32>(0i, u_input.b), vec2<bool>(true, true))))), vec2<i32>(abs(~(-global0[_wgslsmith_index_u32(u_input.d.x, 27u)])), 1i));
    let var_2 = Struct_3(select(u_input.a.yw, ~var_1.a | -u_input.a.ww, vec2<bool>(true, true)), _wgslsmith_mod_vec4_i32(var_1.b, vec4<i32>(1i, global0[_wgslsmith_index_u32(1u, 27u)], u_input.b, u_input.b)), _wgslsmith_clamp_vec2_i32(select(countOneBits(abs(u_input.a.wx)), max(-var_1.c, vec2<i32>(-1i, u_input.b)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), var_0.wx, u_input.a.yz), max(vec2<i32>(var_1.b.x, countOneBits(var_1.b.x)) << ((select(vec2<u32>(u_input.e.x, u_input.c.x), vec2<u32>(4294967295u, u_input.d.x), true) >> ((vec2<u32>(u_input.d.x, u_input.d.x) << (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), -vec2<i32>(var_1.a.x, var_1.c.x) >> (reverseBits(u_input.e.xy) % vec2<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(-1350f, -386f)), _wgslsmith_f_op_f32(f32(-1f) * -1188f)), vec2<f32>(322f, -1810f)))));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-1637f - -860f), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 1u), u_input.d.xw, firstLeadingBit(u_input.d.zz)), _wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.e.yz), u_input.d.zx, ~vec2<u32>(1u, 40827u))), reverseBits(~(~94829u)), ~(~reverseBits(u_input.e.x)), abs(abs(4294967295u))), var_0.x, Struct_4(u_input.e.yy, vec2<bool>(true, true), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, ~4294967295u, countOneBits(u_input.d.x)), 27u)], -var_0.x, 1u)), Struct_4(_wgslsmith_sub_vec2_u32(u_input.e.zz, firstTrailingBit(vec2<u32>(4294967295u, u_input.d.x)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.c.x, u_input.e.x)) % vec2<u32>(32u))), vec2<bool>(true, true), Struct_1(1991i, ~_wgslsmith_mult_i32(26945i, 0i), countOneBits(0u) | _wgslsmith_mod_u32(4294967295u, u_input.d.x))));
    return Struct_3(_wgslsmith_mod_vec2_i32(var_2.b.zy, select(-var_0.xy, var_1.d, true) & vec2<i32>(var_4.e.c.a, 1i)), var_2.b, ~var_1.d, -var_1.b.wy);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = func_2();
    var var_1 = Struct_4(arg_0.a, vec2<bool>(!(arg_0.b.x && all(arg_3)), arg_0.b.x), Struct_1(-_wgslsmith_add_i32(var_0.a.x, -1i) << (~min(4294967295u, 1u) % 32u), 33196i, reverseBits(~arg_0.a.x)));
    var var_2 = abs(u_input.d);
    let var_3 = any(select(!vec4<bool>(true, true, any(vec4<bool>(false, var_1.b.x, true, arg_3.x)), select(arg_0.b.x, true, false)), !select(vec4<bool>(arg_0.b.x, arg_3.x, false, var_1.b.x), vec4<bool>(arg_3.x, arg_0.b.x, arg_0.b.x, var_1.b.x), any(arg_3)), true));
    let var_4 = Struct_3(vec2<i32>(_wgslsmith_add_i32(var_0.d.x, select(1i, _wgslsmith_div_i32(var_0.b.x, arg_0.c.b), any(vec4<bool>(var_3, false, true, var_1.b.x)))), var_1.c.a), -vec4<i32>(_wgslsmith_div_i32(2147483647i, global0[_wgslsmith_index_u32(1u, 27u)]) ^ -28129i, _wgslsmith_dot_vec4_i32(var_0.b, arg_1.b), 2147483647i, -1i), -vec2<i32>(arg_0.c.a, -(i32(-1i) * -2147483647i)), u_input.a.xy);
    return countOneBits(~(~(vec2<i32>(2147483647i, 0i) ^ vec2<i32>(-697i, arg_0.c.b))));
}

fn func_5(arg_0: i32, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = ~(~firstLeadingBit(~4294967295u));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))), u_input.d, (20972i ^ u_input.a.x) >> (~(abs(50836u) << (_wgslsmith_dot_vec2_u32(u_input.e.yx, vec2<u32>(43725u, var_0)) % 32u)) % 32u), Struct_4(~abs(vec2<u32>(var_0, 0u)), vec2<bool>(true, any(vec4<bool>(false, true, true, true))), Struct_1(~arg_0, func_4(Struct_4(u_input.e.yy, vec2<bool>(true, true), Struct_1(29272i, -2147483647i, 12893u)), func_2(), 106151u, vec3<bool>(false, false, false)).x, u_input.e.x)), Struct_4(u_input.e.xz, vec2<bool>(true, true), Struct_1(_wgslsmith_mod_i32(2147483647i, ~1i), -firstTrailingBit(-2147483647i), 4294967295u & (var_0 ^ 4294967295u))));
    let var_2 = var_1.e;
    return Struct_4(abs(var_2.a & ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), var_2.a)), select(vec2<bool>(var_1.e.b.x, var_1.d.b.x), select(vec2<bool>(true, var_2.b.x), !var_2.b, vec2<bool>(true, var_2.b.x)), select(var_1.e.b, var_1.e.b, var_1.d.b)), var_1.e.c);
}

fn func_1(arg_0: vec2<bool>) -> bool {
    global0 = array<i32, 27>();
    let var_0 = _wgslsmith_mult_u32(u_input.c.x, u_input.d.x);
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_1 = Struct_5(_wgslsmith_f_op_f32(abs(1124f)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0, u_input.c.x, 26851u, u_input.e.x), ~vec4<u32>(78334u, var_0, 0u, 4294967295u), vec4<u32>(u_input.e.x, ~var_0, 4294967295u, u_input.c.x)), abs(-_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) ^ ~(~u_input.a.x >> (_wgslsmith_add_u32(u_input.d.x, u_input.e.x) % 32u)), func_5(firstLeadingBit(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(~0u, 27u)], i32(-1i) * -2147483647i)), countOneBits(func_4(Struct_4(u_input.d.yz, vec2<bool>(arg_0.x, arg_0.x), Struct_1(1i, u_input.a.x, 0u)), func_2(), _wgslsmith_div_u32(8176u, var_0), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), Struct_4(func_5(-_wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(u_input.b, u_input.a.x)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(5711i, u_input.b), vec2<i32>(-2147483647i, -39165i))).a, select(vec2<bool>(true, arg_0.x), arg_0, func_5(2147483647i, _wgslsmith_add_vec2_i32(u_input.a.yw, u_input.a.zy)).b.x), Struct_1(-_wgslsmith_clamp_i32(u_input.b, -25785i, u_input.a.x), ~(~0i), ~_wgslsmith_mult_u32(var_0, var_0))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    global0 = array<i32, 27>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(632f, 1610f)))))));
    var var_2 = func_5(select(abs(min(1i, -2298i)), u_input.b, var_0), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, ~(-1i)), vec2<i32>(reverseBits(-23572i), 1i) & u_input.a.xz)).c;
    var var_3 = (var_0 & ((var_2.a >> (4294967295u % 32u)) != max(2147483647i, select(0i, global0[_wgslsmith_index_u32(u_input.d.x, 27u)], true)))) != ((((u_input.a.x | var_2.b) >> (u_input.e.x % 32u)) & ~15688i) < -(max(u_input.a.x, var_2.b) << (select(111522u, var_2.c, var_0) % 32u)));
    var_2 = Struct_1(0i, -abs(countOneBits(48082i)), 1u);
    var_2 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_i32(~u_input.a.yzx >> (u_input.e % vec3<u32>(32u)), reverseBits(~u_input.a.wwy))), -2147483647i, u_input.c.x);
    let var_4 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

