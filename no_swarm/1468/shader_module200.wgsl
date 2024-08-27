struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

var<private> global1: Struct_3;

var<private> global2: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = true;
    let var_1 = Struct_2(Struct_1(firstLeadingBit(~global1.d.x >> (~25945u % 32u)), !(!all(vec3<bool>(var_0, true, true))), u_input.e), Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, u_input.e.x << (arg_0 % 32u)), arg_0), select(all(!vec3<bool>(false, var_0, false)), var_0, true), global1.d.yxy), Struct_1(firstLeadingBit(~4294967295u), false, min(global1.d.yzz, ~vec3<u32>(global1.d.x, global1.d.x, u_input.e.x))), ~global1.e << (select(arg_0 << (abs(global1.c.x) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global1.d.x, global1.c.x, arg_0), vec4<u32>(47837u, 44123u, u_input.e.x, u_input.c.x)) << (reverseBits(global1.c.x) % 32u), var_0) % 32u), !vec3<bool>(!var_0 & true, select(any(vec2<bool>(var_0, var_0)), -481f == global1.b, var_0), var_0));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-738f))))))), 625f));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1143f + 334f) + 1f) - 874f)), _wgslsmith_f_op_f32(func_3(countOneBits(arg_0.x))), abs(firstLeadingBit(~(vec2<u32>(0u, u_input.e.x) << (global1.d.yx % vec2<u32>(32u))))), ~(global1.d >> (vec4<u32>(global1.c.x, ~arg_0.x, 23993u << (u_input.e.x % 32u), abs(global1.c.x)) % vec4<u32>(32u))), global1.e);
    var var_0 = Struct_1(arg_0.x, !any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false)), ~u_input.e);
    var_0 = Struct_1(reverseBits(_wgslsmith_add_u32(u_input.e.x, arg_0.x)), 439f < global1.a, ~(~arg_0));
    global1 = Struct_3(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-273f)))))), _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.b, global1.a))))), ~firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(3002u, var_0.a), global1.c ^ global1.c)), vec4<u32>(max(~29787u, firstLeadingBit(49192u)), 1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), 77818u), var_0.a), ~abs(arg_0.x)), -_wgslsmith_div_i32(~global1.e, _wgslsmith_add_i32(14593i, 1i) << (_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.c.x, 49988u, 23524u)) % 32u)));
    var_0 = Struct_1(0u, all(vec2<bool>(true, true)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.e, global1.d.xzz), vec3<u32>(4294967295u, var_0.a, var_0.c.x)), vec3<u32>(_wgslsmith_mod_u32(1u, 106421u), 17346u, _wgslsmith_mult_u32(1u, u_input.c.x))), vec3<u32>(4294967295u, 41460u & global1.d.x, global1.c.x), ~arg_0 >> (~(~u_input.e) % vec3<u32>(32u))));
    return Struct_3(873f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1463f - -645f), _wgslsmith_f_op_f32(step(-1423f, global1.a)), global1.a < global1.a)) * _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(select(-1156f, -992f, true))))), ~arg_0.yx & (~vec2<u32>(arg_0.x, 1u) ^ ~_wgslsmith_clamp_vec2_u32(u_input.e.zy, arg_0.zx, vec2<u32>(global1.d.x, u_input.c.x))), vec4<u32>(reverseBits(10689u), _wgslsmith_sub_u32(var_0.c.x, 4294967295u), arg_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global1.c, vec2<u32>(u_input.e.x, arg_0.x)), firstTrailingBit(13658u))) >> (global1.d % vec4<u32>(32u)), abs(max(9487i, global1.e << (_wgslsmith_clamp_u32(0u, u_input.c.x, 29235u) % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(firstTrailingBit(_wgslsmith_div_u32(arg_0.c.x, global1.c.x))), true, _wgslsmith_mult_vec3_u32(vec3<u32>(~4918u, arg_0.c.x, 4294967295u), ~vec3<u32>(4294967295u, u_input.c.x, 1u))), Struct_1(countOneBits(firstTrailingBit(countOneBits(48879u))), true, ~(~reverseBits(u_input.e))), Struct_1(arg_2.d.x, false, _wgslsmith_sub_vec3_u32(~(~vec3<u32>(arg_0.d.x, global1.c.x, arg_0.d.x)), select(~u_input.e, vec3<u32>(global1.c.x, u_input.c.x, global1.c.x), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, true), true)))), arg_2.e, vec3<bool>(true, select(select(any(vec2<bool>(arg_1, arg_1)), all(vec4<bool>(arg_1, true, arg_1, true)), arg_1), true & !arg_1, !(false || arg_1)), any(select(vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), arg_1), arg_1))));
    global2 = global1.e;
    var var_1 = !any(var_0.e);
    let var_2 = Struct_5(abs(~u_input.e << (max(u_input.e, vec3<u32>(1u, 1u, 4294967295u)) % vec3<u32>(32u))), -countOneBits(vec3<i32>(global1.e, -2147483647i, u_input.a.x)) | u_input.b.xyz);
    var var_3 = true;
    return Struct_4(u_input.a.xz, vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_dot_vec3_i32(var_2.b, vec3<i32>(u_input.a.x, 30081i, 53148i))), abs(i32(-1i) * -14785i), _wgslsmith_dot_vec3_i32(-vec3<i32>(51282i, var_2.b.x, -2147483647i), ~vec3<i32>(u_input.d.x, var_0.d, -18651i))), -(~(-1i) & _wgslsmith_mult_i32(49819i, var_2.b.x)), func_2(vec3<u32>(~4294967295u, var_0.a.a << (4294967295u % 32u), 0u)).e, 0i), Struct_2(Struct_1(reverseBits(58440u), false, var_2.a), Struct_1(~countOneBits(1u), var_0.b.b == arg_1, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.d.x, 69000u, u_input.e.x), min(u_input.e, var_0.a.c))), var_0.b, ~_wgslsmith_mod_i32(var_2.b.x, countOneBits(35813i)), var_0.e), select(select(vec4<bool>(true, true, var_0.e.x & arg_1, global1.d.x >= var_0.c.c.x), vec4<bool>(true, all(var_0.e), true, true), !vec4<bool>(var_0.b.b, arg_1, true, false)), select(vec4<bool>(true, var_0.d < u_input.d.x, var_0.e.x, true), select(select(vec4<bool>(arg_1, var_0.a.b, arg_1, true), vec4<bool>(false, var_0.a.b, var_0.b.b, false), var_0.c.b), select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.a.b, var_0.c.b, true, var_0.e.x), true), select(vec4<bool>(true, arg_1, var_0.e.x, arg_1), vec4<bool>(true, var_0.e.x, true, false), false)), select(select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(false, false, arg_1, true), false), select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(false, true, var_0.b.b, arg_1)), vec4<bool>(false, true, false, var_0.e.x))), false));
}

