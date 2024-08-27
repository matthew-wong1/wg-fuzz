struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(63065u, 21425u), vec2<i32>(2147483647i, 2147483647i));

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<u32>, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = max(2147483647i, _wgslsmith_mod_i32(global0.b.x, global0.b.x));
    global1 = !(!vec2<bool>(any(select(vec2<bool>(global1.x, false), vec2<bool>(true, global1.x), true)), !all(vec4<bool>(true, true, false, false))));
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_div_f32(-141f, _wgslsmith_f_op_f32(946f - 815f));
    let var_3 = Struct_4(all(select(select(vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), global1.x), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, global1.x, false), vec3<bool>(true, global1.x, global1.x)), all(vec2<bool>(global1.x, global1.x)))) || (176f == _wgslsmith_f_op_f32(ceil(-1863f))), select(select(!select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, true, false, global1.x), global1.x), vec4<bool>(any(vec3<bool>(global1.x, false, true)), false, true, true), any(!vec3<bool>(true, global1.x, true))), select(vec4<bool>(global1.x, global1.x, global1.x & false, any(vec2<bool>(false, true))), select(vec4<bool>(global1.x, false, global1.x, global1.x), select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), false), !vec4<bool>(false, false, global1.x, global1.x)), vec4<bool>(global1.x || false, global1.x, true, all(vec3<bool>(true, global1.x, global1.x)))), true), firstTrailingBit(global2[_wgslsmith_index_u32(max(~_wgslsmith_mult_u32(0u, 1u), _wgslsmith_clamp_u32(countOneBits(u_input.a.x), 49597u, _wgslsmith_sub_u32(global0.a.x, u_input.a.x))), 32u)]), false, Struct_1(global2[_wgslsmith_index_u32(global0.a.x, 32u)], select(vec2<bool>(global1.x, all(vec2<bool>(true, global1.x))), vec2<bool>(false, true), vec2<bool>(true, !global1.x)), global0.a.x));
    return _wgslsmith_f_op_f32(1327f + var_2);
}

