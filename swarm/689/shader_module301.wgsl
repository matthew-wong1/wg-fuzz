struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-1427f, -112f, 653f, -1017f, 195f, 130f, 1169f, -558f, 1015f, -1024f, 216f, -994f, -1164f, 110f, 1401f, -527f, -957f, -525f, -1433f, 1022f, -445f, 107f, 640f, -510f, 723f, -1151f);

var<private> global1: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(1014f, -782f, -1153f), vec3<f32>(975f, 999f, 572f), vec3<f32>(-339f, -139f, 1382f), vec3<f32>(110f, 217f, 1208f));

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(28907u, 0u, 1u), vec3<u32>(9048u, 7195u, 17018u), vec3<u32>(94785u, 4294967295u, 15792u), vec3<u32>(28192u, 14677u, 1u), vec3<u32>(1u, 2789u, 1896u), vec3<u32>(4294967295u, 108095u, 1u), vec3<u32>(0u, 4294967295u, 12186u), vec3<u32>(9029u, 1u, 68000u), vec3<u32>(1u, 50314u, 4294967295u), vec3<u32>(3569u, 57864u, 38526u), vec3<u32>(28610u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 53724u), vec3<u32>(23392u, 1u, 0u), vec3<u32>(101322u, 1u, 1638u), vec3<u32>(0u, 1u, 1u), vec3<u32>(69404u, 4294967295u, 1u));

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global4: array<Struct_2, 15>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<bool> {
    global4 = array<Struct_2, 15>();
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(0i, ~(_wgslsmith_sub_i32(u_input.a, 2147483647i) & _wgslsmith_mod_i32(-30577i, -5830i)), -u_input.a), max(-_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.a, u_input.a, 0i)), vec3<i32>(6817i, 1501i, -56187i)), ~firstLeadingBit(vec3<i32>(45706i, u_input.a, 0i)) >> (~(vec3<u32>(2493u, 4294967295u, 41553u) & global2[_wgslsmith_index_u32(1u, 16u)]) % vec3<u32>(32u))));
    global0 = array<f32, 26>();
    var var_1 = 526f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-789f))) * global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 41519u), 1u, 4294967295u), 26u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(0u), 26u)])));
    let var_2 = Struct_1(global3.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 4u)], -u_input.a, global3.wxy, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.x >> (0u % 32u), u_input.a, _wgslsmith_mod_i32(var_0.x, -2147483647i)), -(~vec4<i32>(u_input.a, 4483i, u_input.a, 16298i))), ~vec4<i32>(-u_input.a, var_0.x & u_input.a, min(0i, var_0.x), -u_input.a), abs(vec4<i32>(var_0.x, _wgslsmith_div_i32(var_0.x, u_input.a), -2147483647i, 1i))));
    return select(!(!(!select(vec4<bool>(false, var_2.d.x, global3.x, true), vec4<bool>(global3.x, global3.x, false, true), true))), !(!(!(!vec4<bool>(var_2.a, true, var_2.a, global3.x)))), all(vec3<bool>(!any(global3.ywz), !var_2.d.x, global3.x)));
}

