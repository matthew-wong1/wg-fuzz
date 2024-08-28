struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(10163u, 40826u);

var<private> global1: array<vec4<u32>, 4>;

var<private> global2: array<f32, 18> = array<f32, 18>(421f, 1217f, -1000f, -881f, 1020f, -737f, -1293f, 1000f, 245f, 752f, -1356f, 1589f, -728f, 1623f, 830f, 372f, 553f, 734f);

var<private> global3: array<Struct_2, 24>;

var<private> global4: Struct_5 = Struct_5(1i, Struct_1(vec3<u32>(4294967295u, 4294967295u, 120197u), vec4<bool>(true, true, true, true)), vec2<bool>(true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_3) -> vec2<bool> {
    global1 = array<vec4<u32>, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(12635u, 18u)], 932f, 648f, global2[_wgslsmith_index_u32(arg_0.b.a.x, 18u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(17985u, 18u)], -1000f, 181f, -1501f)), any(arg_0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 18u)], -788f, global2[_wgslsmith_index_u32(0u, 18u)], -1363f) + vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)], -1206f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1316f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 18u)]), global2[_wgslsmith_index_u32(6609u, 18u)], 237f) + vec4<f32>(1f, 713f, _wgslsmith_f_op_f32(f32(-1f) * -716f), global2[_wgslsmith_index_u32(0u, 18u)])), vec4<bool>(all(arg_3.d.b.yx), all(arg_1.b.b.wyx), !all(vec2<bool>(true, true)), global4.b.b.x))));
    let var_1 = Struct_4(arg_2.a, ~_wgslsmith_sub_vec3_u32(arg_2.c.a, ~arg_3.d.a), arg_0.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.ywy), var_0.xzy)) * var_0.yxy);
    var var_3 = vec2<u32>(~_wgslsmith_div_u32(~(~51442u), _wgslsmith_clamp_u32(~global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u), arg_0.b.a), firstTrailingBit(65148u))), ~30018u);
    return select(select(select(select(!vec2<bool>(arg_1.c.x, true), !var_1.a.d.b.yz, global4.b.b.x || arg_3.a), arg_2.a.d.b.ww, !any(vec3<bool>(true, arg_1.c.x, arg_2.c.b.x))), !var_1.a.d.b.yx, arg_2.a.d.b.zx), select(vec2<bool>(any(arg_1.b.b), false), !select(!global4.b.b.yw, !arg_3.d.b.xz, true), !global4.c), arg_1.b.b.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_5(-1i, arg_2, select(select(func_3(Struct_5(19024i, Struct_1(arg_2.a, vec4<bool>(false, false, arg_1.b.x, true)), vec2<bool>(false, global4.c.x)), Struct_5(-2147483647i, arg_2, vec2<bool>(false, false)), Struct_4(Struct_3(arg_2.b.x, arg_1.a.x, vec4<i32>(arg_3.x, -10670i, u_input.b.x, arg_3.x), arg_2, 0i), arg_2.a, arg_2), Struct_3(false, 4294967295u, vec4<i32>(-1i, global4.a, arg_3.x, u_input.b.x), Struct_1(vec3<u32>(31876u, global0.x, 42882u), arg_2.b), 0i)), global4.b.b.yx, arg_1.b.x), select(vec2<bool>(!global4.b.b.x, !arg_2.b.x), !(!arg_2.b.xw), vec2<bool>(true, true)), false));
    var var_1 = min(arg_3 >> (~vec3<u32>(~arg_2.a.x, _wgslsmith_clamp_u32(global4.b.a.x, 4294967295u, 45458u), _wgslsmith_dot_vec3_u32(var_0.b.a, arg_1.a)) % vec3<u32>(32u)), arg_3);
    var var_2 = Struct_3(~_wgslsmith_add_i32(1i ^ global4.a, _wgslsmith_sub_i32(-1i, 36326i)) > arg_3.x, 0u, u_input.b, var_0.b, _wgslsmith_add_i32(~select(var_1.x, ~2147483647i, arg_0.x == arg_0.x), var_0.a));
    var var_3 = !(!func_3(Struct_5(~var_0.a, Struct_1(arg_2.a, vec4<bool>(arg_2.b.x, true, arg_1.b.x, false)), func_3(Struct_5(u_input.b.x, Struct_1(vec3<u32>(25900u, 8848u, global0.x), var_0.b.b), vec2<bool>(arg_2.b.x, true)), Struct_5(5621i, arg_1, var_0.b.b.xy), Struct_4(Struct_3(true, 23695u, var_2.c, Struct_1(global4.b.a, vec4<bool>(arg_1.b.x, false, global4.c.x, true)), 0i), vec3<u32>(global0.x, 1u, 101971u), Struct_1(vec3<u32>(13257u, global0.x, u_input.a), vec4<bool>(true, arg_1.b.x, true, arg_1.b.x))), Struct_3(global4.b.b.x, 73339u, vec4<i32>(-11187i, 27714i, 2147483647i, 0i), Struct_1(vec3<u32>(arg_1.a.x, 1u, 13245u), vec4<bool>(var_0.c.x, global4.c.x, true, global4.c.x)), -1i))), Struct_5(min(u_input.b.x, 1i), var_2.d, select(var_0.c, vec2<bool>(true, var_2.d.b.x), vec2<bool>(arg_2.b.x, false))), Struct_4(Struct_3(global4.c.x, 1996u, u_input.b, Struct_1(arg_1.a, vec4<bool>(false, true, var_2.a, var_2.d.b.x)), -22346i), var_0.b.a, global4.b), Struct_3(true, ~var_0.b.a.x, u_input.b << (global1[_wgslsmith_index_u32(var_2.d.a.x, 4u)] % vec4<u32>(32u)), Struct_1(vec3<u32>(u_input.a, 0u, arg_2.a.x), var_2.d.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.a, arg_3.x), vec3<i32>(var_1.x, arg_3.x, 2147483647i)))));
    var var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(63184u, var_2.d.a.x, ~0u, select(~min(20835u, 16450u), ~var_2.d.a.x, all(select(var_2.d.b, vec4<bool>(false, arg_2.b.x, false, true), true)))), vec4<u32>(firstLeadingBit(~u_input.a), 0u, 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1u), countOneBits(arg_1.a.yx))));
    return Struct_1(vec3<u32>(~(~_wgslsmith_clamp_u32(arg_2.a.x, global4.b.a.x, 11830u)), select(~76548u, u_input.a, !(!var_0.c.x)), ~arg_2.a.x), !vec4<bool>(true, false, true & any(var_2.d.b.xy), any(!var_0.b.b)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(83728u, 59692u, 0u)), vec3<u32>(1u, firstLeadingBit(5737u), func_2(vec3<f32>(1539f, arg_1, arg_1), Struct_1(arg_0.b, vec4<bool>(global4.c.x, false, global4.c.x, arg_0.a.a)), arg_0.a.d, vec3<i32>(global4.a, 34632i, -2147483647i)).a.x)), ~global4.b.a), 4u)] << (reverseBits(vec4<u32>(1u, firstTrailingBit(4294967295u), ~_wgslsmith_sub_u32(arg_3, 45189u), abs(global4.b.a.x) << (4294967295u % 32u))) % vec4<u32>(32u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-623f, arg_1, -1077f, global2[_wgslsmith_index_u32(u_input.a, 18u)])))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -572f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-373f)) * arg_1)), select(arg_2, firstLeadingBit(-4923i), arg_0.a.a), Struct_1(~arg_0.c.a, global4.b.b), global4.b);
    var var_2 = Struct_5(_wgslsmith_add_i32(2147483647i, global4.a), global4.b, vec2<bool>(28043i == arg_2, !any(vec3<bool>(false, arg_0.c.b.x, global4.c.x))));
    let var_3 = _wgslsmith_f_op_f32(var_1.a.x + 1636f);
    let var_4 = arg_0;
    return true;
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.b.a.x, 18u)]);
    var var_1 = !vec3<bool>(global4.c.x, true, func_4(Struct_4(Struct_3(global4.b.b.x, global4.b.a.x, u_input.b, global4.b, global4.a), global4.b.a >> (vec3<u32>(1u, 6100u, global0.x) % vec3<u32>(32u)), func_2(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 18u)], -148f, 408f), Struct_1(global4.b.a, vec4<bool>(global4.c.x, false, global4.b.b.x, false)), Struct_1(global4.b.a, global4.b.b), u_input.b.yxz)), global2[_wgslsmith_index_u32(global0.x, 18u)], _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, 1i), ~global4.a), global0.x));
    global4 = Struct_5(_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.b.x, 0i)) & select(reverseBits(vec2<i32>(-7054i, global4.a)), -vec2<i32>(global4.a, 6045i), true), _wgslsmith_add_vec2_i32(-vec2<i32>(-5531i, global4.a), _wgslsmith_mod_vec2_i32(u_input.b.wz ^ vec2<i32>(0i, global4.a), u_input.b.wy))), func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(235f, global2[_wgslsmith_index_u32(2795u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1142f, global2[_wgslsmith_index_u32(u_input.a, 18u)], -641f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global4.b.a.x, 18u)], global2[_wgslsmith_index_u32(65833u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)]))))), global4.b, func_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(12894u, 18u)], 114f))), Struct_1(vec3<u32>(4294967295u, global0.x, 0u), select(global4.b.b, global4.b.b, global4.b.b)), global4.b, abs(u_input.b.xyy)), vec3<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-77526i, -2147483647i, -15868i), u_input.b.zyz), abs(-13121i)), _wgslsmith_mod_i32(21055i, -global4.a), -(0i & global4.a))), var_1.xy);
    var var_2 = Struct_3(var_1.x, select(countOneBits(~(~17589u)), reverseBits(25703u), false), vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, 38194i, -2147483647i), u_input.b), -17318i & u_input.b.x), 66723i, firstLeadingBit(1i), ~u_input.b.x & -u_input.b.x), Struct_1(vec3<u32>(~1u, ~(~1u), abs(func_2(vec3<f32>(823f, 138f, 108f), Struct_1(vec3<u32>(38982u, u_input.a, u_input.a), vec4<bool>(true, false, var_1.x, global4.b.b.x)), Struct_1(vec3<u32>(u_input.a, global4.b.a.x, 17539u), vec4<bool>(false, global4.c.x, global4.c.x, global4.b.b.x)), vec3<i32>(42313i, 25326i, global4.a)).a.x)), select(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, -1451f, 1744f)), Struct_1(global4.b.a, vec4<bool>(true, var_1.x, false, false)), global4.b, max(vec3<i32>(global4.a, 18222i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, global4.a))).b, vec4<bool>(true, true, func_2(vec3<f32>(232f, global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)]), global4.b, Struct_1(global4.b.a, vec4<bool>(false, global4.c.x, true, global4.c.x)), vec3<i32>(1i, global4.a, global4.a)).b.x, all(global4.b.b.xxy)), func_2(vec3<f32>(1232f, global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)]), global4.b, Struct_1(vec3<u32>(27419u, u_input.a, 15125u), vec4<bool>(false, var_1.x, global4.c.x, var_1.x)), vec3<i32>(0i, u_input.b.x, u_input.b.x) & u_input.b.xwx).b)), 36166i);
    global1 = array<vec4<u32>, 4>();
    return Struct_5(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -var_2.e, u_input.b.x, 0i), vec4<i32>(0i, firstTrailingBit(var_2.e), _wgslsmith_mod_i32(_wgslsmith_div_i32(global4.a, 71409i), _wgslsmith_add_i32(-4516i, 2147483647i)), var_2.c.x & ~1i)), global4.b, vec2<bool>(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(41660u, 18u)], 209f, 233f))), Struct_1(~global4.b.a, vec4<bool>(false, global4.b.b.x, var_1.x, true)), Struct_1(var_2.d.a, !var_2.d.b), _wgslsmith_mult_vec3_i32(u_input.b.zyy, _wgslsmith_div_vec3_i32(vec3<i32>(27444i, u_input.b.x, 51257i), vec3<i32>(-2147483647i, 8137i, var_2.c.x)))).b.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~abs(global0.x);
    global2 = array<f32, 18>();
    global0 = _wgslsmith_div_vec2_u32(~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, 1u), global4.b.a.zy)) << ((vec2<u32>(~var_0.b.a.x, var_0.b.a.x) & ~func_2(vec3<f32>(global2[_wgslsmith_index_u32(var_0.b.a.x, 18u)], 703f, global2[_wgslsmith_index_u32(u_input.a, 18u)]), Struct_1(global4.b.a, global4.b.b), var_0.b, vec3<i32>(var_0.a, 0i, -2147483647i)).a.yx) % vec2<u32>(32u)), ~((vec2<u32>(15132u, global0.x) & var_0.b.a.xz) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))) << (select(max(var_0.b.a.xy, _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 1082u), global4.b.a.xy)), vec2<u32>(func_2(vec3<f32>(410f, global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)]), Struct_1(vec3<u32>(var_1, u_input.a, u_input.a), vec4<bool>(false, var_0.c.x, true, true)), global4.b, u_input.b.yyz).a.x, ~4294967295u), !func_2(vec3<f32>(global2[_wgslsmith_index_u32(var_0.b.a.x, 18u)], global2[_wgslsmith_index_u32(var_0.b.a.x, 18u)], 1000f), Struct_1(global4.b.a, vec4<bool>(true, var_0.c.x, var_0.b.b.x, false)), Struct_1(vec3<u32>(var_0.b.a.x, global0.x, 4294967295u), vec4<bool>(false, global4.c.x, global4.c.x, true)), vec3<i32>(var_0.a, 18377i, var_0.a)).b.ww) % vec2<u32>(32u)));
    var var_2 = global2[_wgslsmith_index_u32(global4.b.a.x, 18u)];
    global4 = func_1();
    let var_3 = vec3<i32>(firstTrailingBit(-2147483647i) & _wgslsmith_sub_i32(~14799i, firstLeadingBit(max(1i, 14047i))), ~_wgslsmith_add_i32(countOneBits(~u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-12952i, global4.a, var_0.a, global4.a), vec4<i32>(34151i, 2147483647i, 2147483647i, 0i) | vec4<i32>(u_input.b.x, 2147483647i, global4.a, -27156i))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(select(u_input.b.yzy, vec3<i32>(-2147483647i, var_0.a, 2147483647i), false)), vec3<i32>(_wgslsmith_mod_i32(-35117i, global4.a), _wgslsmith_div_i32(1i, -1i), -2790i)), firstTrailingBit(1i)));
    var var_4 = vec4<bool>(global4.c.x, global4.c.x, any(!func_1().b.b.wy), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f) * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4.b.a.xx, vec2<u32>(u_input.a, 19797u)), 18u)]) - _wgslsmith_f_op_f32(ceil(-760f)))), ~vec2<u32>(~70064u, ~1u), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -669f));
}

