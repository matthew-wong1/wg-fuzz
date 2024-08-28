struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_2,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(4294967295u), Struct_2(39484u), Struct_2(0u), Struct_2(0u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(6089u), Struct_2(4294967295u), Struct_2(4294967295u));

var<private> global1: vec4<f32> = vec4<f32>(1096f, -562f, 971f, 591f);

var<private> global2: Struct_3;

var<private> global3: vec4<i32> = vec4<i32>(-1i, 27365i, -33992i, 1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = -2185f;
    var var_1 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(global3.wyy, ~(arg_0.c.zwz & vec3<i32>(global2.d, global2.d, 1i)))), global3.xzx);
    let var_2 = true;
    var var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, 606f, var_2))))), _wgslsmith_f_op_f32(f32(-1f) * -515f)), Struct_3(arg_2, _wgslsmith_dot_vec4_i32(~min(vec4<i32>(1i, u_input.a.x, 2147483647i, -13346i), arg_0.c), arg_0.c << ((vec4<u32>(u_input.d, 18923u, global2.a, u_input.b) >> (vec4<u32>(arg_2, 1u, 70807u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), !global2.c, ~select(firstTrailingBit(1i), ~arg_1, all(vec2<bool>(arg_0.a.x, var_2)))), global0[_wgslsmith_index_u32(60473u, 10u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)), _wgslsmith_f_op_f32(-global1.x)), Struct_3(firstTrailingBit(arg_0.d.x), i32(-1i) * -2147483647i, true, -1i));
    var var_4 = _wgslsmith_mod_i32(-abs(_wgslsmith_mod_i32(-2147483647i, arg_0.c.x) | _wgslsmith_sub_i32(-2147483647i, global3.x)), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.c.x, ~2147483647i, 3380i), _wgslsmith_sub_vec3_i32(global3.wxz, vec3<i32>(u_input.a.x, abs(2147483647i), _wgslsmith_add_i32(arg_1, 21906i)))));
    return -774f;
}

