struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-4309i, i32(-2147483648)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = -2151i;
    var var_1 = Struct_4(Struct_3(!vec4<bool>(all(vec4<bool>(true, true, global0.b.x, false)), !global0.b.x, !arg_2.b.x, -34984i != arg_1), Struct_2(_wgslsmith_f_op_f32(-arg_0.a)), -1429f), arg_2);
    var var_2 = arg_2.a;
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.b | _wgslsmith_mod_vec2_u32(~vec2<u32>(20046u, u_input.a), ~vec2<u32>(48799u, u_input.b.x)), u_input.b), u_input.b & u_input.b);
    var var_4 = Struct_3(!select(vec4<bool>(false, global0.b.x, var_1.b.a.x <= 51397i, arg_2.b.x), vec4<bool>(true, true, !global0.b.x, any(vec2<bool>(false, false))), arg_0.a == _wgslsmith_f_op_f32(-arg_0.a)), Struct_2(arg_0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.c))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1712f, 1069f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1126f, arg_0.a), vec2<f32>(var_4.c, arg_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, var_4.c))))));
}

fn func_4(arg_0: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_mult_i32(global0.c, _wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(global0.c, -54397i, -1i, 2147483647i))), -26848i) | abs(-_wgslsmith_add_i32(-1i, global0.a.x)));
    var var_1 = Struct_3(vec4<bool>(true, -abs(global0.a.x) > _wgslsmith_clamp_i32(var_0, ~(-21485i), firstLeadingBit(2147483647i)), true, any(select(select(vec4<bool>(false, true, true, global0.b.x), vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), true), !vec4<bool>(true, false, false, global0.b.x), vec4<bool>(global0.b.x, false, true, global0.b.x)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(abs(-139f))))), _wgslsmith_f_op_f32(-arg_0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.a, arg_0.x, -132f, arg_0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -918f, var_1.c, -1172f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_1.c, -657f)), -343f, 1000f, _wgslsmith_f_op_f32(-arg_0.x))))));
    var_1 = Struct_3(!(!select(var_1.a, select(vec4<bool>(false, true, global0.b.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, global0.b.x, false), vec4<bool>(true, true, false, false)), true)), Struct_2(var_1.c), -1000f);
    global1 = array<vec2<i32>, 1>();
    return var_2.x;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_sub_vec4_i32(select(global0.a, select(reverseBits(global0.a), vec4<i32>(-53590i, 27742i, global0.c, 4765i), !global0.b.x), vec4<bool>(!global0.b.x, 1155f != arg_0.a, false, arg_2.x >= arg_2.x)), vec4<i32>(518i, arg_2.x, -1i, max(global0.a.x, -25179i))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, global0.b.x, !global0.b.x), global0.b), global0.b, !vec3<bool>(true, !global0.b.x, true)), min(~arg_2.x, 0i));
    var var_0 = _wgslsmith_div_f32(-1230f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(-3014f), arg_2.x, Struct_1(vec4<i32>(global0.c, -2147483647i, global0.a.x, global0.a.x), global0.b, 73895i))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-159f, arg_1))))))));
    var var_1 = Struct_3(select(!(!vec4<bool>(global0.b.x, true, true, true)), vec4<bool>(any(!global0.b.yz), true, select(false, !global0.b.x, global0.b.x), !(arg_0.a >= 452f)), !(!vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x))), Struct_2(arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f) - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 442f) - vec2<f32>(arg_0.a, 545f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(arg_1, arg_0.a), global0.b.yz)), u_input.a < u_input.b.x))))));
    var var_2 = Struct_1(~vec4<i32>(global0.a.x, select(~(-18125i), 2147483647i, any(vec2<bool>(false, global0.b.x))), -global0.c >> (countOneBits(u_input.a) % 32u), arg_2.x), global0.b, ~arg_2.x);
    var_1 = Struct_3(var_1.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f)) * arg_1)), var_1.b.a);
    return global0.b;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    return Struct_1(~(-_wgslsmith_add_vec4_i32(select(vec4<i32>(-44962i, global0.c, global0.c, 2147483647i), vec4<i32>(global0.c, 1i, 2147483647i, global0.a.x), arg_1.a), vec4<i32>(global0.a.x, global0.a.x, -2421i, 20183i) & vec4<i32>(-33536i, 7897i, 2147483647i, 1i))), select(vec3<bool>(select(any(global0.b.zx), true, global0.b.x), true, any(global0.b.yx)), !func_2(arg_1.b, _wgslsmith_div_f32(505f, -1359f), vec3<i32>(global0.c, global0.a.x, -25290i) ^ global0.a.yxw), true), firstLeadingBit(global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(false, Struct_3(vec4<bool>(!global0.b.x, true, global0.b.x, global0.b.x), Struct_2(621f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) - -1418f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-233f, 1284f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-369f, 1f));
}

