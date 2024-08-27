struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<u32, 8> = array<u32, 8>(0u, 17232u, 75241u, 42704u, 31290u, 15920u, 17930u, 1u);

var<private> global2: array<vec3<bool>, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_2(true, Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(13794u, 14u)])), _wgslsmith_div_f32(-324f, 486f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(8235u, 14u)], global0[_wgslsmith_index_u32(1216u, 14u)]) * vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)])))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(17136u, 8u)]), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9943u, 8u)], 8u)])), abs(4294967295u), 48491u, _wgslsmith_mod_u32(~14692u, global1[_wgslsmith_index_u32(1u, 8u)])), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 47532i, -8038i), vec4<i32>(u_input.a, -2147483647i, -1i, u_input.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 8u)], 14u)] * _wgslsmith_f_op_f32(f32(-1f) * -497f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 14u)])), _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(7570u, 14u)], 421f), _wgslsmith_f_op_f32(sign(-1000f)))))), arg_0, ~_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)] | ~global1[_wgslsmith_index_u32(0u, 8u)], ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 0u), 8u)]));
    global2 = array<vec3<bool>, 24>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -890f);
    var var_2 = select(!select(!select(vec2<bool>(true, true), vec2<bool>(var_0.b.a, arg_0), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(arg_0, true), vec2<bool>(false, var_0.d), vec2<bool>(false, true)), select(vec2<bool>(arg_0, false), vec2<bool>(false, var_0.a), false)), select(!vec2<bool>(var_0.a, true), vec2<bool>(true, var_0.b.a), vec2<bool>(true, true))), !vec2<bool>(-1322f >= _wgslsmith_f_op_f32(-var_0.c), false), !any(global2[_wgslsmith_index_u32(30261u, 24u)]));
    var var_3 = Struct_2(true, Struct_1(true && all(select(vec2<bool>(false, var_0.b.a), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true))), var_0.b.b, vec4<u32>(var_0.e, _wgslsmith_clamp_u32(~var_0.e, _wgslsmith_div_u32(var_0.b.c.x, 4294967295u), ~58273u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(20546u, global1[_wgslsmith_index_u32(var_0.b.c.x, 8u)]), vec2<u32>(global1[_wgslsmith_index_u32(46536u, 8u)], 30644u)), vec2<u32>(0u, 9393u)), var_0.e), vec4<i32>(-3733i, 7011i >> (0u % 32u), -34754i, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -2797f), false, 1u);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-336f * global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8886u, 8u)], 14u)]) + -1444f), _wgslsmith_f_op_f32(-540f * -2053f)))), 122f));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = ~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(34723u, _wgslsmith_div_u32(29866u, global1[_wgslsmith_index_u32(6799u, 8u)])), _wgslsmith_add_u32(arg_0.b.c.x, global1[_wgslsmith_index_u32(~arg_0.e ^ arg_0.b.c.x, 8u)]));
    global2 = array<vec3<bool>, 24>();
    let var_1 = vec4<f32>(-443f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f + arg_0.b.b.x) - _wgslsmith_f_op_f32(-arg_0.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true)))) + 1915f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-702f + arg_0.b.b.x)))), 629f), arg_0.b.b.x);
    global0 = array<f32, 14>();
    global1 = array<u32, 8>();
    return _wgslsmith_add_u32(11300u, 1u);
}

fn func_1(arg_0: vec3<u32>) -> vec3<i32> {
    let var_0 = global2[_wgslsmith_index_u32(69854u, 24u)];
    var var_1 = _wgslsmith_sub_u32(~abs(func_2(Struct_2(var_0.x, Struct_1(true, vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], -259f), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], arg_0.x, 37922u, 14130u), vec4<i32>(-5508i, u_input.a, u_input.a, 20614i)), -1615f, var_0.x, global1[_wgslsmith_index_u32(85145u, 8u)]))), 1u) ^ 67497u;
    global2 = array<vec3<bool>, 24>();
    let var_2 = abs(u_input.a);
    global0 = array<f32, 14>();
    return _wgslsmith_clamp_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2, 1i), vec2<i32>(u_input.a, var_2)), firstLeadingBit(vec2<i32>(1i, u_input.a))), _wgslsmith_add_i32(~8160i, -var_2), -(~u_input.a)), countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2287i, u_input.a, -15896i), vec3<i32>(var_2, var_2, 0i)), vec3<i32>(962i, u_input.a, var_2)), firstTrailingBit(select(vec3<i32>(u_input.a, -26815i, var_2), vec3<i32>(var_2, var_2, 3079i), var_0.x)))), vec3<i32>(-1i, 0i, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1968u, 8u)], 8u)], 8u)], 8u)] ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)]), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~45813u, 8u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)])), _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), 8u)], 1u)), 14u)]));
    var var_1 = global1[_wgslsmith_index_u32(~min(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 0u), 8u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(21860u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18237u, 8u)], 8u)]), 8u)] ^ (global1[_wgslsmith_index_u32(1u, 8u)] >> (0u % 32u))) & firstLeadingBit((global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], 14183u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), vec4<u32>(1u, global1[_wgslsmith_index_u32(29871u, 8u)], 23038u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3475u, 8u)], 8u)])), 8u)] << (1u % 32u)) & global1[_wgslsmith_index_u32(21887u, 8u)]), 8u)];
    let var_2 = ~(func_1(max(vec3<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38709u, 8u)], 8u)]), vec3<u32>(5741u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17589u, 8u)], 8u)], 8u)], 8u)], 8u)], 106036u))) & vec3<i32>(-u_input.a, -3130i, -u_input.a)) >> (vec3<u32>(_wgslsmith_add_u32(~reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)]), ~(~4294967295u)), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 41071u), 8u)], ~54407u, max(41644u, 4294967295u))), 8u)], ~1u) % vec3<u32>(32u));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f * global0[_wgslsmith_index_u32(max(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25649u, 8u)], 8u)], 8u)], 8u)], 8u)], ~53346u), 14u)]) + global0[_wgslsmith_index_u32(countOneBits(0u), 14u)]));
    var var_3 = global0[_wgslsmith_index_u32(abs(1u), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(global1[_wgslsmith_index_u32(1u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 8u)]) & global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 8u)], 8u)], ~(~(~global1[_wgslsmith_index_u32(4294967295u, 8u)])), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(12496u, 8u)], 8u)], 8u)] | ~1u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~61454u, 8u)], global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10221u, 8u)], 8u)]), 8u)]))), ~(var_2.x | 1i), _wgslsmith_div_vec4_u32(abs(~(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15887u, 8u)], 8u)], global1[_wgslsmith_index_u32(1332u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 41701u) ^ vec4<u32>(14269u, 0u, 4294967295u, global1[_wgslsmith_index_u32(31653u, 8u)]))), _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54457u, 8u)], 8u)], 0u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40557u, 8u)], 8u)])), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 1u, global1[_wgslsmith_index_u32(15904u, 8u)], 0u) << (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17236u, 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)]) % vec4<u32>(32u)))));
}

