struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(1000f, -122f, 585f, -2443f, -460f, -979f, 397f, -939f, -2120f, -411f, -1367f, 953f, -551f, -1558f, -747f, -440f, -387f, -715f, 630f, 2276f, 1036f, -564f, 777f, 1761f, -641f, -701f, 219f, 819f);

var<private> global1: i32;

var<private> global2: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(4294967295u, 1u), vec2<u32>(20692u, 36714u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 21621u), vec2<u32>(37258u, 4294967295u), vec2<u32>(67151u, 31513u), vec2<u32>(0u, 10283u), vec2<u32>(72499u, 48848u), vec2<u32>(4294967295u, 78497u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(69567u, 46368u), vec2<u32>(18966u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 37263u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: vec2<i32>) -> bool {
    let var_0 = Struct_4(Struct_3(Struct_1(~vec2<u32>(0u, 32479u), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x + global0[_wgslsmith_index_u32(arg_2, 28u)]), global0[_wgslsmith_index_u32(u_input.b, 28u)], global0[_wgslsmith_index_u32(1u >> (arg_2 % 32u), 28u)], _wgslsmith_f_op_f32(713f - -1648f)), -vec4<i32>(-31315i, -3377i, u_input.a, arg_0.c.x) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c.x, 0i, -40339i, arg_3.x), vec4<i32>(15948i, -14490i, 4912i, arg_1.x), arg_0.c)), ~4294967295u, !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false)), vec4<i32>(~(-39827i), -4507i, abs(58488i), abs(-1i)) | arg_0.c));
    global2 = array<vec2<u32>, 18>();
    let var_1 = var_0.a.c.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.a.a.a, vec2<u32>(88534u, arg_0.a.x) & vec2<u32>(arg_2, arg_2)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.a.a.a.x, 0u, arg_2), u_input.c | vec4<u32>(20904u, 0u, 1u, arg_0.a.x)) % 32u), 28u)]));
    var var_3 = !select(var_0.a.c.xzz, !var_0.a.c.wxx, vec3<bool>(false, any(var_0.a.c.xx), var_0.a.c.x));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = Struct_5(u_input.d, u_input.c.zxz, vec4<i32>(arg_2.b.c.x, arg_2.b.c.x, 0i, -_wgslsmith_dot_vec4_i32(arg_3.b.c, vec4<i32>(u_input.a, 23360i, u_input.a, 0i)) >> (3074u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-194f, arg_3.b.b.x, arg_1, arg_1)) + arg_2.b.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, _wgslsmith_f_op_f32(round(-252f)), 1202f, 666f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b.b)))), arg_2.b.c.zwx);
    global0 = array<f32, 28>();
    let var_1 = -(~(~(arg_2.b.c.x | 0i))) >> (_wgslsmith_sub_u32(arg_3.b.a.x, 1u) % 32u);
    let var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(select(arg_3.b.c.ww, vec2<i32>(arg_2.d, var_1), vec2<bool>(true, false)), ~vec2<i32>(-1i, 2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.e.x, arg_3.b.c.x), firstTrailingBit(vec2<i32>(22218i, 66867i))), vec2<i32>(19832i, _wgslsmith_add_i32(u_input.a, var_1))), abs(select(vec2<i32>(61742i, -22189i), var_0.e.xy, true) | _wgslsmith_clamp_vec2_i32(arg_3.b.c.wy, vec2<i32>(arg_2.d, 6338i), vec2<i32>(-23264i, arg_2.b.c.x)))), arg_3.b.c.x, var_0.e.x);
    global2 = array<vec2<u32>, 18>();
    return (arg_2.b.c << (vec4<u32>(firstLeadingBit(abs(var_0.a)), 40377u, u_input.c.x, _wgslsmith_sub_u32(0u, arg_2.b.a.x) & var_0.a) % vec4<u32>(32u))) | arg_2.b.c;
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_4 {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_add_u32(68499u, firstLeadingBit(29244u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(u_input.b, u_input.b, u_input.c.x))) & u_input.c.yx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, -886f)), _wgslsmith_f_op_f32(round(-465f)), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)])), _wgslsmith_f_op_f32(-arg_0))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], arg_0, false)) - global0[_wgslsmith_index_u32(reverseBits(u_input.d), 28u)]), _wgslsmith_f_op_f32(-2038f + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 28u)] - arg_0), 1529f))), func_4(select(vec2<bool>(func_3(Struct_1(u_input.c.ww, vec4<f32>(362f, arg_0, 589f, global0[_wgslsmith_index_u32(u_input.b, 28u)]), vec4<i32>(-2147483647i, u_input.a, 2147483647i, u_input.a)), vec2<i32>(u_input.a, u_input.a), 1u, vec2<i32>(-1i, -1i)), arg_1), select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), false), vec2<bool>(true, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, false), arg_1)), all(vec2<bool>(arg_1, true)) && any(vec3<bool>(arg_1, true, arg_1))), _wgslsmith_f_op_f32(round(arg_0)), Struct_2(_wgslsmith_f_op_f32(-arg_0) < -263f, Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(5396u, u_input.b), global2[_wgslsmith_index_u32(93538u, 18u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 28u)], arg_0, -106f, global0[_wgslsmith_index_u32(14483u, 28u)]) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 28u)], -1457f, 1329f, arg_0)), vec4<i32>(u_input.a, -22737i, -2147483647i, 11173i)), _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 2961u), vec3<u32>(4294967295u, u_input.c.x, 12820u))), 17376i, firstTrailingBit(vec2<u32>(43271u, 1u))), Struct_2(arg_1 & (-1608i != u_input.a), Struct_1(~u_input.c.yw, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(62627u, 28u)], arg_0, 2056f, global0[_wgslsmith_index_u32(u_input.b, 28u)]))), vec4<i32>(-2147483647i, 1i, -1i, u_input.a) | vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), ~u_input.d, ~(~u_input.a), u_input.c.zw >> (firstLeadingBit(global2[_wgslsmith_index_u32(u_input.c.x, 18u)]) % vec2<u32>(32u)))));
    global2 = array<vec2<u32>, 18>();
    let var_1 = Struct_3(var_0, 0u, select(select(!select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, arg_1)), select(!vec4<bool>(arg_1, true, arg_1, arg_1), !vec4<bool>(arg_1, true, true, true), !vec4<bool>(true, arg_1, arg_1, arg_1)), !(!vec4<bool>(true, arg_1, false, arg_1))), !(!(!vec4<bool>(arg_1, arg_1, true, true))), !(arg_1 | !arg_1)), -(func_4(!vec2<bool>(true, arg_1), -1047f, Struct_2(false, var_0, var_0.a.x, var_0.c.x, vec2<u32>(0u, u_input.b)), Struct_2(false, var_0, 60531u, u_input.a, var_0.a)) << (~u_input.c % vec4<u32>(32u))));
    global0 = array<f32, 28>();
    var var_2 = var_0.b.zy;
    return Struct_4(var_1);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1082f - -1859f), -110f)));
    global0 = array<f32, 28>();
    global1 = arg_1.a.d.x;
    let var_1 = abs(~(~arg_2) | (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c.zyy, arg_2), _wgslsmith_sub_vec3_u32(vec3<u32>(33511u, 1u, arg_2.x), vec3<u32>(arg_0.b, arg_1.a.a.a.x, 5717u))) | ((arg_2 | vec3<u32>(60263u, u_input.c.x, 1u)) & (u_input.c.yyx ^ vec3<u32>(29356u, 15078u, arg_2.x)))));
    global1 = -23337i;
    return abs(arg_1.a.a.a.x);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>) -> Struct_3 {
    global2 = array<vec2<u32>, 18>();
    let var_0 = Struct_4(Struct_3(arg_0.a, func_5(arg_0, func_2(arg_0.a.b.x, true), ~u_input.c.yxz) & _wgslsmith_mult_u32(u_input.b & u_input.d, _wgslsmith_add_u32(arg_1, arg_1)), arg_0.c, arg_0.a.c));
    var var_1 = vec4<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-878f - arg_0.a.b.x)))) + -390f), _wgslsmith_f_op_f32(f32(-1f) * -748f), 1517f);
    var var_2 = ~(~func_2(arg_0.a.b.x, true).a.b);
    let var_3 = -587f;
    return Struct_3(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f * -644f) * func_2(-1745f, arg_0.c.x).a.a.b.x))), !(_wgslsmith_div_f32(-1900f, 366f) >= _wgslsmith_f_op_f32(ceil(var_1.x)))).a.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~select(u_input.c, u_input.c, arg_0.c), firstLeadingBit(u_input.c)), u_input.c), vec4<bool>(!(!(!arg_0.c.x)), false, false, arg_0.c.x), ~(arg_0.d ^ -(arg_0.a.c & vec4<i32>(2147483647i, 46051i, 10311i, var_0.a.a.c.x))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    global0 = array<f32, 28>();
    global1 = -29964i;
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(arg_1.a.a.x, min(arg_1.a.a.x, arg_0.a.x), ~4294967295u, u_input.b)) >= arg_0.a.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.b, 28u)]), 402f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-937f, arg_0.b.x)) - global0[_wgslsmith_index_u32(abs(48289u), 28u)])), arg_1.c.x).a.a, arg_0.a.x, _wgslsmith_div_i32(arg_0.c.x, min(arg_0.c.x, arg_1.d.x)), reverseBits(global2[_wgslsmith_index_u32(~(~24775u), 18u)]));
    return Struct_2(arg_1.c.x, Struct_1(vec2<u32>(arg_0.a.x, 17059u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(905f, arg_1.a.b.x, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(23591u, 28u)])), func_1(arg_1, arg_1.a.a.x, arg_1.d.xz).a.b.x))), vec4<i32>(arg_1.d.x << (1u % 32u), _wgslsmith_mod_i32(arg_0.c.x, func_2(-202f, true).a.d.x), u_input.a, -1i)), ~0u & ~(~(~arg_0.a.x)), _wgslsmith_sub_i32(u_input.a, -select(-17464i, -21080i, func_1(arg_1, 1u, arg_1.d.ww).c.x)), arg_1.a.a);
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_5) -> bool {
    var var_0 = Struct_3(func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b.b.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 28u)] + arg_3.d.x), true)), false).a.a, 90629u, !(!func_2(-728f, false).a.c), vec4<i32>(arg_1.b.c.x, firstLeadingBit(arg_1.d | reverseBits(-2371i)), 0i, _wgslsmith_add_i32(u_input.a, reverseBits(41850i))));
    global2 = array<vec2<u32>, 18>();
    global0 = array<f32, 28>();
    global1 = 0i;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x * 121f))));
    return select(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(16173u, 28u)]))) != -1869f, true);
}

