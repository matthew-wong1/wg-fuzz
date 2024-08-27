struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(2048u, 0u, 15479u, 4294967295u, 0u, 92903u, 43603u, 27123u, 4294967295u, 4294967295u, 126954u, 71733u, 1u, 45365u, 1223u, 116223u, 1u, 64122u, 4294967295u, 4294967295u, 40919u, 951u, 0u, 32467u, 6372u, 0u, 51024u, 16612u);

var<private> global1: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1543f, -1000f, 166f, -366f), vec4<f32>(877f, 915f, 277f, 324f), vec4<f32>(689f, -1083f, 321f, 1000f), vec4<f32>(-1924f, 878f, -386f, -1000f), vec4<f32>(777f, -949f, 1393f, -224f), vec4<f32>(108f, 199f, -662f, -2147f), vec4<f32>(-841f, -599f, 310f, -361f), vec4<f32>(652f, -136f, -1115f, -751f), vec4<f32>(2119f, 148f, -231f, -1000f), vec4<f32>(2133f, -1839f, -138f, -1101f), vec4<f32>(297f, -1374f, -2069f, 511f), vec4<f32>(-413f, 930f, 580f, 276f), vec4<f32>(-1202f, -184f, 1000f, 241f), vec4<f32>(-1221f, -2124f, -1000f, -1017f), vec4<f32>(-353f, -1762f, -261f, 729f), vec4<f32>(-276f, 1000f, -533f, 1286f), vec4<f32>(-1000f, -1185f, -371f, -1000f), vec4<f32>(955f, -613f, 720f, -640f), vec4<f32>(812f, 862f, 450f, 1017f), vec4<f32>(-840f, 911f, -241f, 914f), vec4<f32>(357f, 106f, -849f, -1075f), vec4<f32>(130f, 396f, 219f, 1026f), vec4<f32>(1615f, 505f, 1148f, 810f), vec4<f32>(534f, -976f, -1080f, 1356f), vec4<f32>(-376f, 873f, 698f, -949f), vec4<f32>(1409f, -687f, -352f, 1327f));

var<private> global2: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = 921f;
    var var_0 = select(!vec2<bool>(true, !any(vec3<bool>(false, arg_0.b, arg_0.a))), !vec2<bool>(arg_0.b, true), arg_0.a == (false & any(!vec3<bool>(false, arg_0.a, arg_0.b))));
    global2 = 1f;
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(17261i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 2147483647i, -2147483647i), vec4<i32>(0i, 10498i, 0i, -1i)), min(2147483647i, 2147483647i), true) << (32663u % 32u)), min(min(_wgslsmith_div_vec2_i32(~vec2<i32>(-31973i, 1i), countOneBits(vec2<i32>(-19241i, -29097i))), -min(vec2<i32>(20779i, 0i), vec2<i32>(12479i, 10446i))), -vec2<i32>(-32827i, 1i)));
    var var_2 = vec4<i32>(~var_1 << (1u % 32u), max(5280i & firstTrailingBit(var_1), var_1) & -37201i, var_1, -(~var_1));
    return -181f;
}

fn func_2() -> f32 {
    global2 = _wgslsmith_f_op_f32(floor(1032f));
    let var_0 = Struct_1(all(vec3<bool>(true, true, true)), (i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 13833i), vec2<i32>(-1i, -32006i))) == 19643i);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, var_0.a)))) + _wgslsmith_f_op_f32(f32(-1f) * -993f));
    var var_1 = Struct_1(var_0.b, true);
    global2 = 1569f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-539f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1568f))) * _wgslsmith_f_op_f32(ceil(896f))))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = vec2<u32>(1u, 17829u);
    global0 = array<u32, 28>();
    let var_1 = ~u_input.b;
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(586f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-339f - 299f) + _wgslsmith_f_op_f32(-785f * 1859f))))), 597f, !all(vec2<bool>(true, true))));
    let var_2 = select(var_0.x, 22942u << (1u % 32u), !all(vec2<bool>(false, false))) | 4294967295u;
    return firstLeadingBit(_wgslsmith_div_u32(reverseBits(0u), _wgslsmith_div_u32(u_input.a, var_0.x ^ global0[_wgslsmith_index_u32(25160u, 28u)]))) << (global0[_wgslsmith_index_u32(~(~(~1u << (~var_1.x % 32u))), 28u)] % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-36131i, -20652i << (func_1(u_input.b) % 32u), -select(_wgslsmith_div_i32(-23807i, 52890i), 17440i, true)), ~(-1i));
    let var_1 = _wgslsmith_mod_vec4_i32(firstLeadingBit(~((vec4<i32>(23603i, -1i, -1667i, -2147483647i) >> (vec4<u32>(u_input.b.x, 58201u, 27475u, global0[_wgslsmith_index_u32(1u, 28u)]) % vec4<u32>(32u))) ^ abs(vec4<i32>(2147483647i, var_0, 1i, -21294i)))), vec4<i32>(firstTrailingBit(-26085i), var_0, var_0 & var_0, var_0 ^ var_0));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1877f - -113f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-615f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2126f), _wgslsmith_f_op_f32(f32(-1f) * -312f), true)))));
    global1 = array<vec4<f32>, 26>();
    var var_2 = Struct_1(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1440f * -2245f)), -427f))), _wgslsmith_f_op_f32(func_3(Struct_1(var_2.b, var_2.a))), vec2<u32>(func_1(~u_input.b) | ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13835u, 28u)], 28u)]), global0[_wgslsmith_index_u32(countOneBits(max(57706u, 0u)) & _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(max(u_input.b.x, global0[_wgslsmith_index_u32(0u, 28u)]), 28u)], reverseBits(1u)), 28u)]), var_1, vec2<i32>(var_1.x, var_0));
}

