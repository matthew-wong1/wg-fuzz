struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(-15887i, 2147483647i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(-1183i, -6901i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, 2147483647i)));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<i32>(0i, -12469i)), Struct_1(vec2<i32>(i32(-2147483648), -16364i)), Struct_1(vec2<i32>(-13191i, -17233i)), Struct_1(vec2<i32>(i32(-2147483648), -27814i)), Struct_1(vec2<i32>(0i, 17958i)), Struct_1(vec2<i32>(2147483647i, -60077i)), Struct_1(vec2<i32>(-53637i, -48946i)), Struct_1(vec2<i32>(1i, 1i)), Struct_1(vec2<i32>(0i, 19816i)), Struct_1(vec2<i32>(20153i, -30703i)));

var<private> global2: vec2<u32> = vec2<u32>(9824u, 0u);

var<private> global3: array<f32, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 6u)];
    global3 = array<f32, 30>();
    global0 = array<Struct_1, 6>();
    let var_1 = global1[_wgslsmith_index_u32(global2.x, 10u)];
    global1 = array<Struct_1, 10>();
    return global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32((49268u ^ global2.x) << (16582u % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 24323u, 43807u)), vec3<u32>(4294967295u, 4294967295u, u_input.a))) << (_wgslsmith_sub_u32(22630u, 17165u) % 32u)), 6u)];
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    let var_0 = Struct_1(arg_3.yw);
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(75u, 1u), countOneBits(_wgslsmith_mult_u32(1u, max(4294967295u, u_input.a))), arg_1, 0u), ~select(vec4<u32>(20425u, arg_1, global2.x, global2.x) >> (~vec4<u32>(10165u, arg_1, 1182u, 27900u) % vec4<u32>(32u)), vec4<u32>(~arg_1, 39428u, countOneBits(1u), countOneBits(u_input.a)), vec4<bool>(true, true, true, true)));
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(~1u, 1u), 30u)];
    var var_3 = Struct_1(~vec2<i32>(~(2147483647i << (0u % 32u)), -(arg_2.a.x ^ arg_3.x)));
    let var_4 = _wgslsmith_div_vec4_i32(arg_3, vec4<i32>(arg_3.x, _wgslsmith_clamp_i32(-2147483647i ^ arg_3.x, _wgslsmith_dot_vec2_i32(arg_2.a, vec2<i32>(arg_0.a.x, 0i)), var_0.a.x), firstTrailingBit(-102311i), min(~arg_3.x, i32(-1i) * -29388i))) >> (countOneBits(vec4<u32>(~57843u, _wgslsmith_dot_vec3_u32(var_1.yzw ^ var_1.yxy, vec3<u32>(u_input.a, arg_1, var_1.x)), 1u >> (u_input.a % 32u), reverseBits(abs(u_input.a)))) % vec4<u32>(32u));
    return true;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: bool, arg_3: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3[_wgslsmith_index_u32(arg_0.x, 30u)], global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(0u, 30u)], 682f), vec4<f32>(1987f, global3[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)], 1279f))))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 30u)], -558f, global3[_wgslsmith_index_u32(arg_0.x, 30u)], global3[_wgslsmith_index_u32(20632u, 30u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(32590u, 30u)], -639f, -1000f, -319f))))));
    var var_1 = ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 0u, 18596u, 32761u) << (vec4<u32>(0u, 10211u, u_input.a, 1u) % vec4<u32>(32u)), select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, global2.x, arg_0.x), vec4<u32>(0u, u_input.a, arg_0.x, arg_0.x)), vec4<u32>(1u, arg_0.x, u_input.a, 26375u), false), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(arg_0.x, 35413u, arg_0.x, 0u)), ~vec4<u32>(u_input.a, arg_0.x, 14114u, 53194u))) | abs(~(vec4<u32>(59835u, 51749u, global2.x, 1u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))));
    global1 = array<Struct_1, 10>();
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2143f, -606f) + 276f)), _wgslsmith_f_op_f32(2712f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(117f)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(global2.x, 30u)])), var_0.x))) * vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.xy, arg_0.xz), 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(824f - -1000f) * 1158f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(trunc(1575f))), 336f));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.a) & (reverseBits(var_1.x) >> (~arg_0.x % 32u)), 30u)], -1215f, _wgslsmith_f_op_f32(sign(-1483f)), 990f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -939f), var_2.x, _wgslsmith_f_op_f32(trunc(-220f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 30u)] + 1297f)))));
    return !select(!(!select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, false, arg_3), vec3<bool>(arg_3, arg_2, arg_2))), !select(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, arg_2, arg_2), true), !vec3<bool>(arg_2, false, false), !vec3<bool>(arg_3, arg_2, arg_3)), all(vec4<bool>(arg_3, true, true, arg_2)));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = -(~abs(vec2<i32>(-70897i, firstLeadingBit(-2147483647i))));
    var var_1 = func_4(firstTrailingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, u_input.a, 52073u), vec3<u32>(u_input.a, 0u, u_input.a))) | select(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global2.x, 44623u), vec3<u32>(1u, global2.x, u_input.a)), ~firstLeadingBit(vec3<u32>(global2.x, 4294967295u, u_input.a)), true), -(~var_0.x), func_3(global1[_wgslsmith_index_u32(u_input.a, 10u)], max(global2.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(27141u, 0u, 26420u), vec3<u32>(u_input.a, 80868u, 1u)), ~4294967295u)), func_2(), ~(~(vec4<i32>(var_0.x, var_0.x, -7069i, var_0.x) << (vec4<u32>(u_input.a, global2.x, global2.x, 4294967295u) % vec4<u32>(32u))))), true);
    var var_2 = Struct_1(func_2().a);
    let var_3 = global1[_wgslsmith_index_u32(~(48371u | _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global2.x, u_input.a, global2.x, 69916u)), max(vec4<u32>(28827u, u_input.a, global2.x, global2.x), vec4<u32>(4294967295u, global2.x, 22628u, global2.x))), firstTrailingBit(47530u))), 10u)];
    var var_4 = Struct_1(vec2<i32>(var_0.x, select(~var_0.x, 51691i ^ _wgslsmith_mult_i32(2147483647i, var_2.a.x), true)));
    return !var_1.x;
}

