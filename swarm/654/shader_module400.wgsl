struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    var var_0 = select(_wgslsmith_mult_u32(~(~19720u), arg_0), firstLeadingBit(arg_0), arg_0 <= arg_0);
    var var_1 = Struct_3(u_input.a.x, Struct_2(true, ~(~(~vec4<i32>(u_input.a.x, 32929i, 17557i, u_input.a.x))), -(i32(-1i) * -2147483647i), Struct_1(vec2<u32>(27407u, arg_0) >> (abs(vec2<u32>(38961u, 29852u)) % vec2<u32>(32u)), vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(1217f, arg_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -717f))), select(vec3<bool>(all(vec3<bool>(true, false, false)) & select(false, false, false), true, all(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(any(vec3<bool>(false, true, true)), true, false), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, all(vec3<bool>(true, false, false)), false))));
    var var_2 = Struct_1(~var_1.b.d.a, vec4<bool>(false, var_1.b.a, false, true));
    var var_3 = var_1.a;
    let var_4 = select(select(vec4<bool>(var_2.a.x != _wgslsmith_div_u32(var_2.a.x, 51496u), any(var_1.d), true, !var_1.b.a), vec4<bool>(true, var_2.b.x, (2147483647i >> (1u % 32u)) < _wgslsmith_clamp_i32(u_input.a.x, var_1.a, var_1.b.b.x), true), vec4<bool>(all(select(var_2.b.zxz, vec3<bool>(true, var_1.d.x, var_2.b.x), true)), true, any(!var_2.b.yxx), true)), vec4<bool>(var_2.b.x, true, var_1.b.a, true), true);
    return var_2.a.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: u32) -> vec4<f32> {
    let var_0 = arg_1.d.d;
    let var_1 = arg_1.a.b.x;
    let var_2 = arg_1.b.x;
    global0 = array<vec2<bool>, 15>();
    let var_3 = Struct_3(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1942i | arg_1.d.b.x, -17241i), ~arg_1.d.b.wz), _wgslsmith_mult_i32(u_input.a.x, i32(-1i) * -69359i) << (countOneBits(~var_0.a.x) % 32u)), arg_1.d, _wgslsmith_f_op_f32(sign(-711f)), !select(!(!vec3<bool>(var_1, var_2, var_1)), arg_1.e.d, !(!vec3<bool>(var_2, false, arg_1.a.b.x))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, arg_1.d.e, var_3.b.e, var_3.c));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2192f, 265f, arg_1.e, arg_1.e) + vec4<f32>(728f, arg_1.e, arg_1.e, arg_1.e)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-174f, arg_1.e, arg_1.e, arg_1.e))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e, arg_1.e, arg_1.e, arg_1.e)))), vec4<f32>(641f, arg_1.e, arg_1.e, arg_1.e))), _wgslsmith_f_op_vec4_f32(func_4(~vec4<u32>(arg_1.d.a.x, arg_2.x, 1u, 0u) >> ((~vec4<u32>(1u, 1u, 1u, 32091u) >> (firstTrailingBit(vec4<u32>(arg_2.x, arg_1.d.a.x, 7269u, arg_1.d.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_4(arg_1.d, !(!vec2<bool>(arg_1.d.b.x, arg_1.d.b.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.d.a.x, arg_1.d.a.x, 48856u, 51709u), vec4<u32>(arg_1.d.a.x, arg_2.x, 0u, 1u)), arg_1, Struct_3(u_input.a.x << (arg_1.d.a.x % 32u), Struct_2(arg_1.d.b.x, u_input.a, -13118i, arg_1.d, arg_1.e), 1572f, arg_1.d.b.wyw)), ~(~1462u | func_3(21284u, vec3<f32>(-521f, 400f, arg_1.e)))))));
    let var_1 = arg_1.d.a.x;
    let var_2 = arg_1;
    let var_3 = true;
    let var_4 = Struct_4(Struct_1(reverseBits(var_2.d.a) >> (_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.d.a, var_2.d.a), arg_2.xz) % vec2<u32>(32u)), vec4<bool>(false, var_3, arg_1.a, false || var_3)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~select(arg_2.xy, vec2<u32>(arg_1.d.a.x, 73690u), global0[_wgslsmith_index_u32(arg_1.d.a.x, 15u)]), vec2<u32>(_wgslsmith_clamp_u32(arg_2.x, 30333u, arg_1.d.a.x), _wgslsmith_sub_u32(var_2.d.a.x, 0u))), arg_2.xz), 15u)], firstLeadingBit(~select(countOneBits(vec4<u32>(1u, 9607u, 30262u, arg_1.d.a.x)), countOneBits(vec4<u32>(arg_2.x, 32941u, 792u, arg_1.d.a.x)), select(arg_1.d.b, arg_1.d.b, arg_1.d.b))), var_2, Struct_3(5914i, Struct_2(false, -vec4<i32>(arg_0.x, var_2.c, u_input.a.x, var_2.c), ~arg_0.x, var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1059f, 197f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e) + _wgslsmith_div_f32(var_2.e, -510f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.x, arg_1.e)), _wgslsmith_div_f32(-133f, -788f))))), vec3<bool>(!(var_2.d.a.x != var_2.d.a.x), false, false)));
    return var_4;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_i32(reverseBits(u_input.a ^ (~u_input.a >> (vec4<u32>(arg_2.a.x, arg_2.a.x, 5698u, arg_2.a.x) % vec4<u32>(32u)))), vec4<i32>(-1i) * -abs(~vec4<i32>(54270i, u_input.a.x, 21905i, arg_1.e.a)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), 801f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.d.e, 1568f))), arg_1.d.e);
    global0 = array<vec2<bool>, 15>();
    let var_2 = vec3<bool>(false, false, select(arg_1.b.x, arg_3.b.x, true));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0)) - arg_0), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, arg_1.e.c, arg_1.d.e))))))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.e.b.e, arg_1.e.c, _wgslsmith_div_f32(var_1.x, arg_1.d.e)))))));
    return arg_1.e.b.d;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32, arg_3: vec3<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(1325f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-316f, arg_0.e))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1793f, arg_0.e)))));
    let var_1 = -233f;
    let var_2 = arg_0.d;
    var_0 = !(any(var_2.b.zw) | true);
    var var_3 = var_2.b.wy;
    return Struct_4(func_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.e), var_1, _wgslsmith_f_op_f32(var_1 + -1000f)))), func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(-24931i, 34580i), ~vec2<i32>(20908i, arg_2)), Struct_2(var_2.b.x, vec4<i32>(arg_0.b.x, -10119i, -16395i, arg_2), -arg_0.b.x, Struct_1(vec2<u32>(27731u, var_2.a.x), arg_1), _wgslsmith_f_op_f32(-var_1)), select(vec3<u32>(var_2.a.x, var_2.a.x, 86924u), vec3<u32>(4294967295u, var_2.a.x, 1u) >> (vec3<u32>(arg_0.d.a.x, arg_0.d.a.x, arg_0.d.a.x) % vec3<u32>(32u)), select(arg_1.wxw, arg_1.wwx, arg_1.wwx))), Struct_5(abs(abs(vec4<u32>(arg_0.d.a.x, arg_0.d.a.x, 9543u, 4294967295u)))), Struct_1(~(~vec2<u32>(var_2.a.x, arg_0.d.a.x)), var_2.b)), select(vec2<bool>(!arg_0.a, all(func_2(vec2<i32>(-30963i, arg_2), Struct_2(true, vec4<i32>(1i, 0i, 40448i, arg_0.b.x), arg_0.b.x, Struct_1(vec2<u32>(60792u, 4294967295u), var_2.b), var_1), vec3<u32>(var_2.a.x, 1u, 0u)).e.b.d.b.zyz)), !vec2<bool>(true, -2147483647i < arg_2), global0[_wgslsmith_index_u32(abs(1u), 15u)]), ~func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a.yz), Struct_2(all(vec4<bool>(arg_1.x, true, true, false)), vec4<i32>(21887i, arg_3.x, arg_0.c, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, -1i), Struct_1(arg_0.d.a, vec4<bool>(true, arg_0.d.b.x, true, var_2.b.x)), _wgslsmith_f_op_f32(-arg_0.e)), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.a.x, arg_0.d.a.x, var_2.a.x), vec3<u32>(var_2.a.x, 7211u, arg_0.d.a.x) ^ vec3<u32>(arg_0.d.a.x, var_2.a.x, arg_0.d.a.x))).c, func_2(vec2<i32>(arg_0.b.x, u_input.a.x), Struct_2(arg_0.d.b.x, firstLeadingBit(u_input.a >> (vec4<u32>(0u, 1u, arg_0.d.a.x, 1u) % vec4<u32>(32u))), max(u_input.a.x >> (4294967295u % 32u), i32(-1i) * -2147483647i), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 2005f, -554f)), func_2(vec2<i32>(arg_0.c, u_input.a.x), arg_0, vec3<u32>(9205u, arg_0.d.a.x, 4294967295u)), Struct_5(vec4<u32>(4294967295u, 4294967295u, var_2.a.x, 27383u)), func_2(vec2<i32>(0i, 37258i), Struct_2(arg_1.x, vec4<i32>(-2147483647i, arg_2, arg_2, 29914i), -1i, arg_0.d, var_1), vec3<u32>(4294967295u, var_2.a.x, 1u)).e.b.d), _wgslsmith_f_op_f32(step(-1355f, _wgslsmith_f_op_f32(774f * -1000f)))), firstLeadingBit(countOneBits(~vec3<u32>(arg_0.d.a.x, var_2.a.x, 51931u)))).d, func_2(abs(countOneBits(arg_3.zy) ^ vec2<i32>(1i, arg_0.c)), Struct_2(true, reverseBits(~u_input.a), 10016i, arg_0.d, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(arg_0.e + -1000f))), ~vec3<u32>(4294967295u, ~var_2.a.x, 1u)).e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 15>();
    var var_0 = ~25465u;
    let var_1 = func_1(Struct_2(true, ~vec4<i32>(-36906i, 0i, u_input.a.x, -2147483647i) | (-u_input.a ^ vec4<i32>(u_input.a.x, -1i, -2147483647i, 0i)), -(~(~u_input.a.x)), Struct_1(~(~vec2<u32>(80871u, 40627u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false)), -1781f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))), true, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x) >= u_input.a.x), all(vec4<bool>(true, true, true, true))), 11747i, _wgslsmith_div_vec3_i32(u_input.a.zwy, ~u_input.a.xyy) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(3325u, 4294967295u), select(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 16721u), false)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 56956u, 0u), vec4<u32>(0u, 4306u, 0u, 111415u)), 0u) % vec3<u32>(32u)));
    global0 = array<vec2<bool>, 15>();
    let var_2 = 1064u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.e.b.e))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.e + var_1.d.e))) + 435f) * _wgslsmith_f_op_f32(1258f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.e * var_1.d.e)), _wgslsmith_f_op_f32(var_1.d.e * _wgslsmith_f_op_f32(var_1.d.e * var_1.e.b.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-444f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3, var_3) - -1551f)), 1f), 0u, vec4<u32>(0u, ~_wgslsmith_sub_u32(~39652u, ~var_1.a.a.x), _wgslsmith_add_u32(func_2(vec2<i32>(var_1.d.c, -2147483647i), func_1(var_1.e.b, vec4<bool>(var_1.b.x, var_1.b.x, true, true), var_1.d.c, u_input.a.yzw).e.b, var_1.c.yzw).a.a.x, ~(~var_1.c.x)), 0u), _wgslsmith_dot_vec3_u32(var_1.c.wxw, ~(~_wgslsmith_sub_vec3_u32(var_1.c.wxz, vec3<u32>(0u, 17451u, var_2)))));
}

