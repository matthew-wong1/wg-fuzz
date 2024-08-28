struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec3<bool>, 18>;

var<private> global2: Struct_4 = Struct_4(Struct_3(vec2<i32>(37803i, 2147483647i), -1724f, Struct_2(Struct_1(vec3<f32>(-1513f, -157f, -118f), -817f, i32(-2147483648)), 1u, vec2<i32>(-1i, -2844i), 40092i), vec4<u32>(1u, 1u, 4294967295u, 85168u), Struct_2(Struct_1(vec3<f32>(1678f, -288f, 618f), 164f, 35105i), 106568u, vec2<i32>(2147483647i, 26458i), 5484i)), 701f, Struct_3(vec2<i32>(53579i, -32521i), 755f, Struct_2(Struct_1(vec3<f32>(1270f, -902f, -415f), -1000f, -18425i), 4294967295u, vec2<i32>(16304i, -36723i), -20989i), vec4<u32>(2482u, 4294967295u, 54402u, 1u), Struct_2(Struct_1(vec3<f32>(-636f, 1100f, 618f), -1689f, 13139i), 46964u, vec2<i32>(-1i, 9482i), -23044i)));

var<private> global3: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

var<private> global4: array<Struct_4, 28>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: u32) -> vec4<bool> {
    let var_0 = global2.c.d.wyy;
    let var_1 = vec2<bool>(true, true);
    global4 = array<Struct_4, 28>();
    global1 = array<vec3<bool>, 18>();
    var var_2 = arg_0;
    return vec4<bool>(all(!select(vec3<bool>(false, true, var_1.x), vec3<bool>(false, var_1.x, true), var_1.x)) && true, false, var_1.x, true);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> bool {
    let var_0 = !arg_1.x;
    return arg_1.x;
}

fn func_1() -> Struct_2 {
    var var_0 = select(select(vec4<bool>(!all(vec4<bool>(false, true, true, true)), !(0u == global2.c.e.b), false, any(vec2<bool>(false, true))), select(select(func_2(vec4<f32>(-366f, -629f, global2.c.b, global2.a.c.a.b), global2.c.e.b, global2.c.d.x), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)), vec4<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), false, true), false), vec4<bool>(global2.a.c.a.b >= global2.a.b, select(true, global2.c.c.a.a.x <= 975f, true), !func_3(2147483647i, vec3<bool>(true, true, true), u_input.a, vec4<f32>(global2.b, global2.c.e.a.a.x, global2.b, global2.a.c.a.a.x)), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(global2.c.e.c.x != -10131i, true, false, true), vec4<bool>(global2.a.e.b == global2.a.c.b, false, true, true)), select(vec4<bool>(true, true, true, true), func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(693f, -243f, global2.a.c.a.b, global2.b))), _wgslsmith_clamp_u32(14390u, 0u, 1u), 1u), select(func_2(vec4<f32>(123f, global2.a.b, 572f, global2.c.b), 54325u, 4294967295u), vec4<bool>(true, true, true, true), func_2(vec4<f32>(-1000f, global2.a.c.a.b, global2.b, global2.b), 4256u, global2.a.c.b))), false & (_wgslsmith_dot_vec2_u32(global2.a.d.yw, vec2<u32>(global2.a.c.b, 1u)) != global2.a.e.b)), vec4<bool>(func_3(-_wgslsmith_add_i32(22091i, global2.c.a.x), global3[_wgslsmith_index_u32(1u, 9u)], vec4<i32>(global2.c.e.c.x | u_input.a.x, max(global2.c.e.d, 2147483647i), 45522i | global2.c.a.x, u_input.b.x), vec4<f32>(-341f, -2337f, _wgslsmith_f_op_f32(trunc(-1930f)), global2.a.c.a.b)), true, select(any(func_2(vec4<f32>(398f, global2.a.c.a.a.x, -803f, global2.b), global2.c.e.b, global2.a.d.x).zxz), func_2(vec4<f32>(1276f, -351f, -538f, -970f), ~global2.c.c.b, ~global2.c.e.b).x, select(func_2(vec4<f32>(global2.b, global2.a.c.a.b, -1323f, global2.b), global2.c.e.b, global2.c.c.b).x, false, 0u != global2.c.d.x)), select(u_input.a.x, 0i, true) > 54618i));
    global2 = Struct_4(Struct_3(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -1i, -1i), vec3<i32>(global2.c.c.a.c, -1i, -17637i)), countOneBits(vec3<i32>(0i, -1i, u_input.a.x))), -1i), -252f, global2.a.c, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(98940u, global2.a.e.b), global2.a.c.b, 4294967295u, min(9462u, 24668u)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global2.c.e.b, 1u, global2.a.e.b), global2.a.d), global2.a.d | vec4<u32>(global2.c.c.b, global2.a.e.b, global2.a.d.x, 0u))), global2.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.b, global2.a.e.a.a.x))), global2.a);
    var var_1 = ~0u;
    let var_2 = Struct_5(select(global2.c.c.b, ~4294967295u, false));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.b, -1683f)))))));
    return global2.c.e;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_4, 28>();
    let var_0 = global4[_wgslsmith_index_u32(38585u, 28u)];
    global3 = array<vec3<bool>, 9>();
    let var_1 = Struct_4(Struct_3(~u_input.a.yw, 712f, func_1(), ~global2.a.d, Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a.e.b, min(0u, 9824u)), 17u)], abs(45457u), vec2<i32>(~9253i, 0i), 19699i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-158f + var_0.c.b), -246f), _wgslsmith_f_op_f32(-global2.c.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.c.a.b))))), Struct_3(~(-vec2<i32>(56809i, 2147483647i)) ^ (_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, global2.c.c.a.c), vec2<i32>(global2.a.c.c.x, 39420i)) & vec2<i32>(2147483647i, 10007i)), _wgslsmith_f_op_f32(-global2.a.b), func_1(), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, global2.c.c.b, 4294967295u, global2.c.e.b), vec4<u32>(4294967295u, var_0.a.d.x, 1u, global2.c.d.x), min(vec4<u32>(28484u, var_0.c.e.b, 4294967295u, 1u), vec4<u32>(0u, var_0.c.d.x, 1u, 56363u))), ~global2.a.d), var_0.c.e));
    global2 = Struct_4(Struct_3(vec2<i32>(global2.a.a.x, i32(-1i) * -var_0.a.a.x), func_1().a.a.x, func_1(), vec4<u32>(global2.a.d.x, ~(~48439u), _wgslsmith_div_u32(~var_1.c.e.b, abs(global2.c.e.b)), _wgslsmith_mod_u32(var_1.c.e.b, 1u)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c.e.a.a), _wgslsmith_f_op_f32(ceil(var_1.b)), 2147483647i), 10423u, vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.a.wzz)), 0i)), -711f, Struct_3(~(-vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(func_1().a.b * func_1().a.b), func_1(), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(72880u, var_0.a.e.b, 1u, 1u), vec4<u32>(62484u, 39278u, 49476u, 35721u)), ~global2.a.d), ~global2.a.d), func_1()));
    var var_2 = Struct_5(~_wgslsmith_mult_u32(global2.a.c.b, _wgslsmith_dot_vec3_u32(global2.a.d.yzy, global2.a.d.xzy | vec3<u32>(97254u, var_1.a.c.b, var_0.a.c.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().c, _wgslsmith_div_vec2_f32(vec2<f32>(434f, -1054f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.a.e.a.a.xy, vec2<f32>(-227f, var_0.a.c.a.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.c.a.a.yy)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), ~(global2.a.d.ywy >> (~vec3<u32>(global2.c.c.b, global2.c.c.b, global2.a.e.b) % vec3<u32>(32u))));
}

