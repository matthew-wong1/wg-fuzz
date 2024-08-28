struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(65930u, 4294967295u, 0u), vec3<u32>(0u, 49655u, 4294967295u), vec3<u32>(4294967295u, 39016u, 35391u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(18029u, 74060u, 11499u), vec3<u32>(0u, 33507u, 26131u), vec3<u32>(0u, 31103u, 58469u), vec3<u32>(1u, 4294967295u, 0u));

var<private> global1: Struct_1;

var<private> global2: array<u32, 32> = array<u32, 32>(12996u, 31671u, 0u, 87793u, 4294967295u, 136151u, 13085u, 69548u, 0u, 4294967295u, 50210u, 0u, 1761u, 1u, 4294967295u, 1u, 33140u, 5280u, 0u, 1u, 71245u, 1u, 55436u, 1u, 1u, 1u, 82981u, 1u, 20428u, 4294967295u, 1u, 28456u);

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<i32>(1i, -43590i, -4849i, 2147483647i), vec3<u32>(39827u, 5062u, 40988u), vec2<f32>(204f, -538f)), Struct_1(vec4<i32>(-31890i, 2147483647i, 1i, 2147483647i), vec3<u32>(31292u, 52220u, 0u), vec2<f32>(-214f, -531f)), Struct_1(vec4<i32>(1i, 44968i, -35296i, 2147483647i), vec3<u32>(14745u, 57930u, 1u), vec2<f32>(114f, -1000f)), Struct_1(vec4<i32>(2147483647i, 0i, 2147483647i, -18067i), vec3<u32>(30725u, 32502u, 64869u), vec2<f32>(-511f, -549f)), Struct_1(vec4<i32>(14426i, -7963i, -17670i, -1i), vec3<u32>(12020u, 0u, 4294967295u), vec2<f32>(-1000f, 227f)), Struct_1(vec4<i32>(-30348i, -1i, 26670i, -61484i), vec3<u32>(1u, 21120u, 1u), vec2<f32>(-129f, -1616f)), Struct_1(vec4<i32>(-37513i, 1i, -77354i, 64918i), vec3<u32>(0u, 23462u, 39818u), vec2<f32>(870f, -535f)), Struct_1(vec4<i32>(2147483647i, 40041i, 18941i, -1i), vec3<u32>(56752u, 1u, 36585u), vec2<f32>(-839f, 1488f)), Struct_1(vec4<i32>(-1i, -1i, 1i, 2147483647i), vec3<u32>(4046u, 1u, 1u), vec2<f32>(602f, -652f)), Struct_1(vec4<i32>(32534i, -1i, 72i, 70523i), vec3<u32>(4294967295u, 58760u, 1u), vec2<f32>(-222f, -1357f)), Struct_1(vec4<i32>(-11782i, 1i, -1i, -1i), vec3<u32>(1u, 34712u, 0u), vec2<f32>(-1371f, -494f)), Struct_1(vec4<i32>(-3868i, 705i, i32(-2147483648), i32(-2147483648)), vec3<u32>(0u, 1u, 45628u), vec2<f32>(-738f, -994f)), Struct_1(vec4<i32>(i32(-2147483648), -38584i, i32(-2147483648), 31464i), vec3<u32>(67379u, 51410u, 48037u), vec2<f32>(-1163f, -640f)), Struct_1(vec4<i32>(-13029i, 30447i, 2147483647i, 38917i), vec3<u32>(4294967295u, 45491u, 4294967295u), vec2<f32>(881f, -192f)));

