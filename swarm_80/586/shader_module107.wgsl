struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -138f;

var<private> global1: array<bool, 22> = array<bool, 22>(true, false, true, false, true, false, false, false, true, false, false, true, false, false, false, true, false, false, true, false, true, false);

var<private> global2: array<vec3<i32>, 10>;

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(851f, -877f, -2139f))))))));
    let var_2 = Struct_1(vec3<i32>(~(-1i), _wgslsmith_mult_i32(-46812i >> (0u % 32u), _wgslsmith_add_i32(u_input.e, -3951i)), ~u_input.e) >> (u_input.a.wwx % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-var_1.yx));
    let var_3 = var_2;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1050f) - _wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_2.b.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(690f))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, -1000f)) + var_2.b) * _wgslsmith_f_op_vec2_f32(-var_1.xy)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = ~min(~(arg_2.a.x << (70540u % 32u)) & -2147483647i, 83994i);
    return vec2<i32>(-(arg_2.a.x ^ u_input.e), select(var_0, -1i, !(!(global1[_wgslsmith_index_u32(u_input.d.x, 22u)] | false))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = -4020i;
    var var_1 = vec2<bool>(global1[_wgslsmith_index_u32(~(~u_input.c), 22u)], all(select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], false, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(96473u, 22u)]), vec4<bool>(global1[_wgslsmith_index_u32(40781u, 22u)], false, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(83281u, 22u)], global1[_wgslsmith_index_u32(u_input.d.x, 22u)], true, global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(79841u, 22u)], global1[_wgslsmith_index_u32(u_input.c, 22u)]))), select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(47867u, 22u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(10297u, 22u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(6035u, 22u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(54071u, 22u)], global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(18066u, 22u)], false), global1[_wgslsmith_index_u32(4294967295u, 22u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 22u)], true, global1[_wgslsmith_index_u32(u_input.b, 22u)]), vec4<bool>(global1[_wgslsmith_index_u32(57087u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)], true))), true)));
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x << (~_wgslsmith_dot_vec3_u32(u_input.d.wyy, u_input.d.zxz) % 32u), u_input.d.x >> (~firstLeadingBit(u_input.a.x) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.a.x, u_input.b), abs(2279u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 35958u), ~u_input.d.xyx))), 10u)], _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-207f, arg_0.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1280f, _wgslsmith_f_op_f32(-arg_0.b.x))))));
    var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.e, 1i), arg_0.a.x) & u_input.e;
    var var_3 = select(vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], var_1.x)) == !global1[_wgslsmith_index_u32(73307u, 22u)], !var_1.x), select(!vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(u_input.b, 22u)]), vec2<bool>(var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_2.b.x) != arg_0.b.x), vec2<bool>(true, true)), select(select(vec2<bool>(any(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 22u)])), true), vec2<bool>(true, true), vec2<bool>(var_1.x, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], var_1.x, true, global1[_wgslsmith_index_u32(0u, 22u)])))), !select(select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(1u, 22u)], false), true), vec2<bool>(var_1.x, false), all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 22u)]))), select(select(select(vec2<bool>(var_1.x, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], true), var_1.x), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], var_1.x), vec2<bool>(true, false), global1[_wgslsmith_index_u32(0u, 22u)]), var_1.x && var_1.x), vec2<bool>(any(vec4<bool>(false, global1[_wgslsmith_index_u32(23260u, 22u)], var_1.x, false)), var_1.x || global1[_wgslsmith_index_u32(u_input.c, 22u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(32020u, 22u)]))));
    return select(vec4<bool>(true, true, all(vec2<bool>(var_1.x, any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 22u)], true, true)))), !var_1.x), vec4<bool>(all(!select(vec4<bool>(true, false, false, var_3.x), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false))), (true & (global1[_wgslsmith_index_u32(u_input.c, 22u)] && global1[_wgslsmith_index_u32(39592u, 22u)])) != any(!vec3<bool>(var_3.x, true, var_3.x)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~51108u, ~4294967295u), 22u)], any(select(!vec2<bool>(global1[_wgslsmith_index_u32(22501u, 22u)], var_3.x), !vec2<bool>(var_3.x, global1[_wgslsmith_index_u32(u_input.b, 22u)]), all(vec2<bool>(false, var_3.x))))), any(vec3<bool>(!(false & global1[_wgslsmith_index_u32(39264u, 22u)]), var_3.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-countOneBits(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, 4294967295u), 10u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(581f, -1134f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(770f, -1000f), vec2<f32>(-1000f, 1047f))), vec2<f32>(-990f, 1000f)))) - _wgslsmith_f_op_vec2_f32(func_1(~u_input.a.x << (abs(u_input.c) % 32u)))));
    global3 = array<Struct_1, 15>();
    let var_1 = vec3<u32>(1u, max(max(u_input.d.x, u_input.a.x), ~abs(0u)), _wgslsmith_clamp_u32(46231u, 4294967295u, ~(~1u))) >> (~vec3<u32>(0u, 37141u, u_input.c) % vec3<u32>(32u));
    let var_2 = ~var_1.x;
    let var_3 = Struct_1(vec3<i32>(select(~(-4645i), firstTrailingBit(-39048i), global1[_wgslsmith_index_u32(var_1.x, 22u)]), 0i, 1i | var_0.a.x) & -reverseBits(vec3<i32>(var_0.a.x, -40356i, -2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.b))));
    var var_4 = func_2(~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a.x, -16164i, 50055i), global2[_wgslsmith_index_u32(var_1.x, 10u)]) << (1506u % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_3.a.x, u_input.e, 2147483647i), vec3<i32>(var_3.a.x, 0i, 1i))), Struct_1(-(~reverseBits(vec3<i32>(-1i, -29769i, -37202i))), vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(sign(-1552f)))), global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~4294967295u, ~select(var_1.x, 1u, false), firstLeadingBit(_wgslsmith_mult_u32(var_2, var_2))), 15u)]);
    var var_5 = ~vec2<u32>(4294967295u, 4294967295u);
    global3 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-456f, -209f, var_0.b.x, -794f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1174f, var_3.b.x, 102f, 1010f)), func_3(Struct_1(var_3.a, _wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(var_0.b.x, 1216f)))))), countOneBits(u_input.d), -421f, vec3<i32>(countOneBits(-u_input.e), ~(-1i ^ firstTrailingBit(-2147483647i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(var_0.a.zz), -max(vec2<i32>(2147483647i, u_input.e), var_3.a.xy))), abs(reverseBits(~var_3.a)));
}

