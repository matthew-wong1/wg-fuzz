struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2;

var<private> global2: vec3<u32> = vec3<u32>(82570u, 0u, 89336u);

var<private> global3: array<Struct_3, 15>;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = arg_2.c.x;
    var var_1 = arg_1.c.x;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(698f + 125f)));
    let var_2 = 15749u;
    global3 = array<Struct_3, 15>();
    return vec3<u32>(abs(~min(56372u, 36803u)), min(u_input.b.x, ~global2.x) >> (0u % 32u), 24115u) | u_input.b;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = Struct_4(global1.b, i32(-1i) * -39119i, vec3<i32>(-select(47506i >> (u_input.b.x % 32u), -2147483647i, -2147483647i == global0.x), firstLeadingBit(arg_0.x), arg_0.x), Struct_1(_wgslsmith_clamp_u32(global2.x, global2.x, u_input.b.x) >> (~_wgslsmith_add_u32(global1.e, 4294967295u) % 32u)));
    let var_1 = ~0u;
    var var_2 = ~(~u_input.b ^ vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 55190u, 19713u), vec4<u32>(global1.d.a, 4294967295u, 34888u, global1.c.a)), u_input.b.x), ~4294967295u, 26512u));
    let var_3 = Struct_1(~u_input.b.x);
    var var_4 = all(!vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), all(vec4<bool>(true, true, true, true))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(1u | _wgslsmith_div_u32(var_1, 11480u), 4294967295u, 26769u), select(func_3(_wgslsmith_div_vec3_u32(~u_input.b, ~u_input.b), Struct_3(select(arg_0.zx, arg_0.zx, vec2<bool>(false, false)), vec4<i32>(34381i, var_0.b, var_0.c.x, arg_0.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(165f, -1324f), vec2<f32>(1105f, 675f))), Struct_1(var_2.x), vec4<bool>(true, true, true, true)), Struct_4(Struct_1(var_3.a), ~1i, -vec3<i32>(37497i, 2394i, -30949i), var_3)), select(vec3<u32>(var_3.a, 46148u, ~57u), max(~u_input.b, reverseBits(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u))), vec3<bool>(false, false, true)), false));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: bool) -> Struct_5 {
    global0 = vec4<i32>(1i, _wgslsmith_add_i32(u_input.a, _wgslsmith_mult_i32(abs(31545i), _wgslsmith_mult_i32(-48249i, global0.x))) ^ firstTrailingBit(_wgslsmith_mod_i32(~(-1i), ~0i)), u_input.a, u_input.a);
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(233f, 1062f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1705f, _wgslsmith_f_op_f32(sign(710f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-507f * -1195f) * _wgslsmith_div_f32(-1513f, -353f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1157f)) + -1762f))));
    return Struct_5(Struct_1(16406u));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = func_4(vec3<bool>(true, true, true), ~_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(arg_0, global1.e), ~50668u, 40027u), (u_input.b.x < func_2(max(arg_2.wxz, global0.zzw))) == select(all(vec2<bool>(true, true)), global1.c.a > 8632u, false));
    let var_1 = Struct_4(Struct_1(reverseBits(u_input.b.x)), -arg_2.x, vec3<i32>((u_input.a << (firstLeadingBit(12192u) % 32u)) >> (reverseBits(~62607u) % 32u), -2370i, ~arg_2.x), var_0.a);
    global3 = array<Struct_3, 15>();
    global3 = array<Struct_3, 15>();
    global3 = array<Struct_3, 15>();
    return func_4(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_mult_u32(~(~abs(23337u)), var_1.a.a), _wgslsmith_f_op_f32(trunc(arg_1.x)) <= _wgslsmith_f_op_f32(-arg_1.x)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(~(~(u_input.b.x << (17842u % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-243f, -125f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-136f, 1006f)))), select(-vec4<i32>(u_input.a, -15767i, -1i, global0.x) & _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, 47385i, 0i), vec4<i32>(global0.x, 4974i, -41577i, global0.x)), vec4<i32>(firstLeadingBit(global0.x), u_input.a, reverseBits(3571i), u_input.a >> (43650u % 32u)), vec4<bool>(true, true, true, true))), func_1(func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 0u, false).a.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(374f, 1126f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1190f, 1442f), vec2<f32>(629f, 232f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1018f, -633f) - vec2<f32>(591f, -1300f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1344f, -1354f) * vec2<f32>(609f, -112f)))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, false), vec2<bool>(false, true)))), -firstTrailingBit(-vec4<i32>(u_input.a, global0.x, global0.x, u_input.a))), global1.a, func_4(vec3<bool>(false, false, true), _wgslsmith_div_u32(~55450u, ~abs(47547u)), true).a, _wgslsmith_clamp_u32(firstLeadingBit(u_input.b.x), func_3(vec3<u32>(1u, 4294967295u, global2.x) ^ ~u_input.b, global3[_wgslsmith_index_u32(u_input.b.x, 15u)], Struct_4(global1.d, u_input.a, global0.xyx, global1.c)).x, max(_wgslsmith_div_u32(1u | global1.c.a, _wgslsmith_add_u32(0u, 0u)), ~21117u)));
    global0 = ~(~firstLeadingBit(vec4<i32>(u_input.a, global0.x, global0.x, global0.x))) ^ vec4<i32>(select(-14842i, -(global0.x | -1i), true), ~(~(-7702i)), ~global0.x, ~u_input.a);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2984f + -1000f));
    global4 = _wgslsmith_f_op_f32(abs(433f));
    let var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-378f, _wgslsmith_f_op_f32(707f + -2077f), u_input.b.x <= 1u)) * _wgslsmith_f_op_f32(min(-1182f, 1f)))))));
    var_0 = var_2;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1047f, 1411f, -213f, 1210f))), vec4<f32>(var_2, -944f, -270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-196f)) - var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(select(~vec4<u32>(global2.x, global2.x, u_input.b.x, 4294967295u), vec4<u32>(global1.d.a, 47597u, 34078u, global2.x), vec4<bool>(true, true, true, true)))), vec3<i32>(-(~u_input.a | 2147483647i), -u_input.a, _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(global0.x, global0.x, global0.x, -2147483647i)), vec4<i32>(1354i, global0.x, -11947i, global0.x))), 4294967295u);
}

