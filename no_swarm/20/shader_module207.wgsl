struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_2(Struct_1(i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, -49144i, -1i))), Struct_4(Struct_2(Struct_1(2147483647i), vec4<i32>(45041i, -25303i, -2132i, -50508i))), Struct_4(Struct_2(Struct_1(-9537i), vec4<i32>(0i, -3606i, 1i, 52792i))), Struct_4(Struct_2(Struct_1(i32(-2147483648)), vec4<i32>(0i, 2147483647i, -28274i, 8296i))), Struct_4(Struct_2(Struct_1(-1i), vec4<i32>(-10601i, 1i, 7036i, 1i))), Struct_4(Struct_2(Struct_1(-2401i), vec4<i32>(2147483647i, -45335i, 1i, 2147483647i))), Struct_4(Struct_2(Struct_1(-5871i), vec4<i32>(0i, i32(-2147483648), 4544i, -93i))), Struct_4(Struct_2(Struct_1(i32(-2147483648)), vec4<i32>(0i, 2147483647i, -8141i, 72465i))), Struct_4(Struct_2(Struct_1(i32(-2147483648)), vec4<i32>(-84534i, 2147483647i, 2147483647i, -1i))), Struct_4(Struct_2(Struct_1(-28947i), vec4<i32>(1i, 15088i, -1i, -4022i))), Struct_4(Struct_2(Struct_1(26800i), vec4<i32>(-1i, 6585i, 17264i, 13382i))), Struct_4(Struct_2(Struct_1(-1i), vec4<i32>(-1i, -1i, -1871i, 21435i))), Struct_4(Struct_2(Struct_1(2147483647i), vec4<i32>(0i, 30032i, -16302i, 2147483647i))), Struct_4(Struct_2(Struct_1(-1i), vec4<i32>(1i, 1i, i32(-2147483648), 26324i))), Struct_4(Struct_2(Struct_1(1i), vec4<i32>(-47141i, -1i, 2147483647i, 7660i))), Struct_4(Struct_2(Struct_1(0i), vec4<i32>(i32(-2147483648), 0i, 36398i, 74950i))), Struct_4(Struct_2(Struct_1(3059i), vec4<i32>(52792i, 1i, i32(-2147483648), -47257i))), Struct_4(Struct_2(Struct_1(27817i), vec4<i32>(1i, 1i, -20022i, -1i))), Struct_4(Struct_2(Struct_1(0i), vec4<i32>(-23375i, i32(-2147483648), -1400i, 15399i))), Struct_4(Struct_2(Struct_1(-47900i), vec4<i32>(0i, 37157i, 1275i, i32(-2147483648)))), Struct_4(Struct_2(Struct_1(2147483647i), vec4<i32>(1i, 2147483647i, 2147483647i, -41736i))), Struct_4(Struct_2(Struct_1(-38522i), vec4<i32>(30375i, 2147483647i, i32(-2147483648), 18166i))), Struct_4(Struct_2(Struct_1(3126i), vec4<i32>(-1i, 62858i, 2147483647i, 2147483647i))), Struct_4(Struct_2(Struct_1(0i), vec4<i32>(-1i, 9332i, 2450i, -3321i))));

var<private> global2: array<i32, 20>;

