struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1792f;

var<private> global1: Struct_2;

var<private> global2: i32 = -6685i;

var<private> global3: array<i32, 29> = array<i32, 29>(-1i, 1i, 12601i, -34414i, i32(-2147483648), 1i, 27879i, -13916i, -1i, -3392i, -24915i, 28472i, -36479i, 3748i, -80486i, 34338i, 10435i, 7210i, 0i, 2351i, -1i, -21806i, 1i, i32(-2147483648), -8099i, 1i, 0i, -1i, i32(-2147483648));

var<private> global4: array<Struct_2, 22>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = u_input.b.xw;
    let var_1 = Struct_3(max(vec2<u32>(16632u, reverseBits(_wgslsmith_mod_u32(var_0.x, 1u))), ~firstLeadingBit(u_input.b.xy)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, _wgslsmith_f_op_f32(-global1.b))))), Struct_1(select(_wgslsmith_sub_vec2_i32(u_input.e.zw, u_input.e.zw), -vec2<i32>(global3[_wgslsmith_index_u32(1u, 29u)], 2147483647i), vec2<bool>(false, true)) & select(reverseBits(vec2<i32>(global3[_wgslsmith_index_u32(16071u, 29u)], u_input.e.x)), ~u_input.e.zw, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(388f, global1.b) - -411f)), ~firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.b.zx, u_input.b.yz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b)) * _wgslsmith_f_op_f32(round(-111f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * 230f))), u_input.b.wxx), abs(_wgslsmith_dot_vec2_i32(u_input.e.zx, vec2<i32>(-63424i, ~u_input.e.x))), global1.a.x);
    global2 = -_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~var_1.c.a, ~u_input.e.zz), u_input.e.zw), -1i, 19318i);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b.x, var_1.c.b, 830f), vec3<f32>(-437f, var_1.b.x, var_1.b.x))))) - vec3<f32>(_wgslsmith_f_op_f32(var_1.c.b - 916f), -1919f, _wgslsmith_f_op_f32(min(global1.b, var_1.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1133f, 381f, -678f) * vec3<f32>(-1430f, 1167f, -201f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b.x, var_1.c.d, -621f)))))));
    let var_3 = -global3[_wgslsmith_index_u32(var_1.c.e.x, 29u)];
    return var_1.d;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(vec2<i32>(~_wgslsmith_div_i32(func_3(), ~u_input.c), ~(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 29u)])), global1.b, ~vec2<u32>(u_input.d, select(abs(1u), u_input.b.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(208f, _wgslsmith_f_op_f32(trunc(global1.b)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2004f - 1000f) + 1000f))), abs(vec3<u32>(select(reverseBits(5322u), ~u_input.d, !global1.a.x), abs(4294967295u), ~u_input.b.x)));
    let var_1 = Struct_1(u_input.e.yx, _wgslsmith_f_op_f32(-738f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1466f * 2131f), -168f) - var_0.b)), u_input.b.zx, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * var_0.b) - _wgslsmith_f_op_f32(-global1.b)), 1374f)), var_0.e);
    global2 = i32(-1i) * -1743i;
    var var_2 = Struct_3(var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, 576f), vec2<f32>(global1.b, -1168f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1409f, global1.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-700f, var_1.b) + vec2<f32>(var_1.d, 759f)), false)))), var_1, _wgslsmith_sub_i32(_wgslsmith_div_i32(max(_wgslsmith_dot_vec2_i32(var_1.a, var_1.a), -45026i), 4326i ^ _wgslsmith_clamp_i32(var_1.a.x, 2147483647i, u_input.a)), func_3() >> (1u % 32u)), (_wgslsmith_f_op_f32(step(var_1.d, var_0.d)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-667f * -1061f) - _wgslsmith_f_op_f32(-var_1.d))) || (~2962u == abs(var_0.c.x ^ 35830u)));
    let var_3 = ~vec3<i32>(0i, _wgslsmith_mult_i32(var_2.d, _wgslsmith_mod_i32(2147483647i, firstLeadingBit(var_1.a.x))), var_2.d);
    return ~firstLeadingBit(~_wgslsmith_mod_u32(u_input.d >> (u_input.b.x % 32u), 27484u));
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_3 {
    var var_0 = u_input.e.zw;
    global1 = Struct_2(!global1.a, -1352f);
    let var_1 = func_2();
    var_0 = ~vec2<i32>(-951i, -(21653i ^ arg_1) & ~_wgslsmith_sub_i32(-27420i, -16766i));
    var var_2 = Struct_3(max(abs(~vec2<u32>(10105u, var_1)), abs(~(u_input.b.wz ^ vec2<u32>(1u, u_input.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1140f, 309f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(870f, global1.b), vec2<f32>(global1.b, -1067f))), all(vec3<bool>(false, true, global1.a.x))))), Struct_1(~_wgslsmith_mod_vec2_i32(vec2<i32>(0i, arg_1), u_input.e.yz) << (max(~u_input.b.zx, ~vec2<u32>(var_1, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(300f)))), _wgslsmith_mult_vec2_u32(vec2<u32>(min(1u, var_1), func_2()), abs(vec2<u32>(var_1, u_input.b.x) & u_input.b.yw)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b - -534f), global1.b))), vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, u_input.b.x, var_1, u_input.b.x)), var_1, u_input.b.x)), arg_0, false);
    return Struct_3(max(firstTrailingBit(vec2<u32>(1u, 26997u)) ^ vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, var_1), ~0u), _wgslsmith_div_vec2_u32(~abs(var_2.c.c), vec2<u32>(u_input.d, select(var_1, var_1, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b), var_2.b), any(global1.a)))), var_2.c, -(var_0.x << (~(~1u) % 32u)), true);
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<bool>(global1.a.x, true);
    let var_1 = func_4(-79771i >> (~func_2() % 32u), global3[_wgslsmith_index_u32(~u_input.d, 29u)]);
    let var_2 = abs(_wgslsmith_clamp_vec3_u32(select(min(vec3<u32>(4294967295u, var_1.a.x, 1u), var_1.c.e) ^ ~vec3<u32>(1u, 62579u, u_input.d), vec3<u32>(u_input.d, _wgslsmith_mod_u32(var_1.c.c.x, u_input.d), _wgslsmith_mod_u32(var_1.a.x, 11597u)), true), firstTrailingBit(~var_1.c.e) & ~u_input.b.ywx, var_1.c.e));
    var var_3 = Struct_2(vec3<bool>(any(vec2<bool>(true, true)), any(!vec3<bool>(var_1.e, var_1.e, true)), true), _wgslsmith_f_op_f32(global1.b - -1892f));
    var var_4 = 84686u;
    return Struct_2(var_3.a, _wgslsmith_f_op_f32(max(-327f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) * -1390f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.wwy << (u_input.b.zxy % vec3<u32>(32u)), u_input.b.zyz), 22u)];
    let var_1 = 0i;
    let var_2 = u_input.b;
    var var_3 = global4[_wgslsmith_index_u32(~var_2.x, 22u)];
    global1 = global4[_wgslsmith_index_u32(61741u ^ ~var_2.x, 22u)];
    let var_4 = 66037u;
    let var_5 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.zyy, ~(~(~reverseBits(var_2.wxz)))), 22u)];
    var_0 = func_1();
    global4 = array<Struct_2, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~firstTrailingBit(-1i), u_input.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(312f, var_5.b, 127f), vec3<f32>(var_0.b, 297f, -538f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, var_0.b, var_3.b)))))));
}

