struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = arg_0.b.a.yy;
    var var_1 = -(~(-vec4<i32>(~0i, countOneBits(-26062i), abs(u_input.b.x), -arg_0.a.b.x)));
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_i32(~(vec2<i32>(2147483647i, -22392i) & u_input.b.xy) | vec2<i32>(20956i, reverseBits(arg_0.d.x)), reverseBits(_wgslsmith_div_vec2_i32(-u_input.a.yw, firstLeadingBit(vec2<i32>(arg_0.d.x, var_1.x))))));
    let var_3 = ~(-(-(~vec4<i32>(arg_0.a.b.x, u_input.a.x, 1i, -5920i)) ^ (countOneBits(vec4<i32>(0i, -17683i, -2147483647i, u_input.a.x)) & ~vec4<i32>(-1i, 0i, 0i, arg_0.c.b.x))));
    var var_4 = ~countOneBits(_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_0.c.e.zzy), arg_0.a.e.yzy ^ ~vec3<u32>(arg_0.a.c, 96736u, 13284u)));
    return _wgslsmith_div_u32(arg_0.c.c, 1u);
}

fn func_2(arg_0: Struct_5) -> Struct_5 {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(13974i, -u_input.b.x >> (func_3(Struct_4(arg_0.a, Struct_3(vec4<f32>(1281f, -694f, 325f, 452f)), Struct_1(0u, u_input.a.wx, arg_0.a.c, arg_0.a.d, vec4<u32>(14009u, arg_0.a.c, arg_0.a.c, arg_0.a.a)), u_input.a.ywx)) % 32u)), -_wgslsmith_clamp_i32(1i, abs(arg_0.a.b.x), u_input.a.x)), max(_wgslsmith_dot_vec2_i32(abs(arg_0.a.b << (arg_0.a.e.yy % vec2<u32>(32u))), vec2<i32>(u_input.b.x >> (arg_0.a.c % 32u), -18033i)), min(min(-72737i, 0i), ~u_input.a.x) ^ _wgslsmith_mult_i32(-6287i, ~u_input.b.x)), arg_0.a.b.x);
    let var_1 = vec4<f32>(231f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-256f)))) * _wgslsmith_f_op_f32(f32(-1f) * -341f)), _wgslsmith_f_op_f32(sign(-531f)), !arg_0.b | all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-954f, _wgslsmith_div_f32(-657f, -1794f))) - _wgslsmith_f_op_f32(-446f * _wgslsmith_f_op_f32(trunc(429f)))))), 1f);
    let var_2 = u_input.a.wz;
    let var_3 = Struct_4(Struct_1(40789u, ~_wgslsmith_div_vec2_i32(var_2, vec2<i32>(u_input.a.x, 0i)), arg_0.a.c, !select(arg_0.a.d, arg_0.a.d, select(arg_0.a.d, vec3<bool>(arg_0.a.d.x, arg_0.b, true), arg_0.a.d)), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0.a.e.xwy, arg_0.a.e.zww), arg_0.a.e.x << (30174u % 32u), _wgslsmith_mod_u32(countOneBits(arg_0.a.a), ~98804u), abs(_wgslsmith_sub_u32(arg_0.a.a, 0u)))), Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-306f, var_1.x, var_1.x, var_1.x), vec4<f32>(-301f, var_1.x, 1056f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, var_1.x, -605f, 692f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(908f, var_1.x, var_1.x, var_1.x), vec4<f32>(-681f, 123f, 248f, 1062f), true))))), Struct_1(min(arg_0.a.c, _wgslsmith_add_u32(arg_0.a.c, abs(arg_0.a.a))), vec2<i32>(arg_0.a.b.x, u_input.a.x >> (1u % 32u)) & ~arg_0.a.b, arg_0.a.c, arg_0.a.d, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, arg_0.a.a), vec4<u32>(4294967295u, 0u, arg_0.a.e.x, 3687u)) & vec4<u32>(23242u, ~15409u, ~4294967295u, firstLeadingBit(arg_0.a.e.x))), u_input.a.xxx);
    global0 = array<Struct_2, 18>();
    return arg_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: bool, arg_3: Struct_5) -> vec4<f32> {
    let var_0 = arg_3.a.d.zy;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(762f, -209f, 1000f, arg_1))), vec4<f32>(arg_1, -136f, 194f, 2410f)))));
    let var_2 = func_3(Struct_4(Struct_1(arg_3.a.a, -u_input.b.yx, reverseBits(4620u), !arg_3.a.d, vec4<u32>(1u, arg_3.a.a, 2149u, 1u)), var_1, Struct_1(1u, max(u_input.a.ww, u_input.b.zy), arg_3.a.a, vec3<bool>(var_0.x, arg_0.x, true), arg_3.a.e ^ arg_3.a.e), vec3<i32>(1i, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_3.a.b.x, -1i), u_input.a.wyw)))) >> (abs(max(15411u, ~4294967295u)) % 32u);
    var var_3 = min(reverseBits((i32(-1i) * -1i) ^ _wgslsmith_sub_i32(u_input.a.x, -37371i)) >> (_wgslsmith_dot_vec2_u32(~arg_3.a.e.yy, arg_3.a.e.xx) % 32u), u_input.a.x);
    let var_4 = global0[_wgslsmith_index_u32(var_2, 18u)];
    return var_1.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    let var_0 = Struct_2(Struct_1(68364u, max(-countOneBits(u_input.a.wx), u_input.a.wx), abs(~19112u), vec3<bool>(true, true, (arg_2.c.c < 56668u) == any(arg_2.a.d.yz)), ~(vec4<u32>(arg_1.x, 26695u, 33771u, 11288u) >> (vec4<u32>(22919u, 1u, arg_2.a.c, arg_1.x) % vec4<u32>(32u))) << (countOneBits(arg_2.a.e) % vec4<u32>(32u))), ~arg_1.x, func_2(Struct_5(Struct_1(~arg_2.c.c, vec2<i32>(arg_2.c.b.x, -48407i), ~57397u, vec3<bool>(arg_2.a.d.x, arg_2.a.d.x, false), _wgslsmith_sub_vec4_u32(arg_2.a.e, vec4<u32>(89114u, 34579u, 1u, arg_2.b))), arg_2.c.d.x)).a);
    let var_1 = 41709u;
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    var var_2 = reverseBits(-countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b.x, var_0.a.b.x, 1i), u_input.b) >> (abs(56986u) % 32u)));
    return true;
}

