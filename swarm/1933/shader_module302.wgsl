struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1079f;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(92921u, 0u, 0u), vec4<i32>(-44322i, -35949i, 2147483647i, -75006i)), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(1u, 0u, 58762u), vec4<i32>(57874i, 0i, 25697i, 0i)), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 1u, 4294967295u), vec4<i32>(2147483647i, 1i, 29456i, -28535i)), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(15578u, 25774u, 45745u), vec4<i32>(15893i, 232i, -48303i, 12727i)), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(0u, 49153u, 0u), vec4<i32>(1i, -63983i, -1i, 2147483647i)), Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(0u, 0u, 4294967295u), vec4<i32>(1i, i32(-2147483648), 14393i, 13911i)), Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(1u, 4294967295u, 10528u), vec4<i32>(1i, -18379i, 31742i, -47216i)), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(47020u, 4875u, 4294967295u), vec4<i32>(i32(-2147483648), 0i, -27247i, 39619i)), Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(0u, 4294967295u, 0u), vec4<i32>(1i, -16662i, -45569i, 2147483647i)), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(1u, 4294967295u, 1u), vec4<i32>(28079i, 41290i, -61573i, -33298i)), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(12332u, 21202u, 5639u), vec4<i32>(-13703i, 0i, -22672i, 23737i)), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 1854u, 4294967295u), vec4<i32>(-23862i, 1i, 2147483647i, 2147483647i)));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(65953u, 26381u, 89347u), vec4<i32>(3117i, 57375i, 1709i, -37955i));

var<private> global3: Struct_1;

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 48135u, 1u, 1u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    global1 = array<Struct_1, 12>();
    var var_0 = select(vec2<bool>(true, true), !(!global2.a.wx), arg_0.a.wx);
    global1 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(298f, 668f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(253f, -854f)) - vec2<f32>(-1739f, 363f)))))));
    let var_2 = Struct_1(global2.a, max(vec3<u32>(countOneBits(arg_0.b.x) & _wgslsmith_div_u32(global4.x, global4.x), ~min(30478u, arg_0.b.x), u_input.e), global4.yzz), _wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(arg_0.c, -arg_0.c)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global3.c.x, u_input.a, -2147483647i, 23512i), arg_0.c), vec4<i32>(arg_0.c.x, -1i, arg_1, global2.c.x) >> (vec4<u32>(74433u, 0u, u_input.e, global2.b.x) % vec4<u32>(32u)), reverseBits(arg_0.c)))));
    return var_1.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(f32(-1f) * -1302f)), 1128f, _wgslsmith_f_op_f32(func_3(Struct_1(select(vec4<bool>(true, arg_1.a.x, false, false), vec4<bool>(true, true, arg_1.a.x, false), vec4<bool>(true, global3.a.x, global2.a.x, false)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 94484u, 4294967295u), vec3<u32>(34725u, u_input.b, global3.b.x)), arg_1.c), global2.c.x)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1261f, var_0.x)) * _wgslsmith_f_op_f32(var_0.x + -2833f)));
    let var_2 = global1[_wgslsmith_index_u32(u_input.b, 12u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 256f, var_0.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1940f, 1257f, 676f, var_0.x) - vec4<f32>(var_0.x, 452f, -389f, 409f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1503f, var_0.x))))))));
    var var_4 = _wgslsmith_mult_u32(36953u, 1u);
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(arg_2, 4294967295u), global2.b.x), 12u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    global2 = func_2(arg_2.a, Struct_1(vec4<bool>(false, true, any(vec3<bool>(global2.a.x, true, true)), global2.a.x & arg_0.a.x), max(_wgslsmith_mod_vec3_u32(vec3<u32>(56026u, u_input.b, global3.b.x), _wgslsmith_add_vec3_u32(global3.b, vec3<u32>(56992u, global2.b.x, 1u))), vec3<u32>(~29609u, _wgslsmith_add_u32(arg_2.b.x, 22057u), global4.x)), max(vec4<i32>(arg_2.c.x, -global2.c.x, global2.c.x, ~(-2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(7529i, 2147483647i, -19147i, 18897i), global3.c))), ~arg_2.b.x | 85129u);
    var var_0 = Struct_1(!(!func_2(vec4<bool>(false, arg_0.a.x, true, true), arg_2, global4.x).a), global3.b, arg_0.c);
    let var_1 = reverseBits(~u_input.c);
    let var_2 = func_2(select(global2.a, select(!global2.a, !(!vec4<bool>(false, arg_0.a.x, global3.a.x, arg_0.a.x)), select(!vec4<bool>(false, var_0.a.x, arg_2.a.x, false), global2.a, false)), any(global2.a.xx) || (arg_0.a.x & any(vec4<bool>(false, true, arg_2.a.x, arg_2.a.x)))), Struct_1(!arg_2.a, arg_0.b, vec4<i32>(0i, ~countOneBits(var_1), _wgslsmith_dot_vec3_i32(global2.c.zxy, select(vec3<i32>(arg_2.c.x, arg_2.c.x, global3.c.x), global2.c.wzx, global3.a.x)), -1i)), global2.b.x);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(526f, -463f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -215f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2630f * _wgslsmith_div_f32(-2337f, -815f))));
    return -2193f;
}

