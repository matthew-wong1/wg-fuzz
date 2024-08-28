struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i), -1000f, 1u, vec4<f32>(-810f, 2376f, -697f, 1107f), 13059u), vec3<u32>(1u, 53225u, 0u), false, 1u), Struct_3(Struct_1(vec3<i32>(-18080i, -1i, -1i), -764f, 81424u, vec4<f32>(-490f, 345f, 691f, -1101f), 82604u), vec3<u32>(4294967295u, 1u, 1u), true, 1u), vec2<f32>(1218f, 413f));

var<private> global1: array<f32, 32> = array<f32, 32>(-538f, 100f, -2518f, -1290f, 513f, 108f, 460f, -1000f, -453f, -1330f, -352f, 483f, -978f, -129f, -1090f, -684f, 456f, 894f, -976f, -220f, -411f, -845f, 1177f, -730f, -231f, 1364f, 1007f, 204f, -386f, 1586f, 671f, 318f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec3<i32> {
    let var_0 = global0.b.a;
    let var_1 = Struct_4(Struct_1(~firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-12110i, -30920i, u_input.a.x), vec3<i32>(-18169i, u_input.a.x, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-221f, -2487f, true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-350f)) + 1750f)), 56297u, global0.a.a.d, arg_1.x));
    var var_2 = abs(var_0.c);
    var var_3 = global0.b.a.a.xz;
    let var_4 = -max(global0.b.a.a, vec3<i32>(i32(-1i) * -14567i, abs(1i), _wgslsmith_mod_i32(var_0.a.x & var_1.a.a.x, firstTrailingBit(-29846i))));
    return u_input.a.wzz;
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: f32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 32u)])) * arg_3), 209f, 300f)));
    var var_1 = false;
    var_1 = arg_1;
    global0 = Struct_5(arg_0, global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.c + global0.b.a.d.xy))))));
    global0 = Struct_5(global0.b, Struct_3(Struct_1(~u_input.a.yzw, _wgslsmith_f_op_f32(-arg_3), 127723u, arg_0.a.d, arg_0.d), _wgslsmith_sub_vec3_u32(~arg_0.b, global0.b.b & countOneBits(global0.b.b)), true, 24636u), var_0.xz);
    return Struct_5(Struct_3(Struct_1(~reverseBits(vec3<i32>(global0.a.a.a.x, 5464i, global0.b.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b + -706f) - _wgslsmith_f_op_f32(873f * -325f)), 0u, vec4<f32>(_wgslsmith_f_op_f32(min(576f, -1234f)), global1[_wgslsmith_index_u32(~u_input.b, 32u)], _wgslsmith_div_f32(530f, -174f), _wgslsmith_f_op_f32(select(-1309f, global0.b.a.b, arg_0.c))), _wgslsmith_clamp_u32(0u & global0.b.d, _wgslsmith_mod_u32(global0.a.d, 4294967295u), 1u)), arg_0.b, any(vec2<bool>(arg_0.c, var_0.x >= 1161f)), arg_0.d), Struct_3(Struct_1(_wgslsmith_add_vec3_i32(-arg_0.a.a, arg_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-172f, 1606f))), global0.b.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0.a.d, vec4<f32>(-1699f, global1[_wgslsmith_index_u32(4294967295u, 32u)], 850f, global0.c.x)))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.a.b, arg_0.b), ~global0.b.b)), ~(~(~vec3<u32>(14671u, u_input.b, global0.a.d))), true, _wgslsmith_add_u32(global0.a.b.x, 66936u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_3))))))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = func_3(Struct_3(Struct_1(func_2(_wgslsmith_f_op_f32(select(global0.a.a.d.x, global1[_wgslsmith_index_u32(0u, 32u)], global0.b.c)), max(vec3<u32>(global0.a.d, 1u, global0.a.d), global0.b.b)), _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(-755f * -103f)), global0.b.a.e, vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(global0.b.a.b * global1[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_f_op_f32(global0.b.a.b + 1292f), _wgslsmith_f_op_f32(abs(global0.c.x))), reverseBits(u_input.b)), reverseBits(vec3<u32>(u_input.b, global0.a.d, 0u)) ^ ~global0.a.b, !(!any(vec3<bool>(false, global0.a.c, global0.a.c))), u_input.b), true, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.b.d, 32u)]))))));
    let var_0 = true;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.a.a.b), -1610f)), Struct_1(vec3<i32>(1i, ~firstLeadingBit(2147483647i), select(-1i, -2147483647i, -145f > global0.a.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f + 1871f)), global0.a.a.c, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 32u)] + 893f))), _wgslsmith_f_op_f32(global0.a.a.b + _wgslsmith_f_op_f32(1000f + 870f)), _wgslsmith_f_op_f32(-global0.a.a.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a.a.e, 32u)]), _wgslsmith_f_op_f32(197f + global0.a.a.b), var_0))), u_input.b), Struct_1(vec3<i32>((-21942i ^ arg_0) | max(-1i, 2147483647i), _wgslsmith_add_i32(0i, arg_0), _wgslsmith_clamp_i32(-2147483647i, 1i, -u_input.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(20200u, 32u)], global0.b.a.d.x))))), 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.b.a.d), _wgslsmith_f_op_vec4_f32(-global0.b.a.d))) + _wgslsmith_div_vec4_f32(global0.a.a.d, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], 1000f, 396f, global1[_wgslsmith_index_u32(u_input.b, 32u)]))))), global0.a.b.x), _wgslsmith_f_op_vec3_f32(ceil(global0.b.a.d.xyx)));
    let var_2 = abs(var_1.b.c);
    var var_3 = 342f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b))) + _wgslsmith_f_op_f32(min(func_3(func_3(Struct_3(Struct_1(vec3<i32>(var_1.b.a.x, var_1.b.a.x, 34772i), global0.c.x, 24223u, vec4<f32>(var_1.c.d.x, 482f, global1[_wgslsmith_index_u32(u_input.b, 32u)], -720f), 44958u), global0.a.b, true, 0u), var_0, arg_0, var_1.d.x).b, select(false, true, true), _wgslsmith_clamp_i32(var_1.c.a.x, u_input.a.x, -1i), _wgslsmith_div_f32(var_1.c.d.x, var_1.a.x)).c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-933f - 357f), _wgslsmith_f_op_f32(ceil(global0.c.x)))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_i32(~u_input.a.x >> (max(u_input.b, ~1359u) % 32u), 0i));
    var var_1 = var_0.c.a.x << (0u % 32u);
    let var_2 = Struct_5(global0.b, Struct_3(Struct_1(firstLeadingBit(u_input.a.yzx | global0.a.a.a), _wgslsmith_f_op_f32(func_1(global0.a.a.a.x).d.x - -682f), func_3(global0.b, global0.a.c, u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)).a.a.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.b.d)) * vec4<f32>(-527f, -1700f, global1[_wgslsmith_index_u32(var_0.c.c, 32u)], 675f)), 20414u), vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.c.c, u_input.b), global0.a.b)), _wgslsmith_sub_u32(select(u_input.b, 20096u, global0.b.c), global0.b.b.x), global0.a.b.x), all(vec4<bool>(!global0.b.c, all(vec2<bool>(global0.b.c, true)), var_0.c.e < 6905u, true)), abs(var_0.b.e)), global0.b.a.d.xz);
    let var_3 = select(vec3<bool>(!(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.e, var_2.a.d, u_input.b), vec3<u32>(var_2.b.a.c, 0u, var_2.a.a.c)) == ~u_input.b), global0.a.c, var_2.a.c), vec3<bool>(true, true, true), select(vec3<bool>(global0.a.c, true, true), !(!(!vec3<bool>(global0.a.c, var_2.a.c, global0.b.c))), !vec3<bool>(select(global0.a.c, true, var_2.b.c), global0.b.c, true)));
    var var_4 = countOneBits(~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-14545i, 1101i), -2147483647i), var_0.c.a.x >> (_wgslsmith_add_u32(1u, 30643u) % 32u), _wgslsmith_sub_i32(abs(-2147483647i), _wgslsmith_mod_i32(var_0.c.a.x, u_input.a.x)), global0.a.a.a.x));
    var var_5 = func_3(Struct_3(func_3(Struct_3(func_1(-1i).c, _wgslsmith_mod_vec3_u32(vec3<u32>(global0.a.a.c, 10078u, global0.a.d), vec3<u32>(1u, var_0.c.c, var_0.c.e)), true, _wgslsmith_dot_vec2_u32(vec2<u32>(33812u, global0.b.b.x), vec2<u32>(1u, 1u))), !(!var_2.a.c), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.b.a.x, var_4.x, var_0.c.a.x, var_4.x), -u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-276f * global0.b.a.d.x))).b.a, ~(~_wgslsmith_sub_vec3_u32(var_2.b.b, global0.a.b)), true, var_2.b.d), !((true & !var_3.x) && true), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(-u_input.a.x, ~14890i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.a.a.x, u_input.a.x, var_4.x), var_4.xwy) | -1i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.c.x, -375f), -313f, true)), global1[_wgslsmith_index_u32(~var_2.b.d, 32u)])));
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1659f, global1[_wgslsmith_index_u32(4294967295u, 32u)], var_3.x)) * global1[_wgslsmith_index_u32(1u, 32u)]) * _wgslsmith_div_f32(-235f, var_2.b.a.b))), var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-1i, var_0.c.a.x), (vec2<i32>(-1i) * -vec2<i32>(var_4.x, var_2.b.a.a.x)) | min(var_5.b.a.a.xy, countOneBits(var_2.b.a.a.zz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(37328u, 32u)])) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0.a.a.b)))))), var_5.a.b);
}

