struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(vec2<i32>(1i, -2926i), true, vec2<u32>(4294967295u, 80685u), vec4<f32>(153f, -1921f, -663f, -2235f)), Struct_2(vec3<f32>(-2762f, 1263f, 150f), 29185i), vec4<i32>(1i, 26065i, 2972i, 2147483647i), true, 9845i), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), false, vec2<u32>(1212u, 32247u), vec4<f32>(-1000f, 140f, -852f, -809f)), Struct_2(vec3<f32>(1000f, -1991f, -854f), -17804i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 0i), true, i32(-2147483648)));

var<private> global1: Struct_3;

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(28563u, 36827u, 39694u, 1u), vec4<u32>(0u, 27067u, 0u, 1u), vec4<u32>(63400u, 29414u, 14833u, 34672u), vec4<u32>(92975u, 0u, 1u, 5679u), vec4<u32>(1000u, 4294967295u, 1u, 1u), vec4<u32>(23232u, 57352u, 76491u, 4294967295u), vec4<u32>(0u, 83202u, 0u, 4294967295u), vec4<u32>(32378u, 0u, 22102u, 90450u), vec4<u32>(4294967295u, 4294967295u, 63578u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(53201u, 1u, 4294967295u, 5417u), vec4<u32>(1u, 0u, 105658u, 4294967295u), vec4<u32>(1u, 1u, 0u, 52434u), vec4<u32>(40607u, 10264u, 0u, 0u), vec4<u32>(0u, 31750u, 0u, 87549u), vec4<u32>(0u, 25869u, 4294967295u, 22148u), vec4<u32>(35701u, 0u, 25497u, 0u), vec4<u32>(29105u, 4294967295u, 0u, 31157u), vec4<u32>(55363u, 4294967295u, 59014u, 52161u), vec4<u32>(4294967295u, 4294967295u, 36557u, 24153u), vec4<u32>(1u, 1u, 1u, 34178u), vec4<u32>(1u, 9641u, 55970u, 46508u), vec4<u32>(45610u, 21242u, 0u, 4294967295u), vec4<u32>(17971u, 0u, 1u, 4294967295u));

