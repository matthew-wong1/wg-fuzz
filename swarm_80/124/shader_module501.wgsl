struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-804f, 1000f, -1418f, -837f), vec4<f32>(1186f, -240f, 555f, 2401f), vec4<f32>(280f, 479f, 831f, -1531f), vec4<f32>(874f, -1000f, 440f, 374f), vec4<f32>(234f, -2239f, 637f, -881f), vec4<f32>(638f, -742f, -114f, -633f), vec4<f32>(1239f, -495f, -1557f, 1016f), vec4<f32>(339f, 641f, -348f, 1024f), vec4<f32>(-310f, -203f, 381f, -1001f), vec4<f32>(1520f, -1310f, 185f, -3085f), vec4<f32>(-1000f, -255f, -1000f, -1000f), vec4<f32>(718f, -174f, 422f, -183f), vec4<f32>(-315f, -209f, 419f, 788f), vec4<f32>(-386f, 282f, 2305f, -330f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<vec4<f32>, 14>();
    var var_0 = Struct_5(!(!select(true, u_input.a.x < -7433i, any(vec4<bool>(false, false, false, false)))), Struct_2(all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), 1u);
    var var_1 = vec3<bool>(any(select(vec4<bool>(!var_0.b.a, true, any(vec4<bool>(var_0.a, true, var_0.b.a, var_0.a)), var_0.b.a), select(vec4<bool>(false, var_0.b.a, var_0.b.a, var_0.a), !vec4<bool>(var_0.b.a, var_0.a, false, var_0.b.a), any(vec3<bool>(false, var_0.a, true))), all(vec2<bool>(false, false)))), ~select(98886u, 1u, false | var_0.b.a) < var_0.c, false);
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 60170u, 21334u, 3422u) << (vec4<u32>(var_0.c, var_0.c, 0u, var_0.c) % vec4<u32>(32u)), ~vec4<u32>(87104u, 62614u, var_0.c, 68562u)), min(12714u, _wgslsmith_add_u32(1u, var_0.c)), 0i > _wgslsmith_mult_i32(u_input.a.x, 0i)), var_0.c), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0.c, 70260u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, var_0.c, 0u, 1470u), vec4<u32>(var_0.c, 59267u, var_0.c, 4294967295u)), var_0.c), ~vec3<u32>(3344u, var_0.c, 5403u) & ~vec3<u32>(1u, var_0.c, 8903u), ~firstLeadingBit(vec3<u32>(50021u, 0u, 20104u))));
    var_1 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.a, true, var_1.x), !vec3<bool>(true, var_1.x, false), select(vec3<bool>(var_1.x, var_0.b.a, false), vec3<bool>(var_1.x, var_0.a, false), false)), !select(vec3<bool>(var_1.x, false, true), vec3<bool>(true, false, var_0.a), false)), select(vec3<bool>(var_1.x, true, var_0.b.a), select(select(vec3<bool>(true, false, var_1.x), vec3<bool>(false, var_1.x, var_0.a), var_1.x), vec3<bool>(true, false, var_1.x), !vec3<bool>(var_0.a, var_1.x, false)), vec3<bool>(var_1.x, any(vec3<bool>(var_1.x, false, var_1.x)), !var_1.x)), !(any(vec2<bool>(var_0.a, var_1.x)) || true));
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_5 {
    global0 = array<vec4<f32>, 14>();
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(func_3(), 1u, ~(~0u)), 35921u, _wgslsmith_sub_u32(~(~1u), 1u));
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    var var_1 = reverseBits(var_0);
    return Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.x))))) <= arg_0.a.x, Struct_2(all(vec4<bool>(true, true, true, true))), var_0);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    global0 = array<vec4<f32>, 14>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1804f))))), -1182f)));
    let var_1 = u_input.a.x >> (0u % 32u);
    var var_2 = arg_0.b;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1629f);
    return Struct_2(select(any(vec2<bool>(!var_2.a, var_2.a)), true, arg_2 && var_2.a));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec4<f32>) -> i32 {
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    var var_0 = ~_wgslsmith_add_i32(arg_2.b, arg_2.b);
    let var_1 = func_4(Struct_5(arg_0.a, arg_0, 1u), ~(vec2<u32>(0u, 0u) >> (vec2<u32>(~1u, func_3()) % vec2<u32>(32u))), arg_0.a);
    var var_2 = !(!vec4<bool>(var_1.a, all(!vec4<bool>(arg_0.a, true, var_1.a, var_1.a)), false, true));
    return countOneBits(_wgslsmith_div_i32(0i, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, arg_2.b)) ^ 41734i);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_mod_i32(-786i, ~func_5(func_4(func_2(Struct_1(vec3<f32>(-988f, -781f, 1193f)), u_input.a.x), ~vec2<u32>(30786u, 4294967295u), true), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(512f, -1039f, 987f), vec3<f32>(-776f, 270f, -259f)))), Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-7603i, -19099i, -31709i, u_input.a.x), u_input.a), _wgslsmith_dot_vec3_i32(u_input.a.xyz, u_input.a.zyx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1816f, -1000f, 1125f, -703f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(492f, 939f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1041f, 934f, 1649f)))), vec4<f32>(_wgslsmith_div_f32(483f, -868f), _wgslsmith_f_op_f32(-927f - -1000f), -1278f, 1f)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1293f, -109f, 607f) - vec3<f32>(-804f, -349f, 1000f))) - vec3<f32>(1f, 1f, 1f))));
    global0 = array<vec4<f32>, 14>();
    var_0 = i32(-1i) * -(~u_input.a.x);
    var_0 = 44816i;
    return ~0u;
}

fn func_6(arg_0: vec4<u32>) -> Struct_2 {
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!all(vec2<bool>(true, true)));
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    var_0 = func_6(vec4<u32>(59104u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37557u, 0u), ~vec3<u32>(20647u, 4294967295u, 1u)), 4294967295u, func_1()));
    var_0 = func_4(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-836f, 2777f, 103f), vec3<f32>(1824f, -535f, 2346f), false)))), func_5(func_6(vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec3<f32>(226f, 426f, 438f)), Struct_4(-u_input.a.x, abs(u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 1892u), 14u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1325f, -364f)), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(0u, 14u)] * global0[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(1u, 14u)], vec4<f32>(1851f, -736f, -131f, -187f), false)), !vec4<bool>(false, var_0.a, true, var_0.a))))), _wgslsmith_clamp_vec2_u32(min(~firstTrailingBit(vec2<u32>(23951u, 6580u)), vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_clamp_u32(43004u, ~41704u, countOneBits(4294967295u)), firstLeadingBit(1u)), select(~(vec2<u32>(0u, 1u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec2<u32>(1u, ~4294967295u), vec2<bool>(true, true))), select(true, !(!var_0.a), all(select(vec2<bool>(false, false), vec2<bool>(false, var_0.a), false))) & all(vec2<bool>(false, true)));
    var var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1732f), _wgslsmith_div_f32(1000f, 1977f))), _wgslsmith_add_vec4_u32(vec4<u32>(~firstTrailingBit(4294967295u), ~(1u << (1u % 32u)), ~1u, 1u), abs(firstTrailingBit(vec4<u32>(1u, 21600u, 24584u, 24039u)))), u_input.a.www);
}

