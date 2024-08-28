struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<i32, 22>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = arg_0.c;
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_2, _wgslsmith_f_op_vec4_f32(-arg_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1140f, arg_0.a.x, arg_2.x, 174f), arg_0.a)) * vec4<f32>(arg_2.x, arg_2.x, -464f, -1555f))), ~max(firstTrailingBit(vec3<i32>(arg_0.b.x, 30261i, arg_0.b.x)), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], u_input.c.x, 46551i)), false || ((arg_0.c | arg_0.c) == var_0)), vec3<u32>(~(~arg_1.x), arg_1.x, u_input.d.x));
    var var_2 = Struct_2(arg_0, ~_wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(var_1.b, vec3<u32>(13981u, 4294967295u, 63661u), vec3<u32>(72467u, u_input.d.x, u_input.d.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(21437u, 0u, var_1.b.x), vec3<u32>(arg_1.x, arg_1.x, var_1.b.x))));
    let var_3 = var_1;
    let var_4 = false;
    return u_input.d.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = ~_wgslsmith_mod_vec3_u32(max(vec3<u32>(min(4294967295u, u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 9883u), vec4<u32>(arg_1, 0u, arg_0.b.x, arg_1)), func_3(Struct_1(vec4<f32>(1000f, -647f, 138f, 1455f), u_input.a, false), vec4<u32>(u_input.d.x, u_input.d.x, arg_0.b.x, 27003u), arg_0.a.a)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0.b.x, u_input.d.x), arg_0.b), min(vec3<u32>(arg_1, arg_1, 13524u), vec3<u32>(45890u, 4294967295u, arg_1)))), _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(22575u, arg_1, 60832u), arg_0.b), vec3<u32>(0u << (u_input.d.x % 32u), 52529u, arg_0.b.x & 16368u)));
    global1 = array<i32, 22>();
    let var_1 = Struct_2(Struct_1(arg_0.a.a, vec3<i32>(max(_wgslsmith_mod_i32(u_input.a.x, arg_0.a.b.x), u_input.b.x), (-1i >> (u_input.d.x % 32u)) & -1i, 2147483647i), true), ~(~firstTrailingBit(countOneBits(arg_0.b))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-522f, 1184f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(1000f, global0.x, true)), var_1.a.a.x), _wgslsmith_f_op_vec4_f32(abs(arg_0.a.a))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.a.x, -295f, var_1.a.a.x, -284f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(282f, var_1.a.a.x, -1212f, arg_0.a.a.x), _wgslsmith_f_op_vec4_f32(var_1.a.a - vec4<f32>(1008f, 2127f, global0.x, global0.x)), any(vec4<bool>(arg_0.a.c, false, var_1.a.c, true))))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.a.x, 861f, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, global0.x)))))));
    global0 = var_1.a.a;
    return _wgslsmith_clamp_u32(max(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(15827u, arg_1, u_input.d.x), select(var_1.b, arg_0.b, vec3<bool>(false, var_1.a.c, arg_0.a.c)))) << (_wgslsmith_dot_vec2_u32(var_0.xz, ~var_0.zx >> (vec2<u32>(arg_0.b.x, var_0.x) % vec2<u32>(32u))) % 32u), 4294967295u ^ var_1.b.x, 31416u);
}

