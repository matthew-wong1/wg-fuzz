struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec2<bool>, 16>;

var<private> global2: array<f32, 31>;

var<private> global3: array<f32, 16> = array<f32, 16>(1300f, -435f, -825f, -1000f, 494f, 309f, -291f, 1265f, -1000f, -939f, 675f, -1455f, 1424f, -1270f, -384f, 137f);

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global3 = array<f32, 16>();
    let var_0 = ~(~u_input.a >> (u_input.a % 32u));
    return ~(u_input.a << (var_0 % 32u));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 27>();
    var var_0 = 2147483647i << (func_3() % 32u);
    var var_1 = any(vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1368f - -186f))) < _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 31u)]), any(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)) != true));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 16u)], global3[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], -102f), vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 16u)], 364f, 339f, global2[_wgslsmith_index_u32(u_input.a, 31u)]), true)))))), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1252f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 16u)] - -995f)), -2144f)), -155f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(-754f)))))));
    let var_3 = Struct_1(select(vec2<bool>(select(all(vec2<bool>(true, true)), true, any(vec4<bool>(true, false, false, false))), !select(true, false, true)), !global1[_wgslsmith_index_u32(u_input.a, 16u)], select(!select(global1[_wgslsmith_index_u32(u_input.a, 16u)], vec2<bool>(false, false), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.a, 16u)], vec2<bool>(true, false)), select(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(146705u, 16u)], vec2<bool>(false, true)), vec2<bool>(true, true)), 1000f <= _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.a, 31u)], 106f)))), vec3<u32>(u_input.a, u_input.a, ~u_input.a), abs(i32(-1i) * -1i));
    return Struct_1(!select(var_3.a, select(select(var_3.a, global1[_wgslsmith_index_u32(var_3.b.x, 16u)], true), !var_3.a, global1[_wgslsmith_index_u32(20807u, 16u)]), true), _wgslsmith_add_vec3_u32(~var_3.b >> (firstLeadingBit(~vec3<u32>(var_3.b.x, var_3.b.x, var_3.b.x)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(var_3.b, vec3<u32>(u_input.a, u_input.a, u_input.a)), max(vec3<u32>(594u, 57912u, u_input.a) << (var_3.b % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, 57439u)))), -2147483647i & var_3.c);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_0 = arg_0;
    let var_1 = func_2();
    global0 = array<Struct_1, 27>();
    return Struct_1(select(!(!vec2<bool>(false, arg_0.a.x)), !var_1.a, (min(44291i, var_1.c) | 2147483647i) != _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.c, var_0.c, arg_0.c), vec3<i32>(arg_0.c, var_0.c, var_0.c) >> (arg_0.b % vec3<u32>(32u)))), ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.b, ~vec3<u32>(0u, var_0.b.x, 9479u)), _wgslsmith_mod_vec3_u32(var_0.b, ~vec3<u32>(13105u, var_0.b.x, 4294967295u))), max(select(~1i, -45191i, arg_0.a.x), _wgslsmith_mult_i32(arg_0.c, 52761i) >> ((_wgslsmith_mod_u32(u_input.a, 0u) | 4294967295u) % 32u)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_1, 27>();
    return (-abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, arg_1.c, -27441i, -34557i), vec4<i32>(arg_1.c, arg_0, -1i, -2147483647i))) >> (608u % 32u)) >> (_wgslsmith_mod_u32(~u_input.a, 1u) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1543f + global3[_wgslsmith_index_u32(arg_0.b.x, 16u)]) + 165f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_3.x, 16u)] + global3[_wgslsmith_index_u32(arg_3.x, 16u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)))) * _wgslsmith_div_f32(1307f, -493f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1579f, global3[_wgslsmith_index_u32(0u, 16u)])) - global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, arg_0.b.x), 31u)])));
    global2 = array<f32, 31>();
    var var_1 = arg_0;
    let var_2 = Struct_1(!global1[_wgslsmith_index_u32(u_input.a, 16u)], select(~_wgslsmith_mod_vec3_u32(reverseBits(arg_3.wyx), _wgslsmith_sub_vec3_u32(arg_0.b, var_1.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4297u, arg_3.x), arg_0.b.x | arg_3.x, arg_3.x), ~(~vec3<u32>(arg_0.b.x, arg_0.b.x, 44548u))), vec3<bool>(arg_1.x, arg_0.a.x, all(!arg_0.a))), _wgslsmith_add_i32(func_5(-firstTrailingBit(arg_0.c), func_4(func_2(), arg_0.a.x && arg_2, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(506f, global2[_wgslsmith_index_u32(arg_3.x, 31u)])))), func_2()), var_1.c));
    return _wgslsmith_add_u32(arg_0.b.x, countOneBits(0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(43087u, u_input.a, u_input.a, 0u) >> (vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u) % vec4<u32>(32u))), ~abs(vec4<u32>(u_input.a, 21828u, u_input.a, u_input.a)) | vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a << (1u % 32u), func_1(global0[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], false, vec4<u32>(74957u, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_u32(u_input.a, u_input.a))), 73438u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1101f, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(4294967295u, u_input.a), ~var_0.x), 31u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(1u, 31u)])), -653f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 31u)], 1814f, global2[_wgslsmith_index_u32(22300u, 31u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 31u)], -492f, -1389f), vec3<f32>(-640f, global2[_wgslsmith_index_u32(var_0.x, 31u)], global3[_wgslsmith_index_u32(u_input.a, 16u)]), vec3<bool>(true, false, false))))))), !vec3<bool>(false, all(vec2<bool>(false, false)), select(false, true, true)))));
    global1 = array<vec2<bool>, 16>();
    global3 = array<f32, 16>();
    let var_2 = ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.x, var_0.x), vec3<u32>(1u, var_0.x, 1u) ^ vec3<u32>(32175u, 4294967295u, 0u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 40225u)), ~select(vec2<u32>(var_0.x, 4294967295u), var_0, global1[_wgslsmith_index_u32(27637u, 16u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(~(-select(vec2<i32>(52274i, 2147483647i), vec2<i32>(-87951i, -2147483647i), true)), max(~(~vec2<i32>(-12933i, 25551i)), _wgslsmith_add_vec2_i32(~vec2<i32>(1i, 26382i), vec2<i32>(-1i, 16854i))), vec2<i32>(select(0i, -1i, all(vec4<bool>(true, false, true, true))), -35284i)), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4371u, 31u)])), min(countOneBits(var_2), 1u) << (~(select(1u, u_input.a, false) & 48034u) % 32u));
}

