struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-1690f, -469f), true, -25308i);

var<private> global2: f32 = 648f;

var<private> global3: vec3<i32>;

var<private> global4: vec4<f32> = vec4<f32>(-785f, 144f, -449f, -256f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<i32> {
    return min(~u_input.b.wzx, arg_2);
}

fn func_3() -> vec2<bool> {
    global0 = array<u32, 20>();
    var var_0 = Struct_2(global1.a, true, func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a)), false, -(global3.x >> (global0[_wgslsmith_index_u32(0u, 20u)] % 32u))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) - _wgslsmith_f_op_vec2_f32(-global1.a)), global1.b, global3.x), ~(-(u_input.b.yyw & u_input.b.www))).x);
    let var_1 = u_input.b.yxw;
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(6463u, u_input.a) & max(vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 20u)]), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(global0[_wgslsmith_index_u32(15876u, 20u)], _wgslsmith_sub_u32(70441u, u_input.a))), ~14855u), ~(~_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)])), vec2<u32>(u_input.a, 539u))));
    let var_3 = var_2.x;
    return select(select(vec2<bool>(true, select(!var_0.b, false, global1.a.x >= -691f)), vec2<bool>(global1.b, true), select(vec2<bool>(true, true), vec2<bool>(global1.b | global1.b, var_0.b), vec2<bool>(global1.a.x >= 1117f, true))), select(vec2<bool>(var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(48226i, var_0.c), var_1.zz) != var_1.x), vec2<bool>(all(vec2<bool>(false, var_0.b)), all(vec3<bool>(false, false, false))), (var_0.b || true) || false), false);
}

fn func_4(arg_0: bool, arg_1: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, _wgslsmith_div_f32(358f, _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-global1.a.x))), -647f));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, 2251f)), _wgslsmith_f_op_f32(1000f - global1.a.x)), global4.x) - global4.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-898f - 455f) - global4.x), _wgslsmith_div_f32(global1.a.x, var_0.x)))));
    var var_2 = vec3<u32>(~global0[_wgslsmith_index_u32(12589u, 20u)], ~_wgslsmith_div_u32(max(4499u ^ u_input.a, global0[_wgslsmith_index_u32(reverseBits(1u), 20u)]), firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(94559u, 20u)], u_input.a), 20u)])), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)] | 1u, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)] ^ u_input.a) & global0[_wgslsmith_index_u32(29840u, 20u)], 53546u));
    var var_3 = Struct_1(-177f, 896f);
    let var_4 = vec2<bool>(global1.b, (-125f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + -722f)) || any(vec2<bool>(true, true)));
    return vec2<f32>(var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(552f, var_1.a)) * -625f));
}

fn func_1() -> vec3<i32> {
    global3 = abs(func_2(Struct_2(_wgslsmith_f_op_vec2_f32(exp2(global1.a)), !(!global1.b), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, 0i, -2147483647i), vec3<i32>(global1.c, 6508i, 20322i))), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(global4.xw, global4.ww)))), global1.b, -2147483647i), u_input.b.zzw));
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, _wgslsmith_f_op_f32(global1.a.x * global1.a.x))), _wgslsmith_f_op_vec2_f32(func_4(any(func_3()), select(!global1.b, global1.b, global1.b))), !((global1.b & global1.b) | global1.b))), all(!(!select(vec2<bool>(global1.b, global1.b), vec2<bool>(false, true), false))), _wgslsmith_mod_i32((global1.c & firstLeadingBit(-10938i)) ^ -firstLeadingBit(-2147483647i), _wgslsmith_clamp_i32(global1.c, 1342i, ~_wgslsmith_mod_i32(-1i, u_input.b.x))));
    var var_1 = ~max(countOneBits(select(u_input.b.x | global3.x, ~u_input.b.x, true)), func_2(Struct_2(vec2<f32>(global4.x, 288f), global1.b, u_input.b.x), Struct_2(vec2<f32>(1856f, global1.a.x), false, 15286i), reverseBits(vec3<i32>(global3.x, u_input.b.x, 35019i))).x ^ (u_input.b.x >> (~20717u % 32u)));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.x, global1.a.x)))))) * vec2<f32>(429f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-461f)))))), !(u_input.a < _wgslsmith_mod_u32(~4294967295u, u_input.a)), -min(_wgslsmith_mult_i32(global1.c, _wgslsmith_div_i32(var_0.c, 0i)), global3.x));
    var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-(~abs(vec3<i32>(1i, -28674i, var_0.c))), ~vec3<i32>(max(16262i, global3.x), -2147483647i, 2147483647i)), countOneBits(-16802i) >> (u_input.a % 32u));
    return min(u_input.b.wxy, u_input.b.xzy);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.b.xwz;
    var var_0 = _wgslsmith_f_op_f32(round(global4.x));
    global0 = array<u32, 20>();
    global3 = countOneBits(func_1());
    global0 = array<u32, 20>();
    global3 = select(~(-vec3<i32>(2147483647i, global1.c, -57414i) >> (select(vec3<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18013u, 20u)], 20u)]), vec3<u32>(u_input.a, 0u, 9328u), global1.b) % vec3<u32>(32u))) << (vec3<u32>(global0[_wgslsmith_index_u32(~abs(global0[_wgslsmith_index_u32(0u, 20u)]), 20u)], u_input.a, ~4294967295u) % vec3<u32>(32u)), func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(702f, global4.x), global1.a, global1.b))), global1.b, ~(-2147483647i)), Struct_2(vec2<f32>(1247f, _wgslsmith_f_op_f32(-global1.a.x)), global1.b, -abs(0i)), u_input.b.zyx), any(vec4<bool>(true, (global1.b && global1.b) && true, all(vec3<bool>(false, true, false)), false)));
    global3 = u_input.b.zxy;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~vec3<u32>(34373u, global0[_wgslsmith_index_u32(40833u, 20u)], 8803u)) >> (vec3<u32>(1u, countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(7832u, 20u)], u_input.a, u_input.a, global0[_wgslsmith_index_u32(0u, 20u)]), vec4<u32>(1u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 66406u)), 20u)]), ~_wgslsmith_mod_u32(43587u, 1u)) % vec3<u32>(32u)), reverseBits(~_wgslsmith_sub_i32(~global1.c, abs(u_input.b.x))), vec2<i32>(max(firstLeadingBit(32342i), firstTrailingBit(0i)), 2147483647i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.x), -1204f, any(vec2<bool>(global1.b, global1.b))))))), ~1u);
}

