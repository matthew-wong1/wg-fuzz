struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

var<private> global1: array<vec2<bool>, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(max(_wgslsmith_clamp_i32(2147483647i, 17997i, 0i), abs(-17697i)), 1i)), ~(-42812i));
    var var_1 = Struct_2(Struct_1(any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), false))), min(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 2147483647i, 373i, var_0.x), vec4<i32>(var_0.x, var_0.x, -30424i, -1i))), ~(min(vec4<i32>(-1i, -1i, var_0.x, var_0.x), vec4<i32>(var_0.x, 7741i, -2147483647i, var_0.x)) | countOneBits(vec4<i32>(var_0.x, 9964i, var_0.x, var_0.x)))));
    var var_2 = min(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, var_1.b.x), vec3<i32>(var_0.x, var_0.x, var_1.b.x)), ~var_0.x), ~(-var_0.x)), abs(var_0)) << ((vec2<u32>(_wgslsmith_div_u32(~0u, u_input.a.x), ~(~4294967295u)) << ((vec2<u32>(~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 23333u)) | _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.yy, vec2<u32>(1998u, u_input.a.x), u_input.a.yy), ~u_input.a.zx)) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = array<vec2<bool>, 11>();
    var var_3 = firstTrailingBit(_wgslsmith_sub_vec4_u32(~(~select(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 37558u), vec4<u32>(u_input.a.x, 32398u, u_input.a.x, 0u), vec4<bool>(var_1.a.a, false, false, var_1.a.a))), vec4<u32>(~93086u | max(u_input.a.x, u_input.a.x), 0u, _wgslsmith_dot_vec2_u32(u_input.a.zx & u_input.a.zy, ~u_input.a.yz), u_input.a.x | ~u_input.a.x)));
    return -var_0.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(true && all(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), -_wgslsmith_sub_vec4_i32(-vec4<i32>(13948i, 61204i, -2147483647i, 0i), -vec4<i32>(9708i, 13801i, -22910i, 8660i)) ^ vec4<i32>((-19113i << (u_input.a.x % 32u)) | (i32(-1i) * -20010i), _wgslsmith_mod_i32(1i, -1i), func_3(), max(_wgslsmith_div_i32(6927i, 1i), -1i)));
    let var_1 = abs(vec4<u32>(firstLeadingBit(u_input.a.x) << (u_input.a.x % 32u), ~_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(4294967295u, 0u)), ~u_input.a.x ^ u_input.a.x, ~u_input.a.x) | _wgslsmith_add_vec4_u32(~select(vec4<u32>(0u, 34663u, 1u, 49260u), vec4<u32>(63306u, u_input.a.x, 0u, 0u), var_0.a.a), ~_wgslsmith_add_vec4_u32(vec4<u32>(11849u, 28875u, 21151u, 0u), vec4<u32>(724u, 4294967295u, u_input.a.x, u_input.a.x))));
    global1 = array<vec2<bool>, 11>();
    var var_2 = vec2<u32>(~select(~u_input.a.x, countOneBits(~var_1.x), var_0.a.a), 1u);
    var var_3 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-var_0.b.ywy, var_0.b.xxy), ~_wgslsmith_add_vec3_i32(firstTrailingBit(var_0.b.wwy), vec3<i32>(0i, var_0.b.x, var_0.b.x)));
    return Struct_2(Struct_1(!var_0.a.a), (-firstTrailingBit(vec4<i32>(var_0.b.x, var_3.x, 49574i, 2251i)) >> ((vec4<u32>(63453u, 4798u, 4294967295u, var_2.x) | var_1) % vec4<u32>(32u))) & var_0.b);
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2();
    var var_1 = Struct_3(func_2());
    let var_2 = _wgslsmith_f_op_f32(ceil(-440f));
    var var_3 = _wgslsmith_mod_i32(-17713i, ~(~var_0.b.x));
    var_3 = var_1.a.b.x;
    return global1[_wgslsmith_index_u32(u_input.a.x, 11u)];
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    global1 = array<vec2<bool>, 11>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(247f, -1143f, -1000f, 1f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2327f, -1120f, 2164f, 663f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1397f, 678f, 1000f, -184f))), vec4<f32>(1f, _wgslsmith_f_op_f32(1281f + 1000f), -651f, -743f), true || any(vec3<bool>(false, true, false)))), func_1().x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-362f)), _wgslsmith_div_f32(-626f, -1000f), 1872f, -183f)), vec4<f32>(-1244f, _wgslsmith_f_op_f32(round(-412f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-421f + 1310f)), 1303f), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1000f, var_0.x)))), var_0.x, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-588f * var_0.x) * 299f)) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(318f)))), _wgslsmith_div_f32(-247f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(var_0.x + var_0.x), 731f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * _wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1144f, 389f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1369f, _wgslsmith_f_op_f32(max(1643f, var_0.x)), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(var_0.x * var_0.x)))));
    let var_2 = !select(vec4<bool>(true, false, true || any(global1[_wgslsmith_index_u32(0u, 11u)]), false), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false)), var_1.x > _wgslsmith_f_op_f32(ceil(var_1.x)));
    return Struct_1(!(!(var_2.x | var_2.x)) | all(!(!vec4<bool>(false, var_2.x, false, false))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<vec3<u32>, 9>();
    global1 = array<vec2<bool>, 11>();
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1421f + 701f));
    global1 = array<vec2<bool>, 11>();
    return vec2<bool>(any(select(select(vec3<bool>(arg_1.a, true, true), vec3<bool>(true, arg_0.x, arg_0.x), arg_0.x), !(!vec3<bool>(false, false, arg_1.a)), vec3<bool>(true, false, arg_0.x))), !(arg_0.x | !arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-23237i, 2147483647i);
    var var_1 = func_5(vec2<bool>(true, any(vec2<bool>(false, true))), func_4(select(vec2<u32>(~u_input.a.x, select(u_input.a.x, u_input.a.x, false)), ~_wgslsmith_add_vec2_u32(u_input.a.yy, vec2<u32>(14359u, u_input.a.x)), !func_1())));
    var_0 = -18839i;
    var var_2 = Struct_3(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(1120f, -739f)), 1f, _wgslsmith_f_op_f32(abs(425f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1443f, -261f, -634f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(326f, 767f, 553f)))), vec2<u32>(~(~5513u), firstTrailingBit(~abs(u_input.a.x))), vec3<i32>(func_3(), _wgslsmith_div_i32(15772i, 38807i), ~_wgslsmith_div_i32(var_2.a.b.x, -2147483647i)));
}

