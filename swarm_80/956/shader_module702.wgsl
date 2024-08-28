struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(1i, 7859i, 1i, 2147483647i, 5897i, -1i, i32(-2147483648), 1i, 1i, 13491i);

var<private> global1: Struct_1 = Struct_1(-303f, vec3<f32>(-304f, -519f, 424f), vec3<i32>(0i, -60242i, 21424i), false, vec2<bool>(true, true));

var<private> global2: f32 = -606f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = !(!(!(!(!vec4<bool>(false, global1.d, global1.d, false)))));
    var var_1 = u_input.a;
    var var_2 = ~2147483647i | arg_2.c.x;
    return select(vec4<bool>(!(any(vec3<bool>(true, false, false)) & false), global1.e.x, all(var_0.wyy), false), vec4<bool>(arg_2.e.x, true, true, arg_2.d), var_0);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = any(vec2<bool>(!all(select(vec3<bool>(true, global1.e.x, global1.d), vec3<bool>(global1.d, global1.d, false), vec3<bool>(true, false, global1.e.x))), !global1.e.x));
    global0 = array<i32, 10>();
    let var_1 = vec4<f32>(-394f, arg_1.x, -106f, _wgslsmith_f_op_f32(-1777f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)))))));
    let var_2 = !select(!(!select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, false, global1.d, global1.e.x), vec4<bool>(false, var_0, global1.d, false))), vec4<bool>(!var_0, false, any(select(vec4<bool>(global1.d, global1.e.x, var_0, false), vec4<bool>(var_0, false, global1.d, var_0), vec4<bool>(var_0, var_0, false, global1.d))), true), !(!func_3(1u, Struct_1(-1398f, arg_0.yzy, vec3<i32>(global1.c.x, -1i, 1i), false, global1.e), Struct_1(arg_1.x, var_1.zyx, vec3<i32>(1i, -485i, 1i), true, vec2<bool>(var_0, var_0)), vec4<u32>(11124u, u_input.a, 4294967295u, 4294967295u))));
    global1 = Struct_1(1702f, vec3<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(step(var_1.x, 482f)), !var_0))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1024f - -732f), _wgslsmith_f_op_f32(-global1.b.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1677f)), arg_0.x))), select(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, 35459i, global0[_wgslsmith_index_u32(u_input.a, 10u)], global1.c.x), vec4<i32>(global1.c.x, global0[_wgslsmith_index_u32(578u, 10u)], global1.c.x, global0[_wgslsmith_index_u32(1u, 10u)])), max(global1.c.x, global0[_wgslsmith_index_u32(4294967295u, 10u)]), max(global0[_wgslsmith_index_u32(4134u, 10u)], 0i)), global1.c), vec3<i32>(min(1i, -global0[_wgslsmith_index_u32(u_input.a, 10u)]), ~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.b, 10u)], -6731i, -34928i), 0i), var_2.xwy), all(var_2.xyy), !(!vec2<bool>(global1.c.x >= global0[_wgslsmith_index_u32(u_input.a, 10u)], false)));
    return Struct_1(789f, _wgslsmith_f_op_vec3_f32(-var_1.xyz), vec3<i32>(~global1.c.x, ~(-29855i), abs(max(min(39775i, -4384i), 1786i))), global1.e.x, func_3(4666u, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(557f)), _wgslsmith_div_f32(1084f, -1325f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.xzx), global1.b), vec3<i32>(reverseBits(global1.c.x), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), ~global0[_wgslsmith_index_u32(1u, 10u)]), any(vec3<bool>(var_2.x, global1.e.x, false)), !select(vec2<bool>(global1.d, var_0), global1.e, global1.e)), Struct_1(arg_1.x, var_1.yyx, vec3<i32>(47272i, global1.c.x, -1i) & -global1.c, min(u_input.a, u_input.b) <= u_input.a, vec2<bool>(16890i != global1.c.x, var_2.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(27488u, u_input.b, u_input.a, 1u), vec4<u32>(4294967295u, 25758u, u_input.a, u_input.a)) ^ (abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.b)) ^ ~vec4<u32>(75134u, 15818u, 3370u, 0u))).yw);
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.x, 1260f))) + global1.b.x))), _wgslsmith_f_op_vec3_f32(global1.b * global1.b), vec3<i32>(-1i | _wgslsmith_mult_i32(global1.c.x, global1.c.x >> (4294967295u % 32u)), 18317i, 21359i), !(!global1.d), !global1.e);
    global2 = _wgslsmith_f_op_f32(-global1.b.x);
    global1 = var_0;
    global1 = func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, global1.a, var_0.a, global1.b.x))))))))), var_0.b.xz);
    let var_1 = Struct_1(-894f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.b, vec3<f32>(global1.b.x, global1.b.x, -1000f)) + _wgslsmith_f_op_vec3_f32(-global1.b)))))), var_0.c & ~vec3<i32>(-1i, 1781i, ~(-53523i)), select(!(!var_0.d), !global1.e.x, true), func_2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), -1195f, global1.a, global1.b.x), _wgslsmith_f_op_vec2_f32(ceil(global1.b.zz))).e);
    return 927f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x - 1546f), _wgslsmith_f_op_f32(-2515f * 931f)))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.a)), global1.a))))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(-2441f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a - global1.b.x), global1.a)), _wgslsmith_f_op_f32(-205f - 707f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(global1.a - global1.b.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(188f)) + _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-897f)) * -655f), _wgslsmith_f_op_f32(abs(-371f)))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i >> (u_input.b % 32u), -global0[_wgslsmith_index_u32(0u, 10u)], global1.c.x), firstLeadingBit(-38526i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, 2147483647i, -37594i, -3575i) | vec4<i32>(1i, 20632i, global0[_wgslsmith_index_u32(u_input.a, 10u)], 1i), -vec4<i32>(global1.c.x, global1.c.x, 22190i, -1i))), _wgslsmith_mult_i32(abs(1i ^ global0[_wgslsmith_index_u32(24430u, 10u)]), _wgslsmith_dot_vec3_i32(global1.c, func_2(vec4<f32>(-1000f, -1561f, 371f, -1092f), vec2<f32>(global1.b.x, global1.a)).c)), (global0[_wgslsmith_index_u32(1u, 10u)] | 0i) & -global0[_wgslsmith_index_u32(1u, 10u)]), reverseBits(~u_input.b >> (select(4294967295u, u_input.b, global1.e.x) % 32u)) != _wgslsmith_mult_u32(abs(firstLeadingBit(0u)), 0u), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.b.x, 569f, global1.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.b.x) * vec2<f32>(global1.a, global1.a)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a))))).e);
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1811f, -2321f, -926f, 815f) - vec4<f32>(var_0.a, -996f, -2696f, 271f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, global1.a, var_0.a, var_0.b.x)), select(vec4<bool>(var_0.d, global1.d, global1.d, global1.e.x), vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.d), var_0.d)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, -1276f, var_0.a), vec4<f32>(global1.a, global1.a, 1000f, 286f), global1.e.x)))) - vec4<f32>(-187f, var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), global1.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1()), global1.b.x)));
    global0 = array<i32, 10>();
    let var_2 = Struct_1(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -231f))), _wgslsmith_f_op_vec3_f32(-global1.b), vec3<i32>(-(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.c.x, -1i), vec3<i32>(var_0.c.x, -2147483647i, var_0.c.x)) << (_wgslsmith_mult_u32(u_input.a, u_input.b) % 32u)), _wgslsmith_div_i32(var_1.c.x, global1.c.x >> (min(33946u, 52920u) % 32u)), var_0.c.x), !any(!vec4<bool>(global1.d, true, false, true)), vec2<bool>(global1.e.x, !var_1.d));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(func_1()), var_0.a);
    global2 = -1275f;
    global1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b.x, -258f, 1295f, 2249f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_1.b.x, -452f, -701f) - vec4<f32>(var_2.b.x, var_0.b.x, -598f, var_3.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec4<f32>(-2345f, _wgslsmith_f_op_f32(var_3.x + var_0.b.x), -1067f, -874f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.b.zz * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, -1000f) - global1.b.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-123f, -828f))) + var_0.b.zz), var_2.e))).b.x, ~(-max(global1.c.x, -global0[_wgslsmith_index_u32(u_input.b, 10u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), 503f));
}

