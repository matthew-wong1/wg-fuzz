struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_mult_i32(~arg_0, _wgslsmith_sub_i32(i32(-1i) * -14049i, min(min(-2147483647i, -66364i), -38745i << (u_input.b % 32u)))) ^ _wgslsmith_dot_vec3_i32(arg_2, -u_input.d.zyz);
    var var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = ~(~abs(max(firstTrailingBit(vec2<i32>(arg_2.x, u_input.a)), -vec2<i32>(1i, 1i))));
    var var_3 = Struct_1(_wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, u_input.d.x, 0i, 24940i) | vec4<i32>(-1i, 0i, -2147483647i, arg_2.x), ~u_input.d), (vec4<i32>(-1i) * -u_input.d) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, arg_1.x, 1u), arg_1, _wgslsmith_div_vec4_u32(arg_1, arg_1)) % vec4<u32>(32u))));
    var var_4 = any(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))));
    return u_input.e;
}

fn func_2() -> vec4<u32> {
    let var_0 = u_input.d.x;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1045f, -1001f))))) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1382f))), -1482f)));
    var var_2 = abs(abs(~_wgslsmith_mod_u32(func_3(0i, vec4<u32>(u_input.e, 4294967295u, 0u, 1u), u_input.d.xzz), ~0u)));
    var_2 = _wgslsmith_mult_u32(62978u, ~(~(~abs(4294967295u))));
    let var_3 = Struct_2(var_1.a);
    return _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 13536u, 4294967295u), vec4<u32>(u_input.e, u_input.b, u_input.c, u_input.c)), ~vec4<u32>(u_input.e, 62294u, 23507u, u_input.b)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.c, 4294967295u), vec3<u32>(4294967295u, 4294967295u, u_input.b)), 1u, ~u_input.c, u_input.c ^ u_input.e)), ~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 25034u, 68532u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, 5187u, u_input.b), vec4<u32>(4294967295u, 38449u, 9128u, 51779u)))), reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e, 71982u, u_input.e, 61598u) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 6128u, 1u, 4294967295u), vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.e)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 0u, u_input.e, u_input.e) >> (vec4<u32>(u_input.e, u_input.b, 1u, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(3621u, 24414u, 3879u, 97779u)), vec4<u32>(u_input.c, 0u, u_input.c, 0u) ^ vec4<u32>(u_input.b, u_input.b, u_input.c, 0u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_2;
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-707f, -1081f)) - _wgslsmith_f_op_vec2_f32(var_0.a - arg_2.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - arg_2.a) + vec2<f32>(var_0.a.x, var_0.a.x))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(max(arg_1, arg_1)))))));
    var var_1 = -max(-(29699i | _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, u_input.a)), max(_wgslsmith_mod_i32(firstLeadingBit(-534i), max(2147483647i, u_input.d.x)), 6935i));
    return Struct_3(~_wgslsmith_dot_vec3_i32(u_input.d.ywx, vec3<i32>(51633i, 16483i, u_input.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a, arg_2.a) * _wgslsmith_f_op_vec2_f32(min(var_0.a, var_0.a))))), true);
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(select(func_2(), ~_wgslsmith_mult_vec4_u32(vec4<u32>(31222u, 0u, 43289u, u_input.c) >> (vec4<u32>(38008u, 4294967295u, 52909u, u_input.e) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1188f, 701f), _wgslsmith_div_f32(-775f, 528f))), -1173f))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1911f, _wgslsmith_f_op_f32(sign(572f))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.b)))));
    let var_2 = false == var_0.c;
    var_1 = Struct_2(var_1.a);
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(var_0.b.x, -390f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(318f, var_1.a.x), vec2<f32>(var_1.a.x, 106f)))) - _wgslsmith_f_op_vec2_f32(-var_1.a))));
    return Struct_2(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-func_4(countOneBits(vec4<u32>(4294967295u, u_input.e, 31150u, u_input.b)), var_0.b.x, Struct_2(var_0.b)).b.x)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec2<f32> {
    let var_0 = ~abs(u_input.b);
    let var_1 = func_4(vec4<u32>(_wgslsmith_mod_u32(1u, var_0) >> (reverseBits(36901u) % 32u), 1u, abs(var_0) & 1u, 41584u), -1856f, func_1());
    var var_2 = func_1();
    let var_3 = select(!(!(!select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(var_1.c, arg_3.x, true, true), arg_1))), select(!select(select(vec4<bool>(var_1.c, true, var_1.c, true), vec4<bool>(var_1.c, var_1.c, true, true), vec4<bool>(arg_3.x, arg_1, false, var_1.c)), !vec4<bool>(arg_3.x, var_1.c, true, false), vec4<bool>(var_1.c, arg_1, arg_1, var_1.c)), select(!select(vec4<bool>(arg_3.x, arg_3.x, arg_1, true), vec4<bool>(arg_1, false, arg_3.x, true), vec4<bool>(arg_1, false, arg_3.x, var_1.c)), !select(vec4<bool>(var_1.c, false, false, false), vec4<bool>(false, true, true, arg_3.x), vec4<bool>(false, false, true, arg_1)), !(!vec4<bool>(var_1.c, false, true, false))), vec4<bool>(!(arg_3.x & var_1.c), func_4(vec4<u32>(10238u, u_input.e, 79936u, u_input.c), _wgslsmith_f_op_f32(max(-754f, arg_0.a.x)), func_1()).c, arg_1, any(select(vec3<bool>(true, true, false), vec3<bool>(true, var_1.c, arg_3.x), var_1.c)))), select(!(!select(vec4<bool>(true, arg_3.x, true, false), vec4<bool>(arg_3.x, false, true, false), vec4<bool>(arg_3.x, true, false, arg_1))), vec4<bool>(false, all(arg_3), var_1.c, true), vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -38684i), u_input.d.zz) > select(0i, var_1.a, true), true, false, !all(vec3<bool>(false, arg_3.x, false)))));
    let var_4 = ((vec4<u32>(_wgslsmith_mult_u32(1u, 1u), select(u_input.e, u_input.b, arg_1), _wgslsmith_mod_u32(var_0, u_input.c), 4294967295u) >> ((_wgslsmith_add_vec4_u32(vec4<u32>(12717u, 0u, var_0, 4294967295u), vec4<u32>(u_input.c, 0u, var_0, 9396u)) << (vec4<u32>(u_input.e, 68165u, var_0, var_0) % vec4<u32>(32u))) % vec4<u32>(32u))) | ~abs(select(vec4<u32>(u_input.b, 4294967295u, 3756u, var_0), vec4<u32>(0u, u_input.e, 48466u, 28584u), var_1.c))) ^ vec4<u32>(u_input.b, ~func_2().x, ~func_2().x, 75750u);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.a + _wgslsmith_f_op_vec2_f32(-var_2.a)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - arg_0.a.x))), _wgslsmith_f_op_f32(-146f + 2353f)), !(!var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 1u), vec3<u32>(u_input.c, u_input.c, u_input.b)) & vec3<u32>(_wgslsmith_div_u32(13812u, 31225u), u_input.c, 0u)), reverseBits(~(~vec3<u32>(6802u, u_input.e, u_input.b))) | (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, u_input.e, 0u), vec3<u32>(52222u, u_input.c, 0u)) >> (vec3<u32>(u_input.b, 39775u, u_input.c) % vec3<u32>(32u))));
    var var_1 = Struct_3(u_input.d.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-284f, 1403f) - _wgslsmith_f_op_vec2_f32(func_5(func_1(), any(vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-796f, 304f, -1016f) + vec3<f32>(1777f, -2194f, -264f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1349f, 1181f, 1335f), vec3<f32>(-1026f, -1606f, -1242f))))), vec2<bool>(func_4(vec4<u32>(u_input.e, u_input.e, 38856u, 70796u), -910f, Struct_2(vec2<f32>(112f, 575f))).c, true)))), all(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true), all(vec2<bool>(true, true))), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    let var_2 = !vec4<bool>(true, var_1.c, var_1.c, !(!(!var_1.c)));
    var_0 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(2006u, ~u_input.c), (33971u ^ var_0.x) & var_0.x), ~select(var_0.x, 1u, all(vec3<bool>(false, true, var_1.c))), 1u);
    var var_3 = Struct_1(vec4<i32>(func_4(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(27681u, 14490u, 1u, 4294967295u), vec4<u32>(u_input.b, u_input.e, 26326u, var_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(44457u, var_0.x, u_input.b, var_0.x), vec4<u32>(var_0.x, 55952u, 11727u, var_0.x))), _wgslsmith_f_op_f32(-var_1.b.x), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(133f, var_1.b.x), var_1.b)))).a, abs(~abs(-1i)), _wgslsmith_clamp_i32(6514i, _wgslsmith_mult_i32(u_input.d.x, -2147483647i), ~max(u_input.a, 2147483647i)), ~(-49117i)));
    let var_4 = 841f;
    var var_5 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-804f, -1000f))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x + -1000f), _wgslsmith_f_op_f32(step(-513f, var_1.b.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_0.x >> (~var_0.x % 32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 4071u, var_0.x), vec4<u32>(u_input.e, u_input.c, 1u, u_input.c)), var_1.b.x, func_1()).b.x, -984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(281f + -416f)), -771f) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_5.a.x, var_1.b.x, 138f, var_4), vec4<f32>(-472f, var_1.b.x, 533f, 138f))))))));
}

