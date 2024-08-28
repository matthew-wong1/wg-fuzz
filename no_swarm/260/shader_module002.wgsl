struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(0u, 1u, 0u), vec3<u32>(14735u, 24488u, 2954u), vec3<u32>(18235u, 77440u, 21736u), vec3<u32>(1u, 0u, 67091u), vec3<u32>(0u, 1u, 18734u), vec3<u32>(1u, 32074u, 66508u), vec3<u32>(1u, 3071u, 10188u), vec3<u32>(3295u, 1u, 0u), vec3<u32>(1u, 27050u, 84493u), vec3<u32>(25739u, 10418u, 0u), vec3<u32>(3668u, 0u, 89531u), vec3<u32>(0u, 0u, 54809u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(7446u, 1u, 0u), vec3<u32>(1423u, 1u, 1u));

var<private> global2: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    global0 = vec2<i32>(-global0.x, 2147483647i);
    let var_0 = max(abs(reverseBits(min(vec4<i32>(2147483647i, 3215i, 38537i, 5097i), vec4<i32>(global0.x, u_input.c, u_input.c, global0.x)) ^ (vec4<i32>(u_input.c, global0.x, 0i, u_input.c) | vec4<i32>(-13377i, u_input.c, -9855i, 1i)))), vec4<i32>(abs(0i), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, -2147483647i))), global0.x, u_input.c));
    global0 = vec2<i32>(var_0.x, -32057i) | vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(u_input.c >> (47514u % 32u), _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(22699i, 0i, var_0.x, var_0.x)))), ~7265i);
    let var_1 = Struct_2(Struct_1(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 30870i, -28137i, -1i), var_0)), max(~min(vec3<u32>(1u, 49821u, 0u), global1[_wgslsmith_index_u32(18976u, 15u)]), select(global1[_wgslsmith_index_u32(arg_0.x << (0u % 32u), 15u)], _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 0u), vec3<u32>(u_input.a, 4294967295u, arg_0.x)), true)), select(vec3<bool>(true, true, all(vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, true)), -vec3<i32>(-20154i, ~global0.x, -1i)), _wgslsmith_clamp_i32(u_input.c, ~1346i, ~(-var_0.x)), -737f);
    return max(global0.x, _wgslsmith_dot_vec4_i32(var_0, var_0) ^ -firstTrailingBit(62129i));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(-func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1895u), u_input.b)), ~global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 15u)], !select(select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, true, false), vec3<bool>(false, arg_1, arg_1)), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, arg_1, arg_1)), false), -vec3<i32>(arg_0.x, arg_0.x, -u_input.c)), _wgslsmith_mod_i32(2147483647i, global0.x), arg_2.x);
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 15u)];
    global1 = array<vec3<u32>, 15>();
    global0 = arg_0;
    return Struct_3(1u, _wgslsmith_sub_i32(~(~_wgslsmith_sub_i32(global0.x, global0.x)), -3807i), _wgslsmith_f_op_f32(-350f + _wgslsmith_f_op_f32(-var_0.c)) != -906f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(499f, -559f, 158f, 1945f))))) + vec4<f32>(-1262f, 650f, _wgslsmith_f_op_f32(floor(863f)), _wgslsmith_div_f32(734f, 685f)))), Struct_2(Struct_1(_wgslsmith_mult_i32(select(1i, global0.x, arg_1), ~35951i), ~var_0.a.b, vec3<bool>(any(vec4<bool>(var_0.a.c.x, false, true, var_0.a.c.x)), false, var_0.a.c.x), ~var_0.a.d), -arg_0.x & u_input.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1481f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1424f, var_0.c)), -244f)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = func_2(-(~(-vec2<i32>(arg_1.a.d.x, u_input.c)) | (firstTrailingBit(arg_1.a.d.zx) >> (select(arg_1.a.b.zy, vec2<u32>(1u, arg_1.a.b.x), arg_1.a.c.x) % vec2<u32>(32u)))), true || arg_0.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(346f, 258f) + vec2<f32>(arg_1.c, arg_1.c)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.c, arg_1.c), vec2<f32>(-1000f, -1030f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_1.c)))))))));
    global0 = firstTrailingBit(~func_2(vec2<i32>(firstLeadingBit(-1i), -u_input.c), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.yy) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, var_0.d.x) + vec2<f32>(arg_1.c, var_0.d.x)))).e.a.d.xz);
    let var_1 = select(select(!(!select(vec4<bool>(false, true, var_0.c, arg_1.a.c.x), vec4<bool>(true, true, var_0.c, arg_0.x), true)), !vec4<bool>(true, var_0.d.x < -3291f, arg_1.a.b.x < arg_1.a.b.x, var_0.c), select(!vec4<bool>(arg_0.x, true, false, arg_0.x), !(!vec4<bool>(true, true, arg_1.a.c.x, false)), !(!vec4<bool>(arg_0.x, var_0.c, var_0.c, true)))), select(select(!select(vec4<bool>(var_0.c, true, false, false), vec4<bool>(arg_1.a.c.x, true, var_0.e.a.c.x, arg_0.x), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0.x, var_0.e.a.c.x, arg_1.a.c.x), arg_0.x), !(!vec4<bool>(var_0.e.a.c.x, var_0.c, arg_0.x, false))), vec4<bool>(~4294967295u > ~arg_1.a.b.x, var_0.e.a.c.x, arg_1.a.c.x, u_input.c != reverseBits(arg_1.a.a)), true), select(vec4<bool>(arg_0.x, any(select(vec4<bool>(false, var_0.c, arg_0.x, false), vec4<bool>(true, false, false, var_0.e.a.c.x), arg_1.a.c.x)), true, true), vec4<bool>(any(func_2(vec2<i32>(-26437i, global0.x), true, vec2<f32>(1000f, -1055f)).e.a.c.zy), !arg_0.x, arg_1.a.c.x, !(arg_1.a.c.x || false)), vec4<bool>(!(!arg_0.x), var_0.e.a.c.x & any(vec4<bool>(var_0.c, true, false, var_0.e.a.c.x)), !(!arg_0.x), _wgslsmith_mult_u32(var_0.a, arg_1.a.b.x) < ~var_0.e.a.b.x)));
    global0 = ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 6086i), var_0.e.a.d.xz));
    var var_2 = func_2(firstTrailingBit(min(arg_1.a.d.xx, vec2<i32>(_wgslsmith_mod_i32(u_input.c, 1i), u_input.c >> (arg_1.a.b.x % 32u)))), all(!(!vec2<bool>(var_0.e.a.c.x, var_1.x))), _wgslsmith_f_op_vec2_f32(select(var_0.d.wz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, 1944f)), arg_0.x | !(!arg_1.a.c.x)))).e;
    return _wgslsmith_f_op_f32(703f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -698f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(4598u <= (18527u & max(1u, u_input.a)));
    global2 = true;
    var var_0 = Struct_3(~25263u, u_input.c, true, vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2118f, 786f))) + _wgslsmith_f_op_f32(-1379f - -1460f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2527f, 398f)), _wgslsmith_div_f32(561f, -135f)) * _wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), Struct_2(Struct_1(2147483647i, global1[_wgslsmith_index_u32(0u, 15u)], vec3<bool>(false, true, true), vec3<i32>(-30855i, 0i, u_input.c)), 0i, -522f)))), _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), func_2(vec2<i32>(1i, u_input.c), true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(568f, 853f), vec2<f32>(1036f, 625f)))).e))), func_2(max(-firstLeadingBit(vec2<i32>(u_input.c, 17548i)), _wgslsmith_div_vec2_i32(vec2<i32>(global0.x, 0i), vec2<i32>(u_input.c, u_input.c))), any(vec2<bool>(false, false)) || true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(697f, -2969f), vec2<f32>(-545f, 111f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1237f, 912f) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(794f, 2222f), vec2<f32>(-1482f, -115f)))))).e);
    global2 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(15385u, var_0.e.a.b.x), var_0.a), 182u) == (~var_0.a >> (min(58847u, ~var_0.e.a.b.x) % 32u));
    var var_1 = vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(0u, u_input.a)), ~var_0.a, 10801u, _wgslsmith_clamp_u32(8160u, u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_0.d.wzx * var_0.d.xxy), -u_input.c, firstTrailingBit(vec3<u32>(4294967295u, 81472u, u_input.a)), 0u);
}

