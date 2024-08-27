struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(42649u, 4294967295u, 4108u, 1u, 1722u, 0u, 2301u, 7452u, 4294967295u, 1u, 36517u, 52679u, 4294967295u, 4294967295u, 0u);

var<private> global1: array<u32, 15>;

var<private> global2: Struct_3;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mod_vec2_u32(abs(abs(_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 61307u), ~vec2<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 32697u)))), ~_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25472u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72113u, 15u)], 15u)], 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18835u, 15u)], 15u)]))) & vec2<u32>(global1[_wgslsmith_index_u32(~1u, 15u)], _wgslsmith_add_u32(global1[_wgslsmith_index_u32(8894u, 15u)], 117716u) >> (firstLeadingBit(1u) % 32u)));
    global2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a)) * _wgslsmith_f_op_f32(f32(-1f) * -860f)), global2.b);
    global0 = array<u32, 15>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), Struct_1(!(!vec2<bool>(global2.b.a.x, false)), vec2<i32>(min(~global2.b.b.x, firstLeadingBit(global2.b.b.x)), _wgslsmith_clamp_i32(min(2147483647i, -1i), global2.b.b.x, -2147483647i))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-268f - -1000f), _wgslsmith_f_op_f32(1229f + global2.a)))) + 1206f), 1033f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global2.a, 1128f)), _wgslsmith_f_op_f32(select(229f, global2.a, true)))) * _wgslsmith_f_op_f32(-var_1.a))));
    return ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(28914u, global0[_wgslsmith_index_u32(4294967295u, 15u)], 0u, global1[_wgslsmith_index_u32(var_0.x, 15u)]), abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 15u)], 15u)], 1u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], var_0.x)))) ^ ~_wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(25337u, 15u)]);
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_u32(4294967295u >> (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(abs(~37064u), 15u)], firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(27348u, 15u)]), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)])))) % 32u), _wgslsmith_mod_u32(26005u >> (_wgslsmith_clamp_u32(1u >> (global1[_wgslsmith_index_u32(31989u, 15u)] % 32u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37280u, 15u)], 15u)], 15u)], ~global1[_wgslsmith_index_u32(27171u, 15u)]) % 32u), max(~func_3(), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)] ^ 0u, 15u)], 15u)], 15u)])));
    global0 = array<u32, 15>();
    var var_1 = vec3<u32>(min(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 51142u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40910u, 15u)], 15u)], 1u) ^ vec2<u32>(0u, 9571u)), vec2<u32>(1u, ~global1[_wgslsmith_index_u32(0u, 15u)])), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(reverseBits(0u), 15u)] | abs(_wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(64161u, 15u)])), 15u)]), firstLeadingBit(1u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 15u)], 15u)], 28282u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21575u, 15u)], 15u)], 0u, 7127u)) << (~0u % 32u), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(6650u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 15u)], 15u)], 4294967295u, 81432u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47913u, 15u)], 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(35639u, 15u)], var_0)))) << ((_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31321u, global1[_wgslsmith_index_u32(var_0, 15u)], 4294967295u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(10599u, 15u)], var_0, global1[_wgslsmith_index_u32(var_0, 15u)])), 26943u) & _wgslsmith_mult_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(3361u, 15u)], 47658u), ~1u)) % 32u));
    var var_2 = Struct_3(772f, global2.b);
    let var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-617f, _wgslsmith_f_op_f32(-var_2.a), global2.b.a.x))), _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(-arg_0.x))), global2.b);
    return var_2.b.a;
}

fn func_1(arg_0: i32) -> vec4<f32> {
    let var_0 = Struct_1(!func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.a, global2.a), vec2<f32>(global2.a, global2.a)))))), global2.b.b);
    global1 = array<u32, 15>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-171f * global2.a)))));
    let var_2 = var_0.a.x;
    var var_3 = 62392u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1698f, global2.a, 489f, 1854f)))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>) -> Struct_1 {
    global2 = Struct_3(arg_1.x, Struct_1(global2.b.a, vec2<i32>(global2.b.b.x, ~(global2.b.b.x & 1i))));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -560f), Struct_1(!select(!vec2<bool>(true, global2.b.a.x), !vec2<bool>(true, global2.b.a.x), true), u_input.a.zz));
    let var_1 = var_0.b;
    var var_2 = vec4<f32>(1325f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1861f - -756f), 1f, true)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(var_2.x)));
    return Struct_1(select(!(!(!var_1.a)), !var_1.a, _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(16738u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), arg_0.x) == global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(arg_0.x, 15u)], arg_0.x), 15u)], 15u)]), min(firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.a.yx, vec2<i32>(29754i, var_0.b.b.x))), firstTrailingBit(var_0.b.b << (arg_0 % vec2<u32>(32u)))) << ((_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0, vec2<u32>(14151u, global0[_wgslsmith_index_u32(24975u, 15u)]), arg_0), arg_0 & vec2<u32>(arg_0.x, global1[_wgslsmith_index_u32(18243u, 15u)]), vec2<u32>(542u, arg_0.x) & vec2<u32>(global0[_wgslsmith_index_u32(arg_0.x, 15u)], 0u)) | vec2<u32>(global0[_wgslsmith_index_u32(52706u, 15u)], 4294967295u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(global2.a, global2.b);
    global1 = array<u32, 15>();
    global2 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(-global2.a))), -2201f)), func_4(vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(59298u, global1[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(87320u, 15u)], global0[_wgslsmith_index_u32(13475u, 15u)]), vec4<u32>(global1[_wgslsmith_index_u32(0u, 15u)], 4294967295u, 26848u, 1u), vec4<u32>(22315u, 0u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)])), max(vec4<u32>(61548u, global1[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(0u, 15u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27574u, 15u)], 15u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25979u, 15u)], 15u)], 1u)))), _wgslsmith_f_op_vec4_f32(func_1(reverseBits(0i)))));
    global2 = Struct_3(-890f, global2.b);
    var var_0 = !(!vec2<bool>(!global2.b.a.x, global2.b.a.x));
    let var_1 = Struct_4(-u_input.a.x, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(189f + global2.a)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_f_op_f32(-382f - -2464f))), Struct_1(select(global2.b.a, !global2.b.a, vec2<bool>(true, false)), global2.b.b)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1085f * global2.a), 362f, !var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, 13901i, vec2<i32>(65162i, -1i));
}

