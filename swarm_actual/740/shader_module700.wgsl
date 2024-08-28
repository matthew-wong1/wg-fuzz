struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(872f, arg_0)))))), _wgslsmith_dot_vec2_u32(abs(abs(u_input.a.xy)), ~vec2<u32>(countOneBits(u_input.a.x), u_input.d)), arg_2);
    global0 = !all(select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(var_0.c.x, var_0.c.x, true, false), vec4<bool>(var_0.c.x, false, false, false), vec4<bool>(false, true, var_0.c.x, true)), !vec4<bool>(arg_2.x, arg_2.x, false, false)), select(vec4<bool>(true, var_0.c.x, arg_2.x, false), select(vec4<bool>(arg_2.x, arg_2.x, false, false), vec4<bool>(true, arg_2.x, var_0.c.x, var_0.c.x), vec4<bool>(arg_2.x, true, var_0.c.x, var_0.c.x)), !var_0.c.x), vec4<bool>(true, select(var_0.c.x, true, true), any(arg_2.xx), false)));
    global0 = var_0.c.x;
    let var_1 = Struct_2(var_0, arg_1.a, _wgslsmith_add_vec3_u32(abs(u_input.a << (vec3<u32>(var_0.b, 832u, var_0.b) % vec3<u32>(32u))) & vec3<u32>(select(35585u, 4294967295u, false), ~4707u, var_0.b), countOneBits(~(~vec3<u32>(4294967295u, 18477u, u_input.a.x)))), var_0);
    let var_2 = Struct_3(arg_1.a);
    return -var_2.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: bool) -> Struct_2 {
    global0 = arg_0.x <= 4294967295u;
    let var_0 = !((firstTrailingBit(abs(-7209i)) | -(65510i | u_input.c.x)) <= (func_3(_wgslsmith_div_f32(-1481f, -1480f), Struct_3(u_input.c), vec3<bool>(arg_3, arg_2.x, arg_3)) >> (~(~arg_0.x) % 32u)));
    let var_1 = !(!all(select(select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(arg_2.x, arg_2.x, var_0, false), vec4<bool>(true, true, false, false)), !vec4<bool>(arg_2.x, var_0, true, arg_2.x), vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1207f) + _wgslsmith_f_op_f32(trunc(-1607f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -715f)))))));
    global0 = all(vec4<bool>(false, all(vec2<bool>(all(vec3<bool>(false, true, var_0)), false)), !arg_3, !any(!vec4<bool>(var_1, true, false, true))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1617f), ~select(0u, ~1u, any(vec4<bool>(arg_3, true, var_1, var_0))), select(!vec3<bool>(false, var_0, true), vec3<bool>(any(vec2<bool>(true, true)), true, arg_3 | var_0), false)), vec3<i32>(-1i) * -min(vec3<i32>(28721i, u_input.c.x, u_input.b), firstLeadingBit(vec3<i32>(arg_1.x, -33103i, -33016i))), ~abs(vec3<u32>(0u, u_input.d, u_input.d)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(682f, -1169f)))), 1u, select(!(!vec3<bool>(arg_2.x, arg_2.x, var_1)), select(vec3<bool>(arg_3, false, false), vec3<bool>(arg_3, true, arg_2.x), vec3<bool>(false, arg_2.x, true)), any(vec4<bool>(true, false, arg_2.x, var_1)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    global0 = any(vec2<bool>(arg_0.d.c.x, !arg_0.a.c.x));
    let var_0 = arg_0.d;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.a)))), var_0.a));
    let var_2 = Struct_2(func_2(max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.d.b, u_input.a.x, var_0.b, 77703u), vec4<u32>(38192u, 74409u, u_input.a.x, u_input.a.x)), vec4<u32>(~0u, 1u, firstLeadingBit(arg_0.c.x), u_input.a.x)), vec2<i32>(1i, arg_1.a.x), arg_0.a.c.xz, _wgslsmith_div_u32(1u & var_0.b, arg_0.d.b) <= arg_0.c.x).d, arg_1.a, _wgslsmith_add_vec3_u32(~countOneBits(vec3<u32>(u_input.a.x, u_input.d, 48983u)), arg_0.c) << (vec3<u32>(select(4294967295u, ~4294967295u, false), firstTrailingBit(~14717u), u_input.d) % vec3<u32>(32u)), func_2(~vec4<u32>(1u, u_input.a.x >> (var_0.b % 32u), ~arg_0.c.x, u_input.d | 26784u), firstTrailingBit(max(-arg_0.b.zz, u_input.c.yz)), var_0.c.xz, any(vec3<bool>(select(var_0.c.x, false, var_0.c.x), !arg_0.a.c.x, any(arg_0.a.c)))).d);
    let var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -max(vec4<i32>(-30621i, -1i, 1i, u_input.b), vec4<i32>(arg_0.b.x, var_2.b.x, 1i, -28618i)), ~vec4<i32>(-4035i, 1i, _wgslsmith_sub_i32(-2147483647i, u_input.b), arg_0.b.x)), countOneBits(vec4<i32>(-arg_0.b.x, ~var_2.b.x, var_2.b.x, _wgslsmith_mult_i32(-8232i, arg_0.b.x) | u_input.c.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, -1i, -1i, 28754i) << (countOneBits(~vec4<u32>(4294967295u, 41395u, 1u, u_input.d)) % vec4<u32>(32u)), -abs(vec4<i32>(arg_1.a.x, arg_0.b.x, var_2.b.x, arg_1.a.x)) >> (~(~vec4<u32>(19738u, u_input.a.x, 4294967295u, var_2.d.b)) % vec4<u32>(32u))));
    return _wgslsmith_div_f32(-516f, -467f);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(func_4(func_2(vec4<u32>(387u, u_input.d, 1u, 0u), vec2<i32>(1i, arg_2.x), vec2<bool>(arg_0, false), false), Struct_3(vec3<i32>(arg_2.x, u_input.b, 0i))))))), ~24893u, func_2(_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.a.x, 85661u, u_input.a.x, u_input.a.x) | vec4<u32>(58149u, u_input.a.x, 7571u, 18339u)), _wgslsmith_mult_vec4_u32(vec4<u32>(44061u, u_input.a.x, 5402u, u_input.a.x) & vec4<u32>(u_input.a.x, 1u, 1u, 13295u), ~vec4<u32>(u_input.d, 0u, 51634u, 64655u))), ~vec2<i32>(~u_input.b, arg_2.x), vec2<bool>(all(vec2<bool>(false, true)), !(!arg_0)), !any(!vec3<bool>(arg_0, arg_0, false))).d.c);
    let var_1 = var_0.c.yx;
    global0 = true;
    let var_2 = 14883u << (var_0.b % 32u);
    global0 = !arg_0;
    return Struct_3(vec3<i32>(~1i, select(2147483647i, u_input.b, true) >> (var_2 % 32u), ~(_wgslsmith_add_i32(1i, 1i) ^ arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-1818f, -1000f);
    global0 = select(true, !(!(true & any(vec3<bool>(true, true, true)))), true);
    let var_1 = ~(firstLeadingBit(u_input.a) << (u_input.a % vec3<u32>(32u)));
    global0 = ((~(~u_input.a.x) & ~_wgslsmith_add_u32(var_1.x, 29826u)) & max(~var_1.x >> (~var_1.x % 32u), 63589u)) == 0u;
    global0 = true;
    let var_2 = false;
    var var_3 = func_1(!(!all(select(vec3<bool>(true, var_2, var_2), vec3<bool>(true, var_2, var_2), false))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-575f - var_0.x)), -(vec3<i32>(15266i, ~u_input.b, 1i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 41809u, u_input.a.x), vec3<u32>(var_1.x, u_input.d, var_1.x)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec3_i32(var_3.a | vec3<i32>(u_input.c.x, u_input.b, var_3.a.x), u_input.c)) << (vec3<u32>(u_input.a.x, var_1.x, reverseBits(_wgslsmith_mult_u32(var_1.x, 33361u))) % vec3<u32>(32u)));
}

