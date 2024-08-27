struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(819f, -1131f, 1767f), vec3<f32>(-177f, -578f, -698f), vec3<f32>(1601f, -207f, 872f), vec3<f32>(-332f, -2217f, 733f), vec3<f32>(-1350f, 1965f, -455f), vec3<f32>(724f, 1064f, -477f), vec3<f32>(149f, -1910f, -754f), vec3<f32>(669f, 305f, 324f), vec3<f32>(-239f, -1000f, 1000f), vec3<f32>(1000f, -1909f, 367f), vec3<f32>(1000f, -133f, -603f), vec3<f32>(938f, 339f, -309f), vec3<f32>(-1050f, 1648f, 1732f), vec3<f32>(-734f, -1064f, -1197f), vec3<f32>(-567f, 746f, 978f), vec3<f32>(-449f, -446f, 1222f), vec3<f32>(1780f, 325f, 580f));

var<private> global1: Struct_2 = Struct_2(vec3<i32>(-27763i, i32(-2147483648), 27564i), 0u, Struct_1(vec3<u32>(17633u, 0u, 4294967295u), vec4<f32>(-837f, 396f, 1000f, 1190f)), Struct_1(vec3<u32>(27893u, 72469u, 4294967295u), vec4<f32>(-986f, 1000f, 1000f, 276f)));

