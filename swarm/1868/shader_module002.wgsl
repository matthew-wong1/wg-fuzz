struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_1;

var<private> global2: i32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    global1 = Struct_1(_wgslsmith_clamp_vec3_i32(-(~(-global1.a)), vec3<i32>(-1058i, -13216i, select(min(-2147483647i, u_input.c), global1.a.x, true)), vec3<i32>(-1i) * -vec3<i32>(global1.a.x, 0i, -2147483647i)));
    var var_0 = any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))) & true;
    global0 = -26493i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f));
    var_0 = any(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(false, false, true)), vec2<bool>(true, true), !any(vec2<bool>(false, true))));
    return _wgslsmith_div_vec4_u32(vec4<u32>(abs(0u), abs(abs(u_input.a.x) | min(u_input.e.x, 4294967295u)), ~(~firstLeadingBit(u_input.e.x)), ~_wgslsmith_div_u32(~u_input.e.x, u_input.e.x)), max(select(min(~vec4<u32>(0u, 21799u, 45441u, u_input.a.x), vec4<u32>(u_input.a.x, 15481u, 109179u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(42862u, u_input.a.x, 30493u, u_input.e.x), ~vec4<u32>(74599u, u_input.e.x, u_input.e.x, u_input.a.x)), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), any(vec4<bool>(false, true, true, false)))), ~(~vec4<u32>(32861u, u_input.a.x, u_input.e.x, 0u) ^ countOneBits(vec4<u32>(61130u, 4294967295u, 48698u, 1u)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(~firstLeadingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, arg_0.x, arg_0.x, 0u)), vec4<u32>(64387u, 4294967295u, 52099u, 48054u))), max(max(~vec4<u32>(arg_0.x, u_input.a.x, 62898u, 25868u), ~max(vec4<u32>(arg_0.x, arg_0.x, 0u, 0u), vec4<u32>(u_input.e.x, u_input.e.x, 4294967295u, u_input.a.x))), ~func_3()));
    var var_1 = arg_1.x;
    let var_2 = Struct_1(global1.a);
    let var_3 = var_2;
    global0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, ~var_3.a.x, reverseBits(4205i), abs(2147483647i)), -select(_wgslsmith_mod_vec4_i32(vec4<i32>(48944i, 33163i, 54735i, var_2.a.x), vec4<i32>(2147483647i, u_input.d.x, -2147483647i, var_2.a.x)), vec4<i32>(40456i, var_2.a.x, u_input.c, -113i) >> (vec4<u32>(16410u, u_input.e.x, arg_0.x, arg_0.x) % vec4<u32>(32u)), false)), (~(vec4<i32>(35310i, u_input.c, var_3.a.x, var_2.a.x) << (vec4<u32>(u_input.e.x, u_input.a.x, 54423u, 22876u) % vec4<u32>(32u))) >> (~firstLeadingBit(vec4<u32>(93308u, arg_0.x, 4294967295u, 57225u)) % vec4<u32>(32u))) >> (firstLeadingBit(min(vec4<u32>(0u, 0u, arg_0.x, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, arg_0.x)) >> (~vec4<u32>(13836u, arg_0.x, u_input.a.x, 32513u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_sub_vec3_i32(abs(var_3.a), vec3<i32>(-global1.a.x, ~global1.a.x, _wgslsmith_div_i32(-1i, -2147483647i))) >> (_wgslsmith_div_vec3_u32(arg_0, countOneBits(vec3<u32>(52619u, 4294967295u, arg_0.x)) ^ ~vec3<u32>(36156u, 4224u, u_input.a.x)) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-923f + _wgslsmith_f_op_f32(394f * 224f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1279f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(731f, -1754f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -823f))))), 194f);
    let var_1 = all(vec3<bool>(false, any(vec2<bool>(true, true)), true));
    var var_2 = arg_1;
    var var_3 = arg_1;
    global0 = global1.a.x;
    return arg_1;
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = func_4(arg_0, Struct_1(vec3<i32>(~u_input.d.x, _wgslsmith_mult_i32(-8710i, _wgslsmith_div_i32(48530i, global1.a.x)), abs(32158i))), func_2(~(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a) ^ countOneBits(vec3<u32>(u_input.e.x, u_input.e.x, 83272u))), !vec4<bool>(all(vec4<bool>(true, true, true, false)), all(vec2<bool>(false, false)), true, u_input.c != 1i)));
    global1 = func_2(vec3<u32>(~1u, ~(~u_input.e.x), 1u) >> ((u_input.e << (u_input.e % vec3<u32>(32u))) % vec3<u32>(32u)), vec4<bool>(_wgslsmith_sub_u32(abs(u_input.e.x), 0u) < ~u_input.e.x, all(vec3<bool>(u_input.e.x == 4294967295u, false, all(vec2<bool>(false, false)))), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true)), select(all(vec2<bool>(true, true)), true, false)));
    var var_1 = select(select(vec4<bool>(true, false, true, any(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), any(vec3<bool>(true, false, false)), true, true)), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true)))) | true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1154f, 181f, -1397f, -351f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1278f, 164f, -1586f, -901f) * vec4<f32>(2182f, -318f, 1000f, -2439f)))) - vec4<f32>(-136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1586f + 965f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(751f)), 1563f))));
    var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(1109f * _wgslsmith_f_op_f32(-var_2.x)), -1647f, -618f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -409f, var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1272f, -271f, var_2.x, var_2.x))), var_1.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-656f, var_2.x, -402f, -595f) - vec4<f32>(764f, var_2.x, var_2.x, 1000f)) - vec4<f32>(242f, 1000f, -1649f, var_2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1457f, -394f, var_2.x, var_2.x) - vec4<f32>(var_2.x, 981f, 1168f, var_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 1209f, var_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -748f, -116f, var_2.x) - vec4<f32>(var_2.x, 548f, 1000f, var_2.x)))) + vec4<f32>(var_2.x, _wgslsmith_f_op_f32(select(var_2.x, var_2.x, true)), _wgslsmith_f_op_f32(1000f - -1391f), 541f))), var_1.x));
    return StorageBuffer(var_2.x, vec2<f32>(var_2.x, -1767f), firstLeadingBit(_wgslsmith_clamp_u32(~59660u, ~(1u & u_input.e.x), u_input.e.x)), u_input.e.zz, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(((vec3<i32>(-51045i, global1.a.x, -25420i) >> (vec3<u32>(0u, 80290u, u_input.e.x) % vec3<u32>(32u))) | (vec3<i32>(global1.a.x, global1.a.x, 0i) & -vec3<i32>(-10808i, global1.a.x, global1.a.x))) >> (u_input.e % vec3<u32>(32u)));
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 2317f)) + 857f);
    let var_3 = Struct_1(min(vec3<i32>(-1i) * -global1.a, -vec3<i32>(abs(-1i), u_input.d.x, i32(-1i) * -9638i)));
    let var_4 = Struct_1(var_3.a ^ reverseBits(vec3<i32>(var_3.a.x, -1i, u_input.c | var_3.a.x)));
    let var_5 = ~4294967295u;
    let x = u_input.a;
    s_output = func_1(var_3);
}

