struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 77659u;

var<private> global1: array<f32, 10> = array<f32, 10>(306f, 315f, 237f, -1000f, -874f, -2562f, -1000f, 350f, 241f, -126f);

var<private> global2: array<bool, 3> = array<bool, 3>(false, false, false);

var<private> global3: array<u32, 15>;

var<private> global4: i32 = -26968i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = ~(~1u);
    global4 = countOneBits(_wgslsmith_dot_vec3_i32(select(reverseBits(vec3<i32>(0i, arg_0.a, arg_1.a)), vec3<i32>(-50261i, u_input.a, arg_1.a), !global2[_wgslsmith_index_u32(u_input.c.x, 3u)]), ~vec3<i32>(arg_0.a, arg_1.a, arg_0.a) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, arg_0.a, u_input.a), vec3<i32>(1i, 11578i, arg_1.a)))) << (60852u % 32u);
    global3 = array<u32, 15>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(156f, 592f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], -198f), vec2<f32>(global1[_wgslsmith_index_u32(1u, 10u)], -1032f))))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], 1000f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(0u, 10u)], 347f), _wgslsmith_div_vec2_f32(vec2<f32>(2728f, 1975f), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 851f)), select(global2[_wgslsmith_index_u32(31775u, 3u)], false, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], -836f))), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(15166u, 10u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(44003u, 10u)], -1315f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 3u)])))))))));
    global4 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), u_input.b.yz);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 373f) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 10u)]));
}

fn func_2(arg_0: i32) -> f32 {
    global4 = arg_0;
    var var_0 = 1000f;
    global0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, -607f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_f_op_f32(abs(-245f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(62594u, 15u)], 10u)], 379f, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)])))) * vec4<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 15u)], 10u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(33483u, 10u)] + global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 15u)], 15u)] ^ u_input.c.x, 10u)]), _wgslsmith_f_op_f32(f32(-1f) * -1395f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(9221i), Struct_1(u_input.b.x))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, global1[_wgslsmith_index_u32(8076u, 10u)], 429f, global1[_wgslsmith_index_u32(0u, 10u)]), vec4<f32>(759f, 1053f, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(38715u, 10u)]), global2[_wgslsmith_index_u32(0u, 3u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(69794u, 10u)], -937f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(111999u, 15u)], 15u)], 10u)], 805f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), global1[_wgslsmith_index_u32(u_input.c.x, 10u)], -1106f, -179f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-600f, -138f, 1000f, 907f), vec4<f32>(1000f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)], 481f))))))), !select(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(9056u, 3u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 15u)], 3u)], false), vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17179u, 15u)], 15u)], 3u)], global2[_wgslsmith_index_u32(66631u, 3u)], global2[_wgslsmith_index_u32(u_input.c.x, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]), global2[_wgslsmith_index_u32(0u, 3u)]), !select(vec4<bool>(false, false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 3u)], false, global2[_wgslsmith_index_u32(2626u, 3u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 3u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 15u)], 3u)], false, false)), true)));
    return -375f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(189f)), -216f));
    var var_1 = _wgslsmith_f_op_f32(func_2(u_input.b.x | ~_wgslsmith_add_i32(~(-22507i), u_input.b.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(10741u, 10u)], _wgslsmith_f_op_f32(sign(1143f)), global1[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1017f, global1[_wgslsmith_index_u32(1u, 10u)], -933f, 332f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 15u)], 10u)], 1773f, 269f, 476f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global1[_wgslsmith_index_u32(36958u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)])))));
    global3 = array<u32, 15>();
    let var_3 = (vec3<i32>(_wgslsmith_div_i32(22565i, abs(13075i)), -2654i, _wgslsmith_dot_vec3_i32(min(u_input.b, vec3<i32>(u_input.b.x, 2147483647i, u_input.a)), select(vec3<i32>(u_input.b.x, 1i, 23458i), u_input.b, vec3<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 3u)], false, false)))) ^ u_input.b) ^ u_input.b;
    return Struct_1(~1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_i32(u_input.a, 0i));
    let var_1 = Struct_1(min(var_0.a, ~(-47906i)));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(21076u, u_input.c.x >> (~(~u_input.c.x) % 32u)), var_1.a, reverseBits(-vec4<i32>(func_1().a, -u_input.b.x, 17629i, ~6372i)), _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(0u, 15u)]), 1u, _wgslsmith_clamp_u32(65550u, 111912u, 43412u), 3457u) | _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21231u, 15u)], 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(12468u, 15u)], 59914u, global3[_wgslsmith_index_u32(1013u, 15u)], 1u), vec4<u32>(11553u, u_input.c.x, 0u, 1u))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(global3[_wgslsmith_index_u32(0u, 15u)], 43701u, 27902u, 40827u), vec4<u32>(35826u, 4294967295u, u_input.c.x, 94096u) ^ vec4<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 15u)], u_input.c.x, global3[_wgslsmith_index_u32(226u, 15u)]), global2[_wgslsmith_index_u32(u_input.c.x ^ 30015u, 3u)]), ~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(6471u, 15u)], 16852u, u_input.c.x) & ~vec4<u32>(0u, 4294967295u, u_input.c.x, 56283u))));
}

