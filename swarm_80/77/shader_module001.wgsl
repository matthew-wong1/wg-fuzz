struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(783f, 22400u, vec3<i32>(0i, 0i, 32964i), 0i), vec3<u32>(23985u, 161339u, 9582u), vec4<u32>(1u, 27244u, 58206u, 12908u), Struct_1(-912f, 4294967295u, vec3<i32>(19546i, -33108i, -1i), 1i), Struct_1(1000f, 19338u, vec3<i32>(1i, 2147483647i, -92934i), -9923i));

var<private> global1: array<u32, 5> = array<u32, 5>(100705u, 1u, 1u, 1u, 1u);

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_clamp_vec4_u32(arg_2, min(~abs(max(global0.c, arg_0)), ~(~reverseBits(arg_0))), ~vec4<u32>(4294967295u, ~firstTrailingBit(arg_0.x), firstTrailingBit(abs(global0.e.b)), 13683u));
    global0 = Struct_4(global0.e, var_0.ywx, vec4<u32>(~global1[_wgslsmith_index_u32(1u, 5u)] ^ global1[_wgslsmith_index_u32(28524u, 5u)], _wgslsmith_mult_u32(reverseBits(1u), var_0.x), abs(global1[_wgslsmith_index_u32(arg_0.x, 5u)]), 1u) ^ (global0.c << (abs(vec4<u32>(0u, var_0.x, 1u, 4294967295u)) % vec4<u32>(32u))), global0.a, global0.d);
    let var_1 = global0.d;
    let var_2 = Struct_3(arg_3.x, -abs(_wgslsmith_mult_i32(var_1.c.x, global0.d.c.x) >> (global1[_wgslsmith_index_u32(~var_1.b, 5u)] % 32u)));
    let var_3 = select(var_1.c, select(-var_1.c, abs(global0.a.c), vec3<bool>(all(vec3<bool>(true, true, true)), true, true)), true);
    return vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_clamp_u32(1u, 4294967295u, global1[_wgslsmith_index_u32(arg_3.x, 5u)]))), 1u), firstTrailingBit(_wgslsmith_mod_u32(14912u, _wgslsmith_sub_u32(var_1.b | 1u, _wgslsmith_clamp_u32(0u, arg_2.x, 1u)))));
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 5>();
    var var_0 = global0.d.c.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.a.a)), global0.e.a, _wgslsmith_f_op_f32(-global0.e.a), _wgslsmith_f_op_f32(f32(-1f) * -1351f))))));
    var var_2 = _wgslsmith_add_i32(max(-abs(global0.d.d), 1i), global0.d.d);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)))))), _wgslsmith_dot_vec2_u32(~(~u_input.a.zx >> (~global0.b.zy % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(10883u, u_input.b), func_3(global0.c, -13861i, global0.c, global0.c.xyy)))), global0.d.c, 1020i);
    return global0.d;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    global2 = abs(_wgslsmith_mult_u32(~func_2().b, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(select(vec4<u32>(4294967295u, arg_0, 1u, 0u), vec4<u32>(1u, arg_2.b, arg_2.b, u_input.a.x), arg_1), _wgslsmith_mult_i32(arg_2.c.x, arg_2.d), global0.c, firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(global0.a.b, 5u)], 0u, 23262u))).x, 15161u), 5u)]));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(696f + _wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1151f)) - -1576f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f)))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.a, -355f) + var_0.x) - 970f) * func_2().a), _wgslsmith_f_op_f32(f32(-1f) * -227f));
    let var_1 = ~13274u;
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-580f * 846f) + 1000f), _wgslsmith_f_op_f32(max(arg_2.a, -144f)), global0.e.a, -327f))));
    return Struct_2(arg_1);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1043f, global0.d.a))) + -540f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2137f)))), arg_0));
    global0 = Struct_4(func_2(), abs(vec3<u32>(32308u, func_3(global0.c, _wgslsmith_div_i32(4381i, 2147483647i), select(global0.c, global0.c, true), global0.b << (vec3<u32>(u_input.a.x, 11479u, 25130u) % vec3<u32>(32u))).x, ~_wgslsmith_mod_u32(29491u, global1[_wgslsmith_index_u32(4294967295u, 5u)]))), global0.c, func_2(), func_2());
    global1 = array<u32, 5>();
    global1 = array<u32, 5>();
    var var_1 = vec3<i32>(_wgslsmith_div_i32(global0.d.c.x, global0.d.d), ~_wgslsmith_sub_i32(-17051i, -global0.e.c.x), -5717i) ^ global0.d.c;
    return Struct_5(select(!vec3<bool>(true, func_4(5234u, arg_1.a, Struct_1(-1294f, 0u, vec3<i32>(13672i, 1i, global0.a.c.x), var_1.x), vec3<u32>(55091u, global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(10098u, 5u)])).a, false), vec3<bool>(true, true == arg_1.a, _wgslsmith_mod_i32(3724i, 1i) <= var_1.x), !select(vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(arg_1.a, false, false), vec3<bool>(arg_0, true, false), vec3<bool>(arg_1.a, arg_0, arg_1.a)))), Struct_4(func_2(), u_input.a, _wgslsmith_clamp_vec4_u32(firstTrailingBit(global0.c), vec4<u32>(_wgslsmith_dot_vec4_u32(global0.c, vec4<u32>(5683u, u_input.b, 1u, global1[_wgslsmith_index_u32(global0.e.b, 5u)])), ~u_input.b, global0.a.b << (0u % 32u), 4294967295u), firstLeadingBit(~global0.c)), func_2(), func_2()));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(false, func_4(~u_input.a.x, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))) || (any(vec4<bool>(true, true, true, false)) & true), func_2(), vec3<u32>(_wgslsmith_mod_u32(1u, func_2().b), ~4294967295u & global0.d.b, ~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(212f + global0.d.a))) + global0.e.a), -2435f));
    var var_2 = vec2<f32>(-208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.a)) - _wgslsmith_f_op_f32(func_2().a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1024f + -755f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1360f)), _wgslsmith_f_op_f32(func_5(var_0.a.x, Struct_2(var_0.a.x)).b.d.a * -288f)))));
    global2 = ~(~func_2().b);
    return Struct_2(u_input.a.x != global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(20730u, 5u)], _wgslsmith_mod_i32(global0.a.c.x, _wgslsmith_mult_i32(~min(global0.d.c.x, 1i), ~global0.a.c.x)));
    var var_1 = func_1();
    let var_2 = ~func_2().c.yx;
    global0 = func_5(all(select(vec2<bool>(var_1.a, true), vec2<bool>(select(true, var_1.a, var_1.a), var_1.a), vec2<bool>(true, func_1().a))), func_4(0u, var_1.a, Struct_1(global0.d.a, 4294967295u, -vec3<i32>(var_2.x, -1i, global0.d.c.x), abs(-global0.e.d)), ~(~u_input.a))).b;
    var var_3 = ~_wgslsmith_add_u32(~1u, select(global0.c.x, 79436u, false));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.d.a), _wgslsmith_f_op_f32(-933f * 811f))), 334f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1721f, -434f))));
    var_0 = Struct_3(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_div_i32(var_2.x, var_2.x), -57251i));
    let x = u_input.a;
    s_output = StorageBuffer(func_5((_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global0.b.x, 5u)], u_input.b) == ~4294967295u) || var_1.a, func_4(~0u | reverseBits(global1[_wgslsmith_index_u32(0u, 5u)]), var_1.a, Struct_1(_wgslsmith_f_op_f32(var_4.x + var_4.x), 48714u, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, var_2.x, -35445i), vec3<i32>(-23685i, var_0.b, 0i), global0.a.c), firstTrailingBit(var_0.b)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(global0.c.yzz, vec3<u32>(1u, 8260u, u_input.a.x)), global0.b ^ u_input.a))).b.d.a, -8471i, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(15714u, u_input.a.x), vec2<u32>(4294967295u, 4463u) & ~u_input.a.zy), ~(~(~global0.c.xy))), vec4<i32>(max(_wgslsmith_mod_i32(1i, -2147483647i), ~1i), -func_5(false, func_1()).b.e.d, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_2.x, 28168i), var_0.b, _wgslsmith_dot_vec2_i32(global0.a.c.yx, vec2<i32>(0i, 2147483647i))), _wgslsmith_mod_vec3_i32(global0.a.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.d.c.x, 22988i, 1i), global0.a.c, vec3<i32>(global0.e.d, 2147483647i, -13204i)))), 0i));
}

