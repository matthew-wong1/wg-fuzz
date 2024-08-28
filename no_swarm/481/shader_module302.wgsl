struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-525f, 954f, 1239f, -1253f, 423f, -1898f, -1630f, 229f, 809f, -511f, -991f, 1000f, 1087f, -1296f, -482f, 2115f, -911f, 1044f, 582f, 523f, 836f, -1111f, 214f, 753f, -895f);

var<private> global1: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

var<private> global2: vec4<f32> = vec4<f32>(-390f, 967f, -2416f, 389f);

var<private> global3: array<vec4<f32>, 5>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    var var_0 = 1022f;
    let var_1 = true;
    global2 = global3[_wgslsmith_index_u32(0u, 5u)];
    var var_2 = select(!select(vec2<bool>(var_1, all(vec2<bool>(var_1, var_1))), select(vec2<bool>(false, var_1), vec2<bool>(var_1, true), true || var_1), vec2<bool>(false, false != var_1)), !vec2<bool>(all(vec2<bool>(var_1, var_1)), var_1), vec2<bool>(true, var_1));
    let var_3 = Struct_2(Struct_1(u_input.a | _wgslsmith_mod_u32(4294967295u, ~u_input.a), u_input.b, firstLeadingBit(u_input.a), reverseBits(1u)));
    return u_input.a;
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(global2.x, -207f));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global2.yzx)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.xyy))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a, 25u)], global2.x)))))));
    global0 = array<f32, 25>();
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(1176f + 753f);
    return abs(2147483647i);
}

fn func_1(arg_0: u32) -> vec2<i32> {
    let var_0 = vec3<u32>(115605u ^ countOneBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0, u_input.a), u_input.a)), ~(countOneBits(~16766u) & arg_0), firstTrailingBit(~(~2308u)));
    global0 = array<f32, 25>();
    global1 = array<vec3<bool>, 24>();
    var var_1 = func_2();
    var var_2 = func_3();
    return _wgslsmith_div_vec2_i32(((min(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(87637i, 1i)) | vec2<i32>(u_input.b, u_input.b)) >> (vec2<u32>(u_input.a, u_input.a & 1u) % vec2<u32>(32u))) | vec2<i32>(u_input.b << (~u_input.a % 32u), ~abs(-57035i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -2147483647i) ^ vec2<i32>(-3486i, _wgslsmith_dot_vec3_i32(vec3<i32>(-29921i, 0i, 20681i), vec3<i32>(-2147483647i, u_input.b, u_input.b))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.b, 1i)), firstLeadingBit(vec2<i32>(u_input.b, 29352i))), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(-2147483647i, u_input.b << (~arg_0 % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 5>();
    let var_0 = ~min(max(func_1(25191u) | abs(vec2<i32>(-2147483647i, 2147483647i)), abs(vec2<i32>(-32372i, u_input.b)) ^ (vec2<i32>(-1i, 2147483647i) >> (vec2<u32>(1357u, u_input.a) % vec2<u32>(32u)))), ~vec2<i32>(2147483647i, 2147483647i));
    var var_1 = all(!vec2<bool>(u_input.a > u_input.a, all(vec4<bool>(false, true, false, true)))) & ((_wgslsmith_f_op_f32(f32(-1f) * -1605f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(52743u, 25u)])))) || any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    let var_2 = vec3<bool>(4294967295u <= u_input.a, all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))) != all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true)), true);
    global3 = array<vec4<f32>, 5>();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1211f))))), global2.x, _wgslsmith_div_f32(-687f, 2170f), global2.x);
    var var_3 = any(vec4<bool>(false, var_2.x, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)] + 1048f))))) + global0[_wgslsmith_index_u32(u_input.a, 25u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global2.xyx))));
}