var<private> global4: array<f32, 14> = array<f32, 14>(-642f, 953f, -338f, -185f, -387f, -666f, -467f, 559f, -126f, -328f, -311f, -1002f, -1000f, 840f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_2) -> vec3<i32> {
    global1 = global0[_wgslsmith_index_u32(~(~(~u_input.a.x & 58074u)), 2u)];
    var var_0 = u_input.a.x;
    global0 = array<Struct_3, 2>();
    global2 = vec2<u32>(22344u, ~global2.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.d.x + global1.a.d.x) + _wgslsmith_f_op_f32(939f * 825f))), -434f) * global1.a.d.x);
    return u_input.d.xzx;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>) -> u32 {
    var var_0 = global1.d;
    let var_1 = Struct_4(global1.a.c.x, abs(((vec3<u32>(u_input.a.x, 0u, global2.x) ^ u_input.a.wyw) << (_wgslsmith_mod_vec3_u32(vec3<u32>(49541u, 64876u, 68786u), vec3<u32>(u_input.c, 1u, global2.x)) % vec3<u32>(32u))) & vec3<u32>(1u, ~global1.a.c.x, countOneBits(6655u))), max(~_wgslsmith_sub_i32(-2147483647i, arg_1.x & u_input.d.x), 1i), Struct_3(Struct_1(func_3(vec4<f32>(global1.a.d.x, global4[_wgslsmith_index_u32(64640u, 14u)], 1240f, global1.a.d.x), u_input.a, vec3<bool>(false, false, global1.a.b), global1.b).xz, !(global1.a.a.x <= 1i), ~vec2<u32>(85220u, 35901u), _wgslsmith_f_op_vec4_f32(global1.a.d - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.d.x, global4[_wgslsmith_index_u32(u_input.a.x, 14u)], -1237f, global1.b.a.x) - vec4<f32>(-832f, 1350f, -1027f, -154f)))), global1.b, vec4<i32>(~arg_1.x, -24712i >> (~u_input.c % 32u), ~select(2147483647i, arg_1.x, true), _wgslsmith_div_i32(0i, max(u_input.b, arg_1.x))), select(all(!vec4<bool>(true, true, global1.d, arg_0)), !arg_0, select(arg_0, true, true) & (global1.a.d.x < 801f)), reverseBits(~(~0i))));
    var var_2 = vec4<f32>(1012f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -203f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d.a.d.x + global4[_wgslsmith_index_u32(0u, 14u)]))))), global4[_wgslsmith_index_u32(~71825u, 14u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~12479u, ~0u, min(global2.x, 4294967295u)), 14u)])))));
    global1 = Struct_3(var_1.d.a, global1.b, ~(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(-37062i, var_1.d.c.x, arg_1.x, var_1.d.c.x), u_input.d, vec4<i32>(18583i, 2147483647i, global1.a.a.x, -1i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 0u, global2.x), vec4<u32>(4294967295u, 37213u, u_input.c, 1u)) % vec4<u32>(32u)))), select(select(false, arg_0, true), global1.d, true), arg_1.x);
    let var_3 = Struct_1(u_input.d.yx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1246f, 1f)), var_1.d.a.d.x) <= _wgslsmith_div_f32(942f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f))), u_input.a.zx, global1.a.d);
    return 0u;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(global1.a.d.xw * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.d.x))), global4[_wgslsmith_index_u32(arg_3.c.x, 14u)]) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.d.zy * _wgslsmith_div_vec2_f32(global1.a.d.zy, vec2<f32>(900f, global4[_wgslsmith_index_u32(8173u, 14u)]))))));
    return Struct_4(func_4(58127u < arg_3.c.x, _wgslsmith_sub_vec3_i32(-vec3<i32>(1i, u_input.e, global1.e), select(vec3<i32>(7022i, global1.b.b, global1.b.b), vec3<i32>(u_input.d.x, global1.a.a.x, -1i), vec3<bool>(true, arg_0, true))) | abs(func_3(vec4<f32>(global1.a.d.x, global1.b.a.x, global1.b.a.x, var_0.x), vec4<u32>(global1.a.c.x, global2.x, 11036u, 1u), vec3<bool>(false, true, false), Struct_2(arg_3.d.zyy, -38277i)))), u_input.a.yxw, ~global1.e, global0[_wgslsmith_index_u32((global2.x >> (4294967295u % 32u)) << (36267u % 32u), 2u)]);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> vec4<i32> {
    global1 = Struct_3(func_2(false, !(false || arg_3) & func_2(183f <= arg_2.a.d.x, true, arg_1.c.x, func_2(arg_2.d, false, u_input.c, Struct_1(global1.c.zz, false, u_input.a.wy, vec4<f32>(arg_0.d.a.d.x, global1.a.d.x, -3125f, global4[_wgslsmith_index_u32(u_input.a.x, 14u)]))).d.a).d.d, ~_wgslsmith_mod_u32(18727u, 32376u), arg_0.d.a).d.a, func_2(select(all(vec4<bool>(arg_0.d.d, false, true, false)), _wgslsmith_f_op_f32(-arg_1.d.x) > _wgslsmith_f_op_f32(abs(-1385f)), !(-2147483647i != arg_1.a.x)), arg_3, ~(func_4(arg_0.d.d, vec3<i32>(arg_2.e, global1.b.b, u_input.e)) & _wgslsmith_add_u32(0u, 4294967295u)), Struct_1(_wgslsmith_add_vec2_i32(arg_1.a, func_2(true, false, 84428u, global1.a).d.c.yw), !(!arg_3), arg_0.d.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a.d) + _wgslsmith_f_op_vec4_f32(arg_1.d + arg_1.d)))).d.b, ~(~(~vec4<i32>(-29457i, -9569i, arg_0.c, global1.b.b))), !(arg_1.d.x < _wgslsmith_f_op_f32(f32(-1f) * -772f)), arg_2.b.b);
    let var_0 = func_2(any(vec4<bool>(_wgslsmith_sub_u32(2804u, global1.a.c.x) > _wgslsmith_div_u32(arg_2.a.c.x, u_input.a.x), arg_1.b, false, global1.a.b)), !arg_2.d, global1.a.c.x, func_2(func_2(true, func_2(false, false, 39362u, Struct_1(vec2<i32>(u_input.b, arg_1.a.x), false, vec2<u32>(global1.a.c.x, 0u), arg_1.d)).d.a.b, _wgslsmith_dot_vec2_u32(arg_0.d.a.c, ~vec2<u32>(arg_2.a.c.x, 26627u)), Struct_1(vec2<i32>(arg_1.a.x, 6894i), true, func_2(true, true, global2.x, Struct_1(arg_0.d.a.a, false, vec2<u32>(arg_0.b.x, 79943u), vec4<f32>(arg_0.d.b.a.x, -170f, global4[_wgslsmith_index_u32(1u, 14u)], arg_0.d.a.d.x))).b.yx, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global4[_wgslsmith_index_u32(1u, 14u)], -1000f, arg_2.a.d.x, 798f))))).d.d, arg_2.a.b, _wgslsmith_div_u32(1u, arg_0.b.x), global1.a).d.a).d.a;
    var var_1 = arg_1.b && false;
    var_1 = _wgslsmith_f_op_f32(arg_2.a.d.x + _wgslsmith_f_op_f32(f32(-1f) * -578f)) == 1571f;
    let var_2 = Struct_1(u_input.d.wy << (vec2<u32>(_wgslsmith_dot_vec3_u32(~arg_0.b, vec3<u32>(global2.x, 0u, u_input.c)), 0u) % vec2<u32>(32u)), (_wgslsmith_sub_u32(arg_1.c.x, arg_0.b.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(37953u, 13286u), ~vec2<u32>(var_0.c.x, global1.a.c.x)) % 32u)) >= ~1u, vec2<u32>(24178u << (0u % 32u), ~min(~34053u, global1.a.c.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(9333u, 14u)]), _wgslsmith_f_op_f32(arg_1.d.x - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(39297u, 14u)] + arg_0.d.b.a.x) + 1718f), _wgslsmith_f_op_f32(1463f - 908f), _wgslsmith_f_op_f32(f32(-1f) * -1560f)), _wgslsmith_f_op_vec4_f32(arg_1.d * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_1.d + arg_1.d), _wgslsmith_div_vec4_f32(vec4<f32>(-676f, 259f, global4[_wgslsmith_index_u32(0u, 14u)], global1.a.d.x), arg_2.a.d)))), select(vec4<bool>(all(vec2<bool>(arg_2.a.b, true)), arg_0.d.a.b, arg_0.d.a.b, var_0.b), vec4<bool>(arg_1.b & true, true, false, true), (31423u > var_0.c.x) | any(vec2<bool>(false, false))))));
    return (vec4<i32>(-1i) * -max(~vec4<i32>(arg_1.a.x, var_0.a.x, 2147483647i, 20182i), _wgslsmith_mod_vec4_i32(vec4<i32>(-38764i, 1i, var_0.a.x, 0i), vec4<i32>(2147483647i, var_0.a.x, arg_0.c, 0i)))) & global1.c;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = max(_wgslsmith_div_vec4_i32(-vec4<i32>(13190i, _wgslsmith_sub_i32(global1.e, u_input.b), _wgslsmith_mod_i32(2147483647i, u_input.e), -18174i), vec4<i32>(_wgslsmith_dot_vec4_i32(global1.c, -u_input.d), _wgslsmith_mod_i32(~u_input.e, 3630i), ~(~global1.b.b), abs(-global1.b.b))), func_5(func_2(global1.d, ~(-2147483647i) != u_input.e, 22978u, global1.a), func_2(true, any(vec3<bool>(global1.d, true, false)), global2.x, global1.a).d.a, global0[_wgslsmith_index_u32(global1.a.c.x, 2u)], (global1.a.c.x << (global2.x % 32u)) > ~u_input.a.x));
    var var_1 = abs(u_input.e);
    let var_2 = global1.a;
    var var_3 = ~1u;
    var var_4 = func_2(0u == _wgslsmith_dot_vec2_u32(func_2(true, true, 4294967295u, Struct_1(u_input.d.zz, true, vec2<u32>(global2.x, 40328u), vec4<f32>(-971f, 1240f, var_2.d.x, -1014f))).d.a.c, firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, 0u), var_2.c))), var_2.b || false, abs(_wgslsmith_mult_u32(~63006u, 1u)), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-45278i, -var_2.a.x), var_0.yx), true, vec2<u32>(28235u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global1.a.c.x, 49149u), vec3<u32>(u_input.a.x, 4294967295u, 25347u)), 1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global1.a.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global1.b.a.x, arg_0.x, arg_0.x) - vec4<f32>(global4[_wgslsmith_index_u32(u_input.c, 14u)], -368f, global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(global2.x, 14u)])))))).d.a;
    return func_2(false || select(any(!vec4<bool>(true, var_4.b, true, global1.a.b)), any(!vec2<bool>(true, global1.a.b)), var_2.b), false, ~(_wgslsmith_add_u32(u_input.c, 61730u) << (1u % 32u)), func_2(false, !all(vec3<bool>(false, global1.a.b, false)), abs(func_2(any(vec4<bool>(global1.d, global1.d, false, false)), true, func_2(var_2.b, var_4.b, 89504u, global1.a).b.x, Struct_1(var_4.a, var_2.b, vec2<u32>(var_4.c.x, 30046u), vec4<f32>(global1.a.d.x, -534f, var_4.d.x, -602f))).d.a.c.x), func_2(all(select(vec3<bool>(false, global1.a.b, true), vec3<bool>(var_4.b, var_2.b, false), true)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1.a.c.x, 14u)]) >= _wgslsmith_f_op_f32(round(arg_0.x)), 37610u, func_2(false, !var_4.b, ~var_4.c.x, Struct_1(var_0.zy, false, var_2.c, var_4.d)).d.a).d.a).d.a).d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(u_input.c, 14u)], 1000f)) + -1793f));
    global4 = array<f32, 14>();
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.d)))));
    let var_2 = func_2(false, 675f >= func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a.d.x, global4[_wgslsmith_index_u32(39402u, 14u)], global4[_wgslsmith_index_u32(1u, 14u)], -309f), var_1.d))))).d.x, ~(~1u), Struct_1(var_1.a, false, ~vec2<u32>(countOneBits(4294967295u), ~1u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(global1.a.d, vec4<f32>(827f, 958f, global1.b.a.x, 1824f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d)), !all(vec3<bool>(var_1.b, false, true)))))).d.b.a;
    let var_3 = vec3<bool>(true, global1.d, global1.d);
    var var_4 = vec4<f32>(func_2(func_2(true | var_1.b, true, ~(u_input.c >> (global2.x % 32u)), Struct_1(vec2<i32>(u_input.d.x, global1.b.b) << (vec2<u32>(80919u, u_input.c) % vec2<u32>(32u)), true, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, var_1.c.x), vec2<u32>(var_1.c.x, var_1.c.x)), var_1.d)).d.d, select(var_1.b, any(select(vec4<bool>(var_3.x, var_3.x, global1.a.b, false), vec4<bool>(var_1.b, var_3.x, var_1.b, false), true)), var_1.b), _wgslsmith_sub_u32(~39641u, global1.a.c.x), func_1(global1.a.d)).d.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-776f + -1043f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(f32(-1f) * -1212f)))), _wgslsmith_div_f32(func_2(!var_3.x, true, ~global2.x, Struct_1(global1.a.a, var_1.b, var_1.c, vec4<f32>(var_2.x, global1.b.a.x, global1.a.d.x, var_1.d.x))).d.a.d.x, -1489f)), global4[_wgslsmith_index_u32(~global1.a.c.x, 14u)]);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~10520u), var_1.c.x, firstTrailingBit(vec3<i32>(0i, countOneBits(var_1.a.x ^ global1.e), -33687i >> (_wgslsmith_clamp_u32(var_1.c.x, 20942u, global2.x) % 32u))));
}

