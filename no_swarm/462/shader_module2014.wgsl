struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31>;

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 30>;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec4<u32>(1u, 49331u, 4294967295u, 23175u), true, vec4<i32>(1i, 110317i, -1i, -49685i), 2147483647i, vec4<f32>(1302f, -788f, -196f, -2260f)), -34306i), Struct_2(Struct_1(vec4<u32>(31964u, 9908u, 14501u, 1u), false, vec4<i32>(-1i, 1i, -23330i, 1758i), 36302i, vec4<f32>(-863f, -2038f, -151f, 1561f)), -22037i), Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 65622u), false, vec4<i32>(-76794i, -2250i, -8061i, 2147483647i), 33162i, vec4<f32>(512f, -552f, -1742f, -1507f)), 0i), Struct_2(Struct_1(vec4<u32>(53734u, 1u, 1u, 4294967295u), false, vec4<i32>(i32(-2147483648), -19865i, -55920i, 0i), -3218i, vec4<f32>(-907f, 2057f, 1041f, -935f)), 24835i), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 40595u), false, vec4<i32>(54171i, -7781i, 1i, 17984i), 37908i, vec4<f32>(-2568f, -145f, -1609f, -232f)), i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(0u, 0u, 0u, 31498u), true, vec4<i32>(5842i, -5277i, 0i, 39854i), -7560i, vec4<f32>(-1139f, -466f, -162f, -230f)), -13076i), Struct_2(Struct_1(vec4<u32>(47388u, 0u, 48484u, 49666u), false, vec4<i32>(-26978i, i32(-2147483648), 1i, -33850i), 2147483647i, vec4<f32>(-1000f, 2222f, -658f, -1000f)), -39220i), Struct_2(Struct_1(vec4<u32>(16309u, 0u, 40346u, 0u), false, vec4<i32>(1i, 64958i, -93192i, 17765i), -1i, vec4<f32>(-811f, 103f, -361f, -267f)), 0i), Struct_2(Struct_1(vec4<u32>(1u, 57901u, 4294967295u, 0u), false, vec4<i32>(-37255i, 11179i, -50249i, -45611i), 40790i, vec4<f32>(-1061f, -1560f, -510f, -1598f)), i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(4294967295u, 16793u, 79691u, 1u), false, vec4<i32>(-3499i, -1i, -1i, i32(-2147483648)), -22931i, vec4<f32>(179f, 1387f, 814f, 164f)), 1i), Struct_2(Struct_1(vec4<u32>(4294967295u, 26273u, 0u, 14857u), true, vec4<i32>(-1i, 0i, -11358i, 64961i), -51491i, vec4<f32>(1000f, -888f, -765f, 925f)), 2147483647i));

var<private> global4: vec2<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(Struct_1(arg_0.a.a, all(!select(vec4<bool>(arg_1.b, true, true, global4.x), vec4<bool>(arg_1.b, false, global4.x, false), false)), global0[_wgslsmith_index_u32(1u, 31u)] << (reverseBits(arg_0.a.a) % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(47505i, global2[_wgslsmith_index_u32(u_input.b, 30u)], arg_0.b, -856i)), (global0[_wgslsmith_index_u32(118631u, 31u)] << (arg_0.a.a % vec4<u32>(32u))) & global0[_wgslsmith_index_u32(abs(16897u), 31u)]), arg_1.e), u_input.e.x);
    var var_1 = max(vec2<i32>(~(global2[_wgslsmith_index_u32(arg_1.a.x, 30u)] ^ ~global2[_wgslsmith_index_u32(4294967295u, 30u)]), 0i), reverseBits(vec2<i32>(-1i) * -u_input.a));
    var var_2 = Struct_2(arg_0.a, ~(-var_0.b));
    var var_3 = _wgslsmith_f_op_f32(-var_0.a.e.x);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_2.a.e.x)))), -1000f) * var_0.a.e.x);
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global1 = !vec3<bool>(all(vec3<bool>(global1.x, true, true)), !global1.x, select(false, global4.x, all(vec2<bool>(true, false))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(63939u, 26312u, u_input.c.x, u_input.b), vec4<u32>(u_input.c.x, 0u, u_input.b, u_input.b)), 11u)], Struct_1(vec4<u32>(31580u, u_input.c.x, 13440u, u_input.c.x), false, global0[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)], vec4<f32>(arg_0.x, arg_0.x, -1456f, -2636f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(659f + arg_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * arg_0.x), _wgslsmith_div_f32(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(458f, _wgslsmith_f_op_f32(sign(591f)), -1227f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<u32>(u_input.c.x, 4294967295u, 0u, 4294967295u), false, vec4<i32>(-2147483647i, 26664i, 17759i, 59205i), -1i, vec4<f32>(arg_0.x, arg_0.x, 1855f, arg_0.x)), global2[_wgslsmith_index_u32(u_input.c.x, 30u)]), Struct_1(vec4<u32>(u_input.b, u_input.c.x, u_input.b, 19298u), false, global0[_wgslsmith_index_u32(1u, 31u)], u_input.e.x, vec4<f32>(794f, 810f, arg_0.x, arg_0.x))))))));
    let var_1 = !select(!(!select(vec2<bool>(true, true), global1.zx, vec2<bool>(true, false))), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec2<i32>(24602i, -2147483647i)) >= (i32(-1i) * -1i), true), global4.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(968f)));
    global1 = select(select(select(vec3<bool>(false, true, all(var_1)), !vec3<bool>(global4.x, true, false), !vec3<bool>(global1.x, true, true)), !vec3<bool>(true & var_1.x, !var_1.x, true), !any(!vec4<bool>(false, false, var_1.x, true))), !select(vec3<bool>(true, global4.x, global4.x), select(select(vec3<bool>(var_1.x, false, global1.x), vec3<bool>(global1.x, var_1.x, global4.x), vec3<bool>(false, global4.x, true)), vec3<bool>(true, global1.x, global4.x), select(vec3<bool>(global4.x, var_1.x, global4.x), vec3<bool>(global4.x, false, var_1.x), false)), false), !any(vec2<bool>(!global4.x, global4.x)));
    return ~u_input.c.x;
}

