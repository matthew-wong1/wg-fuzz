struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1000f, Struct_1(vec3<i32>(-1i, 1i, -11071i), 0i), vec4<u32>(79820u, 15008u, 1u, 1u), true, 25079u);

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false));

var<private> global2: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_1(vec3<i32>(-17121i, 2147483647i, 0i), -1i), vec3<bool>(true, true, true), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, i32(-2147483648))), Struct_3(Struct_1(vec3<i32>(0i, 0i, -1i), -12925i), vec3<bool>(true, true, false), vec2<i32>(-1i, -1i), vec2<i32>(-9091i, -47871i)), Struct_3(Struct_1(vec3<i32>(19371i, -40132i, -1i), -2625i), vec3<bool>(true, true, false), vec2<i32>(1i, 20944i), vec2<i32>(60622i, 1i)), Struct_3(Struct_1(vec3<i32>(-20330i, 2147483647i, -19840i), 0i), vec3<bool>(false, true, false), vec2<i32>(0i, -57545i), vec2<i32>(1i, 2147483647i)), Struct_3(Struct_1(vec3<i32>(9232i, -51867i, -1i), 1i), vec3<bool>(true, true, true), vec2<i32>(-16376i, 39551i), vec2<i32>(2147483647i, -7951i)), Struct_3(Struct_1(vec3<i32>(2147483647i, 1i, 0i), -3519i), vec3<bool>(false, false, true), vec2<i32>(-59872i, -6382i), vec2<i32>(31515i, -11874i)), Struct_3(Struct_1(vec3<i32>(0i, -15741i, 19280i), i32(-2147483648)), vec3<bool>(false, false, true), vec2<i32>(2147483647i, -11153i), vec2<i32>(9686i, 37640i)), Struct_3(Struct_1(vec3<i32>(-18960i, i32(-2147483648), 0i), 2147483647i), vec3<bool>(true, false, false), vec2<i32>(-22497i, -11608i), vec2<i32>(1i, 12305i)), Struct_3(Struct_1(vec3<i32>(-28471i, 2147483647i, 1i), -30227i), vec3<bool>(false, false, true), vec2<i32>(9052i, i32(-2147483648)), vec2<i32>(11456i, -1i)), Struct_3(Struct_1(vec3<i32>(-10791i, 1i, 1i), -1i), vec3<bool>(true, false, false), vec2<i32>(13192i, i32(-2147483648)), vec2<i32>(13769i, -6698i)), Struct_3(Struct_1(vec3<i32>(1i, i32(-2147483648), -1i), 22327i), vec3<bool>(false, true, true), vec2<i32>(-21655i, 0i), vec2<i32>(-69474i, 1i)), Struct_3(Struct_1(vec3<i32>(1i, 1i, 2147483647i), 2147483647i), vec3<bool>(true, false, true), vec2<i32>(-2205i, i32(-2147483648)), vec2<i32>(-85537i, -1i)), Struct_3(Struct_1(vec3<i32>(0i, -1i, 1i), 21155i), vec3<bool>(true, false, true), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, i32(-2147483648))), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 0i, 48284i), 15330i), vec3<bool>(true, false, true), vec2<i32>(-37371i, -1i), vec2<i32>(-1i, 0i)), Struct_3(Struct_1(vec3<i32>(-1i, 44624i, -1i), 22677i), vec3<bool>(true, false, true), vec2<i32>(0i, 28602i), vec2<i32>(i32(-2147483648), -46684i)), Struct_3(Struct_1(vec3<i32>(0i, 1i, 5284i), 0i), vec3<bool>(false, false, false), vec2<i32>(21567i, 33853i), vec2<i32>(-4363i, -1i)), Struct_3(Struct_1(vec3<i32>(-1i, i32(-2147483648), 0i), -38041i), vec3<bool>(true, true, false), vec2<i32>(1346i, 1i), vec2<i32>(-23345i, -1i)), Struct_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, 1i), 26064i), vec3<bool>(false, false, false), vec2<i32>(2147483647i, -1i), vec2<i32>(21198i, -1786i)), Struct_3(Struct_1(vec3<i32>(1i, 1i, -47025i), i32(-2147483648)), vec3<bool>(true, true, true), vec2<i32>(-32922i, -1i), vec2<i32>(12484i, i32(-2147483648))), Struct_3(Struct_1(vec3<i32>(-1i, -1i, 2147483647i), i32(-2147483648)), vec3<bool>(false, false, false), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i)), Struct_3(Struct_1(vec3<i32>(1i, -33173i, i32(-2147483648)), -1i), vec3<bool>(true, false, false), vec2<i32>(-47787i, 2147483647i), vec2<i32>(1i, 12432i)), Struct_3(Struct_1(vec3<i32>(-1i, -1i, 0i), 1i), vec3<bool>(true, true, false), vec2<i32>(-18834i, 0i), vec2<i32>(-8004i, 14237i)), Struct_3(Struct_1(vec3<i32>(30799i, -35328i, 1i), 6022i), vec3<bool>(false, false, false), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, -1i)), Struct_3(Struct_1(vec3<i32>(-90366i, i32(-2147483648), 3817i), i32(-2147483648)), vec3<bool>(false, true, false), vec2<i32>(48926i, 0i), vec2<i32>(-28044i, -13424i)), Struct_3(Struct_1(vec3<i32>(3047i, 606i, i32(-2147483648)), 0i), vec3<bool>(false, false, false), vec2<i32>(45697i, 12876i), vec2<i32>(i32(-2147483648), -5656i)), Struct_3(Struct_1(vec3<i32>(-1i, 0i, 49787i), 2147483647i), vec3<bool>(false, true, false), vec2<i32>(2147483647i, -21808i), vec2<i32>(i32(-2147483648), -58867i)), Struct_3(Struct_1(vec3<i32>(0i, i32(-2147483648), 41908i), -54012i), vec3<bool>(false, true, true), vec2<i32>(24439i, -56313i), vec2<i32>(0i, 0i)), Struct_3(Struct_1(vec3<i32>(1i, 2147483647i, -10019i), 1i), vec3<bool>(true, true, true), vec2<i32>(-26310i, 0i), vec2<i32>(44009i, 15864i)), Struct_3(Struct_1(vec3<i32>(1i, 0i, -1i), 0i), vec3<bool>(false, false, false), vec2<i32>(16927i, 2147483647i), vec2<i32>(2190i, 1486i)));

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(-364f, Struct_1(vec3<i32>(12638i, 2147483647i, 2147483647i), 2147483647i), vec4<u32>(22671u, 7542u, 8842u, 58411u), true, 1u), Struct_2(1652f, Struct_1(vec3<i32>(i32(-2147483648), -1i, -21264i), 4123i), vec4<u32>(0u, 47921u, 77585u, 4294967295u), true, 0u), Struct_2(-1332f, Struct_1(vec3<i32>(i32(-2147483648), 27028i, 88185i), 0i), vec4<u32>(4294967295u, 58098u, 0u, 1u), false, 0u), Struct_2(-150f, Struct_1(vec3<i32>(-1009i, 20846i, i32(-2147483648)), 6353i), vec4<u32>(70300u, 11303u, 490u, 36846u), false, 65624u), Struct_2(1303f, Struct_1(vec3<i32>(5947i, -3259i, 12040i), 9308i), vec4<u32>(1u, 5154u, 1u, 4294967295u), true, 16067u), Struct_2(-746f, Struct_1(vec3<i32>(39685i, i32(-2147483648), i32(-2147483648)), -42759i), vec4<u32>(1984u, 23010u, 71516u, 1624u), true, 0u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<f32>) -> vec4<i32> {
    global0 = Struct_2(-668f, Struct_1(global0.b.a, -(-1i | min(-2147483647i, global0.b.b))), global0.c, true, _wgslsmith_dot_vec2_u32(~(~min(u_input.c.zx, vec2<u32>(0u, global0.c.x))), ~(u_input.c.zx | vec2<u32>(35202u, 0u))));
    var var_0 = _wgslsmith_sub_vec3_i32(u_input.b >> (u_input.c.xzy % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 24871i), vec2<i32>(global0.b.b, -39068i) >> (global0.c.xx % vec2<u32>(32u)))), -_wgslsmith_mult_i32(~global0.b.a.x, 0i << (1u % 32u)), u_input.b.x));
    global1 = array<vec4<bool>, 12>();
    var var_1 = (~(~global0.c.x) < 10835u) && true;
    var var_2 = global0.b;
    return -(~vec4<i32>(~var_0.x, firstTrailingBit(global0.b.b), 17976i, var_0.x) << (vec4<u32>(35207u, 1u, _wgslsmith_sub_u32(firstTrailingBit(u_input.c.x), 4294967295u), ~(~4294967295u)) % vec4<u32>(32u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(1056f));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(trunc(255f))), -2226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(min(-595f, arg_2))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a, global0.a, global0.a, arg_2))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, global0.a, global0.a))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), global0.a, global0.a == 907f)), _wgslsmith_f_op_f32(f32(-1f) * -536f), global0.a, _wgslsmith_div_f32(-518f, arg_2))))));
    var var_2 = global0.b;
    let var_3 = true;
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(-329f + _wgslsmith_f_op_f32(step(1853f, 883f)))), _wgslsmith_f_op_f32(var_1.x * -454f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -294f), arg_2) + _wgslsmith_f_op_vec2_f32(select(var_1.zw, _wgslsmith_f_op_vec2_f32(step(var_1.yx, var_1.xy)), var_3))));
    return select(select(vec2<bool>(_wgslsmith_add_u32(u_input.a, 1u) == (u_input.a >> (0u % 32u)), !global0.d || !global0.d), vec2<bool>(~0u == abs(u_input.c.x), all(select(vec3<bool>(false, global0.d, global0.d), vec3<bool>(var_3, global0.d, var_3), vec3<bool>(false, true, true)))), true), select(vec2<bool>(all(!vec3<bool>(true, var_3, var_3)), select(var_3, var_3, false) | true), select(vec2<bool>(true, false), !(!vec2<bool>(var_3, var_3)), select(select(vec2<bool>(var_3, global0.d), vec2<bool>(var_3, global0.d), vec2<bool>(false, global0.d)), vec2<bool>(true, true), !vec2<bool>(true, global0.d))), true), var_3);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> StorageBuffer {
    let var_0 = !func_3(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(514f, global0.a, -1483f, 115f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-192f, global0.a, global0.a, global0.a), vec4<f32>(2175f, 175f, 1000f, global0.a))))), global0.b, _wgslsmith_f_op_f32(-global0.a));
    var var_1 = vec3<u32>(~0u, _wgslsmith_mod_u32(abs(u_input.c.x), 51342u), _wgslsmith_clamp_u32(global0.c.x, ~(0u >> (global0.c.x % 32u)), max(~581u, _wgslsmith_div_u32(u_input.a, 0u)))) & u_input.c.wzw;
    var var_2 = Struct_1(~(max(u_input.b, _wgslsmith_add_vec3_i32(global0.b.a, global0.b.a)) & (~vec3<i32>(u_input.b.x, 49437i, u_input.b.x) >> (vec3<u32>(global0.e, u_input.a, 43288u) % vec3<u32>(32u)))), i32(-1i) * -u_input.b.x);
    global0 = global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 6u)];
    var var_3 = _wgslsmith_sub_vec3_u32(~u_input.c.yxz, ~vec3<u32>(57031u, 4294967295u | global0.e, 1u) >> (vec3<u32>(60919u & u_input.a, ~var_1.x, global0.c.x) % vec3<u32>(32u)));
    return StorageBuffer(u_input.c, firstLeadingBit(vec2<u32>(abs(~28195u), reverseBits(4294967295u))), reverseBits(22689i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(5546u), 6u)];
    let x = u_input.a;
    s_output = func_1(!(!vec2<bool>(!var_0.d, var_0.d)), vec4<bool>(true, !(!all(vec3<bool>(global0.d, global0.d, var_0.d))), var_0.d, true));
}

