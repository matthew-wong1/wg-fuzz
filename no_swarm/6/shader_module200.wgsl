struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(13803u, 4294967295u);

var<private> global1: array<i32, 1>;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_3, 15>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-739f * _wgslsmith_f_op_f32(step(561f, arg_2.a.x))), -1215f) + arg_2.a.xx);
    global2 = vec4<i32>(-global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-73966i, countOneBits(select(-1i, global2.x, false))), global2.wx), u_input.a.x, u_input.d);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(397f, -134f, -962f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(arg_2.a.yxw)))), !(!vec3<bool>(arg_2.b, false, true))))), ~firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.a.b, vec3<u32>(4294967295u, arg_1.a.b.x, u_input.e), vec3<u32>(u_input.e, u_input.e, 4294967295u)), vec3<u32>(0u, u_input.c, 13097u))), -705f);
    var var_2 = 4294967295u;
    global1 = array<i32, 1>();
    return _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, reverseBits(59916u)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_1.b, ~vec3<u32>(var_1.b.x, global0.x, u_input.e)), _wgslsmith_sub_u32(10505u, global0.x)), 4104u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    global0 = abs(~func_3(abs(2147483647i), Struct_4(global3[_wgslsmith_index_u32(0u, 15u)]), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -2154f))), arg_1)));
    global1 = array<i32, 1>();
    var var_0 = (~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.e, 0u, global0.x), u_input.c) & _wgslsmith_dot_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, u_input.e)), ~vec3<u32>(4294967295u, 0u, u_input.e)), vec3<u32>(0u >> (global0.x % 32u), func_3(global2.x, Struct_4(Struct_3(arg_0, vec3<u32>(global0.x, 25624u, 22699u), arg_0.a.x)), Struct_2(vec4<f32>(1643f, arg_0.a.x, arg_0.a.x, -795f), false)).x, _wgslsmith_sub_u32(4294967295u, u_input.e)))) & abs(firstLeadingBit(max(global0.x ^ u_input.c, global0.x)));
    var var_1 = _wgslsmith_sub_vec3_i32(global2.xwz, ~vec3<i32>(-13891i, global1[_wgslsmith_index_u32(~global0.x, 1u)], arg_2.x));
    let var_2 = vec3<u32>(45951u, global0.x, ~u_input.c);
    return global0.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: f32, arg_3: bool) -> f32 {
    global0 = ~vec2<u32>(_wgslsmith_clamp_u32(~arg_1, 1u << ((global0.x >> (arg_1 % 32u)) % 32u), 0u), 1u);
    let var_0 = countOneBits(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global2.x), global2.xx), ~arg_0.x)) << (_wgslsmith_add_u32(arg_1, ~arg_1) % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, _wgslsmith_f_op_f32(step(arg_2, arg_2)), 788f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, 687f, 213f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-195f, 178f, arg_2)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(-arg_2))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(479f, arg_2, arg_2) + vec3<f32>(1000f, -1000f, arg_2)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1398f, arg_2, 2493f), vec3<f32>(610f, arg_2, arg_2))))), vec3<f32>(arg_2, _wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(trunc(arg_2))), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, arg_3), vec3<bool>(arg_3, false, arg_3))))));
    global0 = vec2<u32>(62833u, 2315u);
    global1 = array<i32, 1>();
    return var_1.x;
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(u_input.e, 4294967295u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, u_input.c), vec2<u32>(u_input.e, u_input.e))), vec2<u32>(abs(1u), 32212u)) ^ ~(~(~vec2<u32>(u_input.c, u_input.c)) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 31247u), vec2<u32>(global0.x, global0.x), vec2<u32>(u_input.c, 1u)) % vec2<u32>(32u)));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(-vec4<i32>(-global1[_wgslsmith_index_u32(global0.x, 1u)], ~u_input.a.x, i32(-1i) * -25728i, global1[_wgslsmith_index_u32(func_2(Struct_1(vec3<f32>(-1300f, 342f, -1207f)), true, u_input.a), 1u)]), 16863u, _wgslsmith_f_op_f32(sign(1f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1963f));
    var var_1 = select(vec4<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) || true, !(1u > global0.x), all(vec2<bool>(true, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), true), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), true), vec4<bool>(true, any(vec2<bool>(false, true)), all(vec2<bool>(false, true)), global0.x == u_input.c), _wgslsmith_clamp_u32(global0.x, 52805u, 71654u) <= 1u), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)) == (global0.x != 14690u)), vec4<bool>(true, true, false, !any(vec4<bool>(false, true, false, false))));
    global2 = vec4<i32>(~abs(u_input.a.x), (i32(-1i) * -38557i) >> (_wgslsmith_mult_u32(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u) ^ vec2<u32>(4646u, 38138u), ~vec2<u32>(u_input.e, global0.x))) % 32u), global2.x, max((13202i & global1[_wgslsmith_index_u32(4294967295u, 1u)]) & global2.x, u_input.b) ^ firstTrailingBit(0i | _wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.e, 1u)])));
    global2 = vec4<i32>(9565i, 0i, _wgslsmith_sub_i32(~(-u_input.b), firstLeadingBit(global1[_wgslsmith_index_u32(1u, 1u)])) | 0i, u_input.d);
    return Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 1650f, 2349f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -198f, 334f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 192f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(917f, -1751f, var_0.x, 978f) + vec4<f32>(-147f, var_0.x, -1346f, var_0.x))), true)))), !all(select(select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), var_1.x), select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = min(abs(abs(-vec3<i32>(-1i, 11734i, -34634i))), vec3<i32>(~select(u_input.a.x & global2.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], -4567i >= u_input.d), -40088i, 1i));
    let var_2 = Struct_3(Struct_1(var_0.a.xzy), vec3<u32>(u_input.e & _wgslsmith_mod_u32(u_input.e, _wgslsmith_sub_u32(1u, 1u)), 1u, global0.x), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-923f * var_0.a.x)), _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, -7015i, global1[_wgslsmith_index_u32(5319u, 1u)]), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], -6284i, 1i, -21422i)), global0.x, _wgslsmith_f_op_f32(-var_0.a.x), all(vec4<bool>(var_0.b, var_0.b, true, var_0.b)))))));
    let var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_2.a.a)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a.a.x, var_0.a.x, var_2.a.a.x))))), firstLeadingBit(vec3<u32>(var_2.b.x, 44955u, u_input.c) | firstTrailingBit(var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.a.x, var_0.a.x))));
    global2 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.d, ~(-1i), ~global1[_wgslsmith_index_u32(~global0.x, 1u)], 12446i), vec4<i32>(-1i, u_input.b, ~var_1.x, abs(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.e, 1u)], var_1.x)))), _wgslsmith_sub_vec4_i32(~(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, 32749i, u_input.a.x, u_input.a.x), vec4<i32>(global1[_wgslsmith_index_u32(261u, 1u)], -41393i, var_1.x, global1[_wgslsmith_index_u32(var_3.a.b.x, 1u)])) | max(vec4<i32>(0i, var_1.x, var_1.x, 2147483647i), vec4<i32>(-1i, u_input.d, 0i, 29261i))), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, global2.x, var_1.x, -1i), vec4<i32>(22596i, -27801i, global2.x, u_input.a.x)) >> (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b.x, u_input.c, u_input.c, global0.x), vec4<u32>(var_2.b.x, 35763u, 42556u, u_input.e))) % vec4<u32>(32u))));
    var var_4 = select(var_2.b.x, ~0u, all(vec3<bool>(true, true, true)));
    global1 = array<i32, 1>();
    var var_5 = vec4<bool>(var_0.b, true, u_input.b >= 691i, true);
    global1 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(global2.yzy), global2.zy, (~var_3.a.b.x & ~66369u) ^ (~max(var_3.a.b.x, var_3.a.b.x) >> (global0.x % 32u)), 1i, vec4<f32>(var_0.a.x, -590f, 1676f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(658f + -1954f)))))));
}

