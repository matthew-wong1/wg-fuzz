struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(1u, 24927u, 75804u, 4294967295u), vec4<u32>(64710u, 7644u, 0u, 0u), vec4<u32>(7961u, 4294967295u, 23214u, 0u), vec4<u32>(1u, 28563u, 0u, 1u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(4379u, 0u, 4294967295u, 37784u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(19913u, 4294967295u, 1u, 19836u));

var<private> global1: array<Struct_3, 15>;

var<private> global2: Struct_4;

var<private> global3: Struct_3 = Struct_3(-787f, vec2<f32>(-1511f, -616f), Struct_1(vec4<bool>(false, false, true, true), vec4<u32>(0u, 8465u, 73138u, 1u)), Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(6841u, 0u, 4294967295u, 28588u)), true);

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<u32>(1u, 4294967295u, 0u, 39376u)), Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(1u, 40298u, 41818u, 54573u)), Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(6546u, 4294967295u, 42300u, 1u)), vec3<i32>(-1i, 25327i, -91173i), Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(738u, 0u, 17649u, 4294967295u)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = u_input.e.wz | _wgslsmith_sub_vec2_i32(abs(global4.d.yz), -(~_wgslsmith_add_vec2_i32(u_input.c.zy, vec2<i32>(arg_0, -2090i))));
    global0 = array<vec4<u32>, 8>();
    var var_1 = global1[_wgslsmith_index_u32(~firstLeadingBit(~_wgslsmith_add_u32(_wgslsmith_mult_u32(global2.c.x, global4.a.b.x), 4294967295u ^ global3.d.b.x)), 15u)];
    global2 = Struct_4(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 47978u), global3.d.b.yw), abs(1u) | (1u | var_1.d.b.x)), 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global4.c.b.x, global3.d.b.x, global4.c.b.x, global4.b.b.x), vec4<u32>(global4.a.b.x, 18493u, global2.a.x, 12271u)), _wgslsmith_mult_u32(global2.b.c.b.x, 1u)), 15u)], abs(_wgslsmith_add_vec3_u32(select(var_1.d.b.xxx, u_input.d, global4.e.a.xyw), global2.c)) & ~vec3<u32>(min(var_1.c.b.x, 73209u), global2.a.x, _wgslsmith_mult_u32(u_input.d.x, global3.c.b.x)));
    return _wgslsmith_clamp_u32(var_1.c.b.x, ~(~(~var_1.d.b.x)) ^ (0u ^ global2.a.x), _wgslsmith_mult_u32(0u | _wgslsmith_add_u32(var_1.c.b.x, 4619u), countOneBits(global4.c.b.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.b, arg_0.b.zy), func_3(-2147483647i), global4.e.b.x), arg_0.b), ((global2.a.x ^ 1u) | 0u) & (u_input.b.x << (countOneBits(arg_2) % 32u)), _wgslsmith_sub_u32(~0u, func_3(-24015i))), _wgslsmith_clamp_vec3_u32(vec3<u32>(49126u, _wgslsmith_add_u32(1u, global3.c.b.x), u_input.b.x), firstLeadingBit(~vec3<u32>(22008u, global4.b.b.x, global4.a.b.x)), ~arg_0.b.yyz));
    let var_1 = true;
    global0 = array<vec4<u32>, 8>();
    return 41488u;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> vec3<i32> {
    global2 = Struct_4((select(global3.d.b.wz, global3.d.b.ww ^ arg_0.d.b.wy, vec2<bool>(global3.e, arg_1.c.a.x)) | ~select(global2.b.d.b.yz, global3.c.b.yy, false)) >> (select(_wgslsmith_mod_vec2_u32(vec2<u32>(22501u, arg_1.d.b.x), _wgslsmith_clamp_vec2_u32(global2.a, arg_0.c.b.yw, vec2<u32>(global2.a.x, global4.a.b.x))), ~countOneBits(global3.d.b.zw), !select(true, false, arg_0.e)) % vec2<u32>(32u)), Struct_3(-711f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global3.b), _wgslsmith_f_op_vec2_f32(-arg_1.b)))), arg_0.c, Struct_1(!global3.c.a, vec4<u32>(~0u, reverseBits(global2.b.c.b.x), _wgslsmith_dot_vec4_u32(global4.c.b, vec4<u32>(arg_0.c.b.x, 0u, 49014u, 4294967295u)), 1u >> (arg_1.c.b.x % 32u))), true), _wgslsmith_mod_vec3_u32(select(vec3<u32>(~global4.b.b.x, global4.b.b.x, select(4294967295u, global2.b.c.b.x, global3.c.a.x)), ~(~vec3<u32>(global4.c.b.x, global4.c.b.x, 0u)), !global4.e.a.xwx), abs(firstTrailingBit(countOneBits(vec3<u32>(20318u, global4.b.b.x, global4.b.b.x))))));
    var var_0 = ~abs(global3.d.b.x);
    let var_1 = Struct_1(global4.a.a, max(abs(arg_1.d.b), min(vec4<u32>(global4.e.b.x, 0u, arg_1.c.b.x, global2.c.x), vec4<u32>(global2.c.x, global3.c.b.x, 12556u, global3.c.b.x)) & _wgslsmith_clamp_vec4_u32(arg_0.c.b, global2.b.d.b, global2.b.c.b ^ global0[_wgslsmith_index_u32(arg_1.d.b.x, 8u)])));
    var var_2 = !select(select(arg_0.d.a.zy, global4.a.a.zz, select(vec2<bool>(global2.b.e, true), vec2<bool>(true, global2.b.d.a.x), true)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, global3.e), true), global2.b.c.a.yw, all(vec4<bool>(var_1.a.x, true, false, true))), global2.b.c.a.zy, false), var_1.a.x);
    var var_3 = -251f;
    return u_input.e.yzz;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec2<i32>) -> f32 {
    let var_0 = reverseBits(~vec3<u32>(60886u, 4294967295u, abs(79817u)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.b.x)) + _wgslsmith_f_op_f32(-global3.b.x)) * -873f) - global3.a), global2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(985f)))))));
    var var_2 = 1u;
    var var_3 = all(vec3<bool>(false, !all(select(vec2<bool>(arg_1.b.e, true), vec2<bool>(false, true), global3.e)), true));
    var_3 = arg_0.x > ~countOneBits(arg_0.x);
    return global2.b.a;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_5(func_4(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(func_2(global4.b, vec2<bool>(global2.b.d.a.x, true), 1u, Struct_3(1000f, global2.b.b, Struct_1(global3.c.a, global4.b.b), global2.b.d, true)), ~global2.b.c.b.x)), 15u)], global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global2.a.x, global2.b.c.b.x), 15u)], _wgslsmith_sub_i32(-32622i, ~u_input.a & 0i)), Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(0u << (global4.a.b.x % 32u), ~0u), ~firstLeadingBit(global3.c.b.xx)), Struct_3(-181f, global3.b, global3.c, global4.c, all(vec3<bool>(false, global4.c.a.x, global4.c.a.x))), ~vec3<u32>(~61694u, ~global4.e.b.x, 1u)), vec2<i32>(33154i, _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(-2147483647i, -1i, -1i), -33320i))));
    global1 = array<Struct_3, 15>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1767f)), _wgslsmith_f_op_f32(-605f - global3.b.x)))))), _wgslsmith_f_op_vec2_f32(global3.b - global3.b), Struct_1(select(select(select(global4.a.a, vec4<bool>(true, false, global4.a.a.x, true), true), global4.e.a, select(global4.b.a, vec4<bool>(false, false, true, global2.b.d.a.x), true)), global2.b.d.a, vec4<bool>(true, select(global2.b.d.a.x, false, global3.e), any(global3.d.a.yx), true)), _wgslsmith_div_vec4_u32(global3.d.b, global2.b.c.b)), global3.d, true);
    var var_2 = Struct_2(Struct_1(var_1.d.a, select(~global4.e.b, global3.c.b, select(global3.d.a, !vec4<bool>(true, false, true, global3.c.a.x), true))), global2.b.d, Struct_1(vec4<bool>(false, true, global2.b.d.a.x, true), global3.c.b), u_input.e.wyw, Struct_1(global3.d.a, ~(~global0[_wgslsmith_index_u32(abs(32738u), 8u)])));
    let var_3 = ~func_4(Struct_3(global3.a, vec2<f32>(_wgslsmith_f_op_f32(trunc(1498f)), _wgslsmith_f_op_f32(ceil(-792f))), global4.a, Struct_1(!vec4<bool>(global2.b.e, var_1.e, global4.c.a.x, global2.b.c.a.x), vec4<u32>(global4.e.b.x, var_2.e.b.x, 0u, 1u)), true | global3.c.a.x), Struct_3(722f, global2.b.b, Struct_1(select(vec4<bool>(false, global4.c.a.x, global4.b.a.x, false), vec4<bool>(false, var_2.a.a.x, true, var_1.c.a.x), vec4<bool>(global2.b.e, global4.e.a.x, false, var_1.c.a.x)), vec4<u32>(0u, global3.d.b.x, 0u, global2.a.x)), Struct_1(vec4<bool>(false, false, false, false), countOneBits(vec4<u32>(1u, global4.a.b.x, 32621u, 0u))), all(!vec4<bool>(var_2.a.a.x, false, global2.b.e, global4.c.a.x))), u_input.c.x).x;
    return Struct_3(-1720f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(global2.b.a, 1057f), _wgslsmith_f_op_f32(f32(-1f) * -1465f)), vec2<f32>(-341f, _wgslsmith_f_op_f32(max(global2.b.a, 250f))))) + _wgslsmith_f_op_vec2_f32(-var_1.b)), Struct_1(!global3.c.a, vec4<u32>(global4.b.b.x, ~global3.c.b.x, u_input.d.x, global3.d.b.x)), global2.b.d, global4.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global2.b.b);
    global3 = func_1();
    global4 = Struct_2(global3.d, global3.c, func_1().c, ~global4.d, func_1().d);
    global3 = global2.b;
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_0);
    global1 = array<Struct_3, 15>();
    var var_3 = Struct_4(_wgslsmith_clamp_vec2_u32(min(min(global4.e.b.xx, vec2<u32>(0u, var_1.c.b.x)) >> (global2.c.xx % vec2<u32>(32u)), reverseBits(max(u_input.b, vec2<u32>(var_1.c.b.x, 1u)))), select(abs(vec2<u32>(global4.b.b.x, global4.c.b.x)), vec2<u32>(abs(82760u), global4.b.b.x), vec2<bool>(!var_1.e, true)), ~(~(global2.a ^ vec2<u32>(var_1.d.b.x, u_input.b.x)))), Struct_3(global2.b.a, _wgslsmith_f_op_vec2_f32(ceil(var_0)), global2.b.c, global4.a, select(select(true, true, all(vec3<bool>(global3.e, global4.b.a.x, global3.e))), !global4.b.a.x, true || var_1.c.a.x)), ~var_1.d.b.yxx);
    let x = u_input.a;
    s_output = StorageBuffer(~16104i, _wgslsmith_div_vec4_u32(~(~global2.b.d.b), firstTrailingBit(var_1.c.b)), _wgslsmith_f_op_f32(-global3.a), ~(u_input.c.x & 46865i), ~_wgslsmith_div_u32(27927u, global4.c.b.x) << (50157u % 32u));
}

