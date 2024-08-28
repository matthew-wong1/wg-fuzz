struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(-48i, Struct_1(vec4<u32>(39093u, 1u, 78127u, 17090u), 1005f, 466f, false, vec3<i32>(-702i, -31210i, 4735i)), true, true), Struct_3(-12399i, Struct_1(vec4<u32>(1u, 4294967295u, 121370u, 13684u), -940f, -229f, true, vec3<i32>(-4729i, i32(-2147483648), 8997i)), true, true), Struct_3(10793i, Struct_1(vec4<u32>(4294967295u, 0u, 39349u, 1u), 935f, -839f, true, vec3<i32>(3079i, i32(-2147483648), 1i)), false, false), Struct_3(2147483647i, Struct_1(vec4<u32>(4294967295u, 24708u, 0u, 28751u), -1846f, 1108f, true, vec3<i32>(-2693i, 0i, i32(-2147483648))), true, true), Struct_3(2147483647i, Struct_1(vec4<u32>(53932u, 4294967295u, 36141u, 0u), -1546f, -144f, false, vec3<i32>(2147483647i, 1i, 16245i)), false, false), Struct_3(5833i, Struct_1(vec4<u32>(1u, 15715u, 67776u, 4294967295u), 1153f, -858f, true, vec3<i32>(1i, 1i, -16792i)), true, false));

var<private> global1: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    global1 = array<vec3<bool>, 19>();
    global1 = array<vec3<bool>, 19>();
    global0 = array<Struct_3, 6>();
    var var_0 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.a < -43243i, true, u_input.d > 1i), !(24514u < u_input.b)));
    let var_1 = Struct_4(vec2<i32>(u_input.a, ~u_input.a));
    return true;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    let var_0 = min(_wgslsmith_mod_u32(~abs(~11522u), arg_0), 4294967295u);
    let var_1 = ~_wgslsmith_add_i32(u_input.a, u_input.a);
    let var_2 = select(select(!vec4<bool>(true, 5344i >= var_1, true, true), !vec4<bool>(true, any(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, true)), true), vec4<bool>(select(func_3(vec3<u32>(var_0, 21561u, u_input.b)), u_input.b > 0u, true), all(vec4<bool>(true, true, true, true)), true, u_input.a < _wgslsmith_mod_i32(u_input.a, u_input.d))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false)), true);
    global0 = array<Struct_3, 6>();
    let var_3 = var_2.wy;
    return !var_2.yxz;
}

fn func_1() -> u32 {
    global0 = array<Struct_3, 6>();
    var var_0 = Struct_4(-vec2<i32>(_wgslsmith_mod_i32(1i, u_input.a), 0i));
    var var_1 = vec4<bool>(any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), all(global1[_wgslsmith_index_u32(u_input.c, 19u)])), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(true, u_input.c == 21166u, true, all(vec3<bool>(false, false, false))))), !any(func_2(~22675u)), func_3(vec3<u32>(_wgslsmith_add_u32(~10060u, reverseBits(u_input.c)), _wgslsmith_add_u32(36290u, u_input.b & 0u), _wgslsmith_mod_u32(countOneBits(u_input.c), ~5030u))), true);
    var_0 = Struct_4(var_0.a ^ -var_0.a);
    var_1 = !vec4<bool>(any(!var_1.yyy), func_2(~min(0u, 1u)).x, !(!func_2(19836u).x), true);
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_div_vec2_i32(firstLeadingBit(firstLeadingBit(-vec2<i32>(1i, u_input.d))), (firstTrailingBit(vec2<i32>(-2147483647i, u_input.d)) | firstLeadingBit(vec2<i32>(u_input.d, u_input.a))) >> (abs(_wgslsmith_mult_vec2_u32(vec2<u32>(38508u, u_input.b), vec2<u32>(u_input.b, u_input.c))) % vec2<u32>(32u))), vec2<i32>(u_input.a, ~u_input.d));
    let var_1 = firstTrailingBit(-vec4<i32>((-1i >> (u_input.b % 32u)) >> (_wgslsmith_mod_u32(u_input.c, 1u) % 32u), var_0.x, var_0.x, ~_wgslsmith_mult_i32(u_input.d, 23936i)));
    var_0 = -(~var_1.xy);
    var var_2 = Struct_2(i32(-1i) * -5505i, Struct_1(~vec4<u32>(_wgslsmith_mult_u32(38047u, u_input.c), _wgslsmith_div_u32(18381u, 24167u), ~28228u, _wgslsmith_clamp_u32(92329u, u_input.b, 4294967295u)), -1154f, -328f, any(vec4<bool>(true, true, true, true)), _wgslsmith_add_vec3_i32(var_1.xzw, _wgslsmith_sub_vec3_i32(-vec3<i32>(var_1.x, -2147483647i, var_0.x), vec3<i32>(0i, var_0.x, 1i)))), Struct_1(vec4<u32>(reverseBits(_wgslsmith_mult_u32(u_input.c, 4294967295u)), firstLeadingBit(~u_input.c), ~48520u | func_1(), _wgslsmith_mod_u32(~u_input.c, ~u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1369f, -1000f), _wgslsmith_f_op_f32(max(1000f, 373f)), false))), _wgslsmith_div_f32(-121f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(-591f, 1350f)))), all(vec2<bool>(true, func_2(u_input.c).x)), var_1.zxz), Struct_1(_wgslsmith_add_vec4_u32(~(~vec4<u32>(55254u, 1u, u_input.b, 1u)), vec4<u32>(~u_input.c, ~u_input.c, ~0u, _wgslsmith_add_u32(u_input.c, u_input.c))), _wgslsmith_div_f32(237f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(425f)), _wgslsmith_f_op_f32(step(-1127f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) + _wgslsmith_f_op_f32(sign(364f)))), true, countOneBits(vec3<i32>(firstTrailingBit(-1i), ~var_1.x, ~var_0.x))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 9816i, 44520i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, -25437i, var_1.x, u_input.d), vec4<i32>(var_0.x, 0i, 58197i, 2147483647i)), ~(-vec4<i32>(var_1.x, u_input.d, -1i, var_0.x))), -33131i, u_input.d >> (1u % 32u)));
    var var_3 = -select(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_2.d.e.x, u_input.a, var_1.x), var_1), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -25200i, -156i), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, 39198i, var_2.c.e.x), vec3<i32>(var_0.x, var_2.a, var_0.x)))), -var_1.ww, select(select(vec2<bool>(true, true), func_2(5419u).yx, select(vec2<bool>(false, false), vec2<bool>(false, var_2.b.d), var_2.d.d)), vec2<bool>(-2147483647i > u_input.a, any(vec4<bool>(true, var_2.d.d, false, true))), ~var_0.x != -6850i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.b - -159f) - -217f))), 34485u, var_2.c.a.wz, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.d.c))), -699f, _wgslsmith_f_op_f32(var_2.c.b * var_2.c.b), _wgslsmith_f_op_f32(var_2.c.c - var_2.c.b)));
}