var<private> global2: array<Struct_2, 13>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<i32> {
    let var_0 = !vec4<bool>(!(!all(vec3<bool>(false, true, true))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true)), select(!all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), !(-1470f >= global1.d.b.x)), false);
    let var_1 = global1.a.yy;
    let var_2 = global2[_wgslsmith_index_u32(max(arg_0.c.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(global1.d.a.xx, select(vec2<u32>(u_input.d, 1u), vec2<u32>(arg_0.b, 46875u), true)), arg_0.d.a.zz | abs(arg_0.c.a.zz)), ~vec2<u32>(~58667u, firstLeadingBit(4294967295u)))), 13u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(round(global1.d.b.wz));
    var var_4 = u_input.b.x;
    return countOneBits(vec4<i32>(_wgslsmith_mult_i32(u_input.c, reverseBits(-2147483647i)), var_1.x, arg_0.a.x, (-13801i ^ var_2.a.x) >> (~4294967295u % 32u))) << ((firstTrailingBit(vec4<u32>(select(27832u, var_2.d.a.x, true), ~2910u, ~arg_0.d.a.x, u_input.d ^ u_input.b.x)) << (_wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(14059u, var_2.b, 4294967295u, 41195u), vec4<u32>(global1.d.a.x, 4294967295u, 26241u, 1u))), _wgslsmith_add_vec4_u32(select(vec4<u32>(1u, 62396u, global1.d.a.x, var_2.d.a.x), vec4<u32>(global1.c.a.x, arg_0.c.a.x, 14100u, var_2.c.a.x), vec4<bool>(var_0.x, false, true, var_0.x)), ~vec4<u32>(global1.c.a.x, var_2.b, 43370u, u_input.b.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    global2 = array<Struct_2, 13>();
    let var_0 = arg_0.d;
    let var_1 = global1.d;
    global0 = array<vec3<f32>, 17>();
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.b.x))))));
    return countOneBits(vec3<i32>(~firstLeadingBit(u_input.c << (global1.c.a.x % 32u)), _wgslsmith_clamp_i32(-2147483647i >> (~var_1.a.x % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.a, 0i), func_3(Struct_2(global1.a, var_0.a.x, Struct_1(vec3<u32>(31713u, 45547u, var_0.a.x), vec4<f32>(var_1.b.x, 171f, -2587f, 394f)), Struct_1(global1.d.a, vec4<f32>(arg_0.c.b.x, 316f, -2802f, 200f))), global1.d.b.x)), _wgslsmith_dot_vec3_i32(select(arg_0.a, arg_0.a, true), arg_0.a)), arg_0.a.x));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global0 = array<vec3<f32>, 17>();
    var var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(max(func_2(global2[_wgslsmith_index_u32(~global1.d.a.x, 13u)]), ~global1.a), global1.a, _wgslsmith_div_vec3_i32(vec3<i32>(-8242i & global1.a.x, i32(-1i) * -1i, global1.a.x), vec3<i32>(-1i, u_input.c, -global1.a.x))), 2583u, Struct_1(firstTrailingBit(global1.d.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1235f, global1.d.b.x, global1.d.b.x, 1256f)) - _wgslsmith_f_op_vec4_f32(-global1.d.b)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -373f), _wgslsmith_f_op_f32(max(1000f, -791f)), _wgslsmith_f_op_f32(f32(-1f) * -991f), global1.d.b.x))), Struct_1(vec3<u32>(~global1.b, arg_0.x, global1.d.a.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -729f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-505f))), -208f, _wgslsmith_f_op_f32(-662f - _wgslsmith_f_op_f32(ceil(-1394f))))));
    global1 = global2[_wgslsmith_index_u32(arg_0.x, 13u)];
    let var_1 = Struct_2(vec3<i32>(~u_input.a, _wgslsmith_div_i32(max(u_input.c, var_0.a.x | -2147483647i), ~u_input.c), ~_wgslsmith_mod_i32(1i, 2147483647i)), select(_wgslsmith_mod_u32(arg_0.x, abs(4294967295u)) ^ _wgslsmith_mod_u32(arg_0.x, ~27037u), _wgslsmith_dot_vec2_u32(vec2<u32>(max(u_input.b.x, global1.d.a.x), arg_0.x), global1.d.a.xz), all(vec4<bool>(true, true, true, true))), Struct_1(var_0.c.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1552f * -568f), _wgslsmith_f_op_f32(trunc(global1.c.b.x)), global1.c.b.x, global1.c.b.x) + vec4<f32>(_wgslsmith_div_f32(var_0.d.b.x, -101f), _wgslsmith_f_op_f32(f32(-1f) * -540f), var_0.c.b.x, -970f))), var_0.d);
    let var_2 = Struct_2(vec3<i32>(var_0.a.x, -(1i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -27689i, -55898i), vec3<i32>(1i, var_1.a.x, 5733i))), _wgslsmith_sub_i32(var_0.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.a.x, var_1.a.x), 1i))), global1.b, var_1.c, Struct_1(var_1.d.a, _wgslsmith_f_op_vec4_f32(-var_1.d.b)));
    return Struct_2(vec3<i32>(u_input.a, ~select(~(-1i), _wgslsmith_mult_i32(-1i, -7842i), true), -(-1i & var_0.a.x)), 12707u, Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(var_1.c.a, var_0.d.a) & min(vec3<u32>(arg_0.x, 14577u, 51684u), global1.d.a), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.a.x, var_0.b, u_input.d, 17067u), vec4<u32>(0u, global1.c.a.x, var_0.b, 0u)), 4294967295u, ~20301u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.b.x, 115f, global1.c.b.x, var_2.c.b.x) - vec4<f32>(-765f, 339f, -431f, -903f))))), Struct_1(global1.d.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(635f, 448f, 567f, var_1.d.b.x), _wgslsmith_f_op_vec4_f32(floor(var_0.d.b)), true)) - _wgslsmith_f_op_vec4_f32(-global1.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.c.b.xxy))));
    global1 = func_1(global1.c.a);
    global1 = global2[_wgslsmith_index_u32(~reverseBits(func_1(abs(global1.d.a >> (vec3<u32>(4294967295u, u_input.b.x, global1.c.a.x) % vec3<u32>(32u)))).c.a.x), 13u)];
    var var_1 = vec4<bool>(true, true, true, true);
    let var_2 = global1.d;
    let var_3 = vec2<i32>(u_input.c, ~u_input.c);
    let var_4 = select(~vec3<i32>(abs(var_3.x & global1.a.x), global1.a.x, -countOneBits(var_3.x)), firstLeadingBit(global1.a), var_1.wzx);
    var var_5 = select(-_wgslsmith_mult_vec3_i32(~var_4, global1.a), ~var_4 & global1.a, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(4294967295u, ~30001u), 4294967295u, firstLeadingBit(~u_input.b.x << ((var_2.a.x << (0u % 32u)) % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.ww)), 1u);
}

