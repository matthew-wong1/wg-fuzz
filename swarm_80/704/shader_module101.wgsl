struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-1477f, 557f, 742f, -1000f), vec4<f32>(1000f, 1886f, 1868f, -204f), vec4<f32>(-813f, -148f, -2195f, 1521f), vec4<f32>(-1000f, -1370f, -115f, 1592f), vec4<f32>(-178f, -132f, 271f, 752f), vec4<f32>(1302f, 179f, -423f, -1000f), vec4<f32>(-367f, -267f, 1172f, 1000f), vec4<f32>(-2078f, 1000f, 733f, 1274f), vec4<f32>(-1135f, 1000f, 341f, -1371f), vec4<f32>(601f, -1198f, -1447f, -314f), vec4<f32>(392f, 185f, 1370f, -269f), vec4<f32>(1000f, 1224f, -510f, -328f), vec4<f32>(-1000f, 520f, 720f, -786f), vec4<f32>(-791f, -692f, 656f, -1000f), vec4<f32>(-1611f, 593f, 835f, 183f));

var<private> global1: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.b))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(round(-261f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_1.a.b, arg_2.x)), 332f, false)))))));
    global0 = array<vec4<f32>, 15>();
    var var_1 = 1i;
    let var_2 = arg_1.a;
    var var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.ywz, ~reverseBits(vec3<u32>(4294967295u, u_input.a.x, arg_1.c.x))), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a), _wgslsmith_clamp_u32(firstLeadingBit(~arg_1.d), 125749u, ~(~109864u)), 1u));
    return arg_1.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = min(max(~(~vec4<u32>(50709u, 58447u, 1u, arg_0.d)), vec4<u32>(~arg_0.d, ~2288u, arg_0.d, arg_0.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_0.c.x), 30076u, max(u_input.a.x, 43749u), arg_0.d), max(select(u_input.a, u_input.a, arg_0.b), _wgslsmith_sub_vec4_u32(vec4<u32>(15310u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(arg_0.d, arg_0.d, 7159u, 58025u))), ~vec4<u32>(arg_0.d, u_input.a.x, u_input.a.x, 0u))) ^ firstTrailingBit(max(reverseBits(~u_input.a), vec4<u32>(_wgslsmith_add_u32(59628u, 0u), ~25942u, ~u_input.a.x, u_input.a.x ^ 26006u)));
    let var_1 = Struct_2(arg_0.a, true, ~arg_0.c, ~abs(~(~arg_0.c.x)));
    global0 = array<vec4<f32>, 15>();
    global0 = array<vec4<f32>, 15>();
    let var_2 = Struct_1(vec3<bool>((true | any(vec2<bool>(arg_0.b, arg_0.b))) || func_3(var_1.a.a.x, var_1, vec4<f32>(var_1.a.b, var_1.a.b, -117f, 735f)), _wgslsmith_div_f32(-691f, -854f) < var_1.a.b, var_1.a.a.x), arg_1.x, abs(~vec2<i32>(_wgslsmith_mult_i32(-46155i, arg_0.a.c.x), var_1.a.c.x)));
    return var_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> Struct_2 {
    global0 = array<vec4<f32>, 15>();
    var var_0 = func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(~(~1u), 17u)], _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_div_vec2_i32(vec2<i32>(22443i, -19692i), vec2<i32>(arg_0.x, -2147483647i) | arg_0.zy)), true, ~(~(~vec2<u32>(4294967295u, u_input.a.x))), ~_wgslsmith_div_u32(arg_1.x, u_input.a.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, 140f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1266f, -1000f) * vec2<f32>(arg_2, arg_2)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_2), 845f)));
    let var_1 = Struct_2(Struct_1(vec3<bool>(!arg_3, _wgslsmith_f_op_f32(round(359f)) == _wgslsmith_f_op_f32(sign(-165f)), false), _wgslsmith_f_op_f32(-func_2(Struct_2(Struct_1(var_0.a, 210f, arg_0.yy), true, vec2<u32>(u_input.a.x, u_input.a.x), 27486u), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2, -1099f)))).b), countOneBits(arg_0.zy)), true, ~_wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(12606u, 4294967295u), vec2<u32>(0u, u_input.a.x))), reverseBits(_wgslsmith_add_vec2_u32(arg_1, arg_1))), 107139u);
    let var_2 = ~vec3<i32>(~1i, var_0.c.x, var_1.a.c.x);
    var var_3 = Struct_2(func_2(Struct_2(var_1.a, !var_0.a.x && arg_3, ~(arg_1 ^ vec2<u32>(61686u, u_input.a.x)), 1u), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1173f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(abs(var_1.a.b)), var_1.a.a.x)))), (var_0.c.x >> (~(~4294967295u) % 32u)) != 25855i, ~select(vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.ywz, vec3<u32>(45503u, var_1.c.x, u_input.a.x))), arg_1, !vec2<bool>(var_0.a.x, var_0.a.x)), min(arg_1.x, arg_1.x));
    return Struct_2(var_3.a, var_3.a.a.x, ~firstTrailingBit(u_input.a.xz), _wgslsmith_add_u32(32036u, 8205u));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    global1 = array<vec3<bool>, 17>();
    global1 = array<vec3<bool>, 17>();
    global1 = array<vec3<bool>, 17>();
    var var_0 = vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(~u_input.a.zz, _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(48262u), arg_2.d), (arg_2.c & u_input.a.wx) >> (func_1(vec3<i32>(arg_2.a.c.x, 42352i, 29159i), vec2<u32>(arg_2.c.x, 83216u), 1000f, false).c % vec2<u32>(32u)))), 48873u);
    let var_1 = Struct_2(arg_2.a, true, min(arg_2.c, vec2<u32>(~(~var_0.x), _wgslsmith_mult_u32(7601u, u_input.a.x))), arg_2.d);
    return func_1(-vec3<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(arg_2.a.c.x, 19163i), vec2<i32>(arg_2.a.c.x, -17949i)), vec2<i32>(22317i, var_1.a.c.x)), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_1, 38652i, arg_2.a.c.x) >> (u_input.a % vec4<u32>(32u)), select(vec4<i32>(arg_1, var_1.a.c.x, -2147483647i, arg_1), vec4<i32>(14484i, 2147483647i, -1i, arg_1), vec4<bool>(var_1.b, true, true, var_1.b)))), vec2<u32>(0u, countOneBits(13589u) >> (countOneBits(u_input.a.x) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-367f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(454f, arg_3)), _wgslsmith_f_op_f32(exp2(arg_3)), arg_2.a.a.x)))), arg_2.a.a.x);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(func_2(func_1(~vec3<i32>(-1i, -13331i, arg_0.a.c.x) | vec3<i32>(arg_0.a.c.x, arg_0.a.c.x, -5881i), ~vec2<u32>(14451u, 6057u) ^ func_1(vec3<i32>(7617i, 7378i, arg_0.a.c.x), vec2<u32>(arg_0.c.x, arg_0.d), arg_0.a.b, arg_0.b).c, func_2(Struct_2(Struct_1(arg_0.a.a, arg_0.a.b, vec2<i32>(-33589i, 1i)), true, u_input.a.zz, arg_0.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b, 1000f) * vec2<f32>(-192f, arg_0.a.b))).b, !(!arg_0.b)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.b, 1801f)) * 1961f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b)))).a, arg_0.a.b, arg_0.a.c);
    global0 = array<vec4<f32>, 15>();
    global1 = array<vec3<bool>, 17>();
    let var_1 = vec2<f32>(-774f, var_0.b);
    var var_2 = var_0.b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 15u)]) * global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), 65581i ^ _wgslsmith_clamp_i32(1i, select(-1i, -23739i, true), 28309i), func_1(_wgslsmith_add_vec3_i32(min(vec3<i32>(0i, -1i, -1i), vec3<i32>(-2147483647i, -17764i, 62558i)), -vec3<i32>(0i, 54855i, -22403i)), ~reverseBits(vec2<u32>(67825u, u_input.a.x)), 1844f, select(true, u_input.a.x > 4294967295u, true)), -1170f));
    var var_2 = vec3<bool>(func_1(_wgslsmith_mod_vec3_i32(-(~vec3<i32>(-13031i, 2147483647i, -17629i)), vec3<i32>(-34916i, _wgslsmith_div_i32(0i, 1i), var_1.a.c.x & -37813i)), func_1(-vec3<i32>(var_1.a.c.x, 0i, var_1.a.c.x), vec2<u32>(var_1.c.x, var_1.d), var_1.a.b, any(vec4<bool>(var_1.b, var_1.a.a.x, true, var_1.a.a.x))).c ^ ((u_input.a.yx >> (var_1.c % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_u32(var_1.c, vec2<u32>(var_1.c.x, 0u))), _wgslsmith_f_op_f32(var_1.a.b * _wgslsmith_div_f32(1000f, var_1.a.b)), func_4(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_f_op_f32(var_1.a.b - -1020f), 543f, _wgslsmith_f_op_f32(min(var_1.a.b, var_1.a.b))), _wgslsmith_add_i32(1i, var_1.a.c.x), Struct_2(var_1.a, false, vec2<u32>(var_1.c.x, 78787u), _wgslsmith_sub_u32(0u, var_1.c.x)), var_1.a.b).a.a.x).b, !func_1(~(vec3<i32>(0i, var_1.a.c.x, 1i) & vec3<i32>(var_1.a.c.x, var_1.a.c.x, 19343i)), countOneBits(~vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(690f + var_1.a.b))), var_1.b).a.a.x, false | !var_1.a.a.x);
    global0 = array<vec4<f32>, 15>();
    var var_3 = Struct_1(!vec3<bool>(func_5(Struct_2(Struct_1(vec3<bool>(false, true, var_2.x), var_1.a.b, vec2<i32>(2147483647i, 0i)), false, var_1.c, 3305u)).b, var_1.b, !any(vec2<bool>(true, false))), var_1.a.b, _wgslsmith_add_vec2_i32(reverseBits(select(~var_1.a.c, _wgslsmith_div_vec2_i32(var_1.a.c, vec2<i32>(var_1.a.c.x, 7946i)), true)), var_1.a.c));
    let var_4 = func_1(min(-_wgslsmith_sub_vec3_i32(abs(vec3<i32>(0i, 2147483647i, 0i)), min(vec3<i32>(-1i, -9756i, var_3.c.x), vec3<i32>(0i, var_3.c.x, -1i))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_1.a.c.x, 0i, var_3.c.x), vec3<i32>(-var_1.a.c.x, var_3.c.x, firstTrailingBit(var_1.a.c.x)))), u_input.a.xy, 529f, !(!any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xww, u_input.a.yww), 17u)]))).a;
    var var_5 = func_1(select(-vec3<i32>(reverseBits(var_4.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_4.c.x, var_3.c.x, 2147483647i), vec4<i32>(2147483647i, -21442i, 2147483647i, 1i)), 2147483647i), ~vec3<i32>(6797i, var_4.c.x, 0i) & ~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -48997i, 0i), vec3<i32>(1i, -9944i, -2147483647i)), var_3.a.x), u_input.a.zy, -1149f, true).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d, 20513u, u_input.a.x, 36733u), ~u_input.a), ~(u_input.a ^ vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x, u_input.a.x, 0u << (var_1.d % 32u)), var_1.d, _wgslsmith_mult_i32(~(-37935i), ~firstTrailingBit(-6191i)), vec4<u32>(var_1.c.x, u_input.a.x, 1u, u_input.a.x));
}

