struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = reverseBits(global0.b) << (~(~(~(~vec4<u32>(global0.a.x, global0.a.x, 0u, global0.a.x)))) % vec4<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(~(~(arg_0.zy & vec2<u32>(0u, 4294967295u))), ~(vec2<u32>(97302u, u_input.a) << (_wgslsmith_mod_vec2_u32(arg_0.zx, vec2<u32>(35105u, 4294967295u)) % vec2<u32>(32u)))), global0.b ^ countOneBits(-global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global0.c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(325f, 723f, global0.c.x, global0.c.x))))))), true);
    global0 = Struct_1(global0.a, max(_wgslsmith_mult_vec4_i32(abs(var_1.b), vec4<i32>(reverseBits(13783i), -57083i, _wgslsmith_dot_vec4_i32(var_1.b, global0.b), var_0.x)), ~var_1.b), var_1.c, false);
    var var_2 = vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * -592f)))), global0.c.x);
    var_2 = _wgslsmith_f_op_vec3_f32(var_1.c.xzz * vec3<f32>(459f, _wgslsmith_f_op_f32(step(global0.c.x, var_2.x)), -612f));
    return var_1.a.x & u_input.a;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(global0.a, vec2<u32>(global0.a.x, u_input.a))), func_3(_wgslsmith_add_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, u_input.a), vec3<u32>(53434u, u_input.a, 1u)))), max(global0.a, _wgslsmith_add_vec2_u32(vec2<u32>(global0.a.x, u_input.a), global0.a))), global0.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(610f, global0.c.x, select(false, global1.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(-global0.c.x))))), true);
    var var_1 = -(vec3<i32>(global0.b.x, -2147483647i, -u_input.b) | global0.b.wxz);
    let var_2 = Struct_1(~(~(~select(var_0.a, var_0.a, global1.x))), _wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(var_1.x, -global0.b.x, -1i, 0i)), global0.c, all(global1.yw));
    let var_3 = abs(0i);
    let var_4 = Struct_1(_wgslsmith_div_vec2_u32(var_2.a, countOneBits(reverseBits(vec2<u32>(0u, var_0.a.x)))), _wgslsmith_clamp_vec4_i32(var_2.b, _wgslsmith_sub_vec4_i32(~(-vec4<i32>(var_3, 3604i, 0i, -2147483647i)), vec4<i32>(-14401i, _wgslsmith_clamp_i32(-1i, global0.b.x, global0.b.x), -25497i, select(3989i, -7873i, false))), ~(-reverseBits(var_0.b))), _wgslsmith_f_op_vec4_f32(step(global0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.c)))))), select(!any(global1.ww), any(!vec2<bool>(true, var_0.d)), any(vec3<bool>(true, global1.x, var_2.d))) & (var_2.c.x < _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(var_2.c.x * var_0.c.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.c.x))));
}

fn func_1(arg_0: vec2<bool>) -> vec3<u32> {
    global1 = vec4<bool>(false, -708f != _wgslsmith_f_op_f32(-global0.c.x), global1.x, all(!vec4<bool>(global0.d & global0.d, select(global0.d, false, global0.d), true && global1.x, true)));
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-104f))), global0.c.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x + 484f), global0.c.x), 526f, _wgslsmith_f_op_f32(f32(-1f) * -667f)) + global0.c.zyz));
    var var_1 = vec4<i32>(-global0.b.x, 54470i, firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_i32(firstLeadingBit(-20500i), 2147483647i, _wgslsmith_mod_i32(2147483647i, global0.b.x)))), u_input.c.x);
    let var_2 = countOneBits(~(-_wgslsmith_mod_i32(global0.b.x, var_1.x)) >> (_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(78468u, 54362u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), global0.a.x ^ 67814u) % 32u));
    var var_3 = Struct_1(vec2<u32>(~_wgslsmith_div_u32(~u_input.a, u_input.a << (1u % 32u)), global0.a.x ^ firstLeadingBit(u_input.a)), global0.b, _wgslsmith_div_vec4_f32(global0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, -561f, var_0.x, global0.c.x) - vec4<f32>(global0.c.x, -1021f, 408f, 347f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, 224f, 801f)), !vec4<bool>(true, global1.x, false, arg_0.x))))), false);
    return abs(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a | 4294967295u, max(global0.a.x, u_input.a), u_input.a), vec3<u32>(0u, global0.a.x, 25244u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(firstTrailingBit(~global0.a), _wgslsmith_clamp_vec2_u32(global0.a, ~vec2<u32>(1u, u_input.a), vec2<u32>(_wgslsmith_mod_u32(51163u, global0.a.x), global0.a.x)), global1.yz), -vec4<i32>(countOneBits(min(2147483647i, -45326i)), u_input.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.c, global0.b.zyz), global0.b.x), global0.b.x), _wgslsmith_f_op_vec4_f32(-global0.c), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.x + global0.c.x), global0.c.x))), -1000f, -1611f)));
    global1 = vec4<bool>(global0.d || (var_0.d & global1.x), true, select(any(vec2<bool>(true, true | global0.d)), !all(global1.wx), global0.d), ~min(u_input.a, 1u) < _wgslsmith_dot_vec3_u32(func_1(select(global1.zx, global1.yw, global1.x)), ~vec3<u32>(var_0.a.x, var_0.a.x, u_input.a)));
    var_0 = Struct_1(~var_0.a, _wgslsmith_div_vec4_i32(-global0.b ^ abs(global0.b), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(global0.b), firstTrailingBit(global0.b), vec4<i32>(1i, global0.b.x, -8880i, global0.b.x)), -vec4<i32>(var_0.b.x, 25021i, u_input.b, 1i))), _wgslsmith_f_op_vec4_f32(-global0.c), global1.x);
    global0 = Struct_1(_wgslsmith_div_vec2_u32(~(vec2<u32>(4294967295u, global0.a.x) ^ vec2<u32>(15153u, global0.a.x)) | (~global0.a | ~vec2<u32>(u_input.a, global0.a.x)), min(min(var_0.a, vec2<u32>(12245u, var_0.a.x)), global0.a)), var_0.b, global0.c, true);
    var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.x, u_input.a) | global0.a, vec2<u32>(_wgslsmith_clamp_u32(global0.a.x, global0.a.x, var_0.a.x), firstTrailingBit(u_input.a)), ~global0.a >> (vec2<u32>(global0.a.x, 1u) % vec2<u32>(32u))) >> (global0.a % vec2<u32>(32u)), reverseBits(var_0.b), var_0.c, any(select(vec2<bool>(global1.x, var_0.d), select(select(global1.zz, vec2<bool>(false, global0.d), global1.yx), global1.yy, var_0.d | false), select(global1.zy, select(global1.ww, global1.yx, global0.d), global1.x | true))));
    var var_2 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(func_1(global1.yz).x, 1u, ~_wgslsmith_add_u32(u_input.a, 0u)), vec3<u32>(func_3(vec3<u32>(0u, 1u, 133072u) | vec3<u32>(global0.a.x, global0.a.x, 4294967295u)), countOneBits(1u), firstTrailingBit(~u_input.a)), global1.yww), vec3<u32>(4294967295u, u_input.a, 33923u));
    let x = u_input.a;
    s_output = StorageBuffer(min(global0.a.x, u_input.a), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1061f)), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(141f * _wgslsmith_f_op_f32(floor(702f)))))), _wgslsmith_mult_u32(4294967295u, 0u), global0.c.x);
}

