struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(56090u, 16382u, 4294967295u, 81099u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 54357u, 24103u), vec4<u32>(0u, 4294967295u, 27416u, 0u), vec4<u32>(1u, 5578u, 31440u, 116997u), vec4<u32>(20725u, 5043u, 4294967295u, 7749u), vec4<u32>(4294967295u, 36515u, 58534u, 52689u), vec4<u32>(47592u, 30580u, 130675u, 66900u), vec4<u32>(4294967295u, 29124u, 24178u, 4984u), vec4<u32>(22923u, 32017u, 4294967295u, 0u), vec4<u32>(4294967295u, 41684u, 17564u, 0u), vec4<u32>(0u, 1u, 55458u, 69558u), vec4<u32>(104188u, 64949u, 112653u, 0u), vec4<u32>(17498u, 4294967295u, 0u, 4294967295u), vec4<u32>(28417u, 1u, 4294967295u, 8469u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(59062u, 4294967295u, 0u, 27440u), vec4<u32>(39289u, 102259u, 4206u, 1u), vec4<u32>(1u, 4294967295u, 0u, 25114u), vec4<u32>(4294967295u, 46009u, 0u, 10642u), vec4<u32>(1u, 4294967295u, 1u, 9783u), vec4<u32>(4294967295u, 15243u, 89584u, 79061u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-427f, global1.x, arg_0.c)))), arg_0.d.x, _wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x)))))));
    let var_1 = global0[_wgslsmith_index_u32(arg_0.e, 15u)];
    let var_2 = !(!arg_0.c);
    global0 = array<Struct_3, 15>();
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1262f, var_1.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -642f))) - _wgslsmith_f_op_f32(arg_0.d.x + var_0.x)))));
    return vec3<u32>(~u_input.d.x, 1u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.e, 22829u), u_input.d), ~0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<u32> {
    global2 = array<vec4<u32>, 22>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.d.x, arg_0.a.a.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), arg_0.a.d.x), _wgslsmith_mod_vec3_i32(firstTrailingBit(u_input.b.www), vec3<i32>(-_wgslsmith_clamp_i32(arg_0.b.x, -23509i, -2147483647i), 40859i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-25735i, 1i, -24775i, -1429i), vec4<i32>(-48463i, arg_1.x, 28629i, 0i)), -2147483647i))), false, arg_0.a.d, ~(~(~(~17367u))));
    global2 = array<vec4<u32>, 22>();
    let var_1 = _wgslsmith_clamp_vec3_u32(~func_3(Struct_1(vec3<f32>(-1520f, var_0.d.x, var_0.d.x), vec3<i32>(arg_0.d.b.x, -12592i, arg_1.x), arg_0.a.c, global1.xxz, u_input.d.x), _wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(0u, 0u))) ^ reverseBits(~vec3<u32>(var_0.e, 0u, u_input.d.x)), select(~(~abs(vec3<u32>(arg_0.a.e, u_input.d.x, u_input.d.x))), ~firstLeadingBit(firstTrailingBit(vec3<u32>(arg_0.d.e, var_0.e, u_input.d.x))), all(vec3<bool>(all(vec3<bool>(arg_0.a.c, arg_0.a.c, true)), arg_0.a.c, arg_0.a.c | true))), vec3<u32>(reverseBits(~95049u), _wgslsmith_mod_u32(~15040u, ~arg_0.a.e), ~countOneBits(u_input.d.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(~31600u, u_input.d.x, firstLeadingBit(4294967295u)), ~(~vec3<u32>(u_input.d.x, 1u, u_input.d.x))));
    var var_2 = abs(vec3<u32>(var_0.e, ~0u, u_input.d.x ^ select(u_input.d.x, 1u, var_0.c)));
    return vec4<u32>(1u, var_0.e, var_2.x, ~(~u_input.d.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(875f, global1.x);
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-869f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -963f)))))));
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, _wgslsmith_div_f32(var_1.b.x, _wgslsmith_div_f32(844f, _wgslsmith_div_f32(var_2.a.a.a.x, var_0)))));
    global2 = array<vec4<u32>, 22>();
    return var_2.a.b;
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_4(Struct_3(func_4(u_input.b.yz, ~func_2(Struct_2(Struct_1(global1.wwz, vec3<i32>(u_input.a, u_input.b.x, u_input.a), false, vec3<f32>(1136f, 833f, global1.x), 1u), vec4<i32>(11392i, u_input.c, u_input.b.x, u_input.b.x), vec2<i32>(-75422i, u_input.b.x), Struct_1(global1.zwy, u_input.b.yxz, false, global1.xzz, u_input.d.x)), u_input.b.yz)), Struct_1(global1.xzy, abs(u_input.b.zyz), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 692f, -159f) * global1.zxz) * vec3<f32>(arg_0, 378f, global1.x)), _wgslsmith_add_u32(func_2(Struct_2(Struct_1(vec3<f32>(arg_0, global1.x, arg_0), vec3<i32>(-2147483647i, u_input.c, u_input.c), true, vec3<f32>(arg_0, -1671f, arg_0), 4294967295u), vec4<i32>(22158i, u_input.a, 0i, u_input.b.x), u_input.b.yx, Struct_1(vec3<f32>(global1.x, 1946f, -569f), u_input.b.wxx, true, vec3<f32>(arg_0, arg_0, -1063f), u_input.d.x)), u_input.b.zy).x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, 0u, u_input.d.x), global2[_wgslsmith_index_u32(u_input.d.x, 22u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1080f * 258f), _wgslsmith_f_op_f32(max(global1.x, global1.x)), select(false, false, false)))), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-global1.wy));
    let var_1 = (_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_0.a.a.e, var_0.a.b.e, 9443u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 5470u, 4294967295u), firstLeadingBit(vec3<u32>(var_0.a.b.e, 4294967295u, 4294967295u))), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.b.e, 36374u, u_input.d.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.b.e, 1u, 4294967295u), vec3<u32>(u_input.d.x, 1887u, var_0.a.b.e)))) << (~(~(~vec3<u32>(1u, 81316u, var_0.a.a.e))) % vec3<u32>(32u))) >> (~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 11528u) >> (vec3<u32>(4294967295u, 4294967295u, var_0.a.b.e) % vec3<u32>(32u)), ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))) % vec3<u32>(32u));
    global0 = array<Struct_3, 15>();
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.a.b.b.x, -var_0.a.b.b.x, _wgslsmith_mult_i32(-2006i, var_0.a.a.b.x), var_0.a.a.b.x), firstTrailingBit(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(var_0.a.a.b.x, u_input.a, 2147483647i, -2147483647i)))) >> (_wgslsmith_dot_vec2_u32(min(_wgslsmith_mult_vec2_u32(vec2<u32>(6110u, 4294967295u), u_input.d), vec2<u32>(4294967295u, 213u)), firstTrailingBit(countOneBits(var_1.xx))) % 32u), (_wgslsmith_mod_i32(0i, 2147483647i) << (_wgslsmith_add_u32(~u_input.d.x, abs(var_0.a.a.e)) % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(var_0.a.a.e), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b.e, var_0.a.b.e, 46458u), vec3<u32>(var_0.a.a.e, u_input.d.x, 13227u))), ~(vec2<u32>(var_0.a.b.e, var_1.x) & u_input.d)) % 32u));
    var var_3 = false;
    return Struct_4(Struct_3(var_0.a.a, func_4(var_0.a.a.b.yz, vec4<u32>(func_4(var_0.a.b.b.zz, vec4<u32>(u_input.d.x, u_input.d.x, 35369u, 1u)).e, ~2672u, abs(var_0.a.b.e), 80531u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-269f, -285f))), select(!(!var_0.a.d), var_0.a.d, select(true, any(vec4<bool>(true, var_0.a.a.c, true, var_0.a.a.c)), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-139f, -105f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_div_f32(-273f, 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1722f) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -868f) * 179f), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -629f) * global1.x))))));
    var var_1 = vec3<bool>(false, all(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), false), vec3<bool>(true, false, all(vec4<bool>(true, false, true, false))), vec3<bool>(false, true, true))), ~(select(u_input.a, u_input.c, true) >> (_wgslsmith_div_u32(17019u, u_input.d.x) % 32u)) != -2147483647i);
    global2 = array<vec4<u32>, 22>();
    let var_2 = func_1(global1.x);
    let var_3 = _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(-932i, var_2.a.b.b.x, -1i, 11410i), abs(u_input.b)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0, var_0)));
    global0 = array<Struct_3, 15>();
    var var_4 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_4.a.x, global1.x)), var_2.a.b.d.x)))), global1.x, _wgslsmith_f_op_f32(-var_0.x));
}

