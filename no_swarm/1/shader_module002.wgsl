struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(1i, -9672i, -1i));

var<private> global1: array<u32, 29>;

var<private> global2: vec4<u32> = vec4<u32>(82311u, 0u, 38630u, 0u);

var<private> global3: Struct_3 = Struct_3(false, false);

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    var var_0 = 211f;
    global2 = vec4<u32>(_wgslsmith_div_u32((global2.x ^ global2.x) & 1u, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 29u)], 29u)], global2.x, 54972u), ~vec4<u32>(1u, 73080u, 62262u, global1[_wgslsmith_index_u32(91732u, 29u)])))), 0u, 107666u, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_mod_u32(67934u, _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(39556u, 30014u)))));
    var var_1 = vec3<f32>(1761f, -126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2350f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f * 420f))));
    let var_2 = Struct_3(!global3.b, all(vec4<bool>(!any(vec2<bool>(false, true)), global3.a, false, global3.b)));
    var var_3 = Struct_2(Struct_1(var_1.x, firstLeadingBit((vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 0u, 31553u, global2.x) & vec4<u32>(0u, 3413u, global2.x, global2.x)) & ~vec4<u32>(global2.x, 4294967295u, 1u, global2.x))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(floor(-263f)), _wgslsmith_f_op_f32(-var_3.a.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1410f + -1099f), -665f, var_3.a.a))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1502f - -1330f)), ~((vec4<u32>(4294967295u, 0u, 4294967295u, 18062u) >> (vec4<u32>(global1[_wgslsmith_index_u32(4466u, 29u)], global2.x, global2.x, global2.x) % vec4<u32>(32u))) ^ select(vec4<u32>(4294967295u, 0u, 24035u, global2.x), vec4<u32>(4063u, global1[_wgslsmith_index_u32(0u, 29u)], global2.x, global2.x), vec4<bool>(arg_1, arg_0.b, arg_0.b, true)))));
    global0 = array<vec3<i32>, 1>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())));
    let var_2 = abs(vec4<u32>(global2.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(0u, 29u)], var_0.a.b.x), var_0.a.b.x | 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(67330u, 18277u), 29u)], 29u)] << (~global1[_wgslsmith_index_u32(var_0.a.b.x, 29u)] % 32u)), 14367u, global2.x));
    global2 = ~(~(~abs(vec4<u32>(global1[_wgslsmith_index_u32(10905u, 29u)], 44082u, 1u, 7449u) & vec4<u32>(global2.x, var_0.a.b.x, var_2.x, global1[_wgslsmith_index_u32(global2.x, 29u)]))));
    return var_1.x;
}

fn func_1() -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(global3.a, global3.a), global3.b, !global3.a)) - 1833f), vec4<u32>(1u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(7139u & global2.x, 6166u), 29u)], countOneBits(~global1[_wgslsmith_index_u32(global2.x, 29u)]), global1[_wgslsmith_index_u32(1u, 29u)] | 0u)));
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    return (u_input.a ^ select(_wgslsmith_add_vec4_i32(u_input.a, ~u_input.a), ~min(u_input.a, u_input.a), select(vec4<bool>(true, true, global3.b, true), select(vec4<bool>(global3.b, global3.a, true, global3.a), vec4<bool>(global3.b, false, global3.a, global3.a), vec4<bool>(global3.a, true, global3.a, global3.b)), vec4<bool>(global3.a, global3.b, false, false)))) << (arg_0.a.b % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_1 {
    global4 = abs(arg_2.a.b.x);
    var var_0 = Struct_2(arg_2.a);
    global4 = ~arg_2.a.b.x;
    return arg_2.a;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_3;
    let var_1 = ~(~max(arg_1.b.x, ~var_0.a.b.x)) << (_wgslsmith_dot_vec2_u32(~global2.yx, _wgslsmith_clamp_vec2_u32(firstTrailingBit(~arg_2.a.b.zy), _wgslsmith_sub_vec2_u32(arg_1.b.xz, arg_2.a.b.xw), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.b.x, global1[_wgslsmith_index_u32(53268u, 29u)]), arg_3.a.b.zy, arg_3.a.b.wy) ^ countOneBits(arg_3.a.b.xx))) % 32u);
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(func_5(vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.a.x), -449f, arg_2, vec2<i32>(u_input.a.x, 2147483647i)).a, _wgslsmith_f_op_f32(min(var_2.a.a, -1000f))), func_5(select(vec4<i32>(u_input.b, -27400i, 1i, u_input.a.x), u_input.a, true), var_2.a.a, func_1(), vec2<i32>(u_input.b, -53610i) | vec2<i32>(1i, u_input.b)).a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, arg_2.a.a)) + vec2<f32>(var_2.a.a, arg_2.a.a)))));
    let var_4 = 4294967295u;
    return Struct_3(true, global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.wx;
    global4 = 34163u;
    var var_1 = func_6(!(!global3.a), func_5(func_4(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f - 1000f)) + _wgslsmith_f_op_f32(trunc(-1000f))), Struct_2(func_1().a), u_input.a.wy), func_1(), Struct_2(func_1().a));
    global0 = array<vec3<i32>, 1>();
    let var_2 = select(!select(vec4<bool>(false, all(vec4<bool>(false, var_1.a, true, true)), true, !global3.a), select(vec4<bool>(global3.b, var_1.a, var_1.a, true), !vec4<bool>(true, false, false, var_1.a), !vec4<bool>(false, false, true, var_1.a)), any(vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, any(vec3<bool>(global3.b, true, global3.b)), global3.b, !global3.b), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), 1i <= var_0.x), true), var_1.b);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1110f - -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868f - 397f)))), vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global2.zyy >> (~vec3<u32>(global2.x, 4294967295u, global2.x) % vec3<u32>(32u)), global2.yzz), 29u)], ~((global1[_wgslsmith_index_u32(global2.x, 29u)] << (30716u % 32u)) >> (0u % 32u)), func_1().a.b.x, ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global2.x, 29u)], 29u)] >> (_wgslsmith_mult_u32(~global2.x, ~global1[_wgslsmith_index_u32(global2.x, 29u)]) % 32u)));
    let var_4 = -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, countOneBits(var_0.x) << (func_1().a.b.x % 32u)), -u_input.a.zw);
    var_3 = func_5(min(~min(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), vec4<i32>(-17983i, 2147483647i, var_0.x, var_4)), ~vec4<i32>(u_input.a.x, var_4, var_4, var_4) | ~select(vec4<i32>(var_0.x, -31157i, var_0.x, var_4), u_input.a, vec4<bool>(false, false, false, var_2.x))), var_3.a, func_1(), abs(~u_input.a.wx));
    let var_5 = func_6(any(select(select(select(vec2<bool>(false, var_2.x), vec2<bool>(true, false), false), !vec2<bool>(var_1.b, var_2.x), select(var_2.yy, vec2<bool>(var_2.x, true), global3.a)), select(!var_2.zy, var_2.zz, !vec2<bool>(true, var_2.x)), select(vec2<bool>(false, false), var_2.ww, false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a - -106f)) + 209f), var_3.b), func_1(), Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_3.a), var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-33426i >> (~_wgslsmith_mod_u32(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 29u)], 29u)], 12714u), var_3.b.x) % 32u));
}