fn func_1() -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(437f, -1000f))), _wgslsmith_f_op_f32(func_4(func_2(vec4<bool>(true, false, global3.a.x, global3.a.x), global1[_wgslsmith_index_u32(35928u, 12u)], global2.b.x), _wgslsmith_div_vec3_i32(global3.c.xzw, vec3<i32>(0i, -12197i, 1i)), func_2(global2.a, Struct_1(global3.a, global4.zyy, vec4<i32>(1i, 1i, 1i, -15880i)), u_input.b))))));
    global3 = func_2(func_2(!select(select(vec4<bool>(global2.a.x, global3.a.x, global2.a.x, global3.a.x), vec4<bool>(global2.a.x, global3.a.x, global2.a.x, false), true), vec4<bool>(global2.a.x, false, true, true), !global2.a), global1[_wgslsmith_index_u32(~(~1u), 12u)], ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4.x, 66622u, global2.b.x), vec4<u32>(global2.b.x, 1u, 4294967295u, 4294967295u)))).a, Struct_1(global3.a, vec3<u32>(global3.b.x ^ 4294967295u, ~54849u, _wgslsmith_div_u32(global2.b.x, u_input.b)) & ((global4.yzy ^ global4.zxz) >> ((global4.xzz << (vec3<u32>(4294967295u, 0u, global4.x) % vec3<u32>(32u))) % vec3<u32>(32u))), min(-global2.c, ~vec4<i32>(2147483647i, u_input.a, global2.c.x, u_input.a)) << ((reverseBits(vec4<u32>(global4.x, 1u, 137627u, 28778u)) ^ ~vec4<u32>(u_input.e, 1u, global2.b.x, 4294967295u)) % vec4<u32>(32u))), 114455u);
    global3 = func_2(select(!global2.a, vec4<bool>(true, ~(-1i) > min(global2.c.x, -5537i), true, true), true), Struct_1(select(vec4<bool>(global3.c.x < u_input.a, 59094i >= global2.c.x, global2.a.x, global3.a.x), global2.a, true), global4.yxx, _wgslsmith_div_vec4_i32(select(vec4<i32>(global2.c.x, 2147483647i, global2.c.x, global2.c.x) & global2.c, abs(global3.c), global3.a), vec4<i32>(~u_input.c, 2147483647i, ~u_input.a, -1i))), _wgslsmith_dot_vec3_u32(global2.b, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, global2.b.x, 126184u), vec3<u32>(u_input.b, 1u, 1u)), vec3<u32>(global4.x, 47803u, 20236u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, global2.b.x), global3.b))));
    global4 = firstLeadingBit(vec4<u32>(1532u, ~1u, min(0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b, global4.x), ~global4.x)), reverseBits(37777u) & global2.b.x));
    var var_0 = true;
    return 41668i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.x;
    global0 = 1085f;
    let var_1 = global3.c.wx;
    var var_2 = Struct_1(vec4<bool>(select(true, select(true, global2.a.x, true), global3.a.x), true, false | any(vec3<bool>(global3.a.x, global2.a.x, false)), global3.a.x), global4.yxw, vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(global3.c.x, global2.c.x, var_1.x, global2.c.x)), global3.c), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global2.c.x, u_input.a, global2.c.x), vec4<i32>(-1i, 2147483647i, global3.c.x, global2.c.x))), u_input.c, -func_1(), u_input.c));
    var var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, func_2(global2.a, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~100163u, abs(1u)), 12u)], ~40892u).b.x), 12u)];
    let var_4 = false;
    global4 = ~firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, 5837u) ^ var_3.b.yz, _wgslsmith_sub_vec2_u32(global4.xy, global2.b.yx)), 4294967295u, 33534u, 21952u));
    var var_5 = func_2(vec4<bool>(false & !any(var_2.a.www), true, false, !(!all(var_3.a))), Struct_1(global3.a, ~vec3<u32>(_wgslsmith_div_u32(u_input.e, global3.b.x), countOneBits(u_input.b), global4.x), abs(abs(var_2.c)) & global3.c), _wgslsmith_mult_u32(21684u, ~global2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1299f, -1000f, -828f))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-355f, 2085f), vec2<f32>(-1974f, 1174f), vec2<bool>(false, true))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(221f, -1650f), vec2<f32>(560f, -181f), true))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-254f, 304f))))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-487f, 809f))))))));
}

