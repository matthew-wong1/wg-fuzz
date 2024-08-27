struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 29>;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(22298i), vec3<u32>(0u, 5257u, 0u), Struct_1(1i), -1332f, Struct_1(2147483647i)), Struct_2(Struct_1(7082i), vec3<u32>(1u, 0u, 35970u), Struct_1(6773i), 299f, Struct_1(-39535i)), Struct_2(Struct_1(12392i), vec3<u32>(4294967295u, 4294967295u, 71897u), Struct_1(1i), -544f, Struct_1(28933i)), Struct_2(Struct_1(54573i), vec3<u32>(0u, 4294967295u, 0u), Struct_1(-2816i), 243f, Struct_1(-6499i)), Struct_2(Struct_1(1i), vec3<u32>(4294967295u, 0u, 1u), Struct_1(28233i), -658f, Struct_1(-43530i)), Struct_2(Struct_1(-2089i), vec3<u32>(4294967295u, 1u, 58968u), Struct_1(0i), -1000f, Struct_1(-9472i)), Struct_2(Struct_1(-31030i), vec3<u32>(14731u, 75670u, 4294967295u), Struct_1(13961i), -199f, Struct_1(18694i)), Struct_2(Struct_1(51623i), vec3<u32>(0u, 1u, 15058u), Struct_1(0i), -1000f, Struct_1(1i)), Struct_2(Struct_1(1i), vec3<u32>(16599u, 54583u, 0u), Struct_1(-12235i), 728f, Struct_1(1i)), Struct_2(Struct_1(-7459i), vec3<u32>(23777u, 55626u, 4294967295u), Struct_1(-19340i), 102f, Struct_1(2147483647i)), Struct_2(Struct_1(10842i), vec3<u32>(49264u, 0u, 20115u), Struct_1(-1i), -929f, Struct_1(5581i)), Struct_2(Struct_1(2147483647i), vec3<u32>(4294967295u, 16239u, 17667u), Struct_1(-1525i), 529f, Struct_1(782i)), Struct_2(Struct_1(2147483647i), vec3<u32>(4294967295u, 16414u, 61767u), Struct_1(-35828i), 693f, Struct_1(i32(-2147483648))), Struct_2(Struct_1(-31114i), vec3<u32>(4294967295u, 0u, 24769u), Struct_1(26675i), 1470f, Struct_1(6954i)), Struct_2(Struct_1(45324i), vec3<u32>(97386u, 4741u, 51149u), Struct_1(2147483647i), -831f, Struct_1(i32(-2147483648))), Struct_2(Struct_1(-40579i), vec3<u32>(37166u, 0u, 4294967295u), Struct_1(-1143i), 529f, Struct_1(9820i)), Struct_2(Struct_1(i32(-2147483648)), vec3<u32>(1u, 1u, 1u), Struct_1(35421i), -1185f, Struct_1(2147483647i)), Struct_2(Struct_1(1i), vec3<u32>(0u, 20068u, 18574u), Struct_1(0i), -1000f, Struct_1(-1i)), Struct_2(Struct_1(2147483647i), vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(i32(-2147483648)), -314f, Struct_1(-18626i)), Struct_2(Struct_1(1i), vec3<u32>(17003u, 0u, 62409u), Struct_1(-51454i), 168f, Struct_1(-1i)), Struct_2(Struct_1(-1i), vec3<u32>(84959u, 45518u, 4294967295u), Struct_1(0i), -742f, Struct_1(2147483647i)), Struct_2(Struct_1(69741i), vec3<u32>(3872u, 0u, 15220u), Struct_1(1i), -1516f, Struct_1(14829i)), Struct_2(Struct_1(-45529i), vec3<u32>(4294967295u, 2103u, 0u), Struct_1(-18389i), -308f, Struct_1(-48732i)), Struct_2(Struct_1(50266i), vec3<u32>(0u, 1u, 1u), Struct_1(26405i), 610f, Struct_1(0i)), Struct_2(Struct_1(23925i), vec3<u32>(5206u, 4294967295u, 2304u), Struct_1(i32(-2147483648)), -318f, Struct_1(1i)));

var<private> global3: u32 = 0u;