fn func_4(arg_0: i32) -> Struct_1 {
    var var_0 = select(select(select(vec3<bool>(all(vec4<bool>(false, false, true, false)), all(vec2<bool>(false, false)), 7971u <= u_input.d.x), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, all(vec2<bool>(true, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), true), select(!vec3<bool>(true, global0.x < global0.x, true), vec3<bool>(true, arg_0 <= global1[_wgslsmith_index_u32(countOneBits(19559u), 22u)], arg_0 > _wgslsmith_mult_i32(1i, 2147483647i)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-574f, global0.x, _wgslsmith_div_f32(583f, -183f), _wgslsmith_f_op_f32(1249f - 1792f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -678f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 725f)))), u_input.c.yyz, !any(var_0.yx)), _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(30270u, 46797u, 0u), func_2(Struct_2(Struct_1(vec4<f32>(-548f, 1403f, 337f, global0.x), u_input.c.xwx, false), u_input.d.xzy), u_input.d.x) << (~u_input.d.x % 32u), ~(~u_input.d.x)), ~(~(~vec3<u32>(u_input.d.x, 24884u, 1u)))));
    let var_2 = ~vec4<u32>(func_2(Struct_2(var_1.a, ~var_1.b), firstTrailingBit(5996u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.b.x, 50417u, var_1.b.x)), _wgslsmith_clamp_vec3_u32(var_1.b, vec3<u32>(u_input.d.x, 37973u, var_1.b.x), vec3<u32>(u_input.d.x, var_1.b.x, u_input.d.x))), func_3(Struct_1(var_1.a.a, var_1.a.b, true), _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(0u, 104813u, var_1.b.x, u_input.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(349f, var_1.a.a.x, global0.x, var_1.a.a.x)))), func_2(Struct_2(var_1.a, u_input.d.zxy), min(0u, 72432u)) >> (func_2(var_1, _wgslsmith_mult_u32(var_1.b.x, u_input.d.x)) % 32u), _wgslsmith_sub_u32(u_input.d.x, reverseBits(955u)) | (countOneBits(18382u) << (~u_input.d.x % 32u)));
    let var_3 = var_1.a.b.x;
    let var_4 = !vec2<bool>(var_1.a.c, var_1.a.c);
    return var_1.a;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global1 = array<i32, 22>();
    let var_0 = func_4(arg_1.b.x >> (select(_wgslsmith_mult_u32(func_2(Struct_2(arg_1, u_input.d.zxz), u_input.d.x), _wgslsmith_mult_u32(4294967295u, 1u)), 61026u, any(vec4<bool>(true, arg_1.c, arg_1.c, false))) % 32u));
    var var_1 = func_4(~(-35440i)).c;
    var_1 = true;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1543f, global0.x))), -112f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, 1294f)) - global0.x)), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -1000f))))), -137f, arg_0);
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_u32(u_input.d.x, ~arg_0.b.x);
    let var_1 = arg_0;
    var var_2 = var_1.b.x >> (abs(~_wgslsmith_add_u32(func_2(Struct_2(arg_0.a, var_1.b), arg_0.b.x), var_1.b.x >> (arg_0.b.x % 32u))) % 32u);
    var var_3 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(~arg_0.a.b.x, 809i, arg_1.b.x, func_4(-1i).b.x), ~select(-vec4<i32>(arg_1.b.x, var_1.a.b.x, -2147483647i, u_input.b.x), reverseBits(u_input.c), true));
    var var_4 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 75876u, ~(~arg_0.b.x), var_1.b.x), ~select(~u_input.d, u_input.d, any(vec4<bool>(var_1.a.c, arg_0.a.c, arg_1.c, true))));
    return countOneBits(_wgslsmith_div_u32(var_4.x, 53688u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(global0.x, global0.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f))));
    global0 = vec4<f32>(global0.x, 828f, _wgslsmith_f_op_f32(select(global0.x, -229f, false)), global0.x);
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * global0.x)));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(~(~u_input.d.x) & u_input.d.x, func_5(Struct_2(Struct_1(vec4<f32>(1301f, global0.x, 1288f, global0.x), u_input.a, true), ~u_input.d.zyw), func_1(-442f, Struct_1(vec4<f32>(-1000f, global0.x, 178f, global0.x), vec3<i32>(u_input.b.x, -5143i, global1[_wgslsmith_index_u32(1u, 22u)]), false)))), u_input.d.x & u_input.d.x);
    let var_2 = firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(84733u, var_1)), 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, ~(-2147483647i), 1i), 22670i)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1780f, global0.x, 281f, global0.x)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-222f, global0.x, global0.x, global0.x)), vec4<f32>(global0.x, -821f, global0.x, global0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 207f, global0.x, global0.x) * vec4<f32>(-677f, 217f, 820f, -419f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-196f, 1000f, global0.x, global0.x), vec4<f32>(-977f, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, true))), vec4<bool>(true, false, false, true)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(trunc(380f)), 1850f, global0.x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2857f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1070f, _wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -708f))))) - global0.wwy), global0.x, _wgslsmith_sub_i32(-(~_wgslsmith_dot_vec3_i32(u_input.c.xyw, u_input.c.wxz)), -2320i), firstLeadingBit(u_input.d.yy) & max(u_input.d.wy, u_input.d.zx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-872f))), -1492f)));
}

