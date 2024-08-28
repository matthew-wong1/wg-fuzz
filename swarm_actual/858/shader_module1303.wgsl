struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_1, 10>();
    var var_0 = select(select(!select(vec3<bool>(true, false, arg_3.a.x), select(arg_3.a, vec3<bool>(false, arg_1.c.x, true), false), false && arg_1.a.a.x), vec3<bool>(arg_1.b.x, false, false), arg_3.a), vec3<bool>(true, arg_1.e.a.x, all(arg_1.a.a.yz)), arg_3.a.x || all(vec3<bool>(arg_1.b.x, true, true)));
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var_0 = arg_3.a;
    return select(_wgslsmith_mult_i32(u_input.a.x, min(~u_input.b.x, i32(-1i) * -10206i)), 1i, var_0.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: bool, arg_3: i32) -> vec4<bool> {
    global0 = array<Struct_1, 10>();
    global1 = array<Struct_1, 17>();
    global0 = array<Struct_1, 10>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 4294967295u, 27487u, arg_0.x)), ~vec4<u32>(26480u, arg_0.x, arg_0.x, 4294967295u)) & vec4<u32>(arg_0.x, 32691u, arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(7556u, 3802u, arg_0.x, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, 30570u, arg_0.x))), (select(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 0u, arg_0.x, arg_0.x), vec4<bool>(arg_2, true, false, arg_2)) | vec4<u32>(arg_0.x, 78020u, 42288u, arg_0.x)) ^ ~(~vec4<u32>(55516u, arg_0.x, 56617u, 4294967295u))) | ~48305u, 10u)];
    let var_1 = !(!(!vec4<bool>(!var_0.a.x, true, all(vec4<bool>(false, false, false, true)), !arg_2)));
    return select(!var_1, !select(var_1, select(vec4<bool>(true, false, false, arg_2), !var_1, all(vec4<bool>(var_0.a.x, true, false, arg_2))), false), all(vec4<bool>(arg_2 | any(vec4<bool>(false, arg_2, true, true)), all(select(var_0.a.xz, var_1.xx, vec2<bool>(true, true))), arg_2, arg_2)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = func_4(~vec3<u32>(1u, firstLeadingBit(abs(63238u)), 4294967295u), _wgslsmith_clamp_i32(2147483647i, -func_3(66445u, Struct_2(global1[_wgslsmith_index_u32(1u, 17u)], vec3<bool>(false, arg_0, false), vec3<bool>(false, arg_0, arg_0), -445f, global0[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_f_op_f32(-515f * 443f), Struct_1(vec3<bool>(true, true, false))), _wgslsmith_mult_i32(u_input.b.x, -_wgslsmith_sub_i32(-4730i, -1i))), !select(true, true, any(vec3<bool>(false, true, false))), ~u_input.b.x);
    var var_1 = u_input.a.x ^ 1i;
    var var_2 = ~_wgslsmith_add_u32(reverseBits(61440u), _wgslsmith_div_u32(abs(30413u), firstTrailingBit(abs(0u))));
    var_2 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(abs(4294967295u >> (0u % 32u)), abs(0u)), true), vec2<u32>(_wgslsmith_div_u32(0u, 1u), ~46623u));
    global1 = array<Struct_1, 17>();
    return Struct_2(Struct_1(vec3<bool>(all(!var_0.xzy), true, !arg_0)), !select(var_0.yww, select(!vec3<bool>(false, var_0.x, arg_0), func_4(vec3<u32>(59711u, 4294967295u, 0u), -520i, false, u_input.b.x).ywy, var_0.zzy), all(func_4(vec3<u32>(49890u, 21979u, 0u), -382i, var_0.x, u_input.a.x))), select(vec3<bool>(!arg_0, arg_0, select(arg_0, var_0.x, true)), func_4(_wgslsmith_clamp_vec3_u32(~vec3<u32>(18729u, 30798u, 4294967295u), ~vec3<u32>(71226u, 43952u, 0u), ~vec3<u32>(0u, 33680u, 0u)), -3490i, false, firstTrailingBit(countOneBits(u_input.b.x))).zyz, var_0.x), 638f, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(11683u, ~(~1u), 12709u), 17u)]);
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 10>();
    var var_0 = func_2(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, false))))));
    var var_1 = var_0.c.x;
    var var_2 = 2147483647i;
    var_0 = Struct_2(func_2(var_0.a.a.x).a, func_2(!(!var_0.a.a.x)).e.a, func_2(var_0.e.a.x).b, -162f, var_0.a);
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), vec3<bool>(true, all(func_1().a.yx), all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), !(!func_4(~vec3<u32>(54267u, 5927u, 49222u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 5097i), vec2<i32>(-30405i, -1i)), true, u_input.b.x).xzy), _wgslsmith_div_f32(965f, -461f), func_2(true).a);
    var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(20575u, 0u), reverseBits(0u), ~0u, countOneBits(7402u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 38218u, 49253u)))), 10u)], var_0.a.a, !func_4(vec3<u32>(73270u, 32506u, 1u), u_input.b.x, var_0.a.a.x, 47011i).wxx, _wgslsmith_f_op_f32(-var_0.d), func_2(var_0.c.x).a);
    var var_1 = select(func_4(vec3<u32>(firstTrailingBit(0u), 1u, ~1u), _wgslsmith_sub_i32(0i, 5002i) ^ u_input.a.x, any(vec2<bool>(var_0.e.a.x, var_0.c.x)) & var_0.a.a.x, _wgslsmith_mult_i32(17617i, -1i)), !(!vec4<bool>(!var_0.a.a.x, true, var_0.e.a.x, var_0.c.x | false)), 1i > u_input.b.x);
    var_1 = vec4<bool>(var_0.a.a.x, select(true, _wgslsmith_dot_vec4_i32(min(u_input.b, u_input.b), -u_input.b) <= firstLeadingBit(func_3(26336u, Struct_2(Struct_1(var_0.a.a), var_1.zyz, var_0.a.a, var_0.d, global1[_wgslsmith_index_u32(5382u, 17u)]), var_0.d, Struct_1(vec3<bool>(false, true, var_1.x)))), false), all(!var_0.a.a.yx), func_4(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 49688u) << (select(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(16502u, 108975u, 4294967295u), false) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u)), firstLeadingBit(firstTrailingBit(u_input.b.x)), !var_0.e.a.x == var_1.x, _wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.wx)) << ((~17034u >> (~4294967295u % 32u)) % 32u)).x);
    let var_2 = Struct_1(var_1.ywy);
    var_0 = Struct_2(global0[_wgslsmith_index_u32(1u ^ _wgslsmith_mult_u32(1u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(13117u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 15245u)))), 10u)], vec3<bool>(any(var_2.a), !var_1.x, var_1.x), vec3<bool>(var_2.a.x, true, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-615f - _wgslsmith_f_op_f32(-1856f * -693f))), Struct_1(vec3<bool>(!func_4(vec3<u32>(1u, 1u, 8132u), 16379i, true, 24177i).x, !(var_0.e.a.x && false), func_1().a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, abs(u_input.a.x), 7463i), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.d, -417f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), -664f)))), vec4<u32>(1u, firstTrailingBit(_wgslsmith_div_u32(0u, 4294967295u)), ~1u, ~1u) | vec4<u32>(4294967295u, 33635u, 43216u, ~(~1u)));
}

