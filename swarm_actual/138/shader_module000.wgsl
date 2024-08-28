struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> vec2<f32> {
    global0 = array<i32, 19>();
    var var_0 = max(reverseBits((~vec3<u32>(arg_0.a.x, 47631u, arg_0.a.x) >> (abs(vec3<u32>(arg_0.a.x, arg_0.a.x, 21372u)) % vec3<u32>(32u))) | min(vec3<u32>(1u, arg_0.a.x, arg_0.a.x), firstTrailingBit(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))), vec3<u32>(~(~arg_0.a.x) | _wgslsmith_dot_vec2_u32(~arg_0.a, vec2<u32>(1u, arg_0.a.x)), ~arg_0.a.x, reverseBits(79723u)));
    var var_1 = 90633u;
    let var_2 = arg_0.e.x;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false)) - arg_1.x)) * arg_1.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.xw, arg_1.xy)) - _wgslsmith_div_vec2_f32(arg_1.yz, _wgslsmith_f_op_vec2_f32(arg_1.wy + arg_1.yx)))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(abs(~vec2<u32>(4294967295u, 19193u)), vec3<bool>(true, true, true), vec2<bool>(true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(924f, -2218f, 715f, 276f))))) + vec4<f32>(_wgslsmith_f_op_f32(-161f + -393f), _wgslsmith_div_f32(-296f, 454f), _wgslsmith_f_op_f32(-414f - 163f), _wgslsmith_div_f32(1878f, 521f)))))));
    var var_1 = -440f;
    var var_2 = vec2<bool>(true, true);
    let var_3 = Struct_3(vec2<u32>(1u, 1u), vec3<bool>(true, any(select(!vec2<bool>(var_2.x, var_2.x), !vec2<bool>(true, var_2.x), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), var_2.x))), true), !select(select(vec2<bool>(false, true), vec2<bool>(var_2.x, false), true), select(vec2<bool>(true, true), select(vec2<bool>(var_2.x, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, var_2.x), vec2<bool>(true, false), vec2<bool>(false, var_2.x))), var_2.x), true, select(!(!(!vec2<bool>(false, var_2.x))), vec2<bool>(!(!var_2.x), false), var_2.x));
    var var_4 = var_3;
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1871f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(301f, var_0.x, var_0.x) + vec3<f32>(var_0.x, -251f, 214f)))))), _wgslsmith_mod_vec2_i32(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, 43477i), vec2<i32>(-37612i, 8263i)) >> (countOneBits(var_4.a) % vec2<u32>(32u))), -reverseBits(~vec2<i32>(-43804i, 6466i))), abs(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 2147483647i, global0[_wgslsmith_index_u32(14291u, 19u)]), min(vec4<i32>(-46677i, -25933i, u_input.a, -26125i), vec4<i32>(-42905i, global0[_wgslsmith_index_u32(var_3.a.x, 19u)], 44409i, u_input.a) & vec4<i32>(-1i, 3070i, -12074i, -1i)))), ~select(-vec2<i32>(global0[_wgslsmith_index_u32(72011u, 19u)], 1i) << (~var_4.a % vec2<u32>(32u)), ~select(vec2<i32>(global0[_wgslsmith_index_u32(var_3.a.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 16594i), var_4.c.x), !vec2<bool>(var_4.e.x, var_4.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(var_3.a, var_3.b, vec2<bool>(false, true), var_3.b.x, vec2<bool>(var_2.x, var_4.d)), vec4<f32>(var_0.x, -712f, var_0.x, -1910f))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec4<bool>) -> vec4<i32> {
    var var_0 = func_2();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-124f, var_0.e.x, -1016f)), arg_1.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, 2029f, var_0.a.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-694f, arg_0.x, var_0.e.x))), var_0.e.x <= -844f)))), vec2<i32>(-2147483647i, 3503i), var_0.c, ~var_0.c.ww, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_0.e + var_0.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, arg_0.x, var_0.e.x, 258f) * vec4<f32>(593f, arg_0.x, var_0.a.x, var_0.a.x)))))), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(arg_2.x, 20185u), arg_1.a.x)), ~vec2<u32>(0u, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1875f, _wgslsmith_div_f32(-573f, -1133f), _wgslsmith_f_op_f32(831f * 715f), 1647f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.e, vec4<f32>(1000f, -786f, arg_0.x, 1000f), arg_1.d)) + var_0.e)), vec4<f32>(465f, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(trunc(1515f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-arg_0.x)))), arg_1.d != any(vec2<bool>(false, true)))), Struct_1(vec3<f32>(1670f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1576f + -645f), _wgslsmith_f_op_f32(abs(1544f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 1212f))), -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a) | var_0.d, countOneBits(vec2<i32>(-2147483647i, u_input.a))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0.d.x, global0[_wgslsmith_index_u32(28807u, 19u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(6894u, 19u)], u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(54253i, -2147483647i, -41838i, 2147483647i), var_0.c)), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.c.wy, vec2<i32>(-1080i, u_input.a)), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(6193u, 19u)]), vec2<i32>(global0[_wgslsmith_index_u32(0u, 19u)], 15579i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e * vec4<f32>(var_0.e.x, -1465f, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, -267f, arg_0.x, -177f))) * _wgslsmith_f_op_vec4_f32(max(var_0.e, var_0.e)))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, ~arg_1.a.x | ~arg_2.x), ~arg_2.x, 64354u));
    var_0 = func_2();
    let var_2 = vec4<bool>(any(select(select(!vec4<bool>(arg_1.e.x, arg_1.e.x, false, arg_1.b.x), vec4<bool>(arg_3.x, true, true, false), all(vec2<bool>(arg_1.e.x, false))), arg_3, true)), select(!select(arg_1.e.x & false, true, !arg_3.x), true, all(!arg_3)), true, true);
    var var_3 = var_1.b.x;
    return vec4<i32>(~firstTrailingBit(var_1.a.d.x), ~(-u_input.a) & -global0[_wgslsmith_index_u32(abs(arg_1.a.x), 19u)], reverseBits(~_wgslsmith_mult_i32(reverseBits(2147483647i), min(-1i, var_1.a.b.x))), _wgslsmith_sub_i32(var_0.c.x, ~abs(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1445f, _wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(trunc(199f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-981f, -460f, -767f, _wgslsmith_f_op_f32(select(2914f, 231f, true))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1439f, -738f, -707f, 644f), vec4<f32>(-933f, -1635f, -1272f, -979f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1811f, 338f, -1573f, 822f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -680f, 1000f, 163f) - vec4<f32>(-1861f, -904f, 688f, 663f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2325f, -1297f, -2457f, 348f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1162f, -386f, -391f, -825f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-366f, 492f, 1452f, 2406f)))))));
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1158f) - _wgslsmith_f_op_f32(-var_0.x))), vec2<i32>(-(u_input.a << (6250u % 32u)), firstLeadingBit(~global0[_wgslsmith_index_u32(1u, 19u)])), vec4<i32>(-1i) * -func_1(var_0.yw, Struct_3(vec2<u32>(33678u, 14987u), vec3<bool>(false, false, false), vec2<bool>(true, false), true, vec2<bool>(false, true)), vec3<u32>(0u, 57949u, 44860u), vec4<bool>(false, true, true, false)), vec2<i32>(global0[_wgslsmith_index_u32(~0u, 19u)] << (~0u % 32u), u_input.a), _wgslsmith_f_op_vec4_f32(-var_0)), max(~vec2<u32>(reverseBits(20630u), 23826u), vec2<u32>(~(~0u), 4294967295u)), var_0, func_2(), reverseBits(42556u));
    global0 = array<i32, 19>();
    var var_2 = vec3<i32>(0i, 1i, var_1.d.c.x);
    let var_3 = _wgslsmith_f_op_f32(sign(-400f));
    var_2 = _wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(countOneBits(var_1.d.c.xyz << (vec3<u32>(71427u, 20000u, var_1.b.x) % vec3<u32>(32u))), vec3<i32>(var_1.a.d.x, 1i, 18467i | u_input.a))), vec3<i32>(~_wgslsmith_dot_vec3_i32(func_1(var_1.d.e.xz, Struct_3(vec2<u32>(var_1.e, var_1.b.x), vec3<bool>(false, true, true), vec2<bool>(false, false), true, vec2<bool>(false, false)), vec3<u32>(123982u, 1u, 1u), vec4<bool>(false, true, true, false)).zwy, func_1(vec2<f32>(var_1.a.e.x, var_0.x), Struct_3(vec2<u32>(3608u, var_1.e), vec3<bool>(true, true, false), vec2<bool>(false, false), true, vec2<bool>(true, true)), vec3<u32>(116129u, var_1.b.x, var_1.b.x), vec4<bool>(true, false, false, true)).xwx), -2147483647i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-401f, -1463f, -343f)) - var_0.xyx), 0i, ~var_1.b, _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -28821i, min(~var_2.x, max(1i, -2147483647i))), (var_1.a.d << ((vec2<u32>(12312u, var_1.e) >> (var_1.b % vec2<u32>(32u))) % vec2<u32>(32u))) >> (countOneBits(firstLeadingBit(vec2<u32>(var_1.b.x, var_1.e))) % vec2<u32>(32u))));
}