fn func_2() -> i32 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-990f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(global2.c, global2.c), global2.c, vec4<i32>(10420i, global2.b, -5268i, u_input.a.x), vec3<u32>(4294967295u, global2.a, u_input.d), global2.d), global2.b, u_input.c.x)) + _wgslsmith_f_op_f32(sign(global1.x))), 982f, global1.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1132f, 1270f, 788f, global1.x) * vec4<f32>(global1.x, -973f, -267f, 838f))))));
    var var_0 = !select(select(!(!vec4<bool>(global2.c, global2.c, true, global2.c)), select(vec4<bool>(global2.c, false, global2.c, global2.c), !vec4<bool>(false, global2.c, global2.c, global2.c), !global2.c), global2.c), vec4<bool>(true, false, true, any(vec2<bool>(false, global2.c))), vec4<bool>(true, !global2.c, true, true));
    global2 = Struct_3(u_input.c.x, _wgslsmith_sub_i32(global2.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(4634i, -46549i), ~u_input.a), u_input.a.x)), select(global2.c, !(!(!var_0.x)), !select(global2.c, var_0.x, !global2.c)), ~(-2147483647i));
    let var_1 = !(!vec4<bool>(!any(vec4<bool>(true, false, global2.c, true)), var_0.x, !(global1.x > -461f), global1.x >= global1.x));
    let var_2 = global3.zy;
    return abs(i32(-1i) * -2056i);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = true;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(685f, arg_2, arg_2, arg_1.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -761f, 1000f, global1.x) * vec4<f32>(arg_2, 1116f, 1434f, 892f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, global1.x, arg_2, arg_1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, global1.x, -961f, global1.x), vec4<f32>(arg_1.x, arg_1.x, 844f, -364f))))), true)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_2, arg_1.x, 1000f), vec4<f32>(global1.x, arg_2, -849f, -319f)) - vec4<f32>(-873f, -503f, arg_2, -1000f)))))));
    let var_2 = Struct_5(Struct_3(_wgslsmith_clamp_u32(min(global2.a, 21918u) >> (~global2.a % 32u), 82287u, ~max(global2.a, u_input.d)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global3.yxx, abs(global3.yyw), firstTrailingBit(vec3<i32>(u_input.a.x, 0i, 0i))), -vec3<i32>(-1i, global3.x, global2.d)), any(select(vec4<bool>(global2.c, global2.c, global2.c, true), select(vec4<bool>(global2.c, false, false, global2.c), vec4<bool>(false, global2.c, global2.c, false), vec4<bool>(true, global2.c, false, true)), !global2.c)), firstLeadingBit(~u_input.a.x)), global0[_wgslsmith_index_u32(~(abs(~arg_0.a) >> (1u % 32u)), 10u)], vec2<bool>(any(select(!vec4<bool>(false, global2.c, true, true), !vec4<bool>(true, true, global2.c, false), !vec4<bool>(global2.c, true, global2.c, global2.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)))) < global1.x), vec2<bool>(true, min(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.d, 7148i, -30632i, -675i), vec4<i32>(-64126i, -33008i, 44791i, global3.x))) != _wgslsmith_add_i32(3641i, ~1i)));
    var var_3 = 13107i;
    return var_2.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_5 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(global1.zy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.yx), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, -590f), vec2<f32>(-409f, global1.x))), arg_3)) * global1.wx)), Struct_3(~0u, arg_1.b, true, _wgslsmith_sub_i32(1i, arg_1.d)), arg_2, _wgslsmith_div_f32(global1.x, global1.x), arg_1);
    global2 = Struct_3(0u, _wgslsmith_dot_vec3_i32(global3.zzz, vec3<i32>(select(global2.d, i32(-1i) * -1i, false), countOneBits(_wgslsmith_div_i32(global2.d, global2.d)), select(arg_1.b, min(global3.x, 1i), true))), var_0.b.c, global3.x);
    global2 = Struct_3(91671u, -12636i, false, -59796i);
    let var_1 = vec2<bool>(true, arg_1.c);
    let var_2 = var_0.b;
    return Struct_5(var_2, Struct_2(~var_2.a), var_1, select(select(arg_0, arg_0, all(vec4<bool>(false, var_2.c, false, var_1.x))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), var_1.x), !arg_0, true), select(true, global2.c, all(select(vec2<bool>(false, false), vec2<bool>(true, true), var_2.c)))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_5) -> i32 {
    var var_0 = arg_2.c.x;
    let var_1 = -1i;
    let var_2 = Struct_4(vec2<f32>(-601f, 1306f), Struct_3(34646u, reverseBits(_wgslsmith_sub_i32(4422i ^ var_1, _wgslsmith_sub_i32(global3.x, 0i))), all(select(vec3<bool>(true, true, global2.c), select(vec3<bool>(true, true, false), vec3<bool>(true, arg_2.a.c, false), global2.c), select(vec3<bool>(arg_2.a.c, arg_2.a.c, true), vec3<bool>(arg_0, global2.c, arg_2.d.x), vec3<bool>(global2.c, arg_0, global2.c)))), firstTrailingBit(_wgslsmith_sub_i32(~61591i, -56488i))), global0[_wgslsmith_index_u32(4294967295u, 10u)], 1453f, func_1(Struct_2(~(29228u & u_input.d)), vec3<f32>(_wgslsmith_f_op_f32(705f - -856f), 906f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + global1.x)), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-arg_1))));
    var var_3 = var_2.e;
    var_0 = any(vec3<bool>(!global2.c && true, !select(!global2.c, func_1(Struct_2(62679u), vec3<f32>(-402f, -386f, 1284f), arg_1).c, global1.x != arg_1), _wgslsmith_f_op_f32(round(168f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1070f))));
    return global3.x >> (101757u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(u_input.d, 1i, true, func_5(global2.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), func_4(select(!vec2<bool>(global2.c, true), vec2<bool>(true, false), !vec2<bool>(global2.c, true)), func_1(global0[_wgslsmith_index_u32(abs(30485u), 10u)], vec3<f32>(1080f, 790f, -703f), global1.x), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, 0u, u_input.c.x), vec3<u32>(u_input.c.x, 1u, 38543u))), (global2.c | global2.c) && true)));
    var var_0 = Struct_4(global1.wy, Struct_3(firstTrailingBit(u_input.b), abs(u_input.a.x), true, global3.x), func_4(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(global2.c, false), vec2<bool>(global2.c, global2.c)), func_4(vec2<bool>(global2.c, global2.c), Struct_3(u_input.c.x, global3.x, false, -10159i), global0[_wgslsmith_index_u32(global2.a, 10u)], false).c), func_4(!vec2<bool>(global2.c, false), Struct_3(global2.a, global2.b, true, global3.x), global0[_wgslsmith_index_u32(abs(u_input.d), 10u)], true).d, vec2<bool>(select(false, global2.c, true), global2.c)), func_1(func_4(!vec2<bool>(global2.c, global2.c), func_1(global0[_wgslsmith_index_u32(global2.a, 10u)], vec3<f32>(1007f, -220f, 148f), global1.x), global0[_wgslsmith_index_u32(func_4(vec2<bool>(global2.c, true), Struct_3(global2.a, -2147483647i, true, u_input.a.x), Struct_2(u_input.b), false).b.a, 10u)], -554f > global1.x).b, global1.yxx, -852f), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global2.a, 92322u) & ~4294967295u, u_input.c.x), 10u)], all(select(select(vec2<bool>(false, global2.c), vec2<bool>(global2.c, true), vec2<bool>(global2.c, global2.c)), select(vec2<bool>(global2.c, true), vec2<bool>(global2.c, false), global2.c), vec2<bool>(global2.c, global2.c)))).b, _wgslsmith_f_op_f32(global1.x * 1182f), func_4(!(!select(vec2<bool>(global2.c, true), vec2<bool>(global2.c, true), global2.c)), Struct_3(u_input.d, i32(-1i) * -u_input.a.x, func_4(!vec2<bool>(false, global2.c), Struct_3(u_input.c.x, -16508i, global2.c, global2.b), Struct_2(global2.a), false).d.x, -23047i), Struct_2(4294967295u), !global2.c).a);
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1248f, _wgslsmith_f_op_f32(trunc(308f))))), Struct_3(min(22593u, ~abs(49345u)), var_0.e.d, false, ~(-abs(2147483647i))), Struct_2(1u), _wgslsmith_f_op_f32(f32(-1f) * -491f), var_0.e);
    var var_1 = select(!select(select(vec3<bool>(false, false, false), vec3<bool>(var_0.e.c, var_0.e.c, global2.c), global2.c && true), select(select(vec3<bool>(true, var_0.e.c, true), vec3<bool>(global2.c, global2.c, var_0.e.c), vec3<bool>(var_0.e.c, false, global2.c)), vec3<bool>(true, true, global2.c), global2.c), select(90962u, u_input.b, false) > ~36885u), vec3<bool>(false, func_4(vec2<bool>(var_0.b.c && true, true), Struct_3(abs(1u), global2.b, true, 2147483647i), var_0.c, true).a.c, !(~u_input.a.x > func_5(true, 967f, Struct_5(var_0.b, var_0.c, vec2<bool>(global2.c, true), vec2<bool>(global2.c, true))))), !vec3<bool>(var_0.b.c, true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(global2.c, global2.c)))));
    let var_2 = !vec3<bool>(true, var_0.b.c, var_0.b.c);
    let var_3 = -_wgslsmith_sub_i32(1i, -1i) >> (_wgslsmith_div_u32(var_0.b.a, ~(1u & _wgslsmith_dot_vec3_u32(vec3<u32>(53463u, u_input.b, var_0.c.a), vec3<u32>(0u, 0u, 0u)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-1233f, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_3, var_0.e.d), global3.xw)), select(~vec2<i32>(-27405i, -2147483647i) ^ (global3.zx ^ vec2<i32>(0i, 42013i)), u_input.a ^ abs(vec2<i32>(u_input.a.x, 49831i)), select(vec2<bool>(var_0.e.c, true), !vec2<bool>(var_0.b.c, global2.c), !var_1.xx))), var_0.b.a | _wgslsmith_div_u32(_wgslsmith_div_u32(select(4294967295u, 61197u, var_0.e.c), var_0.b.a | 63195u), ~u_input.c.x), _wgslsmith_mult_vec4_u32(max(~(vec4<u32>(12534u, 4294967295u, global2.a, global2.a) << (vec4<u32>(27371u, var_0.b.a, global2.a, u_input.c.x) % vec4<u32>(32u))), ~vec4<u32>(0u, 19218u, var_0.e.a, var_0.c.a)), ~vec4<u32>(var_0.b.a, 1289u, var_0.e.a, 0u & global2.a)), countOneBits(~firstTrailingBit(-2147483647i)) << (~(1u >> ((var_0.e.a & 1u) % 32u)) % 32u));
}

