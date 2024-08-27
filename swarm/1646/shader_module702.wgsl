struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec3<u32>(16399u, 18140u, 1236u), Struct_2(Struct_1(i32(-2147483648), true, 2147483647i), vec4<i32>(-65031i, i32(-2147483648), 25812i, 32917i)), -604f, vec2<f32>(-1004f, -1408f)), Struct_3(vec3<u32>(22782u, 1u, 4294967295u), Struct_2(Struct_1(0i, true, 23976i), vec4<i32>(23028i, -49364i, i32(-2147483648), -1i)), 350f, vec2<f32>(-294f, -1000f)), Struct_3(vec3<u32>(1u, 24676u, 76190u), Struct_2(Struct_1(1i, false, -16148i), vec4<i32>(-1i, 35811i, 28571i, 2147483647i)), -1478f, vec2<f32>(455f, -1304f)), Struct_3(vec3<u32>(0u, 1u, 21786u), Struct_2(Struct_1(-21968i, false, -12306i), vec4<i32>(i32(-2147483648), -25068i, -6214i, 1i)), 1065f, vec2<f32>(-1246f, -2377f)), Struct_3(vec3<u32>(56697u, 4294967295u, 35637u), Struct_2(Struct_1(2147483647i, false, -2959i), vec4<i32>(45170i, 1i, -1i, -1023i)), -126f, vec2<f32>(-1711f, -303f)), Struct_3(vec3<u32>(1u, 1u, 1u), Struct_2(Struct_1(2147483647i, false, 17309i), vec4<i32>(1i, -1i, 22752i, 46597i)), -764f, vec2<f32>(799f, -365f)), Struct_3(vec3<u32>(4294967295u, 52226u, 39809u), Struct_2(Struct_1(-11681i, true, 2147483647i), vec4<i32>(33717i, 43962i, 2147483647i, i32(-2147483648))), 362f, vec2<f32>(686f, 324f)), Struct_3(vec3<u32>(0u, 0u, 8003u), Struct_2(Struct_1(6885i, true, -7499i), vec4<i32>(37698i, 1963i, 1i, -37490i)), -1004f, vec2<f32>(1389f, -869f)), Struct_3(vec3<u32>(5585u, 44694u, 43904u), Struct_2(Struct_1(1i, true, -1i), vec4<i32>(1i, 0i, 0i, i32(-2147483648))), 759f, vec2<f32>(370f, -2024f)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 0u), Struct_2(Struct_1(13727i, true, 22674i), vec4<i32>(0i, -10468i, i32(-2147483648), 38104i)), -1775f, vec2<f32>(-1138f, 1692f)), Struct_3(vec3<u32>(1u, 0u, 4294967295u), Struct_2(Struct_1(-9108i, false, 59095i), vec4<i32>(11115i, -10726i, 7160i, 2626i)), 144f, vec2<f32>(-953f, 366f)), Struct_3(vec3<u32>(0u, 0u, 6927u), Struct_2(Struct_1(2147483647i, true, 2147483647i), vec4<i32>(1i, -1i, 18059i, 1i)), -1298f, vec2<f32>(284f, -274f)), Struct_3(vec3<u32>(27475u, 4294967295u, 0u), Struct_2(Struct_1(-21263i, false, 0i), vec4<i32>(i32(-2147483648), -38681i, i32(-2147483648), 2147483647i)), 271f, vec2<f32>(-928f, -1302f)), Struct_3(vec3<u32>(26503u, 0u, 43450u), Struct_2(Struct_1(-1i, true, 1i), vec4<i32>(0i, 0i, -1i, -35418i)), 1000f, vec2<f32>(1025f, -812f)), Struct_3(vec3<u32>(0u, 0u, 26412u), Struct_2(Struct_1(67680i, true, i32(-2147483648)), vec4<i32>(0i, 1i, 3131i, 5427i)), -1331f, vec2<f32>(-1385f, -1174f)), Struct_3(vec3<u32>(0u, 520u, 4294967295u), Struct_2(Struct_1(0i, false, 0i), vec4<i32>(16642i, -51623i, 1i, 61992i)), -620f, vec2<f32>(1295f, 326f)), Struct_3(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_2(Struct_1(-1i, false, -1i), vec4<i32>(73817i, -44565i, -43777i, -1i)), 3843f, vec2<f32>(594f, -2027f)), Struct_3(vec3<u32>(1u, 0u, 4294967295u), Struct_2(Struct_1(0i, false, -1i), vec4<i32>(25323i, i32(-2147483648), 57028i, 54841i)), -122f, vec2<f32>(-248f, -274f)));

