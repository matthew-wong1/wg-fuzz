struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: Struct_4) -> vec3<i32> {
    let var_0 = true;
    global0 = var_0;
    let var_1 = ~_wgslsmith_div_u32(arg_1.a.x, ~1u);
    let var_2 = select(arg_3.b.b.xz, !select(arg_3.b.b.zx, !vec2<bool>(arg_3.c, false), all(vec4<bool>(var_0, arg_3.b.b.x, false, false))), !var_0);
    let var_3 = Struct_2(arg_3.b.a, vec3<bool>(false, arg_3.b.a.b, var_0), -1i, abs(select(arg_3.a, abs(_wgslsmith_sub_vec2_u32(arg_1.b, arg_0.a)), !select(arg_3.b.b.yz, vec2<bool>(arg_3.b.b.x, var_2.x), arg_3.b.b.zy))));
    return ~u_input.d;
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_mult_vec4_i32(~abs(abs(~vec4<i32>(0i, -1i, u_input.d.x, u_input.c))), _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(1499i, -16453i, -2605i, u_input.d.x) & vec4<i32>(u_input.c, u_input.d.x, u_input.c, 1i), vec4<i32>(u_input.a, 4692i, u_input.d.x, 2147483647i)), select(vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.a), u_input.c, abs(53038i), i32(-1i) * -40144i), _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, -10712i, u_input.a, u_input.c), false), -vec4<i32>(u_input.d.x, u_input.c, 2147483647i, u_input.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false))));
    global1 = Struct_3(global1.a & vec2<u32>(3696u, ~(~global1.b.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, global1.a.x), global1.a), ~min(_wgslsmith_mult_vec2_u32(global1.a, vec2<u32>(global1.b.x, 28706u)), vec2<u32>(global1.b.x, u_input.b))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -515f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.yz)) * _wgslsmith_div_vec2_f32(vec2<f32>(1582f, arg_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) - arg_0.yz))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.wy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, 583f)))))));
    var_0 = 1i;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.x))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_5(vec2<f32>(_wgslsmith_div_f32(1309f, _wgslsmith_f_op_f32(f32(-1f) * -171f)), _wgslsmith_f_op_f32(-1f)), _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(-1i, 2147483647i, u_input.a), vec3<i32>(29377i, u_input.d.x, u_input.c)), -u_input.d)), -_wgslsmith_add_vec3_i32(func_2(Struct_3(global1.a, arg_1), Struct_3(vec2<u32>(1u, global1.a.x), vec2<u32>(global1.b.x, 0u)), u_input.c, Struct_4(vec2<u32>(4294967295u, u_input.b), Struct_2(Struct_1(u_input.c, true), vec3<bool>(false, arg_3.x, false), -71190i, arg_1), false, vec4<u32>(u_input.b, 0u, global1.b.x, arg_1.x))), vec3<i32>(1i, u_input.c, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec4<f32>(2548f, -539f, 1041f, -1000f), global1.a.x)))))) - -3068f), Struct_4(~max(max(arg_1, global1.a), ~global1.a), Struct_2(Struct_1(min(22151i, u_input.a), false), vec3<bool>(select(false, arg_2, false), arg_2, false), func_2(Struct_3(global1.a, vec2<u32>(4294967295u, arg_1.x)), Struct_3(arg_1, vec2<u32>(4294967295u, arg_1.x)), u_input.c, Struct_4(vec2<u32>(44567u, u_input.b), Struct_2(Struct_1(1i, false), arg_3.xxw, -38914i, vec2<u32>(u_input.b, u_input.b)), false, vec4<u32>(1u, u_input.b, global1.a.x, 12113u))).x << (firstLeadingBit(0u) % 32u), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1.x, 1u), vec2<u32>(5337u, 0u) | vec2<u32>(arg_0, arg_0))), true, vec4<u32>(_wgslsmith_div_u32(49166u, arg_1.x), 4294967295u, ~u_input.b, 4294967295u) ^ ~(~vec4<u32>(50444u, 1u, global1.a.x, 4294967295u))));
    let var_1 = -((u_input.a & _wgslsmith_div_i32(~u_input.c, var_0.b)) | ((_wgslsmith_mult_i32(u_input.c, u_input.d.x) & 7467i) ^ var_0.d.b.c));
    global1 = Struct_3(var_0.d.b.d, _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.d.d.x), arg_1));
    global1 = Struct_3(vec2<u32>(~var_0.d.d.x, ~min(23212u >> (arg_0 % 32u), 0u)), firstTrailingBit(max(vec2<u32>(u_input.b, arg_0 << (0u % 32u)), arg_1)));
    var var_2 = _wgslsmith_f_op_f32(ceil(var_0.a.x));
    return vec2<u32>(min(~(~firstLeadingBit(arg_0)), 4294967295u), 15811u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1044f, 758f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1540f + -1357f), -295f))), -62369i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1530f) * _wgslsmith_f_op_f32(-1455f - -1000f)), 375f))), Struct_4(global1.a, Struct_2(Struct_1(-7449i, true), vec3<bool>(true, false, true), ~0i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 0u, 30854u, global1.a.x), vec4<u32>(u_input.b, 54536u, global1.b.x, u_input.b)) % 32u), func_1(u_input.b, select(vec2<u32>(global1.b.x, global1.a.x), global1.a, vec2<bool>(true, false)), true, vec4<bool>(true, true, true, false))), (_wgslsmith_mult_u32(1u, u_input.b) & firstLeadingBit(u_input.b)) > global1.b.x, ~abs(vec4<u32>(u_input.b, global1.b.x, 0u, global1.b.x) | vec4<u32>(u_input.b, 4294967295u, 6130u, 29994u))));
    var var_1 = global1.b.x;
    global1 = Struct_3(vec2<u32>(func_1(var_0.d.d.x, _wgslsmith_div_vec2_u32(vec2<u32>(43608u, var_0.d.d.x), var_0.d.b.d), true, !vec4<bool>(false, var_0.d.b.b.x, true, var_0.d.c)).x | func_1(~51319u, global1.a, true, select(vec4<bool>(var_0.d.c, false, var_0.d.c, var_0.d.b.a.b), vec4<bool>(false, false, var_0.d.c, false), vec4<bool>(true, true, true, var_0.d.b.b.x))).x, global1.a.x), _wgslsmith_clamp_vec2_u32(select(firstLeadingBit(var_0.d.a), global1.a, var_0.d.c | var_0.d.c) ^ _wgslsmith_div_vec2_u32(vec2<u32>(var_0.d.b.d.x, global1.b.x), reverseBits(global1.a)), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, var_0.d.d.x), vec2<u32>(0u, ~0u)), ~select(var_0.d.a, vec2<u32>(global1.b.x, 20283u), false)));
    let var_2 = 13634i;
    var var_3 = Struct_2(var_0.d.b.a, var_0.d.b.b, var_0.b, vec2<u32>(var_0.d.b.d.x, global1.b.x));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, firstLeadingBit(min(_wgslsmith_div_i32(0i, var_0.d.b.c), 1i)), _wgslsmith_clamp_i32(firstTrailingBit(reverseBits(~48442i)), var_0.b, 83730i), var_2);
}

