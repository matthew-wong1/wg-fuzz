struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 52238u, 1u, 1u);

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 22>;

var<private> global4: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = ~vec2<i32>(_wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(u_input.a.x, -55481i)), u_input.a.xy), -global2.a.x);
    global3 = array<vec3<i32>, 22>();
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(573f, global0.c.x), vec2<f32>(_wgslsmith_f_op_f32(global4.x - global0.c.x), _wgslsmith_f_op_f32(max(global0.c.x, _wgslsmith_f_op_f32(global2.c.x + global4.x)))))));
    global0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, abs(-var_0.x), _wgslsmith_mod_i32(~u_input.a.x, global2.a.x)), ~vec3<i32>(-u_input.a.x, ~2147483647i, global0.a.x)), 49764u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, 308f) * _wgslsmith_f_op_vec2_f32(trunc(global0.c)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, global4.x)), global2.c)))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_i32(abs(_wgslsmith_mod_vec3_i32(global3[_wgslsmith_index_u32(global1.x, 22u)], vec3<i32>(var_0.x, global0.a.x, global2.a.x)) << (~vec3<u32>(global0.b, global2.b, global2.b) % vec3<u32>(32u))), vec3<i32>(firstTrailingBit(1i), var_0.x, -22025i)), _wgslsmith_mult_u32(76351u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, arg_0.x), global1.zw))) >> (_wgslsmith_add_u32(reverseBits(~74715u), arg_0.x) % 32u), vec2<f32>(_wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(round(-819f))), global2.c.x));
    return _wgslsmith_mod_i32(var_0.x, -_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, -global0.a.x), abs(_wgslsmith_mult_i32(u_input.a.x, var_1.a.x))));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-434f, 605f)) + _wgslsmith_f_op_f32(global2.c.x + -937f)))), _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(global4.x + -1201f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -739f))))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global0.a.x, global2.a.x), -2147483647i, 67236i), global2.a, vec3<i32>(func_3(vec4<u32>(1u, arg_0, arg_0, arg_0)), u_input.a.x, global0.a.x)) & (reverseBits(u_input.a.xzy) << (_wgslsmith_sub_vec3_u32(~global1.xxz, ~vec3<u32>(global2.b, global2.b, global0.b)) % vec3<u32>(32u))), arg_0, vec2<f32>(584f, _wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = var_1;
    global3 = array<vec3<i32>, 22>();
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(var_3.c.x - var_1.c.x);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: f32) -> vec2<bool> {
    global1 = vec4<u32>(~global2.b, global2.b, abs(countOneBits(~global1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(~global2.b, ~global2.b, ~4294967295u, global0.b << (global1.x % 32u)) & abs(vec4<u32>(56966u, 0u, 8770u, 0u)), ~(~(~vec4<u32>(1u, global2.b, 4294967295u, global0.b)))));
    var var_0 = ~(~vec3<u32>(_wgslsmith_div_u32(32931u, global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4380u, 102540u, global0.b, global2.b), vec4<u32>(116281u, global1.x, 103903u, global2.b)), global2.b)) >> (vec3<u32>(3054u, 0u, firstLeadingBit(global2.b)) % vec3<u32>(32u));
    var var_1 = ~global1.zx;
    global1 = vec4<u32>(global2.b, ~_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(0u, var_0.x), var_1.x << (~global2.b % 32u), 70812u), 0u, var_0.x);
    var var_2 = _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(47984u, 1u, global1.x, var_1.x ^ 35034u)), abs(vec4<u32>(~var_1.x, _wgslsmith_mult_u32(4294967295u, global1.x), 1u, 37879u))) & (_wgslsmith_mod_vec4_u32(~vec4<u32>(global2.b, 31682u, global2.b, global2.b), ~vec4<u32>(global2.b, var_0.x, global2.b, 1u)) | vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(16993u, 13978u), ~global1.yx), ~(~global2.b), 0u, ~var_0.x));
    return vec2<bool>(false, true);
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = true;
    var var_1 = !func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -945f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c + arg_0.c) + _wgslsmith_f_op_vec2_f32(abs(global0.c))))), !vec2<bool>(all(vec2<bool>(true, false)), true), _wgslsmith_f_op_f32(sign(arg_0.c.x)));
    let var_2 = _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(global2.a.zx), vec2<i32>(arg_0.a.x, arg_0.a.x)), u_input.a.wy), arg_0.a.x);
    let var_3 = Struct_1(min(_wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(u_input.a.x, u_input.a.x, global0.a.x)) >> (vec3<u32>(0u, 0u, select(1u, 4294967295u, var_1.x)) % vec3<u32>(32u)), vec3<i32>(-arg_0.a.x >> (global0.b % 32u), select(~global2.a.x, ~(-13465i), any(vec2<bool>(var_1.x, false))), arg_0.a.x)), global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1548f, -317f))), _wgslsmith_f_op_f32(func_2(abs(0u)))) * vec2<f32>(_wgslsmith_f_op_f32(-1f), global0.c.x)));
    global2 = var_3;
    return 9333u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.wy;
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, global2.a.x, var_0.x), global3[_wgslsmith_index_u32(16962u, 22u)], vec3<i32>(7223i, global0.a.x, var_0.x)), ~(~func_1(Struct_1(global0.a, 26637u, global0.c))), _wgslsmith_f_op_vec2_f32(select(global0.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(219f)) - -1100f), _wgslsmith_f_op_f32(select(1253f, -186f, true))), true)));
    var var_2 = Struct_1(~reverseBits(vec3<i32>(firstLeadingBit(2147483647i), _wgslsmith_sub_i32(-5378i, 18123i), -20142i)), 0u << (reverseBits(global2.b) % 32u), global0.c);
    global0 = var_1;
    global4 = vec2<f32>(global4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f * 105f) - _wgslsmith_f_op_f32(trunc(global2.c.x)))))));
    global0 = var_1;
    let var_3 = 1i;
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(func_2(global2.b))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4.x, 1710f), vec2<f32>(-458f, var_1.c.x))), vec2<f32>(522f, 1345f)))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, 1211f))))))));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, vec3<i32>(-1i) * -(firstLeadingBit(vec3<i32>(var_0.x, -2147483647i, var_3)) ^ (global2.a >> (global1.yyw % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f - var_1.c.x))), _wgslsmith_div_f32(var_4.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_u32(32511u, var_2.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)))), u_input.a.wz);
}

