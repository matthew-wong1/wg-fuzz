struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10>;

var<private> global1: f32 = 1437f;

var<private> global2: vec4<u32> = vec4<u32>(0u, 75609u, 0u, 101373u);

var<private> global3: vec3<u32>;

var<private> global4: array<i32, 26>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<u32> {
    global2 = arg_0;
    global0 = array<vec4<u32>, 10>();
    var var_0 = Struct_1(arg_0.x | 1u, vec3<u32>(u_input.b.x, ~(~countOneBits(arg_1.b.x)), _wgslsmith_add_u32(_wgslsmith_add_u32(global3.x, global3.x), arg_0.x) >> (~_wgslsmith_sub_u32(arg_1.e, 24672u) % 32u)), arg_1.d, arg_1.d, 32312u);
    var var_1 = vec4<i32>(firstTrailingBit(countOneBits(max(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(arg_1.b.x, 26u)], -41819i), global4[_wgslsmith_index_u32(14321u, 26u)]))), _wgslsmith_mod_i32(max(16855i, global4[_wgslsmith_index_u32(global2.x, 26u)]) ^ _wgslsmith_add_i32(43224i, global4[_wgslsmith_index_u32(4294967295u, 26u)]), abs(i32(-1i) * -1i)) << (countOneBits(_wgslsmith_add_u32(arg_1.b.x, ~1u)) % 32u), _wgslsmith_mult_i32(18872i, _wgslsmith_mult_i32(select(global4[_wgslsmith_index_u32(29402u, 26u)], max(global4[_wgslsmith_index_u32(27549u, 26u)], 10982i), select(false, false, true)), firstTrailingBit(u_input.a) >> (arg_1.b.x % 32u))), -1i);
    var var_2 = true;
    return var_0.b;
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    let var_0 = Struct_1(~89183u, func_3(select(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(~6479u, 10u)], vec4<u32>(u_input.b.x, 82464u, 37914u, global2.x)), vec4<u32>(global3.x, countOneBits(76452u), 13800u, _wgslsmith_sub_u32(global2.x, global2.x)), true), Struct_1(u_input.b.x, select(vec3<u32>(global3.x, 0u, 107239u), max(vec3<u32>(u_input.b.x, 24815u, 68596u), global2.yxz), true), -1000f, -1531f, ~select(global3.x, 0u, false))), _wgslsmith_f_op_f32(floor(667f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-552f * -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(arg_0 * arg_0)), arg_0)))), abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global2.xyx, vec3<u32>(46608u, global3.x, 30555u)), 1u), func_3(~global0[_wgslsmith_index_u32(global3.x, 10u)], Struct_1(u_input.b.x, global2.zzw, arg_0, -1000f, 4398u)).x)));
    let var_1 = var_0;
    var var_2 = firstTrailingBit(select(vec4<i32>(-25531i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(15594i, 2147483647i, -2147483647i), global4[_wgslsmith_index_u32(select(var_0.a, global3.x, false), 26u)]), u_input.a, _wgslsmith_mult_i32(33832i & global4[_wgslsmith_index_u32(43857u, 26u)], -2147483647i)), -(~vec4<i32>(global4[_wgslsmith_index_u32(17604u, 26u)], 4157i, u_input.c.x, 2147483647i)) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, 4294967295u, global2.x, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 10u)]) & ~vec4<u32>(1u, 0u, 0u, 1u)) % vec4<u32>(32u)), all(vec3<bool>(false, true, all(vec3<bool>(false, true, false))))));
    return ~u_input.c.x;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    return !select(true, true, true);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global4 = array<i32, 26>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1755f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1684f - -979f)))))) - _wgslsmith_f_op_f32(503f * _wgslsmith_f_op_f32(step(-1199f, 1536f))));
    var var_1 = select(reverseBits(-19621i), -77875i, func_4(func_2(-1759f), Struct_1(1u, global2.zyx & vec3<u32>(48437u, 30838u, global2.x), _wgslsmith_f_op_f32(trunc(2231f)), _wgslsmith_f_op_f32(-335f * 150f), u_input.b.x), 2147483647i, Struct_1(~91217u, max(global2.wxy, vec3<u32>(global3.x, global2.x, 48968u)), _wgslsmith_div_f32(-895f, -2089f), _wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_add_u32(0u, global2.x))) && any(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), arg_0.x)));
    let var_2 = 637f;
    global4 = array<i32, 26>();
    return Struct_1(~27895u, select(global2.wyx, ~countOneBits(vec3<u32>(244u, global3.x, 0u)), vec3<bool>(all(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(false, arg_0.x, false, arg_0.x))), arg_0.x, !(!arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-751f))), _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(sign(var_2)))), -482f, ~34500u & select(u_input.b.x, 0u, !(var_2 > -1491f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 10>();
    let var_0 = func_1(!vec3<bool>(true, any(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, true, true, true))));
    global3 = firstLeadingBit(select(~global2.xwx | ~vec3<u32>(u_input.b.x, var_0.a, u_input.b.x), ~var_0.b, select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))) << (vec3<u32>(0u, 0u, func_3(~min(vec4<u32>(global3.x, 42381u, global2.x, global3.x), vec4<u32>(4294967295u, u_input.b.x, global2.x, global2.x)), func_1(vec3<bool>(true, true, true))).x) % vec3<u32>(32u));
    let var_1 = func_1(select(vec3<bool>(true, true, func_3(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], var_0).x != ~var_0.a), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_2 = 76013u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-_wgslsmith_mult_i32(u_input.e.x, u_input.a) & global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, var_2, _wgslsmith_mult_u32(4294967295u, var_0.b.x)), 26u)], u_input.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(4294967295u, 26u)] << (0u % 32u), firstLeadingBit(0i)), ~0i, 1i), vec3<i32>(i32(-1i) * -14283i, u_input.d >> (~0u % 32u), global4[_wgslsmith_index_u32(global3.x >> (_wgslsmith_add_u32(1u, 33567u) % 32u), 26u)])));
}

