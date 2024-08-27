struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 1> = array<i32, 1>(i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> u32 {
    let var_0 = Struct_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec2<bool>(false, true)) && false, true, true), vec3<bool>(true, true, true)), select(vec4<bool>(false, global0.b > global0.b, select(select(false, true, true), arg_0.x != 196f, false), true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), 2147483647i > global0.a.x)), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))) + -777f), 1935f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)))));
    global0 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(global0.a, ~vec2<i32>(-10376i, 19863i)), ~u_input.a.xz ^ _wgslsmith_sub_vec2_i32(u_input.a.xx, vec2<i32>(global0.a.x, -12290i))), abs(vec2<i32>(0i, 1i))), abs(arg_1) ^ countOneBits(countOneBits(64671u)), -378f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_div_f32(arg_0.x, -946f)) - global0.d), -139f)));
    let var_1 = i32(-1i) * -global0.a.x;
    var var_2 = any(!(!(!(!vec2<bool>(var_0.a.x, true)))));
    var_2 = false;
    return 1u;
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    global0 = Struct_1(u_input.a.yx, 20168u, _wgslsmith_f_op_f32(463f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1550f) - -304f)))), _wgslsmith_f_op_f32(-global0.d));
    global0 = Struct_1(vec2<i32>(-1i) * -(~u_input.a.zz), ~(func_3(vec4<f32>(-415f, 528f, 957f, global0.c), 0u) & 16080u) << (abs(global0.b) % 32u), 1362f, global0.d);
    global0 = Struct_1(((-global0.a | abs(vec2<i32>(global1[_wgslsmith_index_u32(1u, 1u)], -1i))) & vec2<i32>(~(-4271i), 1i)) >> (~(~_wgslsmith_add_vec2_u32(vec2<u32>(72219u, global0.b), vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u)), ~(~31932u), _wgslsmith_f_op_f32(step(global0.c, global0.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(497f)))));
    global1 = array<i32, 1>();
    let var_0 = vec2<f32>(1214f, 720f);
    return 1531f;
}

fn func_1() -> Struct_1 {
    global1 = array<i32, 1>();
    return Struct_1(u_input.a.zz, _wgslsmith_div_u32(global0.b, ~_wgslsmith_sub_u32(16988u, _wgslsmith_add_u32(global0.b, global0.b))), -413f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d - global0.c) + _wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(330f)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = -2545i;
    return func_1();
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_4) -> Struct_4 {
    global0 = Struct_1(~_wgslsmith_clamp_vec2_i32(-max(u_input.a.yy, vec2<i32>(u_input.a.x, -38565i)), vec2<i32>(global0.a.x << (0u % 32u), 12808i), vec2<i32>(u_input.a.x, global0.a.x)), 3465u, _wgslsmith_f_op_f32(arg_3.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(f32(-1f) * -847f))), -1000f);
    var var_0 = arg_2;
    var var_1 = global0.b;
    let var_2 = -1614i;
    global0 = Struct_1(vec2<i32>(1i, -var_0.d.a.x), ~_wgslsmith_mult_u32(arg_2.d.b, 0u) << (arg_1.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.x - _wgslsmith_f_op_f32(f32(-1f) * -1145f))), arg_3.c.x);
    return Struct_4(arg_3.a, arg_3.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c + vec3<f32>(arg_3.c.x, global0.c, var_0.a.d)) * _wgslsmith_f_op_vec3_f32(arg_3.c - vec3<f32>(global0.d, var_0.c.x, arg_3.c.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c), vec3<f32>(global0.c, 558f, 306f), all(vec4<bool>(arg_3.b.x, false, arg_3.a.x, arg_3.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0.b, global0.b, 4294967295u), max(vec4<u32>(global0.b, 18583u, 6127u, global0.b), vec4<u32>(global0.b, global0.b, 9202u, global0.b))) & ~_wgslsmith_sub_u32(1u, global0.b)), ~1u);
    let var_1 = func_5(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, 19453u, var_0.x), vec3<u32>(89093u, global0.b, 4294967295u)), ~vec3<u32>(global0.b, 4294967295u, 4294967295u)), countOneBits(vec3<u32>(global0.b, var_0.x, 75456u))) ^ ~(~vec3<u32>(var_0.x, global0.b, var_0.x)), vec4<u32>(var_0.x, global0.b, global0.b, 0u), Struct_2(func_4(_wgslsmith_div_vec3_u32(vec3<u32>(global0.b, 0u, 62452u) ^ vec3<u32>(1u, 4294967295u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_0.x, global0.b), vec3<u32>(global0.b, 75506u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), func_1(), Struct_4(vec3<bool>(false, true, true), vec4<bool>(false, true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1612f, -1401f, -1125f)))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.x, -45676i, global1[_wgslsmith_index_u32(global0.b, 1u)], global1[_wgslsmith_index_u32(36962u, 1u)]), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(global0.b, 1u)], 15896i, u_input.a.x)), max(vec4<i32>(0i, global0.a.x, u_input.a.x, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global0.a.x, 18298i, -41840i), vec4<i32>(global0.a.x, 41116i, u_input.a.x, 0i))), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), vec3<f32>(713f, func_4(firstTrailingBit(vec3<u32>(var_0.x, 0u, 4294967295u)), _wgslsmith_f_op_f32(global0.d + global0.c), func_4(vec3<u32>(19141u, global0.b, 0u), global0.c, Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(108523u, 1u)], u_input.a.x), global0.b, -959f, global0.c), Struct_4(vec3<bool>(true, false, true), vec4<bool>(true, false, true, true), vec3<f32>(-1724f, global0.c, 361f))), Struct_4(vec3<bool>(true, false, true), vec4<bool>(false, false, true, true), vec3<f32>(global0.c, global0.d, global0.d))).d, global0.c), func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(34477u, global0.b, 106446u), vec3<u32>(global0.b, global0.b, 4294967295u)) << (~vec3<u32>(global0.b, var_0.x, var_0.x) % vec3<u32>(32u)), global0.c, Struct_1(-vec2<i32>(-1i, -2147483647i), 18707u, 2590f, _wgslsmith_f_op_f32(exp2(global0.c))), Struct_4(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), vec3<f32>(-261f, -431f, global0.d)))), Struct_4(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false), false), vec4<bool>(true, true, true, true), true == select(true, false, false)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, 304f, global0.c) * _wgslsmith_div_vec3_f32(vec3<f32>(1532f, global0.d, global0.c), vec3<f32>(global0.c, -324f, global0.d)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(291f, var_1.c.x)), vec3<f32>(global0.c, -1322f, _wgslsmith_f_op_f32(f32(-1f) * -212f)), _wgslsmith_mult_i32(-(-1i << (global0.b % 32u)), 32776i) >> (func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c.x, var_1.c.x, global0.c, var_1.c.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.d, var_1.c.x, -480f, -2426f)))), 0u) % 32u), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(global0.b, 1u)], u_input.a.x) >> (abs(vec3<u32>(24763u, 3030u, global0.b)) % vec3<u32>(32u))), abs(~reverseBits(u_input.a))));
}

