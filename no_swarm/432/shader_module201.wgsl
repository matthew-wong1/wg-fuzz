struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

var<private> global1: Struct_4;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> bool {
    global1 = Struct_4(arg_1, Struct_3(~(-2147483647i << (_wgslsmith_mod_u32(arg_2.b, global1.e) % 32u)), ~(~0u), Struct_2(Struct_1(false, global1.a.x & arg_1.x, arg_2.c.a.c, any(global1.a.yzx), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.c.a.e.x, arg_2.c.b.e.x, -1i, global1.b.c.a.e.x), u_input.b)), Struct_1(any(vec4<bool>(arg_2.c.a.c.x, true, false, arg_2.c.b.b)), false, arg_1.xwy, true, _wgslsmith_add_vec4_i32(vec4<i32>(20370i, -13571i, u_input.a, 2147483647i), vec4<i32>(10712i, global1.b.c.a.e.x, u_input.a, 1i))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, 642f, global1.d) * vec3<f32>(global1.c.x, -434f, -699f))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.d)), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_div_f32(global1.d, -1394f)), _wgslsmith_f_op_vec3_f32(-global1.c))), global1.d, _wgslsmith_sub_u32(arg_2.b, global1.b.b));
    var var_0 = Struct_4(arg_1, Struct_3(max(u_input.b.x, 10856i), _wgslsmith_add_u32(~global1.b.b, 4294967295u), Struct_2(Struct_1(global1.b.b >= global1.e, arg_0.x, !vec3<bool>(false, arg_0.x, true), arg_2.c.b.a, min(u_input.b, arg_2.c.b.e)), Struct_1(arg_2.c.a.d, !global1.a.x, arg_1.yzw, true, firstLeadingBit(global1.b.c.a.e)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.c), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1199f), global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(455f - 399f)), _wgslsmith_f_op_f32(-global1.c.x)))), global1.d, arg_2.b);
    let var_1 = 4294967295u << (select(global1.b.b, 19770u, true) % 32u);
    let var_2 = _wgslsmith_dot_vec3_i32(global1.b.c.b.e.yzy, vec3<i32>(_wgslsmith_mod_i32(-firstLeadingBit(-2147483647i), _wgslsmith_sub_i32(-17453i, 0i) & -var_0.b.a), global1.b.a, -69322i));
    var var_3 = Struct_2(Struct_1(any(var_0.b.c.a.c.zx), ((arg_2.b ^ var_1) < ~4294967295u) && !(!var_0.a.x), global1.a.yyy, 0u > global1.b.b, _wgslsmith_mult_vec4_i32(u_input.b, arg_2.c.a.e)), arg_2.c.a);
    return true & (global1.b.b != _wgslsmith_mod_u32(~(~4294967295u), 89344u));
}

fn func_3(arg_0: Struct_1) -> Struct_4 {
    let var_0 = -1i;
    global0 = array<vec4<u32>, 8>();
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(trunc(-580f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.c.x * global1.d))) + 1158f))));
    var var_2 = Struct_2(arg_0, arg_0);
    let var_3 = vec3<bool>(!select(all(!vec2<bool>(true, arg_0.c.x)), true, arg_0.d & false), var_2.a.d, arg_0.d & !all(select(var_2.b.c, vec3<bool>(arg_0.c.x, var_2.a.d, arg_0.a), true)));
    return Struct_4(vec4<bool>(!(_wgslsmith_f_op_f32(sign(-1609f)) > global1.c.x), true, global1.a.x, arg_0.a), global1.b, global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2852f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))))), ~(~global1.e));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = 4294967295u;
    global1 = func_3(Struct_1(_wgslsmith_f_op_f32(trunc(-356f)) > global1.c.x, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0, arg_0), global1.b.b ^ global1.e) < (_wgslsmith_add_u32(arg_0, 71957u) >> (~41883u % 32u)), global1.b.c.b.c, func_2(!vec2<bool>(global1.b.c.a.b, global1.b.c.a.c.x), global1.a, global1.b), firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, global1.b.a, global1.b.a), global1.b.c.a.e), ~vec4<i32>(0i, u_input.a, -1i, u_input.a), global1.b.c.a.e))));
    let var_1 = ~(((vec4<i32>(-1i) * -u_input.b) << (vec4<u32>(arg_0, _wgslsmith_mod_u32(arg_0, 0u), arg_0, max(68182u, 37033u)) % vec4<u32>(32u))) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(20927u, 4294967295u, 71904u, arg_0), global0[_wgslsmith_index_u32(1077u, 8u)] & vec4<u32>(global1.e, global1.e, 30129u, 36695u)) % vec4<u32>(32u)));
    let var_2 = global1.b;
    global1 = func_3(var_2.c.b);
    return firstLeadingBit(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, var_2.b)), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(var_2.b, var_2.b)), vec2<u32>(global1.b.b, 31653u))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    global1 = Struct_4(global1.a, global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, _wgslsmith_div_f32(global1.c.x, 103f), -1139f) * vec3<f32>(1484f, _wgslsmith_f_op_f32(trunc(-349f)), global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global1.c.x)), global1.d)))), ~global1.b.b);
    let var_0 = func_3(func_3(func_3(func_3(func_3(Struct_1(false, arg_1.d, arg_2.a.c, arg_1.d, vec4<i32>(-33310i, -1i, global1.b.c.a.e.x, -23724i))).b.c.b).b.c.a).b.c.b).b.c.a).b.c;
    global0 = array<vec4<u32>, 8>();
    global1 = Struct_4(!global1.a, global1.b, _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(global1.c.x - global1.c.x), 1f), global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(-global1.c.x)))), ~arg_0);
    let var_1 = global1.b.c.b.e.x;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(select(global1.a, select(vec4<bool>(false, global1.c.x > 592f, false, global1.b.c.b.c.x), vec4<bool>(any(vec4<bool>(global1.b.c.b.d, false, true, true)), global1.e < global1.e, any(global1.a.yx), true), func_4(func_1(global1.e), func_3(Struct_1(false, false, vec3<bool>(global1.b.c.b.d, false, true), false, global1.b.c.a.e)).b.c.b, Struct_2(Struct_1(global1.a.x, global1.b.c.a.b, global1.a.zxx, global1.b.c.b.b, u_input.b), global1.b.c.a), ~global1.b.c.b.e.x)), !(!global1.a)), func_3(Struct_1(func_4(min(global1.b.b, global1.b.b), global1.b.c.a, Struct_2(global1.b.c.b, global1.b.c.b), ~u_input.b.x).x, false, !vec3<bool>(global1.b.c.b.d, false, false), all(!global1.b.c.b.c.yy), (vec4<i32>(24252i, -68767i, global1.b.a, u_input.b.x) & vec4<i32>(2197i, 1898i, u_input.b.x, -8542i)) & min(global1.b.c.b.e, vec4<i32>(-2147483647i, -11608i, global1.b.c.b.e.x, 0i)))).b, global1.c, 865f, global1.e);
    var var_0 = func_3(global1.b.c.b).a.xx;
    let var_1 = ~global1.e;
    global0 = array<vec4<u32>, 8>();
    global0 = array<vec4<u32>, 8>();
    var var_2 = _wgslsmith_f_op_vec3_f32(func_3(global1.b.c.b).c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, global1.d), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(max(global1.d, -1289f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, firstTrailingBit(-37575i), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-583f, 961f, global1.c.x, global1.c.x)))))), vec3<u32>(28165u, select(global1.b.b, var_1, global1.b.c.a.b), ~(~(~var_1))));
}