var<private> global3: array<vec3<i32>, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = global0.x;
    global0 = !arg_0.xyx;
    var var_1 = u_input.b;
    var var_2 = ~_wgslsmith_mod_i32(arg_2.a, -arg_2.a);
    global3 = array<vec3<i32>, 18>();
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3) -> vec4<bool> {
    global3 = array<vec3<i32>, 18>();
    global2 = array<i32, 20>();
    global2 = array<i32, 20>();
    var var_0 = global1[_wgslsmith_index_u32(51517u, 24u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -766f), _wgslsmith_f_op_f32(min(-649f, _wgslsmith_f_op_f32(trunc(-999f))))))));
    return vec4<bool>(global0.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(12026u, 0u), _wgslsmith_div_u32(u_input.b, 82594u)), 10694u) > _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b, 95623u), ~vec3<u32>(62100u, u_input.b, 27962u)), true, all(select(!(!vec4<bool>(false, global0.x, true, true)), !(!vec4<bool>(false, false, global0.x, true)), vec4<bool>(select(global0.x, false, global0.x), false, true, func_3(vec4<bool>(false, true, global0.x, true), -1329i, var_0.a.a)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_1 {
    global0 = !(!arg_2.wwz);
    var var_0 = _wgslsmith_div_u32(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), _wgslsmith_div_u32(63247u, 17455u)), vec3<u32>(u_input.b & u_input.b, 1u, 28752u))) << (4294967295u % 32u);
    var var_1 = arg_3.b;
    global0 = vec3<bool>(arg_2.x, func_2(arg_3.b, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, ~var_1.a.a), var_1.b.zw), arg_1).x, func_3(select(vec4<bool>(true, all(arg_2.zwz), true, arg_0.x), func_2(arg_3.b, vec2<i32>(u_input.c.x, -2147483647i), arg_1), arg_2.x), -abs(u_input.a.x) << (129987u % 32u), var_1.a));
    var var_2 = 1049f;
    return arg_3.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1365f))))));
    let var_1 = Struct_3(func_4(vec4<bool>(!global0.x, all(func_2(Struct_2(Struct_1(55391i), vec4<i32>(u_input.c.x, 2147483647i, global2[_wgslsmith_index_u32(0u, 20u)], arg_0.x)), vec2<i32>(u_input.a.x, -1i), Struct_3(Struct_1(global2[_wgslsmith_index_u32(1u, 20u)]), Struct_2(Struct_1(arg_0.x), vec4<i32>(-45703i, u_input.c.x, -2147483647i, arg_0.x))))), arg_1.x, true), Struct_3(Struct_1(firstTrailingBit(-1i)), Struct_2(Struct_1(arg_0.x), ~vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 20u)], global2[_wgslsmith_index_u32(6036u, 20u)], arg_0.x, u_input.c.x))), !vec4<bool>(any(vec3<bool>(arg_1.x, global0.x, global0.x)), true, u_input.b == u_input.b, select(global0.x, global0.x, global0.x)), Struct_3(Struct_1(select(2147483647i, u_input.c.x, global0.x)), Struct_2(Struct_1(-30924i), abs(vec4<i32>(u_input.a.x, arg_0.x, 293i, -24055i))))), Struct_2(Struct_1(13159i), ~vec4<i32>(u_input.a.x, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(1u, 20u)], u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.x), arg_0), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b), 20u)])));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) + _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), 207f)))));
    let var_3 = var_1.b.a;
    var var_4 = _wgslsmith_f_op_f32(-var_0);
    return _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(select(vec2<u32>(13423u, 44045u) | vec2<u32>(121u, u_input.b), vec2<u32>(u_input.b, 4294967295u), global0.x), vec2<u32>(u_input.b, u_input.b))), vec2<u32>(countOneBits(u_input.b), 4855u) & select(vec2<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), ~u_input.b), ~vec2<u32>(u_input.b, 16471u) & vec2<u32>(4294967295u, u_input.b), arg_1));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32) -> Struct_3 {
    var var_0 = select(func_2(Struct_2(func_4(func_2(Struct_2(Struct_1(u_input.a.x), vec4<i32>(u_input.a.x, 13050i, -2147483647i, u_input.c.x)), vec2<i32>(33301i, 2147483647i), Struct_3(Struct_1(-2147483647i), Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.b, 20u)]), vec4<i32>(global2[_wgslsmith_index_u32(44466u, 20u)], 4560i, global2[_wgslsmith_index_u32(4294967295u, 20u)], -2147483647i)))), Struct_3(Struct_1(u_input.c.x), Struct_2(Struct_1(1i), vec4<i32>(-1i, 1i, 2147483647i, -2147483647i))), !vec4<bool>(false, global0.x, false, true), Struct_3(Struct_1(global2[_wgslsmith_index_u32(arg_1, 20u)]), Struct_2(Struct_1(u_input.c.x), vec4<i32>(-12772i, global2[_wgslsmith_index_u32(arg_1, 20u)], -2147483647i, 0i)))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c.x, 2147483647i, global2[_wgslsmith_index_u32(u_input.b, 20u)]) ^ vec4<i32>(18011i, 12475i, 1i, global2[_wgslsmith_index_u32(9951u, 20u)]), vec4<i32>(global2[_wgslsmith_index_u32(arg_1, 20u)], -2147483647i, 2147483647i, u_input.a.x))), _wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.c), u_input.a << (vec2<u32>(arg_1, 4294967295u) % vec2<u32>(32u))) & vec2<i32>(-u_input.c.x, _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(1u, 18u)])), Struct_3(Struct_1(-4350i), Struct_2(func_4(vec4<bool>(global0.x, true, false, global0.x), Struct_3(Struct_1(3788i), Struct_2(Struct_1(16985i), vec4<i32>(15789i, u_input.c.x, global2[_wgslsmith_index_u32(0u, 20u)], u_input.c.x))), vec4<bool>(global0.x, global0.x, false, global0.x), Struct_3(Struct_1(1i), Struct_2(Struct_1(global2[_wgslsmith_index_u32(arg_1, 20u)]), vec4<i32>(u_input.a.x, 1i, -2974i, u_input.a.x)))), countOneBits(vec4<i32>(global2[_wgslsmith_index_u32(0u, 20u)], -2451i, 2147483647i, global2[_wgslsmith_index_u32(u_input.b, 20u)]))))).xwz, vec3<bool>(all(func_2(Struct_2(Struct_1(-2147483647i), vec4<i32>(-2147483647i, -7571i, global2[_wgslsmith_index_u32(u_input.b, 20u)], u_input.a.x)), vec2<i32>(1i, 34299i), Struct_3(Struct_1(global2[_wgslsmith_index_u32(arg_1, 20u)]), Struct_2(Struct_1(60513i), vec4<i32>(1i, u_input.a.x, 2147483647i, global2[_wgslsmith_index_u32(u_input.b, 20u)])))).zw), true, any(select(!vec3<bool>(true, global0.x, false), func_2(Struct_2(Struct_1(1i), vec4<i32>(4807i, -28999i, -9371i, -1i)), vec2<i32>(u_input.c.x, u_input.c.x), Struct_3(Struct_1(24955i), Struct_2(Struct_1(1i), vec4<i32>(u_input.c.x, 2147483647i, -2147483647i, -1i)))).zyw, vec3<bool>(global0.x, false, global0.x)))), func_3(!(!vec4<bool>(global0.x, false, global0.x, global0.x)), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b, ~8378u), 20u)], func_4(func_2(Struct_2(Struct_1(-2147483647i), vec4<i32>(-1i, global2[_wgslsmith_index_u32(6037u, 20u)], 0i, u_input.a.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 45489i), u_input.c), Struct_3(Struct_1(u_input.c.x), Struct_2(Struct_1(-6269i), vec4<i32>(global2[_wgslsmith_index_u32(arg_1, 20u)], -15041i, global2[_wgslsmith_index_u32(28850u, 20u)], 46117i)))), Struct_3(func_4(vec4<bool>(global0.x, global0.x, global0.x, global0.x), Struct_3(Struct_1(-2147483647i), Struct_2(Struct_1(6976i), vec4<i32>(u_input.a.x, 1i, -95555i, -2147483647i))), vec4<bool>(global0.x, false, global0.x, true), Struct_3(Struct_1(-2147483647i), Struct_2(Struct_1(1i), vec4<i32>(12125i, global2[_wgslsmith_index_u32(12429u, 20u)], 39175i, global2[_wgslsmith_index_u32(u_input.b, 20u)])))), Struct_2(Struct_1(global2[_wgslsmith_index_u32(1u, 20u)]), vec4<i32>(u_input.a.x, 2570i, global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(arg_1, 20u)]))), !select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, false, false, global0.x), global0.x), Struct_3(Struct_1(global2[_wgslsmith_index_u32(0u, 20u)]), Struct_2(Struct_1(35789i), vec4<i32>(-21692i, -2147483647i, -2147483647i, -47963i))))));
    let var_1 = ~(~vec2<u32>(u_input.b, ~0u) & vec2<u32>((u_input.b << (74374u % 32u)) >> (~arg_1 % 32u), u_input.b));
    var var_2 = Struct_3(func_4(!(!select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, global0.x, true, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x))), Struct_3(func_4(select(vec4<bool>(global0.x, false, true, false), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, global0.x, var_0.x, false)), Struct_3(Struct_1(-40923i), Struct_2(Struct_1(global2[_wgslsmith_index_u32(arg_1, 20u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], 17725i, 1i))), func_2(Struct_2(Struct_1(global2[_wgslsmith_index_u32(var_1.x, 20u)]), vec4<i32>(u_input.c.x, global2[_wgslsmith_index_u32(22673u, 20u)], -2147483647i, 2147483647i)), u_input.c, Struct_3(Struct_1(52107i), Struct_2(Struct_1(global2[_wgslsmith_index_u32(41023u, 20u)]), vec4<i32>(0i, u_input.c.x, -1i, global2[_wgslsmith_index_u32(14624u, 20u)])))), Struct_3(Struct_1(u_input.c.x), Struct_2(Struct_1(0i), vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.b, 20u)], u_input.a.x, -2147483647i)))), Struct_2(Struct_1(u_input.a.x), reverseBits(vec4<i32>(global2[_wgslsmith_index_u32(arg_1, 20u)], 1093i, u_input.c.x, u_input.c.x)))), vec4<bool>(func_3(vec4<bool>(global0.x, true, true, true), global2[_wgslsmith_index_u32(u_input.b, 20u)], Struct_1(u_input.a.x)), any(vec3<bool>(global0.x, true, var_0.x)), true, all(!vec4<bool>(true, global0.x, true, true))), Struct_3(func_4(vec4<bool>(false, false, var_0.x, var_0.x), Struct_3(Struct_1(u_input.a.x), Struct_2(Struct_1(u_input.c.x), vec4<i32>(u_input.c.x, 14262i, u_input.a.x, 34382i))), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), Struct_3(Struct_1(global2[_wgslsmith_index_u32(var_1.x, 20u)]), Struct_2(Struct_1(0i), vec4<i32>(16252i, 2147483647i, u_input.c.x, global2[_wgslsmith_index_u32(45750u, 20u)])))), Struct_2(func_4(vec4<bool>(true, global0.x, false, false), Struct_3(Struct_1(global2[_wgslsmith_index_u32(13016u, 20u)]), Struct_2(Struct_1(global2[_wgslsmith_index_u32(72387u, 20u)]), vec4<i32>(u_input.a.x, 0i, global2[_wgslsmith_index_u32(u_input.b, 20u)], 9578i))), vec4<bool>(false, true, global0.x, var_0.x), Struct_3(Struct_1(-1i), Struct_2(Struct_1(1i), vec4<i32>(-41949i, -52550i, -2147483647i, -1i)))), min(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(var_1.x, 20u)], u_input.a.x, -12283i), vec4<i32>(global2[_wgslsmith_index_u32(var_1.x, 20u)], 1i, -38170i, -10089i))))), Struct_2(func_4(vec4<bool>(global0.x, var_0.x | global0.x, all(vec3<bool>(global0.x, true, true)), false), Struct_3(func_4(vec4<bool>(var_0.x, global0.x, false, global0.x), Struct_3(Struct_1(u_input.c.x), Struct_2(Struct_1(1i), vec4<i32>(-1118i, -23773i, u_input.a.x, 2147483647i))), vec4<bool>(global0.x, true, var_0.x, true), Struct_3(Struct_1(-2147483647i), Struct_2(Struct_1(1i), vec4<i32>(global2[_wgslsmith_index_u32(var_1.x, 20u)], 2147483647i, 0i, u_input.a.x)))), Struct_2(Struct_1(u_input.c.x), vec4<i32>(u_input.c.x, 24837i, global2[_wgslsmith_index_u32(var_1.x, 20u)], -63205i))), !select(vec4<bool>(false, global0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, global0.x, var_0.x, var_0.x), vec4<bool>(false, true, false, global0.x)), Struct_3(func_4(vec4<bool>(var_0.x, false, false, false), Struct_3(Struct_1(-18897i), Struct_2(Struct_1(u_input.c.x), vec4<i32>(-71187i, u_input.a.x, -34065i, 57749i))), vec4<bool>(var_0.x, global0.x, false, false), Struct_3(Struct_1(-41992i), Struct_2(Struct_1(-1i), vec4<i32>(1i, 1i, u_input.c.x, global2[_wgslsmith_index_u32(0u, 20u)])))), Struct_2(Struct_1(global2[_wgslsmith_index_u32(arg_1, 20u)]), vec4<i32>(global2[_wgslsmith_index_u32(26415u, 20u)], global2[_wgslsmith_index_u32(4577u, 20u)], 44i, -35849i)))), vec4<i32>(-1i << (_wgslsmith_sub_u32(1u, 0u) % 32u), u_input.a.x, -abs(0i), 5745i)));
    global2 = array<i32, 20>();
    var var_3 = Struct_3(Struct_1(max(u_input.c.x, -1i)), var_2.b);
    return Struct_3(Struct_1(i32(-1i) * -var_2.a.a), var_3.b);
}

