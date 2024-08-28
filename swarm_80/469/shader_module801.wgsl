struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-58914i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, -28034i), vec2<i32>(-3964i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 14059i), vec2<i32>(0i, 0i), vec2<i32>(1i, -88894i), vec2<i32>(-35711i, i32(-2147483648)), vec2<i32>(-1i, 13805i), vec2<i32>(8611i, 2147483647i), vec2<i32>(-25448i, 15569i), vec2<i32>(0i, 37958i));

var<private> global2: vec3<u32>;

var<private> global3: array<u32, 31> = array<u32, 31>(1u, 4294967295u, 0u, 1u, 4660u, 45163u, 4294967295u, 19594u, 9600u, 4294967295u, 43358u, 0u, 0u, 6851u, 98006u, 1u, 1383u, 35930u, 0u, 8352u, 4294967295u, 1u, 29086u, 49773u, 82370u, 1u, 11193u, 0u, 33932u, 4294967295u, 34978u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = -arg_1.x;
    global1 = array<vec2<i32>, 14>();
    global0 = array<Struct_1, 18>();
    var var_1 = Struct_3(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a.x, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47792u, 31u)], 31u)], global2.x)), ~select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(102678u, 31u)], 31u)]), reverseBits(u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))), 15865u);
    var var_2 = -arg_1.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(277f)) + _wgslsmith_f_op_f32(min(1436f, _wgslsmith_f_op_f32(2098f - _wgslsmith_f_op_f32(max(-1078f, -1000f))))));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 18u)];
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_1 = _wgslsmith_div_f32(216f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1672f)) * _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(136f + 518f), 259f, _wgslsmith_f_op_f32(round(1305f))), firstTrailingBit(-vec4<i32>(arg_1, 2147483647i, arg_2, arg_1))))));
    var var_2 = Struct_3(~(~arg_3.a), ~(~4294967295u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(745f - 184f) + -435f)) * 133f));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_3 {
    return Struct_3(vec4<u32>(global3[_wgslsmith_index_u32(firstLeadingBit(0u), 31u)], max(8885u, ~(~1u)), ~max(arg_3.x, 42705u) >> (firstLeadingBit(~u_input.a.x) % 32u), global2.x), ~(~0u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>) -> u32 {
    var var_0 = func_4(global2.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(628f)) - _wgslsmith_f_op_f32(func_2(Struct_3(vec4<u32>(1u, 45782u, global3[_wgslsmith_index_u32(1u, 31u)], global2.x), 0u), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, -44200i, -1376i, u_input.b.x), vec4<i32>(-23092i, 35026i, 22630i, 2351i), true), vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), ~_wgslsmith_mod_i32(u_input.b.x, 30410i), Struct_3(min(u_input.a, u_input.a), 7444u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(253f, -1415f, 1072f)))))), u_input.a);
    let var_1 = u_input.b.x;
    global1 = array<vec2<i32>, 14>();
    var var_2 = Struct_2(383f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1161f - -2370f), 2357f, _wgslsmith_f_op_f32(-1798f - 2212f)))), u_input.b.x, -global1[_wgslsmith_index_u32(29510u, 14u)], vec4<u32>(9114u, global3[_wgslsmith_index_u32(u_input.a.x, 31u)], ~global2.x, ~(~min(0u, global2.x))));
    global1 = array<vec2<i32>, 14>();
    return _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec2_u32(~var_2.e.yw, ~global2.yz) | 7215u), _wgslsmith_div_u32(_wgslsmith_mult_u32(12167u, abs(global2.x >> (4294967295u % 32u))), 14492u), ~23419u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<u32>(global3[_wgslsmith_index_u32(func_1(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), false, all(vec2<bool>(true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)))), 31u)], func_1(vec3<bool>(!all(vec4<bool>(false, true, false, false)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, all(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, true, true))))), global2.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -773f), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -505f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1937f)), _wgslsmith_f_op_f32(f32(-1f) * -1011f), _wgslsmith_f_op_f32(-300f * 486f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1206f, 325f, -756f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-652f, 377f, 589f))) + vec3<f32>(_wgslsmith_f_op_f32(step(-1537f, -1041f)), -1332f, _wgslsmith_f_op_f32(trunc(-463f)))), all(vec4<bool>(true, false, true, false)))));
    var var_1 = -_wgslsmith_mult_vec3_i32(vec3<i32>(-2717i, min(u_input.b.x, -12783i), ~u_input.b.x), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(-12496i, u_input.b.x, u_input.b.x)), -vec3<i32>(1i, u_input.b.x, -23082i))) & abs(u_input.b);
    global1 = array<vec2<i32>, 14>();
    var var_2 = vec2<f32>(-633f, var_0.x);
    let var_3 = firstTrailingBit(min(-14804i, -_wgslsmith_dot_vec2_i32(var_1.xy, global1[_wgslsmith_index_u32(global2.x | 36467u, 14u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2(Struct_3(min(~vec4<u32>(0u, 25188u, 0u, 0u), u_input.a), reverseBits(1u)), var_3, var_1.x, Struct_3(_wgslsmith_div_vec4_u32(min(u_input.a, vec4<u32>(1590u, 85974u, global2.x, 7627u)), ~u_input.a), _wgslsmith_mod_u32(_wgslsmith_add_u32(global2.x, 0u), 9485u)))));
}

