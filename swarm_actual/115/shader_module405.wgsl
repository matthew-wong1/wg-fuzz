struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(1192f, 1443f, 1000f, 964f, -269f, 1036f, -858f, -128f, -1193f, -308f, -1325f, 729f, -2033f, 319f, 400f, -972f, 600f, -1115f, 1000f, 264f, -191f, 292f, -1240f, 1000f, -397f, 282f, 1394f, -1109f, -155f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = var_0.b.zyz;
    var var_2 = abs(0i);
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10520u, 29u)])) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~firstTrailingBit(0u), 29u)]))));
    let var_4 = i32(-1i) * -abs((arg_0.b.x | -80852i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, 25403i, var_0.a, -2147483647i), vec4<i32>(arg_0.b.x, 36403i, 31885i, 2147483647i)));
    return ~(countOneBits(var_0.b) & firstLeadingBit(arg_0.b));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(~(-7762i), u_input.d << (29267u % 32u), u_input.b, firstLeadingBit(u_input.b)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, u_input.d, u_input.d, u_input.c), ~vec4<i32>(u_input.c, u_input.b, u_input.d, -1i))) | ~(func_3(Struct_3(u_input.b, vec4<i32>(-1656i, -15508i, -1i, u_input.c))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 15266u, 4294967295u), vec4<u32>(0u, u_input.a, 1u, 0u)) % vec4<u32>(32u))), -(~vec4<i32>(u_input.c, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-26986i, u_input.d, u_input.d, u_input.c), vec4<i32>(60083i, u_input.d, u_input.b, -1i)), u_input.d)));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(~(90046u >> (u_input.a % 32u)), 29u)], _wgslsmith_f_op_f32(select(-1118f, global0[_wgslsmith_index_u32(~u_input.a, 29u)], any(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(9157u, 29u)]) - _wgslsmith_f_op_f32(f32(-1f) * -1103f)), -687f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1567f, global0[_wgslsmith_index_u32(0u, 29u)], 332f, global0[_wgslsmith_index_u32(u_input.a, 29u)])))))))));
    let var_2 = countOneBits(97822u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(64988u, 29u)] * var_1.x));
    global0 = array<f32, 29>();
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_4 {
    var var_0 = Struct_3(~6839i, arg_1.c.b);
    global0 = array<f32, 29>();
    let var_1 = ~max(vec4<u32>(~(~1u), ~u_input.a, 1u, u_input.a), min(vec4<u32>(4294967295u, u_input.a, u_input.a, 7339u), ~vec4<u32>(u_input.a, 80271u, 1u, 4294967295u)) >> (vec4<u32>(1u, _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, 4294967295u) % vec4<u32>(32u)));
    var var_2 = global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(~10602u, u_input.a), ~var_1.x), 29u)];
    global0 = array<f32, 29>();
    return Struct_4(false, abs(arg_1.b >> (_wgslsmith_add_u32(var_1.x, 1u) % 32u)), Struct_3(abs(_wgslsmith_dot_vec2_i32(arg_1.c.b.yy, arg_1.c.b.zx)) & (max(arg_1.b, arg_1.b) << ((4294967295u << (var_1.x % 32u)) % 32u)), select(reverseBits(vec4<i32>(0i, 2147483647i, 15405i, 71344i)) ^ ~vec4<i32>(arg_1.b, arg_1.b, 20353i, 15216i), max(reverseBits(vec4<i32>(-2147483647i, 1i, u_input.b, u_input.b)), func_3(arg_1.c)), any(!vec4<bool>(true, arg_0.x, arg_0.x, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(26546u, 29u)]))))), arg_1.e);
}

fn func_1() -> Struct_3 {
    global0 = array<f32, 29>();
    var var_0 = u_input.d << (u_input.a % 32u);
    let var_1 = func_4(select(vec3<bool>(!all(vec2<bool>(false, false)), false, true), !vec3<bool>(func_2(), false, true), true), Struct_4(true, ~firstTrailingBit(_wgslsmith_mod_i32(u_input.d, u_input.c)), Struct_3(_wgslsmith_mult_i32(u_input.c, reverseBits(u_input.d)), vec4<i32>(~u_input.c, abs(2147483647i), -u_input.b, -1i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a & 1u, 29u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 29u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 29u)]), global0[_wgslsmith_index_u32(u_input.a, 29u)]), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 690f), vec2<bool>(true, true)))));
    let var_2 = u_input.c;
    let var_3 = Struct_2(abs(vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 147957u, 29273u), vec4<u32>(u_input.a, u_input.a, u_input.a, 10913u), vec4<u32>(0u, 6669u, 0u, 1u)), vec4<u32>(u_input.a, 7855u, u_input.a, u_input.a)), u_input.a)), abs(abs(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)))) >> ((abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 36844u), vec2<u32>(0u, 31851u), vec2<u32>(u_input.a, u_input.a))) ^ reverseBits(firstLeadingBit(vec2<u32>(73154u, 38183u)))) % vec2<u32>(32u)));
    return func_4(select(select(!select(vec3<bool>(true, true, var_1.a), vec3<bool>(false, true, true), true), vec3<bool>(true, var_1.a, false), false), !select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(true, var_1.a, var_1.a), true), !vec3<bool>(true, true, var_1.a != var_1.a)), func_4(vec3<bool>(false, true, false), var_1)).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, u_input.b), vec2<i32>(-26748i, u_input.b), vec2<bool>(true, false)) ^ -vec2<i32>(0i, 49956i), ~(vec2<i32>(39628i, -11494i) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))))), true, 43471u);
    global0 = array<f32, 29>();
    let var_1 = Struct_4(var_0.b && var_0.b, -20711i, func_1(), global0[_wgslsmith_index_u32(u_input.a, 29u)], func_4(select(select(select(vec3<bool>(var_0.b, false, false), vec3<bool>(true, var_0.b, var_0.b), true), select(vec3<bool>(var_0.b, true, false), vec3<bool>(false, false, false), vec3<bool>(var_0.b, var_0.b, var_0.b)), !vec3<bool>(var_0.b, true, var_0.b)), !select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(true, false, var_0.b), false), !vec3<bool>(var_0.b, var_0.b, false)), func_4(vec3<bool>(20453u > var_0.c, false, var_0.b), Struct_4(!var_0.b, _wgslsmith_sub_i32(u_input.c, 2147483647i), func_1(), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(91073u, 29u)] - global0[_wgslsmith_index_u32(u_input.a, 29u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1735f, global0[_wgslsmith_index_u32(var_0.c, 29u)]))))).e);
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a), min(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, var_0.c), vec3<u32>(4286u, 48539u, 1u) | vec3<u32>(25239u, 32226u, u_input.a)), ~1u), u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(~var_0.c, var_0.c, _wgslsmith_add_u32(var_0.c, u_input.a)) ^ countOneBits(~vec3<u32>(u_input.a, var_0.c, 0u)), reverseBits(~reverseBits(vec3<u32>(var_0.c, 4294967295u, 12254u)))));
    let var_3 = var_1;
    global0 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 29u)] * _wgslsmith_f_op_f32(1049f - var_3.e.x))))), 1u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d), 625f, _wgslsmith_f_op_f32(f32(-1f) * -505f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.d, -1000f, global0[_wgslsmith_index_u32(13136u, 29u)]))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1357f, var_1.d, 1087f) * vec3<f32>(-109f, var_3.d, 182f))))))));
}

