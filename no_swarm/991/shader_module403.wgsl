struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_3,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
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

var<private> global0: Struct_3 = Struct_3(true, Struct_1(vec2<f32>(-1456f, -337f)), 4294967295u, true);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> i32 {
    global0 = Struct_3(true, global0.b, 4294967295u, -217f < _wgslsmith_f_op_f32(1024f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1319f, global0.b.a.x)))));
    var var_0 = Struct_2(global0.b);
    global0 = Struct_3(false, var_0.a, ~abs(1u), global0.a);
    let var_1 = Struct_2(global0.b);
    let var_2 = var_1;
    return -firstLeadingBit(abs(-1i));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> vec2<f32> {
    global0 = Struct_3(!(~firstLeadingBit(0u) <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, 35902u, 32786u, 26565u), vec4<u32>(4294967295u, 0u, 60197u, global0.c))), arg_0, abs(countOneBits(9875u)), any(vec2<bool>(true, true)));
    var var_0 = reverseBits(vec2<u32>(~(~global0.c), ~global0.c) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(14365u, 0u, 59861u)), ~vec3<u32>(4294967295u, 63445u, global0.c)), _wgslsmith_mult_u32(0u, 1u)) % vec2<u32>(32u)));
    let var_1 = Struct_5(_wgslsmith_mod_vec4_i32(vec4<i32>(-(arg_2 | -47957i), 2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(-23644i, 12367i, -14089i, 16225i), vec4<i32>(u_input.c, arg_2, u_input.c, u_input.a)), arg_2 ^ _wgslsmith_mod_i32(1i, -1i), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, 0i), u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.b, arg_2, arg_2, _wgslsmith_mod_i32(0i, u_input.a)), vec4<i32>(u_input.c, arg_2, func_3(vec2<u32>(global0.c, global0.c), arg_2), ~0i))), vec4<i32>(u_input.b, ~(~firstLeadingBit(24380i)), -32907i, u_input.c), Struct_3(global0.d, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.yx))), firstTrailingBit(reverseBits(~global0.c)), select(global0.a | global0.d, global0.d, global0.a & true) && !global0.d), vec4<bool>(global0.a, global0.a, (i32(-1i) * -u_input.c) == u_input.c, global0.d), vec2<i32>(u_input.c, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_2, 0i, u_input.c)) ^ ~vec3<i32>(u_input.a, u_input.c, u_input.c), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2, u_input.a, arg_2), vec3<i32>(u_input.a, 0i, arg_2))))));
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.b, (vec4<i32>(-5275i, var_1.b.x, u_input.b, var_1.a.x) << (vec4<u32>(4294967295u, 45483u, 53690u, global0.c) % vec4<u32>(32u))) | -var_1.b), var_1.a) & (-var_1.a | var_1.b);
    let var_3 = !global0.d;
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(564f, 1295f, true)), arg_0.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b.a.x)))), arg_0.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: bool) -> Struct_3 {
    var var_0 = global0.c > global0.c;
    var_0 = global0.a;
    var var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.b.a.x), 1890f)));
    let var_2 = global0.b;
    var var_3 = Struct_4(Struct_3(true, var_1.a, _wgslsmith_mult_u32(1u, ~global0.c), all(vec3<bool>(!global0.d, global0.b.a.x <= var_2.a.x, global0.d))), Struct_2(global0.b), _wgslsmith_mod_i32(2147483647i, 1i));
    return Struct_3(true, Struct_1(_wgslsmith_f_op_vec2_f32(func_4(global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.x, var_3.b.a.a.x, -1270f) + vec3<f32>(-2858f, -1190f, -124f))), func_3(vec2<u32>(0u, 66757u), var_3.c) >> (global0.c % 32u)))), min(~global0.c, ~0u), arg_2);
}

