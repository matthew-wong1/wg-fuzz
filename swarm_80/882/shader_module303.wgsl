struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(false, Struct_1(vec4<bool>(true, false, true, false), 27065u, vec3<i32>(-1i, 2147483647i, 0i), vec2<u32>(121231u, 75044u))), Struct_2(false, Struct_1(vec4<bool>(true, true, false, false), 83549u, vec3<i32>(-1i, 0i, 8448i), vec2<u32>(1u, 1u))), Struct_2(true, Struct_1(vec4<bool>(true, false, false, false), 0u, vec3<i32>(48004i, -37009i, -17855i), vec2<u32>(96890u, 1u))), Struct_2(false, Struct_1(vec4<bool>(true, true, true, true), 1u, vec3<i32>(-1i, i32(-2147483648), 23835i), vec2<u32>(0u, 17704u))), Struct_2(false, Struct_1(vec4<bool>(true, false, true, true), 1u, vec3<i32>(-20363i, 2147483647i, 17875i), vec2<u32>(1u, 1u))), Struct_2(false, Struct_1(vec4<bool>(false, true, false, true), 0u, vec3<i32>(i32(-2147483648), -7379i, 1i), vec2<u32>(63950u, 51206u))), Struct_2(true, Struct_1(vec4<bool>(true, false, false, true), 53059u, vec3<i32>(-57072i, 501i, -1i), vec2<u32>(52437u, 49648u))), Struct_2(true, Struct_1(vec4<bool>(true, false, false, true), 67226u, vec3<i32>(-22031i, 1i, 2147483647i), vec2<u32>(0u, 36625u))), Struct_2(true, Struct_1(vec4<bool>(true, true, false, false), 4294967295u, vec3<i32>(50302i, 0i, 1i), vec2<u32>(1u, 4294967295u))), Struct_2(false, Struct_1(vec4<bool>(false, false, false, true), 16987u, vec3<i32>(0i, 31471i, 57076i), vec2<u32>(36864u, 9425u))), Struct_2(true, Struct_1(vec4<bool>(true, true, false, false), 81387u, vec3<i32>(2147483647i, 15123i, -1i), vec2<u32>(47147u, 0u))), Struct_2(false, Struct_1(vec4<bool>(false, false, true, false), 46575u, vec3<i32>(0i, 25128i, 8719i), vec2<u32>(54116u, 1u))), Struct_2(false, Struct_1(vec4<bool>(true, true, false, false), 41639u, vec3<i32>(-1i, -4467i, -8499i), vec2<u32>(4294967295u, 0u))), Struct_2(true, Struct_1(vec4<bool>(false, true, false, false), 4294967295u, vec3<i32>(2147483647i, 0i, -1i), vec2<u32>(49802u, 14730u))), Struct_2(false, Struct_1(vec4<bool>(true, true, true, true), 1738u, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec2<u32>(9322u, 1u))), Struct_2(true, Struct_1(vec4<bool>(true, true, true, true), 4170u, vec3<i32>(3658i, 4086i, -44860i), vec2<u32>(1u, 28327u))), Struct_2(false, Struct_1(vec4<bool>(false, false, false, true), 0u, vec3<i32>(0i, -61671i, 24602i), vec2<u32>(90499u, 1u))), Struct_2(false, Struct_1(vec4<bool>(true, true, false, false), 0u, vec3<i32>(-2573i, -39819i, 1i), vec2<u32>(28581u, 102839u))), Struct_2(true, Struct_1(vec4<bool>(false, false, false, false), 4294967295u, vec3<i32>(-1i, 2147483647i, -21732i), vec2<u32>(46318u, 1u))), Struct_2(false, Struct_1(vec4<bool>(false, false, false, true), 16639u, vec3<i32>(1i, 32197i, 1i), vec2<u32>(28428u, 25130u))), Struct_2(true, Struct_1(vec4<bool>(false, true, false, false), 4294967295u, vec3<i32>(1i, i32(-2147483648), -10514i), vec2<u32>(5481u, 1u))), Struct_2(false, Struct_1(vec4<bool>(true, true, false, false), 4294967295u, vec3<i32>(2147483647i, 21800i, 3734i), vec2<u32>(1u, 24084u))), Struct_2(false, Struct_1(vec4<bool>(true, true, true, true), 4294967295u, vec3<i32>(-1i, 18992i, 20100i), vec2<u32>(4294967295u, 81092u))), Struct_2(true, Struct_1(vec4<bool>(false, true, true, false), 20176u, vec3<i32>(11774i, 0i, 15447i), vec2<u32>(4294967295u, 4294967295u))), Struct_2(true, Struct_1(vec4<bool>(false, true, true, true), 1u, vec3<i32>(2795i, 1i, i32(-2147483648)), vec2<u32>(4294967295u, 0u))), Struct_2(false, Struct_1(vec4<bool>(true, false, false, false), 55036u, vec3<i32>(0i, 1i, -1i), vec2<u32>(4294967295u, 431u))), Struct_2(false, Struct_1(vec4<bool>(true, false, true, false), 17711u, vec3<i32>(0i, i32(-2147483648), -46711i), vec2<u32>(11279u, 0u))));

var<private> global2: vec2<f32>;

var<private> global3: Struct_2 = Struct_2(true, Struct_1(vec4<bool>(true, false, true, false), 0u, vec3<i32>(-16764i, -7406i, 2147483647i), vec2<u32>(1u, 4948u)));

