struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(2147483647i, vec4<u32>(100871u, 11409u, 82918u, 0u)), Struct_1(28446i, vec4<u32>(0u, 19184u, 4294967295u, 0u)), Struct_1(-70939i, vec4<u32>(4294967295u, 10553u, 0u, 4294967295u)), Struct_1(2147483647i, vec4<u32>(15555u, 0u, 0u, 1u)), Struct_1(48056i, vec4<u32>(11303u, 1u, 56890u, 4294967295u)), Struct_1(2147483647i, vec4<u32>(4294967295u, 65207u, 49639u, 0u)), Struct_1(1i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), Struct_1(-1i, vec4<u32>(30989u, 4294967295u, 4294967295u, 0u)), Struct_1(-1i, vec4<u32>(69902u, 20490u, 8601u, 4294967295u)), Struct_1(2147483647i, vec4<u32>(36824u, 1u, 89165u, 34245u)), Struct_1(-58556i, vec4<u32>(35764u, 1u, 0u, 72854u)), Struct_1(-1i, vec4<u32>(1u, 0u, 1u, 4294967295u)), Struct_1(2147483647i, vec4<u32>(38475u, 54808u, 0u, 0u)), Struct_1(-4228i, vec4<u32>(4294967295u, 31028u, 4294967295u, 28328u)), Struct_1(1i, vec4<u32>(4294967295u, 0u, 56293u, 31162u)), Struct_1(-1106i, vec4<u32>(11773u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(-37698i, vec4<u32>(4294967295u, 103075u, 6630u, 0u)), Struct_1(i32(-2147483648), vec4<u32>(24531u, 4294967295u, 0u, 0u)), Struct_1(-1i, vec4<u32>(6576u, 106207u, 11305u, 38161u)), Struct_1(i32(-2147483648), vec4<u32>(7020u, 4294967295u, 0u, 4294967295u)), Struct_1(i32(-2147483648), vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), Struct_1(i32(-2147483648), vec4<u32>(11231u, 54895u, 0u, 17867u)), Struct_1(54926i, vec4<u32>(77368u, 4294967295u, 13251u, 1u)), Struct_1(-46518i, vec4<u32>(37536u, 94202u, 4294967295u, 4294967295u)), Struct_1(-5797i, vec4<u32>(37452u, 30713u, 33792u, 0u)), Struct_1(0i, vec4<u32>(29769u, 4294967295u, 9818u, 3354u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = arg_1;
    return 20489u;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    let var_0 = arg_3.a;
    global0 = array<Struct_1, 26>();
    return ~(~vec4<u32>(~countOneBits(arg_3.a.b.x), func_3(-var_0.a, Struct_2(var_0, false, arg_3.c), true, _wgslsmith_sub_u32(41406u, arg_3.a.b.x)), 68365u, arg_2.a.b.x));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(i32(-1i) * -1i, select(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(75989u, 1u, 4294967295u, 69636u)), func_2(0u, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 26u)], true, vec3<bool>(false, false, false)), Struct_2(Struct_1(-2147483647i, vec4<u32>(4294967295u, 975u, 1u, 0u)), true, vec3<bool>(true, false, true)), Struct_2(Struct_1(u_input.a, vec4<u32>(42612u, 0u, 49268u, 0u)), false, vec3<bool>(true, true, false))))), vec4<u32>(1u, ~158645u, 734u, func_2(9235u, Struct_2(Struct_1(-45715i, vec4<u32>(27830u, 17503u, 1u, 0u)), false, vec3<bool>(false, true, true)), Struct_2(Struct_1(0i, vec4<u32>(54735u, 0u, 1u, 579u)), true, vec3<bool>(true, true, true)), Struct_2(Struct_1(2147483647i, vec4<u32>(1u, 10537u, 1u, 4294967295u)), false, vec3<bool>(false, true, false))).x) >> (firstLeadingBit(vec4<u32>(16267u, 1u, 47477u, 16010u)) % vec4<u32>(32u)), false));
    var_0 = global0[_wgslsmith_index_u32(~func_2(_wgslsmith_clamp_u32(func_2(~var_0.b.x, Struct_2(Struct_1(var_0.a, var_0.b), false, vec3<bool>(false, false, true)), Struct_2(Struct_1(var_0.a, var_0.b), false, vec3<bool>(false, true, true)), Struct_2(global0[_wgslsmith_index_u32(47831u, 26u)], true, vec3<bool>(false, true, false))).x, 2247u, _wgslsmith_div_u32(~var_0.b.x, var_0.b.x)), Struct_2(Struct_1(-u_input.a, firstTrailingBit(var_0.b)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), Struct_2(Struct_1(-82434i, select(var_0.b, vec4<u32>(var_0.b.x, 7995u, 29482u, var_0.b.x), false)), true, vec3<bool>(true, true, true)), Struct_2(Struct_1(-5519i, var_0.b), true, vec3<bool>(var_0.b.x <= 0u, all(vec2<bool>(false, false)), true))).x, 26u)];
    global0 = array<Struct_1, 26>();
    let var_1 = 31347i;
    var var_2 = Struct_2(Struct_1(1i, vec4<u32>(var_0.b.x, abs(var_0.b.x), 1u, 0u)), false, vec3<bool>(true, true, true));
    return abs(19131u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(u_input.a, min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 10670u, func_1(), func_1()))), !any(vec3<bool>(true, true, true)), vec3<bool>(!(-26534i == u_input.a), _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, -20140i), u_input.a) <= ~0i, true));
    let var_1 = 682f;
    let var_2 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.a.b.x), vec2<u32>(var_0.a.b.x, 0u)), 68889u, firstTrailingBit(var_0.a.b.x)), func_3(1i, Struct_2(Struct_1(u_input.a, var_0.a.b), !var_0.c.x, select(vec3<bool>(false, var_0.c.x, true), var_0.c, var_0.c)), false, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, var_0.a.b.x), ~var_0.a.b.x, ~var_0.a.b.x)), var_0.a.b.x) & ~vec3<u32>(24579u, var_0.a.b.x, _wgslsmith_mod_u32(6394u, _wgslsmith_mod_u32(var_0.a.b.x, 6319u)));
    var_0 = Struct_2(var_0.a, any(select(var_0.c.zz, select(var_0.c.yz, var_0.c.xy, true), var_0.c.yz)) != true, vec3<bool>(any(vec4<bool>(!var_0.b, true, true, any(vec4<bool>(true, var_0.b, var_0.c.x, var_0.c.x)))), !var_0.c.x, false));
    var var_3 = select(var_0.c, var_0.c, var_0.c);
    var_3 = select(select(select(!var_0.c, select(vec3<bool>(var_3.x, false, var_3.x), select(var_0.c, vec3<bool>(var_0.b, var_0.c.x, var_3.x), var_0.c), select(var_0.c, var_0.c, var_0.c)), !(1u > var_2.x)), vec3<bool>(true, -736f == _wgslsmith_f_op_f32(-var_1), select(false, any(vec4<bool>(var_0.b, var_0.c.x, true, false)), true)), select(vec3<bool>(select(true, false, true), -16533i > u_input.a, var_3.x), !select(var_0.c, vec3<bool>(var_3.x, true, var_0.c.x), false), vec3<bool>(var_0.b, var_0.b, !var_3.x))), vec3<bool>(var_0.b, any(vec3<bool>(!var_3.x, true, var_1 <= 126f)), var_3.x), select(vec3<bool>(any(vec2<bool>(false, false)), var_3.x, false), !var_0.c, vec3<bool>(select(var_3.x, true, var_0.a.a > u_input.a), -u_input.a > -25668i, _wgslsmith_f_op_f32(-var_1) == _wgslsmith_f_op_f32(var_1 - var_1))));
    var_0 = Struct_2(Struct_1(u_input.a, vec4<u32>(1u, ~(~0u), 85229u, var_2.x)), !(var_0.c.x | var_0.b), select(!select(vec3<bool>(var_0.b, true, var_0.b), select(vec3<bool>(var_0.c.x, true, var_3.x), vec3<bool>(var_0.c.x, var_3.x, false), vec3<bool>(var_0.c.x, true, var_0.b)), !var_0.c), vec3<bool>(true, any(select(vec4<bool>(var_0.b, var_3.x, true, false), vec4<bool>(var_0.c.x, var_3.x, false, true), var_0.c.x)), select(var_0.b && false, !var_0.b, true)), any(select(var_3.xz, var_0.c.xx, vec2<bool>(var_3.x, var_0.b)))));
    let var_4 = global0[_wgslsmith_index_u32(50859u, 26u)];
    var_0 = Struct_2(Struct_1(_wgslsmith_sub_i32(2147483647i, ~9814i & (var_0.a.a >> (1u % 32u))), countOneBits(firstTrailingBit(max(vec4<u32>(var_0.a.b.x, var_4.b.x, var_0.a.b.x, var_4.b.x), vec4<u32>(var_0.a.b.x, 0u, var_4.b.x, var_0.a.b.x))))), !var_0.b, select(vec3<bool>(!var_0.b, true, any(vec3<bool>(var_3.x, false, var_0.b))), var_0.c, var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(var_0.a.b.x & 0u), var_0.a.b.x, ~max(49592u, var_4.b.x)) >> (var_2 % vec3<u32>(32u)));
}

