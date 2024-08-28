struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 75536u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(vec4<u32>(~abs(~u_input.b.x), u_input.b.x << (u_input.b.x % 32u), ~u_input.b.x, 0u), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1157f, 559f, 380f)), _wgslsmith_div_vec3_f32(vec3<f32>(-342f, -582f, 578f), vec3<f32>(487f, -963f, -1000f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(809f, 2387f, -813f))))), vec3<bool>(any(vec3<bool>(false, true, false)), true, any(vec4<bool>(false, true, true, true))))), firstLeadingBit(min(_wgslsmith_mod_i32(u_input.c.x, -9173i), 21354i))), u_input.c);
    global0 = ~_wgslsmith_mod_u32(1u, ~380u);
    let var_1 = Struct_3(abs(firstTrailingBit(vec3<u32>(var_0.a.x, ~104392u, ~4294967295u))), var_0.b, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1250f - _wgslsmith_f_op_f32(2298f - var_0.b.a.x))))), 6701i);
    var var_2 = vec3<i32>(min(~_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.c.x, u_input.d.x, 16530i), vec3<i32>(9941i, var_0.c.x, 2147483647i), vec3<bool>(true, false, true)), select(var_0.c.xyy, var_0.c.zzw, vec3<bool>(false, var_1.c, false))), _wgslsmith_dot_vec3_i32(countOneBits(select(vec3<i32>(var_0.c.x, var_1.e, var_0.b.b), vec3<i32>(24364i, 0i, 8995i), true)), vec3<i32>(-25595i, -2147483647i, var_0.b.b << (var_1.a.x % 32u)))), 2147483647i, abs(var_0.c.x));
    global0 = _wgslsmith_clamp_u32(~(~_wgslsmith_sub_u32(var_1.a.x, ~var_1.a.x)), var_1.a.x, var_0.a.x);
    return ~firstLeadingBit(~vec4<u32>(0u, 0u, reverseBits(var_1.a.x), 0u));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(func_3(), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 5259u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 14622u, u_input.b.x)), 1u, ~40444u, ~17437u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1138f, -1000f, -573f) + vec3<f32>(452f, 434f, 838f)))), countOneBits(u_input.d.x)), -select(vec4<i32>(u_input.a, u_input.a << (77307u % 32u), 10612i, u_input.c.x & 19712i), -u_input.c, true));
    return !select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, true, false), true), vec4<bool>(any(vec2<bool>(false, true)), true, !any(vec2<bool>(true, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), any(vec3<bool>(true, true, true))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = select(u_input.c, u_input.c, !func_2());
    let var_2 = ~countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)) & _wgslsmith_clamp_vec3_u32(~vec3<u32>(66820u, u_input.b.x, 3357u), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)));
    global0 = 1u;
    return Struct_2(vec4<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_div_u32(min(25354u, 0u), abs(6006u)), ~(~var_2.x)), max(~(4294967295u >> (u_input.b.x % 32u)), 1u), abs(min(1u, _wgslsmith_mod_u32(0u, 4294967295u)))), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 0i, 1i) >> (vec3<u32>(0u, var_2.x, 1u) % vec3<u32>(32u)), select(u_input.d, vec3<i32>(u_input.d.x, arg_0.x, -2147483647i), var_0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, u_input.a, arg_0.x), ~var_1.wwy))), u_input.c | (_wgslsmith_sub_vec4_i32(-vec4<i32>(22157i, 1i, -2147483647i, var_1.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, u_input.d.x, 1i, u_input.c.x), u_input.c, vec4<i32>(74686i, 18806i, -1i, -21368i))) & ~abs(vec4<i32>(var_1.x, var_1.x, u_input.a, -2147483647i))));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_mod_u32((_wgslsmith_mod_u32(4294967295u, u_input.b.x) >> (~13722u % 32u)) & ~(~u_input.b.x ^ select(49923u, u_input.b.x, true)), abs(_wgslsmith_mult_u32(reverseBits(func_1(vec2<i32>(u_input.c.x, u_input.d.x), arg_0.b.a).a.x), u_input.b.x)));
    global0 = ~14885u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(505f, arg_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -286f))));
    let var_2 = select(!func_2().yww, !(!func_2().zzw), true);
    var var_3 = Struct_3(arg_0.a.xyy, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-816f * -1424f), _wgslsmith_f_op_f32(-1281f + var_1.x), _wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1159f, 454f, arg_0.b.a.x) * arg_0.b.a), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-992f, arg_0.b.a.x, arg_0.b.a.x), var_1)))), arg_0.c.x), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * arg_0.b.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(579f, 1573f)) * arg_0.b.a.x))), -(~arg_0.c.x));
    return Struct_3(countOneBits(vec3<u32>((arg_0.a.x & arg_0.a.x) << (func_1(arg_0.c.yy, vec3<f32>(var_1.x, 1331f, -395f)).a.x % 32u), 4294967295u, var_3.a.x)), var_3.b, 680f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1887f - arg_0.b.a.x), var_3.d))), var_3.d, _wgslsmith_clamp_i32(~1i, u_input.c.x, select(var_3.e, _wgslsmith_dot_vec3_i32(-arg_0.c.wwx, vec3<i32>(40203i, var_3.b.b, u_input.c.x)), var_3.c)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> StorageBuffer {
    global0 = u_input.b.x;
    let var_0 = arg_1.a.x;
    let var_1 = arg_0;
    let var_2 = ~(~(_wgslsmith_mult_u32(arg_0.a.x, ~var_1.a.x) << (~1u % 32u)));
    global0 = ~51680u;
    return StorageBuffer(abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 21487u, 0u, arg_0.a.x), vec4<u32>(46758u, arg_0.a.x, 16984u, var_2)) & ~vec4<u32>(1u, arg_0.a.x, u_input.b.x, 1u)) | min(_wgslsmith_div_vec4_u32(vec4<u32>(var_2, var_2, arg_0.a.x, arg_0.a.x), select(vec4<u32>(u_input.b.x, arg_0.a.x, 6965u, 74408u), vec4<u32>(arg_0.a.x, 114032u, u_input.b.x, 1u), vec4<bool>(false, true, true, true))), vec4<u32>(var_2, 1u, 6700u, 4294967295u) << ((vec4<u32>(arg_0.a.x, var_2, 1u, var_2) >> (vec4<u32>(4294967295u, 1u, u_input.b.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(_wgslsmith_div_u32(u_input.b.x, u_input.b.x) << (12110u % 32u)) << (u_input.b.x % 32u);
    let x = u_input.a;
    s_output = func_5(func_4(func_1(u_input.c.wx, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -299f), -973f, _wgslsmith_f_op_f32(f32(-1f) * -501f)))), Struct_1(vec3<f32>(1f, 1f, 1f), -u_input.a));
}

