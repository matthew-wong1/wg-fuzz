struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(0u, 0u, 38138u, 4294967295u, 0u, 0u, 28057u, 0u, 0u, 110151u, 3124u, 1u, 0u, 39805u, 15365u, 4294967295u, 51132u, 4294967295u, 16646u);

var<private> global1: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global2: Struct_3;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<i32> {
    global0 = array<u32, 19>();
    let var_0 = Struct_3(global2.a, select(global2.b, !(!(!vec4<bool>(false, false, global2.b.x, global2.b.x))), true), arg_1.a, all(select(!select(global2.b.xxw, vec3<bool>(global2.d, global2.b.x, global2.b.x), false), !vec3<bool>(true, true, global2.b.x), global2.b.yxw)), Struct_1(_wgslsmith_div_vec4_i32(~min(vec4<i32>(global2.e.e.x, 1727i, arg_1.a.a.x, 44312i), vec4<i32>(arg_1.a.e.x, arg_0.x, 0i, -1i)), max(vec4<i32>(0i, -12044i, arg_1.a.e.x, 35316i), arg_1.a.a)), 0u, ~_wgslsmith_mod_u32(1u, global0[_wgslsmith_index_u32(1u, 19u)] << (47042u % 32u)), vec4<u32>(137267u, _wgslsmith_sub_u32(0u, global2.c.c) ^ _wgslsmith_mod_u32(29822u, global1.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(arg_1.a.d, vec4<u32>(1u, arg_1.a.d.x, 0u, 3206u)), 1u), ~firstLeadingBit(global0[_wgslsmith_index_u32(12978u, 19u)])), countOneBits(vec2<i32>(_wgslsmith_mult_i32(arg_0.x, 1i), 1i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2974f, -1062f, 992f, 2799f)))) - vec4<f32>(_wgslsmith_f_op_f32(-1071f * -1848f), -260f, _wgslsmith_div_f32(1000f, 608f), _wgslsmith_f_op_f32(select(-652f, -1037f, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(967f, -944f, -1479f, 566f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2319f, 1000f, -412f, 1437f), vec4<f32>(-181f, -873f, -1335f, 166f)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -153f), -1471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -661f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(round(1000f)))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_1.x)))))), -381f, -420f)));
    let var_2 = _wgslsmith_f_op_f32(floor(var_1.x));
    return firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(abs(-23606i), -7467i, -global2.c.a.x, max(_wgslsmith_mod_i32(1i, u_input.a), 1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(arg_1.a.a, abs(vec4<i32>(arg_1.a.e.x, -5273i, 2147483647i, 25867i))), vec4<i32>(_wgslsmith_mult_i32(u_input.a, arg_1.a.a.x), var_0.e.a.x, -13685i, _wgslsmith_dot_vec4_i32(var_0.e.a, vec4<i32>(-2147483647i, arg_1.a.e.x, -1i, var_0.a))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global2.e);
    let var_1 = -var_0.a.e;
    var var_2 = Struct_2(Struct_1(abs(func_3(global2.e.a, Struct_2(Struct_1(global2.c.a, 3168u, global2.c.b, vec4<u32>(var_0.a.b, var_0.a.b, global0[_wgslsmith_index_u32(global1.x, 19u)], var_0.a.b), global2.c.a.yy))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(76539u, 1u, 108087u, 1u), global2.e.d, vec4<u32>(1u, 1u, 28842u, 29452u)) % vec4<u32>(32u))), ~var_0.a.b, firstTrailingBit(~(~global1.x)), vec4<u32>(~global2.e.c, firstLeadingBit(23610u), ~global0[_wgslsmith_index_u32(global1.x, 19u)], global0[_wgslsmith_index_u32(~global1.x, 19u)]) << (var_0.a.d % vec4<u32>(32u)), abs(-countOneBits(vec2<i32>(var_0.a.e.x, 10019i)))));
    global2 = Struct_3(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(-46641i, abs(var_2.a.e.x)), _wgslsmith_div_i32(-31662i, -11141i))), vec4<bool>(all(vec3<bool>(global2.d, global2.d && false, global2.d)), global2.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.a.d.wz, var_0.a.d.ww), var_0.a.b) > global0[_wgslsmith_index_u32(~min(249u, 0u), 19u)], !global2.b.x), var_2.a, false, Struct_1(-((var_0.a.a & vec4<i32>(global2.a, var_1.x, global2.e.a.x, var_1.x)) | global2.c.a), _wgslsmith_clamp_u32(~global2.c.c, reverseBits(global1.x & 22342u), global0[_wgslsmith_index_u32(global1.x, 19u)] << (0u % 32u)), 1u, vec4<u32>(0u & (var_2.a.d.x ^ 11409u), global2.e.d.x, 96279u, (var_0.a.b >> (var_0.a.d.x % 32u)) | ~global2.e.c), abs(var_1)));
    global2 = Struct_3(_wgslsmith_mod_i32(-1i, var_1.x), !global2.b, Struct_1(vec4<i32>(_wgslsmith_sub_i32(u_input.a, 14218i), ~var_1.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_2.a.a.x, 12060i, var_2.a.a.x)), var_2.a.a.xzz), _wgslsmith_div_i32(var_2.a.e.x, -2147483647i) >> (var_0.a.c % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 31434u, 40000u), select(vec3<u32>(4294967295u, global2.c.d.x, global0[_wgslsmith_index_u32(global2.c.c, 19u)]), vec3<u32>(var_2.a.c, 1u, 1u), vec3<bool>(true, global2.d, global2.d))), ~var_2.a.b, vec4<u32>(abs(53006u), abs(reverseBits(27451u)), 58996u, ~var_2.a.d.x), vec2<i32>(global2.e.e.x, ~1i)), !(true && global2.b.x), var_0.a);
    return Struct_1(-reverseBits(vec4<i32>(31170i, 2147483647i, -1i, 2147483647i)) | var_0.a.a, 4294967295u, 4294967295u, select(~(vec4<u32>(global0[_wgslsmith_index_u32(var_0.a.c, 19u)], global1.x, 0u, 23731u) ^ ~var_2.a.d), vec4<u32>(select(4294967295u, global2.e.d.x, false), ~global2.c.c, global1.x, 25603u) | (global2.c.d & var_2.a.d), select(vec4<bool>(all(vec4<bool>(global2.b.x, global2.d, global2.b.x, true)), true, true, false), vec4<bool>(any(vec4<bool>(true, global2.d, global2.d, global2.d)), global2.d | false, !global2.b.x, global2.b.x), any(select(global2.b, vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x), global2.b.x)))), func_3(var_2.a.a, Struct_2(var_2.a)).zz);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = !(-firstTrailingBit(-12047i) <= 6523i);
    let var_1 = ~global2.e.c >= min(~global2.e.d.x, global1.x);
    var var_2 = global2.b;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(countOneBits(abs(global2.c.d.wzx)));
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(u_input.a, 27852i ^ u_input.c.x) ^ _wgslsmith_add_i32(_wgslsmith_div_i32(global2.e.e.x | global2.e.e.x, global2.e.a.x), ~(~u_input.c.x)), ~(-15021i) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(global1.x, global0[_wgslsmith_index_u32(var_0.x, 19u)]), 0u), ~(~1u)) % 32u));
    let var_2 = ~abs(~(-min(u_input.b, var_1.x)));
    global2 = Struct_3((i32(-1i) * -10758i) | (countOneBits(firstTrailingBit(0i)) << (~(~8615u) % 32u)), !(!global2.b), Struct_1(vec4<i32>(35792i, countOneBits(u_input.b), _wgslsmith_sub_i32(global2.a << (var_0.x % 32u), ~(-41651i)), firstTrailingBit(_wgslsmith_add_i32(-36891i, -49300i))), 1u, 1u, global2.c.d, reverseBits(~(u_input.c.zz << (global2.e.d.wy % vec2<u32>(32u))))), true, func_1(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(19405u, 0u)), vec2<u32>(1u, global2.e.d.x) >> (var_0.yz % vec2<u32>(32u))), ~(~vec2<u32>(global2.e.c, global2.c.b))), firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, global2.c.a.x), 1i, var_1.x))));
    let var_3 = func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(19612u, 19u)], global1.x) | countOneBits(~global2.c.d.wx), firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(1u, 19u)], 14881u))), func_2().a.wwx);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, -(i32(-1i) * -23672i));
}

