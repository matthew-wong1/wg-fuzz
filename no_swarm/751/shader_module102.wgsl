struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: Struct_1 = Struct_1(vec4<u32>(1u, 2755u, 42241u, 36579u), vec4<bool>(false, true, true, false), false, vec3<i32>(i32(-2147483648), -29711i, 30639i));

var<private> global2: vec2<i32> = vec2<i32>(26296i, 0i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: i32) -> vec3<f32> {
    global0 = arg_2.d.b;
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e + _wgslsmith_f_op_f32(1000f - arg_2.e)))) - vec2<f32>(arg_2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.e - -1587f), arg_2.e, arg_2.b)) * _wgslsmith_f_op_f32(1358f - _wgslsmith_f_op_f32(trunc(-1000f))))));
    global2 = -(arg_2.d.d.xy << (vec2<u32>(_wgslsmith_mult_u32(0u, 4294967295u & global1.a.x), global1.a.x) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, arg_2.e, _wgslsmith_f_op_f32(-arg_2.e))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = global1.b;
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0, arg_0)), 2411f)), -283f, arg_0), _wgslsmith_f_op_vec3_f32(func_3(i32(-1i) * -2147483647i, global1.b.yz, Struct_3(_wgslsmith_mod_u32(global1.a.x, 50582u), global0.x, global0.x, Struct_1(vec4<u32>(global1.a.x, 28125u, global1.a.x, global1.a.x), vec4<bool>(global0.x, global0.x, global1.c, true), global1.b.x, global1.d), _wgslsmith_f_op_f32(-arg_0)), ~global1.d.x << (~7554u % 32u))))));
    var var_1 = vec3<u32>(52187u | min(_wgslsmith_mult_u32(min(global1.a.x, 1u), abs(global1.a.x)), 65195u >> (1u % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4563u, global1.a.x, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, global1.a.x), global1.a.yxx, vec3<u32>(11885u, global1.a.x, global1.a.x)) << (reverseBits(vec3<u32>(4294967295u, 26599u, global1.a.x)) % vec3<u32>(32u))), _wgslsmith_sub_u32(~(~60195u), 1u)), abs(countOneBits(reverseBits(26196u))));
    var var_2 = ~var_1.x;
    var_1 = countOneBits(abs(firstTrailingBit(global1.a.yxw | countOneBits(global1.a.xzx))));
    return Struct_1(~global1.a, global1.b, true, global1.d);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    global1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(886f, 961f)))))));
    let var_0 = Struct_4(Struct_2(countOneBits(firstTrailingBit(56113u)), -(~abs(-47921i))), ~reverseBits(countOneBits(_wgslsmith_div_i32(global2.x, global2.x))), vec4<bool>(!(!(23454u >= global1.a.x)), false, all(select(global0.zz, select(arg_0.wx, arg_0.yw, true), any(global1.b))), global0.x), global1.a.zz);
    let var_1 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -189f))));
    global2 = var_1.d.zy;
    global1 = func_2(899f);
    return _wgslsmith_mod_i32(firstLeadingBit(var_1.d.x), -(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 2147483647i) ^ -countOneBits(var_1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-func_1(vec4<bool>(false, select(false, global1.c, global0.x), true, all(global0.ywy))));
    let var_1 = Struct_1(~(~global1.a), global1.b, true, firstTrailingBit(vec3<i32>(global2.x << (~global1.a.x % 32u), -2147483647i, 2147483647i)));
    let var_2 = any(var_1.b);
    global0 = vec4<bool>(var_1.b.x, true || select(true, global1.b.x, ~var_1.a.x <= 88360u), all(!var_1.b), all(vec3<bool>(false, !(global1.c | true), false)));
    var var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global1.d.x, -1i), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(173f)) + 1195f))).d, _wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(u_input.b.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(34255i, var_0), global2.x >> (63359u % 32u))), u_input.b.yy));
}

