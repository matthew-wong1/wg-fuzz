struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 10521u, 11280u, 0u), vec4<u32>(4294967295u, 20304u, 25015u, 54789u), vec4<u32>(123675u, 0u, 1u, 15253u), vec4<u32>(1u, 0u, 6929u, 23492u), vec4<u32>(25396u, 1u, 0u, 1u), vec4<u32>(1u, 1u, 1u, 26666u), vec4<u32>(4294967295u, 19602u, 0u, 73081u), vec4<u32>(1u, 1323u, 7718u, 109784u), vec4<u32>(1u, 504u, 52077u, 1u), vec4<u32>(1u, 57709u, 1u, 11315u), vec4<u32>(5499u, 23575u, 75160u, 3860u), vec4<u32>(52657u, 83157u, 9618u, 67505u), vec4<u32>(9727u, 41477u, 3069u, 5192u), vec4<u32>(29563u, 1u, 0u, 1u), vec4<u32>(70535u, 53743u, 4294967295u, 0u), vec4<u32>(33978u, 12573u, 44880u, 1u), vec4<u32>(4294967295u, 31318u, 4294967295u, 20455u), vec4<u32>(4294967295u, 35169u, 1u, 1u), vec4<u32>(36905u, 5361u, 0u, 30495u), vec4<u32>(4294967295u, 15704u, 23155u, 0u), vec4<u32>(0u, 51736u, 4294967295u, 0u), vec4<u32>(2239u, 19112u, 1u, 0u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(0u, 0u, 1u, 66505u), vec4<u32>(1u, 0u, 109393u, 4294967295u), vec4<u32>(0u, 13740u, 0u, 37446u), vec4<u32>(67488u, 7630u, 76602u, 1u), vec4<u32>(59593u, 3577u, 4294967295u, 6802u));

var<private> global1: f32;

var<private> global2: array<u32, 28>;

var<private> global3: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_5) -> u32 {
    global3 = arg_0.b.a.x;
    global2 = array<u32, 28>();
    global3 = all(arg_1.b.a.zy);
    var var_0 = Struct_3(arg_0.b.c.a);
    let var_1 = Struct_1(u_input.a);
    return 0u;
}

