struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 65601u, 42126u, 27441u);

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false));

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

var<private> global4: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-590f, 1102f), vec2<f32>(643f, 638f), vec2<f32>(1000f, 111f), vec2<f32>(1369f, -914f), vec2<f32>(1000f, -1192f), vec2<f32>(482f, -2713f), vec2<f32>(895f, 409f), vec2<f32>(1587f, 491f), vec2<f32>(-635f, 1327f), vec2<f32>(-1000f, -327f), vec2<f32>(782f, 717f), vec2<f32>(-1171f, -1177f), vec2<f32>(-1427f, 997f), vec2<f32>(1985f, -579f), vec2<f32>(1000f, -2074f), vec2<f32>(204f, -1355f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(~global0.x, 24u)];
    global1 = array<Struct_1, 24>();
    let var_1 = abs(~firstTrailingBit(u_input.a.wy | select(u_input.a.zy, vec2<i32>(2147483647i, -1i), vec2<bool>(true, false))));
    var var_2 = global1[_wgslsmith_index_u32(23596u & (var_0.a >> (~_wgslsmith_clamp_u32(abs(var_0.a), var_0.b.x & global0.x, 105122u) % 32u)), 24u)];
    global2 = array<Struct_2, 9>();
    return firstLeadingBit(max(2147483647i, _wgslsmith_mod_i32(~(~2628i), var_1.x)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_2(true || (_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, u_input.b, arg_1, -1i), vec4<i32>(0i, -48030i, u_input.a.x, 2147483647i)), func_3()) > ~u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)) - -156f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-941f - arg_0)) - arg_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-arg_0)))) * arg_0));
    var var_2 = select(firstLeadingBit(-40449i), -25448i, var_0.a);
    global1 = array<Struct_1, 24>();
    var var_3 = Struct_1(6613u, vec4<u32>(_wgslsmith_add_u32(global0.x, abs(global0.x)), global0.x, ~13888u, select(global0.x, ~0u, var_0.a)), false, vec4<bool>(true, true, true, true));
    return vec4<u32>(max(reverseBits(~global0.x), _wgslsmith_div_u32(global0.x, _wgslsmith_mod_u32(var_3.a, var_3.b.x))) ^ global0.x, 742u, ~(~firstLeadingBit(0u)) >> (0u % 32u), 20063u);
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    global1 = array<Struct_1, 24>();
    global4 = array<vec2<f32>, 16>();
    global3 = vec3<bool>(any(!(!select(vec2<bool>(global3.x, arg_0.c), arg_0.d.wy, global3.x))), _wgslsmith_clamp_i32(u_input.b, -55638i, 1i) > _wgslsmith_sub_i32(func_3() | _wgslsmith_mult_i32(u_input.a.x, 46604i), 0i), all(select(!arg_0.d, select(!vec4<bool>(global3.x, true, false, arg_0.c), select(arg_0.d, arg_0.d, false), vec4<bool>(false, false, false, arg_0.c)), !vec4<bool>(arg_0.c, global3.x, global3.x, arg_0.c))));
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-416f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-534f * 1091f), _wgslsmith_f_op_f32(f32(-1f) * -905f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1151f, _wgslsmith_f_op_f32(f32(-1f) * -2629f)))), -1774f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-599f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1625f, -2132f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-920f, _wgslsmith_f_op_f32(step(-1429f, -811f))))))));
    let var_1 = global2[_wgslsmith_index_u32(global0.x, 9u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.xxz)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.yyx)), vec3<f32>(-594f, 781f, var_0.x))), var_0.zzx));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = ~(~select(vec4<u32>(0u, 0u | global0.x, global0.x, countOneBits(global0.x)), ~(vec4<u32>(22904u, 4294967295u, 3895u, arg_0) & vec4<u32>(global0.x, global0.x, arg_0, arg_0)), vec4<bool>(global3.x, true, true, global3.x)));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 24u)];
    global1 = array<Struct_1, 24>();
    var var_2 = var_1.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-814f)) + _wgslsmith_f_op_f32(floor(-171f))), _wgslsmith_f_op_f32(abs(1550f)), -1000f)) + _wgslsmith_f_op_vec3_f32(func_4(Struct_1(23564u, func_2(_wgslsmith_f_op_f32(1266f + -1666f), firstTrailingBit(0i), Struct_2(false), vec2<bool>(true, true)), false, !select(vec4<bool>(var_1.c, false, true, var_1.d.x), vec4<bool>(false, false, false, var_1.c), vec4<bool>(var_1.c, false, var_2.x, global3.x))))));
    return Struct_1(var_0.x, ~select(vec4<u32>(0u, ~var_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global0.x, 0u, var_0.x), vec4<u32>(arg_0, arg_0, 18283u, arg_0)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, var_1.a, global0.x), vec3<u32>(12653u, 76078u, 0u))), max(vec4<u32>(arg_0, 0u, 0u, var_0.x), vec4<u32>(1u, var_1.a, global0.x, var_0.x)), vec4<bool>(true, false, false, !var_1.c)), var_2.x, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(16317u);
    global4 = array<vec2<f32>, 16>();
    global0 = var_0.b >> (var_0.b % vec4<u32>(32u));
    global1 = array<Struct_1, 24>();
    global0 = var_0.b;
    let var_1 = false;
    var var_2 = var_0.a;
    var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(min(-1122f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1371f)), _wgslsmith_f_op_f32(f32(-1f) * -327f), func_1(~var_0.b.x).c)) + -435f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3, var_3, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3))))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.b.x, 1u), global0.x, 1u) >> (~min(vec3<u32>(57705u, 15327u, 4294967295u), global0.ywy) % vec3<u32>(32u)), func_1(var_0.b.x).b.zxy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), vec2<u32>(~(~(~global0.x)), 77022u));
}

