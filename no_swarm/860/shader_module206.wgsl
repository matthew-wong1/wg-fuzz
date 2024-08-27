struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(1u, 1u, 1u, 0u, 9593u, 52151u, 4294967295u, 23386u, 68489u, 4294967295u, 1u, 19971u, 19491u, 1u, 0u, 24650u, 4294967295u, 14006u, 94219u);

var<private> global1: bool;

var<private> global2: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(0u), Struct_3(23340u), Struct_3(4294967295u), Struct_3(4294967295u), Struct_3(1u), Struct_3(0u), Struct_3(105176u), Struct_3(4294967295u), Struct_3(1u), Struct_3(18557u), Struct_3(99292u), Struct_3(4294967295u), Struct_3(15585u), Struct_3(0u), Struct_3(4294967295u), Struct_3(0u), Struct_3(19340u), Struct_3(1u), Struct_3(100559u), Struct_3(0u), Struct_3(51503u), Struct_3(0u), Struct_3(0u));

var<private> global3: f32 = -446f;

var<private> global4: array<Struct_4, 32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> vec4<bool> {
    global1 = !(!(_wgslsmith_div_f32(arg_1, -1000f) <= _wgslsmith_div_f32(301f, arg_1)) || all(vec3<bool>(true, false, true)));
    global0 = array<u32, 19>();
    global4 = array<Struct_4, 32>();
    var var_0 = _wgslsmith_mod_vec3_u32(reverseBits(~(~u_input.b)), max(~(u_input.b << (_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17781u, 19u)], 19u)], u_input.b.x)) % vec3<u32>(32u))), ~vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], ~u_input.b.x, reverseBits(22110u))));
    global3 = -2757f;
    return !vec4<bool>(arg_1 != -884f, !all(vec4<bool>(true, true, true, true)), true, max(_wgslsmith_div_i32(u_input.d, -2600i), 32593i) > 1i);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: i32) -> i32 {
    global3 = -517f;
    var var_0 = Struct_4(u_input.b);
    let var_1 = reverseBits(-83804i);
    var var_2 = Struct_2(u_input.e);
    global2 = array<Struct_3, 23>();
    return ~var_1;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, u_input.e.x), u_input.a), -60608i) != u_input.e.x;
    global4 = array<Struct_4, 32>();
    let var_1 = vec4<i32>(2147483647i, ~max(-u_input.a, _wgslsmith_div_i32(u_input.e.x, u_input.d)), 36103i, func_4(select(vec4<bool>(false, false, true, false), func_3(Struct_2(vec3<i32>(u_input.e.x, 1i, -21975i)), 1562f, -7329i), vec4<bool>(true, true, true, true)), true, u_input.e.x)) << (vec4<u32>(~32482u, ~firstTrailingBit(reverseBits(u_input.b.x)), arg_0.x, 1u) % vec4<u32>(32u));
    var_0 = true;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1224f + 582f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1636f)), _wgslsmith_f_op_f32(f32(-1f) * -1375f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - vec4<f32>(356f, -524f, 1f, -188f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1729f), -3014f, _wgslsmith_f_op_f32(select(-196f, -625f, false)), 1f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-621f, 967f, -1394f, -477f)), vec4<f32>(-1725f, 2147f, -310f, 517f)))));
    return _wgslsmith_f_op_f32(min(465f, _wgslsmith_f_op_f32(-var_2.x)));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = u_input.b;
    return Struct_2(_wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(min(u_input.e, vec3<i32>(u_input.e.x, u_input.d, u_input.d)), -u_input.e), _wgslsmith_div_vec3_i32(reverseBits(u_input.e), _wgslsmith_add_vec3_i32(-u_input.e, u_input.e))));
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = arg_0.zz;
    let var_1 = func_5(vec4<f32>(-787f, 756f, _wgslsmith_f_op_f32(f32(-1f) * -987f), _wgslsmith_f_op_f32(func_2(~u_input.b))), !func_3(Struct_2(vec3<i32>(u_input.a, 0i, -1i)), -108f, -1i).x, Struct_1(arg_0.yz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1479f, -1666f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-986f, 754f)) * _wgslsmith_div_f32(-1466f, 1000f))), !(!(!vec4<bool>(true, false, false, arg_0.x))), select(vec4<bool>(var_0.x, false == arg_0.x, false, arg_0.x), vec4<bool>(true, !var_0.x, true, arg_0.x), select(arg_0.x, all(vec4<bool>(var_0.x, arg_0.x, var_0.x, true)), true))));
    var var_2 = Struct_3(~(~abs(4294967295u)) & ~(~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)));
    let var_3 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1004f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1599f * 517f))))), vec4<bool>(any(vec4<bool>(true, true, !var_0.x, false)), false, var_0.x, all(arg_0.yz)), vec4<bool>(true, arg_0.x, var_0.x, true));
    let var_4 = _wgslsmith_f_op_f32(round(var_3.b));
    return vec2<bool>(var_0.x, any(select(!vec4<bool>(false, true, var_3.a.x, true), !vec4<bool>(true, true, var_3.d.x, var_3.c.x), !(!var_3.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(select(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.c, 0u, 64828u)), countOneBits(u_input.b.x), select(false, false, true)) <= 33226u, any(vec3<bool>(false, false, true)) | !any(vec3<bool>(false, true, true)), !select(false, true, true)));
    global1 = true;
    var var_1 = 1i;
    var var_2 = 0i;
    var_2 = 28856i;
    let x = u_input.a;
    s_output = StorageBuffer(-(-95378i >> (((u_input.b.x | 4294967295u) << (0u % 32u)) % 32u)), 2147483647i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1272f, -428f, 569f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(940f, 1152f, -1639f))))), select(~(~vec4<i32>(26942i, u_input.a, u_input.d, u_input.a)) >> (abs(min(vec4<u32>(0u, u_input.c, 4680u, global0[_wgslsmith_index_u32(1u, 19u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33720u, 19u)], 19u)], 19u)], 22890u, u_input.b.x))) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.d, u_input.d, 1i, 0i) << (firstLeadingBit(vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)])) % vec4<u32>(32u))), func_3(Struct_2(func_5(vec4<f32>(-139f, -921f, 553f, -711f), var_0.x, Struct_1(vec2<bool>(true, var_0.x), -162f, vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x))).a), 1226f, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, u_input.d, u_input.a), vec4<i32>(u_input.e.x, 39836i, 14205i, u_input.a)), 48487i, var_0.x & var_0.x))));
}

