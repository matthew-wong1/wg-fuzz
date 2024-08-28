struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(4294967295u, vec4<f32>(-1000f, -946f, 2304f, 397f), 2147483647i, 208f), Struct_1(1u, vec4<f32>(-210f, 1868f, -663f, -1873f), i32(-2147483648), -1696f), Struct_1(5846u, vec4<f32>(-161f, 146f, -288f, -1008f), i32(-2147483648), -705f), Struct_1(4294967295u, vec4<f32>(-1419f, -417f, -318f, -144f), i32(-2147483648), -1420f), Struct_1(35687u, vec4<f32>(-361f, -264f, 216f, 993f), 1i, 1000f));

var<private> global1: vec3<u32> = vec3<u32>(98208u, 1547u, 71329u);

var<private> global2: Struct_2;

var<private> global3: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = true & all(vec3<bool>((arg_1.a.a < 41375u) & true, true, true));
    global2 = Struct_2(global0[_wgslsmith_index_u32(u_input.b, 5u)], _wgslsmith_f_op_f32(trunc(arg_0.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(12837u >> (global1.x % 32u), _wgslsmith_sub_u32(4294967295u, u_input.b), ~1u, ~global1.x), vec4<u32>(~arg_1.a.a, global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), global1.zz), arg_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(739f)))) + global2.a.b.x) - _wgslsmith_f_op_f32(round(-590f))), arg_1.e);
    global3 = all(vec4<bool>(false, true, false, all(vec4<bool>(true, true, true, true)) != true));
    let var_1 = global2.a;
    let var_2 = var_1.d;
    return u_input.c.xyy;
}

fn func_2() -> i32 {
    let var_0 = global2.a;
    var var_1 = global0[_wgslsmith_index_u32(0u, 5u)];
    var var_2 = countOneBits(-func_3(global2.a.b, Struct_2(Struct_1(global2.c, vec4<f32>(1157f, 1673f, -942f, var_1.d), 73465i, 837f), -1485f, ~var_0.a, -1218f, -vec2<i32>(var_1.c, global2.e.x))));
    var_1 = global0[_wgslsmith_index_u32(~(max(0u, abs(max(47379u, global1.x))) ^ ~(~firstLeadingBit(1u))), 5u)];
    var var_3 = global2.a;
    return -2147483647i;
}

fn func_1(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = vec3<i32>(-firstTrailingBit(~2147483647i) & _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, u_input.c), ~u_input.c), global2.e.x), func_2(), ~(-u_input.c.x) << (u_input.b % 32u));
    global2 = Struct_2(Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.d, _wgslsmith_f_op_f32(-global2.d), -647f, _wgslsmith_f_op_f32(exp2(global2.d))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.d, global2.a.b.x, global2.a.d, global2.d) - vec4<f32>(907f, -497f, global2.b, global2.d)), _wgslsmith_f_op_vec4_f32(-global2.a.b))), -2147483647i, global2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-263f)) - 841f)))), _wgslsmith_add_u32(global2.c, u_input.b), global2.d, _wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, u_input.c.x), abs(var_0.yy))), vec2<i32>(global2.e.x, 1i)));
    var_0 = u_input.c.wxy;
    global3 = 1966f != global2.d;
    global2 = Struct_2(global0[_wgslsmith_index_u32(global1.x, 5u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-468f, _wgslsmith_f_op_f32(-global2.d))), global1.x >> (8378u % 32u), 2712f, -u_input.c.xy);
    return global1.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, 4955u), func_1(vec4<bool>(false, true, false, true)))), ~select(global1.zz, vec2<u32>(global1.x, u_input.b), vec2<bool>(true, false))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b, 9391u), 27624u), global1.zz));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.x, global2.a.a), 5u)], _wgslsmith_f_op_f32(-2174f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2872f))) * _wgslsmith_f_op_f32(-391f * _wgslsmith_f_op_f32(-global2.a.b.x)))), global1.x, _wgslsmith_f_op_f32(-global2.a.d), vec2<i32>(-_wgslsmith_div_i32(global2.e.x, 1i), 0i));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(var_1.a.a, 5u)], global2.d, var_0.x, _wgslsmith_f_op_f32(abs(-999f)), abs(select(u_input.c.xz, _wgslsmith_clamp_vec2_i32(var_1.e ^ vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.zx, ~global2.e), all(vec4<bool>(true, false, false, true)))));
    var var_3 = global2.e.x;
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xyx, firstTrailingBit(u_input.c.yy), 12545u << (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(8269u, 38038u, global2.c, 56829u)), ~select(vec4<u32>(0u, global1.x, global1.x, u_input.b), vec4<u32>(u_input.b, 23315u, global2.c, var_0.x), true)) % 32u), _wgslsmith_dot_vec3_i32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1333f, 729f, 348f, global2.a.d) - vec4<f32>(var_1.b, var_2.d, var_1.b, -1000f))), Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 5u)], _wgslsmith_f_op_f32(global2.a.d - 964f), 43028u, _wgslsmith_f_op_f32(f32(-1f) * -711f), countOneBits(global2.e))), u_input.c.wyz));
}

