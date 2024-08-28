struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(3870u, 0u, 38658u, 10721u, 51482u, 33977u, 1u, 1u, 0u, 4294967295u, 0u, 31007u, 3740u, 1u, 64331u, 1u, 37755u, 1u, 4294967295u, 1u, 0u);

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: Struct_1;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    global1 = global2.b;
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 349f, 1067f, 666f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, global2.a.x, global2.a.x, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(547f, arg_0, 1086f, -301f) - vec4<f32>(arg_0, 122f, arg_0, global2.a.x)), vec4<bool>(true, true, global1.x, global1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1324f, -445f, 822f, 298f) - vec4<f32>(global2.a.x, arg_0, global2.a.x, 544f))))), Struct_1(global2.a, !select(!vec4<bool>(false, global1.x, global1.x, false), global2.b, vec4<bool>(true, false, true, global2.c.x)), vec3<bool>(any(!global1.wzx), _wgslsmith_f_op_f32(449f + -1113f) < _wgslsmith_f_op_f32(global2.a.x + 535f), true)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(79010u, 4294967295u)), 21u)];
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(12786i, ~u_input.c.x, abs(u_input.c.x), u_input.c.x), ~(~vec4<i32>(u_input.c.x, abs(32799i), -45612i, _wgslsmith_mod_i32(u_input.b, u_input.c.x))), max(_wgslsmith_clamp_vec4_i32((vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i) ^ vec4<i32>(0i, u_input.c.x, -41665i, u_input.b)) >> (vec4<u32>(40812u, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], 1u) % vec4<u32>(32u)), (vec4<i32>(u_input.b, u_input.b, u_input.c.x, -2147483647i) << (vec4<u32>(0u, 1u, 4294967295u, u_input.e.x) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)], u_input.a), vec4<u32>(u_input.a, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 18956i), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), u_input.b, u_input.b)), vec4<i32>(25280i, -2147483647i, 2147483647i, u_input.c.x)));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.a.x, 1646f, 526f))) + global2.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 405f, 513f), vec3<f32>(var_0.b.a.x, 1935f, arg_0), vec3<bool>(false, global1.x, global1.x)))))), !select(!select(var_0.b.b, var_0.b.b, global1.x), !global2.b, select(select(var_0.b.b, vec4<bool>(true, global1.x, global2.b.x, true), var_0.b.b), !global2.b, select(vec4<bool>(global2.b.x, var_0.b.b.x, global1.x, true), vec4<bool>(false, false, global1.x, false), false))), vec3<bool>(all(var_0.b.c), any(global1.wz), min(firstLeadingBit(4294967295u), 0u >> (global0[_wgslsmith_index_u32(4294967295u, 21u)] % 32u)) <= _wgslsmith_dot_vec3_u32(vec3<u32>(32876u, 66630u, u_input.e.x) >> (vec3<u32>(u_input.e.x, 43063u, 0u) % vec3<u32>(32u)), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(12057u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]))));
    return !global1.wy;
}

fn func_2() -> Struct_1 {
    let var_0 = global1.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(global2.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, -653f, 645f) + vec3<f32>(global2.a.x, 1000f, global2.a.x)), _wgslsmith_f_op_vec3_f32(global2.a + global2.a)))), vec4<bool>(1i != u_input.c.x, any(select(vec2<bool>(global1.x, false), func_3(-348f), true)), select(global1.x, false, global1.x | (global2.c.x | true)), true), select(vec3<bool>(true, global2.b.x, true), vec3<bool>(global1.x, true, true), global1.xyy));
    var var_2 = _wgslsmith_f_op_f32(select(-1390f, -1189f, 1u >= global0[_wgslsmith_index_u32(734u, 21u)]));
    var var_3 = min(u_input.b, u_input.c.x);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(341f + -1632f), global2.a.x, _wgslsmith_f_op_f32(-global2.a.x)) + vec4<f32>(-759f, _wgslsmith_f_op_f32(-global2.a.x), var_1.a.x, -1914f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.x, var_1.a.x, var_1.a.x, global2.a.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -1000f, global2.a.x) * vec4<f32>(435f, global2.a.x, global2.a.x, var_1.a.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, var_1.a.x, global2.a.x, var_1.a.x)))))), var_1);
    return var_4.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = arg_2;
    var var_1 = Struct_2(vec4<f32>(841f, global2.a.x, var_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2463f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))))), func_2());
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - var_0.a.x) + 1151f), _wgslsmith_f_op_f32(trunc(1499f)), -409f) - _wgslsmith_f_op_vec3_f32(ceil(global2.a))), global2.b, var_1.b.b.wzx);
    global1 = select(select(!(!arg_1.b), vec4<bool>(arg_1.c.x, true, var_1.b.c.x & var_1.b.c.x, true), ~_wgslsmith_add_i32(-1i, 0i) < _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, 2147483647i), u_input.c.x)), var_2.b, global1.x);
    let var_3 = 1000f;
    return 13888u << (0u % 32u);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1.b.x;
    let var_1 = select(true, func_4(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1707f), _wgslsmith_f_op_f32(arg_1.a.x * -673f), global2.a.x), func_2(), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1237f)) == 15341u, var_0);
    global2 = Struct_1(vec3<f32>(-291f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -522f))), arg_1.b, global2.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a.x - 1607f), _wgslsmith_f_op_f32(-global2.a.x))) * global2.a.x), -1170f));
    var var_3 = arg_1;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(!global2.b, global2.b, !global1.x);
    let var_0 = u_input.c.x;
    global0 = array<u32, 21>();
    var var_1 = select(vec3<i32>(~(var_0 | (var_0 & u_input.c.x)), var_0, ~func_1(_wgslsmith_mod_i32(0i, var_0), Struct_1(vec3<f32>(-906f, global2.a.x, global2.a.x), vec4<bool>(false, global2.c.x, global2.b.x, global1.x), global2.b.xxw))), -u_input.c, select(!(!global2.b.x || global1.x), false, !(!func_3(-853f).x)));
    var var_2 = _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * _wgslsmith_f_op_f32(-832f + -478f)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, global2.a.x, 2088f)) + func_2().a) + _wgslsmith_f_op_vec3_f32(-global2.a))), select(select(select(vec4<bool>(global2.b.x, false, global2.b.x, false), func_2().b, 1u <= global0[_wgslsmith_index_u32(40900u, 21u)]), vec4<bool>(true, true, any(global2.b), false), true), !func_2().b, any(global2.b)), global1.xwx);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(57655u, 7580u, 4294967295u), max(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], global0[_wgslsmith_index_u32(u_input.e.x, 21u)]), vec3<u32>(global0[_wgslsmith_index_u32(14058u, 21u)], 54005u, global0[_wgslsmith_index_u32(1u, 21u)])), select(vec3<u32>(27680u, 2383u, 35983u), vec3<u32>(u_input.d, 4294967295u, u_input.a), var_3.b.x)) << (abs(countOneBits(vec3<u32>(u_input.a, 10287u, global0[_wgslsmith_index_u32(43109u, 21u)]))) % vec3<u32>(32u)), vec3<u32>(~0u, u_input.a, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(50033u, 21u)] >> (17227u % 32u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(21912u, u_input.e.x), 21u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + 1180f))))), vec4<u32>(87642u, ~(abs(u_input.e.x) >> (~u_input.d % 32u)), ~firstLeadingBit(~1u), _wgslsmith_div_u32(u_input.e.x, 8692u)));
}

