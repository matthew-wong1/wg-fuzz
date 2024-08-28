struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 5> = array<i32, 5>(13015i, -18302i, 0i, 2147483647i, 13968i);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(-14486i, 25992i, 13794i, -25270i)), vec2<f32>(1312f, -375f), Struct_1(vec4<i32>(-1i, -64521i, -23820i, -29840i)), vec4<i32>(43741i, i32(-2147483648), 42523i, 26425i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global1 = array<i32, 5>();
    var var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(~66473u, max(1u, 70753u), ~30781u), vec3<u32>(_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14349u, 2768u), vec3<u32>(0u, 92771u, 49499u)) | _wgslsmith_mod_u32(15803u, 109309u))) ^ vec3<u32>(~4294967295u, ~min(select(9062u, 10204u, false), countOneBits(4294967295u)), 78774u);
    var var_1 = select(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true), vec3<bool>(var_0.x >= 33891u, true, var_0.x >= 1u), select(false, true, any(vec4<bool>(false, true, false, false)))), false), vec3<bool>(any(vec4<bool>(true, -1911f > global2.b.x, true, true)), any(vec2<bool>(true, true)), false), !(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false)) | any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
    global0 = vec2<i32>(~40343i, countOneBits(-global0.x));
    let var_2 = true || var_1.x;
    return _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(823f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(438f)), -1156f, select(false, false, var_1.x))))));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -983f), _wgslsmith_f_op_f32(func_3()), global2.b.x);
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    var var_1 = false;
    global1 = array<i32, 5>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.x)), -614f));
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_4 {
    global2 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(global2.c.a >> (vec4<u32>(arg_1, arg_1, 0u, 0u) % vec4<u32>(32u)), -u_input.a), u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.b)) * vec2<f32>(-1000f, -1448f)), Struct_1(-vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 5u)] | global1[_wgslsmith_index_u32(arg_1, 5u)], i32(-1i) * -2147483647i, ~u_input.a.x, firstTrailingBit(global2.a.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(max(_wgslsmith_div_i32(-26i, global0.x), _wgslsmith_mult_i32(-62105i, 1i)), ~(global2.c.a.x >> (1u % 32u)), global2.d.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a.x), vec3<i32>(17930i, 7130i, 16189i))), vec4<i32>(_wgslsmith_mult_i32(global0.x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_1, 5u)], 1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global2.a.a.ywz, vec3<i32>(-1i, -1i, 2147483647i)), firstTrailingBit(vec3<i32>(-47131i, 32918i, global1[_wgslsmith_index_u32(1u, 5u)]))), max(_wgslsmith_sub_i32(global0.x, global1[_wgslsmith_index_u32(arg_1, 5u)]), global2.d.x), global2.d.x)));
    let var_0 = Struct_3(_wgslsmith_mult_i32(-20i << (_wgslsmith_mod_u32(1u, ~0u) % 32u), ~(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global0.x, u_input.a.x, 0i, global2.a.a.x)) << (arg_1 % 32u))));
    global0 = global2.a.a.wz;
    global1 = array<i32, 5>();
    let var_1 = max(vec2<i32>(-7582i, global1[_wgslsmith_index_u32(arg_1, 5u)] << (arg_1 % 32u)), -vec2<i32>(-global2.d.x, abs(33245i)));
    return Struct_4(vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 5u)], i32(-1i) * -var_1.x, _wgslsmith_clamp_i32(countOneBits(global2.c.a.x), global0.x, countOneBits(global0.x)), abs(abs(-27217i))));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(22796u, 4294967295u, 52802u, 1u))) - global2.b.x) + -2078f) * -1375f), 49527u);
    global0 = select(-vec2<i32>(global2.d.x, _wgslsmith_sub_i32(global0.x, global2.c.a.x)), vec2<i32>(firstTrailingBit(0i), ~36284i), true);
    global0 = var_0.a.ww;
    global2 = Struct_2(global2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global2.b, vec2<f32>(757f, global2.b.x)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.b.x, -1504f), _wgslsmith_f_op_vec2_f32(vec2<f32>(611f, global2.b.x) * global2.b), vec2<bool>(true, true))))), Struct_1(-u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, ~u_input.a.x, u_input.a.x, i32(-1i) * -2147483647i), global2.a.a) >> (min(vec4<u32>(65390u, ~23771u, 4294967295u, countOneBits(0u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 35139u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(38365u, 60218u, 0u, 57621u))) % vec4<u32>(32u)));
    global2 = Struct_2(global2.c, global2.b, global2.a, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.zw, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -15305i), vec2<i32>(33493i, global1[_wgslsmith_index_u32(4294967295u, 5u)]))), _wgslsmith_sub_i32(abs(global0.x), var_0.a.x)), global1[_wgslsmith_index_u32(33484u | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 20482u, 31406u), vec3<u32>(54051u, 19768u, 1u)), 5u)] << (firstLeadingBit(countOneBits(4294967295u)) % 32u), ~_wgslsmith_sub_i32(-2079i, -1i), ~_wgslsmith_add_i32(u_input.a.x, 1i)));
    return vec3<bool>((all(vec4<bool>(false, true, false, false)) & (all(vec3<bool>(true, false, false)) | any(vec3<bool>(false, true, true)))) != (firstTrailingBit(-2147483647i) <= ~_wgslsmith_div_i32(var_0.a.x, -3495i)), !any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))) & any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true && all(func_1());
    var var_1 = select(select(!vec4<bool>(true, all(vec4<bool>(var_0, var_0, true, true)), true & var_0, true), !vec4<bool>(any(vec2<bool>(var_0, var_0)), !var_0, 1i == global0.x, var_0), all(func_1())), vec4<bool>(!((global2.b.x >= 690f) & true), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true, !(true == (var_0 && false))), select(!(!select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(false, false, var_0, false))), vec4<bool>(-global0.x == -58505i, select(2147483647i <= u_input.a.x, !var_0, any(vec4<bool>(false, var_0, var_0, true))), func_1().x, true), _wgslsmith_mod_i32(26322i, global0.x) != u_input.a.x));
    global2 = Struct_2(Struct_1(firstTrailingBit(vec4<i32>(global0.x, u_input.a.x, -15331i, 1610i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-238f, -479f))), vec2<f32>(global2.b.x, global2.b.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.b))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1812f), _wgslsmith_f_op_f32(exp2(global2.b.x))), var_1.wx))), global2.c, ~(~(-vec4<i32>(global0.x, -2147483647i, -1i, global1[_wgslsmith_index_u32(18166u, 5u)]))));
    var var_2 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-36461i, _wgslsmith_sub_i32(u_input.a.x, -1i) | (u_input.a.x >> (0u % 32u)))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(global2.d.x, 2147483647i), -(vec2<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 5u)]) | vec2<i32>(0i, global0.x))));
    var var_3 = !(!vec4<bool>(2147483647i != ~global2.a.a.x, !var_1.x | (global2.b.x != 2158f), ~global0.x >= (i32(-1i) * -1i), !all(var_1.xx)));
    let var_4 = ~4294967295u;
    var var_5 = Struct_1(global2.a.a);
    var_1 = vec4<bool>(!(!(!var_1.x)), true, var_1.x, !var_1.x);
    let var_6 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(5399i, abs(select(~(-vec3<i32>(global1[_wgslsmith_index_u32(var_4, 5u)], 0i, 1i)), vec3<i32>(13178i, 29819i, -1i), false)));
}

