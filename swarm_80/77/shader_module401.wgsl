struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 30>;

var<private> global1: array<vec4<bool>, 28>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: u32) -> vec3<u32> {
    var var_0 = -32824i;
    var var_1 = Struct_5(vec2<u32>(51117u, 6376u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-371f * -1000f))), u_input.b.wyz, countOneBits(arg_0.xzz >> (arg_0.zxy % vec3<u32>(32u))), !global1[_wgslsmith_index_u32(~max(1u, 55534u), 28u)], _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2119f, 1617f, false)), _wgslsmith_f_op_f32(f32(-1f) * -463f))))), Struct_4(Struct_2(_wgslsmith_f_op_f32(trunc(140f)), Struct_1(-1859f, u_input.b.yyz, vec3<u32>(70427u, 5744u, arg_1), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), _wgslsmith_f_op_f32(-713f + 700f)), Struct_1(-460f, vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), ~vec3<u32>(arg_0.x, arg_3, arg_1), select(vec4<bool>(arg_2.x, true, arg_2.x, true), global1[_wgslsmith_index_u32(u_input.a, 28u)], arg_2.x), _wgslsmith_f_op_f32(2074f - -480f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1484f + -1252f))) * -1164f), Struct_3(Struct_2(_wgslsmith_div_f32(-732f, 161f), Struct_1(-701f, u_input.b.zzz, vec3<u32>(4294967295u, arg_1, arg_0.x), vec4<bool>(arg_2.x, false, true, arg_2.x), -1000f), Struct_1(1037f, vec3<i32>(-1i, -1i, u_input.b.x), arg_0.zwy, vec4<bool>(arg_2.x, true, false, arg_2.x), 359f)), _wgslsmith_mult_vec2_u32(vec2<u32>(73211u, arg_3), arg_0.yy), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1188f), u_input.b.wzw, vec3<u32>(arg_3, arg_1, arg_0.x), select(global1[_wgslsmith_index_u32(arg_0.x, 28u)], global1[_wgslsmith_index_u32(arg_3, 28u)], vec4<bool>(true, arg_2.x, arg_2.x, false)), _wgslsmith_f_op_f32(step(-1628f, 657f))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), u_input.b.yzy), true)));
    global0 = array<Struct_5, 30>();
    global0 = array<Struct_5, 30>();
    var var_2 = -(~0i) & u_input.b.x;
    return ~arg_0.yzw;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> u32 {
    global0 = array<Struct_5, 30>();
    var var_0 = arg_0;
    var var_1 = Struct_4(Struct_2(arg_0.e, arg_0, Struct_1(var_0.a, vec3<i32>(-u_input.b.x, -arg_0.b.x, var_0.b.x), min(func_3(vec4<u32>(arg_1.x, 4294967295u, arg_0.c.x, arg_0.c.x), arg_0.c.x, vec2<bool>(arg_0.d.x, true), var_0.c.x), vec3<u32>(u_input.c, var_0.c.x, u_input.c) >> (var_0.c % vec3<u32>(32u))), vec4<bool>(var_0.d.x | var_0.d.x, true, !arg_2, !var_0.d.x), -195f)), arg_0.e, Struct_3(Struct_2(_wgslsmith_f_op_f32(-409f - arg_0.e), arg_0, arg_0), countOneBits(~vec2<u32>(1u, u_input.c)) << (var_0.c.xz % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))), -countOneBits(vec3<i32>(arg_0.b.x, 0i, -10899i)), var_0.c, var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), arg_0.b, ~(~arg_1.x) != _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.c.xz, arg_0.c.yy), ~arg_1)));
    var var_2 = abs(arg_0.b.x);
    global0 = array<Struct_5, 30>();
    return _wgslsmith_sub_u32(4294967295u, ~(var_0.c.x | ~arg_1.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = vec3<u32>(func_2(Struct_1(508f, vec3<i32>(select(arg_3.x, u_input.b.x, true), ~(-28078i), -2147483647i), vec3<u32>(u_input.c, firstLeadingBit(arg_0.x), arg_0.x | arg_0.x), !select(vec4<bool>(true, arg_2, arg_1.x, arg_2), global1[_wgslsmith_index_u32(94522u, 28u)], true), _wgslsmith_f_op_f32(f32(-1f) * -415f)), ~select(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(arg_0.x, u_input.a), arg_1.zy) >> (arg_0 % vec2<u32>(32u)), arg_2), arg_0.x, ~71969u);
    return Struct_3(Struct_2(-265f, Struct_1(-1194f, _wgslsmith_clamp_vec3_i32(arg_3, arg_3, vec3<i32>(-20914i, -2147483647i, 8710i)) | arg_3, vec3<u32>(arg_0.x, abs(arg_0.x), var_0.x), select(!vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, true, false, arg_2), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.x, 74222u), var_0), 28u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(1639f, vec3<i32>(arg_3.x, u_input.b.x, -450i) << (vec3<u32>(var_0.x, 16717u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(max(var_0.x, u_input.c), ~arg_0.x, 0u), global1[_wgslsmith_index_u32(var_0.x, 28u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1124f)), _wgslsmith_f_op_f32(1000f - 1229f)))), vec2<u32>(arg_0.x, ~(~abs(u_input.c))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-987f * -1000f), 356f))), vec3<i32>(-38670i, firstLeadingBit(_wgslsmith_mod_i32(arg_3.x, 2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, arg_3.x), _wgslsmith_sub_i32(arg_3.x, 0i), u_input.b.x)), ~(~(var_0 | vec3<u32>(arg_0.x, var_0.x, u_input.a))), !vec4<bool>(true, all(vec4<bool>(arg_1.x, false, false, arg_1.x)), arg_2, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1843f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-978f))))), _wgslsmith_mult_vec3_i32(u_input.b.yxx, -vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(2147483647i, -11998i, -2147483647i), _wgslsmith_mult_i32(2147483647i, -1i))), true || arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 28>();
    global1 = array<vec4<bool>, 28>();
    let var_0 = func_1(vec2<u32>(59531u, 63423u), vec3<bool>(true, true, all(vec3<bool>(true, true, true))), false, -vec3<i32>(abs(u_input.b.x), _wgslsmith_sub_i32(-22655i, -36265i) << (firstTrailingBit(u_input.c) % 32u), -2147483647i));
    global0 = array<Struct_5, 30>();
    var var_1 = vec3<i32>(~(-26892i), _wgslsmith_div_i32(-_wgslsmith_clamp_i32(-u_input.b.x, firstTrailingBit(var_0.c.b.x), u_input.b.x), _wgslsmith_clamp_i32(-59122i, abs(1i), -1i)), 1i);
    var_1 = vec3<i32>(var_0.a.b.b.x, _wgslsmith_mult_i32(min(var_1.x, 1431i << (1u % 32u)), ~u_input.b.x ^ var_1.x) & -21539i, -_wgslsmith_add_i32(-43777i, reverseBits(~var_1.x)));
    var var_2 = var_0.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2094f, 1148f)), min(~(~min(var_0.b.x, u_input.c)), var_2.x));
}

