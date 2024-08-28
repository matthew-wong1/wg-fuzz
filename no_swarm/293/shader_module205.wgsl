struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<bool, 22> = array<bool, 22>(false, false, true, false, false, true, true, false, true, true, true, false, false, true, false, false, true, false, false, true, false, false);

var<private> global2: vec2<i32> = vec2<i32>(-50921i, 2147483647i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>) -> vec4<i32> {
    global1 = array<bool, 22>();
    var var_0 = select(select(u_input.a.zx, select(vec2<u32>(0u, 1u), ~firstTrailingBit(vec2<u32>(65918u, 0u)), !(arg_0.x != true)), !((global2.x < global2.x) & global1[_wgslsmith_index_u32(0u, 22u)])), ~firstLeadingBit(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 5935u)), ~vec2<u32>(0u, u_input.a.x))), any(vec3<bool>((-1i <= global2.x) & (global1[_wgslsmith_index_u32(u_input.b, 22u)] || arg_0.x), any(select(arg_0.zz, vec2<bool>(arg_0.x, arg_0.x), global1[_wgslsmith_index_u32(u_input.b, 22u)])), true)));
    var var_1 = all(select(select(arg_0.www, vec3<bool>(!arg_0.x, !global1[_wgslsmith_index_u32(arg_1.x, 22u)], false), true), arg_0.ywz, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-905f, 1078f, -480f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 424f, 1063f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1512f), -1509f, _wgslsmith_f_op_f32(floor(-1212f))))))));
    var var_3 = Struct_1(!vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 22u)]), !(!all(select(arg_0, arg_0, false))), 29422i);
    return vec4<i32>(50194i, global2.x, var_3.c, u_input.d >> (12193u % 32u));
}

fn func_2(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_3(func_3(vec4<bool>(true, true, false, !arg_0.d), vec3<u32>(7755u, _wgslsmith_div_u32(u_input.a.x, 2870u), _wgslsmith_add_u32(18487u, 1u))) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(-3222f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(652f * -468f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.c.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 742f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b, arg_0.c.x)))), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(96646u, 22u)]))))), (all(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], true, arg_0.d), vec3<bool>(false, arg_0.d, true), true)) | true) || global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zy, u_input.a.zx), abs(u_input.a.xx)), abs(firstLeadingBit(u_input.b)), any(vec2<bool>(true, true))), 22u)]);
    var var_1 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(var_0.d, true), vec2<bool>(all(vec2<bool>(true, false)), !var_0.d)), arg_0.d, ~_wgslsmith_clamp_i32(reverseBits(u_input.d), 1i, arg_0.a.x >> (15439u % 32u))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1143f), arg_0.c.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + -1000f), 5822i), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], select(~arg_0.a.x, 20597i, true) <= 0i));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b)) + var_0.b) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1785f + -1295f), _wgslsmith_f_op_f32(round(var_0.c.x)))))), 197f, _wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b + var_0.b))), _wgslsmith_f_op_f32(step(-999f, _wgslsmith_f_op_f32(round(var_0.c.x)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + var_0.c.x));
    let var_3 = u_input.a;
    var var_4 = -3215i;
    return u_input.e.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = vec4<i32>(-2147483647i, arg_0.b.c, _wgslsmith_div_i32(_wgslsmith_sub_i32(abs(global0[_wgslsmith_index_u32(9994u, 9u)]), -u_input.d), _wgslsmith_add_i32(-firstTrailingBit(-1i), -27967i)), func_2(Struct_3(firstTrailingBit(vec4<i32>(arg_0.a.c, 1i, global2.x, -31928i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(133f + -1229f))), vec2<f32>(-420f, _wgslsmith_f_op_f32(sign(1560f))), global1[_wgslsmith_index_u32(~(~u_input.a.x), 22u)])));
    global0 = array<i32, 9>();
    let var_1 = -var_0.zx;
    var_0 = u_input.e;
    var var_2 = true;
    return select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 22u)], arg_0.b.a.x), arg_0.c, arg_0.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yxz;
    global0 = array<i32, 9>();
    var var_1 = select(vec2<bool>(!any(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(17230u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)])), false), vec2<bool>(all(vec4<bool>(true, !global1[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(var_0.x ^ u_input.a.x, 22u)], true && global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), global1[_wgslsmith_index_u32(var_0.x, 22u)]), select(!vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, var_0.x, 41793u, u_input.a.x)), 22u)], true), vec2<bool>(all(func_1(Struct_2(Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 22u)], false), global1[_wgslsmith_index_u32(98694u, 22u)], 1i), Struct_1(vec2<bool>(false, false), global1[_wgslsmith_index_u32(var_0.x, 22u)], -2147483647i), vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 22u)])), vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_0.x, 22u)], false))), global1[_wgslsmith_index_u32(~25414u, 22u)]), vec2<bool>(!select(false, global1[_wgslsmith_index_u32(var_0.x, 22u)], false), true)));
    var_1 = vec2<bool>(!global1[_wgslsmith_index_u32(1u, 22u)] && (!global1[_wgslsmith_index_u32(~19754u, 22u)] && select(true, !var_1.x, func_1(Struct_2(Struct_1(vec2<bool>(true, var_1.x), true, global2.x), Struct_1(vec2<bool>(false, true), true, -2147483647i), vec2<bool>(false, true)), vec4<bool>(true, var_1.x, var_1.x, false)).x)), !(u_input.b >= 0u));
    var var_2 = vec3<bool>(var_1.x, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(14379u, 0u), vec2<u32>(0u, u_input.b))) < _wgslsmith_dot_vec3_u32(u_input.a.xyy, vec3<u32>(u_input.a.x, var_0.x, 8890u) & ~vec3<u32>(var_0.x, u_input.a.x, 102u)), !func_1(Struct_2(Struct_1(vec2<bool>(false, var_1.x), global1[_wgslsmith_index_u32(1u, 22u)], 0i), Struct_1(vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(var_0.x, 22u)]), false, u_input.e.x), vec2<bool>(var_1.x, false)), vec4<bool>(func_1(Struct_2(Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], false), var_1.x, global0[_wgslsmith_index_u32(var_0.x, 9u)]), Struct_1(vec2<bool>(true, false), var_1.x, 0i), vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(1u, 22u)])), vec4<bool>(true, global1[_wgslsmith_index_u32(23848u, 22u)], true, global1[_wgslsmith_index_u32(var_0.x, 22u)])).x, !global1[_wgslsmith_index_u32(46908u, 22u)], any(vec2<bool>(var_1.x, false)), false)).x);
    var var_3 = Struct_3(-u_input.e, -773f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-289f)) * -1972f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1943f)), _wgslsmith_div_f32(903f, -465f))), 295f), global1[_wgslsmith_index_u32(46518u, 22u)]);
    var var_4 = var_3.a.x;
    let var_5 = _wgslsmith_f_op_f32(abs(var_3.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(u_input.e.x, select(global0[_wgslsmith_index_u32(7948u, 9u)] ^ -12397i, _wgslsmith_div_i32(1i, 23055i), true | global1[_wgslsmith_index_u32(var_0.x, 22u)]), -2147483647i), vec3<i32>(-_wgslsmith_mult_i32(u_input.e.x, 125030i), var_3.a.x, -2147483647i)), ~_wgslsmith_div_vec3_u32(~u_input.a.xzy, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.b, 82904u), vec3<u32>(u_input.a.x, u_input.b, 1u))) << (var_0 % vec3<u32>(32u)), var_3.a.xy, vec4<f32>(var_3.b, var_5, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5))), -1882f));
}

