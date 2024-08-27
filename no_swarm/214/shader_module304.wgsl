struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: array<i32, 23>;

var<private> global2: array<u32, 15> = array<u32, 15>(28461u, 45170u, 50199u, 0u, 4294967295u, 1u, 71470u, 82748u, 18602u, 17912u, 4294967295u, 4305u, 0u, 0u, 4294967295u);

var<private> global3: u32 = 4294967295u;

var<private> global4: f32 = 635f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    global0 = array<vec4<u32>, 21>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_1.b.x)))))), arg_1.d) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, 702f) + vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.b.x)), arg_1.b.x)) * arg_1.b));
    var var_1 = ~global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1.c.x, ~abs(0u)), 21u)];
    return -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, abs(~u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(~14250i, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(4294967295u, 23u)], -21721i), 0i ^ arg_1.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_1.a.x, 2147483647i, 4444i, 33527i))), u_input.a));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_1(arg_2.a.xwy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -911f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-470f, arg_3)))))), select(u_input.d, u_input.d, vec3<bool>(!any(vec4<bool>(false, false, false, true)), false, false)), arg_3);
    global3 = u_input.c.x;
    let var_1 = Struct_2(_wgslsmith_div_vec4_i32(arg_2.d, _wgslsmith_sub_vec4_i32(u_input.a, -u_input.a)), 2147483647i, func_3(true, var_0), vec4<i32>(1i >> ((~u_input.c.x << (_wgslsmith_clamp_u32(65231u, 0u, var_0.c.x) % 32u)) % 32u), global1[_wgslsmith_index_u32(32127u, 23u)], ~arg_0.c, 2147483647i << (select(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.x, 15u)], 15u)], 0u, true) % 32u)), ~firstTrailingBit(_wgslsmith_dot_vec2_i32(-var_0.a.zy, ~arg_0.d.xx)));
    global3 = _wgslsmith_add_u32(0u, ~(~firstLeadingBit(var_0.c.x)));
    var var_2 = ~arg_1;
    return !(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), true)));
}

fn func_2() -> Struct_1 {
    global1 = array<i32, 23>();
    let var_0 = select(select(vec4<bool>(true, true, _wgslsmith_f_op_f32(1377f + -1000f) < _wgslsmith_f_op_f32(step(527f, -1000f)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), vec4<bool>(all(vec4<bool>(false, true, false, true)) || true, abs(global1[_wgslsmith_index_u32(u_input.d.x, 23u)]) < _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 23u)], -2147483647i), false, true), true), vec4<bool>(false, select(false, true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))), !(any(vec4<bool>(false, true, false, false)) | all(vec4<bool>(false, false, true, true)))), !func_4(Struct_2(u_input.a & vec4<i32>(-24135i, 2147483647i, global1[_wgslsmith_index_u32(48935u, 23u)], -15894i), i32(-1i) * -3635i, -19287i, countOneBits(u_input.a), func_3(false, Struct_1(u_input.a.zwx, vec2<f32>(-1297f, 1807f), u_input.d, -501f))), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, 7347u), 15u)], Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 0i), _wgslsmith_mult_i32(-23362i, u_input.a.x), -604i, -u_input.a, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -812f)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -263f), -1000f, 1f, _wgslsmith_f_op_f32(-507f * _wgslsmith_f_op_f32(f32(-1f) * -1385f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-664f, -701f, _wgslsmith_f_op_f32(abs(-316f)), -1000f)))));
    global1 = array<i32, 23>();
    var var_2 = -751f;
    return Struct_1(u_input.a.xwx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(trunc(-2802f)))))), _wgslsmith_mult_vec3_u32(~(u_input.d >> (abs(vec3<u32>(4294967295u, 50216u, 4294967295u)) % vec3<u32>(32u))), select(vec3<u32>(29637u, 2618u, u_input.d.x), u_input.d, !var_0.xyy)), -354f);
}

fn func_1(arg_0: vec2<i32>) -> vec3<i32> {
    global0 = array<vec4<u32>, 21>();
    global0 = array<vec4<u32>, 21>();
    var var_0 = Struct_1(_wgslsmith_div_vec3_i32(u_input.a.wyy, u_input.a.yww), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(-364f))), firstTrailingBit(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27234u, 15u)], 15u)], u_input.d.x, 1u), u_input.d, vec3<u32>(u_input.c.x, 1u, global2[_wgslsmith_index_u32(4294967295u, 15u)])) | select(u_input.d, u_input.d, vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(305f, 1285f)))));
    var var_1 = func_2();
    global4 = 1480f;
    return vec3<i32>(~_wgslsmith_clamp_i32(arg_0.x, _wgslsmith_div_i32(~var_0.a.x, countOneBits(1i)), select(2147483647i, ~1i, 588f >= var_1.d)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(func_2().a.x, ~27408i), i32(-1i) * -9604i, var_1.a.x), ~countOneBits(-1i));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.d)), arg_0.d, arg_0.b.x)))));
    let var_1 = min(u_input.a.xyw, vec3<i32>(func_2().a.x, 0i >> (arg_0.c.x % 32u), _wgslsmith_mult_i32(-1i, u_input.a.x ^ func_2().a.x)));
    global2 = array<u32, 15>();
    let var_2 = vec3<u32>(abs(49743u), ~(~(abs(96500u) >> (~global2[_wgslsmith_index_u32(u_input.c.x, 15u)] % 32u))), arg_0.c.x);
    var var_3 = true;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(_wgslsmith_mult_vec3_i32(func_1(_wgslsmith_mod_vec2_i32(u_input.a.yy, u_input.a.ww)), _wgslsmith_add_vec3_i32(vec3<i32>(-18521i, 0i, -45545i), u_input.a.yxx) << (u_input.d % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(min(368f, -469f)), 155f), u_input.d, _wgslsmith_f_op_f32(sign(-2226f))));
    global3 = _wgslsmith_mult_u32(46248u, var_0.c.x);
    let var_1 = -1000f;
    var var_2 = Struct_1(u_input.a.xzx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(-400f, var_1))))) * vec2<f32>(-550f, _wgslsmith_f_op_f32(var_0.b.x + var_1))), vec3<u32>(~_wgslsmith_clamp_u32(47913u, min(1u, 31980u), global2[_wgslsmith_index_u32(75455u, 15u)] << (u_input.c.x % 32u)), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, var_0.c.x), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)]), ~(~57519u)), var_1);
    let var_3 = _wgslsmith_f_op_f32(1682f * _wgslsmith_f_op_f32(select(412f, var_0.d, false)));
    var var_4 = all(!(!vec4<bool>(true, true, any(vec2<bool>(true, true)), true)));
    var var_5 = func_5(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d, -903i);
}

