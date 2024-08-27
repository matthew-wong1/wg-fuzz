struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(0u, 1u, 9933u, 4294967295u, 0u, 1u, 18954u, 4294967295u, 1u, 0u, 4294967295u, 33490u);

var<private> global1: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec2<f32> {
    let var_0 = Struct_1(~(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.b.x, arg_1.c.a, 22970u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2278u, 12u)], 12u)]), ~vec4<u32>(global1.b.x, arg_1.b.x, arg_1.a.a, 4294967295u)) << (vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(global1.a.b.d, arg_1.b.x, 0u), firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2925u, 12u)], 12u)]), u_input.a.x) % vec4<u32>(32u))), vec3<bool>(_wgslsmith_f_op_f32(-arg_0) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.e - -288f)), select((50410u & global0[_wgslsmith_index_u32(arg_1.b.x, 12u)]) > 5070u, true, false), any(vec3<bool>(arg_1.c.d, true, true))), ~max(2147483647i | global1.c.b.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.b.c, -2147483647i), vec2<i32>(arg_1.c.b.c, global1.c.b.c))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, global1.c.b.d), 12u)] ^ 18386u, ~44662u);
    global0 = array<u32, 12>();
    let var_1 = Struct_2(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 40324u), var_0, global1.a.c, false & select(all(var_0.b), true, var_0.b.x), 1161f);
    global1 = arg_1;
    let var_2 = !vec3<bool>(u_input.a.x <= ~var_1.a, false, var_1.d);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.c.e, arg_1.c.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(1436f, global1.a.c.x) + vec2<f32>(-725f, var_1.c.x)), select(arg_1.c.d, global1.c.d, false))))) - _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.c))));
}

fn func_2(arg_0: i32) -> bool {
    global1 = Struct_3(Struct_2(u_input.a.x, global1.a.b, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-global1.d), Struct_3(global1.a, firstTrailingBit(vec3<u32>(global1.c.a, 41130u, global0[_wgslsmith_index_u32(59514u, 12u)])), global1.c, 1f))), false && (u_input.a.x <= 1u), _wgslsmith_f_op_f32(-global1.c.c.x)), ((_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 12u)], u_input.a.x), u_input.a.xzx) << ((u_input.a.wwz | global1.b) % vec3<u32>(32u))) | ~countOneBits(vec3<u32>(20748u, 0u, 0u))) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~global1.a.b.a.yzy, u_input.a.xzx), select(vec3<u32>(global0[_wgslsmith_index_u32(63312u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], u_input.a.x), global1.b, true)), Struct_2(~(~global0[_wgslsmith_index_u32(0u, 12u)]), global1.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.c.x, global1.d)))), global1.c.d, global1.a.e), -316f);
    var var_0 = false;
    global1 = Struct_3(Struct_2(~_wgslsmith_dot_vec4_u32(abs(global1.a.b.a), u_input.a), Struct_1(_wgslsmith_mod_vec4_u32(global1.a.b.a, ~vec4<u32>(global0[_wgslsmith_index_u32(14882u, 12u)], global0[_wgslsmith_index_u32(50667u, 12u)], 40068u, u_input.a.x)), !select(global1.a.b.b, global1.c.b.b, vec3<bool>(global1.a.b.b.x, global1.c.b.b.x, global1.c.d)), 1i, _wgslsmith_mod_u32(abs(global1.a.b.a.x), global0[_wgslsmith_index_u32(0u, 12u)] >> (u_input.a.x % 32u)), ~(~0u)), vec2<f32>(global1.c.c.x, _wgslsmith_f_op_f32(-global1.a.c.x)), true || select(false, true, all(global1.c.b.b.zz)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.c.x))), _wgslsmith_f_op_f32(885f + _wgslsmith_f_op_f32(max(253f, 128f)))))), ~reverseBits(~global1.b), Struct_2(_wgslsmith_clamp_u32(~6100u, 4294967295u, ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22454u, 12u)], 12u)] ^ global1.b.x)), Struct_1(max(max(global1.a.b.a, u_input.a), u_input.a & vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.b.x, 12u)], 12u)], global1.c.b.e, global1.b.x)), select(select(vec3<bool>(false, global1.c.b.b.x, false), vec3<bool>(global1.c.b.b.x, false, global1.c.b.b.x), global1.a.b.b), vec3<bool>(global1.a.d, false, false), any(vec4<bool>(global1.a.d, true, global1.a.d, true))), global1.a.b.c, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(u_input.a.x), ~global1.b.x), 12u)], _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 18463u), global1.c.b.a.zw), firstLeadingBit(global1.c.b.a.zy))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-145f, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -741f)), !any(vec2<bool>(global1.c.d, false)), 735f), _wgslsmith_f_op_f32(floor(global1.a.e)));
    var var_1 = Struct_3(global1.c, ~_wgslsmith_sub_vec3_u32(~global1.b, countOneBits(~global1.c.b.a.xxx)), global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(-1196f, Struct_3(Struct_2(u_input.a.x, Struct_1(vec4<u32>(global1.a.b.a.x, 1u, 0u, 75073u), global1.a.b.b, arg_0, 0u, 5755u), vec2<f32>(global1.a.e, 247f), global1.c.b.b.x, 1645f), u_input.a.wwy, global1.c, global1.a.c.x))).x), Struct_3(Struct_2(global0[_wgslsmith_index_u32(1u, 12u)], global1.a.b, vec2<f32>(global1.a.c.x, 1225f), false, global1.a.e), u_input.a.zxz, Struct_2(global1.a.a, global1.c.b, global1.a.c, true, global1.d), _wgslsmith_f_op_f32(sign(global1.c.c.x))))).x)));
    var_0 = any(!(!select(global1.c.b.b.yx, !var_1.c.b.b.yx, vec2<bool>(true, global1.a.d))));
    return global1.c.b.b.x;
}