fn func_1() -> Struct_4 {
    global0 = func_2(vec3<i32>(-1i) * -(vec3<i32>(1i, 1i, 1i) << (vec3<u32>(global0.c, global0.c, global0.c) % vec3<u32>(32u))), -vec4<i32>(-u_input.b, ~u_input.c, u_input.c, _wgslsmith_sub_i32(-7212i, _wgslsmith_mod_i32(u_input.a, u_input.b))), global0.b.a.x < 1f);
    let var_0 = global0.c;
    var var_1 = global0.b.a.x;
    global0 = func_2(~vec3<i32>(max(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(5045i, u_input.b, u_input.a), vec3<i32>(u_input.c, u_input.a, u_input.a))), u_input.c, u_input.c), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-38190i, 30861i, 1i, 2147483647i), vec4<i32>(u_input.c, u_input.c, -1i, 0i) ^ vec4<i32>(1i, -17036i, -27093i, 33070i)) | _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, u_input.c, u_input.a, u_input.b), vec4<i32>(-19410i, u_input.c, -16892i, -1i) >> (vec4<u32>(global0.c, 4294967295u, 4294967295u, global0.c) % vec4<u32>(32u))), (vec4<i32>(u_input.b, -2766i, -2147483647i, -1i) ^ (vec4<i32>(0i, 1i, u_input.a, -35930i) | vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i))) & countOneBits(min(vec4<i32>(-4308i, -5832i, -28563i, 0i), vec4<i32>(10038i, 1i, u_input.a, u_input.c)))), !select(!global0.d, !(8579i >= u_input.b), false));
    global0 = Struct_3(true, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.b.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b.a.x, -1507f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1429f))))), ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(global0.c, 91651u, global0.c, 1u), vec4<u32>(89511u, 32537u, global0.c, 148209u)) | ~vec4<u32>(global0.c, global0.c, 1u, 44005u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0.c, global0.c, 35420u), vec4<u32>(0u, global0.c, 33461u, 71924u)) & select(vec4<u32>(global0.c, global0.c, 1743u, 95252u), vec4<u32>(1u, global0.c, global0.c, 74017u), true)), global0.d);
    return Struct_4(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, u_input.b), 1i, -37439i), -(vec3<i32>(u_input.a, u_input.b, u_input.a) >> (vec3<u32>(global0.c, global0.c, 4294967295u) % vec3<u32>(32u)))), reverseBits(_wgslsmith_add_vec4_i32(~vec4<i32>(21057i, u_input.a, u_input.c, u_input.b), vec4<i32>(u_input.b, -27771i, u_input.c, u_input.c))), true), Struct_2(func_2(vec3<i32>(_wgslsmith_add_i32(0i, -1i), reverseBits(u_input.b), -26958i), vec4<i32>(-u_input.b, -36641i, -u_input.b, 0i), all(vec2<bool>(global0.a, global0.d))).b), i32(-1i) * -u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c;
    let var_1 = global0.d;
    let var_2 = func_1();
    global0 = var_2.a;
    let var_3 = Struct_2(global0.b);
    var_0 = global0.c;
    global0 = Struct_3(func_1().a.a, func_2(abs(vec3<i32>(0i, -48005i, u_input.a)) >> (vec3<u32>(~0u, global0.c, 1u) % vec3<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-543i, -1i, 9589i), vec3<i32>(27679i, -43279i, 4577i)) << (1u % 32u), (u_input.a >> (var_2.a.c % 32u)) ^ -1i, _wgslsmith_add_i32(u_input.a, ~(-1i)), -1582i), global0.b.a.x != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.b.a.x))))).b, ~func_2(vec3<i32>(13615i, 1i, _wgslsmith_div_i32(var_2.c, 30734i)), vec4<i32>(~(-2147483647i), u_input.b, -2147483647i, -42913i), var_2.a.d).c, var_2.a.d);
    let var_4 = any(select(select(!vec3<bool>(false, var_2.a.a, global0.a), select(vec3<bool>(global0.a, global0.d, global0.d), vec3<bool>(var_2.a.a, true, var_2.a.a), vec3<bool>(true, true, true)), vec3<bool>(false, true, global0.a)), vec3<bool>(var_2.a.d, !var_2.a.a, false), vec3<bool>(var_2.a.a, global0.d, true))) | func_2(min(vec3<i32>(-10740i, -1i, u_input.c) | vec3<i32>(var_2.c, -6522i, -2147483647i), vec3<i32>(u_input.c, var_2.c, -1i)) | _wgslsmith_div_vec3_i32(vec3<i32>(0i, -30258i, 1i) & vec3<i32>(u_input.b, 23399i, u_input.a), vec3<i32>(1i, -1i, 27640i)), _wgslsmith_sub_vec4_i32(-reverseBits(vec4<i32>(25395i, var_2.c, var_2.c, var_2.c)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.c, u_input.c, var_2.c, var_2.c), vec4<i32>(u_input.b, -33513i, var_2.c, u_input.c)), reverseBits(vec4<i32>(-2147483647i, 1i, 1i, 2147483647i)))), !(!func_1().a.d)).a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(select(global0.c & var_2.a.c, ~1u, all(vec4<bool>(var_2.a.a, var_4, false, global0.a))), var_2.a.c), ~_wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(26379u, var_2.a.c, global0.c)), ~firstLeadingBit(vec3<u32>(0u, 1u, 38307u))));
}

