struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9>;

var<private> global1: array<i32, 1> = array<i32, 1>(35631i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(any(vec4<bool>(true, true, true, true)), Struct_2(select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 0u)), ~vec2<u32>(4294967295u, 0u), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true, _wgslsmith_dot_vec4_i32(vec4<i32>(-3426i, u_input.a.x, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(30977u, 1u)]) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~firstTrailingBit(vec4<i32>(0i, global1[_wgslsmith_index_u32(1968u, 1u)], -9634i, -1i)))), any(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, false), all(vec4<bool>(false, false, false, true)))), u_input.a.x);
    var_0 = Struct_3(true, Struct_2(~(var_0.b.a ^ abs(vec2<u32>(79974u, 43821u))), vec2<bool>(-u_input.a.x > _wgslsmith_clamp_i32(3492i, -1i, 20337i), true), true, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~(~0u), 1u)], -6105i)), !var_0.a, _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mult_i32(firstLeadingBit(0i), countOneBits(global1[_wgslsmith_index_u32(var_0.b.a.x, 1u)]))), max(var_0.b.d, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~var_0.b.a.x, 1u)], abs(-2147483647i)))));
    var var_1 = true;
    global0 = array<Struct_4, 9>();
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    return select(-global1[_wgslsmith_index_u32(15894u, 1u)], u_input.a.x, true);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    global1 = array<i32, 1>();
    var var_0 = _wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, min(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 21775u), 1u)], 78i) | func_3()));
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1507f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(831f - -1946f))))) + arg_2.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec3<bool> {
    global0 = array<Struct_4, 9>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2013f), arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -417f));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -542f, arg_0.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1042f, var_0.x, var_0.x)))), any(vec2<bool>(false, arg_0.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(570f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(arg_0.d.x, var_0.x, -911f, -1148f), arg_1.c, arg_0))), -584f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1449f, 366f, var_0.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 713f, -236f) * vec3<f32>(var_0.x, 1000f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1314f, arg_0.d.x, var_0.x)))), all(!vec4<bool>(true, false, true, arg_1.b.x))))), 1i < abs(~_wgslsmith_clamp_i32(2147483647i, -86713i, 1i))));
    var var_2 = global0[_wgslsmith_index_u32(arg_1.a.x, 9u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) + var_2.b)) - 1149f));
    return select(!select(vec3<bool>(!arg_1.c, true, var_2.d.a || arg_1.c), !vec3<bool>(var_2.d.a, false, arg_1.b.x), !vec3<bool>(arg_0.a, true, var_2.d.a)), select(select(vec3<bool>(any(arg_1.b), 15960u < arg_1.a.x, var_2.a <= arg_1.a.x), !select(vec3<bool>(true, false, arg_0.a), vec3<bool>(false, true, false), vec3<bool>(arg_1.b.x, arg_0.a, arg_0.a)), !select(vec3<bool>(false, arg_1.c, true), vec3<bool>(false, arg_1.c, true), false)), select(select(vec3<bool>(arg_0.a, true, true), select(vec3<bool>(var_2.d.a, arg_0.a, arg_1.b.x), vec3<bool>(var_2.d.a, arg_1.c, false), true), all(vec2<bool>(var_2.d.a, arg_0.a))), !select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(var_2.d.a, false, var_2.d.a), true), vec3<bool>(any(vec3<bool>(arg_1.c, arg_1.b.x, arg_1.b.x)), true, true)), select(!vec3<bool>(var_2.d.a, arg_1.b.x, true), !select(vec3<bool>(true, false, arg_1.b.x), vec3<bool>(false, false, arg_0.a), false), select(arg_0.a && arg_1.c, 1720f < var_2.b, true))), !vec3<bool>(!arg_1.b.x, false, false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 9>();
    var var_0 = Struct_3(all(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), func_1(Struct_1(true, vec2<f32>(1000f, -295f), vec2<f32>(-918f, -452f), vec2<f32>(1475f, -917f), -1507f), Struct_2(vec2<u32>(34700u, 1u), vec2<bool>(true, true), true, u_input.a.x)), true), !func_1(Struct_1(false, vec2<f32>(-823f, 465f), vec2<f32>(-380f, -650f), vec2<f32>(668f, -471f), 1000f), Struct_2(vec2<u32>(98273u, 1553u), vec2<bool>(false, true), true, 0i)))), Struct_2(vec2<u32>(13912u, 4294967295u >> (_wgslsmith_mod_u32(0u, 17102u) % 32u)), vec2<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(false, true)) || true), true, -select(~u_input.a.x, -u_input.a.x, false)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), -40365i);
    var_0 = Struct_3(!(!select(true, true, false)), var_0.b, !(true || var_0.c), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, var_0.d), _wgslsmith_clamp_i32(-2147483647i, min(var_0.b.d, min(-49137i, var_0.b.d)), 30600i)));
    global1 = array<i32, 1>();
    global0 = array<Struct_4, 9>();
    let var_1 = !func_1(Struct_1(true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2273f, 1075f) - vec2<f32>(-1145f, -271f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-813f, -975f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1509f, 1019f))) - vec2<f32>(-719f, -1913f)), _wgslsmith_f_op_f32(-112f * _wgslsmith_f_op_f32(round(-705f)))), var_0.b).zx;
    var var_2 = 1f;
    let var_3 = Struct_5(var_1.x, vec4<bool>(true, !func_1(Struct_1(var_1.x, vec2<f32>(-597f, -2504f), vec2<f32>(957f, 297f), vec2<f32>(-2079f, 2018f), 1742f), Struct_2(vec2<u32>(4294967295u, 86431u), var_1, var_1.x, global1[_wgslsmith_index_u32(var_0.b.a.x, 1u)])).x, true, !var_1.x));
    var var_4 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_4.a.x) ^ vec2<u32>(0u, var_0.b.a.x), firstTrailingBit(vec2<u32>(var_4.a.x, var_0.b.a.x)))), var_4.a << (~(~var_4.a) % vec2<u32>(32u)), (var_0.b.a.x >= (4294967295u >> (var_4.a.x % 32u))) || true), var_4.a.x, u_input.a.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(368f, 1488f))))))), 122f);
}

