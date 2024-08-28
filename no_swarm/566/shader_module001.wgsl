struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(2147483647i, 27005i, vec4<f32>(-388f, 2222f, 972f, -137f), vec2<i32>(2147483647i, -39512i)), 2183i, vec3<bool>(true, true, true)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_div_u32(4294967295u, ~10079u);
    var var_1 = 56494u;
    var var_2 = global0.a.a;
    var var_3 = vec4<i32>(2147483647i, 2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_add_i32(u_input.a.x, -1i), _wgslsmith_mult_i32(arg_1.b, 2147483647i), global0.a.a.b ^ -2147483647i), -_wgslsmith_add_vec4_i32(vec4<i32>(var_2.d.x, 0i, arg_1.a.a, var_2.b), vec4<i32>(global0.a.b, arg_1.a.d.x, 4911i, global0.a.b)))), arg_1.b);
    let var_4 = u_input.a.xy;
    return ~arg_1.a.d.x;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_4(vec2<i32>(-1i, -func_3(abs(global0.a.b), Struct_2(Struct_1(1i, 26567i, vec4<f32>(global0.a.a.c.x, global0.a.a.c.x, global0.a.a.c.x, arg_0), vec2<i32>(global0.a.b, -4178i)), -26553i, vec3<bool>(arg_1, true, false)))), Struct_3(global0.a), global0.a.a.c.xx, vec3<u32>(~(~arg_2), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, arg_2, arg_2), arg_2), ~(~4294967295u)) ^ ~(~firstLeadingBit(vec3<u32>(arg_2, arg_2, arg_2))));
    var var_1 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.a.a.b, 0i), u_input.a.zx >> (vec2<u32>(var_0.d.x, arg_2) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(global0.a.a.a, var_0.a.x)), u_input.a.x)), var_0.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1021f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -369f) - _wgslsmith_f_op_f32(min(global0.a.a.c.x, _wgslsmith_f_op_f32(floor(arg_0))))), _wgslsmith_f_op_f32(arg_0 * -200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.c.x)))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + global0.a.a.c.x), arg_0, _wgslsmith_f_op_f32(min(var_2.x, var_2.x)), -948f), global0.a.a.c))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * global0.a.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.a.a.c.x, -540f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.c.x) + _wgslsmith_f_op_f32(abs(-680f))), 980f)), _wgslsmith_f_op_f32(1239f + var_2.x), -424f));
    var var_3 = !global0.a.c.x || true;
    return vec3<bool>(select(false, arg_1, all(global0.a.c) | ((arg_2 & 0u) > _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 93547u, 59668u, var_0.d.x), vec4<u32>(arg_2, arg_2, 39178u, 13520u)))), var_0.b.a.c.x, true);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = reverseBits(vec3<u32>(~1u, ~(~_wgslsmith_div_u32(0u, 1u)), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(5582u, 32852u)), ~16166u)));
    global0 = Struct_3(global0.a);
    let var_1 = true;
    var var_2 = true && global0.a.c.x;
    global0 = Struct_3(Struct_2(Struct_1(~(-10891i), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1908i, u_input.a.x), vec3<i32>(0i, 2147483647i, global0.a.a.d.x))), _wgslsmith_f_op_vec4_f32(floor(global0.a.a.c)), u_input.a.zy), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_0, u_input.a.x, 2147483647i, global0.a.b) >> (vec4<u32>(1u, 3756u, 4294967295u, var_0.x) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(19945i, 2147483647i, -2147483647i, arg_0)), global0.a.c));
    return Struct_3(global0.a);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_4(~(~_wgslsmith_add_vec2_i32(abs(global0.a.a.d), -global0.a.a.d)), func_4(~0i, func_2(global0.a.a.c.x, global0.a.c.x, firstLeadingBit(~15478u))), global0.a.a.c.yw, min(vec3<u32>(1u, 1u, 1u), vec3<u32>(62166u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 82492u), vec2<u32>(1u, 4294967295u)), ~1u) ^ select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 4294967295u, 66822u), global0.a.a.c.x >= -541f)));
    var var_1 = -_wgslsmith_mod_i32(_wgslsmith_add_i32(i32(-1i) * -1i, var_0.b.a.b), abs(~var_0.a.x)) >> ((reverseBits(var_0.d.x) & _wgslsmith_add_u32(abs(_wgslsmith_sub_u32(var_0.d.x, 0u)), 47621u)) % 32u);
    return Struct_3(Struct_2(func_4((4076i & var_0.a.x) >> (var_0.d.x % 32u), select(func_4(var_0.a.x, vec3<bool>(true, false, var_0.b.a.c.x)).a.c, !global0.a.c, !vec3<bool>(false, global0.a.c.x, global0.a.c.x))).a.a, _wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(u_input.a.x, var_0.a.x, -1i, 3408i)), firstTrailingBit(vec4<i32>(var_0.b.a.b, -25209i, -302i, 8309i))), -(~vec4<i32>(-810i, var_0.a.x, var_0.b.a.a.b, u_input.a.x))), !global0.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a);
    var var_0 = Struct_5(func_1());
    var_0 = Struct_5(func_4(-2147483647i, global0.a.c));
    let var_1 = Struct_1(max(countOneBits(~u_input.a.x), 1i), abs(countOneBits(reverseBits(_wgslsmith_add_i32(-50418i, 2147483647i)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global0.a.a.c, var_0.a.a.a.c)) * _wgslsmith_f_op_vec4_f32(global0.a.a.c - vec4<f32>(global0.a.a.c.x, var_0.a.a.a.c.x, 589f, global0.a.a.c.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.a.c.x, -123f, 599f, var_0.a.a.a.c.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(607f, var_0.a.a.a.c.x, 962f, var_0.a.a.a.c.x), var_0.a.a.a.c, vec4<bool>(true, var_0.a.a.c.x, global0.a.c.x, var_0.a.a.c.x))))))), ~countOneBits(vec2<i32>(countOneBits(-27576i), 1i)));
    global0 = func_4(0i, func_2(global0.a.a.c.x, false, firstTrailingBit(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.a.a.a.d, vec2<i32>(var_0.a.a.b, var_1.d.x)) << (1u % 32u), ~var_0.a.a.a.d.x), global0.a.a.d, func_1().a.a.d | global0.a.a.d), firstLeadingBit(_wgslsmith_add_i32(-21935i, ~(-2147483647i))), _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), vec4<u32>(~0u, 65397u, 1u, _wgslsmith_mod_u32(~(~59877u), ~1u)));
}