fn func_5(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_1, 6>();
    global3 = array<f32, 30>();
    return Struct_1(~_wgslsmith_sub_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(~(-1i), ~2147483647i)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    global3 = array<f32, 30>();
    let var_1 = func_5(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))).a.x;
    global0 = array<Struct_1, 6>();
    global1 = array<Struct_1, 10>();
    return Struct_1(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(41376u, 10u)];
    global0 = array<Struct_1, 6>();
    let var_1 = func_6(func_5(func_1(1504f)), Struct_1(-reverseBits(-vec2<i32>(var_0.a.x, var_0.a.x))), Struct_1(firstTrailingBit(-vec2<i32>(-26800i, 2147483647i))));
    var var_2 = false;
    global3 = array<f32, 30>();
    let var_3 = var_1.a.x;
    var var_4 = func_4(vec3<u32>(~(~_wgslsmith_clamp_u32(0u, 4294967295u, 12131u)), u_input.a, 1u), func_2().a.x, all(vec2<bool>(!any(vec2<bool>(false, true)), false)), func_1(-845f));
    global1 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(50314u, 30u)], -761f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global2.x, 30u)], global3[_wgslsmith_index_u32(40838u, 30u)]) + vec2<f32>(1063f, global3[_wgslsmith_index_u32(21532u, 30u)])))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(1u, 30u)])), global3[_wgslsmith_index_u32(~u_input.a, 30u)], func_3(Struct_1(var_1.a), global2.x, global1[_wgslsmith_index_u32(19692u, 10u)], vec4<i32>(-2147483647i, var_0.a.x, var_3, var_0.a.x)))), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(0u, 30u)], 714f))))));
}

