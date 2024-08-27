struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(40588i, 26645i, 1i, i32(-2147483648), -1i, 0i, -11252i, i32(-2147483648), 1i, -21931i, 23785i, -28850i, -49430i, i32(-2147483648), -39983i, 20190i, 22496i, -5242i, 2147483647i, -1i, -35935i);

var<private> global1: vec2<i32> = vec2<i32>(0i, -6060i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    global0 = array<i32, 21>();
    var var_0 = !select(vec4<bool>(any(vec4<bool>(false, true, false, false)), true | all(vec2<bool>(false, false)), true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), any(vec3<bool>(true, true, true))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))));
    let var_1 = ~reverseBits(-7759i);
    var var_2 = ~(~vec3<u32>(~abs(u_input.a.x), firstLeadingBit(_wgslsmith_sub_u32(946u, u_input.a.x)), _wgslsmith_mult_u32(u_input.a.x << (63281u % 32u), u_input.a.x ^ u_input.a.x)));
    var_0 = !vec4<bool>(all(select(select(var_0.wyz, var_0.yww, vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.wyw, var_0.yww)), var_0.x, false, 994f == _wgslsmith_f_op_f32(floor(-500f)));
    return _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_2.x, 28247u) ^ ~1u, _wgslsmith_add_u32(var_2.x, abs(var_2.x)), max(17623u, var_2.x | 14283u));
}

