struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global1: vec3<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<u32>) -> i32 {
    global1 = arg_2.zzw;
    global0 = array<vec3<bool>, 24>();
    let var_0 = -select(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-9648i, 0i, 50971i)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-44958i, -18418i, 47909i) >> (vec3<u32>(5820u, arg_2.x, 1u) % vec3<u32>(32u))), vec3<bool>(any(vec4<bool>(true, true, true, false)), all(global0[_wgslsmith_index_u32(global1.x, 24u)]), any(vec2<bool>(true, false)))) & (~_wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, -6468i, -1i), vec3<i32>(-1i, -86087i, 58321i)) ^ (vec3<i32>(countOneBits(-2147483647i), _wgslsmith_mult_i32(-2147483647i, 0i), ~1802i) << (arg_0 % vec3<u32>(32u))));
    let var_1 = ~arg_0.x;
    var var_2 = arg_2.x;
    return max(-25479i, -2147483647i);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> vec3<i32> {
    var var_0 = 1i;
    return vec3<i32>(firstTrailingBit(arg_1.a), ~firstTrailingBit(arg_1.a), -1763i);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<f32>, arg_3: bool) -> bool {
    global0 = array<vec3<bool>, 24>();
    let var_0 = vec3<i32>(0i, -55783i, -_wgslsmith_mod_i32(-44191i, 1i));
    let var_1 = Struct_4(4294967295u, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-420f)) * _wgslsmith_f_op_f32(941f - 2672f))))));
    let var_3 = ~func_4(select(select(vec2<bool>(true, true), vec2<bool>(false, var_1.b), var_1.b), !vec2<bool>(var_1.b, var_1.b), var_1.a < u_input.a.x), Struct_1(func_3(vec3<u32>(arg_1, var_1.a, 116040u), 0u, vec4<u32>(1u, 3129u, 7620u, 86132u)) ^ abs(-37831i), arg_3), 24986u, _wgslsmith_f_op_f32(-420f - _wgslsmith_f_op_f32(round(-527f))));
    return true;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    global0 = array<vec3<bool>, 24>();
    let var_0 = abs(3597u << (~_wgslsmith_dot_vec2_u32(u_input.a, select(vec2<u32>(1u, arg_2.a), global1.xz, vec2<bool>(false, arg_1.c.a))) % 32u));
    var var_1 = !vec4<bool>(true, arg_0, true, true);
    let var_2 = arg_1.c;
    let var_3 = arg_3;
    return all(vec4<bool>((countOneBits(arg_1.c.b.a) & _wgslsmith_div_i32(16326i, arg_3.c.b.a)) != -2147483647i, min(10800i | var_3.a, arg_1.a) == _wgslsmith_div_i32(-33142i, _wgslsmith_mod_i32(var_2.b.a, -10778i)), (_wgslsmith_sub_i32(-2147483647i, arg_3.a) << (_wgslsmith_mod_u32(6410u, 4294967295u) % 32u)) != ~(-30419i), all(select(select(vec4<bool>(arg_0, false, false, arg_2.b), vec4<bool>(true, true, false, arg_0), vec4<bool>(false, var_3.c.a, var_1.x, arg_2.b)), vec4<bool>(var_1.x, false, var_1.x, false), select(vec4<bool>(true, arg_1.c.b.b, false, var_2.a), vec4<bool>(false, true, arg_2.b, var_2.b.b), vec4<bool>(arg_3.c.b.b, arg_3.c.b.b, true, arg_1.c.b.b))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_4(0u, (i32(-1i) * -arg_1.b.a) < -2147483647i);
    global0 = array<vec3<bool>, 24>();
    global0 = array<vec3<bool>, 24>();
    var var_1 = vec4<bool>(false, func_5(func_2(true, ~(u_input.a.x | 0u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(263f, -803f, -668f, 787f) + vec4<f32>(126f, 612f, 1099f, 1123f)), _wgslsmith_div_vec4_f32(vec4<f32>(-405f, -1787f, -1372f, -1520f), vec4<f32>(141f, 856f, 278f, -457f)), vec4<bool>(arg_0.x, false, var_0.b, var_0.b))), any(select(vec4<bool>(true, arg_1.a, arg_0.x, var_0.b), vec4<bool>(arg_1.b.b, true, true, false), vec4<bool>(var_0.b, false, arg_0.x, true)))), Struct_3(func_4(vec2<bool>(false, var_0.b), Struct_1(arg_1.b.a, var_0.b), ~1u, _wgslsmith_f_op_f32(step(-1524f, -1032f))).x, ~vec3<u32>(global1.x, 84698u, global1.x), arg_1), Struct_4(~(~u_input.a.x), func_2(select(var_0.b, arg_1.a, var_0.b), firstTrailingBit(0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(526f, 537f, 361f, 343f) - vec4<f32>(382f, -535f, -1000f, 529f)), arg_0.x && arg_0.x)), Struct_3(-_wgslsmith_div_i32(arg_1.b.a, -2147483647i), vec3<u32>(14629u | global1.x, u_input.a.x, ~var_0.a), arg_1)), any(select(!vec4<bool>(true, true, var_0.b, arg_0.x), select(vec4<bool>(true, arg_1.a, true, false), vec4<bool>(true, true, true, false), arg_0.x), !vec4<bool>(var_0.b, false, arg_1.b.b, var_0.b))) & (!(var_0.b && false) || var_0.b), arg_0.x);
    return -51692i >> ((_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, global1.x, var_0.a, 0u)) >> (~vec4<u32>(u_input.a.x, 0u, global1.x, 64237u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 5150u, global1.x, 33955u)), vec4<u32>(24513u, global1.x, 4294967295u, 4294967295u))) ^ 1u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(1660f));
    let var_1 = -vec2<i32>(_wgslsmith_sub_i32(~(-2147483647i) & func_1(vec2<bool>(false, true), Struct_2(false, Struct_1(-19755i, true))), -min(-23348i, -18701i)), (2147483647i << (global1.x % 32u)) >> (_wgslsmith_mod_u32(0u, 1u) % 32u));
    var var_2 = Struct_4(_wgslsmith_sub_u32(_wgslsmith_mult_u32(5795u, u_input.a.x >> (18922u % 32u)), 41705u), any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false), true)));
    var var_3 = select(vec2<bool>(var_2.b, all(!vec3<bool>(var_2.b, false, var_2.b))), select(!(!(!vec2<bool>(true, var_2.b))), select(select(!vec2<bool>(var_2.b, true), vec2<bool>(true, true), false), !select(vec2<bool>(false, var_2.b), vec2<bool>(true, true), true), select(select(vec2<bool>(var_2.b, true), vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_2.b, false)), select(vec2<bool>(false, var_2.b), vec2<bool>(var_2.b, var_2.b), true), !vec2<bool>(var_2.b, true))), var_2.b), vec2<bool>(true, var_2.b));
    let var_4 = true;
    let var_5 = vec4<u32>(global1.x, ~29285u, 1u, max(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, var_2.a), vec3<u32>(0u, 1u, 15879u))) << (45249u % 32u));
    var var_6 = Struct_4(_wgslsmith_sub_u32(~38530u, 1u & ~global1.x), any(select(select(select(vec4<bool>(true, var_2.b, var_3.x, false), vec4<bool>(var_4, true, true, var_3.x), vec4<bool>(true, false, true, var_3.x)), vec4<bool>(var_4, false, var_2.b, true), vec4<bool>(false, var_4, var_4, false)), !select(vec4<bool>(var_4, var_3.x, var_4, var_2.b), vec4<bool>(true, true, var_2.b, var_3.x), var_3.x), func_5(var_2.b, Struct_3(22568i, vec3<u32>(1u, global1.x, global1.x), Struct_2(true, Struct_1(0i, var_3.x))), Struct_4(1u, true), Struct_3(var_1.x, var_5.zwz, Struct_2(false, Struct_1(-19804i, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1343f, _wgslsmith_f_op_f32(-850f * 587f))) - _wgslsmith_f_op_f32(min(-1263f, _wgslsmith_f_op_f32(trunc(-314f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-129f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1395f, 315f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1181f))))), vec3<i32>(var_1.x, var_1.x, func_4(vec2<bool>(all(vec4<bool>(false, var_2.b, var_3.x, false)), !var_4), Struct_1(reverseBits(2147483647i), false), 25958u, _wgslsmith_f_op_f32(-864f * 238f)).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, -1848f, 892f, _wgslsmith_f_op_f32(trunc(-107f))))), var_1 << (global1.yy % vec2<u32>(32u)));
}

