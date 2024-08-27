struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 26> = array<i32, 26>(-18116i, -1i, 0i, 44398i, 34187i, 0i, 60484i, 11269i, 1i, 34651i, 1i, -1i, 41700i, 1i, 52849i, 3245i, i32(-2147483648), 5203i, -1i, -24508i, -3258i, -49268i, i32(-2147483648), -15929i, 16364i, -1i);

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    let var_0 = arg_2;
    global1 = array<i32, 26>();
    let var_1 = -762f;
    var var_2 = 28803i;
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(312f, arg_2.a))) - _wgslsmith_f_op_vec2_f32(-arg_3.d.a.yz)))));
    return global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, ~(~min(7586u, arg_3.a))), 26u)];
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_3) -> f32 {
    let var_0 = !select(select(vec2<bool>(arg_2.d.c, arg_2.d.b < arg_2.d.b), vec2<bool>(1707f == arg_2.d.a.x, select(arg_2.d.c, arg_2.d.c, false)), true), vec2<bool>(false, true), -781f < arg_2.d.b);
    var var_1 = abs(~vec2<u32>(arg_0, reverseBits(reverseBits(arg_2.a))));
    var var_2 = abs(~(-_wgslsmith_sub_i32(-1i, -1i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(arg_2.d.a.xy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.d.b, arg_2.d.b) * arg_2.d.a.zz) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-564f, arg_2.d.b), vec2<f32>(863f, 1499f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.d.a.x, arg_2.d.b), arg_2.d.a.yx)))), _wgslsmith_f_op_vec2_f32(max(arg_2.d.a.yy, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.d.b, arg_2.d.a.x), _wgslsmith_div_vec2_f32(arg_2.d.a.yz, arg_2.d.a.zx), select(false, false, false)))))))));
    global0 = !(false || arg_2.d.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.d.a.x))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.d.a.x, -620f, true)), 1000f)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(4294967295u, ~vec4<i32>(global1[_wgslsmith_index_u32(~1u, 26u)], func_3(-115f, global1[_wgslsmith_index_u32(1u, 26u)], Struct_2(arg_1.x), Struct_3(18128u, vec4<i32>(arg_0.x, global1[_wgslsmith_index_u32(38762u, 26u)], u_input.d.x, u_input.b.x), vec4<i32>(u_input.e, global1[_wgslsmith_index_u32(13754u, 26u)], 2147483647i, arg_0.x), global2[_wgslsmith_index_u32(18582u, 7u)])), -13437i, reverseBits(-2147483647i)), Struct_3(abs(4294967295u), vec4<i32>(arg_0.x, ~arg_0.x, ~2147483647i, arg_0.x), vec4<i32>(-1i, -15508i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(30296u, 26u)], 1i, 2147483647i, arg_0.x), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], -11483i, -31786i, -2147483647i)), -1i), global2[_wgslsmith_index_u32(firstLeadingBit(reverseBits(4294967295u)), 7u)])))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1246f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1084f)), 1000f, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1501f), -2634f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f + -1000f)))))));
    global0 = 1u <= ~reverseBits(~select(33296u, 1u, false));
    let var_2 = countOneBits(_wgslsmith_div_i32(u_input.c.x, global1[_wgslsmith_index_u32(1u, 26u)]));
    global0 = any(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true), vec3<bool>(!any(vec2<bool>(true, true)), true, (395f < arg_1.x) == true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), !any(vec3<bool>(false, true, true)))));
    return 549f;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1489f, 1143f, 831f, 732f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1182f, 1491f, -1411f, 1841f)))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1508f, -308f, -127f, -545f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(921f, 519f, 1385f, 726f))))))));
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -631f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.d, var_0.yy)) + _wgslsmith_f_op_f32(-var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f - _wgslsmith_f_op_f32(f32(-1f) * -134f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(647f - 1407f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-485f * -921f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(vec2<u32>(1u, 1u))), -690f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(func_1(vec2<u32>(8414u, 52681u))))))));
    global1 = array<i32, 26>();
    global0 = true;
    let var_2 = Struct_4(u_input.a | u_input.a, ~(~(~(~vec2<u32>(1u, 1u)))));
    var var_3 = global2[_wgslsmith_index_u32(15708u, 7u)];
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, var_2.b.x, ~var_2.b.x), ~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b.x, var_2.b.x, 29579u), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_2.b.x, 0u), vec3<u32>(var_2.b.x, 4294967295u, var_2.b.x))))), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_2.a.x, global1[_wgslsmith_index_u32(4294967295u, 26u)], -33471i, u_input.d.x)), -vec4<i32>(-14216i, -1i, var_2.a.x, global1[_wgslsmith_index_u32(4294967295u, 26u)])), -(~(-13673i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-38198i, -45352i), var_2.a.yz), i32(-1i) * -8135i), vec2<i32>(-32472i ^ ~var_2.a.x, -11035i & _wgslsmith_add_i32(~var_2.a.x, 18353i)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(-var_2.a.xx, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, u_input.a.x), vec2<i32>(0i, var_2.a.x)), u_input.c, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.b.x), var_2.a.yx))), -vec2<i32>(global1[_wgslsmith_index_u32(var_2.b.x, 26u)] ^ var_2.a.x, global1[_wgslsmith_index_u32(~1u, 26u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1289f)))));
}

