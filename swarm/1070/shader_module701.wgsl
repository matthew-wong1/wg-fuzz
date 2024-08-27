struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    let var_0 = 1i;
    var var_1 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(u_input.a, firstLeadingBit(1u)), 5u)], 5u)];
    var var_2 = vec4<f32>(1379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(633f + -495f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f) * _wgslsmith_f_op_f32(f32(-1f) * -885f))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_2.x), -223f)))), firstLeadingBit(abs(u_input.b.xx)), Struct_1(any(vec3<bool>(any(vec4<bool>(true, true, true, true)), false, select(false, false, false))), firstLeadingBit(~vec4<i32>(var_0, var_0, var_0, 6622i) | vec4<i32>(-24356i, var_0, 1i, var_0)), 4294967295u), !vec4<bool>(select(true, true, true), true, any(vec3<bool>(true, false, false)), (u_input.a >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)] % 32u)) == 21181u), vec3<bool>(!(u_input.b.x < firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 5u)])), !((34263u <= global0[_wgslsmith_index_u32(u_input.a, 5u)]) && true), !(_wgslsmith_div_f32(-643f, var_2.x) > var_2.x)));
    let var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-496f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_2.x, -145f))))), var_2.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a + -552f) - _wgslsmith_f_op_f32(-1329f * -1194f))));
    return !var_3.d.yyz;
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = func_3();
    let var_1 = Struct_1(~u_input.a <= ~max(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20279u, 5u)], 5u)], 5u)], _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(min(-2147483647i, u_input.c), reverseBits(0i), ~2147483647i, -2147483647i ^ u_input.d), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, 1i, u_input.d, u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(48078i, 32846i, u_input.d, u_input.c), vec4<i32>(u_input.d, -1i, -55083i, 2147483647i)))), reverseBits(abs(vec4<i32>(u_input.d, -2147483647i, 4485i, 79757i))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.c, u_input.c, u_input.d), vec4<i32>(u_input.c, u_input.d, 0i, u_input.d)), vec4<i32>(u_input.c, -26214i, 2365i, 2147483647i) ^ vec4<i32>(u_input.c, u_input.d, u_input.d, -2147483647i)) | -vec4<i32>(u_input.d, 1i, 13435i, -24559i)), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(19336u, 5u)] ^ global0[_wgslsmith_index_u32(reverseBits(~global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), 5u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(select(26631u, 24693u, false)), 5u)], 5u)]));
    let var_2 = Struct_2(Struct_1(var_1.a & var_0.x, _wgslsmith_clamp_vec4_i32(min(firstLeadingBit(vec4<i32>(u_input.d, var_1.b.x, var_1.b.x, -1i)), abs(var_1.b)), var_1.b, ~var_1.b), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), 5u)]));
    var var_3 = 4294967295u;
    var var_4 = Struct_3(arg_0.x, abs(u_input.b.yz) >> (~vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(countOneBits(var_2.a.c), 5u)]) % vec2<u32>(32u)), var_1, select(vec4<bool>(true, true, true, _wgslsmith_div_f32(-167f, arg_0.x) < _wgslsmith_f_op_f32(arg_0.x - -707f)), vec4<bool>(var_0.x, true, false, true != var_2.a.a), select(!vec4<bool>(var_1.a, true, var_0.x, var_1.a), select(!vec4<bool>(true, true, var_0.x, var_1.a), !vec4<bool>(false, true, var_0.x, var_0.x), true), !vec4<bool>(true, true, var_2.a.a, true))), vec3<bool>(true, true, true));
    return abs(26214i);
}

fn func_1() -> Struct_3 {
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    var var_0 = firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(26758u, u_input.b.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)], 1u), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 78908u, 0u, 1u))), vec4<u32>(~0u, 4294967295u, _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(u_input.a, u_input.b.x)), 0u)));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1010f, 244f, 524f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(670f, 310f, 2351f)))))));
    return Struct_3(1713f, countOneBits(u_input.b.zy), Struct_1(true, _wgslsmith_sub_vec4_i32(min(-vec4<i32>(var_1, 29147i, 2147483647i, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(var_1, var_1, var_1, 0i), vec4<i32>(var_1, -1i, var_1, u_input.c))), countOneBits(vec4<i32>(-33253i, var_1, -2147483647i, 34123i))), var_0.x), select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), var_1 <= -2147483647i), vec4<bool>(true, true, true, false), true), !vec4<bool>(false, any(vec4<bool>(false, false, true, true)), false, var_0.x <= 4294967295u), true), !select(vec3<bool>(true, true, true), func_3(), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_0.a));
    let var_2 = vec4<bool>(true, !var_0.c.a, func_3().x, _wgslsmith_div_f32(var_1, -562f) == _wgslsmith_f_op_f32(abs(var_1)));
    var var_3 = _wgslsmith_div_vec2_i32(var_0.c.b.xz, select(vec2<i32>(-2147483647i, var_0.c.b.x), select(vec2<i32>(max(-2147483647i, u_input.d), select(u_input.c, var_0.c.b.x, true)), _wgslsmith_mult_vec2_i32(var_0.c.b.ww, vec2<i32>(0i, var_0.c.b.x)), !var_2.x), var_0.c.a));
    global0 = array<u32, 5>();
    let var_4 = var_0.e.x;
    global0 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, -573f, var_1), vec3<f32>(1198f, var_0.a, 1054f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(539f, 887f, var_0.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1018f, -1013f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1639f)), _wgslsmith_f_op_f32(floor(-1030f)), var_1) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-911f, -230f, var_0.a))))), select(vec3<u32>(53075u, _wgslsmith_div_u32(var_0.c.c, reverseBits(33362u)), countOneBits(var_0.c.c)), ~_wgslsmith_mod_vec3_u32(u_input.b, ~u_input.b), vec3<bool>(func_3().x, any(!var_2), false)), ~var_0.c.b.x);
}

