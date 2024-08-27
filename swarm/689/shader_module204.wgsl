struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1 = Struct_1(1000f, vec4<u32>(1u, 26534u, 0u, 4294967295u), vec2<u32>(52406u, 0u));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = vec4<bool>(global1.a != _wgslsmith_f_op_f32(-350f + 585f), -2147483647i == _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, arg_1), global0.x), ~(-arg_0)), true, (u_input.a & (-arg_1 | select(-19067i, -2147483647i, false))) == (i32(-1i) * -(i32(-1i) * -10261i)));
    global0 = ~(vec2<i32>(-1i) * -(~(-vec2<i32>(283i, 0i))));
    let var_1 = min(~vec3<i32>(arg_0, _wgslsmith_sub_i32(-2147483647i, -2147483647i), u_input.a), vec3<i32>(arg_0, -2147483647i, -3181i));
    var var_2 = global1.b.x;
    var_2 = _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(54572u, 1u, 0u), ~global1.b.yzw), global1.b.zyx);
    return _wgslsmith_dot_vec2_i32(-(vec2<i32>(_wgslsmith_clamp_i32(-60665i, -66480i, global0.x), -u_input.a) & -(~vec2<i32>(var_1.x, -25173i))), var_1.zz);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global1 = Struct_1(381f, global1.b << ((vec4<u32>(~global1.c.x, 1u, global1.c.x, _wgslsmith_mod_u32(global1.b.x, 52699u)) | reverseBits(~vec4<u32>(41060u, 1u, 24312u, 55494u))) % vec4<u32>(32u)), global1.b.yy);
    var var_0 = vec4<bool>(true, all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), true);
    let var_1 = abs(-vec3<i32>(-u_input.a, u_input.a, _wgslsmith_clamp_i32(global0.x, u_input.a, 0i)) >> (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(38675u, 24190u), 83370u >> (global1.b.x % 32u)), ~(~1027u), 1u) % vec3<u32>(32u)));
    var_0 = !vec4<bool>(var_0.x, !((global1.b.x > global1.b.x) && any(vec2<bool>(true, true))), abs(select(82399u, 1u, var_0.x)) >= 7041u, func_3(u_input.a, select(global0.x, -2147483647i, false)) == countOneBits(1i));
    global0 = (vec2<i32>(2360i, func_3(global0.x, 64122i)) ^ ~vec2<i32>(global0.x, ~0i)) ^ _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-1i, firstLeadingBit(global0.x))), -(-vec2<i32>(-5530i, global0.x) << (~global1.b.ww % vec2<u32>(32u))), -_wgslsmith_div_vec2_i32(var_1.yx, ~var_1.zz));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * -539f) * 1133f), ~(~vec4<u32>(global1.b.x << (10407u % 32u), ~36307u, abs(11485u), ~36137u)), ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, global1.c.x, global1.b.x, global1.c.x), global1.b), ~global1.b.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, 1616f) - vec2<f32>(global1.a, 294f)));
    global0 = ~(~(-vec2<i32>(u_input.a, -4i) >> (global1.c % vec2<u32>(32u))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-func_2(vec2<f32>(1000f, _wgslsmith_f_op_f32(-global1.a))).a);
    var_2 = _wgslsmith_div_f32(var_0.a, global1.a);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~vec3<i32>(global0.x, 1i, -u_input.a)));
    global0 = -_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.yx, abs(vec2<i32>(global0.x, global0.x))), ~abs(vec2<i32>(var_0.x, 2600i)));
    let var_1 = func_1();
    var_0 = vec3<i32>(global0.x, u_input.a ^ _wgslsmith_sub_i32(firstLeadingBit(-41138i), 2147483647i), -2147483647i) | vec3<i32>(var_0.x, -(~_wgslsmith_add_i32(1i, global0.x)), 0i);
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, global0.x) & 1i, ~u_input.a)));
}

