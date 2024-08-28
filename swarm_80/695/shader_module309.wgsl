struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26>;

var<private> global1: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-2058f, 1381f, 648f), vec3<f32>(508f, -342f, -718f), vec3<f32>(1142f, 283f, -1000f), vec3<f32>(-456f, -581f, -1000f), vec3<f32>(519f, -767f, -139f), vec3<f32>(-333f, 1268f, -1455f), vec3<f32>(1279f, -1000f, 360f), vec3<f32>(921f, 1688f, -1424f), vec3<f32>(-381f, -944f, 1835f), vec3<f32>(-406f, -158f, 1679f), vec3<f32>(306f, -270f, 1294f), vec3<f32>(-121f, -1232f, 1798f), vec3<f32>(1458f, 552f, -663f), vec3<f32>(-1627f, -271f, 182f), vec3<f32>(1209f, 1000f, 657f));

var<private> global2: array<f32, 17> = array<f32, 17>(-1748f, 455f, 1464f, 103f, -853f, 1000f, -116f, 123f, 467f, -894f, 1368f, 1440f, 421f, 1123f, -1356f, 672f, 2190f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(18481u, 15u)]));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> bool {
    let var_0 = ~select(1i, _wgslsmith_add_i32(u_input.a, reverseBits(_wgslsmith_add_i32(-2147483647i, 719i))), false);
    let var_1 = _wgslsmith_div_vec4_u32(~(vec4<u32>(~u_input.c, 3637u, u_input.c, select(arg_1.a.x, u_input.c, false)) | select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 97422u, u_input.b.x, 0u), vec4<u32>(22966u, u_input.b.x, u_input.c, 17981u)), vec4<u32>(arg_1.a.x, 1u, arg_1.a.x, arg_1.a.x), select(false, false, true))), vec4<u32>(0u, 32475u, _wgslsmith_div_u32(arg_1.a.x, ~u_input.b.x), u_input.c));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(68887u, 17u)], -261f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2[_wgslsmith_index_u32(21995u, 17u)], 1176f)))) - vec2<f32>(116f, -267f))));
    global1 = array<vec3<f32>, 15>();
    global0 = array<vec3<u32>, 26>();
    var var_1 = var_0.x;
    var var_2 = Struct_4(~global0[_wgslsmith_index_u32(reverseBits(21350u), 26u)], min(1i, u_input.a));
    return select(-select(~var_2.b, _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, var_2.b), vec2<i32>(2147483647i, -63101i) << (vec2<u32>(var_2.a.x, 78009u) % vec2<u32>(32u))), arg_0.x), min(_wgslsmith_div_i32(u_input.a, -1i), -(~37206i)), !arg_0.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-267f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-411f, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.b.x, 17u)]))) + -1198f), arg_1) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1295f, global2[_wgslsmith_index_u32(arg_0.x, 17u)], global2[_wgslsmith_index_u32(arg_0.x, 17u)], global2[_wgslsmith_index_u32(43322u, 17u)]) * vec4<f32>(1359f, -1455f, arg_1, 238f))), 1u > ~u_input.b.x))));
    global2 = array<f32, 17>();
    let var_1 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 17u)] * arg_1))) - 1074f) == _wgslsmith_f_op_f32(f32(-1f) * -951f)) != (_wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(-684f * _wgslsmith_f_op_f32(min(arg_1, -746f))));
    var var_2 = 0u;
    let var_3 = vec2<f32>(arg_1, 822f);
    return vec2<i32>(~8581i, func_4(vec4<bool>(select(false, true, var_1), func_3(global2[_wgslsmith_index_u32(arg_0.x, 17u)], Struct_4(vec3<u32>(arg_0.x, arg_0.x, 17404u), u_input.a)), false, false), select(select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(true, true)), !vec2<bool>(var_1, false), all(vec3<bool>(false, var_1, true))), !select(vec2<bool>(var_1, true), vec2<bool>(true, var_1), var_1)) >> (4294967295u % 32u));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_3(select(vec3<bool>(~4294967295u > arg_1.a.x, arg_2.b.x, arg_1.b.x), select(!vec3<bool>(arg_2.b.x, arg_2.b.x, arg_1.b.x), vec3<bool>(arg_2.b.x, true, all(vec3<bool>(true, arg_1.b.x, arg_1.b.x))), arg_1.b.x), !select(select(vec3<bool>(arg_2.b.x, arg_1.b.x, true), vec3<bool>(arg_2.b.x, arg_1.b.x, arg_1.b.x), arg_2.b.x), !vec3<bool>(false, true, arg_2.b.x), vec3<bool>(arg_2.b.x, arg_1.b.x, arg_1.b.x))), 1337f, Struct_1(~29350i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 17u)], -578f, 1000f, 935f), vec4<f32>(global2[_wgslsmith_index_u32(47170u, 17u)], global2[_wgslsmith_index_u32(20692u, 17u)], 2272f, -215f), arg_1.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(301f, global2[_wgslsmith_index_u32(u_input.c, 17u)], 1000f, -1000f) + vec4<f32>(189f, -508f, global2[_wgslsmith_index_u32(arg_2.a.x, 17u)], -623f)), !vec4<bool>(arg_1.b.x, arg_1.b.x, arg_2.b.x, arg_1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(451f - 1986f), global2[_wgslsmith_index_u32(~arg_1.c, 17u)], _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(u_input.d.x, 17u)]))))), arg_0.x);
    let var_1 = arg_1;
    return select(select(select(vec4<bool>(any(vec3<bool>(false, arg_2.b.x, true)), arg_1.b.x, false, arg_2.b.x), select(select(vec4<bool>(true, false, var_0.a.x, arg_2.b.x), vec4<bool>(arg_2.b.x, true, var_0.a.x, var_0.a.x), arg_1.b.x), select(vec4<bool>(true, false, false, false), vec4<bool>(var_1.b.x, arg_2.b.x, true, arg_1.b.x), var_0.a.x), select(arg_1.b.x, false, var_0.a.x)), !vec4<bool>(var_1.b.x, false, arg_2.b.x, arg_1.b.x)), vec4<bool>(false, arg_2.b.x | false, true, any(!vec3<bool>(true, arg_2.b.x, false))), vec4<bool>(var_1.c > _wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(arg_2.a.x, 6896u, 4294967295u, arg_2.a.x)), any(var_0.a.yx), all(vec3<bool>(arg_1.b.x, arg_1.b.x, var_0.a.x)), ~var_1.d <= var_1.d)), select(!vec4<bool>(select(true, var_1.b.x, true), u_input.a < 20597i, true, -626f == global2[_wgslsmith_index_u32(u_input.c, 17u)]), !vec4<bool>(var_1.d <= -37844i, 28214u > arg_1.a.x, true, true), select(vec4<bool>(true, all(vec3<bool>(var_1.b.x, true, var_1.b.x)), any(vec2<bool>(arg_1.b.x, false)), true), !(!vec4<bool>(arg_1.b.x, false, arg_2.b.x, true)), any(var_0.a))), select(!vec4<bool>(!var_0.a.x, true, select(true, true, arg_1.b.x), true), vec4<bool>(0u > ~var_1.c, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, !arg_2.b.x, true, all(var_0.a)), select(vec4<bool>(false, false, arg_1.b.x, var_1.b.x), vec4<bool>(true, false, true, true), select(vec4<bool>(var_1.b.x, var_1.b.x, var_0.a.x, true), vec4<bool>(arg_2.b.x, false, true, false), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 17>();
    var var_0 = Struct_2(all(func_5(-(vec3<i32>(u_input.a, -2147483647i, 30169i) ^ vec3<i32>(u_input.a, 22853i, 25111i)), Struct_5(min(vec4<u32>(39232u, 30070u, u_input.d.x, 0u), vec4<u32>(u_input.c, 54601u, 44966u, 4294967295u)), vec2<bool>(true, false), abs(u_input.d.x), ~u_input.a), Struct_5(abs(vec4<u32>(1u, u_input.b.x, 0u, 96183u)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), _wgslsmith_mult_u32(u_input.b.x, 53576u), reverseBits(35965i)), func_1(~global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 898f))), !select(func_5(~vec3<i32>(u_input.a, -1i, u_input.a), Struct_5(vec4<u32>(u_input.b.x, 0u, u_input.d.x, 1554u), vec2<bool>(true, false), 0u, -2147483647i), Struct_5(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), vec2<bool>(true, false), 18845u, u_input.a), vec2<i32>(1i, -2147483647i)).wy, vec2<bool>(true, true), false), 31865i);
    global2 = array<f32, 17>();
    var_0 = Struct_2(select(true, false, false), !vec2<bool>(true, !any(var_0.b)), 11473i);
    let var_1 = (u_input.a ^ 2147483647i) >> (9154u % 32u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(9767u, 17u)]), _wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 17u)]), 524f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 17u)]))), 385f, true)));
    let var_3 = countOneBits(firstLeadingBit(vec4<u32>(firstTrailingBit(~4294967295u), u_input.c, abs(0u << (u_input.d.x % 32u)), abs(u_input.d.x) >> (_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 20436u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(~_wgslsmith_mult_i32(-1i, var_0.c), (i32(-1i) * -1i) & var_1), _wgslsmith_mod_i32(54042i, u_input.a)));
}

