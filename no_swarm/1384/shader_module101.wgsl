struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

var<private> global2: vec2<f32> = vec2<f32>(1307f, -972f);

var<private> global3: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = select(~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 39713u, u_input.a.x), global3.zzw), 4294967295u)), countOneBits(vec2<u32>(4294967295u, firstLeadingBit(global3.x))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(4294967295u == u_input.a.x, any(vec3<bool>(false, true, true)))), vec2<bool>(all(vec3<bool>(false, true, true)), true)));
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-16784i, _wgslsmith_add_i32(arg_0.b, arg_2.x) | _wgslsmith_div_i32(-21101i, arg_2.x)), reverseBits(-1i), ~global0.a.b.b), arg_0.b);
    global0 = Struct_3(global0.a, arg_0, global0.a.b);
    let var_2 = Struct_2(-1653f, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-187f * -674f), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, -1056f), 1000f))), global0.a.b.b));
    global3 = ~abs(~firstLeadingBit(vec4<u32>(u_input.a.x, 0u, 1u, var_0.x)));
    return 13512u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x << (u_input.a.x % 32u), ~4294967295u), vec2<u32>(94703u, global3.x), select(vec2<u32>(global3.x, 0u), global3.zw, vec2<bool>(true, true)));
    let var_1 = ~14168i;
    let var_2 = global0.a;
    global3 = vec4<u32>(var_0.x, 36341u | var_0.x, global3.x, _wgslsmith_clamp_u32(global3.x, _wgslsmith_sub_u32(func_3(Struct_1(global2.x, 1i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1012f, global2.x, global2.x, 1000f))), vec3<i32>(arg_1.x, 1i, 1i)), u_input.a.x), 21483u));
    let var_3 = select(min(vec3<i32>(-26810i, ~(-2147483647i), var_2.b.b << (3347u % 32u)), vec3<i32>(-arg_1.x, 170i, min(global0.a.b.b, global0.a.b.b))), select(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_2.b.b, global0.b.b, -24462i), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.b.b, 49572i, arg_1.x), vec3<i32>(4497i, 0i, -2612i))), vec3<i32>(0i, ~global0.a.b.b, arg_1.x ^ global0.a.b.b), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), true)), select(false, _wgslsmith_dot_vec2_u32(var_0, var_0) == 0u, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))))) << (vec3<u32>(abs(countOneBits(55093u)), var_0.x, ~(~u_input.a.x)) % vec3<u32>(32u));
    return Struct_2(_wgslsmith_f_op_f32(-arg_0.x), var_2.b);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> i32 {
    global3 = _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(19954u, ~global3.x), func_3(func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.a, -1000f, arg_1.b.a))), select(vec2<i32>(arg_1.b.b, global0.c.b), vec2<i32>(0i, 26294i), vec2<bool>(false, false))).b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1175f, arg_0, -529f)), vec4<f32>(global2.x, arg_1.a, 1000f, 1821f))), select(firstTrailingBit(vec3<i32>(2147483647i, 12979i, arg_1.b.b)), select(vec3<i32>(arg_1.b.b, 1i, 2517i), vec3<i32>(global0.c.b, 0i, 12501i), vec3<bool>(false, false, true)), true)), _wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(48612u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(6908u, 0u, 1u, 4294967295u))), countOneBits(firstTrailingBit(vec4<u32>(42695u, global3.x, 31908u, u_input.a.x)))), _wgslsmith_mult_u32(global3.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global3.x, 3172u), vec4<u32>(global3.x, u_input.a.x, 7940u, global3.x)))), _wgslsmith_mod_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(global3.x, global3.x, global3.x, 4294967295u) >> (vec4<u32>(u_input.a.x, 18129u, 7757u, 0u) % vec4<u32>(32u)))), (~vec4<u32>(u_input.a.x, global3.x, global3.x, u_input.a.x) ^ ~vec4<u32>(global3.x, 0u, global3.x, 4294967295u)) ^ ~(~vec4<u32>(global3.x, 1u, global3.x, u_input.a.x))));
    let var_0 = select(false, true && (_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.a * global2.x), global0.c.a) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x + arg_1.b.a), _wgslsmith_f_op_f32(-163f + arg_1.a)))), _wgslsmith_div_u32(u_input.a.x, 3107u) <= 0u);
    global3 = ~select(~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global3.x)), abs(~(~vec4<u32>(26993u, global3.x, 0u, global3.x))), !select(vec4<bool>(false, true, false, false), global1[_wgslsmith_index_u32(select(global3.x, 4294967295u, false), 9u)], -424f >= global0.b.a));
    var var_1 = Struct_4(global0.b.b == _wgslsmith_mod_i32(-1i, -13616i), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(41106u, 146813u) << (~global3.x % 32u), _wgslsmith_sub_u32(global3.x, 0u) ^ global3.x, u_input.a.x, 20096u), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(15100u, 17981u, 1u, 42013u)), vec4<u32>(global3.x, 20522u, u_input.a.x, 90361u) << (vec4<u32>(4294967295u, 4294967295u, global3.x, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(min(84260u, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), 24193u, 45427u))), true | var_0);
    global3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, 0u, 1u, _wgslsmith_mult_u32(var_1.b, 4294967295u ^ global3.x)), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global3.x, global3.x, u_input.a.x, global3.x) >> (vec4<u32>(global3.x, var_1.b, 8702u, 0u) % vec4<u32>(32u))), min(min(vec4<u32>(var_1.b, 14874u, 4294967295u, var_1.b), vec4<u32>(global3.x, 91402u, 92598u, 4294967295u)), ~vec4<u32>(3434u, 4294967295u, var_1.b, u_input.a.x))));
    return i32(-1i) * -18940i;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, _wgslsmith_clamp_i32(global0.a.b.b, 6811i, abs(global0.a.b.b)), 1i), vec4<i32>(~18467i, global0.c.b, global0.a.b.b | global0.b.b, ~global0.a.b.b) >> (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 88824u, u_input.a.x, 4294967295u), vec4<u32>(1u, 73098u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u))), func_4(_wgslsmith_f_op_f32(732f + global2.x), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.a, global2.x, -387f) + vec3<f32>(-1333f, global0.c.a, -1224f)), ~vec2<i32>(global0.b.b, -1i))) >> (select(~43909u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, 41075u), vec4<u32>(global3.x, u_input.a.x, u_input.a.x, 46308u)) % 32u), 1u, any(select(vec2<bool>(true, true), vec2<bool>(true, true), false))) % 32u));
    let var_1 = false == any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), all(!global1[_wgslsmith_index_u32(2539u, 9u)])));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-762f - _wgslsmith_f_op_f32(-706f * global0.b.a)), global2.x);
    var var_2 = 42626u ^ min(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 4294967295u), vec4<u32>(46489u, 5389u, 6835u, global3.x)), (vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1u) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u))) >> (~vec4<u32>(global3.x, 27117u, u_input.a.x, 492u) % vec4<u32>(32u))), 4294967295u);
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -964f)) + 1255f), Struct_1(-306f, 0i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(select(global0.c.a, -1000f, false)))) + 918f), global0.a.b.b), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f + global2.x), 579f, 1f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global0.a.b.a, 1337f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -478f, global2.x) + vec3<f32>(global2.x, 269f, 509f)), select(vec3<bool>(var_1, var_1, true), vec3<bool>(false, true, var_1), var_1)))), vec2<i32>(global0.c.b, _wgslsmith_div_i32(_wgslsmith_sub_i32(global0.b.b, global0.c.b), 1i))).b);
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -846f) + vec3<f32>(1408f, global2.x, -1822f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(361f, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-208f, global0.c.a, global0.b.a), vec3<f32>(2151f, global2.x, global0.a.b.a), vec3<bool>(true, true, false))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.a, 155f, global2.x), vec3<f32>(807f, 1643f, global0.b.a), false)))))), vec2<i32>(global0.c.b, _wgslsmith_clamp_i32(var_0.x, var_0.x, -global0.b.b | 1i))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, global2.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    let var_0 = select(vec3<bool>(true, all(!(!global1[_wgslsmith_index_u32(1u, 9u)])), true), vec3<bool>(true, true, true), false);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(236f, _wgslsmith_f_op_f32(-global2.x))) * global0.a.b.a) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1317f, 390f) * 314f));
    let var_2 = ~vec3<u32>(~33448u, _wgslsmith_sub_u32(global3.x, 1u) & 22622u, ~1u);
    let var_3 = func_1();
    let var_4 = _wgslsmith_f_op_f32(1482f - func_1().a);
    let var_5 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1462f, var_3.a, -1000f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, 2158f, var_4)))), var_0.x)), vec2<i32>(reverseBits(-2147483647i), global0.b.b)).b.a, func_2(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-var_1), -131f), -(~vec2<i32>(global0.b.b, 2147483647i) << (select(var_2.yx, u_input.a, vec2<bool>(var_0.x, true)) % vec2<u32>(32u)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1479f), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(max(838f, _wgslsmith_f_op_f32(f32(-1f) * -128f))))));
}