fn func_6(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    let var_0 = arg_1.b;
    let var_1 = 58842u;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1571f)) * _wgslsmith_f_op_f32(floor(1f))))) + _wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1000f, 1005f, arg_0))))))));
    var var_4 = false;
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(69752u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.b, ~0u), countOneBits(~4294967295u) >> (firstTrailingBit(firstLeadingBit(0u)) % 32u))), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 20>();
    var var_0 = func_6(false, func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 363f) - vec2<f32>(-357f, 923f)))), firstLeadingBit(~func_1(u_input.c, global0.xy))));
    let var_1 = func_6(_wgslsmith_mod_u32(firstTrailingBit(1u | u_input.b), 1u) <= ~(~(~u_input.b)), Struct_3(var_0.a.a, func_5(vec2<f32>(-667f, _wgslsmith_f_op_f32(abs(1677f))), 1u).b));
    var var_2 = Struct_1(firstLeadingBit(global2[_wgslsmith_index_u32(~0u, 20u)]));
    global1 = array<Struct_4, 24>();
    let var_3 = func_5(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1177f, 1302f))), u_input.b).b;
    global0 = vec3<bool>(func_1(var_1.a.b.xy, global0.yy) == countOneBits(func_1(var_3.b.yz, global0.zz)), all(!(!select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), false))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(~(~var_3.b.wwx), select(var_0.a.b.yxy, var_3.b.wxz | global3[_wgslsmith_index_u32(u_input.b, 18u)], true)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -23617i), abs(var_1.a.b.xw)), ~_wgslsmith_dot_vec3_i32(var_1.a.b.ywy, vec3<i32>(39827i, 1i, -18744i)), max(-48065i, 1i))), firstLeadingBit(-27282i), max(-var_0.a.b.zwz, var_0.a.b.xxy), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-426f, 502f), 1141f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(407f, 1117f, -720f))));
}

