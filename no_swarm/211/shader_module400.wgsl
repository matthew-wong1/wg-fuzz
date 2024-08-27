struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_4(global2[_wgslsmith_index_u32(98747u << (1u % 32u), 28u)]);
    var var_1 = false;
    global1 = all(!vec4<bool>(true, _wgslsmith_mult_u32(u_input.a.x, 41981u) >= ~var_0.a.a.d.x, var_0.a.b, true));
    var var_2 = arg_0;
    var_2 = !select(select(!arg_0, select(arg_0, arg_0, vec3<bool>(arg_0.x, var_0.a.b, var_0.a.a.a.x)), true), vec3<bool>(var_0.a.b, var_2.x, ~1u <= ~var_0.a.a.d.x), vec3<bool>(false, all(arg_0) | true, false));
    return countOneBits(_wgslsmith_add_vec4_i32(reverseBits(max(vec4<i32>(-8662i, -15279i, 8984i, u_input.b.x), vec4<i32>(u_input.e, u_input.c.x, 2147483647i, -1i))) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), ~u_input.e, -1i, u_input.b.x), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, u_input.e, -3632i, u_input.e), abs(vec4<i32>(u_input.c.x, 2147483647i, u_input.e, -44363i))), select(-vec4<i32>(1958i, -3267i, u_input.c.x, -35765i), -vec4<i32>(u_input.d.x, -1i, 0i, u_input.e), select(vec4<bool>(var_0.a.b, false, arg_0.x, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, var_2.x))))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(20581u), 8u)];
    var var_1 = -countOneBits(countOneBits(_wgslsmith_mod_vec4_i32(func_3(arg_1, -748f, u_input.a.xw), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b.x, u_input.e) | vec4<i32>(u_input.d.x, 0i, u_input.c.x, 48988i))));
    let var_2 = ~4294967295u;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.zx)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x)))), var_0.yw, arg_0));
    global2 = array<Struct_2, 28>();
    return Struct_3(Struct_1(arg_1.yy, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.a.zxw, u_input.a.zyx) | countOneBits(1u >> (var_2 % 32u)), 8u)], u_input.a.x & (abs(34669u) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 64382u), vec2<u32>(var_2, var_2))), u_input.a.ww, vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, var_2, 92051u << (0u % 32u)), u_input.a.x, u_input.a.x)), global2[_wgslsmith_index_u32(u_input.a.x, 28u)], Struct_2(Struct_1(vec2<bool>(var_0.x >= 1302f, any(arg_1)), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~u_input.a.x, 8u)] + vec4<f32>(var_0.x, -645f, -1312f, var_0.x)), _wgslsmith_div_u32(~9985u, var_2), ~vec2<u32>(u_input.a.x, 48256u), ~vec4<u32>(4294967295u, 4294967295u, var_2, 33048u)), all(!(!vec4<bool>(false, arg_1.x, false, arg_0)))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = select(!(!(!(!vec4<bool>(arg_3.a.x, true, arg_1.c.a.a.x, arg_3.a.x)))), select(!vec4<bool>(all(vec3<bool>(true, true, true)), select(arg_3.a.x, true, false), any(vec4<bool>(arg_3.a.x, false, false, false)), all(vec3<bool>(arg_3.a.x, arg_1.c.a.a.x, arg_1.b.a.a.x))), !select(select(vec4<bool>(arg_3.a.x, arg_3.a.x, false, false), vec4<bool>(arg_3.a.x, true, arg_1.c.a.a.x, arg_3.a.x), arg_1.a.a.x), select(vec4<bool>(arg_1.b.b, arg_1.a.a.x, false, true), vec4<bool>(false, true, arg_3.a.x, arg_3.a.x), arg_3.a.x), !vec4<bool>(false, arg_3.a.x, true, arg_1.c.a.a.x)), select(false, !arg_3.a.x, arg_1.c.a.a.x) || arg_1.c.b), !vec4<bool>(-64430i <= u_input.e, false, arg_3.a.x, false));
    var var_1 = vec4<bool>(arg_1.b.a.a.x, (func_2(true, var_0.xyz).c.a.e.x ^ countOneBits(1u)) < u_input.a.x, true, !any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, var_0.x, arg_1.c.b, false), true), select(vec4<bool>(arg_3.a.x, var_0.x, arg_3.a.x, arg_3.a.x), vec4<bool>(arg_3.a.x, var_0.x, true, true), false), vec4<bool>(false, arg_3.a.x, arg_3.a.x, var_0.x))));
    var_1 = vec4<bool>(arg_3.a.x, any(vec4<bool>(true, !(2147483647i == u_input.e), (-2752i > u_input.c.x) & !var_0.x, true)), all(var_0.wz), arg_3.a.x);
    var_1 = vec4<bool>(arg_3.a.x, false, arg_3.a.x, var_1.x);
    var var_2 = Struct_4(func_2(any(vec4<bool>(true, any(vec2<bool>(var_0.x, arg_3.a.x)), var_1.x, all(var_1.zx))), var_0.yxz).c);
    return arg_1;
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-135f, _wgslsmith_f_op_f32(round(-230f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1636f), -1017f)), func_2(false, vec3<bool>(~15840u < u_input.a.x, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(859f, 1240f, -369f) * vec3<f32>(-1391f, -336f, -141f)))) * vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, -516f)), 382f, _wgslsmith_f_op_f32(-1592f - -1028f)))), func_2(u_input.a.x < 1u, select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), all(vec2<bool>(true, true)))).b.a);
    global2 = array<Struct_2, 28>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1184f, -468f, 1000f, var_0.c.a.b.x)) * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 31066u), 8u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1294f, -506f, -896f, var_0.b.a.b.x)))))) * vec4<f32>(_wgslsmith_div_f32(var_0.c.a.b.x, 468f), _wgslsmith_f_op_f32(-func_4(1f, Struct_3(Struct_1(var_0.b.a.a, var_0.c.a.b, var_0.c.a.d.x, vec2<u32>(0u, u_input.a.x), var_0.a.e), global2[_wgslsmith_index_u32(var_0.c.a.e.x, 28u)], Struct_2(Struct_1(var_0.b.a.a, vec4<f32>(-513f, var_0.a.b.x, -622f, 439f), u_input.a.x, vec2<u32>(1u, 1u), vec4<u32>(38825u, var_0.c.a.d.x, 27957u, 1u)), false)), _wgslsmith_f_op_vec3_f32(-var_0.c.a.b.zwz), var_0.a).b.a.b.x), var_0.a.b.x, -1003f));
    return Struct_3(Struct_1(!(!select(var_0.c.a.a, var_0.c.a.a, vec2<bool>(var_0.c.a.a.x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 8u)])))), _wgslsmith_add_u32(u_input.a.x, ~(~var_0.a.d.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.d.x, u_input.a.x ^ 22000u), ~(~vec2<u32>(1u, u_input.a.x))), ~var_0.a.e | u_input.a), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(426f)))), func_4(-369f, var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-167f, -163f, 1092f) - vec3<f32>(2027f, 1479f, var_1.x)) + var_0.c.a.b.xxx), var_0.b.a), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, var_1.x), var_0.b.a.b.x))), Struct_1(!var_0.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, -637f, var_1.x, var_0.a.b.x)), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(26322u, var_0.c.a.c, u_input.a.x))), u_input.a.yx, ~abs(vec4<u32>(u_input.a.x, 4294967295u, 36201u, u_input.a.x)))).b, func_4(_wgslsmith_div_f32(func_2(!var_0.b.b, vec3<bool>(true, false, var_0.b.b)).c.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1299f)), Struct_3(Struct_1(!vec2<bool>(true, var_0.c.a.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 618f, var_0.a.b.x, var_1.x)), 4294967295u, var_0.c.a.d, abs(var_0.c.a.e)), Struct_2(func_4(var_1.x, var_0, vec3<f32>(821f, var_1.x, 765f), Struct_1(vec2<bool>(var_0.b.a.a.x, false), vec4<f32>(var_1.x, var_1.x, var_1.x, 895f), 1u, vec2<u32>(u_input.a.x, 863u), vec4<u32>(u_input.a.x, 31356u, 1u, u_input.a.x))).b.a, true), Struct_2(var_0.b.a, !var_0.a.a.x)), _wgslsmith_f_op_vec3_f32(-var_1.xwy), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.a.b.x), func_2(true, vec3<bool>(true, false, var_0.a.a.x)).b.a.b.x)), func_4(_wgslsmith_f_op_f32(-var_0.b.a.b.x), Struct_3(var_0.a, var_0.b, Struct_2(var_0.b.a, false)), vec3<f32>(var_0.c.a.b.x, var_1.x, -1303f), var_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_0.c.a.b.x) + var_1.yzw), var_0.c.a).a).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = func_4(_wgslsmith_f_op_f32(trunc(1070f)), func_2(u_input.c.x > u_input.d.x, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(-2633f, 803f)), 1679f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.a.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.a.b.yyy)), vec3<bool>(u_input.e != 34491i, select(var_0.a.a.x || var_0.a.a.x, false, false), true))), Struct_1(vec2<bool>(var_0.a.a.x, var_0.b.a.a.x), global0[_wgslsmith_index_u32(func_2(true, vec3<bool>(true, true, var_0.c.a.b.x > -1320f)).a.d.x, 8u)], min(~u_input.a.x, 77448u), vec2<u32>(~var_0.b.a.c >> ((u_input.a.x & 27375u) % 32u), var_0.c.a.e.x & 12411u), vec4<u32>(~u_input.a.x, u_input.a.x, ~14984u, ~(4294967295u >> (u_input.a.x % 32u))))).b.a.a.x;
    let var_1 = firstLeadingBit(vec3<i32>(u_input.c.x, ~((u_input.c.x & 4940i) ^ u_input.e), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, u_input.d), reverseBits(vec3<i32>(-35805i, 23920i, u_input.e))), 1i, u_input.b.x)));
    var_0 = func_1();
    let var_2 = func_1().c.a;
    let var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(f32(-1f) * -183f))))), Struct_3(Struct_1(!var_0.c.a.a, _wgslsmith_f_op_vec4_f32(-func_4(-670f, Struct_3(var_0.a, Struct_2(var_0.c.a, false), Struct_2(var_2, true)), vec3<f32>(var_2.b.x, var_2.b.x, -257f), Struct_1(var_2.a, var_2.b, 1u, vec2<u32>(0u, 4294967295u), vec4<u32>(u_input.a.x, var_2.d.x, 0u, 1u))).c.a.b), func_1().b.a.e.x, u_input.a.xz ^ var_2.e.zw, ~vec4<u32>(var_2.d.x, u_input.a.x, 0u, u_input.a.x)), global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(~1u >> ((u_input.a.x >> (~u_input.a.x % 32u)) % 32u), 28u)]), var_2.b.zxx, func_2(select(var_2.a.x, false, all(vec3<bool>(true, var_0.c.a.a.x, var_2.a.x))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(var_2.a.x, true, true), vec3<bool>(var_0.b.b, var_0.a.a.x, var_2.a.x), true), !vec3<bool>(false, var_2.a.x, false), !vec3<bool>(true, var_2.a.x, var_2.a.x)), vec3<bool>(true, 0i >= var_1.x, false))).b.a).b.a;
    var var_4 = Struct_4(global2[_wgslsmith_index_u32(4294967295u, 28u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(u_input.e & var_1.x, -1i, u_input.c.x, -u_input.c.x)), _wgslsmith_add_u32(var_4.a.a.c, firstLeadingBit(~max(4294967295u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * -915f) - _wgslsmith_f_op_f32(-1638f * -200f)))));
}

