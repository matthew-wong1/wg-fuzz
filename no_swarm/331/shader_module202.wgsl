struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<u32>(108428u, 29726u), vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(3909u, 1u), vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(13862u, 71652u), vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(1139u, 1u), vec4<bool>(false, true, true, true)), Struct_1(vec2<u32>(59744u, 4294967295u), vec4<bool>(false, false, false, true)), Struct_1(vec2<u32>(0u, 2951u), vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(66175u, 1u), vec4<bool>(true, true, true, false)), Struct_1(vec2<u32>(3733u, 0u), vec4<bool>(true, false, false, false)), Struct_1(vec2<u32>(24009u, 1u), vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(1u, 29297u), vec4<bool>(true, false, false, false)), Struct_1(vec2<u32>(26590u, 4294967295u), vec4<bool>(true, false, false, false)), Struct_1(vec2<u32>(0u, 18137u), vec4<bool>(true, true, true, false)), Struct_1(vec2<u32>(69536u, 0u), vec4<bool>(true, false, true, false)), Struct_1(vec2<u32>(0u, 0u), vec4<bool>(false, true, true, false)), Struct_1(vec2<u32>(71178u, 1u), vec4<bool>(true, true, false, true)), Struct_1(vec2<u32>(1u, 10085u), vec4<bool>(true, false, true, false)), Struct_1(vec2<u32>(37181u, 1u), vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(27109u, 4294967295u), vec4<bool>(true, true, false, false)), Struct_1(vec2<u32>(0u, 1u), vec4<bool>(false, true, false, true)), Struct_1(vec2<u32>(1u, 3863u), vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(1u, 59674u), vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(1u, 1u), vec4<bool>(true, true, false, false)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<bool>(false, true, true, false)), Struct_1(vec2<u32>(66u, 10736u), vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(12518u, 4294967295u), vec4<bool>(false, true, true, false)), Struct_1(vec2<u32>(20716u, 1u), vec4<bool>(false, false, true, true)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1338f, -1806f, 301f), vec3<f32>(-1324f, -902f, 543f))), vec3<f32>(-1146f, 1329f, 222f), vec3<bool>(false, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f * -451f)), 166f, 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-973f, 1f, -2788f))));
    let var_1 = vec3<u32>(~u_input.b.x, ~_wgslsmith_add_u32(0u ^ u_input.b.x, 4294967295u), 0u ^ _wgslsmith_mult_u32(~u_input.c.x | u_input.c.x, max(_wgslsmith_div_u32(2599u, u_input.b.x), u_input.b.x)));
    global0 = array<Struct_1, 26>();
    var var_2 = global0[_wgslsmith_index_u32(26893u, 26u)];
    var var_3 = 26013i;
    return ~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -1i, 2147483647i), min(firstLeadingBit(~vec3<i32>(1i, -9043i, 26147i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(u_input.e, u_input.d)), min(u_input.d, -60141i), i32(-1i) * -3128i)));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = -_wgslsmith_mod_vec3_i32(vec3<i32>(72195i, -_wgslsmith_mod_i32(71716i, u_input.a.x), countOneBits(-2147483647i)), firstTrailingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.a.x, u_input.e), vec3<i32>(-3262i, u_input.d, -2147483647i))));
    var var_1 = arg_0;
    var var_2 = Struct_1(min(arg_0.a, vec2<u32>(arg_0.a.x, 4294967295u)), !vec4<bool>(any(!var_1.b.yz), var_1.b.x, all(vec3<bool>(true, var_1.b.x, true)) || var_1.b.x, false));
    var_0 = -_wgslsmith_sub_vec3_i32(func_3() | vec3<i32>(_wgslsmith_clamp_i32(var_0.x, -1i, var_0.x), var_0.x, -4753i), ~(-vec3<i32>(var_0.x, var_0.x, u_input.d) >> ((u_input.b.zzy | u_input.b.wxx) % vec3<u32>(32u))));
    var_0 = vec3<i32>(~10286i, u_input.a.x, -select(abs(0i) >> (~4294967295u % 32u), u_input.e, !(u_input.d >= var_0.x)));
    return abs(vec2<u32>(var_1.a.x, ~(~4294967295u)));
}

fn func_1() -> u32 {
    let var_0 = true;
    var var_1 = reverseBits(select(_wgslsmith_sub_u32(1u, ~u_input.b.x), max(u_input.c.x, 1u), false));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-963f, 554f, -1000f, 1193f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(275f, -1603f, 1009f, 969f) + vec4<f32>(1888f, -1001f, -888f, -1475f)))))));
    var var_3 = vec3<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x);
    let var_4 = Struct_1(_wgslsmith_mod_vec2_u32(~u_input.c, select(select(vec2<u32>(var_3.x, var_3.x), vec2<u32>(var_3.x, 0u), var_0) >> (func_2(global0[_wgslsmith_index_u32(u_input.b.x, 26u)]) % vec2<u32>(32u)), vec2<u32>(select(u_input.c.x, u_input.b.x, true), 1u), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(var_0, var_0)))), select(vec4<bool>(var_0, !(var_0 == var_0), true, all(vec2<bool>(var_0, var_0))), vec4<bool>(false, func_3().x < _wgslsmith_mod_i32(u_input.d, -5516i), any(vec4<bool>(var_0, false, true, true)), true), any(vec2<bool>(true, true))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x >> (u_input.c.x % 32u), ~34963u, u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, 56236u, 10874u)) >> (u_input.b % vec4<u32>(32u)), ~u_input.b)), 26u)];
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1337f))) * _wgslsmith_f_op_f32(abs(-733f))) + 1f);
    var var_3 = Struct_1(vec2<u32>(_wgslsmith_div_u32(41904u, _wgslsmith_div_u32(_wgslsmith_mod_u32(9488u, 67038u), 6910u)), func_1()), select(vec4<bool>(true, true, var_0.b.x | (-1108f < var_2), var_0.b.x), var_0.b, var_0.b.x));
    var_3 = Struct_1(var_3.a, var_3.b);
    let var_4 = Struct_1(_wgslsmith_add_vec2_u32(min(~var_0.a, firstLeadingBit(vec2<u32>(u_input.c.x, var_0.a.x))) & vec2<u32>(1u, _wgslsmith_div_u32(1u, var_3.a.x)), func_2(global0[_wgslsmith_index_u32(u_input.c.x, 26u)])), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_sub_i32(0i | u_input.a.x, min(2147483647i, u_input.a.x)), u_input.e, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_1, 1i, var_1)), firstTrailingBit(vec3<i32>(var_1, u_input.e, u_input.a.x))), _wgslsmith_div_i32(-42595i, var_1)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -1140f, -250f) + vec3<f32>(771f, -866f, 1586f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1321f, 1436f, var_2), vec3<f32>(var_2, -1000f, var_2))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1085f), _wgslsmith_f_op_f32(round(var_2)), 2013f), _wgslsmith_f_op_f32(177f + _wgslsmith_f_op_f32(sign(var_2))) > -1070f)), -17736i, var_1, vec2<f32>(474f, var_2));
}

