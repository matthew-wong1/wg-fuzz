struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global0 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -324f) * _wgslsmith_f_op_f32(f32(-1f) * -1039f)), _wgslsmith_f_op_f32(step(-385f, _wgslsmith_f_op_f32(abs(-1984f)))))) != -166f);
    var var_0 = vec4<bool>(all(vec2<bool>(any(select(vec3<bool>(false, false, arg_0.b.x), arg_0.b, vec3<bool>(false, false, true))), any(vec2<bool>(arg_0.c, arg_0.c)))), true, all(vec3<bool>(arg_0.c, true, true)), arg_0.c);
    let var_1 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(u_input.b.yxy, u_input.b.xzx), _wgslsmith_div_u32(u_input.b.x, 26815u)), ~(~vec3<u32>(21486u, 40707u, arg_0.e))));
    var var_2 = -countOneBits(-abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 32118i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a))));
    let var_3 = Struct_2(arg_0);
    return select(vec4<bool>(true, all(var_0.xx), any(vec4<bool>(arg_0.b.x, var_0.x, true, u_input.a == -24033i)), false), vec4<bool>(true, true, all(vec2<bool>(true, select(var_3.a.b.x, arg_0.b.x, arg_0.c))), all(vec2<bool>(true, true))), var_3.a.c);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1423f + -136f) + _wgslsmith_f_op_f32(ceil(1000f))), arg_2.x))) + arg_2.yww);
    var_0 = vec3<f32>(-1831f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1013f) - var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1549f)) - _wgslsmith_f_op_f32(arg_2.x * arg_2.x)) * _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_2.x, -476f)), _wgslsmith_f_op_f32(abs(398f)))) * -993f)));
    let var_1 = 1u << (firstLeadingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.wy), select(vec2<u32>(4294967295u, u_input.b.x), u_input.b.xw, vec2<bool>(true, false)) ^ reverseBits(vec2<u32>(arg_1.a.e, arg_0.a.d)))) % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_div_f32(1415f, arg_2.x), -1000f, 1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.x, 243f, arg_2.x, -351f)))))));
    var var_3 = 0u;
    return select(select(func_3(arg_0.a), !vec4<bool>(true, all(arg_1.a.b.yx), arg_0.a.b.x != false, true), vec4<bool>(!(!arg_1.a.c), arg_1.a.b.x, !(arg_0.a.b.x & false), true)), !vec4<bool>(true, !(!arg_1.a.b.x), true, true), select(func_3(Struct_1(~arg_1.a.e, arg_0.a.b, true, var_1, 4294967295u)), func_3(arg_1.a), true));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = arg_1.a;
    let var_1 = u_input.b;
    var var_2 = vec4<u32>(abs(var_1.x) >> (~_wgslsmith_sub_u32(~arg_1.a.d, ~51549u) % 32u), 18369u, ~45110u, ~arg_0);
    var var_3 = vec4<bool>(!var_0.b.x, true && all(vec3<bool>(true, !arg_1.a.c, true | var_0.b.x)), var_0.c, true || (!all(vec2<bool>(var_0.b.x, arg_1.a.c)) || select(true, arg_1.a.c, any(vec2<bool>(arg_1.a.c, arg_1.a.b.x)))));
    var_3 = select(select(select(vec4<bool>(true, true, var_0.b.x, true), vec4<bool>(true, all(var_3.ywy), !arg_1.a.b.x, !arg_1.a.b.x), !(!var_0.c)), vec4<bool>(-21779i == (u_input.a & arg_2), any(var_0.b), true, true), false), select(!(!(!vec4<bool>(arg_1.a.c, false, var_0.b.x, var_3.x))), select(vec4<bool>(arg_1.a.b.x, arg_1.a.c, select(true, var_0.c, true), true), !func_2(Struct_2(arg_1.a), Struct_2(Struct_1(3328u, vec3<bool>(true, false, true), true, u_input.b.x, 4294967295u)), vec4<f32>(-1857f, -459f, -153f, 628f)), any(vec2<bool>(true, true))), !func_3(Struct_1(0u, arg_1.a.b, true, 35337u, u_input.b.x))), select(vec4<bool>(select(var_0.b.x, false, var_0.b.x) == (var_3.x && var_3.x), var_3.x, arg_1.a.c, false), vec4<bool>(true, var_0.b.x, true, arg_2 > ~(-1i)), !(!select(vec4<bool>(arg_1.a.c, true, true, false), vec4<bool>(var_3.x, var_3.x, var_0.c, var_0.c), true))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1423f * 548f), _wgslsmith_div_f32(509f, 433f), _wgslsmith_f_op_f32(step(649f, -881f)), _wgslsmith_f_op_f32(func_1(u_input.b.x, Struct_2(Struct_1(1u, vec3<bool>(true, false, true), true, u_input.b.x, u_input.b.x)), u_input.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1125f, -1444f, -258f, -932f)))));
    var var_1 = var_0.x;
    let var_2 = vec3<i32>(u_input.a | ~(-u_input.a), u_input.a, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, 43980i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(4294967295u, u_input.b.x, 1u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.a, 0i, u_input.a, -2147483647i)))) ^ max(_wgslsmith_div_vec3_i32(select(-vec3<i32>(2147483647i, -24794i, -8477i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, 40629i), vec3<i32>(17782i, -58967i, -39836i)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), -select(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(7865i, 5310i, u_input.a), vec3<bool>(true, true, false))), vec3<i32>(_wgslsmith_sub_i32(-u_input.a, ~u_input.a), u_input.a, firstTrailingBit(42180i) | u_input.a));
    let var_3 = Struct_1(select(~min(92783u, ~u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~u_input.b.x), vec2<u32>(36015u, u_input.b.x)), u_input.a <= u_input.a), !vec3<bool>(any(vec4<bool>(true, true, true, true)), true, false), false, 69202u, 67482u);
    var_1 = var_0.x;
    global0 = var_3.c;
    let var_4 = Struct_1(~(var_3.e & u_input.b.x), !var_3.b, var_3.c, u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, var_3.a, u_input.b.x) | 1u, ~u_input.b.x) & _wgslsmith_mod_u32(~var_3.e, _wgslsmith_add_u32(abs(0u), var_3.e)));
    let var_5 = _wgslsmith_add_vec2_u32(u_input.b.wz, select(reverseBits(~_wgslsmith_div_vec2_u32(u_input.b.zy, u_input.b.zx)), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(1u, u_input.b.x)) & vec2<u32>(u_input.b.x, 1u), max(vec2<u32>(u_input.b.x, 5926u), vec2<u32>(0u, u_input.b.x))), all(vec3<bool>(true, true, !var_4.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