fn func_2() -> Struct_3 {
    let var_0 = !all(select(vec2<bool>(true, global1.x), vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, 0u != global0.a.x)));
    let var_1 = Struct_3(10630u, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_3())));
    let var_2 = true;
    global1 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, var_0), !var_0), vec2<bool>(false, !var_2), true), select(!(!select(vec2<bool>(false, true), vec2<bool>(var_2, false), var_2)), vec2<bool>(_wgslsmith_mod_u32(u_input.a.x, 73950u) != _wgslsmith_clamp_u32(global0.a.x, u_input.a.x, 45384u), true), !global1.x), false);
    let var_3 = abs(vec3<u32>(~(~_wgslsmith_add_u32(global0.a.x, 1u)), u_input.a.x, var_1.a));
    return var_1;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_4) -> vec4<i32> {
    var var_0 = func_2();
    let var_1 = false;
    global1 = select(vec2<bool>(false, !select(arg_1.d, true, !arg_1.e.b.x)), vec2<bool>(true, ~67999u == arg_3.c.x), arg_1.e.b);
    var var_2 = Struct_2(_wgslsmith_mult_vec2_u32(firstLeadingBit(~vec2<u32>(9768u, 20329u)) ^ vec2<u32>(arg_3.e.c, func_2().a), vec2<u32>(~(~arg_1.e.c), ~44267u)), firstLeadingBit(-_wgslsmith_add_vec2_i32(arg_0, vec2<i32>(arg_0.x, arg_0.x))));
    var_2 = Struct_2((firstLeadingBit(~vec2<u32>(var_0.a, 47182u)) ^ ~vec2<u32>(u_input.a.x, 49548u)) | vec2<u32>(func_2().a | ~100481u, var_0.a), var_2.b);
    return ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-11282i, -1i, arg_0.x, 1i), select(vec4<i32>(-8540i, -19025i, global0.b.x, -1i), vec4<i32>(arg_0.x, var_2.b.x, arg_0.x, var_2.b.x), true) & vec4<i32>(var_2.b.x, global0.b.x, -13731i, var_2.b.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(global1.x, arg_1.b.x, true), vec3<bool>(arg_1.b.x, false, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, true)), !vec3<bool>(arg_1.b.x, global1.x, true), true), all(select(vec3<bool>(true, false, false), vec3<bool>(arg_1.b.x, false, false), arg_1.b.x))));
    var var_1 = -1032i;
    global0 = Struct_2(u_input.a.xx, ~_wgslsmith_div_vec2_i32(arg_0.zw >> ((vec2<u32>(global0.a.x, 4294967295u) >> (vec2<u32>(global0.a.x, global0.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, arg_0.x, global0.b.x), vec3<i32>(-81097i, -1i, global0.b.x)), _wgslsmith_mod_i32(22098i, global0.b.x))));
    var var_2 = Struct_4(true, select(vec4<bool>(any(vec2<bool>(true, var_0.x)), arg_1.b.x, ~1u <= firstTrailingBit(0u), var_0.x), !select(select(vec4<bool>(arg_1.b.x, false, false, global1.x), vec4<bool>(global1.x, true, true, arg_1.b.x), false), select(vec4<bool>(global1.x, false, true, false), vec4<bool>(var_0.x, global1.x, var_0.x, true), true), all(vec4<bool>(var_0.x, false, false, var_0.x))), vec4<bool>(false, arg_1.b.x, global1.x, all(!var_0.xy))), ~global2[_wgslsmith_index_u32(u_input.a.x, 32u)], !(~5276u < select(~7879u, 60540u, false)), Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(9598u, 1u, 71323u, 4294967295u), arg_1.a), ~vec4<u32>(u_input.a.x, u_input.a.x, arg_1.c, 4294967295u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.c, 4294967295u, arg_1.c, 0u), arg_1.a)), !arg_1.b, 64382u));
    let var_3 = Struct_1(~(~(~var_2.e.a)), vec2<bool>(var_0.x != true, !(!(false | global1.x))), reverseBits(~48811u));
    return -vec3<i32>(-2147483647i, 0i, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(true, all(vec4<bool>(global1.x, any(vec4<bool>(global1.x, true, global1.x, global1.x)), false, !(!global1.x))));
    let var_0 = countOneBits(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a));
    let var_1 = abs(_wgslsmith_sub_vec3_i32(~func_4(func_1(vec2<i32>(global0.b.x, -48126i), Struct_4(global1.x, vec4<bool>(global1.x, global1.x, true, global1.x), vec4<u32>(var_0, 25811u, 14535u, 63916u), false, Struct_1(vec4<u32>(1u, global0.a.x, 93614u, 4294967295u), vec2<bool>(global1.x, global1.x), 4294967295u)), u_input.a.x, Struct_4(true, vec4<bool>(true, false, global1.x, global1.x), global2[_wgslsmith_index_u32(var_0, 32u)], global1.x, Struct_1(global2[_wgslsmith_index_u32(var_0, 32u)], vec2<bool>(global1.x, true), 0u))), Struct_1(vec4<u32>(145576u, u_input.a.x, 27117u, 29149u), vec2<bool>(false, false), var_0)), vec3<i32>(global0.b.x, 1i, -41981i) >> (vec3<u32>(_wgslsmith_mod_u32(1u, 8747u), 1u, var_0) % vec3<u32>(32u))));
    global1 = !(!vec2<bool>(true, global1.x));
    global1 = !vec2<bool>(true, all(vec2<bool>(false, true)));
    var var_2 = _wgslsmith_sub_vec2_i32(abs(~vec2<i32>(-2147483647i, min(-2298i, var_1.x))), -select(func_4(vec4<i32>(global0.b.x, -13572i, global0.b.x, -6023i), Struct_1(global2[_wgslsmith_index_u32(global0.a.x, 32u)], vec2<bool>(global1.x, global1.x), 1u)).yy, var_1.yy, min(4294967295u, var_0) >= 1u));
    var var_3 = global1.x;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(793f - -197f) * 1f)))) + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(379f, 2244f, false)), _wgslsmith_f_op_f32(trunc(-990f)))) - _wgslsmith_div_f32(-520f, -1315f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~global0.a, u_input.a.xy), ~global2[_wgslsmith_index_u32(26159u, 32u)], abs(func_4(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_1.x, var_1.x, 2147483647i), vec4<i32>(var_2.x, -2147483647i, -58488i, var_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(56912i, 0i, var_2.x, 1i), vec4<i32>(-4784i, 14282i, 15273i, -1i)), vec4<i32>(var_1.x, var_1.x, 1i, var_2.x) << (vec4<u32>(u_input.a.x, 1u, 1u, 31570u) % vec4<u32>(32u))), Struct_1(vec4<u32>(4975u, 1u, 4294967295u, 4294967295u) << (vec4<u32>(var_0, u_input.a.x, 41540u, 4294967295u) % vec4<u32>(32u)), vec2<bool>(true, true), abs(u_input.a.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(327f)), _wgslsmith_f_op_f32(step(684f, var_4)), _wgslsmith_f_op_f32(select(-521f, var_4, true)))))), vec2<i32>(2147483647i, -_wgslsmith_mult_i32(var_2.x >> (global0.a.x % 32u), -2699i)));
}

