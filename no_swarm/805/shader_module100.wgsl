struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(2147483647i, 32607i, i32(-2147483648), 2147483647i), vec4<i32>(-19239i, 0i, 77081i, -91604i), vec4<i32>(-1i, 41838i, -49i, i32(-2147483648)), vec4<i32>(0i, -33758i, 16751i, i32(-2147483648)), vec4<i32>(-8862i, 2147483647i, 8436i, i32(-2147483648)), vec4<i32>(1i, -1i, -1i, -1i), vec4<i32>(-51729i, -15286i, 53802i, 2147483647i), vec4<i32>(i32(-2147483648), 41840i, i32(-2147483648), 132i), vec4<i32>(-14742i, 2147483647i, 0i, 0i), vec4<i32>(0i, 2147483647i, 0i, 45150i), vec4<i32>(13310i, 11091i, -1i, 1i), vec4<i32>(2027i, i32(-2147483648), 0i, 0i), vec4<i32>(26947i, 21971i, i32(-2147483648), -54719i), vec4<i32>(2147483647i, -25408i, -31943i, 2147483647i), vec4<i32>(i32(-2147483648), 75760i, 1999i, -33108i), vec4<i32>(i32(-2147483648), -1i, -1i, -23981i), vec4<i32>(-1i, -1i, 0i, 1i), vec4<i32>(0i, 2147483647i, 12961i, 2147483647i), vec4<i32>(49176i, 4729i, 1i, i32(-2147483648)), vec4<i32>(0i, -23662i, -29712i, 10996i), vec4<i32>(-36385i, -1i, 3745i, 1i), vec4<i32>(21484i, -1i, i32(-2147483648), i32(-2147483648)));

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global3 = u_input.c;
    global2 = array<vec4<i32>, 22>();
    global1 = u_input.d.yz;
    let var_0 = -1089f;
    var var_1 = arg_1;
    return Struct_1(arg_2.e.x, _wgslsmith_mod_i32(abs(abs(57682i & u_input.a.x)), -2147483647i), !var_1.e, 14599u, select(vec4<bool>((var_0 <= var_0) && any(arg_2.e), all(arg_1.c.yw), true, true), select(!vec4<bool>(false, true, var_1.c.x, var_1.c.x), arg_2.c, arg_1.c.x), select(vec4<bool>(arg_1.c.x, true, any(arg_2.e), any(arg_2.c.xyy)), !(!arg_2.e), all(vec2<bool>(arg_2.e.x, var_1.c.x)))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    let var_0 = func_2(vec2<u32>(0u, 1u), Struct_1(arg_1.c.x, -(~1i), vec4<bool>(!(!arg_1.c.x), arg_1.a, true, arg_1.e.x), ~_wgslsmith_mult_u32(~arg_1.d, 1u), !(!vec4<bool>(arg_1.e.x, false, true, arg_1.a))), func_2(u_input.d.zy, Struct_1(true, arg_0, !(!vec4<bool>(arg_1.a, true, arg_1.c.x, true)), _wgslsmith_mult_u32(0u, global1.x), arg_1.c), Struct_1(all(global0[_wgslsmith_index_u32(1u, 21u)]) && true, arg_1.b, vec4<bool>(true, !arg_1.e.x, true, true || arg_1.c.x), firstTrailingBit(~arg_1.d), arg_1.e)));
    global1 = vec2<u32>(var_0.d, u_input.d.x);
    let var_1 = u_input.a;
    let var_2 = reverseBits(-var_0.b);
    global3 = 33702u;
    return ~(_wgslsmith_mult_u32(69547u, select(40362u, var_0.d, select(false, arg_1.c.x, var_0.a))) >> (firstTrailingBit(var_0.d) % 32u));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = select(_wgslsmith_clamp_u32(11349u, 40140u, _wgslsmith_sub_u32(4294967295u, max(global1.x, 23989u)) & u_input.d.x), ~firstTrailingBit(func_3(-arg_2.x, func_2(arg_1.zx, Struct_1(false, 19429i, vec4<bool>(true, true, false, false), u_input.b, vec4<bool>(true, true, false, true)), Struct_1(true, u_input.e, vec4<bool>(true, true, false, true), global1.x, vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1248f, arg_0.x, 514f, 611f)))), false);
    global1 = vec2<u32>(min(_wgslsmith_dot_vec3_u32(~vec3<u32>(4598u, arg_1.x, 21600u), firstLeadingBit(vec3<u32>(12305u, 0u, 2155u))), _wgslsmith_div_u32(countOneBits(~4294967295u), ~0u)), ~0u);
    var var_1 = func_2(vec2<u32>(20918u, abs(10516u)), func_2(~_wgslsmith_sub_vec2_u32(arg_1.ww, ~u_input.d.xy), func_2(~(~vec2<u32>(u_input.c, u_input.c)), Struct_1(any(vec3<bool>(false, false, true)), select(-40787i, arg_2.x, false), func_2(arg_1.yy, Struct_1(true, -2147483647i, vec4<bool>(false, true, true, true), u_input.d.x, vec4<bool>(true, false, false, true)), Struct_1(false, u_input.a.x, vec4<bool>(true, true, true, false), 4294967295u, vec4<bool>(false, true, false, true))).c, 1u, vec4<bool>(true, true, true, true)), Struct_1(true, -arg_2.x, vec4<bool>(true, false, true, false), select(var_0, u_input.c, false), func_2(vec2<u32>(global1.x, 23378u), Struct_1(true, -1i, vec4<bool>(false, true, false, true), var_0, vec4<bool>(false, true, true, false)), Struct_1(true, u_input.a.x, vec4<bool>(false, true, false, false), global1.x, vec4<bool>(true, true, false, true))).e)), Struct_1(any(vec3<bool>(true, true, true)), u_input.e, vec4<bool>(true, true, true, true), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1.x, var_0), abs(2357u)), vec4<bool>(true, true, true, true))), Struct_1(true, arg_2.x & arg_2.x, vec4<bool>(true, true, true, true), ~reverseBits(~u_input.c), func_2(~vec2<u32>(4294967295u, var_0), func_2(arg_1.zz & vec2<u32>(arg_1.x, 0u), Struct_1(false, u_input.a.x, vec4<bool>(true, false, false, true), var_0, vec4<bool>(false, true, false, false)), func_2(vec2<u32>(var_0, arg_1.x), Struct_1(true, 0i, vec4<bool>(false, false, false, true), arg_1.x, vec4<bool>(false, true, true, true)), Struct_1(false, 0i, vec4<bool>(false, false, false, true), 12649u, vec4<bool>(true, false, true, true)))), func_2(~vec2<u32>(54599u, arg_1.x), func_2(vec2<u32>(0u, 15802u), Struct_1(false, -2147483647i, vec4<bool>(true, false, true, true), global1.x, vec4<bool>(true, false, true, true)), Struct_1(false, -19522i, vec4<bool>(true, true, true, false), 27612u, vec4<bool>(true, false, true, true))), Struct_1(true, arg_2.x, vec4<bool>(false, false, false, false), var_0, vec4<bool>(false, false, false, true)))).c));
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32((1u ^ ~global1.x) >> (23566u % 32u), 0u), var_0, ~min(~var_0, 37700u));
    let var_3 = 0i;
    return 59216i;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    global2 = array<vec4<i32>, 22>();
    var var_0 = Struct_1(any(select(arg_2.e.yww, !vec3<bool>(arg_2.e.x, arg_2.c.x, arg_2.c.x), !(arg_2.d < global1.x))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -arg_1.zz, _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.x, -45703i), vec2<i32>(arg_1.x, arg_1.x))), 1i), !vec4<bool>(all(global0[_wgslsmith_index_u32(reverseBits(arg_2.d), 21u)]), arg_2.a, true, arg_2.a), (~_wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(global1.x, global1.x)) & global1.x) | _wgslsmith_dot_vec3_u32(~u_input.d, (vec3<u32>(31894u, u_input.c, global1.x) | u_input.d) | ~vec3<u32>(4294967295u, 22732u, u_input.b)), arg_2.c);
    return Struct_1(select(!func_2(~vec2<u32>(arg_2.d, u_input.b), Struct_1(true, 0i, arg_2.c, u_input.b, vec4<bool>(false, true, var_0.a, var_0.e.x)), arg_2).e.x, all(!vec3<bool>(false, var_0.c.x, false)), !(var_0.e.x == var_0.a)), ~(-arg_1.x), !var_0.c, 81366u << (global1.x % 32u), select(select(func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 1u), u_input.d.xz), Struct_1(true, arg_2.b, vec4<bool>(arg_2.e.x, var_0.a, arg_2.c.x, false), 54995u, arg_2.c), Struct_1(true, var_0.b, var_0.e, arg_2.d, var_0.e)).e, vec4<bool>(true, all(var_0.e), true, arg_2.c.x), var_0.c), vec4<bool>(false, false, any(func_2(vec2<u32>(23157u, u_input.d.x), Struct_1(var_0.c.x, -34697i, var_0.e, 4294967295u, vec4<bool>(arg_2.e.x, arg_2.e.x, false, true)), arg_2).e), true), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(1u, _wgslsmith_mult_vec3_i32(vec3<i32>(-32025i, -max(2147483647i, -2147483647i), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, 610f)), abs(vec4<u32>(0u, u_input.c, global1.x, 18806u)), firstTrailingBit(vec4<i32>(-100332i, -13288i, -2147483647i, u_input.e)))), _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -16024i, 1i, 17674i), ~(~vec3<i32>(1i, -2147483647i, -23200i)))), Struct_1(global1.x > u_input.b, ~_wgslsmith_mult_i32(-u_input.e, -u_input.e), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), true), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 1u, global1.x, global1.x), vec4<u32>(u_input.d.x, u_input.b, 11242u, 89073u)), ~37866u, ~0u), ~vec3<u32>(u_input.c, 36377u, 42299u)), func_2(u_input.d.xz, Struct_1(u_input.a.x > 0i, u_input.e, select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), ~global1.x, select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), func_2(firstTrailingBit(vec2<u32>(19942u, 62372u)), Struct_1(false, 0i, vec4<bool>(false, true, false, false), 1u, vec4<bool>(false, true, true, false)), func_2(u_input.d.xx, Struct_1(true, 31670i, vec4<bool>(true, true, false, true), u_input.b, vec4<bool>(true, true, true, true)), Struct_1(true, u_input.a.x, vec4<bool>(true, true, false, false), 0u, vec4<bool>(false, false, false, false))))).e));
    global2 = array<vec4<i32>, 22>();
    var var_1 = !func_4(var_0.d, u_input.a, Struct_1(var_0.a, ~(~1i), var_0.e, var_0.d, select(select(vec4<bool>(false, true, var_0.c.x, false), var_0.c, var_0.c.x), !var_0.e, true))).e.wy;
    let var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1172f, 449f, -479f, -770f), vec4<f32>(1666f, -876f, 331f, -750f), var_0.c.x)) - vec4<f32>(853f, -809f, 1685f, 323f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_add_i32(firstLeadingBit(u_input.e >> (18179u % 32u)), 1i), func_4(~1u, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), reverseBits(u_input.a)), func_4(var_0.d, -vec3<i32>(43289i, -2147483647i, var_0.b), Struct_1(var_0.e.x, u_input.a.x, vec4<bool>(false, true, true, true), var_0.d, vec4<bool>(false, true, var_0.e.x, true)))), _wgslsmith_f_op_vec4_f32(-var_3)));
}

