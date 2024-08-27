struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_i32((vec2<i32>(arg_0.a.a, 7262i) << ((vec2<u32>(0u, arg_0.b) >> (u_input.a.zx % vec2<u32>(32u))) % vec2<u32>(32u))) ^ vec2<i32>(-2147483647i, arg_0.e.x), u_input.b) | _wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.b.x, u_input.c), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i) << (max(vec2<u32>(u_input.d.x, arg_0.b), u_input.a.zy) % vec2<u32>(32u)), vec2<i32>(0i, ~(-8450i))));
    var_0 = select(_wgslsmith_div_vec2_i32(-u_input.b, vec2<i32>(1i ^ arg_0.a.a, 1i)), -_wgslsmith_clamp_vec2_i32(u_input.b, max(vec2<i32>(arg_0.a.a, var_0.x), u_input.b) | -vec2<i32>(-4545i, -7806i), arg_0.e), false);
    let var_1 = 7666i;
    var_0 = arg_0.e;
    let var_2 = arg_0.a;
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(min(arg_0.b, 6868u) ^ ~(~4294967295u), 1u, 1u), _wgslsmith_mult_u32(u_input.a.x ^ (1u >> (arg_0.b % 32u)), u_input.d.x) << (reverseBits(54484u ^ u_input.d.x) % 32u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, true, true)), any(vec3<bool>(true, false, false))), select(true, true, u_input.c != u_input.c)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))));
    let var_1 = abs(1i | firstTrailingBit(-u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-321f)) + -542f)))));
    var var_3 = Struct_4(~u_input.a.yy, i32(-1i) * -1i);
    var_3 = Struct_4(vec2<u32>(~u_input.a.x, u_input.a.x | min(_wgslsmith_dot_vec2_u32(u_input.a.yy, arg_1), ~var_3.a.x)), ~var_1 >> ((0u << (select(4294967295u, 85039u, var_0.x) % 32u)) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1862f + var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 999f));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(-133f, 280f, -1061f, -605f), u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 732f))), 1676f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-971f + -616f), -1438f, _wgslsmith_f_op_f32(-195f - -2528f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(162f, 142f, 450f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-408f, -1638f, -370f))))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(939f, 1000f, _wgslsmith_f_op_f32(-1762f - -552f))))));
    let var_1 = vec2<bool>(!arg_2.b.x, any(select(arg_0.yz, vec2<bool>(arg_2.b.x, any(arg_0.wxz)), vec2<bool>(arg_1.b != 0i, true))));
    let var_2 = arg_1;
    var var_3 = Struct_1(u_input.b.x);
    let var_4 = vec2<i32>(var_3.a, arg_2.a.a) ^ vec2<i32>(_wgslsmith_mult_i32(~(-27740i), arg_1.b), 0i);
    return abs(~(~abs(arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b.x);
    var var_1 = var_0;
    let var_2 = min(vec4<u32>(func_2(vec4<bool>(true, true, true, true), Struct_4(vec2<u32>(15068u, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_0.a, -7563i, -10795i), vec4<i32>(u_input.b.x, 1i, -62779i, 2147483647i))), Struct_2(Struct_1(1i), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), func_1(Struct_3(var_0, u_input.d.x, -1147f, vec2<f32>(-423f, 953f), vec2<i32>(var_1.a, u_input.b.x)), 1350f)), ~4294967295u, 12840u, _wgslsmith_dot_vec2_u32(u_input.a.xz, select(vec2<u32>(u_input.a.x, 30144u) & u_input.a.zx, u_input.a.zy & vec2<u32>(u_input.a.x, u_input.d.x), any(vec3<bool>(true, false, true))))), ~(vec4<u32>(1u, 12146u, 0u, ~u_input.d.x) | _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 53998u, u_input.d.x, 28461u), vec4<u32>(8258u, 21897u, 95782u, u_input.a.x)), vec4<u32>(1315u, 41473u, u_input.d.x, u_input.a.x))));
    var var_3 = Struct_4(vec2<u32>(firstLeadingBit(var_2.x), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, var_2.zwx), var_2.wyy)), -u_input.b.x);
    var var_4 = var_0;
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(floor(-1298f)), _wgslsmith_div_f32(-456f, -1118f), -421f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(600f, -1183f, true)) * -1280f), _wgslsmith_div_f32(-884f, _wgslsmith_div_f32(-157f, 217f)), _wgslsmith_f_op_f32(f32(-1f) * -1278f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2229f, -576f, -1032f)))))));
    let var_6 = firstTrailingBit(firstLeadingBit(firstTrailingBit(~var_3.a.x & select(u_input.a.x, var_2.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 22942u, -1000f, var_5.yx, var_3.b);
}

