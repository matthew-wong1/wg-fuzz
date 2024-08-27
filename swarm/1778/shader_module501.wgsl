struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = select(u_input.c, ~max(firstLeadingBit(arg_2.a.wy), abs(arg_0.zy)) ^ _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(0u, 0u)), vec2<u32>(4294967295u, 17950u)), !(_wgslsmith_f_op_f32(floor(1867f)) == _wgslsmith_f_op_f32(floor(-940f))));
    let var_1 = arg_1.wx;
    let var_2 = _wgslsmith_dot_vec4_i32(u_input.b, abs(u_input.b ^ ~u_input.b));
    var var_3 = vec2<bool>(true, true);
    var var_4 = _wgslsmith_div_i32(35780i, u_input.b.x) >> (min(abs(~_wgslsmith_mod_u32(arg_3, arg_2.b.x)), 66057u) % 32u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), var_1.x);
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_3(vec3<u32>(arg_1, arg_1, arg_1), vec4<f32>(-794f, 244f, arg_0, global0.x), Struct_1(vec4<u32>(39469u, 57763u, 1u, u_input.d), vec3<u32>(61049u, u_input.c.x, 87191u)), 488u))) * -763f)))));
    var var_1 = Struct_2(~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d, 55670u, u_input.c.x, 22573u)), reverseBits(vec4<u32>(27270u, 6538u, u_input.d, 0u))), Struct_1(vec4<u32>(~(~arg_1), ~1u, 4294967295u, _wgslsmith_sub_u32(1u, arg_1)), select(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.a.x), u_input.a), u_input.a), _wgslsmith_add_vec3_u32(~u_input.a, ~u_input.a), vec3<bool>(false, true, true))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1116f, arg_0) + vec2<f32>(global0.x, -1565f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-647f, global0.x)))))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), -1201f)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + global0.x), global0.x))) - -624f));
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b.b.x, 4294967295u), ~((_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.x, var_1.b.a.x), vec2<u32>(arg_1, 4294967295u)) | (u_input.c << (u_input.a.xy % vec2<u32>(32u)))) | vec2<u32>(countOneBits(17483u), arg_1)));
    return Struct_2(var_1.b.a, Struct_1(~vec4<u32>(61234u ^ arg_1, u_input.d, _wgslsmith_div_u32(u_input.d, var_2.x), 1u), u_input.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = vec3<bool>(arg_3.x, false, select(true, ~1i != firstTrailingBit(26215i), true));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-arg_1.x)), arg_1.zx) + arg_1.yw) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zz - arg_1.wz) + _wgslsmith_f_op_vec2_f32(-arg_1.yw))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.xw)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zx - vec2<f32>(global0.x, arg_1.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-768f - arg_1.x), _wgslsmith_f_op_f32(max(global0.x, arg_1.x)), !arg_3.x)) - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -659f)));
    var var_1 = abs(~(~_wgslsmith_div_u32(4294967295u, 16584u)) >> (arg_0.x % 32u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, -1386f, global0.x, -159f))) - vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), -782f, global0.x, _wgslsmith_f_op_f32(-1224f - -390f))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(88199u, _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 64258u), abs(10138u)), u_input.c.x, 45783u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-212f, -385f, 418f, global0.x), vec4<f32>(global0.x, global0.x, -146f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, 470f, global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1531f, -830f, 331f)))), Struct_3(func_2(_wgslsmith_f_op_f32(global0.x * 1655f), u_input.a.x), Struct_1(~vec4<u32>(u_input.d, 4294967295u, u_input.c.x, 6935u), _wgslsmith_sub_vec3_u32(u_input.a, u_input.a))), vec2<bool>(any(vec2<bool>(false, false)) | all(vec3<bool>(true, true, false)), false))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(ceil(790f)), global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1359f, global0.x)))))), false));
    let var_1 = -740f;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(u_input.c.x, u_input.a.x, 25585u, u_input.a.x), vec4<f32>(global0.x, var_1, var_0.x, -531f), Struct_3(Struct_2(vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.d), Struct_1(vec4<u32>(u_input.c.x, u_input.d, u_input.d, 41395u), vec3<u32>(u_input.d, 0u, 12242u))), Struct_1(vec4<u32>(u_input.a.x, 1u, 7050u, u_input.c.x), u_input.a)), vec2<bool>(false, false))).x)), -2164f)));
    var var_2 = _wgslsmith_div_f32(global0.x, var_0.x);
    return func_2(1968f, _wgslsmith_add_u32(0u | firstTrailingBit(u_input.c.x << (30936u % 32u)), ~40541u)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(reverseBits(vec4<u32>(countOneBits(37982u), ~(~u_input.a.x), 4294967295u, 4294967295u)), func_1());
    var var_1 = select(false, any(vec4<bool>(any(vec4<bool>(false, true, false, false)), 39516u != var_0.b.a.x, any(vec3<bool>(false, false, false)), false)), true) | ((u_input.b.x >> (~u_input.d % 32u)) >= abs(u_input.b.x));
    var var_2 = _wgslsmith_f_op_f32(global0.x + 1985f);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1068f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    let var_3 = Struct_1(vec4<u32>(var_0.b.b.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(abs(u_input.c.x), firstLeadingBit(u_input.a.x)), ~var_0.b.a.x), var_0.a.x, 39621u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a, ~vec3<u32>(1u, 1u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 70636u), ~u_input.a.x, 1u), u_input.a >> (vec3<u32>(u_input.d, u_input.d, u_input.a.x) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a ^ var_0.b.a.yyw, _wgslsmith_sub_vec3_i32(abs(firstTrailingBit(u_input.b.www) & select(vec3<i32>(u_input.b.x, 22198i, 54685i), vec3<i32>(u_input.b.x, 21750i, u_input.b.x), vec3<bool>(false, true, true))), u_input.b.wyx), ~(~min(-1i, 0i)));
}

