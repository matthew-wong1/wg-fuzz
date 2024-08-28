struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_4,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    let var_0 = Struct_4(~17171i);
    var var_1 = var_0;
    let var_2 = arg_2.e.b;
    var var_3 = 80840u;
    var_3 = u_input.e.x;
    return arg_3.c;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = arg_0.a;
    var var_1 = !func_3(Struct_5(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(20093u, 1877u, arg_1, 44606u), vec4<u32>(0u, arg_0.e.c, 37555u, u_input.e.x)), -vec4<i32>(arg_0.e.a.x, 2147483647i, -2147483647i, arg_2.x), true), Struct_4(arg_0.b), Struct_4(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.xz)), vec2<bool>(true, true)), Struct_4(11387i), arg_0, Struct_3(all(select(vec3<bool>(arg_0.c, var_0, true), vec3<bool>(false, false, var_0), var_0)), -1i, any(vec3<bool>(arg_0.d.c, false, arg_0.c)), Struct_1(arg_0.d.a, select(u_input.a, arg_0.d.b, vec4<bool>(true, arg_0.a, arg_0.a, false)), any(vec4<bool>(false, arg_0.c, var_0, true))), arg_0.e));
    var_1 = !arg_0.d.c;
    var var_2 = Struct_4(arg_2.x);
    var_1 = !var_0;
    return vec4<bool>(func_3(Struct_5(arg_0.d, Struct_4(u_input.d), Struct_4(-1i), select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(true, false))), Struct_4(~23077i), arg_0, arg_0) & func_3(Struct_5(arg_0.d, Struct_4(2147483647i), Struct_4(arg_0.b), vec2<bool>(true, true)), Struct_4(max(arg_2.x, -2147483647i)), Struct_3(arg_0.a, 2147483647i, all(vec4<bool>(arg_0.c, false, arg_0.a, var_0)), arg_0.d, Struct_2(u_input.a, arg_0.e.b, arg_1)), arg_0), var_0, !select(select(arg_0.d.c, true, select(false, true, false)), true, !(!arg_0.a)), arg_2.x < (_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -35847i, -31320i, -63471i), u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.a, -1i, 12481i, 0i), u_input.a)) | _wgslsmith_mult_i32(arg_2.x, -68440i | var_2.a)));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_vec3_i32(-u_input.a.wxx, ~vec3<i32>(-u_input.c, abs(-13955i), 22060i));
    let var_1 = arg_2.d;
    var var_2 = -2147483647i;
    var_0 = var_1.b.wzx;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1038f, -1016f) - vec3<f32>(392f, 138f, 148f))))) + vec3<f32>(arg_2.e.b, _wgslsmith_div_f32(-718f, 1f), 287f)), vec3<f32>(-1000f, arg_2.e.b, 1f), all(!func_2(arg_2, 93780u, vec3<i32>(-2147483647i, var_0.x, 15963i))) && ((arg_2.a || true) & all(!vec3<bool>(arg_2.d.c, var_1.c, arg_2.d.c)))));
    return vec3<bool>(-(~63842i ^ u_input.b.x) <= _wgslsmith_mult_i32(var_1.b.x, -1i), var_1.c, !(!(!select(true, var_1.c, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.x;
    var var_1 = select(vec3<bool>(!any(vec2<bool>(true, true)), 1972f != _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1392f, 865f))), any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(!(u_input.e.x != 27455u), false, all(func_1(1427f, Struct_4(u_input.d), Struct_3(true, -1i, true, Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, 47178u, 1u), vec4<i32>(u_input.d, -1i, u_input.b.x, u_input.b.x), true), Struct_2(vec4<i32>(20828i, 11306i, -1i, u_input.a.x), -1015f, u_input.e.x))))), true && (_wgslsmith_mult_u32(u_input.e.x, u_input.e.x) <= min(106932u, 4294967295u))), select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, true, true))), vec3<bool>(false, true, all(vec4<bool>(true, true, true, true))), true));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -1457f))))));
    let var_3 = Struct_3(func_1(var_2, Struct_4(-1i), Struct_3(var_1.x | true, u_input.c, true, Struct_1(vec4<u32>(48858u, u_input.e.x, 37470u, 1u), vec4<i32>(49740i, u_input.a.x, -1i, 2147483647i), u_input.e.x == u_input.e.x), Struct_2(vec4<i32>(u_input.c, u_input.d, u_input.c, u_input.d) << (vec4<u32>(1u, 4294967295u, 0u, 1u) % vec4<u32>(32u)), 401f, ~u_input.e.x))).x, 0i, true, Struct_1(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(17344u, 0u, u_input.e.x, 10875u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 20673u)), ~vec4<u32>(112519u, 4294967295u, 4294967295u, 4294967295u)), (u_input.a ^ (vec4<i32>(1i, u_input.a.x, u_input.b.x, 20270i) << (vec4<u32>(u_input.e.x, u_input.e.x, 1u, 10089u) % vec4<u32>(32u)))) >> (abs(vec4<u32>(u_input.e.x, 16717u, u_input.e.x, 1u)) % vec4<u32>(32u)), func_1(_wgslsmith_f_op_f32(-var_2), Struct_4(max(u_input.d, u_input.b.x)), Struct_3(!var_1.x, firstTrailingBit(-2147483647i), var_2 >= var_2, Struct_1(vec4<u32>(1u, u_input.e.x, u_input.e.x, u_input.e.x), u_input.a, var_1.x), Struct_2(vec4<i32>(-61095i, 2147483647i, u_input.b.x, u_input.d), var_2, u_input.e.x))).x), Struct_2(abs(-vec4<i32>(1i, u_input.b.x, u_input.d, u_input.d)) >> (~(~vec4<u32>(1u, 4294967295u, 0u, 40024u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1171f, _wgslsmith_f_op_f32(-var_2), false)) * 644f), _wgslsmith_clamp_u32(1u, u_input.e.x, u_input.e.x)));
    var var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.e.a.x, -1138i, 22755i), -vec3<i32>(u_input.c, 2147483647i, u_input.d) >> ((~vec3<u32>(1u, var_3.e.c, 4294967295u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 1u), vec3<u32>(var_3.e.c, u_input.e.x, 7055u)) % vec3<u32>(32u))) % vec3<u32>(32u))), var_3.d.b.x, firstTrailingBit(~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.c, 53694i, 33275i, var_3.e.a.x))), u_input.d);
    var_4 = _wgslsmith_add_vec4_i32(min(_wgslsmith_mod_vec4_i32(var_3.d.b & var_3.e.a, select(vec4<i32>(var_3.d.b.x, -1i, 37902i, u_input.c), u_input.a, vec4<bool>(var_1.x, var_1.x, false, var_3.c))) >> (vec4<u32>(u_input.e.x, 51441u, u_input.e.x, ~u_input.e.x) % vec4<u32>(32u)), vec4<i32>(1i, _wgslsmith_div_i32(-2147483647i, 1i), 2147483647i, ~firstLeadingBit(25382i))), ~abs(~var_3.e.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2)) * -369f))), var_3.d.a, max(abs(~_wgslsmith_add_vec2_u32(var_3.d.a.zy, u_input.e)), u_input.e), _wgslsmith_add_u32(~(~var_3.d.a.x), max(max(1u, _wgslsmith_add_u32(0u, u_input.e.x)), _wgslsmith_mod_u32(min(u_input.e.x, var_3.d.a.x), 34148u))));
}

