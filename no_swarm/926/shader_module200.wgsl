struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: Struct_3 = Struct_3(true, true, -34711i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> u32 {
    global3 = Struct_3(true, false && all(select(!vec4<bool>(true, global3.a, true, true), vec4<bool>(global3.b, false, global3.b, true), true)), firstLeadingBit(28664i) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.x, u_input.b.x, 28809u, 23150u), select(vec4<u32>(85182u, 33084u, 0u, global0.b.x), vec4<u32>(17612u, 0u, 44692u, arg_0), vec4<bool>(global3.a, true, global3.a, global3.a))), abs(select(vec4<u32>(1u, u_input.b.x, 10801u, global1.b.x), vec4<u32>(5368u, 34865u, 0u, u_input.b.x), vec4<bool>(true, global3.b, global3.a, global3.b)))) % 32u));
    global2 = _wgslsmith_mod_u32(u_input.b.x, ~_wgslsmith_mod_u32(global1.b.x, ~1u << (~4294967295u % 32u)));
    let var_0 = (!any(select(vec2<bool>(global3.a, global3.b), vec2<bool>(global3.b, false), true)) | select(!(!global3.b), !all(vec4<bool>(global3.a, global3.a, false, true)), global3.a)) == all(!vec2<bool>(!global3.b, false));
    var var_1 = any(select(vec2<bool>(true, true), vec2<bool>(true, !(!var_0)), !(any(vec2<bool>(true, global3.b)) && false)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -1874f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1183f, 674f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-408f, -1000f))))));
    return ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.b.x, 4294967295u, global0.b.x), vec3<u32>(3205u, u_input.b.x, u_input.b.x)) << ((vec3<u32>(arg_0, global0.b.x, 4294967295u) ^ vec3<u32>(4294967295u, 59331u, 0u)) % vec3<u32>(32u)), ~vec3<u32>(0u, 1u, 0u)), reverseBits(~countOneBits(vec3<u32>(global1.b.x, u_input.b.x, 1u))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = 676f;
    global3 = Struct_3(global3.a, true, _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i | global1.a, -2147483647i), -(global3.c << (u_input.b.x % 32u))) >> (min(~func_3(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(47256u, 31779u, global0.b.x), vec3<u32>(global1.b.x, global0.b.x, 72439u)) << (~global0.b.x % 32u)) % 32u));
    var var_1 = -723f;
    return Struct_1(0i, select(abs(u_input.b), vec2<u32>(min(global1.b.x, global0.b.x), _wgslsmith_mod_u32(arg_0, 0u)), all(vec4<bool>(false, global3.b, true, true))) << (_wgslsmith_div_vec2_u32(countOneBits(u_input.b), (global1.b ^ vec2<u32>(0u, 0u)) & _wgslsmith_mod_vec2_u32(global1.b, vec2<u32>(0u, global1.b.x))) % vec2<u32>(32u)), -11925i);
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = -(vec4<i32>(-global1.a, min(-7916i, reverseBits(11070i)), _wgslsmith_mult_i32(85940i, -1i), ~_wgslsmith_mult_i32(57486i, -9984i)) & -_wgslsmith_mod_vec4_i32(select(vec4<i32>(-2147483647i, arg_0.a, -2147483647i, -34773i), vec4<i32>(1664i, 1i, arg_0.a, 44112i), vec4<bool>(global3.b, global3.b, global3.b, true)), vec4<i32>(-2147483647i, 24611i, -10780i, -2147483647i)));
    var var_1 = Struct_3(all(!(!vec3<bool>(global3.a, global3.a, global3.b))), false, -2147483647i);
    let var_2 = false;
    let var_3 = Struct_2(2147483647i, global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -853f), -_wgslsmith_dot_vec4_i32(vec4<i32>(select(global3.c, -19539i, true), global3.c, 0i, min(2147483647i, 3291i)), vec4<i32>(~global3.c, ~12849i, -2147483647i, global3.c)), ~vec2<u32>(~arg_0.b.x, ~(~10349u)));
    let var_4 = var_0.yy;
    return var_3.e;
}

fn func_1() -> vec2<u32> {
    return func_4(func_2(17060u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.x | u_input.b.x;
    let var_1 = Struct_2(10082i, 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-858f * -561f)))), -1000f), u_input.d.x, reverseBits(_wgslsmith_sub_vec2_u32(u_input.b, ~(~vec2<u32>(48476u, 53044u)))));
    global0 = Struct_1(u_input.a.x, _wgslsmith_div_vec2_u32(~func_1(), var_1.e), -firstTrailingBit(firstTrailingBit(_wgslsmith_mult_i32(1i, var_1.d))));
    var var_2 = ~(~global1.b.x);
    global1 = func_2(var_0);
    let var_3 = -vec2<i32>(_wgslsmith_sub_i32(-abs(1i), var_1.d), select(_wgslsmith_add_i32(abs(-1248i), global0.a), -64727i, false));
    let var_4 = Struct_3(global3.b & global3.a, true, var_3.x);
    var var_5 = vec4<i32>(_wgslsmith_mod_i32(select(i32(-1i) * -var_4.c, ~firstTrailingBit(-35274i), true | all(vec3<bool>(true, true, global3.a))), 53499i), firstLeadingBit(var_3.x), global1.a ^ 24361i, global1.c);
    let var_6 = _wgslsmith_add_u32(select(~max(_wgslsmith_mod_u32(0u, 4294967295u), ~global1.b.x), func_1().x, !var_4.b), _wgslsmith_dot_vec2_u32(~u_input.b ^ vec2<u32>(_wgslsmith_mult_u32(31790u, var_0), 4294967295u), vec2<u32>(~29159u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_1.b, firstTrailingBit(_wgslsmith_sub_u32(1u, 1u)) ^ ~(~u_input.b.x)), _wgslsmith_mult_u32(var_0, 8421u), var_1.c, var_5.wx, 191f);
}

