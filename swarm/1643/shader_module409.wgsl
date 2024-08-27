struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 14>;

var<private> global2: array<u32, 13> = array<u32, 13>(4294967295u, 0u, 16346u, 27651u, 0u, 1u, 0u, 49901u, 36420u, 47488u, 4294967295u, 4294967295u, 36525u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: u32, arg_3: u32) -> Struct_3 {
    var var_0 = arg_1.x;
    global0 = Struct_2(!(!select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(false, true, false), any(vec4<bool>(global0.a.x, false, true, false)))), false, reverseBits(_wgslsmith_clamp_u32(select(_wgslsmith_mult_u32(0u, 1u), 0u ^ global2[_wgslsmith_index_u32(0u, 13u)], arg_1.x), ~1u, 6974u)));
    var var_1 = 1u;
    return Struct_3(arg_0.a, arg_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(max(~global2[_wgslsmith_index_u32(arg_0.c, 13u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, 1u, 4294967295u), u_input.b)), arg_2, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.c, arg_3, u_input.b.x), vec4<u32>(1u, u_input.b.x, global0.c, arg_2)))), vec3<u32>((17009u << (global2[_wgslsmith_index_u32(4294967295u, 13u)] % 32u)) | 23255u, 62986u, ~35534u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    let var_0 = any(global0.a.zz);
    let var_1 = Struct_2(select(select(!(!vec3<bool>(var_0, true, arg_2.x)), vec3<bool>(select(false, var_0, global0.a.x), arg_3 >= -30077i, select(false, true, global0.a.x)), any(arg_2)), select(select(!vec3<bool>(false, arg_2.x, global0.b), !vec3<bool>(var_0, var_0, var_0), any(global0.a.xy)), vec3<bool>(any(global0.a), arg_2.x, false), select(vec3<bool>(false, global0.a.x, global0.a.x), global0.a, select(global0.a, global0.a, vec3<bool>(false, arg_2.x, true)))), global0.a), !(-2147483647i != ~_wgslsmith_dot_vec3_i32(arg_1.a.c.wxy, arg_1.a.d.wyz)), arg_1.c);
    global2 = array<u32, 13>();
    var var_2 = _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), 0i) & 1i;
    var_2 = 6354i;
    return reverseBits(~(~arg_1.a.c.x));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = -func_3(vec3<f32>(_wgslsmith_f_op_f32(-1000f * 2541f), _wgslsmith_f_op_f32(-667f - 1505f), _wgslsmith_f_op_f32(f32(-1f) * -519f)), func_2(Struct_3(Struct_1(-400f, 887f, vec4<i32>(-1i, u_input.c, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 1i, 0i, 6570i)), vec2<f32>(967f, 1000f), u_input.b.x), select(global0.a, global0.a, global0.a.x), max(global0.c, global0.c), 4294967295u), select(select(vec2<bool>(true, false), vec2<bool>(arg_0.x, false), false), !global0.a.xy, 69826u >= global0.c), -(u_input.a.x ^ u_input.a.x)) == func_2(Struct_3(func_2(Struct_3(Struct_1(417f, -743f, vec4<i32>(u_input.a.x, 1i, u_input.c, -15174i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x)), vec2<f32>(194f, 682f), 54223u), global0.a, u_input.b.x << (global0.c % 32u), ~4145u).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-576f, -798f) - vec2<f32>(-1549f, -2798f))), global2[_wgslsmith_index_u32(countOneBits(reverseBits(10250u)), 13u)]), !select(!global0.a, !vec3<bool>(true, arg_0.x, global0.b), select(vec3<bool>(true, true, arg_0.x), global0.a, false)), ~global2[_wgslsmith_index_u32(~4294967295u, 13u)] | 0u, ~firstTrailingBit(~u_input.b.x)).a.d.x;
    global2 = array<u32, 13>();
    global2 = array<u32, 13>();
    var var_1 = ~(~(~(~vec4<u32>(31103u, 0u, 0u, 25490u))));
    let var_2 = Struct_2(!select(vec3<bool>(true, !arg_0.x, all(vec2<bool>(false, arg_0.x))), !select(global0.a, global0.a, vec3<bool>(global0.a.x, global0.b, arg_0.x)), vec3<bool>(all(arg_0), all(vec4<bool>(false, true, arg_0.x, true)), true)), select(false, !(abs(u_input.c) == _wgslsmith_mod_i32(2147483647i, u_input.a.x)), -19264i <= firstTrailingBit(u_input.c)), 1u);
    return func_2(func_2(Struct_3(func_2(Struct_3(Struct_1(340f, -603f, vec4<i32>(u_input.a.x, u_input.a.x, 18596i, 1i), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<f32>(1535f, 996f), 4294967295u), select(vec3<bool>(true, true, var_2.b), var_2.a, var_2.a), ~var_2.c, 1u).a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1423f, -1387f) * vec2<f32>(-924f, -257f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1260f, 774f), vec2<f32>(-1856f, 324f))))), ~firstTrailingBit(4294967295u)), !var_2.a, 1u, reverseBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(29247u, 36158u), var_1.x))), var_2.a, firstLeadingBit(func_2(Struct_3(func_2(Struct_3(Struct_1(-612f, 1087f, vec4<i32>(0i, u_input.c, u_input.c, 1i), vec4<i32>(u_input.c, 0i, -1i, u_input.c)), vec2<f32>(879f, 839f), 33886u), var_2.a, var_2.c, 1u).a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1030f, 1389f), vec2<f32>(428f, 1000f), var_2.a.yy)), ~49706u), !select(var_2.a, var_2.a, true), var_2.c | var_2.c, _wgslsmith_clamp_u32(18349u, var_2.c >> (u_input.b.x % 32u), global2[_wgslsmith_index_u32(71143u, 13u)] << (var_2.c % 32u))).c), 2555u).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.a, (~(u_input.b.x & 65844u) > ~_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.xx)) || global0.b, ~1u);
    var var_1 = func_1(select(select(vec2<bool>(var_0.b, !global0.a.x), select(vec2<bool>(true, true), !vec2<bool>(var_0.b, global0.b), global0.b), select(vec2<bool>(var_0.a.x, global0.a.x), vec2<bool>(true, true), vec2<bool>(true, true))), global0.a.xy, false));
    var_1 = Struct_1(var_1.b, var_1.b, var_1.d, vec4<i32>(func_3(vec3<f32>(_wgslsmith_f_op_f32(select(-1201f, -168f, false)), -1614f, -730f), Struct_3(Struct_1(var_1.b, -1000f, var_1.d, var_1.d), func_2(Struct_3(Struct_1(198f, var_1.a, var_1.d, var_1.d), vec2<f32>(var_1.b, 248f), global0.c), vec3<bool>(var_0.b, true, var_0.b), global2[_wgslsmith_index_u32(24576u, 13u)], var_0.c).b, 0u), vec2<bool>(u_input.b.x < global2[_wgslsmith_index_u32(u_input.b.x, 13u)], false), u_input.c & ~5959i), func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(899f, 131f, var_1.a))))), func_2(Struct_3(Struct_1(-365f, var_1.b, vec4<i32>(u_input.c, var_1.c.x, -11432i, var_1.d.x), vec4<i32>(u_input.c, u_input.a.x, 9105i, var_1.c.x)), vec2<f32>(-1293f, var_1.a), 4294967295u), !var_0.a, global2[_wgslsmith_index_u32(var_0.c, 13u)] ^ global0.c, var_0.c & 1u), vec2<bool>(true, true), u_input.a.x), -2147483647i, -2147483647i));
    var_0 = Struct_2(global0.a, true, u_input.b.x);
    let var_2 = func_2(func_2(Struct_3(Struct_1(-229f, _wgslsmith_f_op_f32(var_1.a * -1363f), vec4<i32>(0i, u_input.a.x, 33336i, var_1.c.x), -vec4<i32>(var_1.c.x, u_input.c, 74450i, var_1.d.x)), vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(-var_1.a)), ~reverseBits(4294967295u)), vec3<bool>(!var_0.b || (global0.a.x == global0.a.x), _wgslsmith_f_op_f32(sign(var_1.a)) == -1064f, !all(var_0.a.yz)), ~43455u ^ func_2(Struct_3(Struct_1(-733f, var_1.b, vec4<i32>(var_1.c.x, 27595i, 9314i, 0i), vec4<i32>(-12111i, 0i, 10134i, 13239i)), vec2<f32>(var_1.b, 1000f), global2[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<bool>(var_0.b, var_0.b, var_0.b), 1u, ~1u).c, u_input.b.x), vec3<bool>(false, global0.b, true), u_input.b.x, ~(~(~(~global0.c))));
    let var_3 = 519f;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.b.x, -211f), _wgslsmith_f_op_f32(-474f * -1163f), true)) * -454f), func_2(Struct_3(func_2(Struct_3(var_2.a, var_2.b, 41572u), vec3<bool>(true, true, true), global0.c, reverseBits(59240u)).a, _wgslsmith_f_op_vec2_f32(trunc(var_2.b)), ~(global0.c & 56209u)), vec3<bool>(u_input.c != ~u_input.a.x, true, var_0.a.x), func_2(Struct_3(func_1(vec2<bool>(false, global0.b)), _wgslsmith_f_op_vec2_f32(select(var_2.b, vec2<f32>(var_2.a.b, var_3), false)), _wgslsmith_add_u32(1u, 1u)), select(!global0.a, select(global0.a, global0.a, var_0.a.x), !global0.a.x), global0.c, 1u).c, min(~(~var_2.c), 42155u)).a.a, var_1.d, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(var_2.a.c | vec4<i32>(-2147483647i, -1i, var_2.a.d.x, -1i), -vec4<i32>(var_1.d.x, -1i, -618i, var_1.c.x)), max(vec4<i32>(28503i, var_1.c.x, u_input.a.x, u_input.c), -var_2.a.d)), var_2.a.d));
    global0 = Struct_2(!(!select(global0.a, !var_0.a, select(vec3<bool>(false, var_0.a.x, true), global0.a, var_0.a.x))), !(!var_0.b) && false, select(4020u, global0.c, any(vec4<bool>(global0.a.x, true, false, var_0.a.x)) & global0.a.x));
    var var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_1.a - -1689f), _wgslsmith_f_op_f32(-var_3), var_4.b, _wgslsmith_f_op_f32(-var_4.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b, var_2.b.x, var_3, var_4.b) + vec4<f32>(var_3, -159f, var_2.b.x, 656f)), vec4<f32>(var_2.a.a, var_4.b, -555f, 1327f)))))));
}

