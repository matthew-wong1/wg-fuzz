struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = _wgslsmith_div_vec2_u32(abs(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.e, abs(u_input.a.xw)), ~arg_0.e)), _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 1u), min(arg_0.e, u_input.a.yy) & (arg_0.e << (vec2<u32>(0u, 16905u) % vec2<u32>(32u)))) << (abs(arg_0.e & vec2<u32>(u_input.c, 17458u)) % vec2<u32>(32u)));
    var var_1 = arg_0.b;
    var var_2 = select(vec3<i32>(max(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), _wgslsmith_add_i32(u_input.b.x, arg_0.c.x)), 25247i, -26023i) >> ((u_input.a.ywx | u_input.a.xwy) % vec3<u32>(32u)), -vec3<i32>(select(i32(-1i) * -1i, u_input.b.x, arg_0.b.a.x), firstLeadingBit(0i), min(arg_0.c.x, 22081i)), true);
    var var_3 = -(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(arg_0.c.x, 1i, 0i)), vec3<i32>(25440i, firstLeadingBit(-20874i), -1i), ~u_input.b & (u_input.b << (vec3<u32>(var_0.x, 37807u, 4294967295u) % vec3<u32>(32u)))) | u_input.b);
    let var_4 = all(vec3<bool>(false, arg_0.b.a.x == var_1.a.x, false));
    return !arg_0.d.a.x;
}

fn func_2() -> Struct_3 {
    var var_0 = (u_input.a.xww | u_input.a.zwx) << (u_input.a.zzz % vec3<u32>(32u));
    let var_1 = !vec3<bool>(true, true && any(vec2<bool>(true, true)), func_3(Struct_3(var_0.x, Struct_2(vec2<bool>(true, false)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(-11159i, -1i)), Struct_2(vec2<bool>(false, false)), var_0.yy)));
    var_0 = vec3<u32>(var_0.x, (var_0.x << (var_0.x % 32u)) >> (1u % 32u), 1u);
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-232f, 138f), _wgslsmith_f_op_f32(1949f + 967f), all(vec2<bool>(true, var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -183f)))));
    return Struct_3(countOneBits(u_input.c), Struct_2(select(!var_1.yz, vec2<bool>(true, var_1.x), vec2<bool>(true, true))), -_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-667i, 0i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 0i), -vec2<i32>(u_input.b.x, -1i))), Struct_2(vec2<bool>(true, false)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 51658u), vec2<u32>(abs(~0u), _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_sub_u32(var_0.x, 907u)))));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_2();
    var var_1 = true;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b, arg_0.b, 1092f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(714f, arg_0.b, arg_0.b)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-942f, var_2.b, var_2.b))))));
    var var_4 = abs(u_input.b.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1625f + -202f)))));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(260f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -165f)))));
    var var_3 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(select(-943f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(820f + 1390f), _wgslsmith_f_op_f32(347f - -1400f), true))), any(vec3<bool>(any(vec4<bool>(var_0.d.a.x, true, var_0.d.a.x, var_0.d.a.x)), u_input.a.x < 53083u, all(var_0.b.a))))));
    let var_4 = vec2<bool>(true, !var_0.d.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b >> (~(~vec3<u32>(u_input.a.x, 47082u, 25177u)) % vec3<u32>(32u))), countOneBits(vec4<i32>(-17129i, var_3.a, var_3.a, var_0.c.x)), vec4<i32>(-(~func_1(Struct_1(var_0.c.x, var_3.b)).c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -35811i, -2526i), vec3<i32>(var_3.a, var_3.a, 2147483647i)) ^ 2147483647i, var_0.c.x, ~(-firstTrailingBit(-42740i))), 2147483647i);
}

