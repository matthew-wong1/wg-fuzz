struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15>;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1455f, 722f), global1.x)), _wgslsmith_f_op_f32(global1.x + global1.x), true)), _wgslsmith_f_op_f32(sign(-1375f)), _wgslsmith_f_op_f32(exp2(global1.x)));
    var var_1 = firstTrailingBit(~(vec4<u32>(~u_input.a, 0u, 27694u, 1u) & vec4<u32>(u_input.c & 4294967295u, u_input.c, ~1u, min(84443u, u_input.a))));
    var var_2 = -(-vec4<i32>(~8384i, ~(-2147483647i), _wgslsmith_add_i32(-59056i, -4424i), -24243i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4145u, u_input.b, u_input.a), 4294967295u, u_input.c, firstTrailingBit(65865u)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(34888u, 8314u, u_input.a, 2137u), vec4<u32>(u_input.a, 4294967295u, 20433u, var_1.x)), ~vec4<u32>(4294967295u, 12879u, 0u, 1u))) % vec4<u32>(32u)));
    let var_3 = select(!all(vec4<bool>(any(vec4<bool>(true, false, false, false)), any(vec4<bool>(false, false, true, true)), true, true)), (min(max(u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, var_1.x, u_input.c), vec4<u32>(var_1.x, 0u, 4294967295u, u_input.c))) & (_wgslsmith_dot_vec3_u32(var_1.wzz, vec3<u32>(1u, 25148u, u_input.a)) << ((var_1.x | 57936u) % 32u))) > _wgslsmith_clamp_u32(var_1.x, 4162u, 4294967295u | ~u_input.a), true);
    var var_4 = Struct_3(!(!(_wgslsmith_f_op_f32(ceil(-980f)) >= -169f)), _wgslsmith_f_op_f32(var_0.x * 297f), ~firstLeadingBit(1i));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(426f - _wgslsmith_f_op_f32(-var_4.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-684f * global1.x), _wgslsmith_div_f32(1000f, -654f), any(vec2<bool>(false, true))))), 4294967295u > var_1.x))));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(0u), u_input.b), ~u_input.b, _wgslsmith_mult_u32(~u_input.a, 1u), 51681u);
    global1 = vec2<f32>(239f, _wgslsmith_f_op_f32(func_3()));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(6443u, u_input.c), firstTrailingBit(vec2<u32>(u_input.a, 83847u)), vec2<bool>(true, true)), var_0.wz), _wgslsmith_clamp_vec2_u32(var_0.yz, var_0.xz, _wgslsmith_mod_vec2_u32(~var_0.wz, vec2<u32>(u_input.c, u_input.a)))), _wgslsmith_sub_u32(u_input.c, ~_wgslsmith_sub_u32(4294967295u, var_0.x)));
    let var_2 = select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)) + global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global1.x)))) >= _wgslsmith_f_op_f32(func_3()), !(arg_0.x < -arg_0.x), true);
    var var_3 = Struct_3(var_2, 2475f, abs(abs(countOneBits(-39127i))));
    return _wgslsmith_div_u32(41068u, max(_wgslsmith_clamp_u32(~1u, abs(1u), abs(~var_0.x)), var_0.x));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(global1.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 408f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1382f, global1.x, global1.x, global1.x)), true)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b), reverseBits(vec2<u32>(4294967295u, u_input.b)), vec2<u32>(4294967295u, 0u)) ^ ~(~vec2<u32>(u_input.c, u_input.c))), !(!arg_0.x));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.a.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1733f)) + _wgslsmith_f_op_f32(ceil(1638f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.b) - _wgslsmith_f_op_vec4_f32(select(var_0.a.b, vec4<f32>(global1.x, global1.x, -451f, -920f), select(vec4<bool>(var_0.b, false, true, true), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), var_0.b)))), var_0.a.c), false);
    let var_1 = var_0.a;
    global1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.a, -1477f)));
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, u_input.a) | abs(var_0.a.c.x), _wgslsmith_add_u32(func_2(vec2<i32>(1i, 0i)), 4294967295u)), _wgslsmith_clamp_u32(4562u, var_0.a.c.x, 0u)), 15u)];
    return Struct_1(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1815f), -370f, var_0.a.b.x, _wgslsmith_f_op_f32(-391f * -675f))))), ~vec2<u32>(~1u | var_0.a.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 87887u, 61450u), vec3<u32>(0u, var_2.c.x, var_1.c.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> StorageBuffer {
    let var_0 = vec3<u32>(~(~(~firstLeadingBit(arg_3))), 11059u, 1u);
    return StorageBuffer(-654f, ~var_0.yy, _wgslsmith_clamp_i32(2147483647i, arg_0.x, -8934i) & arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_sub_u32(select(63451u ^ select(1u, u_input.b, false), 4294967295u, true) ^ _wgslsmith_div_u32(reverseBits(u_input.c) & u_input.a, _wgslsmith_add_u32(u_input.b, u_input.c)), ~0u);
    global0 = array<vec4<bool>, 15>();
    var var_1 = -541f;
    let x = u_input.a;
    s_output = func_4(abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-51085i, 60333i, -17952i, -52293i) << (vec4<u32>(1u, 37786u, var_0, u_input.b) % vec4<u32>(32u)), -vec4<i32>(-1i, 1i, -61071i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 9936i, 0i, -1i), vec4<i32>(2147483647i, -1i, -13991i, -31776i)))), func_1(vec2<bool>(true, ~var_0 <= var_0)), !vec4<bool>(true, true, all(vec2<bool>(false, false)), any(global0[_wgslsmith_index_u32(4294967295u, 15u)])), u_input.a);
}

