struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 10>;

var<private> global2: array<i32, 13> = array<i32, 13>(0i, 0i, -27268i, 1i, 36867i, 0i, -1i, 2300i, -1i, -20317i, 1i, 1i, 21418i);

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(0u), Struct_1(1u), Struct_1(55913u), Struct_1(4294967295u), Struct_1(1u), Struct_1(21769u), Struct_1(0u), Struct_1(44130u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(7578u), Struct_1(61062u), Struct_1(0u), Struct_1(4294967295u), Struct_1(1u), Struct_1(34164u), Struct_1(64164u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    global3 = array<Struct_1, 19>();
    let var_0 = global3[_wgslsmith_index_u32(~35404u, 19u)];
    let var_1 = ~vec3<u32>(u_input.a.x, ~0u, ~abs(~u_input.a.x));
    global1 = array<i32, 10>();
    var var_2 = vec4<i32>(_wgslsmith_mod_i32(9564i, -1i), -10382i, ~global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 0i);
    return ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-1i, var_2.x), abs(_wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.zy))), firstLeadingBit(_wgslsmith_add_vec2_i32(select(vec2<i32>(2147483647i, u_input.b.x), u_input.b.zy, arg_0.x), vec2<i32>(global1[_wgslsmith_index_u32(60651u, 10u)], global2[_wgslsmith_index_u32(14344u, 13u)]))));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> vec3<i32> {
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    let var_0 = Struct_3(arg_1.a, vec3<bool>(-(~2147483647i) <= ~func_3(arg_1.b.zz), true || arg_0, arg_1.b.x));
    var var_1 = Struct_1(abs(arg_2));
    let var_2 = (min(u_input.b.x ^ -2147483647i, global2[_wgslsmith_index_u32(~(~50066u), 13u)]) | global1[_wgslsmith_index_u32(~abs(0u), 10u)]) << (_wgslsmith_mult_u32(max(~1u, var_1.a), u_input.a.x) % 32u);
    return -min(u_input.b, ~(-(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], var_2, u_input.b.x) >> (vec3<u32>(u_input.a.x, var_1.a, arg_1.a.a.a) % vec3<u32>(32u)))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(-arg_3.xwy, vec3<i32>(i32(-1i) * -3837i, global2[_wgslsmith_index_u32(4507u, 13u)], -arg_3.x), vec3<i32>(_wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(19783u, 10u)], arg_3.x), ~(-3365i), ~_wgslsmith_add_i32(global1[_wgslsmith_index_u32(47423u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]))), func_2(true, Struct_3(Struct_2(global3[_wgslsmith_index_u32(u_input.a.x & arg_2, 19u)]), select(vec3<bool>(arg_1.x, arg_0, arg_1.x), vec3<bool>(false, arg_0, true), vec3<bool>(arg_1.x, arg_0, arg_0))), ~u_input.a.x));
    let var_1 = reverseBits(~(~vec2<u32>(27402u, 36035u)) | _wgslsmith_add_vec2_u32(u_input.a.yx, select(vec2<u32>(u_input.a.x, arg_2), u_input.a.yx, vec2<bool>(arg_0, arg_0)))) & max(reverseBits(u_input.a.xy), u_input.a.xx);
    global2 = array<i32, 13>();
    var var_2 = vec3<u32>(var_1.x, ~firstLeadingBit(arg_2), _wgslsmith_dot_vec2_u32(u_input.a.xy, max(var_1, vec2<u32>(u_input.a.x, 1u)) | u_input.a.xz));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-global0.x)));
    return Struct_3(Struct_2(Struct_1(4294967295u)), arg_1.yxw);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_vec4_u32(countOneBits(firstLeadingBit(~abs(vec4<u32>(96592u, arg_3.a.a, u_input.a.x, 0u)))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 8583u, 0u, arg_3.a.a), vec4<u32>(arg_3.a.a, arg_3.a.a, arg_3.a.a, 33949u) << (vec4<u32>(0u, arg_3.a.a, 1u, 4294967295u) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_div_u32(arg_1.a.a.a, u_input.a.x), 0u), _wgslsmith_add_u32(~arg_3.a.a, ~1u)), reverseBits(arg_1.a.a.a)), abs(_wgslsmith_mod_u32(42024u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, arg_1.a.a.a, u_input.a.x)), 4294967295u))));
    global2 = array<i32, 13>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1147f)), arg_0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1039f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(global0.x + -1000f), 1074f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(-global0.www), func_1(false, !vec4<bool>(true, any(vec3<bool>(false, false, false)), false, global0.x <= global0.x), 4294967295u, vec4<i32>(31387i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -49818i, global1[_wgslsmith_index_u32(1u, 10u)], -29307i), vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 8794i, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]))), 1i, ~(-7862i))), select(vec2<bool>(func_1(any(vec2<bool>(false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), ~u_input.a.x, vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], -12594i, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 1i)).b.x, all(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), false), vec2<bool>(false, all(vec3<bool>(true, true, false))), true), false), Struct_2(global3[_wgslsmith_index_u32(1u, 19u)])));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(408f, var_0.x, -344f, -558f))))))));
    var var_2 = var_0.ww;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0)) * _wgslsmith_f_op_vec4_f32(-var_1)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(330f, -1369f, -1000f, var_1.x)))) * vec4<f32>(var_1.x, -1000f, _wgslsmith_f_op_f32(816f * var_0.x), _wgslsmith_f_op_f32(-182f * var_2.x))))));
    var_2 = _wgslsmith_f_op_vec2_f32(var_0.wy - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_1.x), -931f)))));
    var var_3 = -countOneBits(vec4<i32>(~(u_input.b.x | global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), -1i, u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]));
    var var_4 = func_1(false, !select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, all(vec4<bool>(false, false, true, false))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false))), 1u, _wgslsmith_add_vec4_i32(max(_wgslsmith_sub_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], -30381i, u_input.b.x, global2[_wgslsmith_index_u32(1u, 13u)]), select(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], -31273i, 32215i, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<i32>(73211i, u_input.b.x, -24379i, var_3.x), vec4<bool>(false, true, false, true))), ~(~vec4<i32>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], var_3.x))), vec4<i32>(var_3.x, 1i, var_3.x, 1i)));
    var var_5 = Struct_1(~u_input.a.x);
    var_4 = Struct_3(var_4.a, !select(var_4.b, var_4.b, func_1(var_4.b.x, vec4<bool>(false, var_4.b.x, true, var_4.b.x), 0u, vec4<i32>(-2147483647i, 0i, -107110i, var_3.x)).b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-890f)))));
}

