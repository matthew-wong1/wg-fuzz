struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

var<private> global1: f32 = -1000f;

var<private> global2: u32;

var<private> global3: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = true;
    let var_1 = -_wgslsmith_clamp_i32(~(-82699i), -(-u_input.b.x << (reverseBits(94796u) % 32u)), u_input.e);
    var var_2 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, true, true), _wgslsmith_f_op_f32(-global3.a.x) <= _wgslsmith_f_op_f32(-1370f + -722f)), vec4<bool>(!(!(global3.a.x >= global3.a.x)), false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(!any(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, false, true, false)), true)));
    var var_3 = Struct_2(_wgslsmith_clamp_vec4_i32(max(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.e, u_input.b.x, u_input.e, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, var_1, arg_0), u_input.b)), vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(-20310i, 32981i, 2147483647i), _wgslsmith_mod_i32(u_input.a, -99911i), _wgslsmith_mod_i32(2147483647i, -1i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -17580i, -46347i, -89985i), vec4<i32>(var_1, 20079i, var_1, 2147483647i) >> (vec4<u32>(u_input.c.x, 16730u, u_input.c.x, u_input.d) % vec4<u32>(32u))), min(vec4<i32>(var_1, 0i, -2147483647i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, u_input.b.x, var_1, -37072i), vec4<i32>(-1i, 1i, -2820i, 4626i))) & ~vec4<i32>(var_1, arg_0, 2147483647i, arg_0)), vec3<bool>(!(var_2.x || true), false, true));
    var_0 = false;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f))));
}

fn func_2() -> f32 {
    var var_0 = -u_input.e;
    var var_1 = Struct_4(Struct_2(vec4<i32>(u_input.b.x ^ u_input.e, 42089i, firstLeadingBit(u_input.e), u_input.e), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, false), vec3<bool>(true, false, false))));
    global2 = u_input.c.x;
    var_1 = Struct_4(Struct_2(min(var_1.a.a ^ vec4<i32>(u_input.e, -1i, u_input.a, var_1.a.a.x), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(var_1.a.a.x, 177i, u_input.b.x, 37220i)), u_input.b >> (vec4<u32>(u_input.c.x, 4044u, u_input.d, 26470u) % vec4<u32>(32u)))), !vec3<bool>(var_1.a.b.x, true, false)));
    let var_2 = global3.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(51692i)) * global3.a.x);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_5) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(exp2(global3.a.x)), -864f, -138f))));
    global0 = array<vec2<i32>, 23>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, global3.a.x)), _wgslsmith_f_op_f32(-1467f - -1845f)) + -717f)), _wgslsmith_f_op_f32(1408f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-612f - 1219f)), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2410f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(sign(1000f))))));
    let var_2 = ~26545u;
    global0 = array<vec2<i32>, 23>();
    return _wgslsmith_mult_i32(abs(-u_input.e), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(15438i, _wgslsmith_div_i32(func_1(true, vec4<bool>(true, true, true, true), Struct_5(true)), u_input.b.x) << (abs(u_input.d) % 32u));
    let var_1 = 1u;
    var var_2 = all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(true, true)));
    let var_3 = select(_wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a), _wgslsmith_div_i32(u_input.a ^ -2147483647i, 34678i), -(u_input.e >> (94074u % 32u)), firstLeadingBit(~(-4192i))), vec4<i32>(-(u_input.a ^ -2147483647i), ~select(u_input.b.x, 56375i, true), 0i, -18474i)), u_input.b, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)) != _wgslsmith_f_op_f32(global3.a.x - global3.a.x)));
    var var_4 = Struct_4(Struct_2(~u_input.b, vec3<bool>(true, true, true)));
    var_2 = var_4.a.b.x;
    var_4 = Struct_4(Struct_2(~u_input.b >> ((abs(vec4<u32>(var_1, 52494u, var_1, 80187u)) >> (~vec4<u32>(4108u, 0u, 29340u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), var_4.a.b));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.a.x, 1689f)) - _wgslsmith_f_op_f32(step(global3.a.x, _wgslsmith_f_op_f32(-1119f + global3.a.x)))), _wgslsmith_f_op_f32(sign(global3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.d, 0u, u_input.d, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, var_1, var_1, 55580u), abs(vec4<u32>(0u, var_1, 8555u, 4294967295u)))), firstLeadingBit(max(vec4<u32>(26081u, 11613u, 1u, var_1), reverseBits(vec4<u32>(var_1, u_input.c.x, u_input.c.x, var_1)) << ((vec4<u32>(11162u, u_input.d, u_input.c.x, 4294967295u) ^ vec4<u32>(1u, var_1, u_input.d, var_1)) % vec4<u32>(32u)))), ~vec2<u32>(countOneBits(var_1), var_1) << (_wgslsmith_mod_vec2_u32(u_input.c.zy, u_input.c.zz) % vec2<u32>(32u)));
}