fn func_3() -> vec3<bool> {
    var var_0 = ~(-u_input.b);
    var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(33465u, 1u, ~1u), ~reverseBits(vec3<u32>(90777u, global2[_wgslsmith_index_u32(62807u, 28u)], u_input.c.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28597u) & select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], u_input.c.x, false), global2[_wgslsmith_index_u32(~abs(global2[_wgslsmith_index_u32(72132u, 28u)]), 28u)]), vec3<u32>(~firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c.x, 28u)]), ~(~114289u), u_input.a)));
    var var_2 = _wgslsmith_div_vec3_i32(abs(firstLeadingBit(-vec3<i32>(u_input.b, -17803i, u_input.b) | select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-22373i, 2147483647i, 9686i), true))), reverseBits(vec3<i32>(select(u_input.b | u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b), true), max(u_input.b, min(39692i, u_input.b)), 15836i)));
    global1 = _wgslsmith_f_op_f32(-495f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(333f, -949f))));
    var var_3 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    return select(vec3<bool>(true, var_3.x, var_3.x), select(select(!select(vec3<bool>(true, false, var_3.x), vec3<bool>(var_3.x, var_3.x, true), var_3.x), vec3<bool>(true, true, true), vec3<bool>(false, all(vec3<bool>(false, var_3.x, var_3.x)), true)), !select(vec3<bool>(var_3.x, true, var_3.x), !vec3<bool>(false, var_3.x, var_3.x), all(var_3.zz)), !(!select(vec3<bool>(true, var_3.x, true), vec3<bool>(var_3.x, true, true), vec3<bool>(false, var_3.x, var_3.x)))), !(var_3.x || any(vec3<bool>(var_3.x, true, var_3.x))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_1 {
    global0 = array<vec4<u32>, 29>();
    var var_0 = Struct_3(Struct_1(~((u_input.c.x << (arg_2.c.a.a % 32u)) & ~global2[_wgslsmith_index_u32(40507u, 28u)])));
    let var_1 = select(u_input.b, arg_0 ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(-92820i, 17303i, -40065i, u_input.b), vec4<i32>(2147483647i, u_input.b, u_input.b, -7868i) & vec4<i32>(-1i, -1i, 2147483647i, -7822i)), all(select(!vec4<bool>(false, arg_1.x, false, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, true, true), !vec4<bool>(arg_2.a.x, arg_1.x, true, arg_2.a.x)))) >> (global2[_wgslsmith_index_u32(~(_wgslsmith_div_u32(89739u, 1u) << (arg_2.c.a.a % 32u)) & arg_2.c.a.a, 28u)] % 32u);
    global2 = array<u32, 28>();
    var var_2 = ~(~u_input.c);
    return arg_2.c.a;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.b);
    var var_1 = arg_2;
    var var_2 = Struct_4(vec3<bool>(arg_2.a.x, all(select(select(vec3<bool>(true, false, false), vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_2.a), select(vec3<bool>(arg_2.a.x, arg_2.a.x, false), arg_2.a, var_1.a), select(vec3<bool>(true, true, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, false), arg_2.a.x))), true), var_1.b, arg_2.c);
    let var_3 = Struct_3(var_1.c.a);
    let var_4 = _wgslsmith_add_vec4_i32((-vec4<i32>(-5640i, u_input.b, -8609i, 0i) | (vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ vec4<i32>(-17831i, u_input.b, u_input.b, 1i))) ^ ~vec4<i32>(u_input.b, u_input.b, -278i, 19539i), abs(abs(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b) & vec4<i32>(u_input.b, -30932i, u_input.b, u_input.b)))) >> (~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 10363u, 4294967295u), vec3<u32>(70669u, 0u, var_3.a.a) ^ vec3<u32>(var_2.c.a.a, var_2.c.a.a, u_input.a)) << (global2[_wgslsmith_index_u32(func_4(~(-40270i), var_2.a, arg_2).a, 28u)] % 32u), 29u)] % vec4<u32>(32u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-1424f * 2127f), _wgslsmith_f_op_f32(-var_1.b.x), var_0.x, -1043f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 740f, -1051f, var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, -179f, var_0.x, -316f) + vec4<f32>(-448f, var_0.x, 1000f, 423f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-884f, var_0.x, 896f, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-219f, var_1.b.x, -144f, -769f) + vec4<f32>(-839f, var_2.b.x, var_0.x, 856f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(sign(-739f)), _wgslsmith_f_op_f32(f32(-1f) * -2077f), _wgslsmith_f_op_f32(abs(var_0.x)))), !select(select(vec4<bool>(arg_2.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(var_2.a.x, true, arg_2.a.x, true), false), select(vec4<bool>(arg_2.a.x, true, var_1.a.x, false), vec4<bool>(true, var_2.a.x, false, false), var_1.a.x), vec4<bool>(var_1.a.x, var_2.a.x, false, var_2.a.x)))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = 22589u;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_5(func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 4550i) & vec2<i32>(43104i, 56642i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -3664i), vec2<i32>(u_input.b, u_input.b))) << ((func_2(Struct_5(vec2<f32>(625f, -401f), Struct_4(vec3<bool>(true, false, false), vec2<f32>(815f, 669f), Struct_2(Struct_1(global2[_wgslsmith_index_u32(14863u, 28u)])))), Struct_5(vec2<f32>(431f, -1116f), Struct_4(vec3<bool>(true, false, false), vec2<f32>(767f, 1389f), Struct_2(Struct_1(var_0))))) & arg_1) % 32u), select(func_3(), vec3<bool>(true, true, true), !func_3()), Struct_4(func_3(), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-785f, -657f), vec2<f32>(-1374f, 1289f)))), Struct_2(Struct_1(u_input.a)))), ~abs(0u ^ abs(arg_0)), Struct_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), select(false, arg_0 > global2[_wgslsmith_index_u32(0u, 28u)], any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-108f, -198f))) * vec2<f32>(-1464f, 1005f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(504f, -1301f))), Struct_2(func_4(-2147483647i, vec3<bool>(true, true, true), Struct_4(vec3<bool>(false, true, true), vec2<f32>(-737f, -780f), Struct_2(Struct_1(var_0))))))));
    var var_2 = all(select(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), func_3().x)));
    global2 = array<u32, 28>();
    let var_3 = global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(1u, arg_0), 26725u) >> (arg_1 % 32u), 28u)], 29u)];
    return func_4(i32(-1i) * -_wgslsmith_clamp_i32(-31551i, 2147483647i, -2147483647i), select(vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), all(vec3<bool>(true, true, true)), true), vec3<bool>(true, (var_1.x >= 966f) && true, false), true), Struct_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(all(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, false)), false)), var_1.yw, Struct_2(Struct_1(select(1u, 1u, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(max(86283u << (u_input.c.x % 32u), ~_wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(16956u, 28u)], 3703u, 1u), vec3<u32>(global2[_wgslsmith_index_u32(27481u, 28u)], u_input.c.x, 4294967295u)))), u_input.a, ~(-u_input.b));
    global0 = array<vec4<u32>, 29>();
    var var_1 = _wgslsmith_f_op_f32(floor(1257f));
    var var_2 = vec2<bool>(true, true);
    global1 = -550f;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~(-11116i)));
}

