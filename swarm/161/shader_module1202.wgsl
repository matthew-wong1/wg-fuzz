struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<Struct_4, 19>;

var<private> global2: vec3<f32> = vec3<f32>(-550f, 1656f, -1361f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec3<i32> {
    var var_0 = Struct_3(Struct_1(vec3<i32>(-max(2147483647i, u_input.c), abs(arg_0) >> (firstTrailingBit(0u) % 32u), -u_input.c), _wgslsmith_add_vec3_i32(abs(vec3<i32>(arg_1.x, arg_0, u_input.c)), -vec3<i32>(-2147483647i, 1i, 7324i)) & vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_1.x, 14308i), vec3<i32>(1i, u_input.c, -2147483647i)), -37137i, _wgslsmith_sub_i32(arg_0, arg_0)), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true)), -((-42851i | arg_0) << (u_input.b % 32u))), arg_1);
    let var_1 = _wgslsmith_add_u32(u_input.a, ~20985u);
    var var_2 = true;
    global1 = array<Struct_4, 19>();
    global1 = array<Struct_4, 19>();
    return vec3<i32>(10252i, ~_wgslsmith_clamp_i32(-(arg_1.x | -2147483647i), _wgslsmith_mod_i32(arg_1.x, -38167i ^ arg_0), -1i), -var_0.a.d);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(~vec4<u32>(min(~u_input.a, 0u), ~30748u, reverseBits(~global0[_wgslsmith_index_u32(u_input.b, 10u)]), u_input.a), _wgslsmith_f_op_f32(1513f * 852f), ~vec3<u32>(~(~global0[_wgslsmith_index_u32(u_input.a, 10u)]), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 41314u), vec2<u32>(41444u, global0[_wgslsmith_index_u32(0u, 10u)]))), 0u), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.b.x, arg_2.a.x, u_input.c, _wgslsmith_add_i32(-37342i, 0i)), -vec4<i32>(4754i, _wgslsmith_sub_i32(0i, -57338i), -2147483647i, -arg_1.a.x)), arg_0);
    global1 = array<Struct_4, 19>();
    var_0 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_0.a.x | global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), ~(~u_input.b), _wgslsmith_sub_u32(47035u, global0[_wgslsmith_index_u32(max(19910u, u_input.b), 10u)]), ~min(u_input.b, 29874u)), countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 1u, 4294967295u, global0[_wgslsmith_index_u32(19875u, 10u)]), var_0.a), ~vec4<u32>(41532u, 39913u, 68533u, var_0.a.x))), select(~var_0.a, ~var_0.a, !vec4<bool>(true, arg_2.c, arg_1.c, arg_1.c)) >> ((~var_0.a >> (min(var_0.a, var_0.a) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -775f) - _wgslsmith_f_op_f32(-var_0.b)))), var_0.c, var_0.d, true);
    var_0 = Struct_2(select(countOneBits(vec4<u32>(u_input.b >> (33374u % 32u), 0u, ~1u, ~0u)), ~(~vec4<u32>(var_0.a.x, u_input.b, u_input.b, 1u)), arg_0), var_0.b, var_0.a.wzw, min(var_0.d, _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.b.x, arg_2.d, -2147483647i, var_0.d.x), vec4<i32>(45437i, 2147483647i, arg_2.d, -2147483647i)), var_0.d)), !any(!select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), true)));
    var var_1 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(var_0.c.x ^ var_0.c.x, 0u), firstTrailingBit(u_input.a)) << (~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 1u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8802u, 10u)], 10u)], u_input.b)), 56024u) % 32u), 10u)] & _wgslsmith_clamp_u32(u_input.b, 0u, ~abs(var_0.c.x)), 19u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(376f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f - var_0.b) * _wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(695f, var_0.b))), 867f)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(true, Struct_1(-vec3<i32>(u_input.c, 5272i, -24131i), func_3(u_input.c, vec2<i32>(-41694i, u_input.c)), any(vec4<bool>(false, false, false, true)), firstLeadingBit(-626i)), Struct_1(select(vec3<i32>(u_input.c, u_input.c, 25777i), vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<bool>(true, true, true)), abs(vec3<i32>(u_input.c, 45702i, u_input.c)), true, ~(-1i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), -405f)));
    global1 = array<Struct_4, 19>();
    var var_1 = Struct_2(~(~vec4<u32>(u_input.b, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 0u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.b)), 4294967295u)), global2.x, ~vec3<u32>(countOneBits(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)], 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)])), firstTrailingBit(9930u), global0[_wgslsmith_index_u32(~(~63961u), 10u)]), ~vec4<i32>(-1i, u_input.c, -1i, -9504i), select(!any(vec2<bool>(true, true)), !select(false, true, true), false) && true);
    return Struct_1(_wgslsmith_mod_vec3_i32(var_1.d.zyz, firstLeadingBit(-abs(vec3<i32>(var_1.d.x, -39952i, 27617i)))), vec3<i32>(u_input.c, var_1.d.x, var_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.c < u_input.c, Struct_1(var_1.d.wzz, vec3<i32>(0i, -2147483647i, -85953i), true, -37889i), Struct_1(var_1.d.ywx, vec3<i32>(-17468i, u_input.c, var_1.d.x), var_1.e, var_1.d.x))) + _wgslsmith_f_op_f32(-global2.x)) <= _wgslsmith_f_op_f32(trunc(global2.x)), ~(~var_1.d.x));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(117f, 2035f)))));
    var var_1 = !select(vec4<bool>(false, true, all(!vec3<bool>(var_0.c, false, var_0.c)), true), !vec4<bool>(var_0.c, any(vec3<bool>(true, var_0.c, var_0.c)), 4294967295u != u_input.a, true), !any(vec3<bool>(false, true, var_0.c)));
    var var_2 = vec3<u32>(0u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~(~1u), 10u)], u_input.a) >> (global0[_wgslsmith_index_u32(1u, 10u)] % 32u), ~_wgslsmith_div_u32(max(9968u ^ u_input.a, 29574u), ~_wgslsmith_clamp_u32(89209u, 0u, 1127u)));
    global0 = array<u32, 10>();
    var var_3 = _wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(-(~func_1(vec2<f32>(global2.x, -1348f)).a), -var_0.b));
    var var_4 = Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, global0[_wgslsmith_index_u32(12431u, 10u)]), max(~var_2.yz, vec2<u32>(23616u, 24360u) & var_2.xx)), ~var_2.x, ~10974u, 1u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f + global2.x)))), _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, u_input.a), vec2<u32>(9447u, u_input.b)), ~82356u, var_2.x | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), ~vec3<u32>(66833u, u_input.a, 17081u) & vec3<u32>(~var_2.x, firstTrailingBit(global0[_wgslsmith_index_u32(1u, 10u)]), 6402u)), vec4<i32>(var_0.b.x, func_3(1i, var_0.a.zy).x, _wgslsmith_mult_i32(var_0.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(8294i, u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, var_0.d), var_0.b.xy))), abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, var_0.a.x, var_0.a.x, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(27412i, 0i, var_0.a.x, u_input.c), vec4<i32>(-12075i, -2147483647i, u_input.c, var_0.b.x), vec4<i32>(24144i, -20771i, -1i, -5047i))))), var_1.x);
    var_3 = -1i;
    var_3 = -countOneBits(max(_wgslsmith_sub_i32(var_4.d.x, u_input.c), -2147483647i)) ^ max(i32(-1i) * -19237i, ~(11929i & var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.x), _wgslsmith_mod_u32(u_input.a, 1u) & var_4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), abs(countOneBits(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, var_4.d.x), vec2<i32>(-2147483647i, 24281i))))), _wgslsmith_f_op_f32(select(-352f, 767f, var_0.c)));
}

