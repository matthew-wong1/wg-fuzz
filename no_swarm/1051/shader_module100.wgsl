struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: vec3<u32> = vec3<u32>(1u, 0u, 18562u);

var<private> global2: array<u32, 31> = array<u32, 31>(1u, 1u, 42454u, 1u, 14873u, 1u, 0u, 7712u, 38018u, 76484u, 16287u, 83997u, 0u, 33579u, 1u, 0u, 4294967295u, 6582u, 4294967295u, 54467u, 0u, 2475u, 12060u, 1u, 9817u, 512u, 13848u, 4294967295u, 4294967295u, 4294967295u, 0u);

var<private> global3: Struct_2 = Struct_2(-131f, vec3<u32>(4294967295u, 0u, 1u), Struct_1(vec3<f32>(1000f, 374f, 214f), -31904i, vec4<f32>(677f, -1000f, -245f, -167f), vec2<i32>(2147483647i, 3115i)), vec4<i32>(1i, 2147483647i, 2147483647i, -44275i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    var var_0 = Struct_3(Struct_2(-215f, reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0.x, global1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 65049u, 0u), vec3<u32>(arg_0.x, 70426u, u_input.a.x)))), global3.c, global3.d), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.c.a.x, _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(f32(-1f) * -370f))))), ~(~1u), global3.c);
    global3 = Struct_2(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_add_vec3_u32(select(max(vec3<u32>(u_input.a.x, global3.b.x, u_input.a.x) >> (vec3<u32>(13374u, global2[_wgslsmith_index_u32(1u, 31u)], var_0.a.b.x) % vec3<u32>(32u)), var_0.a.b), ~vec3<u32>(arg_0.x, 0u, 43474u), vec3<bool>(var_0.b, -431f >= var_0.c.x, true)), min(min(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.b.x, 0u, 1u), var_0.a.b), _wgslsmith_mod_vec3_u32(global3.b, vec3<u32>(global3.b.x, 1u, 0u))), global3.b)), global3.c, _wgslsmith_clamp_vec4_i32(~global3.d, vec4<i32>(16512i, global3.d.x, max(-2147483647i >> (global3.b.x % 32u), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u, 15u)], -1i)), _wgslsmith_mod_i32(u_input.b, _wgslsmith_div_i32(global3.c.b, -2147483647i))), _wgslsmith_mult_vec4_i32(reverseBits(var_0.a.d), var_0.a.d)));
    var var_1 = ~_wgslsmith_add_i32(select(0i, global3.c.b, var_0.b), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, var_0.e.b, u_input.e)), countOneBits(-global3.d.ywy)));
    var_1 = _wgslsmith_mult_i32(-_wgslsmith_mult_i32(abs(reverseBits(global3.c.d.x)), 1i), _wgslsmith_dot_vec3_i32(global3.d.ywy, u_input.c));
    global2 = array<u32, 31>();
    return ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.a.b & global3.b, _wgslsmith_sub_vec3_u32(vec3<u32>(37367u, global2[_wgslsmith_index_u32(1u, 31u)], u_input.a.x), global3.b)), var_0.a.b);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(1205f, func_3(~max(~vec2<u32>(4294967295u, global3.b.x), global3.b.yx ^ u_input.a)), global3.c, -vec4<i32>(global0[_wgslsmith_index_u32(~u_input.a.x, 15u)], -37689i, -2147483647i, global3.c.d.x));
    global1 = func_3(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(93417u), _wgslsmith_add_u32(global3.b.x, 36766u), 30477u), ~vec3<u32>(1u, 0u, 4294967295u)), 113976u));
    let var_1 = Struct_3(Struct_2(1095f, vec3<u32>(47986u, global1.x >> (~28598u % 32u), 4294967295u), Struct_1(_wgslsmith_f_op_vec3_f32(-global3.c.c.xyw), -2147483647i, var_0.c.c, global3.d.zx >> (select(vec2<u32>(global1.x, var_0.b.x), vec2<u32>(4294967295u, 56377u), true) % vec2<u32>(32u))), ~vec4<i32>(global3.c.d.x >> (global2[_wgslsmith_index_u32(global3.b.x, 31u)] % 32u), 62416i, -global0[_wgslsmith_index_u32(27834u, 15u)], ~global3.c.b)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), 0i > var_0.d.x))), vec3<f32>(_wgslsmith_div_f32(var_0.a, var_0.a), global3.a, -808f), ~u_input.a.x, Struct_1(var_0.c.a, firstLeadingBit(-17889i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-763f, _wgslsmith_f_op_f32(round(global3.a)), _wgslsmith_f_op_f32(select(global3.c.a.x, -490f, true)), _wgslsmith_f_op_f32(var_0.a + var_0.a))), vec2<i32>(-2147483647i, reverseBits(0i))));
    global2 = array<u32, 31>();
    var var_2 = -reverseBits(1i);
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    global3 = func_2();
    let var_0 = Struct_2(global3.c.a.x, vec3<u32>(1u, u_input.a.x, u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_1.c.wxy))), _wgslsmith_mult_i32(-13447i, global0[_wgslsmith_index_u32(~0u, 15u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.c.a.x, arg_1.c.x, 2204f, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(-arg_1.c)))), u_input.c.xx), max(vec4<i32>(arg_0, reverseBits(u_input.b), abs(global3.c.d.x) >> (~0u % 32u), u_input.c.x), vec4<i32>(2147483647i, -24178i, u_input.c.x, 38225i)));
    var var_1 = global3.c.c.wz;
    let var_2 = vec4<u32>(abs(118387u), global3.b.x ^ global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(23794u, ~u_input.a.x & firstLeadingBit(32377u), global2[_wgslsmith_index_u32(~global1.x, 31u)]), ~global3.b), 53263u);
    var var_3 = Struct_4(_wgslsmith_sub_u32(countOneBits(13797u), _wgslsmith_clamp_u32(~44557u, var_2.x, abs(~var_0.b.x))), 1656f, Struct_3(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1505f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c.yyy - global3.c.c.wwy))), max(_wgslsmith_add_u32(4783u << (1u % 32u), _wgslsmith_dot_vec3_u32(var_2.zyw, global3.b)), _wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(70936u, 31u)], global2[_wgslsmith_index_u32(global1.x, 31u)]), ~global3.b.yz)), Struct_1(arg_1.c.wzy, _wgslsmith_dot_vec2_i32(vec2<i32>(7046i, global0[_wgslsmith_index_u32(0u, 15u)]), vec2<i32>(33097i, 100436i)) >> ((var_2.x | global1.x) % 32u), global3.c.c, ~u_input.c.yz)), false);
    return global3.c.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = arg_1.c.c;
    var var_1 = select(vec2<bool>(false, arg_0), select(!select(vec2<bool>(true, arg_0), !vec2<bool>(false, arg_0), vec2<bool>(arg_0, false)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), any(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, true, true), true))), select(select(!vec2<bool>(false, arg_0), !vec2<bool>(arg_0, arg_0), false != arg_0), vec2<bool>(true, arg_0), select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, true), vec2<bool>(false, false), arg_0), vec2<bool>(false, arg_0)))), arg_0);
    let var_2 = 1i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-arg_1.c.c.xzw);
    let var_4 = !(!select(select(vec4<bool>(arg_0, var_1.x, true, false), vec4<bool>(false, var_1.x, arg_0, arg_0), vec4<bool>(false, var_1.x, false, arg_0)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(var_1.x, arg_0, true, var_1.x), vec4<bool>(arg_0, true, var_1.x, arg_0))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(any(vec3<bool>(~u_input.b >= -1i, true, -1i > firstTrailingBit(u_input.b))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.c.x) - global3.a), ~vec3<u32>(u_input.a.x, ~1u, ~global2[_wgslsmith_index_u32(global1.x, 31u)]), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global3.c.c.xxz), global3.c.c.zyx, select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), global0[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.e, Struct_1(vec3<f32>(global3.a, global3.a, -1343f), global3.c.d.x, vec4<f32>(global3.a, global3.c.c.x, -1533f, -243f), vec2<i32>(-50200i, global0[_wgslsmith_index_u32(global1.x, 15u)])))) + vec4<f32>(-1526f, global3.c.a.x, global3.c.c.x, 1181f)), global3.d.wx ^ (global3.c.d & u_input.c.zx)), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.e, 26777i, u_input.c.x, global0[_wgslsmith_index_u32(0u, 15u)]) & global3.d, vec4<i32>(select(global3.c.d.x, -2147483647i, false), global3.c.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 32444i), u_input.c.yx), 0i))), _wgslsmith_f_op_f32(global3.c.c.x - 802f));
    var_0 = select(((_wgslsmith_f_op_f32(select(-125f, -1044f, false)) != global3.c.c.x) | true) | true, !((_wgslsmith_dot_vec4_i32(global3.d, global3.d) >= firstLeadingBit(27744i)) && true), global3.c.a.x >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.c.a.x))))));
    let var_1 = vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], global1.x, global3.b.x);
    var var_2 = Struct_5(Struct_3(func_2(), false, vec3<f32>(-421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.c.x))), _wgslsmith_mod_u32(countOneBits(_wgslsmith_sub_u32(global3.b.x, 76370u)), global3.b.x), Struct_1(vec3<f32>(-292f, global3.c.a.x, -1078f), 2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.a.x, 450f, global3.a, global3.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2986f, global3.c.a.x, 2822f, 1947f) + vec4<f32>(global3.c.a.x, global3.c.a.x, -792f, 469f))), _wgslsmith_mult_vec2_i32(~vec2<i32>(1i, 4618i), global3.c.d))), vec4<u32>(global3.b.x, _wgslsmith_clamp_u32(67156u, min(6981u, global2[_wgslsmith_index_u32(8738u, 31u)]), 48588u) << (41945u % 32u), 40692u ^ global2[_wgslsmith_index_u32(~(global3.b.x ^ global3.b.x), 31u)], 30673u), _wgslsmith_f_op_f32(round(584f)) < global3.a, true || !any(vec3<bool>(true, true, true)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-var_2.a.a.c.c.x), var_2.b.zxz, func_2().c, firstLeadingBit(_wgslsmith_sub_vec4_i32(-(global3.d << (var_2.b % vec4<u32>(32u))), firstLeadingBit(global3.d))));
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_2.a.e.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, -2512f, -251f, -1000f)))) + var_2.a.e.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global3.c.d.x << (~1u % 32u), i32(-1i) * -_wgslsmith_div_i32(20132i, global0[_wgslsmith_index_u32(64030u, 15u)]), 1i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_2.a.a.c.c))), firstTrailingBit(var_2.a.a.c.d.x));
}

