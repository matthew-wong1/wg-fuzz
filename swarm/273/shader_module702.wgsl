struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(1000f, 900f), vec2<f32>(-1279f, 377f), vec2<f32>(-1014f, -606f), vec2<f32>(899f, 2279f), vec2<f32>(-780f, -1363f), vec2<f32>(-160f, -1297f), vec2<f32>(833f, -278f), vec2<f32>(1000f, -724f), vec2<f32>(-482f, -644f), vec2<f32>(717f, 696f), vec2<f32>(-2447f, 2701f), vec2<f32>(295f, -380f), vec2<f32>(-667f, 678f), vec2<f32>(1305f, 1771f), vec2<f32>(606f, 463f), vec2<f32>(200f, -1834f), vec2<f32>(1708f, 772f), vec2<f32>(1338f, 863f), vec2<f32>(1159f, 495f), vec2<f32>(-1639f, -1293f), vec2<f32>(-227f, -1665f), vec2<f32>(451f, -1246f), vec2<f32>(-1371f, 613f), vec2<f32>(-224f, 553f), vec2<f32>(-198f, -1126f));

var<private> global2: vec4<i32> = vec4<i32>(0i, -1i, 1i, -1i);

var<private> global3: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec4<f32>(-704f, -602f, -1878f, -1498f)));

var<private> global4: i32 = 56i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2.b.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.b.x, -488f, arg_2.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(334f, arg_2.b.x, arg_2.b.x, 2354f), vec4<f32>(arg_2.b.x, arg_2.b.x, -1024f, arg_2.b.x), arg_1.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.b.x, arg_2.b.x, -612f, 165f))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2.b.x, arg_2.b.x)), arg_2.b.x), arg_2.b.x, _wgslsmith_f_op_f32(-1f), 712f)));
    let var_2 = arg_1.xzz;
    global0 = false || (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-740f))))) < -1981f);
    var var_3 = arg_2.a;
    return arg_2.b.x;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> vec2<u32> {
    global3 = array<Struct_2, 1>();
    var var_0 = ~countOneBits(u_input.d);
    global4 = firstTrailingBit(global2.x);
    global0 = !(~53027u != _wgslsmith_mult_u32(reverseBits(u_input.d), u_input.d));
    var_0 = _wgslsmith_add_u32(4294967295u << (~(~(~4294967295u)) % 32u), u_input.d);
    return max(~_wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(0u, u_input.d)), ~vec2<u32>(84228u, u_input.d)), ~(~vec2<u32>(u_input.d, 45057u) & ~(vec2<u32>(u_input.d, u_input.d) ^ vec2<u32>(0u, 4294967295u))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = vec4<u32>(~18940u, _wgslsmith_mult_u32(u_input.d, _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0, arg_0), 0u)), ~arg_0, _wgslsmith_mult_u32(1u, u_input.d | ~arg_0)) ^ ~(~select(vec4<u32>(6202u, u_input.d, u_input.d, 1u) ^ vec4<u32>(u_input.d, 243u, 4294967295u, 1522u), _wgslsmith_add_vec4_u32(vec4<u32>(5456u, 31501u, arg_0, 7567u), vec4<u32>(1u, arg_0, 30526u, u_input.d)), vec4<bool>(false, true, true, true)));
    let var_1 = vec4<u32>(arg_0, arg_0, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, ~21974u), _wgslsmith_add_u32(var_0.x, _wgslsmith_add_u32(18321u, 19219u))) << (abs(var_0.x) % 32u), ~arg_0);
    var var_2 = Struct_1(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(var_0.ywy, var_1.wzz), var_1.wzy, vec3<u32>(1u, var_0.x, 47549u))));
    var var_3 = -arg_1.zz;
    var_3 = _wgslsmith_mult_vec2_i32(min((global2.yx ^ u_input.c.zy) | u_input.c.xy, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.a), u_input.c.yy ^ vec2<i32>(arg_1.x, var_3.x)), -2126i)), global2.ww ^ global2.xz);
    return Struct_3(Struct_1(_wgslsmith_mod_vec3_u32(firstLeadingBit(var_1.yyz & var_2.a), ~(~vec3<u32>(15705u, u_input.d, u_input.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(1u, 25u)], vec2<f32>(-133f, -1000f), true)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(948f, 1755f)))))) * vec2<f32>(-908f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -711f))))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 1>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(293f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(634f * -1000f), _wgslsmith_f_op_f32(1377f - -507f))), -162f));
    var var_1 = u_input.c.zwz;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-1616f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -579f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(4294967295u, vec4<bool>(true, true, true, false), Struct_3(Struct_1(vec3<u32>(43526u, u_input.d, 48942u)), vec2<f32>(var_0.x, var_0.x), vec4<u32>(u_input.d, u_input.d, 0u, 12441u))))))), func_3(_wgslsmith_dot_vec2_u32(func_2(firstLeadingBit(u_input.a), _wgslsmith_add_vec3_i32(global2.wzy, vec3<i32>(u_input.a, -2147483647i, u_input.c.x))), vec2<u32>(u_input.d << (u_input.d % 32u), ~u_input.d)), _wgslsmith_div_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.c.zww, vec3<i32>(u_input.a, -12361i, var_1.x))), global2.zzw)), func_3(u_input.d, vec3<i32>(-4992i, -(~(-1418i)), global2.x)).a);
    let var_3 = var_2.b.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global2.x, var_1.x) & ~vec3<i32>(-25159i, global2.x, -34959i), vec3<i32>(_wgslsmith_mod_i32(0i, -2147483647i), global2.x, _wgslsmith_dot_vec2_i32(u_input.c.zy, u_input.c.xz))) | global2.x, _wgslsmith_f_op_f32(func_1(u_input.d, !vec4<bool>(all(vec3<bool>(false, true, true)), true, true, select(true, false, false)), func_3(var_2.c.a.x, ~u_input.c.yzy | u_input.c.zww))), abs(vec4<u32>(~u_input.d, ~u_input.d, 112842u, var_2.b.c.x)));
}

