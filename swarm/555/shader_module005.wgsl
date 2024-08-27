struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
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

var<private> global0: u32 = 0u;

var<private> global1: Struct_3;

var<private> global2: array<u32, 15> = array<u32, 15>(1u, 4294967295u, 37877u, 24346u, 51018u, 1u, 28246u, 0u, 1u, 21264u, 41854u, 1u, 56794u, 53530u, 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<i32>) -> vec4<i32> {
    global2 = array<u32, 15>();
    var var_0 = _wgslsmith_mod_vec3_u32(global1.c.yxy, ~(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.d, 15u)], global2[_wgslsmith_index_u32(u_input.d, 15u)], global1.d.c), vec3<u32>(global1.c.x, 23930u, 0u)), ~vec3<u32>(global1.c.x, global2[_wgslsmith_index_u32(59646u, 15u)], 69487u)) << (vec3<u32>(~12468u, ~10169u, ~u_input.d) % vec3<u32>(32u))));
    let var_1 = global1.d;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -126f);
    var var_3 = Struct_2(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 21744u, global1.d.d.x), global1.c.yyw) >> (abs(global1.c.x) % 32u)), var_1.b, 4294967295u, var_0.zz);
    return ~(~vec4<i32>(-26287i, _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-41469i, arg_0.x, -1i, 19150i), vec4<i32>(-4104i, -1i, 49907i, arg_0.x)), u_input.c), ~53141i, u_input.a.x));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> u32 {
    var var_0 = any(!vec2<bool>(all(vec4<bool>(true, false, false, true)), false)) && !(any(vec4<bool>(arg_2.a, arg_2.a, false, arg_2.a)) && arg_2.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(709f, -492f, 959f, global1.d.b.b) - vec4<f32>(238f, global1.d.b.b, 707f, -278f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.b.b, global1.d.b.b, global1.d.b.b, 708f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, -179f, global1.b, -261f) + vec4<f32>(global1.d.b.b, -1220f, 451f, -1621f))), !(!vec4<bool>(true, false, arg_2.a, arg_2.a))))), vec4<f32>(1183f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(618f))))), _wgslsmith_f_op_f32(global1.d.b.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1877f + global1.d.b.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2603f - 755f), -194f))));
    return ~53646u;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec4_i32(-func_2(u_input.a), ~firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, -1261i, 1i), vec4<i32>(-100029i, u_input.c, u_input.a.x, 0i)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_2.b.b)) + arg_0)) + _wgslsmith_f_op_f32(abs(-1000f)));
    var var_2 = _wgslsmith_mult_u32(1u, 69584u);
    global1 = Struct_3(global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a, _wgslsmith_dot_vec2_u32(u_input.b, arg_2.d)), 15u)] >> (global2[_wgslsmith_index_u32(1u, 15u)] % 32u)), 15u)], 717f, ~_wgslsmith_mod_vec4_u32(countOneBits(global1.c) >> (_wgslsmith_add_vec4_u32(global1.c, global1.c) % vec4<u32>(32u)), ~global1.c), Struct_2(~func_3(-1i, u_input.a.x, Struct_4(false)) | arg_2.c, global1.d.b, _wgslsmith_mod_u32(~abs(4294967295u), 15418u), select(~(~global1.d.d), u_input.b, vec2<bool>(var_0.x == 12587i, global2[_wgslsmith_index_u32(0u, 15u)] != 111951u))));
    var var_3 = func_2(u_input.a);
    return vec4<u32>(global1.d.b.a, 31188u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, global1.a, u_input.b.x), global1.c) % 32u), ~_wgslsmith_mult_u32(abs(arg_2.d.x), 1u), ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(abs(u_input.d), abs(u_input.d), global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(reverseBits(global1.c.wyz) ^ global1.c.yxz, global1.c.xyy | abs(vec3<u32>(84774u, 64816u, global1.d.a))), _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_div_u32(u_input.b.x, 6017u)));
    global1 = Struct_3(global1.a, _wgslsmith_f_op_f32(step(1f, -1531f)), countOneBits(_wgslsmith_clamp_vec4_u32(func_1(-871f, global1.c.x >> (u_input.d % 32u), Struct_2(u_input.d, global1.d.b, u_input.d, u_input.b), vec3<f32>(952f, 1000f, 180f)), _wgslsmith_mult_vec4_u32(~global1.c, ~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)], u_input.d, 83326u)), select(_wgslsmith_div_vec4_u32(vec4<u32>(global1.c.x, 1u, 4294967295u, u_input.d), global1.c), max(global1.c, vec4<u32>(0u, 4294967295u, 36594u, u_input.d)), true))), global1.d);
    let var_0 = vec2<i32>(u_input.a.x, 14680i);
    var var_1 = Struct_2(4294967295u, global1.d.b, func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1179f, -863f) - _wgslsmith_div_f32(242f, -230f)))), _wgslsmith_mult_u32(~8028u, 0u), global1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1247f, global1.d.b.b, -512f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.d.b.b, -1000f, global1.b)))))).x, ~(~(~vec2<u32>(4294967295u, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(~global1.c.xz), vec2<u32>(abs(~global1.d.b.a), func_1(global1.b, 14492u, global1.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b, var_1.b.b, -848f))).x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, u_input.c) & 64955i, -func_2(u_input.a).x), countOneBits(59544i), _wgslsmith_mod_u32(~(~_wgslsmith_sub_u32(10351u, global1.a)), global1.a));
}