fn func_1() -> bool {
    var var_0 = global1.e;
    var var_1 = 0i;
    let var_2 = func_4(func_2(vec3<u32>(0u, ~(~29751u), global1.c.x)), true | (_wgslsmith_mult_u32(_wgslsmith_div_u32(global1.c.x, global1.c.x), 22678u) >= 25771u), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(660f, global1.a, false)) - global1.b)), global1.b, global1.c, firstLeadingBit(~(~vec4<u32>(87381u, 1u, global1.d.x, u_input.e.x))), firstTrailingBit((-19502i ^ global1.e) ^ 28615i)));
    global2 = u_input.b.x;
    let var_3 = ~52713u ^ _wgslsmith_div_u32(~global1.c.x, 25860u);
    return !(!func_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1265f), global1.a, global1.c, _wgslsmith_mult_vec4_u32(vec4<u32>(var_3, var_3, global1.d.x, 40798u), global1.d), _wgslsmith_mod_i32(global1.e, 12504i)), var_2.c.c.b, Struct_3(177f, -508f, _wgslsmith_mod_vec2_u32(global1.d.xw, global1.d.xy), global1.d, select(-2147483647i, global1.e, var_2.d.x))).d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.e;
    global1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.b)), global1.a), _wgslsmith_f_op_f32(trunc(375f)), firstTrailingBit(vec2<u32>(~global1.c.x, u_input.e.x)), global1.d, global1.e);
    let var_1 = select(false, global1.b < global1.a, false);
    global0 = array<vec4<i32>, 19>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.a, -1316f))), -669f, -1234f);
    var var_3 = vec3<bool>(false, var_1, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.e.zz), u_input.e.zy, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, global1.e), u_input.a.xz, var_3.yz), u_input.d.xz), firstTrailingBit(~(~u_input.a.zz))), firstLeadingBit(u_input.d.x), var_2.yz);
}

