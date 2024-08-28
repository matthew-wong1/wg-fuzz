struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23>;

var<private> global1: array<bool, 14> = array<bool, 14>(false, true, false, false, true, false, true, true, true, true, true, true, false, false);

var<private> global2: bool;

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<u32>(4294967295u, 4294967295u, 63399u), Struct_1(vec3<i32>(1i, -2814i, -63158i))), Struct_2(vec3<u32>(21551u, 0u, 48863u), Struct_1(vec3<i32>(16347i, -21216i, 58270i))), Struct_2(vec3<u32>(8431u, 1u, 0u), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i))), Struct_2(vec3<u32>(1u, 60280u, 19948u), Struct_1(vec3<i32>(54031i, 0i, i32(-2147483648)))), Struct_2(vec3<u32>(1u, 19921u, 0u), Struct_1(vec3<i32>(41515i, -40542i, i32(-2147483648)))), Struct_2(vec3<u32>(0u, 1u, 4294967295u), Struct_1(vec3<i32>(-8826i, -2207i, 1i))), Struct_2(vec3<u32>(1u, 28811u, 31033u), Struct_1(vec3<i32>(0i, -2449i, 53291i))), Struct_2(vec3<u32>(84069u, 4294967295u, 121881u), Struct_1(vec3<i32>(1i, -9644i, 1i))), Struct_2(vec3<u32>(27036u, 2660u, 1u), Struct_1(vec3<i32>(20456i, i32(-2147483648), 1i))), Struct_2(vec3<u32>(35838u, 4294967295u, 1u), Struct_1(vec3<i32>(i32(-2147483648), 1i, -18087i))), Struct_2(vec3<u32>(1u, 21919u, 35420u), Struct_1(vec3<i32>(-1i, 2147483647i, 1i))), Struct_2(vec3<u32>(27294u, 714u, 43890u), Struct_1(vec3<i32>(9936i, 0i, 0i))), Struct_2(vec3<u32>(9520u, 101082u, 4294967295u), Struct_1(vec3<i32>(i32(-2147483648), 19932i, -1i))), Struct_2(vec3<u32>(23340u, 0u, 1u), Struct_1(vec3<i32>(3963i, 1540i, 2147483647i))), Struct_2(vec3<u32>(35944u, 29867u, 21577u), Struct_1(vec3<i32>(-1i, 2147483647i, 643i))), Struct_2(vec3<u32>(1u, 22796u, 45739u), Struct_1(vec3<i32>(0i, 4139i, -38769i))), Struct_2(vec3<u32>(13357u, 54255u, 4294967295u), Struct_1(vec3<i32>(19415i, 0i, 27315i))), Struct_2(vec3<u32>(4294967295u, 4294967295u, 24670u), Struct_1(vec3<i32>(-18623i, 9639i, -34140i))), Struct_2(vec3<u32>(1u, 32519u, 18691u), Struct_1(vec3<i32>(17582i, -1i, 33400i))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<bool>) -> u32 {
    global2 = select(global1[_wgslsmith_index_u32(0u, 14u)], true, true);
    let var_0 = true;
    var var_1 = Struct_2(vec3<u32>(~max(20721u, 16413u) & arg_0.x, u_input.c.x, (_wgslsmith_add_u32(arg_1.a.x, u_input.c.x) << (~1u % 32u)) >> (u_input.c.x % 32u)), arg_1.b);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1557f), _wgslsmith_f_op_f32(-306f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-127f - 109f), -1000f, true))))));
    var var_3 = any(vec2<bool>(all(arg_2.zyx), false));
    return ~1u;
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_2, 19>();
    var var_0 = Struct_3(~(~9062u) <= min(func_3(_wgslsmith_add_vec4_u32(vec4<u32>(16178u, u_input.c.x, u_input.c.x, 0u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 7007u)), Struct_2(global0[_wgslsmith_index_u32(0u, 23u)], Struct_1(u_input.a)), vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 14u)], false)), 1u), Struct_1(vec3<i32>(0i, firstTrailingBit(select(-2147483647i, u_input.b.x, true)), _wgslsmith_clamp_i32(1i, ~1i, 2147483647i))), select(1i, select(_wgslsmith_sub_i32(u_input.a.x, u_input.b.x), ~(-27224i), true) & -2147483647i, true), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(11530i, u_input.a.x), -2147483647i), ~u_input.b) ^ u_input.a.yz);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(1857f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1332f, -1753f) * -436f), _wgslsmith_f_op_f32(f32(-1f) * -1504f))), -289f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(745f + -144f) + _wgslsmith_f_op_f32(409f + -1000f))))));
    let var_2 = Struct_2(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.c.x), u_input.c.x), 23u)] | countOneBits(u_input.c), var_0.b);
    global0 = array<vec3<u32>, 23>();
    return Struct_1(vec3<i32>(~(~28662i) >> (_wgslsmith_mod_u32(max(u_input.c.x, 44942u), ~36162u) % 32u), _wgslsmith_mult_i32(~abs(var_0.c), var_2.b.a.x), min(var_2.b.a.x, var_0.b.a.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2;
    global2 = all(vec4<bool>(var_0.a, true, !(!global1[_wgslsmith_index_u32(4294967295u, 14u)]), all(vec4<bool>(arg_2.a | false, !arg_2.a, !var_0.a, true))));
    let var_1 = var_0.a;
    global2 = global1[_wgslsmith_index_u32(4294967295u, 14u)] && true;
    global0 = array<vec3<u32>, 23>();
    return _wgslsmith_f_op_f32(-604f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -924f), _wgslsmith_f_op_f32(f32(-1f) * -2396f), arg_2.a))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(!(any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 14u)], false, global1[_wgslsmith_index_u32(14476u, 14u)], true)) && any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 14u)], true))) && global1[_wgslsmith_index_u32(~(~max(63906u, u_input.c.x)), 14u)], Struct_1(vec3<i32>(u_input.b.x, ~select(u_input.a.x, u_input.b.x, global1[_wgslsmith_index_u32(0u, 14u)]), -3496i)), 1i, ~u_input.a.zx);
    var var_1 = vec4<f32>(1304f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(abs(vec3<i32>(u_input.b.x, 1i, var_0.c)), func_2(), Struct_3(var_0.a, var_0.b, 1i, vec2<i32>(u_input.b.x, 0i)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(329f, -1887f))))))), -228f, -693f);
    let var_2 = global3[_wgslsmith_index_u32(~(~(~u_input.c.x)), 19u)];
    let var_3 = func_2();
    global3 = array<Struct_2, 19>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<bool>(all(select(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 14u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global1[_wgslsmith_index_u32(u_input.c.x, 14u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], false, false), vec3<bool>(false, false, false), true)), select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(27761u, 14u)], global1[_wgslsmith_index_u32(26467u, 14u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global1[_wgslsmith_index_u32(49628u, 14u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 14u)], false)), !vec3<bool>(true, false, global1[_wgslsmith_index_u32(22793u, 14u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], true)), !(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], false)))), !global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], _wgslsmith_clamp_i32(~(~(-24448i)), 0i, ~u_input.b.x) == (-39750i ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(-11867i, -45698i, 1i, 0i), vec4<i32>(-5303i, u_input.a.x, 30442i, u_input.b.x))));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~(_wgslsmith_div_u32(10314u, ~u_input.c.x) >> (_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.xx) % 32u)), u_input.c.x), 19u)];
    let var_3 = ~(~(u_input.a.x | ~1i));
    let var_4 = Struct_2(vec3<u32>(var_2.a.x | var_2.a.x, ~(~_wgslsmith_sub_u32(4294967295u, 0u)), max(~u_input.c.x, 19773u) | u_input.c.x), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, 1198i), ~(~15129i)), 17416u, -var_3, ~(~select(select(vec4<i32>(8058i, 48497i, 32417i, var_3), vec4<i32>(var_2.b.a.x, var_4.b.a.x, var_3, var_4.b.a.x), var_1), vec4<i32>(2147483647i, 1i, var_0.a.x, u_input.a.x), var_4.a.x >= 1543u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.a, var_2.b, Struct_3(global1[_wgslsmith_index_u32(132463u, 14u)], Struct_1(u_input.a), var_3, vec2<i32>(var_3, -453i)))) + -355f))))));
}

