struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
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

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -31073i, 17462i, 1i);

var<private> global1: Struct_2 = Struct_2(Struct_1(false, vec2<bool>(true, false), 1u, vec3<bool>(false, true, false)), true, Struct_1(false, vec2<bool>(true, false), 0u, vec3<bool>(false, false, false)), Struct_1(false, vec2<bool>(false, false), 0u, vec3<bool>(false, false, false)));

var<private> global2: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(-1i, 1854i, 7638i), vec3<i32>(38125i, 1i, 0i), vec3<i32>(-1i, 2147483647i, 5959i), vec3<i32>(14231i, -7584i, -54524i), vec3<i32>(1i, 709i, 0i), vec3<i32>(52843i, 2147483647i, -56673i), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), -48210i), vec3<i32>(11506i, -11168i, -24827i), vec3<i32>(0i, 12015i, -1i), vec3<i32>(55798i, 1i, 1970i), vec3<i32>(0i, 46122i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, -36640i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(38647i, i32(-2147483648), 0i), vec3<i32>(-40710i, i32(-2147483648), -17636i), vec3<i32>(2147483647i, -50707i, 0i), vec3<i32>(2147483647i, -21364i, 1i), vec3<i32>(2147483647i, 1i, 22364i), vec3<i32>(1i, -1i, 9613i), vec3<i32>(0i, -34009i, 41299i), vec3<i32>(8754i, 11410i, -34888i), vec3<i32>(2147483647i, -39439i, 1i), vec3<i32>(-7756i, -67285i, 1i), vec3<i32>(3456i, 47717i, 0i), vec3<i32>(6075i, 60050i, i32(-2147483648)), vec3<i32>(26709i, 36529i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -40850i, -35889i), vec3<i32>(7446i, 0i, 22750i), vec3<i32>(-1i, 52561i, 14843i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> bool {
    var var_0 = ~(i32(-1i) * -44791i);
    let var_1 = global1.c;
    global1 = Struct_2(Struct_1(arg_3.x, arg_1.b, 0u, !vec3<bool>(var_1.d.x, all(arg_1.d), global1.a.b.x)), false, Struct_1(false, select(vec2<bool>(any(vec2<bool>(true, arg_2)), true), global1.d.d.xy, select(arg_3.yz, arg_1.b, !arg_1.d.yy)), 67181u, !select(select(vec3<bool>(false, false, arg_2), vec3<bool>(var_1.b.x, var_1.d.x, false), global1.c.a), !vec3<bool>(arg_3.x, false, arg_3.x), arg_3.x == false)), Struct_1(false || (_wgslsmith_f_op_f32(-arg_0) <= -729f), !global1.d.b, u_input.a.x, arg_1.d));
    global2 = array<vec3<i32>, 30>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0, 1122f, arg_0)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 1255f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2429f, arg_0, 991f, -1000f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, 1620f, 207f, arg_0))) + vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(select(-568f, 2106f, false)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -163f), arg_0, _wgslsmith_f_op_f32(-184f * 508f), -486f), true)));
    return global1.d.b.x;
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.c.x;
    var var_1 = Struct_2(Struct_1(select(global1.c.a, true, func_3(_wgslsmith_f_op_f32(177f + -735f), Struct_1(global1.c.d.x, vec2<bool>(true, false), global1.a.c, vec3<bool>(global1.d.d.x, false, false)), -2038i >= u_input.d.x, select(vec4<bool>(false, false, global1.b, global1.a.b.x), vec4<bool>(global1.c.b.x, true, false, false), global1.d.b.x))), global1.c.d.zz, global1.a.c, global1.c.d), global1.b, Struct_1(global1.c.b.x, !vec2<bool>(global1.d.a, false), _wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.xy), !global1.a.d), global1.a);
    var var_2 = Struct_1(false, var_1.d.b, _wgslsmith_add_u32(~u_input.b, u_input.b) << (abs(_wgslsmith_add_u32(countOneBits(global1.d.c), global1.d.c)) % 32u), var_1.d.d);
    global2 = array<vec3<i32>, 30>();
    var var_3 = _wgslsmith_mult_vec3_i32(global2[_wgslsmith_index_u32(u_input.b, 30u)], ~_wgslsmith_sub_vec3_i32(select(vec3<i32>(48138i, -22455i, 0i), -global2[_wgslsmith_index_u32(u_input.c.x, 30u)], var_1.a.d), select(~global2[_wgslsmith_index_u32(var_2.c, 30u)], select(vec3<i32>(-1i, -2147483647i, 26935i), vec3<i32>(global0.x, u_input.d.x, global0.x), var_2.a), true)));
    return Struct_2(global1.c, var_2.b.x, Struct_1(_wgslsmith_mult_i32(firstLeadingBit(u_input.d.x), 2147483647i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, global0.x, u_input.d.x), vec4<i32>(global0.x, var_3.x, var_3.x, global0.x)), select(select(select(vec2<bool>(var_2.d.x, global1.c.b.x), var_1.a.d.yz, true), vec2<bool>(var_1.b, true), vec2<bool>(true, true)), select(select(global1.d.b, vec2<bool>(global1.d.d.x, true), global1.d.b), vec2<bool>(false, var_1.b), select(var_2.b, var_1.d.d.zx, vec2<bool>(false, var_1.b))), global1.c.b), ~(~1u), select(!select(var_2.d, global1.a.d, var_2.d), !select(global1.a.d, vec3<bool>(global1.b, false, true), var_2.a), false)), Struct_1(any(!select(var_1.a.b, vec2<bool>(false, global1.c.a), var_2.d.x)), !select(vec2<bool>(true, var_2.d.x), global1.d.b, select(var_1.d.b, vec2<bool>(false, true), global1.a.d.yz)), ~firstTrailingBit(~u_input.a.x), vec3<bool>(var_2.b.x, global1.b, true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = -21216i;
    global1 = arg_3;
    let var_1 = u_input.c;
    global0 = vec4<i32>(u_input.d.x, var_0, 0i, var_0);
    global1 = arg_3;
    return vec4<bool>(false, arg_2.d.x, true, func_2().d.a);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = ~u_input.d.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), arg_1))));
    var var_2 = Struct_2(global1.a, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(589f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, var_1.x)))), Struct_1(false && global1.a.a, func_4(Struct_1(arg_3.a, vec2<bool>(true, arg_0.x), 48396u, global1.a.d), vec2<bool>(false, arg_3.a), func_2().c, func_2()).xx, ~arg_3.c, select(vec3<bool>(true, global1.a.a, false), select(arg_2.a.d, vec3<bool>(false, false, arg_2.d.b.x), arg_2.c.a), select(global1.c.d, vec3<bool>(arg_3.a, arg_3.a, false), vec3<bool>(false, false, arg_3.a)))), !global1.b, vec4<bool>(arg_0.x, any(!arg_0.xzz), any(vec4<bool>(false, true, global1.c.b.x, true)), !all(vec3<bool>(arg_3.d.x, true, arg_0.x)))), func_2().d, Struct_1(true, select(!(!vec2<bool>(true, arg_2.b)), vec2<bool>(true & global1.c.d.x, true), arg_0.x), 1u, arg_0.ywy));
    let var_3 = vec3<u32>(0u, abs(u_input.a.x), ~abs(abs(abs(1u))));
    var var_4 = -1175f;
    return 1u;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = func_5(select(func_4(Struct_1(global1.b, global1.c.b, u_input.a.x, vec3<bool>(global1.c.a, false, false)), vec2<bool>(false, false), Struct_1(global1.a.d.x, global1.d.b, 1u, vec3<bool>(false, false, global1.c.d.x)), func_2()), !func_4(Struct_1(true, global1.d.d.yz, u_input.a.x, vec3<bool>(false, true, false)), vec2<bool>(false, true), global1.d, Struct_2(global1.c, global1.a.a, Struct_1(global1.c.a, global1.c.d.yy, u_input.b, global1.d.d), global1.c)), false), arg_0, func_2(), func_2().c) >> (u_input.b % 32u);
    let var_1 = i32(-1i) * -arg_2.x;
    global1 = Struct_2(global1.d, true, Struct_1(true, !global1.c.b, global1.a.c, global1.c.d), global1.d);
    var var_2 = global1.a;
    global1 = Struct_2(func_2().c, all(vec4<bool>(true, all(select(global1.a.d, vec3<bool>(false, true, global1.d.a), var_2.a)), func_3(_wgslsmith_f_op_f32(-arg_0), global1.c, true, func_4(Struct_1(false, vec2<bool>(var_2.b.x, true), var_0, var_2.d), var_2.d.yz, global1.c, Struct_2(global1.c, false, Struct_1(var_2.a, vec2<bool>(true, var_2.d.x), 16351u, vec3<bool>(var_2.a, global1.b, var_2.b.x)), global1.a))), func_4(Struct_1(false, vec2<bool>(global1.b, false), 4294967295u, vec3<bool>(false, global1.a.a, true)), vec2<bool>(false, false), func_2().c, Struct_2(Struct_1(var_2.a, vec2<bool>(global1.a.a, false), 1u, vec3<bool>(global1.b, global1.d.a, global1.d.d.x)), global1.b, Struct_1(true, global1.d.b, 1u, vec3<bool>(false, true, true)), global1.d)).x)), Struct_1(var_2.b.x, !func_4(Struct_1(global1.b, var_2.d.yz, global1.a.c, vec3<bool>(true, var_2.d.x, global1.b)), select(global1.a.b, var_2.b, global1.c.d.zy), global1.a, Struct_2(Struct_1(global1.d.d.x, vec2<bool>(true, true), u_input.c.x, var_2.d), true, Struct_1(true, vec2<bool>(true, var_2.b.x), 102349u, global1.d.d), Struct_1(true, vec2<bool>(false, false), 0u, global1.a.d))).xw, var_2.c, !select(!var_2.d, vec3<bool>(global1.b, false, global1.d.b.x), true)), func_2().d);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 30>();
    var var_0 = ~vec3<i32>(~(0i & ~global0.x), u_input.d.x, i32(-1i) * -(~global0.x));
    global1 = func_1(-796f, 718f, -vec3<i32>(~_wgslsmith_clamp_i32(global0.x, global0.x, global0.x), global0.x, ~(global0.x >> (68149u % 32u))));
    let var_1 = u_input.d;
    var var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(441f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-979f + -589f), -382f)), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(950f * _wgslsmith_div_f32(2975f, 1214f)), _wgslsmith_f_op_f32(f32(-1f) * -790f))), _wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(func_2().c.c >> (~0u % 32u), 30u)], ~global0.zzz) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, 0u))), countOneBits(~u_input.c), vec3<u32>(u_input.a.x, ~504u, u_input.c.x)) % vec3<u32>(32u)));
    global1 = Struct_2(var_2.a, global1.b, func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1389f) * -1074f), _wgslsmith_f_op_f32(sign(1051f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2467f)), vec3<i32>(~(var_1.x | 2147483647i), u_input.d.x, ~global0.x)).d, Struct_1(true, vec2<bool>(false, true), func_2().d.c, var_2.d.d));
    let var_3 = global1.a.d.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(global0.x, var_1.x) ^ var_1.x);
}

