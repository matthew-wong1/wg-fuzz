struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))) - -560f);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(arg_2.c.a.zy, arg_2.b.a.zz), select(vec2<u32>(arg_1, u_input.a.x), u_input.a, arg_0.a.xx), false), ~max(vec2<u32>(arg_0.c.a.x, u_input.a.x), u_input.a)) | 0u, ~(~u_input.a.x));
    var var_1 = Struct_2(arg_0.a, true, arg_2.c, Struct_1(select(arg_0.c.a, arg_2.b.a, !(!vec3<bool>(arg_2.a, false, arg_2.a))), countOneBits(select(_wgslsmith_mult_vec3_i32(arg_0.c.d, arg_0.c.d), -u_input.b.zxw, false)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1892f))), _wgslsmith_f_op_f32(func_2(-627f)), arg_0.d.c.x), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, 36626i), reverseBits(arg_2.b.b), vec3<i32>(32528i, -2147483647i, arg_0.c.d.x) ^ u_input.b.xwx))));
    return !(!(!vec4<bool>(arg_2.a, false, select(arg_0.a.x, arg_0.a.x, false), true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_4(false, Struct_1(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1, 0u, 1u), vec4<u32>(0u, u_input.a.x, 29383u, arg_1)), max(1u, 30561u), _wgslsmith_mult_u32(u_input.a.x, arg_1)), vec3<i32>(26303i, _wgslsmith_mod_i32(0i, -2147483647i), u_input.b.x), _wgslsmith_div_vec3_f32(arg_0.xzx, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.wxw, vec3<f32>(838f, 2651f, arg_0.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(434f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, -1015f, 465f), true)))), u_input.b.ywz), Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_1, 2670u)), u_input.a), 0u, arg_1), u_input.b.yyw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1015f, arg_0.x, _wgslsmith_f_op_f32(min(-150f, arg_0.x)))), vec3<i32>(u_input.c, i32(-1i) * -5493i, 33814i)));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(49443u, 1u, ~_wgslsmith_mod_u32(arg_1, arg_1)), var_0.b.a));
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(min(_wgslsmith_div_i32(~1i, countOneBits(551i)), abs(-28406i)), ~reverseBits(countOneBits(-7011i)), 21259i, -2147483647i), u_input.b, ~vec4<i32>(_wgslsmith_div_i32(var_0.c.b.x, ~(-2147483647i)), ~(i32(-1i) * -8880i), countOneBits(var_0.b.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 33202i, u_input.b.x), u_input.b), vec4<i32>(0i, 0i, 56271i, -2147483647i))));
    let var_3 = Struct_3(var_0.b.b.x, Struct_2(!(!vec3<bool>(var_0.a, var_0.a, true)), true, var_0.b, var_0.b));
    var var_4 = Struct_3(_wgslsmith_sub_i32(25336i, 1i), var_3.b);
    return Struct_3(-2147483647i, var_4.b);
}

fn func_1() -> Struct_3 {
    let var_0 = u_input.b.zxx;
    var var_1 = u_input.a.x;
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(366f, -1366f, 1307f, 678f), vec4<f32>(302f, -605f, 1579f, -1710f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, -599f, 293f, -1309f))), vec4<f32>(-616f, _wgslsmith_f_op_f32(f32(-1f) * -1370f), -1124f, _wgslsmith_f_op_f32(func_2(-1233f))), select(vec4<bool>(true, true, true, false), func_3(Struct_2(vec3<bool>(true, false, false), true, Struct_1(vec3<u32>(1u, u_input.a.x, 0u), vec3<i32>(2147483647i, -868i, -1i), vec3<f32>(-1011f, -1000f, -750f), vec3<i32>(u_input.c, 40558i, -1i)), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<i32>(27023i, var_0.x, u_input.c), vec3<f32>(-1370f, -1843f, 531f), u_input.b.zxz)), 19646u, Struct_4(true, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.b.yyx, vec3<f32>(786f, 1000f, 693f), vec3<i32>(2147483647i, var_0.x, -1i)), Struct_1(vec3<u32>(1u, 5572u, u_input.a.x), vec3<i32>(u_input.c, var_0.x, -1i), vec3<f32>(-1097f, 221f, -1172f), var_0))), true)))), 1u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-549f * _wgslsmith_f_op_f32(step(var_2.b.d.c.x, 303f))) * -691f));
    var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_2.b.c.c.x)) - _wgslsmith_div_f32(var_2.b.c.c.x, -1126f))))), _wgslsmith_f_op_f32(f32(-1f) * -133f), var_2.b.b));
    return Struct_3(u_input.b.x << (~(~(~1u)) % 32u), var_2.b);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(arg_1.a, arg_0.b.c, Struct_1(vec3<u32>(1u, ~(4294967295u | arg_1.b.a.x), ~_wgslsmith_mod_u32(95927u, u_input.a.x)), ~u_input.b.zzx, vec3<f32>(arg_1.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-448f))), arg_0.b.d.c.x), select(arg_1.b.d, vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 1i, arg_0.a), vec3<i32>(u_input.b.x, -10404i, -20050i)), u_input.c), arg_0.b.d.d.x >= arg_0.a)));
    var var_1 = func_1();
    var_1 = arg_0;
    var var_2 = select(false, !arg_0.b.a.x, false);
    let var_3 = Struct_2(!var_1.b.a, var_1.b.a.x, func_1().b.d, var_1.b.c);
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~u_input.c, func_5(func_1(), Struct_4(true, func_1().b.d, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1884f, 126f, -229f, 927f) - vec4<f32>(471f, -1815f, 1493f, -834f)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)).b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~(~vec2<i32>(var_0.a, u_input.b.x)), ~(-vec2<i32>(var_0.a, var_0.a)), var_0.b.b), vec3<i32>(-1i) * -(-u_input.b.wwz >> (firstLeadingBit(var_0.b.d.a) % vec3<u32>(32u))), ~firstLeadingBit(vec4<u32>(~var_0.b.c.a.x, ~8356u, countOneBits(4294967295u), 4294967295u)));
}

