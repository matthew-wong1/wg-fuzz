struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    var var_0 = abs(u_input.c);
    var var_1 = arg_2;
    let var_2 = arg_0.x;
    var_0 = firstLeadingBit(min(arg_3, ~0u));
    let var_3 = select(true, true | !all(select(vec2<bool>(true, true), arg_0.xz, vec2<bool>(false, true))), !any(!(!arg_0.wz)));
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.c.x)), _wgslsmith_div_f32(arg_2.d, 2073f)))), var_1.d, _wgslsmith_div_f32(arg_2.c.x, arg_2.c.x), var_1.d)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_i32(~(-31085i), u_input.b), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-14592i, 1i, u_input.b, u_input.b) >> (vec4<u32>(4294967295u, u_input.c, u_input.a.x, u_input.d) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(0i, u_input.b, 1i, 2147483647i), select(vec4<i32>(u_input.b, -43661i, 0i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -25017i), false))), vec4<i32>(u_input.b, _wgslsmith_sub_i32(1i, ~u_input.b), ~(~u_input.b), -2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, false, false, false), vec3<bool>(true, true, true), Struct_1(u_input.b, vec4<i32>(1i, u_input.b, -1i, 0i), vec4<f32>(arg_0.x, -1318f, -278f, 332f), 1104f), u_input.a.x))) * _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), Struct_1(-10034i, vec4<i32>(-36964i, -15320i, 1i, -67728i) & vec4<i32>(u_input.b, -26220i, u_input.b, -2147483647i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1321f, arg_0.x, 2516f, arg_0.x))), _wgslsmith_f_op_f32(arg_0.x + 468f)), ~(u_input.a.x & u_input.c)))), -243f);
    let var_1 = var_0;
    global0 = array<vec3<i32>, 22>();
    let var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(13273u, 4294967295u, 26957u, _wgslsmith_add_u32(u_input.c, 44888u)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c, 0u, u_input.c), select(vec4<u32>(4294967295u, u_input.d, 85106u, 23412u), vec4<u32>(u_input.d, 27398u, 13865u, 32141u), vec4<bool>(false, false, true, true))), vec4<u32>(u_input.d ^ u_input.c, _wgslsmith_add_u32(u_input.d, u_input.c), 1u ^ u_input.a.x, 1u)) % vec4<u32>(32u)), countOneBits(abs(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 7705u, u_input.d, u_input.d), vec4<u32>(77157u, u_input.a.x, u_input.a.x, 16098u))))));
    global1 = true;
    return var_1;
}

fn func_1() -> i32 {
    var var_0 = Struct_1(~0i, -_wgslsmith_sub_vec4_i32(firstLeadingBit(~vec4<i32>(1i, u_input.b, u_input.b, u_input.b)), select(~vec4<i32>(-1i, 4075i, 1i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, 1i, u_input.b, u_input.b)), vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1156f, 1407f)), _wgslsmith_f_op_f32(470f - 833f), 518f, _wgslsmith_f_op_f32(546f + 869f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-949f, -401f, -1000f, -145f)), vec4<f32>(-195f, 1003f, -707f, -626f), any(vec4<bool>(false, true, true, true)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2092f, _wgslsmith_f_op_f32(f32(-1f) * -995f)))));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(floor(var_0.c.yxz)));
    let var_2 = var_1;
    let var_3 = var_1.c;
    global0 = array<vec3<i32>, 22>();
    return 16853i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 22>();
    var var_0 = vec3<bool>((reverseBits(min(u_input.b, 0i)) | _wgslsmith_add_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, 0i))) >= _wgslsmith_add_i32(u_input.b >> (u_input.c % 32u), 34628i), true || (select(any(vec4<bool>(true, false, false, false)), all(vec3<bool>(true, true, true)), true) && all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))));
    global1 = var_0.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1008f))), -274f));
    var var_2 = vec4<i32>(abs(u_input.b), 0i, _wgslsmith_div_i32(u_input.b, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(2496i, 2147483647i), vec2<i32>(11375i, u_input.b)))), func_1());
    let var_3 = vec3<f32>(func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1563f, 470f, -163f)) * vec3<f32>(var_1, 1462f, -495f))))).c.x, var_1, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_mod_i32(min(_wgslsmith_clamp_i32(971i >> (u_input.d % 32u), 2147483647i, ~u_input.b), u_input.b), ~abs(7711i) ^ u_input.b), var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, countOneBits(firstTrailingBit(u_input.c)), firstLeadingBit(max(9117u, 1u)), 0u), (~vec4<u32>(0u, u_input.a.x, u_input.c, u_input.c) >> (~vec4<u32>(0u, u_input.a.x, 12001u, 77665u) % vec4<u32>(32u))) | (_wgslsmith_add_vec4_u32(vec4<u32>(2345u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 33071u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, 1u), vec4<u32>(64102u, 23390u, 11272u, 5982u)))));
}

