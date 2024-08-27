struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<u32>(45617u, 0u, 44951u, 75966u), 15043u, vec2<i32>(2147483647i, 0i)), Struct_1(vec4<u32>(116387u, 4294967295u, 13941u, 68837u), 5200u, vec2<i32>(-2353i, -81909i)), Struct_1(vec4<u32>(1u, 87709u, 443u, 1u), 0u, vec2<i32>(14221i, 9593i)), Struct_1(vec4<u32>(1u, 42050u, 1u, 8872u), 4294967295u, vec2<i32>(-4331i, -1i)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = select(~_wgslsmith_div_vec4_u32(vec4<u32>(max(arg_1.a.x, u_input.b), u_input.b, ~23678u, u_input.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 0u, 1u, 1u), select(arg_1.a, vec4<u32>(arg_1.b, arg_1.b, u_input.b, u_input.b), vec4<bool>(true, true, arg_0.a.x, arg_0.b)))), arg_1.a, vec4<bool>(false, all(!select(vec3<bool>(arg_0.a.x, arg_0.b, false), vec3<bool>(true, false, arg_0.b), arg_0.a.x)), arg_0.a.x, ((arg_1.b <= 0u) & arg_0.b) || (arg_0.b || all(vec2<bool>(true, arg_0.a.x)))));
    let var_1 = vec2<bool>(false, true);
    return arg_0.a;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> vec2<i32> {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_div_vec2_i32(abs(-u_input.c.zy), select(vec2<i32>(0i, ~(-2147483647i)), u_input.c.xw, _wgslsmith_sub_i32(arg_0, 0i) != firstTrailingBit(u_input.c.x)));
    let var_1 = Struct_2(!vec4<bool>(false, !(arg_1.a.x | arg_1.b), arg_1.a.x, arg_1.a.x), false);
    var var_2 = select(vec4<bool>((select(u_input.b, 2073u, true) | ~10671u) > (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 51100u), vec3<u32>(arg_2, 110422u, 1u)) ^ u_input.b), any(vec2<bool>(any(var_1.a.yyx), var_1.a.x)), !all(select(vec3<bool>(false, true, var_1.b), arg_1.a.wzy, var_1.a.wwz)), arg_1.b && true), !(!var_1.a), !vec4<bool>(true, arg_1.b, all(!var_1.a.yy), var_1.a.x));
    return vec2<i32>(2147483647i, ~(-2147483647i));
}

fn func_2() -> vec4<u32> {
    var var_0 = u_input.c.zxz;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-318f, 786f) + vec2<f32>(-495f, -1034f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(323f, 569f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(760f, -1532f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 725f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-723f, -169f))), vec2<bool>(true, true))))));
    let var_2 = Struct_1(vec4<u32>(select(_wgslsmith_div_u32(_wgslsmith_mult_u32(16012u, u_input.b), u_input.b), _wgslsmith_mult_u32(~u_input.b, u_input.b >> (4294967295u % 32u)), all(vec4<bool>(true, true, true, true))), 0u, 32361u, u_input.b | ~4294967295u), 0u, func_3(1i ^ (firstLeadingBit(0i) & ~u_input.c.x), Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), true), ~_wgslsmith_mod_u32(u_input.b, ~u_input.b)));
    var_0 = vec3<i32>(firstTrailingBit(-1i) << (1u % 32u), (_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.x, 1i, -1i), 0i) | 1i) >> ((_wgslsmith_add_u32(0u & var_2.a.x, ~1u) | ~4294967295u) % 32u), var_0.x);
    var_0 = ~u_input.c.xzy;
    return ~vec4<u32>(18341u, 58026u, firstTrailingBit(~abs(82411u)), reverseBits(4631u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!select(vec4<bool>(true, true, false, true), !func_1(Struct_2(vec4<bool>(true, false, true, true), false), Struct_1(vec4<u32>(6809u, u_input.b, u_input.b, u_input.b), u_input.b, u_input.c.zx)), true), any(vec4<bool>(true, true, false, true)));
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 0u, 0u) >> (vec4<u32>(0u, u_input.b, u_input.b, 77568u) % vec4<u32>(32u)), ~vec4<u32>(62145u, u_input.b, u_input.b, u_input.b)), ~func_2()) | vec4<u32>(~(u_input.b & 25284u), countOneBits(u_input.b), ~(~u_input.b), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, 15709u), 7059u)), _wgslsmith_sub_u32(min(u_input.b, u_input.b), _wgslsmith_sub_u32(~1u, ~(~18221u))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-select(vec2<i32>(0i, u_input.c.x), u_input.c.xz, var_0.b), select(vec2<i32>(u_input.d, u_input.a), firstLeadingBit(u_input.c.wy), select(vec2<bool>(false, false), vec2<bool>(var_0.a.x, var_0.b), false))), ~(u_input.c.xx << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))));
    let var_2 = var_0;
    let var_3 = 4294967295u;
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1014f, -171f, 1000f, -104f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(713f, 811f, 131f, -313f), vec4<f32>(-360f, 1100f, 344f, 1054f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1005f, -979f, -368f, 1522f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1062f, 583f, -328f, -373f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(967f, 513f, -2008f, -718f))), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1577f, 223f, 2291f, 360f) + vec4<f32>(-385f, -1000f, -1682f, -1000f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-373f, -366f, 1000f, 595f))))))));
    let var_5 = var_1;
    let var_6 = u_input.c.xzz;
    var var_7 = Struct_1(select(~vec4<u32>(0u, 0u, 16064u, var_1.a.x) ^ min(min(var_1.a, vec4<u32>(var_1.a.x, u_input.b, 85884u, var_5.b)), ~var_5.a), var_1.a, var_0.a), _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(~var_1.a.xw, var_5.a.ww)), vec2<u32>(0u, 29324u)), var_6.zy);
    var var_8 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, firstTrailingBit(firstLeadingBit(var_3)), 0u, ~36181u | _wgslsmith_sub_u32(u_input.b, 66936u)), _wgslsmith_add_vec4_u32(~var_7.a | firstTrailingBit(vec4<u32>(var_5.b, u_input.b, 0u, var_3)), reverseBits(min(var_1.a, var_7.a)))), ~var_1.b, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_8.a.yz);
}

