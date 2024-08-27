struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(true, vec2<i32>(15737i, -31511i), vec3<f32>(-2189f, -808f, -1000f)), Struct_1(false, vec2<i32>(-24885i, 2147483647i), vec3<f32>(-607f, -1237f, -1000f)), Struct_1(false, vec2<i32>(2147483647i, 1i), vec3<f32>(1293f, 933f, 1738f)), Struct_1(true, vec2<i32>(1i, 20661i), vec3<f32>(-445f, -727f, 1755f)), Struct_1(false, vec2<i32>(i32(-2147483648), 0i), vec3<f32>(165f, 456f, -713f)), Struct_1(false, vec2<i32>(2147483647i, -12005i), vec3<f32>(918f, 1278f, -609f)), Struct_1(true, vec2<i32>(35072i, 0i), vec3<f32>(-640f, 883f, -1616f)), Struct_1(true, vec2<i32>(-54773i, -5858i), vec3<f32>(-649f, -105f, -171f)), Struct_1(true, vec2<i32>(-23443i, 339i), vec3<f32>(-1523f, 165f, -1000f)), Struct_1(false, vec2<i32>(34684i, 1842i), vec3<f32>(1684f, 589f, -242f)), Struct_1(true, vec2<i32>(-20864i, 0i), vec3<f32>(181f, -228f, -1039f)), Struct_1(true, vec2<i32>(26038i, 14633i), vec3<f32>(-591f, -1879f, 453f)), Struct_1(false, vec2<i32>(42146i, 2147483647i), vec3<f32>(-1706f, 166f, -351f)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> bool {
    global1 = array<Struct_1, 13>();
    global0 = array<Struct_1, 17>();
    global1 = array<Struct_1, 13>();
    var var_0 = global0[_wgslsmith_index_u32(arg_2, 17u)];
    let var_1 = arg_0;
    return arg_2 <= ~(~(~(~4294967295u)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = select(!select(select(select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, false, false), vec3<bool>(false, arg_0.x, arg_0.x)), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, false, true), false), all(arg_0)), !vec3<bool>(arg_0.x, arg_0.x, false), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, false, arg_0.x), !vec3<bool>(arg_0.x, true, true))), !(!select(vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(arg_0.x, arg_0.x, true), arg_0.x && false)), select(vec3<bool>(true && select(arg_0.x, arg_0.x, true), false, all(vec3<bool>(arg_0.x, false, true))), vec3<bool>(arg_0.x, false, func_1(Struct_1(false, vec2<i32>(-34718i, -22374i), vec3<f32>(1026f, -329f, 418f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.c), vec3<u32>(0u, 4294967295u, 55284u)), 13u)], 7615u, true)), !vec3<bool>(arg_0.x, any(vec2<bool>(arg_0.x, arg_0.x)), any(vec3<bool>(arg_0.x, true, arg_0.x)))));
    global1 = array<Struct_1, 13>();
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(871f)))), 1452f), 1353f);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1185f)) + 473f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(332f)) + _wgslsmith_f_op_f32(floor(-1382f))))));
    var var_1 = _wgslsmith_f_op_f32(func_3(vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, true, false))))) == var_0.x;
    var var_2 = global1[_wgslsmith_index_u32(u_input.a.x | (~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 35826u), vec2<u32>(46539u, u_input.c)), u_input.d) << (4294967295u % 32u)), 13u)];
    let var_3 = abs(_wgslsmith_add_u32(~(~_wgslsmith_mod_u32(23453u, 4294967295u)), ~_wgslsmith_mult_u32(firstTrailingBit(1u), ~u_input.d.x)));
    var var_4 = !(!select(vec4<bool>(var_2.a == false, false, !var_2.a, !var_2.a), !vec4<bool>(var_2.a, var_2.a, var_2.a, false), false));
    return Struct_1(var_3 > ~(~0u), var_2.b, _wgslsmith_f_op_vec3_f32(floor(var_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = vec3<bool>(true, func_1(Struct_1(true, -_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(23730i, 37806i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(688f, -1726f, -1000f) + vec3<f32>(-223f, 559f, 949f)))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.d.x, u_input.a.x), 17u)], ~3080u, true), true);
    var var_2 = !select(!select(!vec3<bool>(false, false, var_1.x), !vec3<bool>(var_1.x, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, func_1(global1[_wgslsmith_index_u32(317u, 13u)], global1[_wgslsmith_index_u32(u_input.c, 13u)], u_input.b, false), var_1.x)), all(!(!var_1.zz)));
    var var_3 = Struct_1(true, _wgslsmith_div_vec2_i32(vec2<i32>(0i, 57670i) ^ abs(~vec2<i32>(var_0, -1i)), vec2<i32>(-(~2147483647i), -_wgslsmith_clamp_i32(var_0, 39887i, 2147483647i))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-762f, 1000f, 122f))))))));
    var var_4 = func_2();
    var var_5 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(54269u, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), ~(_wgslsmith_sub_u32(u_input.d.x, u_input.a.x) >> (~max(u_input.a.x, 199u) % 32u)));
    let var_6 = select(vec4<bool>(false, any(select(!vec4<bool>(false, var_3.a, var_4.a, false), vec4<bool>(var_2.x, var_2.x, var_1.x, var_2.x), select(vec4<bool>(false, false, var_4.a, false), vec4<bool>(var_3.a, false, true, var_2.x), var_1.x))), var_2.x, false), vec4<bool>(all(!var_1.zy), all(select(var_2.yy, select(var_2.xy, var_2.xz, var_1.x), all(vec3<bool>(var_3.a, var_2.x, var_4.a)))), func_2().a, 1u >= u_input.c), !vec4<bool>(var_4.a, false, true, true));
    let var_7 = global1[_wgslsmith_index_u32(u_input.c ^ _wgslsmith_mult_u32(max(_wgslsmith_clamp_u32(1u, ~u_input.c, ~0u), min(u_input.d.x, u_input.b)), 4294967295u), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x);
}

