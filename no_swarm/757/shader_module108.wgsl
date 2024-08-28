struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-2963i, -1i, -4971i, -42824i), vec4<i32>(-9982i, 23458i, 0i, -15172i), vec4<i32>(27247i, -1i, -23600i, i32(-2147483648)));

var<private> global1: vec2<u32> = vec2<u32>(31282u, 110155u);

var<private> global2: bool;

var<private> global3: array<Struct_3, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32) -> f32 {
    global3 = array<Struct_3, 22>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(0u, 3u)], ~((vec2<i32>(u_input.d, u_input.d) | vec2<i32>(u_input.d, -46182i)) >> (firstTrailingBit(u_input.c) % vec2<u32>(32u))) & vec2<i32>(u_input.d, u_input.d), Struct_1(u_input.a), vec4<f32>(_wgslsmith_f_op_f32(ceil(711f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(696f, _wgslsmith_f_op_f32(-arg_1)))), 1344f, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(arg_1 - 1f))));
    var var_1 = arg_1;
    return -271f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> bool {
    global3 = array<Struct_3, 22>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1388f - _wgslsmith_f_op_f32(max(224f, arg_3))))), _wgslsmith_f_op_f32(func_3(arg_1.x, arg_3)), arg_1.x)), max(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 2147483647i), vec3<i32>(u_input.d, u_input.d, u_input.d)), -u_input.d) | ~(~u_input.d), arg_3, true, Struct_2(reverseBits(global0[_wgslsmith_index_u32(~min(0u, arg_0.x), 3u)]), ~(~(~vec2<i32>(0i, u_input.d))), arg_2, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_f_op_f32(960f - 328f), _wgslsmith_f_op_f32(-1166f * -1000f), _wgslsmith_f_op_f32(sign(arg_3)))))));
    let var_1 = var_0.e;
    global2 = select(false, select(reverseBits(1u), var_0.e.c.a, false) > 1u, any(select(select(vec3<bool>(arg_1.x, false, false), vec3<bool>(true, true, arg_1.x), arg_1.x), vec3<bool>(arg_3 > var_1.d.x, arg_1.x, var_0.d | var_0.d), true)));
    var_0 = Struct_3(_wgslsmith_f_op_f32(211f + _wgslsmith_f_op_f32(120f + _wgslsmith_f_op_f32(f32(-1f) * -938f))), _wgslsmith_sub_i32(~2147483647i, _wgslsmith_mult_i32(var_1.b.x, 56216i) >> (4294967295u % 32u)), -1372f, arg_0.x != ~_wgslsmith_clamp_u32(13915u ^ var_1.c.a, var_1.c.a, arg_2.a), Struct_2(~var_1.a, -vec2<i32>(u_input.d, u_input.d), Struct_1(4294967295u >> (arg_0.x % 32u)), var_0.e.d));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec3<bool> {
    global2 = true;
    global2 = select(true, arg_0.x, select(-2147483647i != ~_wgslsmith_sub_i32(1i, u_input.d), false, true));
    return !vec3<bool>(true, !(arg_1.x >= 1000f), u_input.d < max(17602i, -17526i));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = func_4(select(select(vec3<bool>(func_2(vec3<u32>(1u, 3097u, 4294967295u), vec2<bool>(true, true), Struct_1(22550u), arg_1.x), u_input.c.x >= global1.x, select(false, false, false)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), !any(vec3<bool>(true, true, true))), arg_1.ww);
    let var_1 = i32(-1i) * -1252i;
    global1 = u_input.c;
    let var_2 = arg_1.x;
    global1 = vec2<u32>(~4294967295u, u_input.a);
    return Struct_1(_wgslsmith_clamp_u32(8474u, _wgslsmith_add_u32(abs(26267u) << (global1.x % 32u), 4294967295u), _wgslsmith_sub_u32(firstLeadingBit(u_input.c.x ^ 13130u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.c.x, 4294967295u, global1.x), vec4<u32>(0u, global1.x, 4294967295u, u_input.a)))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> vec4<u32> {
    var var_0 = !(_wgslsmith_f_op_f32(round(-1257f)) != 653f);
    let var_1 = 2108i;
    let var_2 = select(vec3<bool>(true & !func_2(vec3<u32>(27786u, 90284u, arg_2), vec2<bool>(true, false), arg_1, -1000f), true, func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a, arg_1.a, arg_2), ~vec3<u32>(0u, 1u, global1.x)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), arg_1, -126f)), vec3<bool>(true, true, true), !func_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(14829u, arg_0.x, 0u), vec3<u32>(79229u, 19591u, 4294967295u)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), arg_1, -793f));
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(select(49736u << (arg_2 % 32u), max(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 4294967295u), vec3<u32>(u_input.b, 4294967295u, global1.x))), !all(vec3<bool>(var_2.x, true, var_2.x))), max(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, arg_1.a, arg_2, arg_2), vec4<u32>(arg_2, 0u, arg_2, 40745u))), firstLeadingBit(abs(arg_0.x)))), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, 24233u), arg_1.a)), vec2<u32>(max(0u, _wgslsmith_clamp_u32(u_input.b, global1.x, arg_1.a)), arg_1.a)));
    global3 = array<Struct_3, 22>();
    return vec4<u32>(global1.x, arg_2, ~(~reverseBits(arg_1.a)), ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.c, func_1(countOneBits(vec2<i32>(~u_input.d, 4667i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1358f, 468f, 466f, -264f) + vec4<f32>(288f, -1286f, -859f, 956f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1964f, 1000f, -2297f, -952f)))), global1.x >> (~(~global1.x & _wgslsmith_mod_u32(30277u, global1.x)) % 32u), -2147483647i);
    global2 = all(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), func_4(vec3<bool>(false, false, false), vec2<f32>(-1773f, 805f)).x)));
    let var_1 = _wgslsmith_f_op_f32(max(-201f, _wgslsmith_f_op_f32(ceil(-179f)))) > -132f;
    var var_2 = 4294967295u;
    let var_3 = global0[_wgslsmith_index_u32(~select(global1.x, var_0.x, func_4(!vec3<bool>(var_1, false, var_1), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))).x), 3u)];
    var var_4 = ~firstTrailingBit(global1.x);
    var_2 = abs(firstTrailingBit(u_input.c.x)) & 0u;
    let var_5 = global3[_wgslsmith_index_u32(~(~var_0.x), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(~select(u_input.d, 14733i, var_5.d) & _wgslsmith_div_i32(var_5.b, _wgslsmith_mod_i32(u_input.d, var_5.b)), -(~(var_5.b & -44167i)), !(!all(vec4<bool>(true, true, false, true)))));
}