var<private> global4: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global2 = array<u32, 32>();
    let var_0 = -406f;
    global2 = array<u32, 32>();
    global2 = array<u32, 32>();
    global0 = array<vec3<u32>, 8>();
    return Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(-17018i, -1i), global1.a.x, -611i, 1i), global1.a), ~global1.b, vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_0)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = vec4<bool>(true, true, arg_2.x, true);
    global2 = array<u32, 32>();
    let var_1 = _wgslsmith_div_vec2_u32(~global1.b.yz, select(vec2<u32>(36125u, arg_1.b.x), select(vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(35662u, 32u)]), arg_1.b.yx, !(global2[_wgslsmith_index_u32(28370u, 32u)] > global2[_wgslsmith_index_u32(u_input.a, 32u)])), vec2<bool>(true, all(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0, arg_2)))));
    let var_2 = func_2();
    let var_3 = var_1.x;
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> i32 {
    global4 = array<vec3<bool>, 8>();
    var var_0 = vec3<u32>(select(abs(75198u), firstLeadingBit(~0u), (arg_1 <= arg_1) & true), 4294967295u, countOneBits(arg_0.b.x));
    let var_1 = true;
    global1 = func_3(12918i, func_2(), select(!vec4<bool>(all(vec3<bool>(var_1, var_1, var_1)), false || var_1, var_1, var_1), vec4<bool>(arg_0.c.x <= _wgslsmith_f_op_f32(abs(-1000f)), any(!vec4<bool>(var_1, true, false, var_1)), true, var_1), !vec4<bool>(true, true, !var_1, arg_1 > arg_1)));
    global1 = global3[_wgslsmith_index_u32(~103587u >> (_wgslsmith_mod_u32(0u, 4294967295u ^ _wgslsmith_mult_u32(52460u, global1.b.x)) % 32u), 14u)];
    return ~35250i;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(step(-525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.x - 756f) * _wgslsmith_f_op_f32(f32(-1f) * -2413f)))), global1.c.x)));
    let var_1 = vec3<i32>(2147483647i, func_2().a.x, 26244i);
    let var_2 = vec3<u32>(global1.b.x, 0u, arg_3.b.x);
    global0 = array<vec3<u32>, 8>();
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.c.x, var_0.x, global1.c.x))) * vec3<f32>(108f, -556f, 892f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-101f, var_0.x, 228f), vec3<f32>(-1009f, arg_3.c.x, global1.c.x)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c.x, -906f, 2298f), vec3<f32>(global1.c.x, global1.c.x, var_0.x)))))), _wgslsmith_f_op_f32(380f - 401f));
    return Struct_2(vec3<f32>(-802f, _wgslsmith_f_op_f32(select(1220f, var_3.a.x, all(arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(510f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-348f)) - _wgslsmith_f_op_f32(sign(-1456f))))), arg_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(global1.a.x >> (41257u % 32u), global1.a.x);
    let var_1 = global1.a.x;
    global2 = array<u32, 32>();
    global3 = array<Struct_1, 14>();
    let var_2 = func_4(select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, 0i, 29304i), vec3<i32>(-59720i, global1.a.x, global1.a.x)), global1.a.x, _wgslsmith_div_i32(global1.a.x, global1.a.x)) | vec3<i32>(global1.a.x, 64886i, global1.a.x << (global1.b.x % 32u)), vec3<i32>(-func_1(global3[_wgslsmith_index_u32(8862u, 14u)], global1.a.x, -367f), 1i, global1.a.x), false), global3[_wgslsmith_index_u32(u_input.a, 14u)], vec2<bool>(any(vec2<bool>(true, true)), false || (_wgslsmith_f_op_f32(f32(-1f) * -1770f) <= global1.c.x)), global3[_wgslsmith_index_u32(global1.b.x, 14u)]);
    global3 = array<Struct_1, 14>();
    let var_3 = max(4294967295u, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.x, vec2<u32>(global1.b.x, _wgslsmith_dot_vec3_u32(global1.b, global1.b >> (vec3<u32>(27267u, var_3, 4294967295u) % vec3<u32>(32u))) & ~var_3), global1.a.x, ~(vec4<u32>(abs(global2[_wgslsmith_index_u32(var_3, 32u)]), ~u_input.a, firstLeadingBit(1u), 4294967295u) << ((vec4<u32>(1u, u_input.a, var_3, global1.b.x) << ((vec4<u32>(var_3, var_3, var_3, 29382u) << (vec4<u32>(48008u, global1.b.x, var_3, global1.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))), ~(~func_2().a.x));
}