var<private> global4: Struct_2 = Struct_2(Struct_1(0i), vec3<u32>(4294967295u, 4294967295u, 33763u), Struct_1(0i), -330f, Struct_1(8946i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    global2 = array<Struct_2, 25>();
    var var_0 = max(reverseBits(max(max(-62762i, 2147483647i), -global4.e.a) << (global4.b.x % 32u)), reverseBits(14354i));
    var_0 = abs(global4.a.a);
    let var_1 = Struct_2(Struct_1(u_input.b), abs(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, global4.b.x, 0u)), 69806u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, global4.b.x, global4.b.x), firstTrailingBit(vec4<u32>(4294967295u, 0u, 34494u, 0u))))), global4.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d + _wgslsmith_f_op_f32(-global4.d))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.d + -824f) + _wgslsmith_div_f32(-1474f, global4.d))))), global4.a);
    let var_2 = ~vec3<i32>(-global4.a.a, ~global0.a, firstLeadingBit(1i));
    return vec2<bool>(_wgslsmith_dot_vec2_u32(~(u_input.c.yz >> (var_1.b.yz % vec2<u32>(32u))), select(u_input.a.yz, global4.b.yy, select(vec2<bool>(true, true), arg_0.xy, vec2<bool>(false, arg_0.x)))) <= ~(~(~var_1.b.x)), false);
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<i32> {
    let var_0 = global4.c;
    let var_1 = u_input.a.yx;
    let var_2 = global2[_wgslsmith_index_u32(~(abs(global4.b.x) << (1u % 32u)), 25u)];
    let var_3 = Struct_1(-arg_0);
    var var_4 = !func_3(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(69101u, 29u)]));
    return -(~countOneBits(vec4<i32>(global4.e.a, global4.c.a, firstTrailingBit(36574i), var_2.a.a)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = 20107u;
    var var_1 = abs(-(abs(func_2(2147483647i, u_input.e)) >> (~vec4<u32>(3036u, arg_0.b.x, 1u, 0u) % vec4<u32>(32u))));
    global1 = array<bool, 29>();
    let var_2 = false;
    global1 = array<bool, 29>();
    return vec4<u32>(abs(5356u), ~global4.b.x, max(_wgslsmith_add_u32(1u, select(firstTrailingBit(1u), 1u, true)), 75780u), _wgslsmith_div_u32(~u_input.d, global4.b.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -217f) + 1594f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))), 946f)))));
    global1 = array<bool, 29>();
    var var_1 = global2[_wgslsmith_index_u32(26487u, 25u)];
    global0 = Struct_1(_wgslsmith_sub_i32(~countOneBits(1i), 39958i));
    var var_2 = reverseBits(-2147483647i);
    return global4.e;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_2.x, -400f, -424f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, global4.d, arg_0.d, arg_0.d)))))), select(vec2<bool>(true, true), !vec2<bool>(all(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 29u)])), true), true), ~_wgslsmith_dot_vec3_u32(arg_0.b, ~vec3<u32>(49975u, 17966u, global4.b.x)) << (4294967295u % 32u), firstTrailingBit(vec4<u32>(~59237u, 17239u, max(~0u, func_1(Struct_2(Struct_1(arg_0.c.a), vec3<u32>(0u, arg_0.b.x, global4.b.x), global4.e, arg_0.d, arg_0.c), arg_2.x, vec2<f32>(arg_0.d, arg_0.d)).x), _wgslsmith_sub_u32(1u, u_input.d >> (global4.b.x % 32u)))));
    let var_1 = !vec2<bool>(true, !(!(-1i >= arg_0.c.a)));
    let var_2 = select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u >> (max(47745u, func_1(arg_0, -214f, arg_2.yy).x) % 32u), 29u)], var_1.x, true), select(!select(!vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 29u)], var_1.x), select(vec3<bool>(true, var_1.x, false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], var_1.x, var_1.x), vec3<bool>(false, var_1.x, true)), !global1[_wgslsmith_index_u32(arg_0.b.x, 29u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(~arg_1.x, 29u)], false), var_1.x), var_1.x);
    let var_3 = arg_0.b.yz;
    global4 = Struct_2(var_0, ~vec3<u32>(var_3.x, firstTrailingBit(~global4.b.x), var_3.x), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.d, -1000f, 1615f) + vec4<f32>(arg_0.d, arg_0.d, -1008f, -231f)))))), !select(select(var_1, vec2<bool>(global1[_wgslsmith_index_u32(1u, 29u)], var_2.x), vec2<bool>(var_1.x, var_2.x)), vec2<bool>(global1[_wgslsmith_index_u32(36177u, 29u)], var_1.x), vec2<bool>(true, true)), 12055u, arg_1 & vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(global4.b, vec3<u32>(var_3.x, u_input.d, u_input.c.x)), ~0u, 53069u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * -523f)), arg_2.x, _wgslsmith_f_op_f32(-arg_0.d), 1000f), select(var_2.yz, vec2<bool>(all(vec2<bool>(var_1.x, true)), var_2.x), var_2.zx), ~(~(~34203u)), vec4<u32>(var_3.x, 92306u, var_3.x, func_1(Struct_2(global4.a, vec3<u32>(62100u, global4.b.x, global4.b.x), global4.a, arg_2.x, global4.c), _wgslsmith_f_op_f32(ceil(arg_0.d)), vec2<f32>(arg_2.x, arg_2.x)).x)));
    return global2[_wgslsmith_index_u32(reverseBits(firstLeadingBit(137132u)), 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 25>();
    let var_0 = vec4<i32>(min(49695i, _wgslsmith_mult_i32(-_wgslsmith_div_i32(-2147483647i, -14138i), 0i)), firstLeadingBit(0i), _wgslsmith_sub_i32(-37485i, global0.a), _wgslsmith_dot_vec2_i32((vec2<i32>(-2147483647i, u_input.b) ^ (vec2<i32>(-2147483647i, u_input.b) | vec2<i32>(u_input.b, -28478i))) >> ((~u_input.c.xy << (vec2<u32>(36812u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(abs(select(u_input.b, u_input.b, global1[_wgslsmith_index_u32(u_input.d, 29u)])), u_input.b)));
    var var_1 = var_0;
    var var_2 = func_5(Struct_2(func_4(vec4<f32>(_wgslsmith_f_op_f32(191f * -2582f), global4.d, 1584f, _wgslsmith_f_op_f32(global4.d - 1097f)), !select(vec2<bool>(global1[_wgslsmith_index_u32(global4.b.x, 29u)], global1[_wgslsmith_index_u32(global4.b.x, 29u)]), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], false)), 3413u, _wgslsmith_mod_vec4_u32(func_1(Struct_2(Struct_1(2147483647i), global4.b, Struct_1(var_0.x), global4.d, global4.c), global4.d, vec2<f32>(-817f, -1281f)), ~vec4<u32>(29068u, 4294967295u, 22484u, u_input.c.x))), vec3<u32>(0u, ~7223u, ~2233u), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(182f, -225f, 1322f, global4.d) + vec4<f32>(1129f, global4.d, -342f, 811f))), func_3(select(vec3<bool>(true, global1[_wgslsmith_index_u32(5827u, 29u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(global4.b.x, 29u)], global1[_wgslsmith_index_u32(33417u, 29u)]), false)), u_input.d, vec4<u32>(global4.b.x ^ 90052u, select(global4.b.x, 0u, global1[_wgslsmith_index_u32(global4.b.x, 29u)]), ~4294967295u, global4.b.x)), global4.d, global4.e), _wgslsmith_add_vec4_u32(~(~abs(vec4<u32>(1u, u_input.d, global4.b.x, global4.b.x))), func_1(Struct_2(func_4(vec4<f32>(global4.d, global4.d, -309f, -355f), vec2<bool>(false, false), 54241u, vec4<u32>(31752u, global4.b.x, 0u, global4.b.x)), vec3<u32>(31979u, global4.b.x, 13691u) & vec3<u32>(4294967295u, 70126u, u_input.a.x), global4.c, -107f, global4.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-815f, 1499f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.d, 814f) + vec2<f32>(global4.d, 356f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(957f, global4.d, -867f) * vec3<f32>(global4.d, -184f, 3013f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1984f, global4.d, 868f) * vec3<f32>(1567f, 244f, global4.d)), true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(227f, -159f, 831f))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-365f, -457f, global4.d), vec3<f32>(global4.d, global4.d, global4.d)))))))));
    var var_3 = vec3<bool>(any(vec3<bool>(!any(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(77622u, 29u)])), all(!vec2<bool>(true, global1[_wgslsmith_index_u32(var_2.b.x, 29u)])), false)), global1[_wgslsmith_index_u32(u_input.d, 29u)], true);
    let var_4 = var_2.e;
    global4 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.d, var_2.d, -537f, -445f), vec4<f32>(global4.d, global4.d, global4.d, global4.d))))) * vec4<f32>(_wgslsmith_f_op_f32(floor(-1605f)), _wgslsmith_f_op_f32(var_2.d - -1000f), var_2.d, -1870f)), var_3.yz, firstTrailingBit(0u), vec4<u32>(~abs(var_2.b.x), 0u, 4294967295u, 4294967295u)), vec3<u32>(select(func_1(func_5(global2[_wgslsmith_index_u32(u_input.d, 25u)], vec4<u32>(var_2.b.x, u_input.a.x, 45514u, var_2.b.x), vec3<f32>(-1632f, var_2.d, 932f)), _wgslsmith_f_op_f32(max(global4.d, 501f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.d, -364f)))).x, var_2.b.x ^ 116785u, false), firstTrailingBit(0u), u_input.c.x), var_2.a, 205f, Struct_1(_wgslsmith_dot_vec4_i32(~var_0, select(vec4<i32>(global0.a, 1i, var_1.x, 21464i), firstTrailingBit(vec4<i32>(var_2.a.a, 14426i, -2147483647i, var_0.x)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(-671f, -45706i);
}

