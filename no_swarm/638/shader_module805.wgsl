struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec3<u32> = vec3<u32>(73182u, 12664u, 8680u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    var var_0 = Struct_1(countOneBits(_wgslsmith_add_i32(_wgslsmith_add_i32(1i, 1i), -47965i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(max(356f, 679f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(116f, -964f), vec2<f32>(736f, -116f), vec2<bool>(false, false))))), false))));
    global1 = u_input.a;
    global1 = vec3<u32>(4294967295u, _wgslsmith_add_u32(abs(0u), ~(global1.x << (_wgslsmith_mult_u32(1u, global1.x) % 32u))), ~(arg_0 & _wgslsmith_add_u32(u_input.a.x, min(u_input.a.x, arg_0))));
    let var_1 = u_input.c;
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 1u, max(1u, 125218u), ~arg_0), ~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 32427u, u_input.b.x, arg_0), vec4<u32>(33830u, global1.x, 19670u, global1.x)))) > u_input.b.x;
    return vec3<i32>(_wgslsmith_mult_i32(abs(-firstLeadingBit(31240i)), -var_1.x), u_input.c.x, ~(var_1.x | var_0.a));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = vec4<i32>(min(u_input.e, arg_0.x), abs(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(0i, arg_0.x, arg_0.x)), _wgslsmith_add_vec3_i32(~arg_0, u_input.c.xzw | vec3<i32>(0i, -1i, -2147483647i)))), u_input.c.x, _wgslsmith_dot_vec4_i32(u_input.c, -(~(-u_input.c))));
    let var_1 = Struct_1(1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1297f, _wgslsmith_f_op_f32(f32(-1f) * -1579f), true)), 656f)));
    let var_2 = -116f;
    let var_3 = Struct_1(_wgslsmith_clamp_i32(-2147483647i, ~0i, countOneBits(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-925i, 41216i, -19370i), firstTrailingBit(u_input.e)))), _wgslsmith_div_vec2_f32(vec2<f32>(-1912f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-924f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.x, var_2), var_1.b)))));
    global0 = 14485u;
    return !arg_1;
}

fn func_2() -> u32 {
    let var_0 = any(func_4(func_3(_wgslsmith_add_u32(u_input.a.x, reverseBits(u_input.a.x))), vec2<bool>(any(vec3<bool>(true, true, true)) | true, true)));
    let var_1 = Struct_1(-(_wgslsmith_dot_vec4_i32(u_input.c >> (u_input.b % vec4<u32>(32u)), ~vec4<i32>(2147483647i, u_input.c.x, -38406i, u_input.c.x)) & -u_input.e), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(470f, 341f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-251f, -121f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, 123f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-937f, -362f), vec2<f32>(-1032f, 815f), var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(239f, -1000f) * vec2<f32>(-434f, 427f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-221f, -2104f)))), 1i > max(-1i, u_input.e)))));
    global1 = ~reverseBits(select(~(u_input.a | vec3<u32>(global1.x, u_input.b.x, global1.x)), ~vec3<u32>(34534u, global1.x, u_input.a.x), -1i < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 18993i, -2147483647i), vec3<i32>(var_1.a, -2147483647i, 45430i))));
    let var_2 = var_1;
    var var_3 = var_0;
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(reverseBits(global1.x), global1.x), 0u);
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-arg_3.a, 1i, -u_input.e) ^ (arg_2.a & -34647i), arg_2.a), arg_1.yz);
    global1 = vec3<u32>(4294967295u, global1.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.zzy, vec3<u32>(23632u, u_input.b.x, u_input.a.x)), _wgslsmith_clamp_u32(u_input.b.x, global1.x, 1u)), (arg_0 ^ arg_0) ^ global1.x) | 1u);
    global0 = _wgslsmith_mult_u32(u_input.a.x, global1.x);
    global1 = abs(u_input.a) >> (u_input.a % vec3<u32>(32u));
    var_0 = Struct_1(34788i, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3.b), _wgslsmith_f_op_vec2_f32(-arg_1.xz), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(746f, arg_2.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, -1152f), _wgslsmith_f_op_vec2_f32(min(arg_3.b, arg_3.b)), vec2<bool>(true, false))))));
    return Struct_1(max(-(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c) >> (u_input.a.x % 32u)), var_0.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_3.b.x), vec2<f32>(var_0.b.x, var_0.b.x)))), var_0.b)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = func_5(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1929f, arg_2.b.x, 719f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(241f, 2425f, arg_3))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(548f, -632f, -244f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1708f, -130f, arg_3), vec3<f32>(arg_3, 536f, arg_2.b.x)))))), arg_2, Struct_1(max(_wgslsmith_add_i32(u_input.d.x, 1i) & arg_1.x, _wgslsmith_mod_i32(arg_2.a, -arg_1.x)), vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3 - 1503f), _wgslsmith_f_op_f32(f32(-1f) * -1121f), false)))));
    let var_1 = arg_2;
    global1 = countOneBits(vec3<u32>(u_input.a.x, u_input.b.x, global1.x));
    global1 = _wgslsmith_sub_vec3_u32(u_input.b.zyy, _wgslsmith_clamp_vec3_u32(~arg_0.wyw, vec3<u32>(abs(countOneBits(arg_0.x)), ~21061u, ~(0u << (u_input.a.x % 32u))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, arg_0.x, u_input.b.x), firstTrailingBit(vec3<u32>(arg_0.x, global1.x, 71321u)))));
    global1 = _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, u_input.b.x, arg_0.x), max(~firstTrailingBit(u_input.a) << ((~arg_0.yxz ^ vec3<u32>(arg_0.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), arg_0.zzx));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(678f))), -1035f) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-758f + -881f), 120f)), _wgslsmith_f_op_f32(-1503f * _wgslsmith_f_op_f32(func_1(u_input.b, u_input.c, Struct_1(u_input.d.x, vec2<f32>(-738f, -1995f)), 564f))))));
    var var_1 = Struct_1(_wgslsmith_mod_i32(u_input.e, u_input.d.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.b, vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -2809f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)))));
    var var_2 = firstTrailingBit(u_input.a.x);
    var_1 = var_0;
    global1 = reverseBits(_wgslsmith_mod_vec3_u32(reverseBits(min(u_input.a, u_input.a)), ~u_input.b.yxw) ^ vec3<u32>(~(~38068u), min(6257u >> (u_input.b.x % 32u), ~global1.x), select(~43550u, _wgslsmith_mult_u32(47135u, u_input.a.x), true)));
    var var_3 = firstTrailingBit(-59735i & ~_wgslsmith_mult_i32(0i, var_0.a));
    let var_4 = _wgslsmith_div_i32(~(-37979i), var_0.a | 2147483647i);
    var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_1.b.x, -416f, _wgslsmith_f_op_f32(func_1(vec4<u32>(0u, 20988u, 0u, 1u), vec4<i32>(u_input.c.x, var_0.a, var_4, 0i), var_0, -1205f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-451f, 1646f, var_0.b.x, var_0.b.x), vec4<f32>(var_1.b.x, -810f, var_1.b.x, 1484f))) * vec4<f32>(761f, _wgslsmith_f_op_f32(max(566f, 139f)), var_0.b.x, var_1.b.x)), select(vec4<bool>(any(vec4<bool>(false, true, true, false)), false, true, true), vec4<bool>(true, any(vec2<bool>(true, true)), false, 334f <= var_1.b.x), vec4<bool>(true, true, true, true)))), u_input.c.x);
}