fn func_2() -> u32 {
    var var_0 = 1u;
    let var_1 = global4[_wgslsmith_index_u32(4294967295u, 15u)];
    global3 = select(!(!select(vec4<bool>(var_1.b.x, false, var_1.b.x, true), !vec4<bool>(false, true, global3.x, global3.x), true)), !(!select(vec4<bool>(true, var_1.b.x, global3.x, var_1.b.x), func_3(), var_1.b.x)), func_3());
    return ~(~_wgslsmith_mult_u32(0u, abs(11082u)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1430f, arg_0.d, -1048f, global0[_wgslsmith_index_u32(4861u, 26u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(721f, -522f, 1000f, -899f)), true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(37724u, 26u)], global0[_wgslsmith_index_u32(4895u, 26u)], -888f, 734f)))))));
    var var_1 = firstLeadingBit(1u);
    var var_2 = vec4<i32>(-firstLeadingBit(-(u_input.a & 83062i)), -11384i, -1i, -1i);
    let var_3 = global3.yy;
    var var_4 = !global3.zx;
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a - vec3<f32>(-1155f, 899f, -744f)) - _wgslsmith_f_op_vec3_f32(var_0.wxz + vec3<f32>(-801f, arg_0.d, global0[_wgslsmith_index_u32(4294967295u, 26u)])))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(210f)), 464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(104f * -762f)))), arg_0.b, vec3<i32>(~29520i, 1i, _wgslsmith_add_i32(i32(-1i) * -1i, -2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(func_2(), min(0u, 0u)))), 26u)]);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = ~(~global2[_wgslsmith_index_u32(arg_3, 16u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1582f, arg_1.d, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(~var_0.x), 26u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(arg_3, arg_3), 26u)]) * 1f))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, abs(69841u)), 26u)]))) + _wgslsmith_f_op_f32(-func_1(Struct_2(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(arg_3, 4u)], vec3<f32>(1260f, -699f, -511f)), select(vec2<bool>(true, true), vec2<bool>(true, true), global3.x), -vec3<i32>(-32555i, 47185i, u_input.a), 1870f)).a.x));
    let var_3 = vec4<bool>(!arg_1.b.x & select(!func_1(Struct_2(vec3<f32>(arg_1.d, 402f, -1860f), vec2<bool>(global3.x, false), arg_0.yww, 201f)).b.x, true, true), arg_1.b.x, false, any(arg_1.b));
    global0 = array<f32, 26>();
    return Struct_1(global3.x, _wgslsmith_f_op_vec3_f32(var_1.zww - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a), _wgslsmith_f_op_vec3_f32(-arg_1.a)))), -reverseBits(-arg_0.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -arg_0.wx, -_wgslsmith_clamp_vec2_i32(vec2<i32>(41687i, 1i), arg_0.zx, vec2<i32>(-19067i, -9027i))), func_3().zxy, ~vec4<i32>(-2147483647i, -8851i, _wgslsmith_dot_vec2_i32(arg_1.c.yz, arg_0.xy) ^ ~(-1i), _wgslsmith_add_i32(1i, -5569i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(-vec4<i32>(u_input.a & u_input.a, -1i, u_input.a, u_input.a)), func_1(global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(4294967295u, 1u)) | ~1u, 15u)]), global3.x, abs(select(select(0u, 1u, false), ~46921u, select(all(vec4<bool>(true, global3.x, global3.x, global3.x)), false, true))));
    global1 = array<vec3<f32>, 4>();
    let var_1 = ~firstLeadingBit(vec3<u32>(reverseBits(~95386u), ~4294967295u, 1u));
    var var_2 = global4[_wgslsmith_index_u32(~1u, 15u)];
    global2 = array<vec3<u32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(~(-10128i), -var_0.c)), func_1(global4[_wgslsmith_index_u32(func_2(), 15u)]).c.x, 1i), _wgslsmith_mult_vec4_u32(select((vec4<u32>(0u, var_1.x, 0u, var_1.x) << (vec4<u32>(4294967295u, var_1.x, 0u, 1u) % vec4<u32>(32u))) & (vec4<u32>(0u, var_1.x, var_1.x, 1u) & vec4<u32>(1u, var_1.x, 15646u, 1u)), countOneBits(select(vec4<u32>(1u, 4294967295u, var_1.x, 34622u), vec4<u32>(14891u, var_1.x, var_1.x, 56608u), false)), true), vec4<u32>(var_1.x, _wgslsmith_mod_u32(var_1.x, firstLeadingBit(var_1.x)), abs(var_1.x) & 37801u, firstTrailingBit(~1u))), abs(_wgslsmith_sub_i32(var_0.c, ~(u_input.a & u_input.a))));
}