fn func_1(arg_0: bool) -> i32 {
    global0 = array<u32, 12>();
    let var_0 = func_2(-(~(-(global1.c.b.c | global1.a.b.c))));
    global0 = array<u32, 12>();
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1215f, global1.d, _wgslsmith_f_op_f32(trunc(1000f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) + global1.c.e), global1.c.e, _wgslsmith_f_op_f32(-1118f + _wgslsmith_f_op_f32(trunc(424f))))), vec3<f32>(1277f, global1.a.c.x, 1000f)));
    let var_2 = global1.c;
    return global1.a.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c;
    var var_1 = _wgslsmith_f_op_f32(-global1.d);
    var var_2 = _wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(var_0.a, _wgslsmith_dot_vec2_u32(var_0.b.a.wz, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 12u)], 12u)], 22638u)), 4294967295u)), vec3<u32>(~25092u, _wgslsmith_add_u32(var_0.a << (~14937u % 32u), global1.a.a), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(global1.c.b.a.xwy, vec3<u32>(var_0.a, u_input.a.x, global0[_wgslsmith_index_u32(global1.c.b.e, 12u)])), u_input.a.wwz)), _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, u_input.a.x, u_input.a.x), global1.b ^ u_input.a.zwy), countOneBits(~reverseBits(vec3<u32>(4655u, var_0.a, global1.b.x)))));
    var_0 = global1.c;
    let var_3 = Struct_4(any(global1.a.b.b), var_0.b.b.zx);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(109f))));
    let var_5 = ~countOneBits(vec3<i32>(global1.c.b.c, var_0.b.c, -2147483647i) & firstLeadingBit(vec3<i32>(var_0.b.c, var_0.b.c, var_0.b.c))) | vec3<i32>(var_0.b.c, ~func_1(all(vec2<bool>(var_0.b.b.x, var_3.a))), -reverseBits(global1.c.b.c) & -var_0.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec3_u32((u_input.a.zyz >> (vec3<u32>(global1.b.x, 1u, var_0.a) % vec3<u32>(32u))) & var_0.b.a.yzz, vec3<u32>(19165u, global0[_wgslsmith_index_u32(109959u, 12u)], global1.b.x) ^ ~u_input.a.wwy)));
}

