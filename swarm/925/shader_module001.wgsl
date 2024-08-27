struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(15719i, -1i, 52955i, 0i, 46324i, 70257i, i32(-2147483648), 2147483647i, 29777i, 3993i, -54152i, -1i, 1i, -46306i, 1i, -1i, -2281i, -13334i, 1i, -12217i, 63493i, 0i, -7747i, 2147483647i, -1i, 17947i, 35671i, -793i, 2147483647i, -33208i, 17137i);

var<private> global1: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(42038u, 4294967295u, 23479u, 51837u), vec4<u32>(41754u, 4294967295u, 34356u, 83459u), vec4<u32>(4294967295u, 85028u, 61947u, 4294967295u));

var<private> global2: f32 = -1217f;

var<private> global3: array<vec4<bool>, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: f32) -> u32 {
    global3 = array<vec4<bool>, 14>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1f)), arg_1.x));
    global0 = array<i32, 31>();
    var var_1 = Struct_1(343f, abs(_wgslsmith_sub_i32(u_input.b, u_input.c)), ~select(global1[_wgslsmith_index_u32(~abs(1u), 3u)], _wgslsmith_mod_vec4_u32(~vec4<u32>(74512u, u_input.a, 31954u, 1u), vec4<u32>(24036u, u_input.a, u_input.a, 51656u)), vec4<bool>(all(vec4<bool>(arg_0.x, false, true, false)), all(arg_0), true, true)), ~(~select(~u_input.c, -global0[_wgslsmith_index_u32(u_input.a, 31u)], arg_0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_clamp_i32(-19660i, -5284i, global0[_wgslsmith_index_u32(1u, 31u)]), vec4<u32>(0u, 0u, u_input.a, _wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.c.x, var_1.c.x), u_input.a))), reverseBits(25730i));
    return 0u;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1218f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2001f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2277f * arg_0) - -1260f)))));
    global1 = array<vec4<u32>, 3>();
    let var_1 = Struct_1(-1202f, -31384i, _wgslsmith_sub_vec4_u32(firstTrailingBit(global1[_wgslsmith_index_u32(1u, 3u)]), global1[_wgslsmith_index_u32(27147u, 3u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~62920u), u_input.a), 31u)]);
    var var_2 = 1i >> ((func_3(vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-arg_0)) & (var_1.c.x >> (1u % 32u))) % 32u);
    var var_3 = ~(~select(firstTrailingBit(vec2<i32>(var_1.d, -1i)), ~(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 31u)], -97372i) >> (var_1.c.zw % vec2<u32>(32u))), vec2<bool>(true, true)));
    return -(-2147483647i >> (_wgslsmith_mod_u32(var_1.c.x, u_input.a | 4294967295u) % 32u));
}

fn func_1() -> f32 {
    let var_0 = u_input.c & min(-13306i, func_2(208f, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-220f, 640f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1066f, 721f))))));
    var var_1 = vec2<i32>(_wgslsmith_div_i32(1i, 17737i), _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_sub_i32(-1i, -1i), -413i));
    let var_2 = ~(~vec2<i32>(firstTrailingBit(var_1.x), abs(abs(var_1.x))));
    global2 = _wgslsmith_f_op_f32(553f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f)) + -121f));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(804f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(327f, -336f)))), _wgslsmith_mult_i32(~(-_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 31u)], var_2.x)), ~1i), vec4<u32>(u_input.a, firstTrailingBit(_wgslsmith_add_u32(min(4294967295u, u_input.a), u_input.a)), ~82633u, firstLeadingBit(~u_input.a)), u_input.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1469f));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, arg_3.c.x, arg_1.c.x), countOneBits(~_wgslsmith_add_u32(arg_1.c.x, ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_1())), vec2<f32>(_wgslsmith_f_op_f32(sign(-129f)), -888f), !vec2<bool>(true, u_input.a == u_input.a))), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-716f, _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(888f, -1509f))), i32(-1i) * -1i, ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1647u, 1u, u_input.a), vec4<u32>(6880u, 1u, u_input.a, u_input.a)), -1i), Struct_1(_wgslsmith_f_op_f32(func_1()), -2147483647i, vec4<u32>(_wgslsmith_mod_u32(1u, ~u_input.a), u_input.a, ~(u_input.a >> (4294967295u % 32u)), 40816u), u_input.b), Struct_1(_wgslsmith_div_f32(-2299f, 1f), ~(~2147483647i), global1[_wgslsmith_index_u32(u_input.a, 3u)], ~(~(~global0[_wgslsmith_index_u32(4294967295u, 31u)])))), 31u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1977f + -1000f), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(select(~0u, u_input.a, true), 31u)], u_input.b) | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a), select(u_input.a, 0u, false)), max(vec2<u32>(u_input.a, 9824u), vec2<u32>(0u, 18768u))), 31u)], _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(~u_input.a), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 16602u), vec4<u32>(1u, 1u, u_input.a, u_input.a)), 40557u), min(~global1[_wgslsmith_index_u32(u_input.a, 3u)], select(vec4<u32>(743u, 0u, u_input.a, u_input.a), vec4<u32>(4294967295u, 84139u, u_input.a, 89381u), false)) ^ firstTrailingBit(firstTrailingBit(global1[_wgslsmith_index_u32(1u, 3u)]))), global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(u_input.a, countOneBits(u_input.a)), u_input.a), 31u)]);
    var var_2 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, u_input.c > var_1.d)), !vec2<bool>(all(global3[_wgslsmith_index_u32(var_1.c.x, 14u)]), u_input.a > 9228u), -2147483647i >= -_wgslsmith_dot_vec4_i32(vec4<i32>(946i, u_input.c, 2147483647i, 19102i), vec4<i32>(u_input.c, u_input.b, u_input.c, -5361i))), vec2<bool>(!(!all(vec4<bool>(false, false, true, true))), true), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, true)), vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, all(vec4<bool>(true, true, false, false)))), vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), false)));
    global1 = array<vec4<u32>, 3>();
    global3 = array<vec4<bool>, 14>();
    var var_3 = var_1;
    var var_4 = var_1;
    let var_5 = ~(~(~reverseBits(vec4<i32>(6414i, -2147483647i, 12335i, 0i))));
    var var_6 = var_1.c.x <= 56870u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~var_5.x >> (var_3.c.x % 32u), -(~var_4.d), _wgslsmith_dot_vec3_i32(vec3<i32>(28123i, var_3.d, global0[_wgslsmith_index_u32(var_3.c.x, 31u)]), var_5.yzy) ^ -var_3.d, -var_5.x) >> (var_4.c % vec4<u32>(32u)), ~(~var_5), (var_5.zz & vec2<i32>(var_5.x, -81512i)) ^ (-(var_5.ww ^ var_5.wy) >> (vec2<u32>(~4294967295u, ~4294967295u) % vec2<u32>(32u))));
}

