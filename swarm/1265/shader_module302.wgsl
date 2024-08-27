struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 2741u);

var<private> global1: array<Struct_3, 14>;

var<private> global2: Struct_2 = Struct_2(0u, vec4<u32>(39015u, 86331u, 1u, 0u), Struct_1(vec3<bool>(false, true, true), vec3<f32>(1000f, -373f, -379f), 41429u, 0i, 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.a, -2147483647i) >> (~global2.c.e % 32u), ~(~u_input.a), global2.c.d | abs(u_input.a)) << (~vec3<u32>(global2.b.x, _wgslsmith_div_u32(global2.c.e, global2.c.e), firstTrailingBit(161u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-select(abs(vec3<i32>(global2.c.d, 306i, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 104124i, 1i), vec3<i32>(global2.c.d, u_input.a, 2147483647i)), true), -_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.c.d, -31249i, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i)), abs(vec3<i32>(-4096i, global2.c.d, u_input.a)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) + _wgslsmith_f_op_f32(exp2(arg_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.b.x)), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1000f, -349f)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.c.b.x)) + global2.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(465f, _wgslsmith_f_op_f32(min(283f, 783f)), !arg_1.c)) - arg_1.a), _wgslsmith_f_op_f32(-global2.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.c.b.x - -1774f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1399f, -803f, -3781f, -934f) * vec4<f32>(300f, 257f, global2.c.b.x, global2.c.b.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.c.b.x, -220f, -1490f, global2.c.b.x))), true)) - _wgslsmith_div_vec4_f32(vec4<f32>(286f, _wgslsmith_f_op_f32(round(428f)), _wgslsmith_f_op_f32(533f - arg_1.a), _wgslsmith_f_op_f32(arg_1.a - global2.c.b.x)), vec4<f32>(1069f, var_1.x, _wgslsmith_f_op_f32(sign(global2.c.b.x)), arg_1.a))));
    let var_2 = global2.b;
    return 35646i;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = false;
    let var_1 = any(!vec4<bool>(select(true, any(vec4<bool>(arg_0.c.a.x, false, true, arg_0.c.a.x)), select(false, var_0, true)), true, all(vec2<bool>(arg_0.c.a.x, false)), false));
    let var_2 = !(select(0i, 77289i, select(1i < global2.c.d, var_1, !arg_0.c.a.x)) <= select(-1i, countOneBits(-arg_0.c.d), var_0));
    let var_3 = global1[_wgslsmith_index_u32(global0.x, 14u)];
    var var_4 = _wgslsmith_f_op_vec2_f32(-arg_0.c.b.zy);
    return _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(~global2.a ^ reverseBits(arg_0.c.e), arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 26037u, 1u, 74691u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, u_input.d), vec4<u32>(1019u, 4294967295u, 0u, global2.b.x))), 0u)), abs(_wgslsmith_sub_vec4_u32(~global2.b, ~vec4<u32>(global0.x, u_input.b, global2.a, arg_0.a))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_3 {
    global2 = Struct_2(min(1u, 12152u >> (1u % 32u)) ^ countOneBits(global0.x), ~abs(global2.b), global2.c);
    var var_0 = Struct_2(func_4(Struct_2(75532u, _wgslsmith_div_vec4_u32(global2.b, global2.b), global2.c), _wgslsmith_mod_i32(-arg_0.x, func_3(global2.c.a, Struct_3(-350f, vec2<bool>(false, false), true)))) | u_input.d, global2.b & ~(~(global2.b | vec4<u32>(40089u, 44427u, global2.b.x, u_input.b))), Struct_1(!global2.c.a, _wgslsmith_f_op_vec3_f32(-global2.c.b), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(19203u, global0.x), _wgslsmith_mult_u32(6285u, global2.a)), 1i, reverseBits(~_wgslsmith_div_u32(global2.c.c, global0.x))));
    let var_1 = !(false != !(false || !global2.c.a.x));
    var var_2 = vec2<f32>(global2.c.b.x, _wgslsmith_f_op_f32(sign(var_0.c.b.x)));
    global0 = vec3<u32>(global2.c.c >> (_wgslsmith_mod_u32(1u, 1850u >> (global2.a % 32u)) % 32u), global2.a, 93934u);
    return Struct_3(1000f, select(select(vec2<bool>(all(vec4<bool>(global2.c.a.x, var_1, true, var_1)), global2.c.a.x), vec2<bool>(var_0.c.a.x, true), !all(vec3<bool>(false, var_1, false))), !select(select(vec2<bool>(false, false), var_0.c.a.yx, var_0.c.a.xz), !global2.c.a.yx, vec2<bool>(false, true)), true != all(vec4<bool>(true, true, true, var_1))), !global2.c.a.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = arg_0;
    let var_1 = global2.c.b.xy;
    global0 = _wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.c, u_input.c), vec3<u32>(1u, ~global0.x, u_input.c.x));
    var var_2 = vec2<bool>(select(arg_0.c, false | !arg_1.x, true), true);
    global2 = Struct_2(arg_2 | (abs(_wgslsmith_add_u32(arg_3, arg_3)) << (~(~global2.c.e) % 32u)), _wgslsmith_add_vec4_u32(~(~global2.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, global0.x, u_input.b), global2.b, global2.b) ^ vec4<u32>(1u, 80642u, 0u, ~global2.c.e)), global2.c);
    return global2.b.x;
}