fn func_1() -> vec2<bool> {
    var var_0 = !(-(~(0i << (u_input.c.x % 32u))) <= ~global2[_wgslsmith_index_u32(1u, 30u)]);
    global2 = array<i32, 30>();
    let var_1 = select(max(min(abs(1i), _wgslsmith_mult_i32(~(-68377i), global2[_wgslsmith_index_u32(~u_input.b, 30u)])), countOneBits(global2[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.e.wxz, vec3<i32>(1i, -2147483647i, global2[_wgslsmith_index_u32(1u, 30u)])) << (u_input.c % vec3<u32>(32u)), vec3<i32>(-2220i ^ global2[_wgslsmith_index_u32(u_input.c.x, 30u)], _wgslsmith_mult_i32(-33810i, 54935i), 0i)) >> (func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, 1054f, -169f)))) % 32u), any(!vec3<bool>(false || global4.x, global4.x, !global1.x)));
    global4 = vec2<bool>(u_input.b >= (u_input.c.x | 0u), !any(select(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, false, true), global1.x), vec3<bool>(true, true, true), !vec3<bool>(global4.x, false, false))));
    var var_2 = Struct_1(firstTrailingBit(select(vec4<u32>(u_input.b, u_input.c.x, 0u, u_input.c.x), firstLeadingBit(vec4<u32>(u_input.b, 5744u, u_input.c.x, 271u)), true) << ((abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b)) | ~vec4<u32>(u_input.b, 47598u, u_input.c.x, 48878u)) % vec4<u32>(32u))), global4.x, global0[_wgslsmith_index_u32(~71827u, 31u)], _wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], -var_1), firstLeadingBit(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(79469u, 31u)], -global0[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, -565f, -2616f, -600f)), vec4<f32>(_wgslsmith_f_op_f32(select(-1246f, -432f, false)), -119f, _wgslsmith_f_op_f32(-914f + -2590f), _wgslsmith_f_op_f32(f32(-1f) * -678f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(858f, 704f, -517f, -446f))))));
    return vec2<bool>(true, any(select(!vec2<bool>(global1.x, global4.x), global1.xz, !global1.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(402f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(794f + 460f) + _wgslsmith_f_op_f32(max(-2351f, 1079f))))), all(!select(vec4<bool>(global1.x, true, false, false), vec4<bool>(global4.x, global1.x, global4.x, global4.x), vec4<bool>(false, true, global4.x, false))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-1760f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-3297f)))))));
    global3 = array<Struct_2, 11>();
    global1 = !select(!select(!vec3<bool>(global4.x, global1.x, global1.x), select(vec3<bool>(global1.x, false, global4.x), vec3<bool>(false, global4.x, global1.x), false), 1673f <= var_0), select(!select(vec3<bool>(global1.x, global1.x, global4.x), vec3<bool>(false, true, global1.x), vec3<bool>(true, global4.x, false)), !vec3<bool>(false, global4.x, false), vec3<bool>(global4.x && false, global4.x, global1.x & global1.x)), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 30u)] >= -31934i, global4.x), vec3<bool>(global1.x, func_1().x, all(global1.xz)), vec3<bool>(global1.x, all(vec4<bool>(true, true, true, false)), true)));
    global4 = vec2<bool>(true, true);
    let var_1 = ~(~_wgslsmith_add_i32(-5033i, u_input.d.x));
    global4 = vec2<bool>(global4.x || !(!(-636f == var_0)), true);
    let var_2 = ~(~u_input.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(-705f - var_0))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1335f, 1687f) + -112f), var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec2<i32>(u_input.d.x >> (4294967295u % 32u), 1i)), ~min(-abs(u_input.d), countOneBits(abs(u_input.a))), -abs(_wgslsmith_add_vec2_i32(u_input.d, u_input.e.xy)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(abs(var_2.yz), min(var_2.zz, vec2<u32>(var_2.x, 0u))), var_2.zx) % vec2<u32>(32u)));
}

