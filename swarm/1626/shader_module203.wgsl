struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global2: array<vec4<f32>, 28>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = Struct_4(Struct_1(~(arg_0.a.a & abs(vec3<u32>(1u, 54756u, 0u))), ~(~(~vec2<u32>(4294967295u, u_input.b)))), vec2<i32>(0i, u_input.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(550f, -162f, 1850f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(555f, 339f, _wgslsmith_div_f32(-560f, -1000f)), vec3<f32>(_wgslsmith_div_f32(1000f, 1065f), -729f, -881f), global1[_wgslsmith_index_u32(u_input.b, 5u)])))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1088f)), _wgslsmith_f_op_f32(-1677f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(236f * -255f), _wgslsmith_f_op_f32(ceil(-1191f)))), _wgslsmith_f_op_f32(step(-2581f, _wgslsmith_f_op_f32(f32(-1f) * -307f)))));
    global0 = array<u32, 2>();
    var var_2 = Struct_5(Struct_3(!vec2<bool>(arg_0.b.b.x <= 0u, u_input.a > var_0.b.x), var_0.b, reverseBits(countOneBits(4294967295u | u_input.b)), ~(-1i), vec2<bool>(true, any(vec3<bool>(true, true, true)))), !global1[_wgslsmith_index_u32(arg_0.a.a.x, 5u)], -(~1i & _wgslsmith_div_i32(abs(u_input.a), u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, ~12848u, 32948u), ~select(var_0.a.a, vec3<u32>(u_input.b, 27298u, 1u), false)) << (~u_input.b % 32u));
    let var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.b.a, max(min(arg_0.b.a, arg_0.b.a) >> (firstTrailingBit(vec3<u32>(var_2.d, 6875u, arg_0.b.b.x)) % vec3<u32>(32u)), min(~vec3<u32>(28996u, var_2.d, 0u), abs(vec3<u32>(global0[_wgslsmith_index_u32(0u, 2u)], 37634u, 1u)))), min(~vec3<u32>(u_input.b, 47962u, arg_0.b.a.x), vec3<u32>(var_2.d, abs(4294967295u), select(15707u, 65790u, var_2.b.x)))), vec3<u32>(var_2.d, (4294967295u >> (u_input.b % 32u)) & u_input.b, ~(~(~32794u))));
    return vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~65238u, var_2.d), 4294967295u), 1u, var_2.d);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-276f, arg_0.x))))), 176f));
    let var_1 = Struct_2(Struct_1(abs(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(42113u, 2u)]), vec3<u32>(u_input.b, 0u, u_input.b)))), ~min(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], 0u), max(vec2<u32>(u_input.b, 22407u), vec2<u32>(global0[_wgslsmith_index_u32(4957u, 2u)], global0[_wgslsmith_index_u32(24732u, 2u)])))), Struct_1(func_3(Struct_2(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)]), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 18439u)), Struct_1(vec3<u32>(26297u, 1u, global0[_wgslsmith_index_u32(25198u, 2u)]), vec2<u32>(90446u, 40720u)))), vec2<u32>(59603u, u_input.b)));
    var var_2 = arg_1.x;
    let var_3 = arg_1.x;
    var var_4 = Struct_1(_wgslsmith_sub_vec3_u32(func_3(var_1), vec3<u32>((0u | var_1.b.b.x) >> (15737u % 32u), 4294967295u, var_1.b.a.x)), ~vec2<u32>(40844u, 4294967295u));
    return Struct_4(var_1.b, abs(select(reverseBits(~vec2<i32>(21443i, 6721i)), select(-vec2<i32>(2439i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), !arg_1), !(!arg_1))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(742f, -1416f, -1108f), vec3<f32>(1267f, 1000f, 1889f))))));
    let var_1 = _wgslsmith_div_f32(-2165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 1176f)) - var_0.x));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(var_1, var_1)), var_0.x, _wgslsmith_f_op_f32(select(-1084f, var_0.x, false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(u_input.b, 28u)])) + global2[_wgslsmith_index_u32(78087u, 28u)]))), vec2<bool>(!(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(19668i, u_input.a)) == (u_input.a | 2147483647i)), true));
    global2 = array<vec4<f32>, 28>();
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, -1229f, 677f))))))))));
    return 0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(~u_input.b, 2u)], ~u_input.b >> (106433u % 32u)), var_2.a.b) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_3(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), vec2<i32>(u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -18626i, u_input.a, -5407i), vec4<i32>(-2147483647i, u_input.a, 0i, 22108i))), global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(~1u, 2u)]), 2u)], u_input.a, vec2<bool>(true, true)), global1[_wgslsmith_index_u32(~func_1(), 5u)], -(i32(-1i) * -min(-19592i, -24676i)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(19928u, 0u, global0[_wgslsmith_index_u32(51819u, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60382u, 2u)], 2u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(48991u, 2u)], u_input.b, global0[_wgslsmith_index_u32(4294967295u, 2u)], u_input.b) % vec4<u32>(32u)), vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], 4294967295u))));
    var var_1 = Struct_3(var_0.b.zz, -var_0.a.b, reverseBits(countOneBits(79974u)), min(_wgslsmith_div_i32(var_0.a.b.x, u_input.a), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.c, u_input.a, u_input.a), 0i)), select(vec2<bool>(true, true), select(select(select(var_0.a.e, var_0.a.a, var_0.b.x), !var_0.a.a, false), select(vec2<bool>(var_0.b.x, var_0.b.x), select(vec2<bool>(false, false), vec2<bool>(var_0.b.x, var_0.a.e.x), var_0.a.a), vec2<bool>(var_0.a.a.x, false)), vec2<bool>(false, false)), var_0.a.a.x));
    global0 = array<u32, 2>();
    let var_2 = _wgslsmith_mod_vec3_u32(~(~firstLeadingBit(vec3<u32>(94229u, 0u, var_0.d))), vec3<u32>(4294967295u, 88634u, 5042u));
    global1 = array<vec3<bool>, 5>();
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, -1916f, -1268f, 958f))))), var_1.a);
    global1 = array<vec3<bool>, 5>();
    var var_4 = Struct_2(var_3.a, Struct_1(vec3<u32>(countOneBits(u_input.b), ~(~81539u), firstTrailingBit(var_1.c >> (var_3.a.a.x % 32u))), firstLeadingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, var_0.a.c), vec2<u32>(global0[_wgslsmith_index_u32(var_2.x, 2u)], u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 927f, -786f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(571f - 1701f) - -1558f))), var_0.a.d, var_3.b.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), 1u);
}

