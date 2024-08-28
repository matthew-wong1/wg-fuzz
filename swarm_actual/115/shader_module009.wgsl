struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<i32, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_5, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1621f);
    var var_1 = Struct_2(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(min(0u, arg_0.a), 17u)], ~0i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.a, 17u)], u_input.a, u_input.b), abs(vec3<i32>(u_input.a, -22122i, -49717i)))));
    return Struct_2(-(abs(var_1.a) << (firstTrailingBit(~vec3<u32>(107907u, arg_0.a, 28009u)) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    global1 = array<i32, 17>();
    var var_0 = Struct_5(0u);
    let var_1 = -1387f;
    var_0 = Struct_5(arg_3.d.c.x);
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~(~arg_3.a.x) >> (39875u % 32u), 7586u, _wgslsmith_dot_vec2_u32(vec2<u32>(max(49181u, 4294967295u), arg_3.a.x), vec2<u32>(var_0.a, 5469u) ^ _wgslsmith_sub_vec2_u32(arg_2.c, vec2<u32>(var_0.a, 1u)))), vec4<u32>(1u, arg_3.a.x, ~(~countOneBits(99114u)), arg_3.a.x));
    return var_0.a;
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<i32> {
    let var_0 = vec2<bool>(true, all(select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.c.x, 4u)], global0[_wgslsmith_index_u32(arg_2.c.x, 4u)], true), vec4<bool>(true, true, false, false), true), !vec4<bool>(arg_2.d.x, arg_2.d.x, true, false), false && arg_2.d.x)));
    let var_1 = select(arg_2.c.x, arg_2.c.x, true);
    let var_2 = 1u;
    var var_3 = !select(arg_2.d, vec2<bool>(false || var_0.x, all(vec4<bool>(true, global0[_wgslsmith_index_u32(var_1, 4u)], arg_1, false))), arg_2.d);
    global0 = array<bool, 4>();
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(-2147483647i, -1i, 1i), arg_2.b.x), firstTrailingBit(abs(-arg_2.b.zxw)), arg_2.b.wyy);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    let var_0 = ~(vec3<u32>(4294967295u, arg_2.c.x, select(~arg_2.c.x, func_2(vec4<f32>(-1089f, 705f, arg_0, 1000f), vec2<f32>(arg_0, arg_0), Struct_1(vec3<i32>(u_input.a, -2147483647i, -1i), vec4<i32>(global1[_wgslsmith_index_u32(arg_1.c.x, 17u)], 2147483647i, -15115i, global1[_wgslsmith_index_u32(70664u, 17u)]), arg_2.c, vec2<bool>(true, false), 19642i), Struct_3(vec2<u32>(arg_2.c.x, arg_2.c.x), arg_2.b.xy, false, Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(0u, 17u)], -20352i, -8950i), arg_1.b, arg_2.c, arg_2.d, arg_1.a.x))), false)) ^ select(max(vec3<u32>(696u, 1u, arg_1.c.x), _wgslsmith_sub_vec3_u32(vec3<u32>(9633u, 29822u, 0u), vec3<u32>(arg_2.c.x, 52914u, arg_1.c.x))), vec3<u32>(arg_1.c.x, 1u, countOneBits(0u)), (arg_2.c.x == arg_2.c.x) && all(vec4<bool>(true, true, arg_1.d.x, false))));
    global1 = array<i32, 17>();
    var var_1 = arg_0;
    var var_2 = Struct_5(abs(~_wgslsmith_add_u32(arg_2.c.x, select(0u, 6842u, arg_1.d.x))));
    let var_3 = !(!all(select(vec2<bool>(true, arg_1.d.x), select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 4u)], true), arg_1.d, vec2<bool>(arg_2.d.x, false)), !arg_2.d.x)));
    return Struct_2(~_wgslsmith_sub_vec3_i32(-(~vec3<i32>(-40387i, arg_2.a.x, global1[_wgslsmith_index_u32(arg_1.c.x, 17u)])), arg_2.a & firstTrailingBit(arg_2.b.zzw)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 17>();
    var var_0 = func_1(Struct_5(firstLeadingBit(select(1u, 1u, true))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(36720u, 0u, 45859u), vec3<u32>(1u, 1u, 1u)))), 2155u), 4u)]);
    global0 = array<bool, 4>();
    var var_1 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -181f))))))), Struct_1(-countOneBits(-var_0.a), vec4<i32>(37060i, _wgslsmith_div_i32(~24556i, 2459i), ~(-34821i), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 45632u), 17u)]), vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(67403u, 27361u)), ~vec2<u32>(40719u, 1u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 0u), ~4294967295u)), vec2<bool>(all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(5456u, 4u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(30992u, 4u)]))), false), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~func_2(vec4<f32>(560f, 970f, 273f, 140f), vec2<f32>(-492f, -150f), Struct_1(vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(79552u, 17u)], global1[_wgslsmith_index_u32(8753u, 17u)]), vec4<i32>(22978i, -1i, 33981i, 2147483647i), vec2<u32>(1u, 1u), vec2<bool>(true, false), global1[_wgslsmith_index_u32(54499u, 17u)]), Struct_3(vec2<u32>(4294967295u, 4294967295u), var_0.a.xz, global0[_wgslsmith_index_u32(28456u, 4u)], Struct_1(var_0.a, vec4<i32>(u_input.a, var_0.a.x, -2147483647i, -2459i), vec2<u32>(1u, 32028u), vec2<bool>(true, true), 1i))), 17u)], _wgslsmith_add_i32(49358i, 1i) ^ u_input.b)), Struct_1(-(select(var_0.a, vec3<i32>(18981i, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(27155u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)])) | func_3(vec4<f32>(-1625f, 1763f, 1902f, -1165f), false, Struct_1(vec3<i32>(0i, global1[_wgslsmith_index_u32(25803u, 17u)], -7130i), vec4<i32>(u_input.b, 2147483647i, global1[_wgslsmith_index_u32(0u, 17u)], 2147483647i), vec2<u32>(1u, 4294967295u), vec2<bool>(true, true), var_0.a.x), vec2<f32>(346f, -665f))), vec4<i32>(-global1[_wgslsmith_index_u32(5940u, 17u)], var_0.a.x, u_input.a >> (4294967295u % 32u), var_0.a.x) >> (countOneBits(~vec4<u32>(39054u, 1u, 1u, 4294967295u)) % vec4<u32>(32u)), ~_wgslsmith_add_vec2_u32(min(vec2<u32>(59677u, 27227u), vec2<u32>(344u, 17521u)), vec2<u32>(1u, 1u)), !select(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], false), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(71619u, 4u)], global0[_wgslsmith_index_u32(39163u, 4u)]), global0[_wgslsmith_index_u32(0u, 4u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_div_i32(reverseBits(min(u_input.a, 1i)), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 29467u, 96372u, 38328u), vec4<u32>(13408u, 1u, 23715u, 0u)), 17u)], _wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(global1[_wgslsmith_index_u32(70932u, 17u)], u_input.a, -2147483647i)), -1i << (0u % 32u)))));
    var var_2 = vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 31300u), ~vec2<u32>(5496u, 4294967295u)), 17u)], u_input.b, -23706i) & vec3<i32>(var_0.a.x, ~u_input.b, func_1(Struct_5(66495u), global0[_wgslsmith_index_u32(abs(1u), 4u)]).a.x);
    var var_3 = Struct_1(var_0.a, vec4<i32>(abs(0i), -27745i, -(~(~var_2.x)), 1i), _wgslsmith_sub_vec2_u32(max(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 61229u), vec2<u32>(1u, 60152u), vec2<u32>(7695u, 3864u))), vec2<u32>(1u, select(5370u, 16954u, true))), vec2<u32>(1u, 1u)), vec2<bool>(true, true), var_1.a.x);
    var var_4 = u_input.a;
    var_1 = Struct_2(vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(var_3.a.x | -1i), -global1[_wgslsmith_index_u32(37873u, 17u)] | (2147483647i | var_0.a.x)), func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1395f))), Struct_1(var_3.b.xyx, ~vec4<i32>(-2147483647i, var_2.x, var_3.e, 0i), vec2<u32>(0u, var_3.c.x), !vec2<bool>(global0[_wgslsmith_index_u32(var_3.c.x, 4u)], var_3.d.x), -1i), Struct_1(vec3<i32>(1i, var_2.x, var_1.a.x) | vec3<i32>(var_0.a.x, -2147483647i, -7712i), -vec4<i32>(43408i, -19755i, -2147483647i, var_3.b.x), var_3.c, !vec2<bool>(var_3.d.x, false), u_input.a)).a.x, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(-20479i, global1[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_dot_vec2_i32(~var_0.a.yy, vec2<i32>(-3670i, 2147483647i) & vec2<i32>(var_1.a.x, 0i)))));
    var var_5 = ~(~vec3<u32>(abs(func_2(vec4<f32>(805f, 420f, 530f, 1460f), vec2<f32>(595f, 1644f), Struct_1(var_1.a, var_3.b, vec2<u32>(0u, 0u), var_3.d, var_2.x), Struct_3(var_3.c, var_2.zx, var_3.d.x, Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(1u, 17u)], var_0.a.x, var_3.a.x), vec4<i32>(var_0.a.x, -1i, var_2.x, var_0.a.x), vec2<u32>(var_3.c.x, var_3.c.x), vec2<bool>(false, var_3.d.x), 2147483647i)))), ~468u, select(~var_3.c.x, 1u, any(var_3.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-716f, _wgslsmith_f_op_f32(floor(1673f)), -1050f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-550f, 154f, -1000f) - vec3<f32>(-381f, 1486f, -279f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-666f, 518f, -1165f))))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1285f)), _wgslsmith_f_op_f32(-150f - -1270f))), _wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-2044f, -525f, true))))), !vec3<bool>(!var_3.d.x, global0[_wgslsmith_index_u32(1u, 4u)], var_3.d.x & false))), func_1(Struct_5(_wgslsmith_dot_vec3_u32(vec3<u32>(var_5.x, var_5.x, 25834u), vec3<u32>(var_3.c.x, var_5.x, 0u))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3.c.x, _wgslsmith_mult_u32(1u, var_3.c.x)), 4u)]).a >> (abs(abs(firstTrailingBit(vec3<u32>(var_5.x, 85005u, 4840u)))) % vec3<u32>(32u)));
}

