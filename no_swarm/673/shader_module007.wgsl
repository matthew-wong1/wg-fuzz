struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<vec3<bool>, 9>;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_3(Struct_2(vec2<f32>(818f, 1263f), vec2<f32>(-489f, -1000f)))), Struct_4(Struct_3(Struct_2(vec2<f32>(-745f, -1217f), vec2<f32>(-880f, 607f)))), Struct_4(Struct_3(Struct_2(vec2<f32>(328f, 923f), vec2<f32>(391f, -2210f)))), Struct_4(Struct_3(Struct_2(vec2<f32>(-803f, -119f), vec2<f32>(936f, -1063f)))), Struct_4(Struct_3(Struct_2(vec2<f32>(-2045f, 418f), vec2<f32>(536f, -1000f)))), Struct_4(Struct_3(Struct_2(vec2<f32>(665f, 1231f), vec2<f32>(-1195f, 1000f)))), Struct_4(Struct_3(Struct_2(vec2<f32>(-1985f, -818f), vec2<f32>(1016f, -1001f)))), Struct_4(Struct_3(Struct_2(vec2<f32>(-1000f, 966f), vec2<f32>(-169f, -926f)))), Struct_4(Struct_3(Struct_2(vec2<f32>(718f, 969f), vec2<f32>(1298f, 761f)))), Struct_4(Struct_3(Struct_2(vec2<f32>(586f, 149f), vec2<f32>(-415f, -1153f)))));

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32) -> vec2<i32> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-738f, 1367f) + vec2<f32>(-2400f, 410f)), _wgslsmith_div_vec2_f32(vec2<f32>(1045f, -1000f), vec2<f32>(-2108f, 257f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2181f, 638f) + vec2<f32>(409f, -1000f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1467f, 1089f) * vec2<f32>(-431f, 793f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-199f, 1000f), vec2<f32>(-1495f, 1521f))))))));
    let var_1 = global3[_wgslsmith_index_u32(arg_0, 10u)];
    var var_2 = ~(~(~_wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_0) & 10192u));
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.a.b.x, var_0.a.b.x, var_0.a.b.x), vec3<f32>(-520f, var_1.a.a.a.x, var_1.a.a.b.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.a.b.x, var_1.a.a.a.x), -525f, 1000f)))));
    global0 = array<Struct_1, 13>();
    return u_input.a.zy >> ((min(firstTrailingBit(~vec2<u32>(1u, 27838u)), u_input.d) | min(u_input.d, ~u_input.d)) % vec2<u32>(32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<i32>) -> f32 {
    global3 = array<Struct_4, 10>();
    global2 = u_input.c;
    var var_0 = Struct_4(Struct_3(arg_1.a.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a.a.a.x, arg_1.a.a.a.x, 1266f), vec3<f32>(1036f, arg_1.a.a.b.x, var_0.a.a.b.x))), vec3<f32>(1000f, var_0.a.a.a.x, arg_1.a.a.b.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.a.x), _wgslsmith_f_op_f32(-arg_1.a.a.a.x), 723f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2062f, arg_1.a.a.a.x, 440f), vec3<f32>(arg_1.a.a.b.x, -1000f, -1504f), vec3<bool>(global4.x, false, global4.x)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.a.a.b.x, 593f)), -1113f, _wgslsmith_f_op_f32(-arg_1.a.a.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a.b.x, arg_1.a.a.b.x, var_0.a.a.b.x) - vec3<f32>(var_0.a.a.b.x, var_0.a.a.a.x, arg_1.a.a.a.x)))))));
    global0 = array<Struct_1, 13>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1000f))))));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(1f * 1357f), _wgslsmith_f_op_f32(func_4(-vec4<i32>(-1i, 2147483647i, 0i, 2147483647i), Struct_4(Struct_3(Struct_2(vec2<f32>(252f, 300f), vec2<f32>(1000f, 535f)))), select(func_3(18918u, u_input.a.x), vec2<i32>(global2.x, 2147483647i) | global2.xx, !global4.yz)))), _wgslsmith_div_vec2_f32(vec2<f32>(-173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f - -1283f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 936f), _wgslsmith_f_op_vec2_f32(vec2<f32>(410f, 350f) + vec2<f32>(-632f, -1000f)), !vec2<bool>(true, global4.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-448f, 1000f))))))));
    let var_1 = Struct_5(vec2<bool>(global4.x, true), select(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(global2.x, global2.x), func_3(15736u, 0i).x, 20391i >> (u_input.d.x % 32u)), abs(vec3<i32>(global2.x, global2.x, global2.x))), ~max(~vec3<i32>(0i, global2.x, global2.x), _wgslsmith_div_vec3_i32(u_input.c, u_input.a)), all(select(global4.zx, global4.yx, !global4.x))));
    let var_2 = ~abs(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.b, u_input.d.x, u_input.b, 8385u) ^ vec4<u32>(u_input.b, 4294967295u, u_input.d.x, u_input.b)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b), vec4<u32>(u_input.b, 63796u, 14365u, u_input.d.x)))));
    let var_3 = vec3<i32>(0i, var_1.b.x, ~u_input.c.x);
    global2 = -vec3<i32>(select(~1i, func_3(u_input.b, -35407i).x << (~u_input.d.x % 32u), var_1.a.x), -42716i, -15745i);
    return _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec3_u32(var_2.yww, select(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(u_input.d.x, u_input.b, u_input.d.x)), ~vec3<u32>(4294967295u, u_input.b, u_input.d.x)), min(vec3<u32>(4294967295u, u_input.b, 0u), var_2.yxz), true)));
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: u32) -> Struct_2 {
    global3 = array<Struct_4, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, -609f) - vec4<f32>(arg_1, arg_1, 980f, -1912f))))) - vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), -466f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(245f, arg_1, 717f, 211f) - vec4<f32>(-1121f, arg_1, -551f, arg_1))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(436f, arg_1, arg_1, arg_1), vec4<f32>(1692f, arg_1, 451f, 427f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1 * -213f), _wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-arg_1), -784f) + vec4<f32>(-558f, _wgslsmith_f_op_f32(f32(-1f) * -2271f), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-227f * -1000f))), !(!select(vec4<bool>(false, true, true, arg_0.a.x), vec4<bool>(true, arg_0.a.x, false, global4.x), false)))), vec4<bool>(true, global4.x, any(!vec4<bool>(global4.x, false, arg_0.a.x, global4.x)), true)));
    var var_1 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(882f, arg_1), _wgslsmith_f_op_vec2_f32(var_0.wx + vec2<f32>(952f, var_0.x)))), var_0.xy)));
    global4 = !select(global1[_wgslsmith_index_u32(~49129u, 9u)], !select(vec3<bool>(false, global4.x, true), vec3<bool>(false, global4.x, false), select(global1[_wgslsmith_index_u32(arg_2, 9u)], vec3<bool>(arg_0.a.x, true, global4.x), global1[_wgslsmith_index_u32(0u, 9u)])), arg_0.b.x == _wgslsmith_mod_i32(u_input.a.x, -2147483647i));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-397f, -1861f, arg_1, -1553f)))))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.a.a.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1654f, 1310f) + var_1.a.a.b))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.xx, var_2.yx)) + vec2<f32>(var_1.a.a.b.x, var_1.a.a.b.x))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_4) -> vec2<i32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 222u), 10u)];
    var var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(min(2147483647i, global2.x), -36621i & abs(global2.x)), ~(min(u_input.c.x << (16951u % 32u), 0i) >> (31218u % 32u)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -992f);
    return countOneBits(~global2.zx);
}