fn func_6(arg_0: vec4<i32>, arg_1: u32) -> Struct_4 {
    global0 = vec3<u32>(4294967295u, _wgslsmith_div_u32(~(~global2.a), 155448u), ~(~global0.x));
    var var_0 = max(24910u, _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(global2.b.xz, vec2<u32>(0u, u_input.b)), global2.b.zx)) << (~firstLeadingBit(min(countOneBits(1u), reverseBits(9379u))) % 32u);
    var var_1 = !all(select(vec4<bool>(true, global2.c.a.x, any(vec2<bool>(true, global2.c.a.x)), global2.c.a.x), select(vec4<bool>(false, true, true, global2.c.a.x), select(vec4<bool>(true, global2.c.a.x, global2.c.a.x, global2.c.a.x), vec4<bool>(global2.c.a.x, global2.c.a.x, global2.c.a.x, global2.c.a.x), vec4<bool>(true, global2.c.a.x, true, false)), vec4<bool>(true, true, true, global2.c.a.x)), vec4<bool>(false, true, all(global2.c.a), false)));
    var var_2 = Struct_3(-697f, func_2(vec4<i32>(28631i, _wgslsmith_clamp_i32(arg_0.x, firstTrailingBit(global2.c.d), _wgslsmith_mod_i32(70460i, global2.c.d)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 44698i, 29832i, global2.c.d), arg_0), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, u_input.a), global2.c.d)), _wgslsmith_f_op_vec2_f32(-global2.c.b.xy), vec3<i32>(firstLeadingBit(~(-11557i)), -_wgslsmith_dot_vec2_i32(arg_0.yz, vec2<i32>(arg_0.x, global2.c.d)), -(~(-2147483647i)))).b, all(vec2<bool>(global2.c.a.x, true)) && global2.c.a.x);
    var var_3 = false;
    return Struct_4(max(abs(-_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, -1i, global2.c.d), arg_0, arg_0)), -_wgslsmith_add_vec4_i32(-vec4<i32>(global2.c.d, 1i, global2.c.d, -11682i), -vec4<i32>(-34156i, global2.c.d, 13809i, -12793i))));
}