fn func_2() -> Struct_1 {
    return Struct_1(max(_wgslsmith_mod_u32(~(~u_input.a.x), u_input.a.x), ~func_3()), ~(~(~u_input.a.x)) >> (_wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_mod_u32(38494u, 28202u)) % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<f32>) -> vec3<bool> {
    global1 = reverseBits(vec2<i32>(-1i) * -vec2<i32>(21623i, 53106i));
    var var_0 = arg_1.a.a.x | (_wgslsmith_add_i32(firstTrailingBit(global0[_wgslsmith_index_u32(arg_0, 21u)]), ~max(global1.x, -2147483647i)) != 7330i);
    var_0 = !(true & (_wgslsmith_clamp_u32(90113u, 1u, ~1u) >= 0u));
    let var_1 = true;
    global0 = array<i32, 21>();
    return !(!vec3<bool>(arg_1.a.b.x, var_1, all(arg_1.a.b.ww)));
}

fn func_1() -> Struct_1 {
    let var_0 = select(func_4(1u, Struct_4(Struct_2(vec3<bool>(false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), vec2<u32>(9796u, 90110u) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), Struct_1(31375u, u_input.a.x)), func_2(), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-644f, -352f, -1026f) - vec3<f32>(1149f, 1000f, 2273f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, -853f, -1000f, 1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1068f, 1354f, 1152f, -1385f) * vec4<f32>(1000f, 305f, -785f, 1184f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-432f, -232f, 678f, -184f))))), select(vec3<bool>(u_input.a.x < abs(1u), true, _wgslsmith_f_op_f32(f32(-1f) * -222f) > _wgslsmith_f_op_f32(step(-1000f, 420f))), vec3<bool>(all(vec4<bool>(true, false, true, true)) || true, true, any(vec2<bool>(true, true))), any(select(func_4(u_input.a.x, Struct_4(Struct_2(vec3<bool>(true, false, false), vec4<bool>(true, false, true, true), vec2<u32>(5664u, u_input.a.x), Struct_1(1u, 6328u)), Struct_1(u_input.a.x, u_input.a.x), Struct_3(vec3<f32>(1373f, 1119f, -567f))), vec4<f32>(-408f, 473f, -1000f, -548f)).xx, vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))))), func_4(func_2().b, Struct_4(Struct_2(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec4<bool>(true, false, true, false), vec2<u32>(1u, 1u), func_2()), func_2(), Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2143f, 716f, -1000f), vec3<f32>(1000f, 254f, 790f), vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-493f, -1000f, -615f, -549f), vec4<f32>(-510f, -1384f, -1435f, 222f), false))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, 1142f, -515f, -468f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, -746f, 794f, -2051f))))));
    global1 = abs(vec2<i32>(_wgslsmith_add_i32(~firstLeadingBit(-1i), _wgslsmith_sub_i32(1i, i32(-1i) * -14948i)), ~(-40236i)));
    var var_1 = _wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-1519i, global1.x, -37609i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -38726i, -2147483647i, global1.x), vec4<i32>(11471i, -28229i, 56183i, 2147483647i))), min(~vec4<i32>(2147483647i, 1i, 0i, global1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, -22831i, global0[_wgslsmith_index_u32(5638u, 21u)], global1.x), vec4<i32>(2147483647i, 1i, global1.x, global1.x)))), max(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -global1.x, -6308i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 60432i, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<i32>(-27237i, global0[_wgslsmith_index_u32(98306u, 21u)], global1.x, 5616i)), -vec4<i32>(global1.x, 54197i, global1.x, global0[_wgslsmith_index_u32(4294967295u, 21u)]))), _wgslsmith_mult_vec4_i32((vec4<i32>(1i, global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]) | vec4<i32>(-35069i, 23172i, -1i, global1.x)) << (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), ~(-vec4<i32>(645i, global1.x, 2147483647i, 53499i)))));
    let var_2 = vec4<bool>(false, min(1u, ~reverseBits(u_input.a.x)) >= (1u ^ ~(~u_input.a.x)), ((8650u >> ((u_input.a.x & u_input.a.x) % 32u)) | u_input.a.x) > 0u, var_0.x);
    var_1 = -vec4<i32>(-69293i, i32(-1i) * -global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 13772u), 21u)], firstTrailingBit(global1.x), -21682i);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(vec3<bool>(any(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true))), true, false), !(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)))), ~(~(~vec2<u32>(u_input.a.x, u_input.a.x) & ~vec2<u32>(u_input.a.x, u_input.a.x))), var_0);
    var var_2 = vec2<u32>(~(~(~func_1().b)), (reverseBits(_wgslsmith_mult_u32(var_0.a, 0u)) ^ ~(~var_1.c.x)) ^ 1u);
    let var_3 = Struct_4(Struct_2(var_1.b.zyz, vec4<bool>(true, false, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 21u)], -1i), vec3<i32>(-1i, 5175i, -1i)) > 0i, true), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 13977u), u_input.a.wx), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, var_0.a), u_input.a.zw)), var_0), func_2(), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-815f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(559f - -607f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(f32(-1f) * -599f), func_4(17620u, Struct_4(Struct_2(vec3<bool>(false, var_1.b.x, false), vec4<bool>(false, var_1.a.x, false, var_1.b.x), u_input.a.xz, var_1.d), Struct_1(var_2.x, 40013u), Struct_3(vec3<f32>(654f, 281f, 230f))), vec4<f32>(-211f, -710f, -691f, -1966f)).x)))));
    let var_4 = var_0;
    let var_5 = 4294967295u;
    let var_6 = (var_4.b ^ ~_wgslsmith_mod_u32(func_2().a, var_2.x)) << (0u % 32u);
    var var_7 = _wgslsmith_f_op_f32(-104f * 1444f);
    let var_8 = var_1.b.wyy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(14890u, var_2.x, 24277u << (firstLeadingBit(var_1.d.b) % 32u)), _wgslsmith_mod_vec2_u32(~var_3.a.c, max(vec2<u32>(~var_1.d.b, abs(u_input.a.x)), var_1.c)), vec4<i32>(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.b.a & 66271u, 1u), 21u)], countOneBits(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_2.x, 21u)], 11640i, global1.x)), select(!var_8.x, true, var_8.x)), countOneBits(~(global1.x << (0u % 32u))), 2147483647i, _wgslsmith_sub_i32(global1.x, -22301i)), vec2<f32>(_wgslsmith_f_op_f32(-var_3.c.a.x), _wgslsmith_f_op_f32(exp2(var_3.c.a.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), var_3.c.a.x, _wgslsmith_f_op_f32(-var_3.c.a.x), _wgslsmith_f_op_f32(round(var_3.c.a.x))))));
}