fn func_7(arg_0: vec4<f32>, arg_1: vec2<i32>) -> Struct_5 {
    var var_0 = vec3<bool>(_wgslsmith_div_f32(-242f, arg_0.x) <= arg_0.x, !any(select(!global4.yx, !global4.yx, global4.zz)), select(4294967295u <= (1u >> (u_input.b % 32u)), firstTrailingBit(func_2()) <= 13933u, (all(global4.zx) || false) || (39941u > _wgslsmith_sub_u32(1u, u_input.b))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x))))), arg_0.x);
    global2 = u_input.c;
    var var_2 = ~(~(~(1u & u_input.d.x)));
    global0 = array<Struct_1, 13>();
    return Struct_5(global4.zz, max(countOneBits(-u_input.c), _wgslsmith_mult_vec3_i32(~(vec3<i32>(u_input.c.x, -2147483647i, -1i) ^ vec3<i32>(arg_1.x, 21383i, global2.x)), u_input.a)));
}

fn func_1() -> f32 {
    let var_0 = func_7(_wgslsmith_f_op_vec4_f32(vec4<f32>(-696f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-537f, -858f)) + -473f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1729f)) * -1242f), _wgslsmith_f_op_f32(f32(-1f) * -1254f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-608f, -2320f, 254f, 441f))))), select(vec2<i32>(u_input.a.x, 13556i), func_6(func_5(Struct_5(vec2<bool>(true, false), vec3<i32>(global2.x, -2147483647i, 37891i)), 932f, func_2()), vec2<u32>(~99109u, 0u), global3[_wgslsmith_index_u32(u_input.d.x, 10u)]), global4.x));
    let var_1 = 13967i;
    global2 = vec3<i32>(firstTrailingBit(~u_input.a.x), var_1 | firstTrailingBit(var_1 | var_0.b.x), -1i);
    global0 = array<Struct_1, 13>();
    let var_2 = u_input.b;
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1()))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1852f + -115f), _wgslsmith_f_op_f32(func_1()))) - -586f)), _wgslsmith_f_op_f32(round(-263f)));
    global2 = abs(vec3<i32>(func_6(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -701f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1895f, -1525f) - vec2<f32>(-157f, -1739f))), u_input.d, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u >> (u_input.d.x % 32u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(92729u, 908u))), 10u)]).x, -u_input.a.x >> (0u % 32u), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(4681i, 1i, u_input.c.x), global2.x) >> (~_wgslsmith_add_u32(u_input.b, 4294967295u) % 32u)));
    var var_1 = false;
    var var_2 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(676f, -1136f) * vec2<f32>(-250f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(672f, 161f), vec2<f32>(-1379f, 495f), global4.x))))));
    let var_3 = vec4<bool>(false, all(!global1[_wgslsmith_index_u32(u_input.d.x, 9u)]), true, u_input.d.x <= u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

