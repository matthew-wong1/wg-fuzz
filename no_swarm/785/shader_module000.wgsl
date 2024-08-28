struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    global1 = vec3<f32>(-883f, global1.x, 118f);
    var var_0 = max(-25212i, 2147483647i);
    global1 = vec3<f32>(-426f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - global1.x), -1628f) - _wgslsmith_f_op_f32(sign(global1.x)))), -1443f);
    var_0 = -2147483647i;
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, 1000f)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), 1455f))), -452f, 100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(531f, global1.x), _wgslsmith_f_op_f32(min(global1.x, 229f)), arg_0)))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = ~vec4<u32>(~u_input.c, ~(~0u), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 12916u, u_input.c), vec3<u32>(4294967295u, 1u, 51385u)), 1u), ~countOneBits(4294967295u));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -769f) - _wgslsmith_f_op_f32(ceil(1322f))))), 1000f, 787f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, 655f, 1186f, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(454f, global1.x, 711f, arg_0) + vec4<f32>(global1.x, 1980f, arg_0, arg_0))) * vec4<f32>(_wgslsmith_f_op_f32(1000f - global1.x), _wgslsmith_f_op_f32(step(-350f, global1.x)), _wgslsmith_f_op_f32(global1.x - arg_0), global1.x)), false)) + _wgslsmith_f_op_vec4_f32(func_3(true)));
    global0 = array<Struct_1, 20>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(-978f)), firstTrailingBit(~(~vec4<u32>(36538u, 1u, 33699u, 4294967295u))), firstLeadingBit(firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(arg_2, -1i))), _wgslsmith_mult_i32(select(-_wgslsmith_div_i32(0i, arg_3), _wgslsmith_mult_i32(-37443i, -8552i), all(vec4<bool>(false, true, true, true))), 1i));
    return global0[_wgslsmith_index_u32(var_0.x, 20u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(abs(50054u), 20u)];
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -1746f) + _wgslsmith_f_op_f32(arg_0.a * global1.x))))), u_input.c, max(-78902i, -1i), 0i);
    var var_2 = var_1.b.wx;
    let var_3 = 23987u;
    let var_4 = vec2<bool>(max(-47448i, arg_0.d) > 8013i, true);
    return vec3<i32>(firstLeadingBit(firstTrailingBit(reverseBits(~(-31023i)))), -(i32(-1i) * -34969i), arg_0.d);
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(2147483647i, u_input.b);
    let var_1 = true;
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x));
    var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(func_4(func_2(global1.x, u_input.c, var_0.x, u_input.a), _wgslsmith_f_op_f32(func_2(160f, u_input.c, 0i, u_input.b).a - _wgslsmith_f_op_f32(global1.x + global1.x))), _wgslsmith_clamp_vec3_i32(-countOneBits(vec3<i32>(37889i, -11882i, u_input.b)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-32726i, 18517i, var_0.x), vec3<i32>(var_0.x, u_input.a, u_input.b)), ~(~vec3<i32>(-24748i, var_0.x, u_input.b)))), u_input.a >> (~u_input.c % 32u));
    return func_2(var_3, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, ~u_input.c)), vec2<u32>(~u_input.c, _wgslsmith_sub_u32(u_input.c, 40225u))), -_wgslsmith_div_i32(~2147483647i, min(u_input.b, -2147483647i | var_0.x)), -46640i);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> vec3<f32> {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(11990i, 0i, 23680i, -39035i), vec4<i32>(-1i, 2147483647i, u_input.b, arg_2)), u_input.a), func_1().c.x, _wgslsmith_sub_i32(reverseBits(u_input.a) & 0i, arg_2 | -1i)) ^ countOneBits(vec3<i32>(arg_0.d, u_input.a, firstTrailingBit(-1i)));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(115f, -706f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-703f, 255f, true)))))), arg_0.b, vec2<i32>(-u_input.a, _wgslsmith_div_i32(1i, -arg_2)) | var_0.zy, firstLeadingBit(func_2(-1437f, 1u >> (u_input.c % 32u), _wgslsmith_dot_vec3_i32(var_0, abs(vec3<i32>(u_input.a, -2147483647i, 2147483647i))), arg_2).c.x));
    let var_2 = var_0.yy;
    let var_3 = 1i;
    let var_4 = Struct_1(global1.x, ~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(63376u, var_1.b.x, var_1.b.x, var_1.b.x), var_1.b, vec4<u32>(u_input.c, u_input.c, var_1.b.x, 4294967295u)) << (~vec4<u32>(arg_0.b.x, 0u, arg_0.b.x, 7607u) % vec4<u32>(32u)))), vec2<i32>(_wgslsmith_dot_vec2_i32(func_2(-476f, ~arg_0.b.x, -var_2.x, arg_0.c.x).c, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_1.d), vec2<i32>(1i, -1i) ^ var_1.c)), max(arg_0.d ^ ~var_3, -57016i)), -2147483647i);
    return _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(1401f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f * -1168f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-252f, global1.x, 845f), vec3<f32>(var_4.a, -1525f, -398f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1064f, var_4.a, -1000f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(893u, 20u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(func_5(func_1(), -1630f, ~_wgslsmith_mod_i32(171i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -var_0.c, var_0.c), _wgslsmith_sub_i32(_wgslsmith_sub_i32(func_1().d, ~var_0.d), -1533i ^ select(1i, var_0.c.x, true)), _wgslsmith_mod_i32(-51940i, ~(u_input.a ^ var_0.d))), -2147483647i, 10360u);
}

