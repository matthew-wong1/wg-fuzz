struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: array<i32, 19>;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<i32>(23659i, -1i, 8257i, -9537i), Struct_1(vec4<i32>(2147483647i, -34907i, 44166i, 10074i), 657f, 1u, vec2<bool>(false, false)), false, Struct_1(vec4<i32>(i32(-2147483648), 972i, -5808i, 21548i), 258f, 1u, vec2<bool>(false, true))), Struct_2(vec4<i32>(2147483647i, 0i, -61026i, i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 29135i, 0i), -553f, 0u, vec2<bool>(false, false)), false, Struct_1(vec4<i32>(2962i, -1807i, 22952i, 1i), 1555f, 67845u, vec2<bool>(true, false))), Struct_2(vec4<i32>(20703i, -9399i, -35595i, i32(-2147483648)), Struct_1(vec4<i32>(1i, -30288i, -23684i, -30220i), 1890f, 28148u, vec2<bool>(false, true)), false, Struct_1(vec4<i32>(41997i, 1i, 0i, 45406i), -556f, 54328u, vec2<bool>(true, true))), Struct_2(vec4<i32>(-37148i, i32(-2147483648), -12625i, -1i), Struct_1(vec4<i32>(-33643i, 0i, 2147483647i, -39610i), -1842f, 35138u, vec2<bool>(false, true)), false, Struct_1(vec4<i32>(-32036i, 1i, -1i, 2147483647i), -270f, 54811u, vec2<bool>(false, true))), Struct_2(vec4<i32>(i32(-2147483648), -1i, -49498i, 0i), Struct_1(vec4<i32>(0i, 27688i, -26714i, 26355i), 463f, 58383u, vec2<bool>(true, false)), true, Struct_1(vec4<i32>(-1i, i32(-2147483648), -29142i, -68167i), -1404f, 1u, vec2<bool>(false, true))), Struct_2(vec4<i32>(2147483647i, -1i, 1i, -26333i), Struct_1(vec4<i32>(0i, -1i, -1i, 1i), -581f, 0u, vec2<bool>(true, false)), false, Struct_1(vec4<i32>(68356i, -49999i, -56139i, -1i), -277f, 38169u, vec2<bool>(true, false))), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), -5210i, 56952i), Struct_1(vec4<i32>(0i, 16786i, 20441i, -1i), -1062f, 66620u, vec2<bool>(true, true)), true, Struct_1(vec4<i32>(0i, 24439i, 2147483647i, 0i), 884f, 48386u, vec2<bool>(false, true))), Struct_2(vec4<i32>(16425i, i32(-2147483648), -1014i, i32(-2147483648)), Struct_1(vec4<i32>(0i, 43767i, -1i, 464i), -104f, 0u, vec2<bool>(false, false)), true, Struct_1(vec4<i32>(1i, 35689i, -12101i, 2147483647i), -182f, 4294967295u, vec2<bool>(true, false))));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = ~firstLeadingBit(u_input.d.x);
    global2 = array<Struct_2, 8>();
    let var_1 = !vec2<bool>(true, true || global0.x);
    let var_2 = 0i;
    var var_3 = global2[_wgslsmith_index_u32(~(~(_wgslsmith_div_u32(u_input.b.x, u_input.b.x) ^ 121444u)), 8u)];
    return abs(_wgslsmith_div_u32(u_input.b.x, u_input.b.x)) | 81978u;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: bool) -> vec3<f32> {
    var var_0 = Struct_1(u_input.e, _wgslsmith_f_op_f32(abs(arg_1.b)), countOneBits(countOneBits(reverseBits(func_2(vec2<f32>(arg_0.x, 1540f), u_input.b)))), global0.zz);
    global1 = array<i32, 19>();
    global2 = array<Struct_2, 8>();
    var var_1 = -2147483647i;
    let var_2 = countOneBits(vec4<u32>(~var_0.c & 28089u, 30985u, 17149u, 18779u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wzy)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.yxy)))));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = u_input.a;
    let var_1 = ~u_input.b.xy;
    global2 = array<Struct_2, 8>();
    var_0 = -u_input.a;
    return firstLeadingBit(~(~(reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)) << (abs(var_1) % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<f32>) -> Struct_1 {
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    global2 = array<Struct_2, 8>();
    var var_0 = u_input.e.xyx;
    global1 = array<i32, 19>();
    return Struct_1(vec4<i32>(min(~_wgslsmith_dot_vec3_i32(vec3<i32>(48042i, var_0.x, u_input.c), vec3<i32>(0i, var_0.x, global1[_wgslsmith_index_u32(arg_1.x, 19u)])), _wgslsmith_dot_vec4_i32(~u_input.e, _wgslsmith_add_vec4_i32(u_input.e, u_input.e))), global1[_wgslsmith_index_u32(6242u << ((abs(6105u) ^ arg_1.x) % 32u), 19u)], ~u_input.e.x ^ _wgslsmith_dot_vec3_i32(u_input.e.wzw, min(u_input.e.zyw, vec3<i32>(-10163i, var_0.x, -25323i))), ~global1[_wgslsmith_index_u32(arg_1.x, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, 123f, arg_3.x, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(457f, arg_2, arg_0.x, arg_3.x) + vec4<f32>(-248f, -2298f, 1928f, arg_3.x))), Struct_4(false, 1f), all(vec2<bool>(global0.x, true)))).x), 89980u, global0.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(4294967295u, countOneBits(0u), u_input.b.x, 12946u);
    var var_1 = all(!(!select(!vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, true, true), vec3<bool>(global0.x, global0.x, global0.x)), true)));
    var var_2 = ~vec3<u32>((~var_0.x & _wgslsmith_add_u32(32559u, var_0.x)) | ~u_input.b.x, ~(~u_input.b.x), 1u);
    global1 = array<i32, 19>();
    var_2 = ~var_0.wzx;
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1074f, -660f, 1247f, 595f))) + vec4<f32>(_wgslsmith_f_op_f32(226f - 597f), _wgslsmith_f_op_f32(-1254f + -674f), -1003f, _wgslsmith_f_op_f32(837f - -648f))), Struct_4(!(true & global0.x), 1f), !global0.x)), func_3(all(vec4<bool>(true, !global0.x, global0.x, all(vec3<bool>(global0.x, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(883f, 374f)), _wgslsmith_f_op_f32(select(-924f, 608f, false))), _wgslsmith_f_op_f32(-289f + -176f))), vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1452f + 1068f), -231f)) + -1123f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(i32(-1i) * -u_input.a.x), global1[_wgslsmith_index_u32(u_input.b.x, 19u)] ^ var_3.a.x, global1[_wgslsmith_index_u32(func_3(func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.b, -804f, -181f))), ~vec2<u32>(1u, u_input.b.x), var_3.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(952f, var_3.b))).d.x).x, 19u)]));
}

