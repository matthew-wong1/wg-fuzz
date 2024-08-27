struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = ~(~(~_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, 4294967295u), vec4<u32>(u_input.a.x, 20578u, u_input.d.x, u_input.a.x)))));
    var var_1 = -u_input.c.xyz;
    var var_2 = ~(_wgslsmith_add_u32(_wgslsmith_sub_u32(~4294967295u, ~u_input.d.x), 11010u) << (9059u % 32u));
    var var_3 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(~22908u, ~105132u, firstTrailingBit(u_input.d.x)), abs(~vec3<u32>(u_input.d.x, 34336u, 0u))));
    let var_4 = select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(u_input.a.x < 7510u, 2147483647i > var_1.x), true), true), vec2<bool>(true, true), !vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-162f - 249f)));
}

fn func_2(arg_0: bool) -> bool {
    global0 = arg_0;
    var var_0 = Struct_2(Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), 198f) * vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(-1000f, -1594f))), abs(~(~vec2<u32>(28647u, 115071u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-107f)))), vec4<i32>(53320i, 0i, -u_input.c.x, u_input.b.x)));
    var var_1 = Struct_4(false, Struct_1(!all(vec4<bool>(var_0.a.a, arg_0, false, arg_0)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.b.x)) + -463f), var_0.a.b.x), var_0.a.c, _wgslsmith_f_op_f32(-var_0.a.d), ~u_input.c), all(select(vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, true), vec4<bool>(false, var_0.a.a, arg_0, true), vec4<bool>(true, true, true, true))) || arg_0, 469f, any(select(!vec3<bool>(var_0.a.a, var_0.a.a, true), !(!vec3<bool>(var_0.a.a, var_0.a.a, false)), !all(vec4<bool>(false, false, true, false)))));
    var_1 = Struct_4(!arg_0, Struct_1(!var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(152f, var_1.d))), vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a.c.x, 0u, 4294967295u), vec4<u32>(u_input.a.x, 132309u, var_0.a.c.x, var_0.a.c.x))) >> (var_0.a.c % vec2<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.d))))), max(firstTrailingBit(vec4<i32>(-2147483647i, u_input.b.x, var_1.b.e.x, var_0.a.e.x)), vec4<i32>(var_1.b.e.x, -2147483647i << (u_input.d.x % 32u), 1080i, _wgslsmith_sub_i32(u_input.b.x, -2147483647i)))), !(0i > _wgslsmith_clamp_i32(abs(2804i), 28041i, ~62607i)), _wgslsmith_div_f32(var_0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(1000f - var_1.d))))), var_1.a);
    let var_2 = Struct_3(_wgslsmith_div_vec2_i32(var_1.b.e.zx, firstLeadingBit(var_1.b.e.xz)), ~(firstTrailingBit(u_input.c.wxy >> (u_input.d % vec3<u32>(32u))) >> ((~u_input.d >> (firstLeadingBit(vec3<u32>(var_0.a.c.x, u_input.a.x, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
    return select(var_1.c, all(!select(select(vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(arg_0, false, arg_0), var_1.b.a), select(vec3<bool>(false, true, false), vec3<bool>(var_0.a.a, false, true), vec3<bool>(true, false, false)), var_1.b.b.x == -856f)), true);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32) -> vec2<u32> {
    let var_0 = u_input.a;
    let var_1 = countOneBits(arg_1);
    global0 = false;
    let var_2 = vec3<bool>(true, true, any(select(!(!vec2<bool>(arg_0, arg_0)), vec2<bool>(select(arg_0, arg_0, false), !arg_0), true)));
    global0 = true;
    return vec2<u32>(46459u << (var_1 % 32u), abs(70132u));
}

fn func_1() -> vec4<bool> {
    global0 = !(!select(true, true, _wgslsmith_add_u32(u_input.d.x, 1u) == 434u));
    let var_0 = func_4(func_2(!(29240u == u_input.d.x)) | (1598u >= _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_mod_u32(u_input.a.x, 6059u))), 13398u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-2212f - -533f)) - 1000f));
    global0 = all(vec4<bool>(true, (50520i | _wgslsmith_mult_i32(2147483647i, u_input.c.x)) != select(u_input.b.x >> (var_0.x % 32u), -1i, any(vec2<bool>(false, true))), true, true));
    var var_1 = u_input.d.x;
    global0 = true;
    return vec4<bool>(~(0u << (_wgslsmith_dot_vec3_u32(u_input.a.zzy, vec3<u32>(var_0.x, var_0.x, 4294967295u)) % 32u)) >= ~_wgslsmith_add_u32(~0u, 7406u | var_0.x), true, !any(vec2<bool>(false, true)), !(any(vec2<bool>(true, true)) || any(vec2<bool>(true, true))));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<f32> {
    global0 = any(func_1());
    var var_0 = ~arg_2.e;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -785f);
    let var_2 = arg_2.e.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) + -290f))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(arg_2.b, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_3.a.d, var_3), _wgslsmith_div_f32(arg_2.d, arg_2.d))), arg_2.b.x)), arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(vec4<bool>(true, true, true, true));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(abs(u_input.c.x), func_1(), Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(320f, 600f) + vec2<f32>(-1077f, -239f)), u_input.d.yy, -1520f, _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(0i, u_input.c.x, 1i, -6240i))), Struct_2(Struct_1(false, vec2<f32>(-575f, 909f), u_input.a.yx, 261f, u_input.c))))));
    var_0 = vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(858f, _wgslsmith_f_op_f32(-var_0.x))), -1037f));
    var var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a.xz, vec2<u32>(u_input.d.x, 23182u)), abs(u_input.a.ww ^ u_input.a.yx), firstLeadingBit(u_input.d.xz)) >> (firstTrailingBit(func_4(false, ~54610u, _wgslsmith_f_op_f32(1166f * -2076f))) % vec2<u32>(32u)), ~u_input.d.xz);
    var_0 = vec2<f32>(var_0.x, var_0.x);
    var var_2 = vec4<bool>(!((_wgslsmith_sub_i32(25370i, u_input.b.x) <= abs(-3997i)) | select(true, true, var_0.x < var_0.x)), true, false, func_2(all(vec2<bool>(false, true))) | any(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1303f + 466f))), 25625u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(func_3())) + -381f)).x, u_input.a.yzw);
}

