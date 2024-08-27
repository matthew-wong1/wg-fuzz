struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(173f, 875f), vec2<f32>(-2366f, -744f), vec2<f32>(1243f, 778f), vec2<f32>(1091f, 403f), vec2<f32>(-1127f, -179f), vec2<f32>(-120f, -463f), vec2<f32>(2100f, 505f), vec2<f32>(103f, -998f), vec2<f32>(684f, 1189f), vec2<f32>(-1104f, 1000f));

var<private> global1: array<f32, 24> = array<f32, 24>(633f, 990f, -837f, -447f, 253f, 764f, -457f, -890f, 174f, -374f, -1985f, 690f, -305f, 873f, 396f, -2360f, -614f, 130f, 870f, -186f, -1446f, 314f, -1038f, -1528f);

var<private> global2: array<Struct_4, 2>;

var<private> global3: vec2<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32) -> vec2<u32> {
    var var_0 = vec4<u32>(1u, 1u, 0u, _wgslsmith_div_u32(global3.x, arg_2) << ((arg_2 & global3.x) % 32u));
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    let var_1 = true;
    var var_2 = Struct_1(-2147483647i == _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, -2147483647i, 15379i) | firstTrailingBit(vec3<i32>(-2127i, 2147483647i, arg_0.a.x)), vec3<i32>(firstTrailingBit(-35273i), _wgslsmith_sub_i32(u_input.a, 44008i), ~u_input.a)), ~(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, arg_0.a.x, arg_0.b), vec4<i32>(arg_0.b, arg_0.a.x, arg_0.b, 17920i), vec4<i32>(u_input.a, -29515i, -2147483647i, -3724i)))), -2412f, reverseBits(-5150i), all(!select(!vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), vec2<bool>(var_1, true))));
    return _wgslsmith_add_vec2_u32(vec2<u32>(~global3.x, ~(_wgslsmith_sub_u32(global3.x, 4181u) | global3.x)), select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(5714u, 7175u), ~vec2<u32>(0u, 53942u), vec2<u32>(23590u, var_0.x)), vec2<u32>(~global3.x & arg_2, ~86497u), var_1));
}

fn func_2() -> vec3<i32> {
    var var_0 = ~_wgslsmith_mult_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.x, global3.x), vec2<u32>(22544u, global3.x) << (vec2<u32>(48994u, global3.x) % vec2<u32>(32u))), ~func_3(Struct_2(vec2<i32>(1i, 2147483647i), -1i), global0[_wgslsmith_index_u32(global3.x, 10u)], 0u), false), _wgslsmith_clamp_vec2_u32(vec2<u32>(global3.x, 30449u) ^ ~vec2<u32>(global3.x, 72560u), select(~vec2<u32>(global3.x, global3.x), max(vec2<u32>(4294967295u, global3.x), vec2<u32>(0u, 1u)), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), ~(~vec2<u32>(0u, global3.x))));
    global1 = array<f32, 24>();
    global2 = array<Struct_4, 2>();
    let var_1 = !vec4<bool>(false, !(any(vec3<bool>(true, true, false)) | all(vec4<bool>(false, true, true, false))), !(~(-30205i) != -u_input.a), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))));
    let var_2 = _wgslsmith_mod_u32(~0u, global3.x | max(global3.x >> (1u % 32u), countOneBits(0u ^ global3.x)));
    return max(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -69539i, -19481i) & vec3<i32>(1i, u_input.a, -1i), ~vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(i32(-1i) * -2147483647i, 1i, 43547i)), firstLeadingBit(min(-vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 47414i, 22749i), vec3<i32>(u_input.a, u_input.a, 1i))))) & _wgslsmith_add_vec3_i32(~vec3<i32>(countOneBits(u_input.a), u_input.a, reverseBits(u_input.a)), vec3<i32>(-2147483647i, ~(-24831i), 1i) << (vec3<u32>(_wgslsmith_div_u32(global3.x, 8335u), 372u, global3.x << (1u % 32u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(-1i, u_input.a);
    var var_1 = -func_2();
    global3 = ~firstTrailingBit(~select(vec2<u32>(global3.x, global3.x) >> (vec2<u32>(3978u, global3.x) % vec2<u32>(32u)), func_3(Struct_2(var_1.zy, 44331i), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], -270f), global3.x), vec2<bool>(true, true)));
    let var_2 = ~(-(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(-35473i, 4803i, 2147483647i, 16901i), vec4<i32>(1i, 43173i, -35424i, var_0)))));
    let var_3 = Struct_2(vec2<i32>(_wgslsmith_mod_i32(2055i, 1i), 1i), var_2.x);
    return Struct_1(true, ~vec4<i32>(var_0, ~u_input.a, min(29687i | var_1.x, 1i), countOneBits(-2147483647i | var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 597f)), true)))), 4667i, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 10>();
    var var_0 = Struct_1(true, abs(~(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a) ^ vec4<i32>(-38960i, 2147483647i, u_input.a, -2147483647i))) | vec4<i32>(u_input.a >> (22988u % 32u), (1i | u_input.a) << ((26033u | global3.x) % 32u), i32(-1i) * -1368i, ~31189i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(292f * -1605f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(52923u, 24u)]))))), max(~(_wgslsmith_sub_i32(u_input.a, -1i) << ((1u & global3.x) % 32u)), _wgslsmith_mult_i32(u_input.a, u_input.a)), !all(vec2<bool>(true, true)));
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2135f, -1097f, -940f))))));
    var var_1 = vec2<bool>(var_0.e, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(var_0.c * var_0.c), _wgslsmith_f_op_f32(-745f * 268f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(224f, 982f, var_0.c) - vec3<f32>(-280f, var_0.c, var_0.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -1125f, var_0.c) - vec3<f32>(global1[_wgslsmith_index_u32(47232u, 24u)], var_0.c, global1[_wgslsmith_index_u32(1u, 24u)]))))).a);
    global3 = ~vec2<u32>(max(~abs(global3.x), ~(~46350u)), _wgslsmith_sub_u32(global3.x, _wgslsmith_sub_u32(global3.x, ~global3.x)));
    var_0 = Struct_1(var_0.a, _wgslsmith_add_vec4_i32(vec4<i32>(1i, ~var_0.b.x, ~var_0.b.x, -12442i), var_0.b) << (vec4<u32>(124573u ^ global3.x, global3.x ^ 72116u, countOneBits(37342u), abs(5181u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -721f), var_0.b.x, var_0.a || !any(vec3<bool>(var_0.e, var_1.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.x, 24u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-676f, global1[_wgslsmith_index_u32(global3.x, 24u)])))))));
}

