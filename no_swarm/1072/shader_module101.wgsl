struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25>;

var<private> global1: array<vec4<i32>, 13>;

var<private> global2: bool = false;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_1.b.wz;
    let var_1 = i32(-1i) * -_wgslsmith_mod_i32(34841i, arg_1.d.x);
    let var_2 = 18404i;
    let var_3 = var_0.x;
    var var_4 = arg_0.zz;
    return !vec3<bool>(true, (arg_1.a.x == 714f) != select(arg_0.x, var_4.x && var_4.x, arg_1.e.x & var_4.x), !all(vec3<bool>(true, true, false)));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    global1 = array<vec4<i32>, 13>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(110f, 225f, 184f) - vec3<f32>(arg_0.x, arg_0.x, 2057f)), arg_2.a) * vec3<f32>(_wgslsmith_f_op_f32(475f * arg_0.x), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(min(arg_0.x, -2838f))))), u_input.a, ~(_wgslsmith_add_vec2_i32(max(vec2<i32>(u_input.e, arg_2.c.x), vec2<i32>(3109i, arg_2.c.x)), arg_2.c & vec2<i32>(u_input.e, arg_2.c.x)) << (~arg_2.b.yx % vec2<u32>(32u))), arg_2.d, !(!select(func_3(arg_2.e, Struct_1(vec3<f32>(-1997f, arg_2.a.x, -1303f), arg_2.b, global0[_wgslsmith_index_u32(arg_2.b.x, 25u)], vec3<i32>(u_input.e, -5212i, u_input.e), arg_2.e)), !arg_2.e, !arg_1)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-854f * 1612f))), _wgslsmith_f_op_f32(max(-146f, -860f))), arg_2.a.x), ~firstTrailingBit(countOneBits(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.d.x, 1u, 26942u)))), -_wgslsmith_div_vec2_i32(vec2<i32>(max(0i, arg_2.d.x), var_0.d.x), _wgslsmith_sub_vec2_i32(-var_0.d.zx, max(vec2<i32>(53425i, 3048i), vec2<i32>(-2147483647i, 2147483647i)))), vec3<i32>(u_input.e << (u_input.d.x % 32u), -1i, 1i), !select(vec3<bool>(all(vec2<bool>(false, arg_1)), arg_2.e.x, arg_2.e.x), var_0.e, false));
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_0.zx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.xx * arg_0.yy)))));
    let var_3 = vec4<bool>(var_1.e.x, abs(_wgslsmith_div_u32(firstTrailingBit(var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9128u, 87596u), u_input.a.ywy))) == var_0.b.x, true, arg_1);
    return -461f;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<f32>(1000f, -348f, arg_0.a.x, -781f), arg_0.e.x, arg_0)) - arg_0.a.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2074f), _wgslsmith_f_op_f32(arg_0.a.x - -1106f)), 1157f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f))), _wgslsmith_mult_vec4_u32(firstTrailingBit(u_input.a), ~_wgslsmith_clamp_vec4_u32(~u_input.a, firstLeadingBit(u_input.a), reverseBits(arg_0.b))), reverseBits(global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 25u)]), vec3<i32>(u_input.b, arg_0.c.x, _wgslsmith_div_i32(~0i, abs(arg_0.d.x))), func_3(select(select(!arg_0.e, !vec3<bool>(false, arg_0.e.x, false), arg_0.e.x || false), vec3<bool>(true, arg_0.c.x > u_input.b, arg_0.e.x), false), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1666f, arg_0.a.x, arg_0.a.x) * vec3<f32>(366f, arg_0.a.x, arg_0.a.x)))), u_input.a, (vec2<i32>(u_input.e, 32950i) >> (u_input.a.zy % vec2<u32>(32u))) << (vec2<u32>(0u, 67046u) % vec2<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(-1i, -59942i), min(u_input.b, arg_0.d.x), arg_0.d.x), !select(vec3<bool>(arg_0.e.x, arg_0.e.x, true), arg_0.e, vec3<bool>(false, false, true)))));
    var var_1 = -520f;
    global2 = true;
    var var_2 = max(4294967295u, 1u) ^ (arg_0.b.x >> (_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.d.x, 22147u)), _wgslsmith_add_vec2_u32(u_input.a.xz, var_0.b.xy)) % 32u));
    let var_3 = arg_0;
    return ~var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(~(~select(_wgslsmith_mod_vec2_u32(u_input.d, u_input.d), reverseBits(u_input.d), true)), u_input.d);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(758f + -559f), _wgslsmith_f_op_f32(-471f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) * -1127f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1545f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(905f * 1410f))))), -143f));
    var var_2 = ~(-_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, select(u_input.a.x, 19523u, false)), 13u)], -global1[_wgslsmith_index_u32(1u, 13u)]));
    let var_3 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -834f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-325f, 719f)), _wgslsmith_f_op_f32(-var_1.x))) > _wgslsmith_f_op_f32(-var_1.x), any(vec2<bool>(true, select(true, true, true))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1708f, var_1.x, -221f, -146f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1072f, 1176f, var_1.x))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1381f, -904f, _wgslsmith_f_op_f32(var_1.x + var_1.x), 1571f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1169f, 620f, var_1.x)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1475f, var_1.x, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(50312i, var_2.x), ~u_input.d.x, 1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, var_4.x, 1135f, 479f), _wgslsmith_div_vec4_f32(vec4<f32>(446f, var_4.x, -294f, var_1.x), vec4<f32>(136f, 1325f, 446f, -697f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, -623f, var_1.x, -244f), vec4<f32>(-1176f, -213f, -259f, var_4.x)))))), !select(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), select(vec4<bool>(true, false, true, var_3.x), vec4<bool>(var_3.x, false, false, true), var_3.x), vec4<bool>(var_3.x, false, var_3.x, true)))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~u_input.d.x), max(abs(var_0.x), ~u_input.d.x)), 13u)] << (vec4<u32>(1u, select(3419u, var_0.x, var_3.x) ^ func_1(Struct_1(vec3<f32>(1028f, 790f, -571f), vec4<u32>(66958u, var_0.x, u_input.a.x, 6415u), vec2<i32>(1i, var_2.x), var_2.xxy, vec3<bool>(var_3.x, var_3.x, var_3.x)), u_input.a.x), var_0.x, _wgslsmith_mult_u32(1u, u_input.a.x) & ~1u) % vec4<u32>(32u)));
}