fn func_8(arg_0: bool, arg_1: Struct_1, arg_2: Struct_5) -> Struct_1 {
    var var_0 = Struct_4(func_2(_wgslsmith_div_f32(-1900f, _wgslsmith_f_op_f32(804f * 1f)), arg_0).a);
    var var_1 = Struct_4(func_1(var_0.a, max(u_input.c.x, _wgslsmith_div_u32(1u, var_0.a.a.a.x)) | var_0.a.a.a.x, func_2(_wgslsmith_f_op_f32(773f - var_0.a.a.b.x), func_3(Struct_1(arg_1.a, vec4<f32>(global0[_wgslsmith_index_u32(var_0.a.a.a.x, 28u)], arg_1.b.x, arg_1.b.x, 895f), arg_1.c), arg_2.e.yz, 4294967295u, vec2<i32>(-1i, arg_1.c.x))).a.d.zw ^ vec2<i32>(-15005i, func_2(global0[_wgslsmith_index_u32(arg_2.a, 28u)], true).a.a.c.x)));
    let var_2 = ~4294967295u;
    var var_3 = func_6(func_2(arg_2.d.x, var_0.a.c.x).a.a, var_0.a);
    global0 = array<f32, 28>();
    return func_1(func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f * arg_1.b.x)))), false).a, 29951u, ~vec2<i32>(u_input.a, firstTrailingBit(-2147483647i))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 28u)]);
    var var_1 = select(select(vec2<bool>(true, true), vec2<bool>(false, -u_input.a <= (u_input.a | 7454i)), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(true, any(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, false))))), vec2<bool>(false, !(firstLeadingBit(-1i) == abs(u_input.a))), min(~(~u_input.d), 1u) <= u_input.d);
    var var_2 = ~vec4<i32>(u_input.a, u_input.a, abs(0i), -2147483647i) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(2147483647i), 38253i, ~1i), -vec3<i32>(92670i, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, 0i, 0i)), _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(7249i, 1i, u_input.a, -1i), vec4<i32>(0i, 1i, -76671i, u_input.a), vec4<i32>(18341i, u_input.a, u_input.a, u_input.a)), ~select(vec4<i32>(-24412i, u_input.a, -25215i, u_input.a), vec4<i32>(u_input.a, 33078i, u_input.a, u_input.a), var_1.x)), 24354i, u_input.a);
    var_2 = vec4<i32>(u_input.a, -1i, _wgslsmith_div_i32(_wgslsmith_div_i32(~(-30601i), u_input.a), -(~var_2.x)), 1i);
    var var_3 = ~u_input.c.wwy;
    var_2 = -(~(-(~vec4<i32>(u_input.a, 1i, 2147483647i, 0i) | vec4<i32>(u_input.a, 1i, var_2.x, u_input.a))));
    var var_4 = func_8(func_7(_wgslsmith_f_op_f32(543f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))), func_6(Struct_1(vec2<u32>(u_input.c.x, var_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_3.x, 28u)], global0[_wgslsmith_index_u32(var_3.x, 28u)], -895f, 1238f)), abs(vec4<i32>(13936i, -1i, u_input.a, 2147483647i))), func_1(Struct_3(Struct_1(vec2<u32>(u_input.d, 1u), vec4<f32>(1000f, global0[_wgslsmith_index_u32(u_input.d, 28u)], var_0, 476f), vec4<i32>(var_2.x, u_input.a, 1i, -57171i)), 1u, vec4<bool>(var_1.x, true, false, var_1.x), vec4<i32>(u_input.a, var_2.x, u_input.a, var_2.x)), _wgslsmith_mod_u32(var_3.x, var_3.x), var_2.ww)), ~(~1u), Struct_5(select(1u >> (1u % 32u), 0u, var_1.x), u_input.c.zwy, select(-vec4<i32>(-1i, -51535i, 0i, -1i), select(vec4<i32>(-2147483647i, var_2.x, 0i, 43069i), vec4<i32>(1i, u_input.a, var_2.x, 3291i), var_1.x), all(vec2<bool>(var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(17403u, 28u)], global0[_wgslsmith_index_u32(52272u, 28u)], 138f, var_0))), vec3<i32>(-2147483647i, i32(-1i) * -33390i, u_input.a))), func_6(Struct_1(reverseBits(firstTrailingBit(vec2<u32>(var_3.x, 24467u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1936f, global0[_wgslsmith_index_u32(u_input.d, 28u)], -536f, -250f))), vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(var_2.xyw, var_2.zxy), var_2.x << (var_3.x % 32u), var_2.x)), Struct_3(func_2(1071f, true).a.a, _wgslsmith_div_u32(var_3.x, 48084u), !vec4<bool>(var_1.x, var_1.x, true, true), vec4<i32>(14716i, var_2.x, 16575i, 0i) << (vec4<u32>(var_3.x, 1u, 47699u, u_input.d) % vec4<u32>(32u)))).b, Struct_5(var_3.x << ((u_input.c.x | _wgslsmith_div_u32(var_3.x, 4294967295u)) % 32u), ~(~u_input.c.xxz), vec4<i32>(var_2.x, _wgslsmith_mult_i32(-var_2.x, var_2.x), var_2.x, ~(-2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-340f, global0[_wgslsmith_index_u32(~u_input.b, 28u)], -975f, var_0)), vec3<i32>(-26313i, _wgslsmith_dot_vec3_i32(vec3<i32>(-24078i, 0i, 26930i), -vec3<i32>(u_input.a, var_2.x, var_2.x)), _wgslsmith_clamp_i32(u_input.a, 34005i, 14623i) ^ firstLeadingBit(-36269i))));
    let var_5 = func_6(Struct_1(_wgslsmith_sub_vec2_u32(var_3.xx, func_2(_wgslsmith_f_op_f32(sign(var_4.b.x)), all(vec4<bool>(true, var_1.x, false, false))).a.a.a), _wgslsmith_f_op_vec4_f32(-var_4.b), firstLeadingBit(~func_6(Struct_1(global2[_wgslsmith_index_u32(var_3.x, 18u)], var_4.b, vec4<i32>(var_2.x, 1i, 23457i, 26698i)), Struct_3(Struct_1(vec2<u32>(var_4.a.x, var_4.a.x), vec4<f32>(-1242f, var_0, var_4.b.x, -593f), var_4.c), 38208u, vec4<bool>(false, false, var_1.x, true), var_4.c)).b.c)), Struct_3(func_2(_wgslsmith_f_op_f32(var_4.b.x * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d, 28u)], -352f)), var_4.b.x <= global0[_wgslsmith_index_u32(var_3.x, 28u)]).a.a, var_4.a.x, !func_2(var_0, u_input.a >= u_input.a).a.c, vec4<i32>(var_4.c.x, func_4(vec2<bool>(var_1.x, var_1.x), 562f, Struct_2(false, Struct_1(var_4.a, vec4<f32>(global0[_wgslsmith_index_u32(96240u, 28u)], var_4.b.x, 730f, global0[_wgslsmith_index_u32(u_input.d, 28u)]), var_4.c), 1u, u_input.a, vec2<u32>(4294967295u, 48343u)), Struct_2(false, Struct_1(var_3.yx, vec4<f32>(var_0, var_4.b.x, -1453f, 1020f), var_4.c), var_4.a.x, var_4.c.x, global2[_wgslsmith_index_u32(1u, 18u)])).x, -8412i, _wgslsmith_dot_vec2_i32(vec2<i32>(-22284i, 1i), vec2<i32>(2147483647i, 2147483647i))) ^ vec4<i32>(var_4.c.x, i32(-1i) * -45986i, func_1(Struct_3(Struct_1(vec2<u32>(0u, 1u), vec4<f32>(-1000f, var_4.b.x, 401f, var_0), vec4<i32>(-33833i, -35728i, var_4.c.x, var_4.c.x)), u_input.d, vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<i32>(var_4.c.x, 0i, 5757i, var_4.c.x)), u_input.d, var_4.c.xw).a.c.x, ~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(~(-var_4.c.x), var_4.c.x), _wgslsmith_mult_i32(var_4.c.x & var_5.d, ~_wgslsmith_sub_i32(-13852i, var_4.c.x)), i32(-1i) * -20849i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_4.b.zxy), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(0u, 28u)], 1003f, var_0), vec3<f32>(var_5.b.b.x, 262f, var_5.b.b.x))))) - var_4.b.yxw)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, var_4.b.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1512f))), ~(~vec4<u32>(_wgslsmith_mod_u32(var_3.x, 4294967295u), ~var_3.x, _wgslsmith_div_u32(u_input.b, 1u), _wgslsmith_sub_u32(43437u, var_4.a.x))), var_5.b.b.x);
}