fn func_7(arg_0: Struct_4) -> vec2<bool> {
    global0 = abs(global2.b.zzx);
    var var_0 = global0.x;
    var var_1 = 1u;
    var_0 = _wgslsmith_div_u32(firstLeadingBit(abs(~global2.c.e)), 0u);
    var_0 = 46900u;
    return global2.c.a.xy;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> vec4<i32> {
    global1 = array<Struct_3, 14>();
    let var_0 = func_7(func_6(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(arg_2.x, -1i, 22256i, u_input.a)), ~vec4<i32>(arg_2.x, u_input.a, global2.c.d, global2.c.d)), ~(-vec4<i32>(u_input.a, -2147483647i, 28815i, 0i))), _wgslsmith_add_u32(~_wgslsmith_add_u32(arg_1, global2.b.x), func_5(func_2(vec4<i32>(2147483647i, -39462i, 44162i, arg_2.x), global2.c.b.yx, vec3<i32>(arg_2.x, global2.c.d, global2.c.d)), vec2<bool>(true, global2.c.a.x), 0u, 1u))));
    let var_1 = -u_input.a;
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(529f * global2.c.b.x)), global2.c.b.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1091f, 766f, -2151f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, -287f, global2.c.b.x)))))));
    return vec4<i32>(global2.c.d, -2147483647i & firstTrailingBit(_wgslsmith_mod_i32(-u_input.a, var_1)), func_3(vec3<bool>(func_7(Struct_4(vec4<i32>(45628i, 31740i, 1i, global2.c.d))).x, true, any(vec3<bool>(arg_0, var_0.x, var_0.x))), Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.c.b.x - var_3.x))), global2.c.a.xy, func_7(func_6(vec4<i32>(-32827i, -57087i, u_input.a, 53706i), global0.x)).x)), firstLeadingBit(-32044i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false, u_input.b, vec2<i32>(-63025i, max(2147483647i, i32(-1i) * -74511i))) & _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 0i, 34408i, 57i)), firstLeadingBit(vec4<i32>(45052i, 6393i, 1i, u_input.a))) ^ vec4<i32>(_wgslsmith_mult_i32(u_input.a, global2.c.d), global2.c.d ^ 15839i, 1i, i32(-1i) * -29413i), min(vec4<i32>(_wgslsmith_mod_i32(u_input.a, 17386i), ~(-57129i), u_input.a & u_input.a, u_input.a ^ -36812i), abs(vec4<i32>(-1i, 5285i, -6282i, u_input.a)) & max(vec4<i32>(global2.c.d, -9994i, u_input.a, -1i), vec4<i32>(u_input.a, global2.c.d, global2.c.d, 2147483647i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-29023i, -14617i, global2.c.d, global2.c.d) >> (global2.b % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.a, 1i), vec4<i32>(-15247i, 0i, 46507i, u_input.a))) << (vec4<u32>(_wgslsmith_clamp_u32(89010u, 0u, u_input.d), ~4294967295u, 91486u, global2.a) % vec4<u32>(32u)));
    let var_1 = Struct_4(~(-select(vec4<i32>(-1i, 2147483647i, -2147483647i, global2.c.d), vec4<i32>(var_0.x, global2.c.d, -42308i, var_0.x), global2.c.a.x)) << (vec4<u32>(~global0.x, global2.c.e, select(global0.x, firstTrailingBit(global0.x), true), func_4(Struct_2(global0.x, global2.b, global2.c), abs(2147483647i))) % vec4<u32>(32u)));
    global2 = Struct_2(~global0.x >> (global0.x % 32u), global2.b, Struct_1(vec3<bool>(global2.c.a.x, select(global2.c.a.x, true, any(global2.c.a)), global2.c.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c.b * _wgslsmith_f_op_vec3_f32(global2.c.b + global2.c.b))), ~94486u, ~(~8576i), func_4(Struct_2(4294967295u, vec4<u32>(u_input.c.x, u_input.b, 53163u, global0.x) ^ global2.b, Struct_1(global2.c.a, vec3<f32>(-430f, 1008f, 1127f), global0.x, 0i, u_input.c.x)), var_1.a.x)));
    global0 = min(_wgslsmith_div_vec3_u32((vec3<u32>(global2.a, u_input.d, global0.x) << (_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(global2.c.c, 98747u, global2.b.x), vec3<u32>(global2.a, 23744u, global2.b.x)) % vec3<u32>(32u))) ^ vec3<u32>(27370u, ~u_input.d, 24762u & global2.b.x), u_input.c), _wgslsmith_add_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(reverseBits(~u_input.c), select(~vec3<u32>(global2.a, u_input.b, global0.x), vec3<u32>(u_input.c.x, 0u, u_input.b) << (vec3<u32>(19978u, 153801u, 0u) % vec3<u32>(32u)), select(global2.c.a, vec3<bool>(true, true, global2.c.a.x), global2.c.a.x)))));
    var_0 = vec4<i32>(abs(-u_input.a), ~_wgslsmith_add_i32(var_0.x, global2.c.d) & func_6(vec4<i32>(-40169i, 60133i, 47910i, u_input.a), ~53134u).a.x, ~global2.c.d, -_wgslsmith_sub_i32(-var_0.x, -30705i)) & var_1.a;
    global1 = array<Struct_3, 14>();
    global2 = Struct_2(~1u, abs(vec4<u32>(max(global0.x, func_5(Struct_3(global2.c.b.x, vec2<bool>(global2.c.a.x, global2.c.a.x), global2.c.a.x), vec2<bool>(global2.c.a.x, false), u_input.d, 30552u)), ~(~global0.x), _wgslsmith_clamp_u32(16403u, u_input.b, max(0u, 39673u)), u_input.b)), global2.c);
    let var_2 = var_1.a.x;
    let var_3 = _wgslsmith_f_op_f32(-global2.c.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-138f, 544f, 670f, var_3), ~(~global2.b.zwx), max(~_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, var_2, 1i, 1i), vec4<i32>(-2147483647i, global2.c.d, -60064i, 1i)), firstLeadingBit(~vec4<i32>(1i, var_0.x, u_input.a, -1i))));
}

