struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<vec2<i32>, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> i32 {
    let var_0 = ~_wgslsmith_mod_u32(abs(u_input.a.x), _wgslsmith_add_u32(~21404u, 1u));
    global0 = abs(select(vec4<u32>(~_wgslsmith_sub_u32(14530u, var_0), _wgslsmith_dot_vec3_u32(global0.ywy, vec3<u32>(45132u, 0u, global0.x)) | _wgslsmith_add_u32(71411u, 74132u), arg_1.c.x, var_0), abs(vec4<u32>(_wgslsmith_sub_u32(136460u, 1u), ~arg_1.c.x, var_0, ~45179u)), vec4<bool>(true, true, true, true)));
    var var_1 = arg_1.b.x & ~u_input.c;
    let var_2 = arg_1;
    global1 = array<Struct_2, 19>();
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(-42432i, arg_1.b.x, var_2.b.x, var_2.b.x) | vec4<i32>(arg_1.b.x, -18879i, var_2.b.x, arg_1.b.x), vec4<i32>(-2147483647i, 15065i, arg_1.b.x, var_2.b.x) >> (~vec4<u32>(0u, global0.x, 82652u, 1u) % vec4<u32>(32u)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true)), -vec4<i32>(-44503i, u_input.c, var_2.b.x, arg_1.b.x) | vec4<i32>(2147483647i, ~2147483647i, var_2.b.x, _wgslsmith_mod_i32(-6825i, var_2.b.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(-(~2147483647i), ~var_2.b.x ^ _wgslsmith_div_i32(var_2.b.x, -96631i)), global2[_wgslsmith_index_u32(1u, 5u)] & arg_1.b.yz));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>) -> bool {
    global2 = array<vec2<i32>, 5>();
    var var_0 = arg_1;
    global2 = array<vec2<i32>, 5>();
    let var_1 = arg_0;
    var_0 = vec4<f32>(1897f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-arg_0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(1000f * -241f), _wgslsmith_f_op_f32(-arg_0.a.x));
    return firstLeadingBit(-countOneBits(-var_1.b.x)) <= (i32(-1i) * -func_3(vec3<f32>(497f, 2230f, -192f), arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> bool {
    global1 = array<Struct_2, 19>();
    return arg_0.b;
}

fn func_1() -> vec4<bool> {
    global0 = select(select(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.b.x, 0u), vec4<u32>(1u, u_input.a.x, 32334u, global0.x))), abs(~select(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 13085u), true)), vec4<bool>(!select(false, false, false), func_4(Struct_1(vec4<f32>(472f, 611f, -584f, 258f), false, -11372i), func_2(Struct_3(vec4<f32>(-483f, -506f, 426f, 2454f), vec3<i32>(u_input.c, -50748i, u_input.c), global0.xyz), vec4<f32>(-708f, 132f, 218f, -1000f)), 8138u), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), false)), ~vec4<u32>(~4268u << (max(u_input.a.x, global0.x) % 32u), ~0u, 1u, 1u), vec4<bool>(true, true, false, func_2(Struct_3(vec4<f32>(2050f, 407f, 523f, -631f), select(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, -34859i, 2147483647i), false), max(global0.yxw, global0.zzx)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1881f, -951f, 1044f, 404f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-446f, 574f, -1462f, 976f)))))));
    var var_0 = ~_wgslsmith_sub_u32(~global0.x, 1u);
    global0 = select(abs(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, global0.x, 4294967295u, global0.x)), ~vec4<u32>(4294967295u, 0u, global0.x, u_input.b.x)) << (~vec4<u32>(u_input.a.x, 135254u, 29398u, 45473u) % vec4<u32>(32u))), countOneBits(vec4<u32>(~global0.x, u_input.b.x, ~countOneBits(global0.x), u_input.a.x | min(u_input.b.x, u_input.a.x))), !(!vec4<bool>(select(false, true, false), true, true, true)));
    global1 = array<Struct_2, 19>();
    global1 = array<Struct_2, 19>();
    return select(!vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, func_2(Struct_3(vec4<f32>(1084f, -1105f, 308f, -242f), vec3<i32>(u_input.c, 99766i, u_input.c), global0.zwz), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1380f, 1243f, 536f, 306f) * vec4<f32>(-539f, -388f, 557f, 114f)))), !vec4<bool>(all(vec4<bool>(false, true, false, true)), true, !(global0.x < global0.x), true), any(!vec2<bool>(true, u_input.c < 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u ^ _wgslsmith_clamp_u32(_wgslsmith_add_u32(global0.x | global0.x, global0.x), 1u, ~reverseBits(global0.x << (12749u % 32u)));
    let var_1 = vec2<bool>(true, !any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false))));
    let var_2 = vec4<f32>(1251f, _wgslsmith_f_op_f32(trunc(878f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1863f))), -1445f, any(!vec3<bool>(var_1.x, var_1.x, var_1.x))))), _wgslsmith_f_op_f32(-1341f + -528f));
    var var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_2))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(2060f * -217f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(var_2.x, var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(427f - var_2.x), _wgslsmith_f_op_f32(var_2.x + -245f), _wgslsmith_f_op_f32(-666f + -1603f), var_2.x), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), func_1(), !vec4<bool>(var_1.x, var_1.x, var_1.x, false))))), _wgslsmith_dot_vec3_i32(reverseBits(select(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, 0i, u_input.c), var_1.x)), min(~vec3<i32>(u_input.c, 0i, 1i), vec3<i32>(u_input.c, u_input.c, -57420i))) >= u_input.c, -countOneBits(_wgslsmith_clamp_i32(~(-23359i), u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, 0i, -2147483647i), vec4<i32>(u_input.c, -1i, 51926i, u_input.c)))));
    let var_4 = Struct_1(var_2, all(vec3<bool>(-604f > _wgslsmith_f_op_f32(min(var_3.a.x, -116f)), any(!vec3<bool>(var_1.x, var_1.x, var_1.x)), var_3.b)), _wgslsmith_dot_vec4_i32(max(~vec4<i32>(var_3.c, var_3.c, var_3.c, -25446i), vec4<i32>(-1i) * -vec4<i32>(352i, var_3.c, u_input.c, u_input.c)), min(~countOneBits(vec4<i32>(var_3.c, var_3.c, 10595i, 1i)), select(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-22362i, var_3.c, u_input.c, -14258i), vec4<i32>(-1i, u_input.c, var_3.c, -34763i), true), select(vec4<bool>(true, var_3.b, true, var_3.b), vec4<bool>(var_3.b, var_1.x, true, var_1.x), vec4<bool>(var_3.b, var_3.b, var_3.b, false))))));
    let var_5 = ~(~_wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0, 16790u, global0.x), vec4<u32>(1u, global0.x, u_input.a.x, 21740u))), u_input.b.x, global0.x));
    var var_6 = true;
    var var_7 = Struct_2(~(~var_5), var_4.c);
    var var_8 = vec4<bool>(false, select(true, var_1.x, var_1.x), !var_4.b, !((var_1.x && var_3.b) || (!var_3.b | all(vec3<bool>(var_1.x, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(980f);
}