var<private> global2: array<f32, 20>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> vec2<bool> {
    global1 = array<Struct_3, 18>();
    return vec2<bool>(true, true);
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = ~(~vec3<u32>(1u, ~reverseBits(arg_1), 5075u));
    var var_1 = (_wgslsmith_mult_i32(arg_2.a.c << (var_0.x % 32u), arg_2.b.x) & 1i) | 28698i;
    var var_2 = select(!select(!select(vec3<bool>(false, arg_2.a.b, arg_2.a.b), vec3<bool>(arg_2.a.b, arg_2.a.b, arg_2.a.b), false), !select(vec3<bool>(arg_2.a.b, arg_2.a.b, true), vec3<bool>(true, true, arg_2.a.b), false), ~(-1i) <= select(arg_2.b.x, u_input.a, false)), select(vec3<bool>(false, arg_2.a.b, all(vec3<bool>(arg_2.a.b, false, arg_2.a.b))), !(!vec3<bool>(false, arg_2.a.b, arg_2.a.b)), (any(vec3<bool>(true, arg_2.a.b, true)) | true) || true), (~arg_2.b.x != -_wgslsmith_sub_i32(19662i, 3745i)) || false);
    var_2 = !vec3<bool>(!var_2.x, global2[_wgslsmith_index_u32(1u, 20u)] <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), true);
    global1 = array<Struct_3, 18>();
    return -208f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = ~reverseBits(arg_1.x);
    var var_1 = Struct_3(arg_0.wzw, global0[_wgslsmith_index_u32((1u & (arg_0.x | _wgslsmith_add_u32(arg_0.x, arg_0.x))) ^ ~(~arg_0.x), 28u)], _wgslsmith_f_op_f32(max(-2991f, _wgslsmith_div_f32(-306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(53659u, 20u)] * -766f))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(arg_0.x, 20u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(91931u, 20u)], 517f) * vec2<f32>(709f, global2[_wgslsmith_index_u32(382u, 20u)]))), _wgslsmith_dot_vec4_u32(arg_0, arg_0) ^ 7502u, Struct_2(Struct_1(arg_1.x, false, 2147483647i), -vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(544f - -1171f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 20u)] + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 20u)]))))));
    global2 = array<f32, 20>();
    var_0 = ~(-arg_1.x);
    let var_2 = var_1.b.b.x;
    return Struct_4(var_1.b, var_1.b.b.xyy, arg_0.wx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(1i, ~_wgslsmith_mult_i32(8643i, 3181i));
    let var_1 = func_1();
    global1 = array<Struct_3, 18>();
    var var_2 = func_2(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_div_vec2_i32(vec2<i32>(var_0, -9947i), vec2<i32>(var_0, 0i) << (vec2<u32>(43081u, 70348u) % vec2<u32>(32u))) ^ vec2<i32>(~(-u_input.a), var_0));
    var_2 = Struct_4(Struct_2(func_2(~(vec4<u32>(59525u, 1974u, 15171u, 0u) & vec4<u32>(var_2.c.x, 1u, 74295u, 30730u)), reverseBits(vec2<i32>(var_2.a.b.x, 42183i))).a.a, _wgslsmith_mult_vec4_i32(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.c.x, 4294967295u, 68203u, 0u), vec4<u32>(var_2.c.x, 0u, var_2.c.x, 3314u)), vec2<i32>(var_2.b.x, 14475i) & var_2.b.zy).a.b, -vec4<i32>(u_input.a, var_2.b.x, u_input.a, -24374i))), var_2.a.b.ywz, vec2<u32>(_wgslsmith_add_u32(~firstLeadingBit(var_2.c.x), var_2.c.x), var_2.c.x));
    var var_3 = ~select(abs(countOneBits(vec3<u32>(4294967295u, var_2.c.x, 58987u) << (vec3<u32>(76535u, var_2.c.x, var_2.c.x) % vec3<u32>(32u)))), vec3<u32>(0u, var_2.c.x, var_2.c.x), select(select(select(vec3<bool>(false, false, var_2.a.a.b), vec3<bool>(true, false, true), vec3<bool>(var_1.x, var_1.x, var_1.x)), select(vec3<bool>(var_1.x, var_2.a.a.b, true), vec3<bool>(false, true, var_2.a.a.b), vec3<bool>(var_2.a.a.b, var_2.a.a.b, var_1.x)), !vec3<bool>(true, var_1.x, false)), select(vec3<bool>(var_2.a.a.b, false, true), select(vec3<bool>(var_1.x, var_2.a.a.b, var_1.x), vec3<bool>(var_2.a.a.b, false, false), vec3<bool>(true, var_1.x, var_2.a.a.b)), select(vec3<bool>(true, var_2.a.a.b, var_2.a.a.b), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, false, var_1.x))), !(!vec3<bool>(var_1.x, var_2.a.a.b, var_1.x))));
    let var_4 = Struct_1((((u_input.a & -4342i) | abs(u_input.a)) & _wgslsmith_mult_i32(-2147483647i, ~var_0)) | firstLeadingBit(2147483647i), var_2.a.a.b, _wgslsmith_clamp_i32(i32(-1i) * -min(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(var_2.b, select(firstLeadingBit(var_2.a.b.yxw), ~var_2.a.b.xxz, 0u <= var_3.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(33086i, var_0, -2147483647i, u_input.a) >> (vec4<u32>(var_2.c.x, 4294967295u, 94512u, var_2.c.x) % vec4<u32>(32u)), vec4<i32>(var_0, 2147483647i, -21742i, var_2.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c & var_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(21571u, 20u)], -572f, -827f, -622f) + vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], 118f, global2[_wgslsmith_index_u32(var_2.c.x, 20u)])), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(var_2.c.x, 20u)], global2[_wgslsmith_index_u32(var_2.c.x, 20u)], 830f, global2[_wgslsmith_index_u32(19225u, 20u)]))), vec4<bool>(var_2.a.a.b, false, true, true))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f)), global2[_wgslsmith_index_u32(var_2.c.x, 20u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-187f)), _wgslsmith_f_op_f32(step(273f, -576f))), -1000f)), max(39054u, min(61345u, 80771u)), var_3.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -678f))), -347f, 1174f));
}

