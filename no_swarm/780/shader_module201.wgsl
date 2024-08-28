struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<i32>(1i, 25696i, 0i, i32(-2147483648)), vec2<i32>(20384i, -1i), vec2<u32>(16356u, 112938u), -9846i, 1185f), Struct_1(vec4<i32>(44316i, -1i, 6250i, -20598i), vec2<i32>(-4798i, 6156i), vec2<u32>(1u, 1u), 2307i, 799f), vec2<u32>(0u, 0u));

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = ~0u;
    global0 = arg_2;
    global1 = select(~arg_1, _wgslsmith_add_i32(global2.a.a.x, 9225i), arg_0.x);
    global2 = arg_2;
    return ~global0.a.a;
}

fn func_2(arg_0: vec4<f32>) -> vec2<f32> {
    var var_0 = Struct_3(global2.b, global0.a, ~(~firstTrailingBit(vec2<u32>(1u, global0.b.c.x))));
    let var_1 = Struct_2(Struct_1(vec4<i32>(-1i) * -func_3(vec3<bool>(false, false, false), u_input.a.x, Struct_3(Struct_1(global0.b.a, u_input.c.xx, vec2<u32>(var_0.a.c.x, 4294967295u), global0.a.a.x, -914f), var_0.b, vec2<u32>(4294967295u, global2.a.c.x))), (-vec2<i32>(0i, global0.a.b.x) << (~vec2<u32>(global2.b.c.x, 1u) % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(-vec2<i32>(global0.a.a.x, global0.b.a.x), u_input.c.zz), vec2<u32>(33494u, _wgslsmith_clamp_u32(var_0.b.c.x, 1u, u_input.b)) & vec2<u32>(u_input.b, u_input.b), 2147483647i, 1816f));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.zz + _wgslsmith_f_op_vec2_f32(trunc(arg_0.yz))), arg_0.yy, !select(vec2<bool>(false, true), vec2<bool>(false, true), true))), arg_0.yx))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, -1000f), vec2<f32>(global0.b.e, global2.a.e), false)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(-223f, global2.a.e, -640f, -940f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.xx - vec2<f32>(921f, -267f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.xy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(276f, 1143f))))), vec2<bool>(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))))));
    let var_1 = Struct_4(vec2<bool>(all(vec3<bool>(true, true, true)) && !any(vec2<bool>(true, true)), true), select(all(vec4<bool>(true, global2.b.a.x != 2147483647i, true, true)), all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), Struct_2(Struct_1(~global2.a.a, vec2<i32>(global2.a.a.x, global2.b.d) | (global0.b.b ^ global2.a.b), vec2<u32>(global0.b.c.x, ~global0.c.x), _wgslsmith_mod_i32(global2.a.a.x, countOneBits(-47685i)), 837f)), Struct_3(Struct_1(vec4<i32>(1i, arg_0 ^ 2147483647i, global2.a.b.x, -1467i), min(global0.b.a.zx, abs(u_input.a.wz)), abs(vec2<u32>(global0.b.c.x, 16915u)), firstLeadingBit(abs(global0.b.a.x)), -1740f), Struct_1(global2.b.a, global2.a.a.wy, reverseBits(global2.a.c & global2.c), abs(2147483647i), 799f), _wgslsmith_mod_vec2_u32(~global2.c, global0.c) & global2.b.c));
    global1 = -112146i;
    let var_2 = -2260f;
    global0 = Struct_3(global3[_wgslsmith_index_u32(~(~(~(~2739u))), 28u)], global0.a, firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(4294967295u, var_1.c.a.c.x), 965u)));
    return max(54214i, ~var_1.d.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(max(u_input.a.x, global0.b.a.x), func_1(827i, vec3<f32>(global0.b.e, global0.a.e, 150f))), _wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, global2.a.b.x), -vec2<i32>(50423i, global2.a.b.x))), vec2<i32>(1i, 1i)) | global0.b.a.xw;
    global1 = -global2.b.b.x;
    let var_1 = -1i;
    global3 = array<Struct_1, 28>();
    var_0 = u_input.c.wx;
    var var_2 = Struct_2(global3[_wgslsmith_index_u32(select(u_input.b, _wgslsmith_mod_u32(_wgslsmith_div_u32(46220u, global2.b.c.x), ~0u) | ((global0.c.x ^ global0.c.x) & 36601u), true), 28u)]);
    let var_3 = Struct_2(var_2.a);
    let var_4 = Struct_4(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(select(true, false, true), any(vec2<bool>(true, false)))), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true))), -11333i <= var_0.x, Struct_2(Struct_1(vec4<i32>(-56626i, -2147483647i, global0.b.b.x, 29239i) & global0.b.a, vec2<i32>(func_3(vec3<bool>(false, true, true), var_0.x, Struct_3(var_2.a, Struct_1(vec4<i32>(var_2.a.b.x, 1i, -1i, global0.a.a.x), vec2<i32>(16591i, 42463i), vec2<u32>(36850u, u_input.b), global0.b.d, 657f), global2.c)).x, firstLeadingBit(var_0.x)), max(global2.a.c, vec2<u32>(u_input.b, var_2.a.c.x)), -abs(var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1317f + 1757f)))), Struct_3(var_3.a, var_3.a, max(~vec2<u32>(global0.b.c.x, var_3.a.c.x), vec2<u32>(_wgslsmith_div_u32(var_3.a.c.x, var_2.a.c.x), u_input.b))));
    let var_5 = Struct_1(global2.b.a, ~(-global0.b.b), vec2<u32>(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_4.c.a.c.x, global2.b.c.x, global0.c.x, 28543u), ~vec4<u32>(var_4.d.c.x, 27668u, 59696u, 101012u)), firstLeadingBit(global0.b.c.x)), var_3.a.c.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.d, var_0.x), var_3.a.b)), -41342i) >> (_wgslsmith_mult_u32(~(~var_4.d.c.x), global2.a.c.x | select(65729u, 34808u, false)) % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.a.e, _wgslsmith_f_op_f32(-global2.a.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.e)))) - -303f), _wgslsmith_mult_i32(global2.a.a.x, -1i), var_3.a.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.a.c.x, 0u), vec2<u32>(var_5.c.x, 0u)));
}

