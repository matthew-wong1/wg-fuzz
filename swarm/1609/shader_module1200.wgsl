struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(403i, i32(-2147483648), i32(-2147483648), 42817i, i32(-2147483648), -7742i, -1971i, -33512i, 8223i, -17407i, -1i, 0i, 1i, 330i, i32(-2147483648), -27540i, -1i, 0i, 30627i, -29884i, i32(-2147483648), 62003i, -16449i, 2147483647i, -4464i, 23579i, i32(-2147483648), 2147483647i, -49249i, 1i, 7007i, i32(-2147483648));

var<private> global1: array<u32, 13>;

var<private> global2: array<f32, 18>;

var<private> global3: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    return 66651u;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32) -> f32 {
    global1 = array<u32, 13>();
    global3 = vec3<i32>(select(~global3.x, _wgslsmith_mult_i32(select(global3.x, global3.x, true), global3.x), all(vec2<bool>(true, false)) || true) | ~(-(~2147483647i)), _wgslsmith_add_i32(select(abs(1i), global3.x, true), -1i), firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, ~8439u), 32u)]));
    var var_0 = firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec2_u32(max(~u_input.a, abs(u_input.a)), vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), u_input.a)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -585f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, 134f) * 1850f), -434f, true))));
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(arg_0.wxw, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 18u)] + arg_0.x), _wgslsmith_f_op_f32(select(arg_0.x, arg_1.a, false)), _wgslsmith_f_op_f32(-776f - -815f)) * _wgslsmith_f_op_vec3_f32(sign(arg_0.yww)))), -1i, countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, global3.x << (u_input.a.x % 32u), -global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 32u)], -16731i), _wgslsmith_add_vec4_i32(vec4<i32>(global3.x, 1i, -24106i, 7325i) << (vec4<u32>(5972u, global1[_wgslsmith_index_u32(24032u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)]) % vec4<u32>(32u)), abs(vec4<i32>(global3.x, global0[_wgslsmith_index_u32(var_0.x, 32u)], -57089i, -46917i))))));
    return _wgslsmith_f_op_f32(arg_1.a + 245f);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(func_2(true, Struct_2(vec3<f32>(1000f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)], 18u)], global2[_wgslsmith_index_u32(33247u, 18u)]), global3.x, vec4<i32>(global3.x, 41654i, -1i, global0[_wgslsmith_index_u32(0u, 32u)])), global3.yx, false), 18u)], _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(9720u, 18u)])), _wgslsmith_f_op_f32(func_3(vec4<f32>(global2[_wgslsmith_index_u32(23459u, 18u)], global2[_wgslsmith_index_u32(132607u, 18u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 18u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 18u)]), Struct_3(115f), global2[_wgslsmith_index_u32(0u, 18u)])))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 43865u), 18u)])), 1061f, 1000f)), _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(max(vec2<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 32u)], global3.x), vec2<i32>(global3.x, 1i)), vec2<i32>(1i, 72027i)), vec2<i32>(~(-2147483647i), 0i) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(global3.yy, vec2<i32>(14744i, 39391i)), global3.x | global0[_wgslsmith_index_u32(0u, 32u)])), select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6525u, 13u)], 32u)], countOneBits(-global3.x), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 32u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], -1i), global3.yx))), ~(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], -1i, global3.x, global0[_wgslsmith_index_u32(1u, 32u)])), !any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))));
    let var_1 = countOneBits(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) | (vec3<u32>(1u, 45182u, u_input.a.x) >> (vec3<u32>(1u, 7726u, 1u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(94385u, 13u)], u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, global1[_wgslsmith_index_u32(139546u, 13u)])), vec3<u32>(107788u, u_input.a.x, 3288u))), ~(~vec3<u32>(u_input.a.x, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10493u, 13u)], 13u)]) & ~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], 70246u))));
    global2 = array<f32, 18>();
    var var_2 = Struct_1(any(!vec3<bool>(var_0.c.x != 1i, select(true, false, true), true)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstTrailingBit(34876u), 18u)] * _wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(852f)), _wgslsmith_div_f32(-230f, var_0.a.x)), 2770f, var_0.a.x))), ~(~vec4<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(7069u, 13u)], 62899u), 2910u, _wgslsmith_div_u32(u_input.a.x, 35635u), ~u_input.a.x)));
    var var_3 = vec4<u32>(~firstLeadingBit(max(~u_input.a.x, u_input.a.x)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(22603u), ~_wgslsmith_div_u32(u_input.a.x, var_2.c.x) ^ _wgslsmith_mult_u32(u_input.a.x, 102015u)), 13u)], 13u)], global1[_wgslsmith_index_u32(~var_2.c.x, 13u)], ~(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 62965u), u_input.a)) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.x, 0u, 1u, 1u), var_2.c)));
    return Struct_1(true || !any(vec3<bool>(false, var_2.a, var_2.a)), vec4<f32>(_wgslsmith_f_op_f32(min(var_2.b.x, var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1386f), _wgslsmith_f_op_f32(f32(-1f) * -321f), global1[_wgslsmith_index_u32(0u, 13u)] < 28506u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b.x * -153f), var_0.a.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-696f, 763f))))), _wgslsmith_f_op_f32(ceil(766f))), vec4<u32>(global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(18040u, var_1.x, 1u, var_3.x), var_2.c, vec4<u32>(var_1.x, 0u, 1u, global1[_wgslsmith_index_u32(var_3.x, 13u)])), abs(vec4<u32>(var_2.c.x, 4294967295u, u_input.a.x, var_1.x))), 4294967295u, true), 13u)], global1[_wgslsmith_index_u32(var_1.x, 13u)], _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(106325u, 13u)]), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<f32>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(11999u, 18u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 18u)]))) - vec3<f32>(959f, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], 787f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -812f), -281f, global2[_wgslsmith_index_u32(~28797u, 18u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1034f, -1331f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 18u)])))))))));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zz);
}

