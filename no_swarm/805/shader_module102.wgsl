struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 7>;

var<private> global1: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-9667i, 12717i, 55548i), vec3<i32>(0i, -23378i, 1i), vec3<i32>(1i, 2147483647i, -51032i), vec3<i32>(2147483647i, 10198i, -23287i), vec3<i32>(i32(-2147483648), 22483i, i32(-2147483648)), vec3<i32>(25008i, 1i, 10196i), vec3<i32>(i32(-2147483648), i32(-2147483648), 15103i), vec3<i32>(25371i, 5675i, -1i), vec3<i32>(1i, 33934i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 26632i, 17i), vec3<i32>(23230i, i32(-2147483648), -74245i), vec3<i32>(58091i, -78695i, 47103i), vec3<i32>(0i, 2147483647i, 5228i), vec3<i32>(1i, 30181i, -12981i), vec3<i32>(-72813i, -1i, 1i), vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(0i, 1i, 0i), vec3<i32>(0i, 48237i, 2147483647i), vec3<i32>(2147483647i, -22057i, -1i), vec3<i32>(1i, 18324i, -1i), vec3<i32>(i32(-2147483648), 0i, 24626i), vec3<i32>(2147483647i, -19200i, 17503i), vec3<i32>(18223i, -41361i, 1i), vec3<i32>(i32(-2147483648), 25121i, 0i), vec3<i32>(3761i, -8004i, 62569i), vec3<i32>(-53647i, 87528i, 25227i), vec3<i32>(0i, -1i, -33067i), vec3<i32>(-1i, -64416i, 62634i), vec3<i32>(i32(-2147483648), 2147483647i, 15084i), vec3<i32>(-36590i, -17716i, 26027i), vec3<i32>(11922i, -1i, 58178i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = any(select(vec2<bool>(true, all(vec3<bool>(true, true, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), u_input.d < (~u_input.d >> (~u_input.d % 32u))));
    let var_1 = ~vec4<u32>(u_input.d, u_input.d, u_input.d, ~u_input.d);
    let var_2 = vec3<bool>(!any(vec4<bool>(all(vec2<bool>(false, false)), true, true, false)), u_input.b.x >= u_input.c.x, true && !all(vec2<bool>(true, true)));
    var var_3 = ~(-firstLeadingBit(_wgslsmith_div_i32(-29117i, -1i)));
    var var_4 = firstTrailingBit(vec3<u32>(abs(min(u_input.d, u_input.d)), 35042u, _wgslsmith_add_u32(~var_1.x, var_1.x))) << (_wgslsmith_mod_vec3_u32(var_1.xzx, _wgslsmith_mult_vec3_u32(var_1.zyw, reverseBits(vec3<u32>(56360u, var_1.x, u_input.d)) << ((vec3<u32>(80239u, var_1.x, var_1.x) ^ var_1.yyy) % vec3<u32>(32u)))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(step(879f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-185f + _wgslsmith_f_op_f32(min(-163f, _wgslsmith_f_op_f32(-932f + 1631f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)) - -222f))));
}

fn func_2(arg_0: Struct_4) -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(1465f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b.b.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -261f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.b.b.x))) * arg_0.b.b.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-226f)))), _wgslsmith_f_op_f32(exp2(arg_0.b.b.b.x)), !(arg_0.b.b.b.x < 1635f))), _wgslsmith_f_op_f32(-arg_0.b.b.b.x), -238f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1006f, _wgslsmith_f_op_f32(f32(-1f) * -745f))))));
    let var_1 = vec2<bool>(arg_0.b.d.x, arg_0.b.d.x);
    var var_2 = arg_0.b.b;
    var var_3 = global0[_wgslsmith_index_u32(24272u, 7u)];
    global1 = array<vec3<i32>, 32>();
    return !any(select(arg_0.b.a, select(vec4<bool>(var_2.c, false, true, var_2.c), arg_0.b.a, var_3.d.x == u_input.c.x), arg_0.b.a));
}

fn func_1() -> StorageBuffer {
    global1 = array<vec3<i32>, 32>();
    let var_0 = true & func_2(Struct_4(vec4<u32>(1u, 0u, 4294967295u, u_input.d), Struct_3(vec4<bool>(true, true, true, true), Struct_2(vec4<u32>(u_input.d, u_input.d, u_input.d, 0u), vec3<f32>(-761f, 1113f, -926f), true, vec2<u32>(4294967295u, u_input.d)), _wgslsmith_sub_u32(u_input.d, u_input.d), vec2<bool>(true, false))));
    global1 = array<vec3<i32>, 32>();
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_div_vec2_f32(vec2<f32>(1746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(190f * -1000f))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, -1216f)))), 1f))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, 536f), var_1.x)));
    return StorageBuffer(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(-13582i, 23474i, u_input.b.x, 1i) & vec4<i32>(u_input.c.x, u_input.c.x, 0i, u_input.c.x)), vec4<i32>(u_input.a.x, 5952i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-36085i, -1i), reverseBits(u_input.c.x)), 6542i)), var_1.x, -u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(u_input.d, u_input.d), u_input.d & u_input.d, firstLeadingBit(u_input.d), u_input.d), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18394u, u_input.d, u_input.d, 16540u), vec4<u32>(u_input.d, 55582u, u_input.d, u_input.d)), ~u_input.d), 0u, _wgslsmith_div_u32(u_input.d >> (0u % 32u), 92565u), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let x = u_input.a;
    s_output = func_1();
}

