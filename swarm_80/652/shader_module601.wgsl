struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 56254u), vec2<u32>(22578u, 35329u), vec2<u32>(1u, 49228u), vec2<u32>(91004u, 45822u), vec2<u32>(19658u, 1u), vec2<u32>(1u, 100818u), vec2<u32>(4502u, 17735u), vec2<u32>(4294967295u, 19290u), vec2<u32>(79801u, 1u), vec2<u32>(31914u, 1u), vec2<u32>(5222u, 19327u), vec2<u32>(40200u, 0u), vec2<u32>(22408u, 1u), vec2<u32>(4294967295u, 16915u), vec2<u32>(34480u, 1439u), vec2<u32>(31647u, 1u), vec2<u32>(4294967295u, 44759u), vec2<u32>(0u, 1u), vec2<u32>(20323u, 40596u));

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(4294967295u, 1u), Struct_3(4294967295u, 49129u), Struct_3(46125u, 33660u), Struct_3(1u, 1u), Struct_3(33097u, 20149u), Struct_3(0u, 0u), Struct_3(74384u, 53521u), Struct_3(0u, 31310u), Struct_3(1658u, 73105u), Struct_3(7365u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = array<vec2<u32>, 21>();
    let var_0 = arg_0.b.c.x;
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-3198f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -108f), -1066f)), arg_0.a.x, -651f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) * _wgslsmith_div_vec4_f32(arg_0.a, arg_0.a)) * _wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(global1.b.a, arg_0.b.a, global1.b.a, -683f)), vec4<bool>(true, true, true, true))))), arg_0.b);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.a, arg_0.b.a, -796f, -484f) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, -1050f, 1927f, arg_0.a.x), vec4<f32>(global1.b.a, 1158f, global1.a.x, global1.b.a))), vec4<f32>(-922f, _wgslsmith_f_op_f32(step(-934f, 1167f)), -1526f, arg_0.b.a), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false), true))) - arg_0.a), arg_0.b);
    var var_1 = _wgslsmith_clamp_vec4_u32(u_input.b & ~(~u_input.b), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), 82301u), max(firstTrailingBit(global1.b.c.x), ~var_0), 1u, _wgslsmith_mult_u32(arg_0.b.c.x, _wgslsmith_div_u32(u_input.b.x, 4294967295u)))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.c.x, u_input.a.x, global1.b.c.x, 1u), vec4<u32>(1u, 9052u, 6295u, 4294967295u)), u_input.b, min(abs(u_input.b), u_input.b)), u_input.b));
    return 2147483647i;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~(~global1.b.b), ~(vec3<i32>(-43513i, u_input.c.x, -1i) ^ (global1.b.b >> (vec3<u32>(global1.b.c.x, arg_0.x, global1.b.c.x) % vec3<u32>(32u)))), countOneBits(_wgslsmith_add_vec3_i32(u_input.c.xxx, vec3<i32>(global1.b.b.x, u_input.c.x, -1i) | global1.b.b))), vec3<i32>(func_3(Struct_2(global1.a, global1.b)), -13809i, reverseBits(i32(-1i) * -2147483647i)) | u_input.c.yyy, u_input.c.xyw);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.x, global1.b.a, -2332f, global1.b.a), global1.a)), vec4<f32>(global1.b.a, global1.b.a, global1.b.a, global1.b.a))))), Struct_1(1f, ~(-_wgslsmith_clamp_vec3_i32(u_input.c.xzw, var_0, vec3<i32>(u_input.c.x, global1.b.b.x, 44215i))), vec2<u32>(40050u, arg_0.x)));
    return Struct_3(global1.b.c.x, 35466u);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.a), 966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * global1.b.a))), global1.a.zzz, vec3<bool>(true, true, true)));
    var var_1 = func_2(~vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.a, u_input.a), _wgslsmith_mult_u32(~u_input.e, _wgslsmith_mult_u32(u_input.d.x, 1u)), ~4294967295u));
    var var_2 = global1.b.b.zx;
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1525f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.b.a, var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1055f, -214f)) * -208f)), vec4<f32>(var_0.x, _wgslsmith_div_f32(global1.b.a, -810f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1010f), _wgslsmith_f_op_f32(-global1.b.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-549f, var_0.x))))))), global1.b);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1000f, -922f)), _wgslsmith_f_op_f32(step(1f, -456f)), _wgslsmith_f_op_f32(f32(-1f) * -583f), -522f)), global1.b);
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.a * _wgslsmith_f_op_vec4_f32(-global1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, global1.b.a, -649f, 1073f), vec4<f32>(var_0.x, 2254f, var_0.x, global1.b.a))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -164f, 966f, -1528f) - _wgslsmith_f_op_vec4_f32(floor(global1.a)))), _wgslsmith_div_i32(abs(u_input.c.x), i32(-1i) * -2147483647i) < countOneBits(0i))), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(4294967295u, select(~select(global1.b.c.x, _wgslsmith_add_u32(u_input.e, 4294967295u), false), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.b.c.x, u_input.d.x, 1u, u_input.b.x)), min(u_input.b << (vec4<u32>(19661u, 51400u, 6594u, u_input.d.x) % vec4<u32>(32u)), ~u_input.b)), !select(true, true, true)), _wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(global1.b.c.x, 23308u, global1.b.c.x), vec3<u32>(1u, 1u, 4294967295u))), ~u_input.a), 36659u ^ (_wgslsmith_div_u32(global1.b.c.x ^ 4047u, ~4294967295u) >> (u_input.e % 32u)));
    global1 = func_1();
    let var_1 = !(!vec3<bool>(any(vec4<bool>(true, true, false, false)), false, true));
    global1 = func_1();
    var var_2 = !vec4<bool>(all(vec3<bool>(var_0.x <= u_input.a.x, var_1.x, any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)))), ~var_0.x >= 0u, 0i < countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, global1.b.b.x, 0i), vec4<i32>(12826i, 2147483647i, 46630i, 1i))), var_1.x);
    global2 = array<Struct_3, 10>();
    var var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, ~_wgslsmith_mod_u32(0u, u_input.e)) | min(~vec2<u32>(1u, 4294967295u) & reverseBits(global1.b.c), var_0.ww), ~var_0.yy);
    var var_4 = var_0.x;
    var var_5 = global2[_wgslsmith_index_u32(4294967295u, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(-(~global1.b.b.zz), global1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().a.x * -274f) + -1771f)), abs(var_0.zzx), global1.a.x);
}

