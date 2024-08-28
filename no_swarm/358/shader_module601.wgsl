struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10>;

var<private> global1: array<i32, 19>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_mod_u32(~(~min(~4294967295u, u_input.d)), 63989u);
    let var_1 = u_input.b;
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    global0 = array<vec2<i32>, 10>();
    return vec2<f32>(-212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(125f, -1000f, true))), any(vec3<bool>(true, true, false))))));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_1(u_input.b.x, -1811f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(399f * -547f)), _wgslsmith_f_op_f32(round(585f)))), select(vec2<u32>(4655u << (_wgslsmith_mod_u32(arg_0, 0u) % 32u), arg_0), vec2<u32>(~u_input.d, arg_0), false));
    global0 = array<vec2<i32>, 10>();
    let var_1 = Struct_1(abs(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, var_0.d.x) & 1u, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1000f, -803f)))))), _wgslsmith_f_op_vec2_f32(func_3(1i)), vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(46129u, 4294967295u), u_input.c.zx), ~arg_0, var_0.d.x)), 1u));
    var var_2 = u_input.b;
    var var_3 = ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 4294967295u, 100615u), u_input.c))) | vec3<u32>(select(~var_1.d.x >> (4294967295u % 32u), ~max(var_1.d.x, 1u), true), 0u | abs(var_0.d.x), 21559u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -994f) + -476f)))));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = vec2<bool>(true, !(!all(vec2<bool>(false, false))));
    let var_1 = ~countOneBits(arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -337f);
    var_2 = _wgslsmith_f_op_f32(308f * _wgslsmith_f_op_f32(arg_0 * -1844f));
    global1 = array<i32, 19>();
    return Struct_1(-1i, _wgslsmith_f_op_f32(f32(-1f) * -696f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 1000f))), 1200f), arg_1.xz);
}

fn func_1() -> Struct_1 {
    let var_0 = -37750i;
    var var_1 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(~7198u)))))), ~vec3<u32>(u_input.d, _wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.xz), 0u) << ((~vec3<u32>(1u, u_input.d, u_input.c.x) << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u)), select(_wgslsmith_div_i32(~1i, _wgslsmith_mod_i32(2147483647i, u_input.a.x)), global1[_wgslsmith_index_u32(select(0u, 11973u, false) >> (4992u % 32u), 19u)] & 7860i, all(vec3<bool>(true, true, false)) || true));
    var var_2 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1401f), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(92340u, var_1.d.x >> (var_1.d.x % 32u), ~u_input.d), vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, var_1.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 47986u), u_input.c), 4687u))), var_0 >> (0u % 32u));
    var var_3 = -32575i;
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c.x, var_2.b, var_2.c.x), vec3<f32>(-596f, var_1.b, var_1.c.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, -2227f, var_2.c.x), vec3<f32>(var_1.c.x, var_2.c.x, var_1.b))))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_u32(var_2.d.x, var_2.d.x))), _wgslsmith_f_op_f32(1071f * _wgslsmith_f_op_f32(137f - var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1101f) * var_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1u)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))));
    return Struct_1(-(~(-var_2.a)) | reverseBits(10595i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-195f)) + var_2.c.x), true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_4.zx, var_4.xx), _wgslsmith_f_op_vec2_f32(-var_1.c), !select(vec2<bool>(true, true), vec2<bool>(true, true), true))), func_4(1f, vec3<u32>(~var_2.d.x, abs(u_input.d), ~func_4(-1873f, vec3<u32>(var_2.d.x, var_1.d.x, 15790u), 1834i).d.x), 1i).d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 10>();
    var var_0 = func_1();
    var_0 = Struct_1(~firstTrailingBit(0i) << (~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, u_input.c), abs(vec3<u32>(29406u, 0u, u_input.c.x))) % 32u), -173f, _wgslsmith_f_op_vec2_f32(-var_0.c), ~_wgslsmith_clamp_vec2_u32(var_0.d, var_0.d, vec2<u32>(_wgslsmith_mult_u32(var_0.d.x, var_0.d.x), var_0.d.x)));
    var var_1 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_vec2_f32(func_3(12675i)).x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b)))), -809f)), vec3<u32>(4294967295u, var_0.d.x, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-261f - var_0.c.x) + _wgslsmith_f_op_f32(max(var_0.b, var_0.c.x))), u_input.c, _wgslsmith_mult_i32(func_4(var_0.b, u_input.c, global1[_wgslsmith_index_u32(0u, 19u)]).a, -2147483647i)).d.x), _wgslsmith_sub_i32(-23589i, firstTrailingBit(min(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-7253i, var_0.a, var_0.a, u_input.b.x)), -43898i))));
    let var_2 = true;
    global1 = array<i32, 19>();
    let var_3 = !(!(!(!(!vec4<bool>(false, false, true, var_2)))));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_1.a) >> (var_0.d.x % 32u), var_4.d.x, countOneBits(var_0.a));
}

