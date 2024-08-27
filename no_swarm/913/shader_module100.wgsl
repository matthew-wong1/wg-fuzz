struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: array<Struct_1, 13>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = 335f;
    return firstLeadingBit(u_input.b.x);
}

fn func_3() -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1155f) * _wgslsmith_f_op_f32(round(-635f)))), -898f)), -538f, _wgslsmith_f_op_f32(trunc(1306f)), -352f);
    let var_1 = global1[_wgslsmith_index_u32(~(abs(_wgslsmith_div_u32(firstLeadingBit(4294967295u), u_input.d ^ u_input.d)) ^ ~(~abs(u_input.c.x))), 13u)];
    global0 = array<vec2<bool>, 24>();
    let var_2 = ~(-firstLeadingBit(~(u_input.b.x | u_input.b.x)));
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1368f)) * -851f))), true && all(vec3<bool>(true, true, true)))));
    return var_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(-68395i, 26876i, arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(func_2(u_input.b.zx, u_input.c.yy, vec3<f32>(-1577f, arg_1.b, -626f), vec3<u32>(1u, 4294967295u, arg_2)), 2147483647i, _wgslsmith_add_i32(-43733i, arg_0.x), func_3()), vec4<i32>(46969i, _wgslsmith_add_i32(arg_0.x, -2147483647i), firstLeadingBit(arg_0.x), 0i))), vec4<i32>(arg_0.x, 2147483647i, firstTrailingBit(~(-8478i)) & u_input.b.x, -(~_wgslsmith_mod_i32(u_input.b.x, arg_0.x))));
    let var_1 = var_0.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_1.a, arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -589f));
    global1 = array<Struct_1, 13>();
    var_2 = global1[_wgslsmith_index_u32(34847u, 13u)];
    return Struct_1(arg_1.a, 1322f);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    global1 = array<Struct_1, 13>();
    let var_0 = func_1(firstTrailingBit(vec3<i32>(-2147483647i, ~(-44528i), -2992i)), func_1(vec3<i32>(~(~u_input.b.x), u_input.b.x, firstLeadingBit(_wgslsmith_add_i32(u_input.b.x, 1i))), Struct_1(arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2671f + arg_0.a.x)))), _wgslsmith_add_u32(~u_input.d, 0u)), ~61043u);
    return select(vec2<bool>(any(select(select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 24u)], vec2<bool>(true, false)), global0[_wgslsmith_index_u32(1u, 24u)], true)), select(!all(vec4<bool>(false, false, true, true)), !any(vec4<bool>(false, false, false, true)), true)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(~_wgslsmith_clamp_u32(101892u, u_input.d, u_input.d), 38258u), 18488u), 24u)], select(true, select(true, !(u_input.c.x == 16291u), true), select(false, select(arg_1.x > 32044i, select(false, false, false), true), any(vec3<bool>(false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~(~firstTrailingBit(~(u_input.d << (60334u % 32u)))), 24u)];
    global1 = array<Struct_1, 13>();
    var_0 = !select(select(vec2<bool>(true, var_0.x), !select(vec2<bool>(true, var_0.x), global0[_wgslsmith_index_u32(4294967295u, 24u)], var_0.x), any(vec3<bool>(var_0.x, var_0.x, true))), select(func_4(func_1(u_input.b, Struct_1(vec3<f32>(1515f, -1501f, -1178f), -705f), u_input.c.x), max(vec4<i32>(53081i, 2147483647i, u_input.b.x, -24969i), vec4<i32>(59771i, u_input.b.x, -1i, u_input.b.x))), vec2<bool>(false & var_0.x, true), true), global0[_wgslsmith_index_u32(~(~u_input.d ^ select(4294967295u, 20967u, var_0.x)), 24u)]);
    let var_1 = ~vec2<u32>(reverseBits(u_input.d << (u_input.d % 32u)), _wgslsmith_mult_u32(u_input.c.x ^ u_input.d, _wgslsmith_mult_u32(25851u, u_input.a.x))) ^ ((_wgslsmith_sub_vec2_u32(u_input.c.yz, ~u_input.a.zz) >> (u_input.c.zz % vec2<u32>(32u))) | (~(~vec2<u32>(u_input.d, 0u)) | vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, u_input.a.x, u_input.c.x), u_input.c.x | 2397u)));
    global1 = array<Struct_1, 13>();
    let var_2 = u_input.b.x & -12043i;
    var_0 = select(!(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, var_1.x) >> (~var_1.x % 32u), 24u)]), vec2<bool>(!(!all(global0[_wgslsmith_index_u32(75451u, 24u)])), var_0.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec4_i32(~reverseBits(vec4<i32>(var_2, 2147483647i, -2147483647i, 0i)), select(vec4<i32>(var_2, u_input.b.x, 21334i, u_input.b.x) ^ vec4<i32>(u_input.b.x, -14539i, 6170i, u_input.b.x), vec4<i32>(-64937i, 63931i, u_input.b.x, u_input.b.x), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, true, var_0.x, var_0.x))))), ~(var_1.x | u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1409f, _wgslsmith_f_op_f32(trunc(-1809f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1068f - -1230f) - 1410f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-687f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-889f * -1000f)))), -575f);
}

