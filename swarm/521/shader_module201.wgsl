struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    var var_0 = -vec3<i32>(~arg_1.x, -(~arg_0), _wgslsmith_mult_i32(1i, arg_1.x));
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(537f, 297f, -644f, 1717f), vec4<f32>(1344f, -555f, -150f, -882f), vec4<bool>(false, true, false, true))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, 613f, 106f, 1226f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-634f, -324f, 1591f, 831f), vec4<f32>(-599f, -1324f, 989f, 429f), false)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(394f, 2084f, -1167f, 400f) + vec4<f32>(-137f, -594f, 1135f, 518f))))));
    var var_1 = !(!(!any(vec2<bool>(false, true))));
    let var_2 = -700f;
    var var_3 = _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(abs(4621u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 97448u)), func_3(2147483647i, vec2<i32>(-2147483647i, -13417i), 130f)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20094u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 1u)), 35426u, 54211u, abs(15547u))), ~(vec4<u32>(4294967295u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(18568u, 1035u), vec2<u32>(38353u, 43873u)), ~16845u) ^ _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, 22008u, 18437u, 4294967295u)), select(vec4<u32>(4294967295u, 58651u, 3296u, 65612u), vec4<u32>(27934u, 1u, 6184u, 61567u), false))));
    let var_4 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(~0u, 10u)], vec2<i32>(1i, firstTrailingBit(u_input.a))), 1i & max(~arg_0.a, firstLeadingBit(u_input.a))) << (reverseBits(_wgslsmith_div_u32(101544u | var_3.x, firstTrailingBit(var_3.x)) >> (var_3.x % 32u)) % 32u);
    return Struct_1(_wgslsmith_mult_vec4_i32(firstTrailingBit(select(-vec4<i32>(arg_1.a, var_4, u_input.a, 0i), -vec4<i32>(0i, -2147483647i, arg_0.a, -1i), true)), _wgslsmith_mult_vec4_i32(vec4<i32>(-4634i, -var_4, firstLeadingBit(-2147483647i), u_input.a & 2147483647i), ~(vec4<i32>(var_4, -17691i, -1i, 1i) >> (vec4<u32>(var_3.x, 1u, 1u, 15727u) % vec4<u32>(32u))))), 1u, -max(_wgslsmith_mod_vec3_i32(vec3<i32>(-25804i, -1i, 23254i), abs(vec3<i32>(27512i, u_input.a, arg_1.a))), countOneBits(abs(vec3<i32>(11540i, var_4, -2147483647i)))), var_3.ywy << (abs(vec3<u32>(select(var_3.x, 2116u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3.x, var_3.x, 4294967295u), vec4<u32>(var_3.x, 1u, 1u, var_3.x)), ~var_3.x)) % vec3<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = !(!(1088f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var var_2 = arg_3;
    return func_2(Struct_2(u_input.a), Struct_2(-4594i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(min(-1260f, _wgslsmith_f_op_f32(trunc(-1198f)))), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-969f - _wgslsmith_f_op_f32(f32(-1f) * -1196f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(792f, 1000f)) + _wgslsmith_f_op_f32(1492f - 857f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(332f))))), false);
    let var_1 = vec4<u32>(abs(1u), ~abs(14724u), reverseBits(var_0.b), _wgslsmith_add_u32(reverseBits(max(var_0.d.x, var_0.b)), var_0.b));
    var var_2 = !all(vec2<bool>(!select(true, true, true), all(vec4<bool>(true, true, true, true))));
    let var_3 = var_1.x;
    var var_4 = select(select(select(vec4<bool>(true, any(vec3<bool>(true, true, true)), select(true, false, true), true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), !vec4<bool>(true, var_0.b != 1u, true, true), select(false, any(vec4<bool>(true, true, true, true)), !all(vec4<bool>(true, true, false, false)))), !select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false))), select(true, true, true));
    let var_5 = select(vec4<bool>(var_4.x, var_4.x, true, false), !select(select(select(vec4<bool>(true, true, false, var_4.x), vec4<bool>(var_4.x, var_4.x, var_4.x, true), vec4<bool>(false, var_4.x, var_4.x, false)), select(vec4<bool>(var_4.x, var_4.x, true, false), vec4<bool>(var_4.x, true, false, var_4.x), true), !vec4<bool>(var_4.x, var_4.x, false, var_4.x)), !vec4<bool>(var_4.x, false, var_4.x, var_4.x), select(select(vec4<bool>(false, var_4.x, true, false), vec4<bool>(true, var_4.x, true, false), var_4.x), !vec4<bool>(false, var_4.x, var_4.x, true), var_4.x || false)), vec4<bool>(var_4.x, true, false, var_4.x));
    var var_6 = Struct_5(var_5.x);
    var var_7 = Struct_5(any(vec3<bool>(any(!vec2<bool>(var_4.x, var_4.x)), ~var_3 <= func_2(Struct_2(-1i), Struct_2(var_0.a.x)).d.x, any(select(var_4.wxy, vec3<bool>(true, false, var_5.x), var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(~var_0.c, _wgslsmith_mult_vec3_i32(vec3<i32>(32054i, u_input.a, 3078i) ^ vec3<i32>(0i, var_0.c.x, u_input.a), ~var_0.a.wwz) >> (reverseBits(vec3<u32>(49495u, 3469u, var_3) | var_0.d) % vec3<u32>(32u))));
}

