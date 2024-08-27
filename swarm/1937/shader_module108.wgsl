struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(0i, -68691i, 12035i, -46860i, 0i, -19831i, -6902i, 0i, 36190i, -29572i, 16777i, 1i, 29437i, 28265i, i32(-2147483648), 2147483647i, i32(-2147483648), -11568i, 7570i, i32(-2147483648), 1i);

var<private> global1: array<Struct_1, 6>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(76610u, 1u), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 3326u, 4294967295u), vec3<u32>(39908u, 4294967295u, 1u)), _wgslsmith_dot_vec4_u32(reverseBits(reverseBits(vec4<u32>(43786u, 0u, 23604u, 1u))), select(vec4<u32>(66957u, 109651u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 48738u), vec4<bool>(true, false, false, true)) & vec4<u32>(4294967295u, 4294967295u, 22553u, 1u))), _wgslsmith_mod_u32(1u, 10690u), 0u);
    var var_1 = _wgslsmith_mod_vec3_u32(var_0.yxw >> (~((vec3<u32>(var_0.x, 4294967295u, 1u) & vec3<u32>(var_0.x, var_0.x, var_0.x)) & select(vec3<u32>(4294967295u, 1u, var_0.x), var_0.zxy, vec3<bool>(true, false, true))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(~(~var_0), abs(var_0)), abs(var_0.x ^ var_0.x), firstLeadingBit(27694u)));
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(var_0.x, 6u)]);
    global0 = array<i32, 21>();
    var var_3 = ~vec4<i32>(u_input.a, -var_2.a.d, 0i, firstTrailingBit(1i));
    return 1i;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = select(_wgslsmith_clamp_u32(_wgslsmith_div_u32(countOneBits(max(12000u, 119361u)), ~13961u), firstTrailingBit(35776u), ~_wgslsmith_add_u32(~4294967295u, ~79547u)), reverseBits(4294967295u), all(vec4<bool>(false, arg_0, select(true, any(vec2<bool>(arg_0, true)), select(false, true, arg_0)), arg_0)));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(~(~var_0), 1u)), 6u)];
    var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.a, vec3<i32>(2147483647i, var_1.d, -27087i)), -var_1.a, -firstLeadingBit(vec3<i32>(-36322i, u_input.a, 2147483647i) & var_1.a)), (var_1.b >> (vec2<u32>(14957u & var_0, 1u) % vec2<u32>(32u))) & select(var_1.b, ~vec2<i32>(0i, var_1.d), !var_1.e), var_1.c, func_3(), vec2<bool>(select(any(vec3<bool>(true, var_1.e.x, arg_0)) | true, select(true, false, false), var_1.e.x), false));
    let var_2 = Struct_3(Struct_1(abs(_wgslsmith_div_vec3_i32(var_1.a, vec3<i32>(2147483647i, 33046i, -1i)) << (vec3<u32>(53559u, 30964u, 41686u) % vec3<u32>(32u))), var_1.a.xz, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-420f)), _wgslsmith_f_op_f32(round(1080f)), true)), -28939i, !select(vec2<bool>(var_1.e.x, false), select(vec2<bool>(true, true), var_1.e, var_1.e), select(var_1.e, var_1.e, false))));
    var_1 = var_2.a;
    return vec4<bool>(true, true, true, false);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> i32 {
    global0 = array<i32, 21>();
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    var var_0 = func_2(false);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(-452f)), 1728f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(429f)))))), vec3<f32>(_wgslsmith_f_op_f32(-1487f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1993f + 321f) + -576f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1413f, _wgslsmith_f_op_f32(f32(-1f) * -260f)))), 1899f), vec3<bool>(all(var_0.xw) & var_0.x, !select(all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), var_0.x, true), var_0.x)));
    return i32(-1i) * -21636i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 6>();
    var var_0 = reverseBits(~2u & (~reverseBits(19895u) ^ _wgslsmith_clamp_u32(78434u << (0u % 32u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 12535u), vec3<u32>(4294967295u, 0u, 30716u)))));
    let var_1 = false;
    let var_2 = select(min(-_wgslsmith_add_vec4_i32(vec4<i32>(-15621i, -2147483647i, -15921i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(60754u, 21u)], u_input.b, 23169i, -6993i), vec4<i32>(0i, global0[_wgslsmith_index_u32(92111u, 21u)], global0[_wgslsmith_index_u32(90815u, 21u)], -255i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, global0[_wgslsmith_index_u32(3210u, 21u)], 2147483647i) << (vec4<u32>(1u, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(global0[_wgslsmith_index_u32(11908u, 21u)], u_input.a, global0[_wgslsmith_index_u32(12571u, 21u)], global0[_wgslsmith_index_u32(17860u, 21u)]))), vec4<i32>(global0[_wgslsmith_index_u32(34134u, 21u)], -(_wgslsmith_mod_i32(5293i, -1i) | global0[_wgslsmith_index_u32(~4294967295u, 21u)]), func_1(~(~vec4<i32>(u_input.b, 0i, global0[_wgslsmith_index_u32(1u, 21u)], 26783i)), _wgslsmith_div_vec4_i32(~vec4<i32>(-25698i, 0i, u_input.a, global0[_wgslsmith_index_u32(1u, 21u)]), vec4<i32>(global0[_wgslsmith_index_u32(82360u, 21u)], u_input.b, 25626i, 0i))), ~func_3()), !vec4<bool>(false, any(func_2(false).zzw), false, func_2(var_1).x));
    let var_3 = Struct_2(Struct_1(-firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(38654u, 21u)], 26809i, var_2.x) << (vec3<u32>(1u, 60938u, 4519u) % vec3<u32>(32u))), (vec2<i32>(u_input.a, 1i) >> (~vec2<u32>(1u, 14847u) % vec2<u32>(32u))) & vec2<i32>(abs(0i), _wgslsmith_div_i32(var_2.x, global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(804f, -309f)), ~_wgslsmith_clamp_i32(-var_2.x, _wgslsmith_add_i32(var_2.x, 41856i), -23937i), select(select(vec2<bool>(var_1, false), select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), true), !vec2<bool>(var_1, false)), !select(vec2<bool>(true, var_1), vec2<bool>(false, false), vec2<bool>(false, true)), select(var_1 || true, var_1 && var_1, true))), ~countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29976u, min(11130u, abs(6513u)), 4294967295u, 4294967295u), countOneBits(~vec4<u32>(1u, 1u, 1u, 1u))), 6u)], vec4<u32>(reverseBits(_wgslsmith_clamp_u32(countOneBits(19189u), ~4294967295u, 0u)), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 47873u, 0u, 0u), vec4<u32>(1u, 0u, 111773u, 4294967295u))), 0u, ~31072u));
    var_0 = 1u;
    var var_4 = true;
    var var_5 = var_3.a;
    global1 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(371f)), 716f, _wgslsmith_f_op_f32(-287f - -462f), var_5.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(658f, var_5.c, var_5.c, 922f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.c.c, 1345f, var_5.c, var_5.c)))))), var_3.b.ywx, firstTrailingBit(select(~vec3<i32>(3494i, var_5.b.x, 15034i), var_2.ywz, true & !var_1)));
}