fn func_1() -> vec4<f32> {
    global0 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_add_i32(-2147483647i, 2147483647i));
    var var_1 = !(!select(vec3<bool>(true, all(vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var_1 = vec3<bool>(all(!select(select(var_1.xz, var_1.xy, var_1.x), !vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x))), func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1694f, 276f, -304f, -901f)) + _wgslsmith_f_op_vec4_f32(func_4(select(vec2<bool>(true, false), var_1.xy, var_1.xx), _wgslsmith_f_op_f32(f32(-1f) * -1412f), var_1.x && var_1.x, func_2(Struct_5(Struct_1(59815u, u_input.b.zx, 22535u, vec3<bool>(false, false, var_1.x), vec4<u32>(4294967295u, 42252u, 10566u, 4294967295u)), true))))), vec2<u32>(1u, 1u), global0[_wgslsmith_index_u32(firstTrailingBit(1u) << (countOneBits(~0u) % 32u), 18u)]), !var_1.x);
    let var_2 = u_input.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(378f, -433f, -350f, 1737f) + vec4<f32>(825f, -1226f, -2363f, 2633f)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -486f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(342f, 392f)), _wgslsmith_f_op_f32(f32(-1f) * -387f), -1000f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(705f, 409f, -911f, -926f), _wgslsmith_div_vec4_f32(vec4<f32>(220f, -200f, 466f, -286f), vec4<f32>(-1569f, 1000f, 686f, -1003f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-910f, -1027f, 155f, -1821f) - vec4<f32>(-479f, -915f, -429f, -543f)), vec4<f32>(-302f, -106f, 1000f, 312f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_1())))));
    global0 = array<Struct_2, 18>();
    var var_1 = vec4<bool>(any(select(select(vec3<bool>(false, true, false), func_2(Struct_5(Struct_1(45673u, vec2<i32>(-1i, 68710i), 1u, vec3<bool>(false, false, true), vec4<u32>(17870u, 17015u, 0u, 38694u)), false)).a.d, vec3<bool>(true, true, true)), !func_2(Struct_5(Struct_1(2428u, vec2<i32>(2147483647i, 2147483647i), 1910u, vec3<bool>(true, false, true), vec4<u32>(74679u, 0u, 46407u, 25551u)), true)).a.d, true)), ~_wgslsmith_sub_i32(u_input.a.x | 39673i, u_input.a.x) != 0i, true, !all(vec2<bool>(true, true)));
    global0 = array<Struct_2, 18>();
    var var_2 = global0[_wgslsmith_index_u32(67530u, 18u)];
    var_1 = !vec4<bool>(!func_5(vec4<f32>(var_0.x, 1855f, -288f, 346f), vec2<u32>(var_2.b, var_2.c.e.x), global0[_wgslsmith_index_u32(53755u, 18u)]), var_2.a.d.x, true, true);
    var_2 = global0[_wgslsmith_index_u32(0u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.a, 66211u, var_2.c.a), _wgslsmith_mod_vec3_u32(var_2.c.e.yzw, vec3<u32>(var_2.b, 15937u, var_2.a.e.x))), var_2.b));
}

