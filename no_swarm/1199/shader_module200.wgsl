struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<u32>(82078u, 4294967295u, 1u)), Struct_2(vec3<u32>(26917u, 68197u, 57219u)), Struct_2(vec3<u32>(0u, 4294967295u, 22073u)), Struct_2(vec3<u32>(0u, 0u, 4294967295u)), Struct_2(vec3<u32>(53624u, 4294967295u, 64192u)), Struct_2(vec3<u32>(31931u, 16831u, 1u)), Struct_2(vec3<u32>(528u, 4294967295u, 69916u)), Struct_2(vec3<u32>(0u, 23270u, 62675u)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_2(vec3<u32>(0u, 0u, 65472u)), Struct_2(vec3<u32>(1u, 39472u, 6352u)), Struct_2(vec3<u32>(0u, 4294967295u, 0u)), Struct_2(vec3<u32>(4294967295u, 0u, 54018u)), Struct_2(vec3<u32>(93700u, 13624u, 127423u)), Struct_2(vec3<u32>(81041u, 0u, 4294967295u)), Struct_2(vec3<u32>(61576u, 35631u, 108479u)), Struct_2(vec3<u32>(13490u, 4294967295u, 4378u)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    global0 = array<i32, 24>();
    global1 = array<Struct_2, 17>();
    global0 = array<i32, 24>();
    var var_0 = Struct_2(u_input.a << (u_input.a % vec3<u32>(32u)));
    global0 = array<i32, 24>();
    return 1f;
}

fn func_3() -> u32 {
    global0 = array<i32, 24>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-951f, -309f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(313f)) * 2436f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(910f, _wgslsmith_f_op_f32(max(1528f, 868f)))))));
    var var_1 = all(select(vec4<bool>(true, !all(vec2<bool>(false, true)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(true, true, false, true)))), any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), true))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_i32(~(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) & vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(81474u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)])) & countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(0u, 24u)])), vec3<i32>(min(~7875i, select(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(32238u, 24u)], false)), -firstTrailingBit(-1i), global0[_wgslsmith_index_u32(~u_input.a.x >> (1u % 32u), 24u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(~u_input.a.x, 24u)], -2147483647i >> (u_input.a.x % 32u), ~66096i), vec3<i32>(1i, firstTrailingBit(global0[_wgslsmith_index_u32(74478u, 24u)]), global0[_wgslsmith_index_u32(6341u, 24u)]))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1196f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, -223f), vec3<f32>(-666f, -261f, 456f))) + vec3<f32>(1000f, 1139f, var_0.x))))));
    let var_3 = Struct_1(min(var_2.a, firstLeadingBit(~var_2.a) >> (firstTrailingBit(vec3<u32>(41179u, u_input.a.x, u_input.a.x) & vec3<u32>(63917u, u_input.a.x, 0u)) % vec3<u32>(32u))), vec3<f32>(373f, _wgslsmith_f_op_f32(-var_0.x), -459f));
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_sub_u32(1u | u_input.a.x, u_input.a.x), max(_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x), ~1u)), _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.a << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), vec3<u32>(0u, u_input.a.x >> (u_input.a.x % 32u), ~u_input.a.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1372f, _wgslsmith_f_op_f32(trunc(-254f)))), 1008f);
    var var_1 = Struct_2(vec3<u32>(u_input.a.x, 3674u, arg_1.x));
    var var_2 = global1[_wgslsmith_index_u32(reverseBits(firstLeadingBit(u_input.a.x)), 17u)];
    let var_3 = Struct_2(vec3<u32>(~func_3(), min(~1931u << ((63841u & u_input.a.x) % 32u), _wgslsmith_mod_u32(var_1.a.x, var_2.a.x) >> (1u % 32u)), 115989u));
    var_2 = Struct_2(vec3<u32>(~1u, ~_wgslsmith_add_u32(arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(28383u, var_3.a.x, arg_1.x), var_1.a)), _wgslsmith_dot_vec4_u32(~arg_1, ~arg_1)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2398f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> vec3<f32> {
    let var_0 = Struct_2(vec3<u32>(~23159u, 1u << (u_input.a.x % 32u), 55616u));
    global1 = array<Struct_2, 17>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b.x * -1801f)))));
    var_1 = _wgslsmith_f_op_f32(func_4(vec2<bool>(true, false), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, func_3(), 0u, u_input.a.x), vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x) ^ vec4<u32>(var_0.a.x, var_0.a.x, u_input.a.x, var_0.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, var_0.a.x))), all(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), vec2<bool>(!(!(!arg_0.x)), false)));
    var var_2 = arg_0.xz;
    return _wgslsmith_f_op_vec3_f32(-arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -28582i, i32(-1i) * -global0[_wgslsmith_index_u32(u_input.a.x, 24u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 2147483647i), -vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))), -firstLeadingBit(vec3<i32>(0i, 1i, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(668f, 1000f, 1509f), vec3<f32>(-1424f, -456f, -916f), vec3<bool>(false, true, true))), vec3<bool>(true, true, true))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-338f, 534f, 1097f) - vec3<f32>(-482f, -1541f, 673f)), _wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(true, false, true), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -1i, 29067i), vec3<f32>(-896f, 701f, 747f)), 2207f)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(163f, -365f, 344f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-678f, -1292f, 1824f)))))));
    global1 = array<Struct_2, 17>();
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, -1489f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(vec2<bool>(true, false), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x)), -762f <= var_0.b.x, vec2<bool>(true, true))))), var_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(347f, var_0.b.x, var_0.b.x, var_0.b.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(501f, 307f, -249f, 2825f))))));
    global1 = array<Struct_2, 17>();
    let var_2 = _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~(~var_2), 24u)], _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(var_0.a.xx, vec2<i32>(-35093i, global0[_wgslsmith_index_u32(var_2, 24u)])), var_0.a.yy >> (select(u_input.a.zy, vec2<u32>(var_2, var_2), true) % vec2<u32>(32u)))), u_input.a.x, -2147483647i, vec3<u32>(firstTrailingBit(24148u), ~74104u, u_input.a.x & 23411u));
}