var<private> global4: array<i32, 22> = array<i32, 22>(45225i, -14778i, i32(-2147483648), 2147483647i, -1i, 1i, 7449i, -27615i, 2147483647i, 2147483647i, i32(-2147483648), 1i, -4329i, -22315i, 2147483647i, 0i, 1i, 1i, -1i, 49053i, 1i, -1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> i32 {
    var var_0 = vec4<bool>(select(true, !select(global3.a, false, global3.a && global3.a), false), global3.b.a.x, true, true);
    global3 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(1u), u_input.b.x, _wgslsmith_add_u32(_wgslsmith_add_u32(global3.b.d.x, global3.b.b), 46450u >> (0u % 32u)), u_input.a.x), max(u_input.a, countOneBits(u_input.a))), 27u)];
    global2 = vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.x, 461f)), global2.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1325f, _wgslsmith_f_op_f32(select(-1614f, 1045f, global3.a)), _wgslsmith_div_f32(global2.x, arg_1.x), _wgslsmith_f_op_f32(-global2.x))))));
    var var_2 = select(var_0.xx, vec2<bool>(true, global3.a), global3.a);
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(global3.b.c.xy), _wgslsmith_clamp_vec2_i32(u_input.c, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, arg_0), global3.b.c.yx), select(vec2<i32>(global3.b.c.x, 80290i), vec2<i32>(0i, u_input.d), global3.b.a.xx)) << (((u_input.a.wx | u_input.a.wy) ^ vec2<u32>(60924u, 57551u)) % vec2<u32>(32u))), -27395i);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec3<bool> {
    global0 = array<vec3<bool>, 31>();
    let var_0 = vec2<f32>(1330f, _wgslsmith_f_op_f32(floor(arg_1)));
    var var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(25687u, 11515u & global3.b.b)), 27u)];
    var var_2 = ~(~4294967295u);
    let var_3 = var_1.b;
    return vec3<bool>(arg_2.a & false, true, select(!(-1i != func_3(-4214i, vec2<f32>(arg_1, 826f))), !(true && !arg_0.a.x), ~firstTrailingBit(22917i) <= -func_3(0i, vec2<f32>(374f, global2.x))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(!global3.b.a, ~(u_input.a.x ^ 1u), _wgslsmith_sub_vec3_i32(global3.b.c, select(max(-global3.b.c, vec3<i32>(u_input.c.x, u_input.c.x, 2707i)), global3.b.c << (arg_0 % vec3<u32>(32u)), func_2(Struct_1(global3.b.a, u_input.b.x, vec3<i32>(global3.b.c.x, 9223i, -2147483647i), vec2<u32>(arg_0.x, 51947u)), _wgslsmith_div_f32(global2.x, global2.x), global1[_wgslsmith_index_u32(1u, 27u)]))), global3.b.d);
    global4 = array<i32, 22>();
    global1 = array<Struct_2, 27>();
    var var_1 = var_0.d;
    global3 = Struct_2(!(!(!var_0.a.x)) == true, Struct_1(select(!(!var_0.a), vec4<bool>(true, any(vec2<bool>(true, var_0.a.x)), global2.x > 1845f, global3.b.a.x), var_0.a), ~u_input.a.x, vec3<i32>(min(-1i, ~u_input.c.x), global3.b.c.x, global3.b.c.x), u_input.b.xz));
    return Struct_1(!vec4<bool>(!(false & var_0.a.x), _wgslsmith_f_op_f32(global2.x * 173f) >= _wgslsmith_f_op_f32(max(1756f, 914f)), !(var_0.a.x && global3.b.a.x), global3.a), ~min(min(arg_0.x, ~var_0.b), var_0.d.x), ~vec3<i32>(var_0.c.x, min(global3.b.c.x, -45032i) ^ global3.b.c.x, 0i), vec2<u32>(~(~reverseBits(0u)), _wgslsmith_clamp_u32(max(0u, ~arg_0.x), var_1.x, var_1.x >> (~38436u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~vec3<u32>(~1u, ~35027u, ~1u) ^ vec3<u32>(~(~0u), global3.b.b >> (global3.b.b % 32u), ~u_input.b.x));
    global1 = array<Struct_2, 27>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-284f, _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(exp2(global2.x))))) * vec2<f32>(677f, global2.x));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(max(abs(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a)), ~(~u_input.a))), ~vec4<u32>(global3.b.d.x, u_input.a.x, 31901u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.b, 0u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)))), 27u)];
    global1 = array<Struct_2, 27>();
    global4 = array<i32, 22>();
    let var_3 = firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-48534i, -51259i, -27229i, 10465i), vec4<i32>(-4273i, 18877i, global3.b.c.x, -1i)), vec4<i32>(0i, 48374i, var_0.c.x, firstLeadingBit(2147483647i))) << (u_input.a % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global3.b.c, max(_wgslsmith_div_vec3_i32(var_2.b.c, vec3<i32>(var_2.b.c.x, -5538i, -28418i)), vec3<i32>(global3.b.c.x, var_3.x, 18966i) << (u_input.b % vec3<u32>(32u)))), var_0.c), ~(~(_wgslsmith_add_u32(53371u, 49910u) & func_1(vec3<u32>(4294967295u, var_2.b.b, 0u)).d.x)), _wgslsmith_f_op_f32(491f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, var_1.x)))));
}

