struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<f32> = vec3<f32>(-1241f, -565f, -293f);

var<private> global2: f32;

var<private> global3: array<vec4<f32>, 28>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    var var_0 = Struct_1(arg_0.yz);
    global3 = array<vec4<f32>, 28>();
    global0 = u_input.b;
    let var_1 = select(select(arg_0, !vec3<bool>(false, arg_0.x && false, var_0.a.x), var_0.a.x), arg_0, vec3<bool>(true, any(var_0.a), select(!(!arg_0.x), arg_0.x, any(vec4<bool>(false, false, var_0.a.x, arg_0.x)))));
    var var_2 = -46498i;
    return select(!var_1.xz, select(!select(!var_0.a, var_0.a, var_0.a.x), select(var_0.a, !(!vec2<bool>(var_0.a.x, true)), (var_0.a.x || var_1.x) & any(vec4<bool>(var_1.x, true, true, var_0.a.x))), arg_0.x), !(-17738i > -_wgslsmith_clamp_i32(1i, 18732i, -39035i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_3(countOneBits(u_input.a | vec2<u32>(global0.x << (4294967295u % 32u), min(52241u, arg_3))), any(arg_1.a.zy), Struct_1(!select(arg_1.a.xz, vec2<bool>(arg_1.a.x, true), true)), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(trunc(-1028f))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1295f) + -527f);
    var var_1 = -vec4<i32>(arg_0.x, arg_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, -1i, -18676i), arg_1.b), ~vec3<i32>(arg_0.x, 0i, 2147483647i)), reverseBits(-arg_1.b)), ~arg_0.x);
    let var_2 = global1.zz;
    global3 = array<vec4<f32>, 28>();
    return Struct_3(vec2<u32>(u_input.a.x, 23107u), any(select(var_0.c.a, arg_1.a.yz, var_0.b)), Struct_1(var_0.c.a), -404f);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_2(select(vec3<bool>(any(arg_1.c.a), true, arg_0), !select(vec3<bool>(true, true, arg_1.c.a.x), !vec3<bool>(true, true, arg_0), arg_1.c.a.x), select(!vec3<bool>(true, true, arg_1.c.a.x), !vec3<bool>(false, arg_1.c.a.x, false), func_1(!vec3<bool>(arg_1.c.a.x, true, false)).x)), ~(~vec3<i32>(1i, 1i, 1i)));
    let var_1 = reverseBits(firstTrailingBit(var_0.b.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1587f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(251f)) - arg_1.d))));
    var var_3 = !arg_0;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(107f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(-global1.x)) * 794f)));
    return Struct_2(var_0.a, countOneBits(~_wgslsmith_add_vec3_i32(var_0.b, _wgslsmith_clamp_vec3_i32(var_0.b, vec3<i32>(-1i, -34817i, -1i), var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global3 = array<vec4<f32>, 28>();
    let var_1 = !vec4<bool>(!all(vec3<bool>(true, true, true)), true, ~(global0.x ^ global0.x) > 7177u, true);
    let var_2 = false;
    var_0 = false;
    var var_3 = func_3(!(!(var_2 && var_2)) == (!var_1.x || all(!vec4<bool>(false, var_2, var_2, var_1.x))), func_2(vec3<i32>(79472i, 1i, 0i), Struct_2(var_1.xxw, countOneBits(~vec3<i32>(0i, 24791i, 24152i))), Struct_1(func_1(var_1.xyw)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x ^ global0.x, 0u, _wgslsmith_mult_u32(global0.x, global0.x)), min(u_input.c, u_input.a.x) << (global0.x % 32u))), global0.xww >> (u_input.b.wxz % vec3<u32>(32u)), vec2<f32>(global1.x, 1151f));
    global3 = array<vec4<f32>, 28>();
    let var_4 = vec2<f32>(-1507f, global1.x);
    let var_5 = min(vec2<i32>(var_3.b.x, 1i), -_wgslsmith_add_vec2_i32(var_3.b.yz, abs(vec2<i32>(-1i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(countOneBits(-var_3.b.x), var_3.b.x, _wgslsmith_clamp_i32(2147483647i, 36931i >> (u_input.c % 32u), 1i), -1i), _wgslsmith_dot_vec4_i32((-vec4<i32>(var_3.b.x, var_5.x, 1i, 2147483647i) & -vec4<i32>(1i, var_5.x, 38052i, var_5.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, global0.x, 71222u) << (u_input.b % vec4<u32>(32u)), abs(vec4<u32>(67009u, 37243u, global0.x, u_input.a.x))) % vec4<u32>(32u)), vec4<i32>(-2147483647i, var_3.b.x, max(~1i, -1i), min(var_5.x, var_5.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_4.x, -2439f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.x, var_4.x, -575f), vec3<f32>(-2716f, -1417f, global1.x)))))));
}

