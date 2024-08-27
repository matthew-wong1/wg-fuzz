struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 21> = array<f32, 21>(534f, 502f, 1143f, 1000f, 1000f, 467f, -779f, -1056f, -1241f, -130f, -1038f, -240f, -2270f, -215f, -759f, 620f, -720f, 961f, -1112f, 530f, 509f);

var<private> global2: Struct_3 = Struct_3(91781u, -315f, Struct_2(false, true), 1u, vec4<bool>(false, false, true, false));

var<private> global3: i32 = 12199i;

var<private> global4: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = false;
    let var_1 = select(~u_input.a, 0u, global2.e.x) | (countOneBits(~_wgslsmith_clamp_u32(u_input.a, global2.d, 19327u)) | global2.a);
    global4 = array<vec3<bool>, 13>();
    var var_2 = global2.c;
    var var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_1, global2.d, ~u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, abs(4294967295u), _wgslsmith_div_u32(1u, 14191u)), ~(~vec3<u32>(u_input.a, 0u, var_1)))), vec3<u32>(0u, global2.d, reverseBits(_wgslsmith_sub_u32(~var_1, _wgslsmith_clamp_u32(u_input.a, 0u, 0u)))));
    return 8267u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = global2.c;
    let var_1 = false | arg_0;
    let var_2 = global2.e.x;
    var var_3 = Struct_4(Struct_3(43560u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f))), global2.c, _wgslsmith_div_u32(select(38662u, u_input.a, any(vec3<bool>(true, arg_0, var_0.b))), max(0u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 0u))), vec4<bool>(global2.e.x, false, !(!var_0.a), global2.c.b)), Struct_1(firstLeadingBit(-firstTrailingBit(vec2<i32>(-10004i, -3154i))), false, global2.e.x | global2.e.x), Struct_3(max(~u_input.a, func_3()), global2.b, global2.c, u_input.a, global2.e), reverseBits(abs(~vec3<u32>(global2.d, u_input.a, 67513u) ^ vec3<u32>(0u, global2.a, 31349u))), global2.c);
    var var_4 = Struct_2(~(~_wgslsmith_sub_i32(var_3.b.a.x, 3282i)) >= var_3.b.a.x, all(global2.e));
    return var_3.b;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_4(Struct_3(~u_input.a, -1098f, global2.c, 37u, !(!global2.e)), func_2(false), Struct_3(_wgslsmith_mult_u32(161145u, ~u_input.a) ^ (_wgslsmith_sub_u32(0u, u_input.a) ^ u_input.a), _wgslsmith_f_op_f32(step(-1639f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 21u)]), -388f, any(global2.e.yx))))), global2.c, ~_wgslsmith_mult_u32(u_input.a, global2.a) & _wgslsmith_mult_u32(~0u, u_input.a), vec4<bool>(true, all(vec4<bool>(true, global2.e.x, true, global2.e.x)) & !global2.e.x, false, false)), vec3<u32>(global2.d, ~((1u >> (1u % 32u)) | ~global2.a), u_input.a), global2.c);
    let var_1 = vec2<u32>(((var_0.c.a & arg_1.x) | 11199u) >> (~reverseBits(4294967295u) % 32u), _wgslsmith_mult_u32(~max(var_0.d.x, 14902u), ~4294967295u)) << ((countOneBits(_wgslsmith_mod_vec2_u32(reverseBits(arg_1), var_0.d.xy)) & vec2<u32>(abs(_wgslsmith_mod_u32(var_0.d.x, u_input.a)), 1u)) % vec2<u32>(32u));
    var var_2 = func_2(true);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -1897f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 21u)], global2.b, var_0.b.c)) * global1[_wgslsmith_index_u32(5231u, 21u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(271f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, 986f, var_0.a.b))) + vec3<f32>(-1197f, global2.b, -1643f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_1.x, 21u)], 923f, -305f)), vec3<f32>(var_0.c.b, -367f, 989f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1621f, global2.b, var_0.c.b))) - vec3<f32>(-705f, -1311f, -458f))))));
    global3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(max(arg_2.xwz, arg_2.yzy)), vec3<i32>(~var_0.b.a.x, 1i, -15540i)), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, 28800i, var_2.a.x), -vec3<i32>(14581i, var_0.b.a.x, var_0.b.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, 5182i, -6802i), arg_2.xyy))), min(~arg_0, -2147483647i));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(-1i, ~18845i ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(25707i, -25866i), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -45662i), vec2<i32>(53167i, 0i))), -1i << (u_input.a % 32u));
    global0 = global2.e.x;
    global3 = var_0.x << (1u % 32u);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a, 21u)], -240f)), _wgslsmith_f_op_f32(floor(-1000f)), true))) * -894f), 1000f, 1000f);
    let var_2 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(22122u, 14970u, func_1(_wgslsmith_dot_vec2_i32(var_0.zz & var_0.yz, ~var_0.xy), _wgslsmith_sub_vec2_u32(vec2<u32>(5959u, u_input.a), vec2<u32>(1u, 1u)), abs(select(vec4<i32>(0i, var_0.x, var_0.x, 15767i), vec4<i32>(var_0.x, 1i, var_0.x, -792i), global2.c.b)))), 1i, vec4<f32>(-1000f, _wgslsmith_f_op_f32(sign(-432f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~4294967295u, 21u)] + _wgslsmith_f_op_f32(sign(-1077f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-150f + var_1.x))))), ~firstTrailingBit(-26125i), _wgslsmith_sub_i32(var_0.x, -24021i));
}

