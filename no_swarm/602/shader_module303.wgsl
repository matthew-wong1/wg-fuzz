struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_1(1531f, 4294967295u, -39526i), 585f, -1125f, vec4<f32>(723f, 1182f, 201f, -589f)));

var<private> global3: vec3<bool> = vec3<bool>(true, true, true);

var<private> global4: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4) -> bool {
    global0 = !global3.x;
    global1 = array<Struct_1, 10>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(countOneBits(arg_1.b), arg_1.b), u_input.a.x & 1u, reverseBits(9820u)), 10u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), 1u, countOneBits(var_0.c));
    global4 = !any(!(!vec4<bool>(true, global3.x, true, false)));
    return _wgslsmith_clamp_i32(-8273i, _wgslsmith_mult_i32(1i, arg_2.a.c), 19325i) >= reverseBits(_wgslsmith_clamp_i32(-1i, 1i, 0i));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = ~arg_0;
    var var_1 = !vec2<bool>(~0u < _wgslsmith_sub_u32(4251u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), global3.x);
    let var_2 = max(vec4<i32>(max(arg_0, arg_0), ~1i, _wgslsmith_mod_i32(-54140i, firstLeadingBit(arg_0 << (u_input.a.x % 32u))), 61878i), vec4<i32>(_wgslsmith_div_i32(select(2147483647i, _wgslsmith_add_i32(-1i, 27743i), func_3(Struct_4(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 575f, -1037f, vec4<f32>(-1312f, -546f, -1209f, -231f)), Struct_1(398f, 46473u, 2147483647i), global2[_wgslsmith_index_u32(u_input.a.x, 1u)])), select(-18054i, arg_0 ^ 1i, true)), _wgslsmith_dot_vec2_i32((vec2<i32>(3012i, arg_0) ^ vec2<i32>(43810i, -27800i)) ^ min(vec2<i32>(0i, arg_0), vec2<i32>(arg_0, -17143i)), -(~vec2<i32>(arg_0, 0i))), arg_0, arg_0));
    global3 = !select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(!(!var_1.x), true, global3.x & true), true);
    var var_3 = global2[_wgslsmith_index_u32(~(~594u) & ~u_input.a.x, 1u)];
    return Struct_2(Struct_1(var_3.b, 22912u, arg_0 | var_3.a.c), Struct_1(var_3.b, abs(_wgslsmith_div_u32(~53920u, 4294967295u)), 1i), -2147483647i, Struct_1(-831f, max(_wgslsmith_div_u32(54072u, var_3.a.b), u_input.a.x) & 0u, 2147483647i));
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    global3 = vec3<bool>(all(vec4<bool>(any(!vec3<bool>(global3.x, true, global3.x)), !(!global3.x), !global3.x, !global3.x || global3.x)), global3.x || (1i >= arg_0.b.c), global3.x);
    global3 = vec3<bool>(!all(vec3<bool>(select(global3.x, false, global3.x), true, any(vec2<bool>(false, global3.x)))), _wgslsmith_sub_i32(abs(20479i), ~(-2147483647i)) < (i32(-1i) * -countOneBits(arg_0.a.c)), true);
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.d.a)));
    let var_1 = ~1u;
    return vec4<i32>(-firstTrailingBit(select(-2147483647i, -2147483647i, false)), 34818i, min(abs(arg_0.b.c), countOneBits(arg_0.b.c)), ~arg_0.c) | vec4<i32>(arg_0.b.c, -abs(arg_0.b.c), -_wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(arg_0.b.c, 21050i)), arg_0.d.c << (var_1 % 32u));
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_mod_vec4_i32(func_4(func_2(-2147483647i)), -select(~(-vec4<i32>(2147483647i, -1i, -24642i, 49350i)), -vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(any(vec4<bool>(false, global3.x, true, global3.x)), !global3.x, any(vec2<bool>(true, false)), false)));
    global3 = select(select(select(!select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, true, true), vec3<bool>(global3.x, false, global3.x)), !select(vec3<bool>(true, global3.x, false), vec3<bool>(true, true, global3.x), true), global3.x), select(vec3<bool>(true, func_3(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], Struct_1(-954f, 0u, var_0.x), global2[_wgslsmith_index_u32(0u, 1u)]), false), vec3<bool>(global3.x, false, true), any(!vec4<bool>(true, global3.x, false, global3.x))), select(true, true, global3.x)), !(!vec3<bool>(global3.x, true, all(vec2<bool>(global3.x, global3.x)))), select(vec3<bool>(!all(vec4<bool>(global3.x, global3.x, true, false)), any(vec4<bool>(true, true, global3.x, global3.x)), false), !vec3<bool>(false, global3.x, global3.x), select(vec3<bool>(true, any(global3.yx), true), vec3<bool>(any(vec2<bool>(global3.x, global3.x)), !global3.x, all(vec3<bool>(global3.x, global3.x, false))), select(select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, false, global3.x), global3.x), !vec3<bool>(global3.x, false, true), select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(true, global3.x, global3.x), vec3<bool>(false, global3.x, false))))));
    let var_1 = func_2(var_0.x).d;
    var var_2 = vec3<bool>(!func_3(global2[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(countOneBits(4094u), 10u)], global2[_wgslsmith_index_u32(~(var_1.b << (0u % 32u)), 1u)]), !(_wgslsmith_sub_i32(0i, ~var_0.x) != var_1.c), global3.x);
    global2 = array<Struct_4, 1>();
    return Struct_5(func_2(var_0.x), max(var_0.xy & (vec2<i32>(0i, 0i) ^ vec2<i32>(var_0.x, -2147483647i)), ~firstLeadingBit(vec2<i32>(1i, var_0.x))) | var_0.yy, -14635i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.a;
    global3 = !(!select(select(!vec3<bool>(false, global3.x, global3.x), vec3<bool>(true, false, false), !vec3<bool>(global3.x, global3.x, true)), select(!vec3<bool>(false, global3.x, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, global3.x), vec3<bool>(false, false, global3.x), true)), !vec3<bool>(global3.x, false, global3.x)));
    var var_2 = 2147483647i;
    var var_3 = !global3.x;
    var_3 = any(vec3<bool>(true, firstTrailingBit(func_1().a.b.b) < (94328u ^ (26154u << (var_0.a.d.b % 32u))), func_3(global2[_wgslsmith_index_u32(42798u, 1u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1889f), 0u, 2147483647i), global2[_wgslsmith_index_u32(countOneBits(func_1().a.a.b), 1u)])));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f * -1235f))) + var_0.a.d.a);
    global2 = array<Struct_4, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(var_0.a.a.c, var_0.b.x, ~_wgslsmith_div_i32(var_1.b.c, var_0.a.d.c)), var_0.b.x, 29791i), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, -567f, _wgslsmith_f_op_f32(f32(-1f) * -696f)) - vec3<f32>(var_0.a.b.a, var_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(393f, var_0.a.b.a) - -1368f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(507f, var_0.a.d.a, -1797f, -1000f), vec4<f32>(-948f, 1000f, -757f, var_1.b.a))) + vec4<f32>(-417f, var_0.a.a.a, var_0.a.a.a, var_0.a.a.a)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -937f), -1940f, 1082f, 303f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-660f, -544f, var_1.b.a, 944f) * vec4<f32>(var_0.a.a.a, var_1.a.a, 192f, -2422f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(1306f, _wgslsmith_f_op_f32(var_1.d.a * 950f)))) + -1551f));
}

