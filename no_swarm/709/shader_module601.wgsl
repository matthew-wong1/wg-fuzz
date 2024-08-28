struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3>;

var<private> global1: array<i32, 4>;

var<private> global2: vec4<f32>;

var<private> global3: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(-1i, 1i, -19657i), vec3<i32>(2147483647i, 10113i, -54140i), vec3<i32>(-40605i, 2147483647i, 2147483647i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(1i, 0i, -67325i));

var<private> global4: Struct_1 = Struct_1(-409f, vec4<f32>(1031f, -1835f, -211f, 764f), 1i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_4(Struct_3(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 1u ^ u_input.a), u_input.a, 22691u, u_input.a), Struct_1(_wgslsmith_f_op_f32(floor(-476f)), global4.b, ~_wgslsmith_mod_i32(-2147483647i, 16879i)), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a, 38072u), vec3<u32>(23057u, 0u, u_input.a)), 49064u)), vec3<u32>(10152u, ~(~4294967295u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(8637u, u_input.a, u_input.a) << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(4294967295u, 0u, 0u))), ~(min(u_input.a, 81572u) | u_input.a)), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))));
    var var_1 = var_0.a.a;
    let var_2 = _wgslsmith_mult_u32(var_1.x, ~(~(~var_1.x) & firstTrailingBit(~4294967295u)));
    global3 = array<vec3<i32>, 7>();
    let var_3 = vec4<u32>(firstLeadingBit(~var_2), max(_wgslsmith_dot_vec2_u32(vec2<u32>(40046u, var_0.b.x), abs(var_1.yx)), ~1u) & var_1.x, 4294967295u, abs(var_2) << (22019u % 32u));
    return vec4<u32>(select(25333u, var_1.x, 51484i == _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 4u)], arg_1.c)), firstTrailingBit(37292u), var_3.x, 4294967295u);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_4 {
    let var_0 = arg_2.c.b.zwy;
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = arg_0.a;
    let var_3 = Struct_4(Struct_3(~(func_3(global4.a, Struct_1(global4.b.x, vec4<f32>(arg_0.d, arg_2.c.a, -638f, var_2.b.b.x), 18924i)) << (abs(var_2.a) % vec4<u32>(32u))), arg_2.c, max(select(arg_0.a.c & arg_0.a.a.xz, abs(vec2<u32>(arg_0.a.a.x, arg_0.b.x)), select(arg_1.yy, vec2<bool>(arg_0.c, false), arg_2.b.x)), (var_2.c ^ vec2<u32>(78772u, arg_0.b.x)) ^ min(vec2<u32>(u_input.a, 8019u), arg_0.b.yy))), vec3<u32>(~0u, 4294967295u, _wgslsmith_div_u32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -250f), var_2.b).x, arg_0.a.a.x)), arg_0.c, _wgslsmith_f_op_f32(-arg_0.d));
    var var_4 = vec4<u32>(_wgslsmith_div_u32(var_2.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(44244u, var_3.b.x, 0u, u_input.a)), var_3.a.a), ~arg_0.a.a & var_3.a.a)), u_input.a, ~var_3.a.a.x, ~(var_2.a.x | u_input.a));
    return Struct_4(arg_0.a, abs(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(91780u, 16509u, 122818u), var_2.a.wwx) | ~var_3.a.a.yzx, _wgslsmith_add_vec3_u32(var_4.wwz, vec3<u32>(79833u, u_input.a, u_input.a)) << (~var_2.a.yxz % vec3<u32>(32u)))), true, var_3.a.b.b.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<bool>) -> Struct_5 {
    let var_0 = arg_1.a.b;
    let var_1 = var_0.a;
    var var_2 = func_2(Struct_4(Struct_3(_wgslsmith_clamp_vec4_u32(arg_1.a.a, ~arg_0.a.a, ~arg_0.a.a), Struct_1(func_2(arg_0, vec4<bool>(arg_1.c, arg_1.c, false, true), Struct_2(Struct_1(var_0.a, var_0.b, -2147483647i), arg_2.wzw, Struct_1(arg_0.a.b.b.x, arg_0.a.b.b, global1[_wgslsmith_index_u32(1u, 4u)]), vec2<i32>(2147483647i, 1i))).a.b.b.x, var_0.b, global4.c >> (61281u % 32u)), vec2<u32>(func_3(-904f, Struct_1(var_1, arg_1.a.b.b, 1i)).x, 27551u)), arg_0.a.a.xwy | _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 43487u, arg_1.a.a.x), arg_0.b), vec3<u32>(u_input.a, arg_1.b.x, u_input.a)), arg_0.c, 1f), select(arg_2, select(!arg_2, select(arg_2, arg_2, vec4<bool>(true, true, true, true)), true), false), Struct_2(func_2(func_2(arg_0, arg_2, Struct_2(Struct_1(-188f, vec4<f32>(var_1, 717f, -721f, var_1), -54521i), arg_2.xyy, arg_1.a.b, vec2<i32>(0i, var_0.c))), select(vec4<bool>(arg_1.c, arg_2.x, true, false), select(vec4<bool>(false, arg_0.c, false, true), arg_2, vec4<bool>(false, arg_2.x, arg_2.x, false)), false), Struct_2(Struct_1(743f, global4.b, arg_0.a.b.c), vec3<bool>(arg_2.x, arg_0.c, false), Struct_1(global2.x, vec4<f32>(-1237f, -966f, global4.b.x, arg_1.d), arg_1.a.b.c), vec2<i32>(-61900i, global4.c))).a.b, !select(!arg_2.xxw, arg_2.wxw, select(arg_2.wwz, vec3<bool>(true, false, true), true)), Struct_1(global2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global4.b))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, 117242u), arg_1.a.c.x), 4u)]), vec2<i32>(-1i, var_0.c) << (min(reverseBits(arg_0.a.a.zz), _wgslsmith_add_vec2_u32(arg_0.a.a.yz, arg_0.a.c)) % vec2<u32>(32u)))).a;
    return Struct_5(arg_0, reverseBits(func_2(Struct_4(arg_1.a, vec3<u32>(var_2.a.x, var_2.c.x, var_2.a.x), true, 418f), !(!vec4<bool>(arg_1.c, true, true, arg_0.c)), Struct_2(Struct_1(arg_0.a.b.a, vec4<f32>(arg_1.a.b.a, -209f, -406f, -897f), 0i), vec3<bool>(false, arg_2.x, true), var_0, vec2<i32>(global4.c, global4.c))).b.x), vec3<bool>(func_2(Struct_4(func_2(Struct_4(Struct_3(arg_1.a.a, arg_1.a.b, vec2<u32>(arg_0.a.a.x, 19640u)), vec3<u32>(u_input.a, arg_1.a.a.x, 71454u), arg_2.x, -1000f), arg_2, Struct_2(Struct_1(1401f, vec4<f32>(-519f, var_0.a, arg_1.d, global4.a), 65047i), arg_2.yxx, Struct_1(-170f, var_0.b, 1i), vec2<i32>(-2147483647i, var_2.b.c))).a, select(var_2.a.zzx, vec3<u32>(arg_1.a.c.x, var_2.a.x, arg_0.a.a.x), arg_2.x), arg_0.c, _wgslsmith_f_op_f32(-global2.x)), vec4<bool>(true, arg_1.a.b.c > arg_0.a.b.c, 28309u != var_2.c.x, arg_1.c), Struct_2(func_2(arg_1, arg_2, Struct_2(Struct_1(-707f, global4.b, global1[_wgslsmith_index_u32(u_input.a, 4u)]), arg_2.zzx, Struct_1(-2131f, global4.b, var_2.b.c), vec2<i32>(-2147483647i, var_0.c))).a.b, select(vec3<bool>(false, arg_2.x, true), vec3<bool>(arg_0.c, false, true), arg_2.x), arg_0.a.b, vec2<i32>(arg_1.a.b.c, arg_0.a.b.c) | vec2<i32>(global1[_wgslsmith_index_u32(52026u, 4u)], var_0.c))).c, true, arg_2.x | true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)))), arg_0.a.b.b, _wgslsmith_mult_i32(-2147483647i, var_2.b.c)));
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_5 {
    var var_0 = func_4(func_4(arg_1.a, func_2(Struct_4(arg_1.a.a, ~arg_1.a.b, arg_0, _wgslsmith_f_op_f32(-927f - arg_3.x)), select(vec4<bool>(arg_0, arg_1.a.c, false, true), select(vec4<bool>(arg_1.c.x, false, false, arg_1.c.x), vec4<bool>(true, true, arg_0, arg_1.a.c), vec4<bool>(arg_0, arg_0, false, true)), select(vec4<bool>(true, arg_0, arg_0, arg_1.a.c), vec4<bool>(true, false, arg_1.c.x, true), false)), Struct_2(arg_1.d, func_4(arg_1.a, Struct_4(Struct_3(vec4<u32>(arg_1.a.b.x, 0u, u_input.a, 0u), Struct_1(arg_2.b.x, vec4<f32>(-212f, -118f, global4.a, 436f), global4.c), arg_1.a.a.a.wx), arg_1.a.b, arg_1.c.x, global2.x), vec4<bool>(arg_0, arg_1.a.c, arg_1.a.c, arg_0)).c, arg_2, ~vec2<i32>(arg_2.c, -2147483647i))), !vec4<bool>(arg_1.a.c, arg_1.a.c && arg_0, any(vec3<bool>(true, false, true)), false)).a, Struct_4(Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), arg_1.a.a.a), arg_2, _wgslsmith_mod_vec2_u32(vec2<u32>(13736u, 44008u), firstLeadingBit(arg_1.a.a.c))), ~(~vec3<u32>(arg_1.b, 43059u, u_input.a)), true, 434f), select(select(select(!vec4<bool>(false, true, arg_1.a.c, true), select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_1.a.c, false, arg_0, false), vec4<bool>(false, arg_1.c.x, true, true)), !vec4<bool>(true, false, true, arg_0)), !(!vec4<bool>(arg_0, arg_0, true, false)), select(!vec4<bool>(arg_1.a.c, false, arg_1.c.x, true), vec4<bool>(false, arg_1.a.c, true, true), vec4<bool>(arg_1.a.c, arg_1.a.c, arg_1.a.c, arg_0))), select(!(!vec4<bool>(arg_1.c.x, false, true, arg_0)), select(!vec4<bool>(arg_0, arg_1.c.x, arg_1.c.x, arg_1.c.x), select(vec4<bool>(false, arg_1.a.c, arg_0, arg_1.c.x), vec4<bool>(false, true, arg_0, true), true), select(vec4<bool>(false, arg_0, arg_1.a.c, true), vec4<bool>(arg_0, false, true, true), vec4<bool>(true, arg_0, false, true))), true), false));
    let var_1 = ~vec2<u32>(u_input.a, 110428u);
    var_0 = func_4(func_2(Struct_4(var_0.a.a, arg_1.a.b, arg_0, 662f), !select(vec4<bool>(true, var_0.a.c, arg_0, arg_1.a.c), vec4<bool>(true, arg_1.c.x, var_0.c.x, var_0.c.x), !vec4<bool>(arg_0, var_0.a.c, var_0.c.x, true)), Struct_2(Struct_1(_wgslsmith_f_op_f32(global2.x * arg_1.a.a.b.b.x), vec4<f32>(-306f, arg_3.x, arg_1.a.d, -1382f), -1i), select(arg_1.c, select(arg_1.c, vec3<bool>(var_0.c.x, true, arg_1.c.x), vec3<bool>(false, true, false)), arg_1.a.c), Struct_1(-336f, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.a, -612f, -346f, arg_3.x) * var_0.d.b), _wgslsmith_clamp_i32(-18230i, arg_2.c, arg_1.d.c)), ~(vec2<i32>(-1i, global1[_wgslsmith_index_u32(var_1.x, 4u)]) >> (vec2<u32>(4294967295u, 11071u) % vec2<u32>(32u))))), arg_1.a, vec4<bool>(false, true, true, !(func_2(Struct_4(arg_1.a.a, arg_1.a.a.a.wwy, var_0.c.x, global4.a), vec4<bool>(var_0.a.c, arg_1.a.c, arg_1.a.c, arg_1.a.c), Struct_2(Struct_1(351f, var_0.a.a.b.b, 9964i), arg_1.c, var_0.a.a.b, vec2<i32>(global4.c, arg_2.c))).c && !arg_1.a.c)));
    let var_2 = !(!(!select(vec4<bool>(true, arg_0, false, true), !vec4<bool>(false, true, arg_1.c.x, arg_0), vec4<bool>(false, true, var_0.a.c, var_0.c.x))));
    global3 = array<vec3<i32>, 7>();
    return arg_1;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: u32) -> vec4<i32> {
    var var_0 = func_4(Struct_4(func_4(arg_1.a, func_2(arg_1.a, vec4<bool>(true, arg_1.a.c, true, true), Struct_2(arg_1.a.a.b, arg_1.c, arg_1.a.a.b, arg_0.xx)), !vec4<bool>(arg_1.a.c, arg_1.a.c, arg_1.a.c, false)).a.a, arg_2.a.wzz, true, _wgslsmith_f_op_f32(2691f - arg_2.b.a)), arg_1.a, !select(!select(vec4<bool>(arg_1.a.c, false, false, false), vec4<bool>(false, arg_1.c.x, arg_1.a.c, true), vec4<bool>(arg_1.a.c, arg_1.c.x, arg_1.c.x, arg_1.a.c)), select(!vec4<bool>(true, arg_1.a.c, arg_1.c.x, arg_1.a.c), !vec4<bool>(arg_1.a.c, false, false, false), vec4<bool>(true, arg_1.c.x, arg_1.c.x, arg_1.c.x)), vec4<bool>(false, all(vec4<bool>(true, arg_1.a.c, false, false)), !arg_1.c.x, true))).a;
    var var_1 = arg_1.a;
    var_1 = arg_1.a;
    global0 = array<vec3<f32>, 3>();
    var var_2 = arg_0.x;
    return select(select(abs(min(-arg_0, _wgslsmith_div_vec4_i32(arg_0, arg_0))), -vec4<i32>(arg_0.x, 11894i, global1[_wgslsmith_index_u32(arg_2.a.x, 4u)], -1i << (0u % 32u)), select(vec4<bool>(true, var_0.c, func_2(arg_1.a, vec4<bool>(arg_1.c.x, var_1.c, false, false), Struct_2(arg_1.d, arg_1.c, var_1.a.b, arg_0.xw)).c, !var_1.c), select(vec4<bool>(var_1.c, true, var_1.c, var_0.c), !vec4<bool>(arg_1.a.c, var_1.c, arg_1.a.c, false), !var_0.c), func_2(Struct_4(Struct_3(var_1.a.a, arg_1.d, var_1.b.zz), arg_2.a.zzx, var_0.c, -1409f), vec4<bool>(arg_1.c.x, var_0.c, true, var_0.c), Struct_2(var_1.a.b, vec3<bool>(arg_1.c.x, true, false), var_0.a.b, vec2<i32>(-40346i, -23730i))).c)), abs(arg_0), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(arg_1.c.x, var_0.c, var_1.c, var_0.c), vec4<bool>(var_0.c, var_1.c, true, var_0.c))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = arg_1.x;
    global3 = array<vec3<i32>, 7>();
    var var_1 = abs(func_6(~select(min(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], 0i, global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), vec4<i32>(global4.c, 24617i, -2147483647i, global4.c)), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global4.c, global1[_wgslsmith_index_u32(u_input.a, 4u)]) ^ vec4<i32>(global4.c, -36569i, global1[_wgslsmith_index_u32(3673u, 4u)], global4.c), vec4<bool>(true, true, true, true)), func_5(all(vec4<bool>(true, true, true, true)), func_4(func_2(Struct_4(Struct_3(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), Struct_1(arg_1.x, vec4<f32>(arg_0.x, 178f, arg_2, 943f), global4.c), vec2<u32>(u_input.a, 69789u)), vec3<u32>(16850u, 107183u, u_input.a), false, arg_2), vec4<bool>(false, true, true, false), Struct_2(Struct_1(global4.b.x, vec4<f32>(903f, 473f, arg_2, global4.a), 0i), vec3<bool>(true, true, false), Struct_1(global4.b.x, arg_0, -17763i), vec2<i32>(-2147483647i, 1i))), func_2(Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, 43655u, u_input.a), Struct_1(-331f, global4.b, global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<u32>(u_input.a, 13925u)), vec3<u32>(8042u, 0u, 1u), true, -916f), vec4<bool>(true, true, true, true), Struct_2(Struct_1(global4.b.x, vec4<f32>(var_0, var_0, global4.a, arg_2), global4.c), vec3<bool>(true, true, true), Struct_1(arg_0.x, vec4<f32>(arg_0.x, global2.x, arg_2, arg_1.x), 7516i), vec2<i32>(8136i, global4.c))), vec4<bool>(true, true, true, true)), func_2(Struct_4(Struct_3(vec4<u32>(765u, u_input.a, u_input.a, u_input.a), Struct_1(1649f, global4.b, 0i), vec2<u32>(u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a), false, global4.b.x), vec4<bool>(true, true, true, true), Struct_2(Struct_1(438f, global4.b, global4.c), vec3<bool>(false, false, false), Struct_1(arg_1.x, vec4<f32>(var_0, arg_1.x, -1000f, arg_2), -4767i), vec2<i32>(35720i, 2147483647i))).a.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global2.x, arg_0.x)), vec3<f32>(arg_0.x, -793f, arg_2))), func_5(true, Struct_5(Struct_4(Struct_3(vec4<u32>(61940u, 34722u, 4294967295u, 47141u), Struct_1(-2336f, arg_0, global1[_wgslsmith_index_u32(10960u, 4u)]), vec2<u32>(4294967295u, 60567u)), vec3<u32>(0u, 1u, 0u), false, -398f), 0u, vec3<bool>(true, true, true), func_4(Struct_4(Struct_3(vec4<u32>(u_input.a, 38421u, u_input.a, 1u), Struct_1(-333f, vec4<f32>(291f, -783f, arg_0.x, arg_2), -16703i), vec2<u32>(0u, u_input.a)), vec3<u32>(102075u, 24731u, u_input.a), false, -1034f), Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(arg_2, global4.b, 2147483647i), vec2<u32>(1u, u_input.a)), vec3<u32>(u_input.a, 1u, 4294967295u), false, 801f), vec4<bool>(true, true, true, false)).a.a.b), Struct_1(arg_0.x, global4.b, 36205i), vec3<f32>(_wgslsmith_f_op_f32(370f - -160f), _wgslsmith_f_op_f32(sign(878f)), func_5(true, Struct_5(Struct_4(Struct_3(vec4<u32>(11945u, 72112u, u_input.a, u_input.a), Struct_1(global2.x, arg_0, global4.c), vec2<u32>(97929u, 0u)), vec3<u32>(1u, 99578u, 64492u), true, 1083f), 1u, vec3<bool>(false, true, true), Struct_1(-603f, vec4<f32>(arg_0.x, global2.x, arg_0.x, -509f), -2147483647i)), Struct_1(global2.x, vec4<f32>(arg_0.x, -139f, var_0, var_0), global4.c), global2.wzw).a.d)).a.a, 4294967295u));
    global0 = array<vec3<f32>, 3>();
    var_1 = ~vec4<i32>(-2667i, 1i, _wgslsmith_sub_i32(select(_wgslsmith_div_i32(global4.c, global1[_wgslsmith_index_u32(u_input.a, 4u)]), i32(-1i) * -24294i, true), var_1.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(38828i ^ global1[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_mod_i32(-23535i, -2147483647i)), ~func_4(Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(var_0, arg_0, -2147483647i), vec2<u32>(4294967295u, u_input.a)), vec3<u32>(1u, u_input.a, u_input.a), true, 1175f), Struct_4(Struct_3(vec4<u32>(25086u, u_input.a, 26854u, 6411u), Struct_1(arg_1.x, vec4<f32>(arg_2, arg_1.x, global4.b.x, global4.a), 2147483647i), vec2<u32>(u_input.a, 34245u)), vec3<u32>(4294967295u, u_input.a, u_input.a), false, -226f), vec4<bool>(true, false, false, true)).a.a.b.c));
    return func_2(func_5(u_input.a > ~(~u_input.a), func_4(func_4(func_2(Struct_4(Struct_3(vec4<u32>(19127u, u_input.a, u_input.a, 0u), Struct_1(1919f, vec4<f32>(-361f, 151f, 2234f, global2.x), -1i), vec2<u32>(u_input.a, u_input.a)), vec3<u32>(12762u, 49050u, 1u), true, arg_1.x), vec4<bool>(true, true, false, false), Struct_2(Struct_1(global4.b.x, vec4<f32>(global4.b.x, arg_0.x, arg_2, arg_2), 2147483647i), vec3<bool>(true, false, true), Struct_1(global2.x, vec4<f32>(global4.b.x, arg_2, -177f, var_0), 0i), var_1.xx)), Struct_4(Struct_3(vec4<u32>(0u, 1u, 45327u, 2610u), Struct_1(arg_1.x, global4.b, -35195i), vec2<u32>(u_input.a, 4294967295u)), vec3<u32>(u_input.a, 4294967295u, 1u), false, var_0), vec4<bool>(true, true, true, true)).a, func_4(Struct_4(Struct_3(vec4<u32>(39930u, u_input.a, 4294967295u, u_input.a), Struct_1(global4.b.x, vec4<f32>(-373f, var_0, -189f, -473f), var_1.x), vec2<u32>(0u, 32745u)), vec3<u32>(0u, u_input.a, u_input.a), true, -980f), func_5(false, Struct_5(Struct_4(Struct_3(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), Struct_1(411f, global4.b, 2147483647i), vec2<u32>(1u, u_input.a)), vec3<u32>(u_input.a, 4294967295u, u_input.a), false, arg_2), u_input.a, vec3<bool>(true, false, false), Struct_1(-1561f, vec4<f32>(global4.a, var_0, -285f, arg_0.x), global1[_wgslsmith_index_u32(u_input.a, 4u)])), Struct_1(-1303f, vec4<f32>(global2.x, -410f, 608f, var_0), 0i), vec3<f32>(global2.x, arg_2, -209f)).a, select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false)).a, vec4<bool>(true, 48873u > u_input.a, true, func_2(Struct_4(Struct_3(vec4<u32>(u_input.a, 4975u, 4294967295u, u_input.a), Struct_1(-405f, global4.b, global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<u32>(1u, 15660u)), vec3<u32>(u_input.a, u_input.a, 5446u), true, -1622f), vec4<bool>(true, true, false, true), Struct_2(Struct_1(-662f, vec4<f32>(arg_1.x, 767f, 856f, 264f), global1[_wgslsmith_index_u32(8185u, 4u)]), vec3<bool>(true, true, true), Struct_1(1000f, global4.b, -1i), vec2<i32>(-32526i, -2147483647i))).c)), func_4(Struct_4(func_5(true, Struct_5(Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, 31860u, u_input.a), Struct_1(global4.a, vec4<f32>(-2323f, var_0, -552f, arg_0.x), global1[_wgslsmith_index_u32(1u, 4u)]), vec2<u32>(1u, 19584u)), vec3<u32>(28665u, u_input.a, u_input.a), true, var_0), 13138u, vec3<bool>(false, true, true), Struct_1(var_0, arg_0, global4.c)), Struct_1(2153f, arg_0, 4207i), vec3<f32>(-857f, 263f, -1000f)).a.a, _wgslsmith_mod_vec3_u32(vec3<u32>(73730u, 0u, u_input.a), vec3<u32>(19344u, 0u, u_input.a)), true, arg_1.x), func_5(true, Struct_5(Struct_4(Struct_3(vec4<u32>(75095u, u_input.a, 4940u, u_input.a), Struct_1(-661f, global4.b, var_1.x), vec2<u32>(4294967295u, 4294967295u)), vec3<u32>(1u, u_input.a, u_input.a), false, -1826f), 66584u, vec3<bool>(true, true, false), Struct_1(213f, global4.b, global1[_wgslsmith_index_u32(28641u, 4u)])), func_4(Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, 4629u, u_input.a), Struct_1(614f, global4.b, global1[_wgslsmith_index_u32(1u, 4u)]), vec2<u32>(4294967295u, 4294967295u)), vec3<u32>(u_input.a, u_input.a, u_input.a), true, arg_2), Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), Struct_1(105f, vec4<f32>(-167f, 912f, 909f, arg_2), global4.c), vec2<u32>(0u, u_input.a)), vec3<u32>(35284u, u_input.a, u_input.a), true, var_0), vec4<bool>(true, false, false, true)).d, vec3<f32>(-472f, 369f, arg_0.x)).a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)).a.a.b, _wgslsmith_f_op_vec3_f32(arg_0.yyw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(55078u, 3u)]))))).a, select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), global4.c < var_1.x), vec4<bool>(true, (u_input.a ^ u_input.a) <= 1u, true, _wgslsmith_f_op_f32(-arg_1.x) > global4.a), !all(vec3<bool>(true, true, true))), Struct_2(func_4(Struct_4(func_4(Struct_4(Struct_3(vec4<u32>(3441u, 4294967295u, 4294967295u, u_input.a), Struct_1(486f, global4.b, global4.c), vec2<u32>(u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, 1u), true, arg_0.x), Struct_4(Struct_3(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), Struct_1(-1000f, vec4<f32>(-584f, var_0, arg_1.x, -505f), 0i), vec2<u32>(5970u, u_input.a)), vec3<u32>(1u, 40993u, 1u), true, arg_1.x), vec4<bool>(true, true, true, false)).a.a, ~vec3<u32>(30841u, u_input.a, u_input.a), true, -328f), func_2(Struct_4(Struct_3(vec4<u32>(38867u, u_input.a, u_input.a, 54207u), Struct_1(-668f, arg_0, 0i), vec2<u32>(u_input.a, u_input.a)), vec3<u32>(u_input.a, 4294967295u, u_input.a), true, -252f), vec4<bool>(true, true, true, true), Struct_2(Struct_1(arg_0.x, vec4<f32>(arg_0.x, arg_0.x, -804f, var_0), global4.c), vec3<bool>(false, false, true), Struct_1(-572f, arg_0, global4.c), vec2<i32>(-1i, global4.c))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), any(vec3<bool>(false, true, false)))).d, vec3<bool>(true, true, true), func_4(Struct_4(func_2(Struct_4(Struct_3(vec4<u32>(13650u, u_input.a, 4294967295u, u_input.a), Struct_1(-1335f, global4.b, -14027i), vec2<u32>(u_input.a, 4294967295u)), vec3<u32>(12226u, u_input.a, 1u), false, 674f), vec4<bool>(false, false, false, true), Struct_2(Struct_1(var_0, vec4<f32>(arg_0.x, 745f, 1070f, -657f), 45120i), vec3<bool>(true, false, false), Struct_1(-1000f, vec4<f32>(arg_2, 1587f, -1000f, 496f), 1873i), var_1.wx)).a, ~vec3<u32>(u_input.a, 3193u, u_input.a), true, global4.b.x), func_2(Struct_4(Struct_3(vec4<u32>(u_input.a, 11093u, u_input.a, 9610u), Struct_1(arg_2, arg_0, -28598i), vec2<u32>(u_input.a, u_input.a)), vec3<u32>(0u, 0u, 4294967295u), true, 1736f), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), Struct_2(Struct_1(750f, global4.b, global4.c), vec3<bool>(false, true, true), Struct_1(arg_2, global4.b, var_1.x), vec2<i32>(-19697i, -2147483647i))), vec4<bool>(false, u_input.a >= u_input.a, true, true)).d, vec2<i32>(var_1.x, max(global4.c, global4.c) << (_wgslsmith_clamp_u32(u_input.a, u_input.a, 1u) % 32u)))).a.b;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = func_5(func_4(func_4(Struct_4(Struct_3(vec4<u32>(arg_0.c.x, 0u, 6461u, 1u), Struct_1(arg_1.b.x, vec4<f32>(686f, -1107f, global2.x, -1250f), 2147483647i), arg_0.a.xy), reverseBits(vec3<u32>(u_input.a, 106705u, 0u)), true, _wgslsmith_f_op_f32(-global2.x)), func_5(true, Struct_5(Struct_4(arg_0, arg_0.a.xyz, true, arg_1.b.x), arg_0.a.x, vec3<bool>(true, false, false), Struct_1(arg_1.b.x, vec4<f32>(global2.x, arg_1.b.x, global2.x, -520f), arg_0.b.c)), Struct_1(1000f, arg_0.b.b, -1i), _wgslsmith_f_op_vec3_f32(arg_0.b.b.yyw * vec3<f32>(arg_1.b.x, global4.a, global2.x))).a, vec4<bool>(true, true, true, true)).a, func_4(func_2(func_4(Struct_4(arg_0, arg_0.a.yxz, false, arg_0.b.b.x), Struct_4(Struct_3(vec4<u32>(4294967295u, 4294967295u, u_input.a, 52127u), arg_1, arg_0.c), vec3<u32>(arg_0.c.x, 1u, 40553u), true, arg_1.a), vec4<bool>(true, true, true, false)).a, select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), Struct_2(Struct_1(global2.x, vec4<f32>(1322f, arg_0.b.b.x, global2.x, 447f), global1[_wgslsmith_index_u32(1u, 4u)]), vec3<bool>(false, true, true), Struct_1(global4.b.x, arg_0.b.b, 1386i), vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(arg_0.a.x, 4u)]))), Struct_4(arg_0, vec3<u32>(u_input.a, 55177u, u_input.a), true, _wgslsmith_f_op_f32(-arg_0.b.a)), vec4<bool>(true, true, true, true)).a, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), func_5(false, Struct_5(Struct_4(Struct_3(vec4<u32>(0u, u_input.a, u_input.a, 61546u), arg_1, vec2<u32>(arg_0.c.x, arg_0.c.x)), vec3<u32>(30769u, arg_0.c.x, 70027u), true, global4.a), 4294967295u, vec3<bool>(false, true, false), arg_1), arg_1, vec3<f32>(arg_0.b.b.x, arg_1.b.x, global2.x)).a.c), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), true))).a.c, Struct_5(func_4(Struct_4(Struct_3(arg_0.a, arg_1, vec2<u32>(15238u, 46479u)), ~vec3<u32>(arg_0.a.x, u_input.a, u_input.a), true, _wgslsmith_div_f32(arg_0.b.b.x, -1358f)), func_2(Struct_4(arg_0, arg_0.a.wxy, true, arg_0.b.a), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), Struct_2(Struct_1(arg_1.a, vec4<f32>(global4.a, -1136f, global4.a, -426f), 1i), vec3<bool>(false, true, false), Struct_1(arg_1.a, vec4<f32>(-498f, arg_1.a, -271f, arg_1.b.x), global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<i32>(-62415i, global4.c))), vec4<bool>(all(vec4<bool>(false, false, true, true)), all(vec4<bool>(false, true, true, true)), true, select(true, true, false))).a, 4294967295u, vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), Struct_1(934f, global4.b, -2147483647i)), arg_0.b, _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, global2.x, arg_1.a, 1883f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.b.xz), _wgslsmith_div_vec2_f32(arg_0.b.b.zw, arg_0.b.b.xz), 2754i <= arg_0.b.c)), global4.a).b.xwz - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1709f, 1194f, global2.x) + global2.wwz), global0[_wgslsmith_index_u32(u_input.a, 3u)])))).c.zx;
    return -_wgslsmith_div_vec2_i32(abs(vec2<i32>(arg_1.c, arg_0.b.c)), vec2<i32>(global4.c, firstTrailingBit(i32(-1i) * -3874i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 7>();
    let var_0 = func_7(Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, 15262u), 22409u, ~u_input.a, u_input.a & 58893u), ~(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 1u, 1u, 30601u) % vec4<u32>(32u)))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, 679f, global2.x), global4.b, vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(418f, -1203f) - vec2<f32>(-1444f, global2.x)), 648f), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, firstTrailingBit(u_input.a)), func_5(u_input.a < 0u, Struct_5(Struct_4(Struct_3(vec4<u32>(41790u, u_input.a, u_input.a, u_input.a), Struct_1(global4.a, global4.b, -2147483647i), vec2<u32>(u_input.a, 15217u)), vec3<u32>(u_input.a, u_input.a, 15314u), true, 236f), 1u, vec3<bool>(true, false, false), Struct_1(1296f, global4.b, global4.c)), Struct_1(1000f, global4.b, global1[_wgslsmith_index_u32(u_input.a, 4u)]), func_2(Struct_4(Struct_3(vec4<u32>(u_input.a, 1u, 62224u, 21549u), Struct_1(-1073f, vec4<f32>(global4.b.x, global2.x, -708f, -194f), global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<u32>(u_input.a, 78679u)), vec3<u32>(u_input.a, u_input.a, u_input.a), true, global4.b.x), vec4<bool>(true, true, false, true), Struct_2(Struct_1(global4.a, vec4<f32>(1293f, 589f, global2.x, -354f), 35336i), vec3<bool>(false, true, false), Struct_1(global4.a, vec4<f32>(-685f, -1000f, -165f, 647f), global4.c), vec2<i32>(global4.c, 1i))).a.b.b.wwx).a.a.a.zw)), func_5(func_5(true, func_5(false, Struct_5(Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), Struct_1(global4.a, vec4<f32>(global2.x, 920f, global2.x, global4.b.x), 1i), vec2<u32>(7318u, u_input.a)), vec3<u32>(u_input.a, 4294967295u, 1u), false, -622f), u_input.a, vec3<bool>(true, false, true), Struct_1(global2.x, vec4<f32>(-1215f, 989f, global2.x, -290f), global1[_wgslsmith_index_u32(u_input.a, 4u)])), Struct_1(-320f, vec4<f32>(1320f, global2.x, 628f, 1112f), 2147483647i), vec3<f32>(1000f, global2.x, global2.x)), Struct_1(global4.a, global4.b, 20776i), global2.zwz).d.a <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(720f, -1473f)) * -1108f), func_4(func_5(true, func_4(Struct_4(Struct_3(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), Struct_1(1025f, vec4<f32>(546f, 201f, global2.x, 2228f), global4.c), vec2<u32>(u_input.a, 15402u)), vec3<u32>(u_input.a, u_input.a, 43119u), false, global4.a), Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), Struct_1(global2.x, vec4<f32>(global2.x, 693f, global4.b.x, global4.a), global4.c), vec2<u32>(4294967295u, u_input.a)), vec3<u32>(0u, 75669u, u_input.a), true, 264f), vec4<bool>(true, true, true, false)), func_5(true, Struct_5(Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), Struct_1(global4.a, vec4<f32>(-1104f, global2.x, global4.b.x, -942f), -32995i), vec2<u32>(u_input.a, u_input.a)), vec3<u32>(u_input.a, 1u, 20359u), false, 442f), u_input.a, vec3<bool>(false, false, false), Struct_1(global4.a, vec4<f32>(global2.x, -1331f, 1356f, -1185f), 2147483647i)), Struct_1(global4.a, global4.b, global4.c), vec3<f32>(global2.x, global2.x, global2.x)).a.a.b, global0[_wgslsmith_index_u32(u_input.a, 3u)]).a, func_2(func_5(false, Struct_5(Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, 6870u, 70782u), Struct_1(1954f, vec4<f32>(global2.x, global2.x, global2.x, 1358f), -2147483647i), vec2<u32>(21988u, u_input.a)), vec3<u32>(u_input.a, u_input.a, 1u), false, 1784f), u_input.a, vec3<bool>(false, false, true), Struct_1(670f, vec4<f32>(-517f, global2.x, -360f, global2.x), global4.c)), Struct_1(172f, vec4<f32>(global4.b.x, 1285f, 117f, global4.b.x), global1[_wgslsmith_index_u32(u_input.a, 4u)]), global4.b.yxz).a, vec4<bool>(true, true, true, true), Struct_2(Struct_1(global2.x, global4.b, -17049i), vec3<bool>(true, false, true), Struct_1(-892f, vec4<f32>(-167f, 627f, global2.x, 678f), -50611i), vec2<i32>(global4.c, 2852i))), vec4<bool>(true, true, true, true)), func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.a, 569f, -1150f, 357f), vec4<f32>(-1006f, -1260f, -147f, global4.a))), _wgslsmith_f_op_vec4_f32(-global4.b), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a, -1190f))), func_1(_wgslsmith_f_op_vec4_f32(-global4.b), _wgslsmith_f_op_vec2_f32(-global4.b.xw), 985f).a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global2.ywz, vec3<f32>(global2.x, global2.x, global2.x)))) - global2.zxw)).d);
    let var_1 = Struct_3(func_2(Struct_4(func_2(Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), Struct_1(global2.x, global4.b, 16361i), vec2<u32>(u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, 4294967295u), true, 483f), vec4<bool>(false, true, true, false), Struct_2(Struct_1(global4.b.x, global4.b, 2147483647i), vec3<bool>(true, true, true), Struct_1(-1070f, global4.b, -1i), var_0)).a, vec3<u32>(4294967295u, u_input.a, 1u) << ((vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(92519u, 1u, 10133u) % vec3<u32>(32u))) % vec3<u32>(32u)), true, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(1000f * global2.x))), vec4<bool>(true, true, true, true), Struct_2(Struct_1(1f, vec4<f32>(448f, 680f, 930f, global4.b.x), reverseBits(0i)), vec3<bool>(true, false, any(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(global4.b.x + 1028f), global4.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global4.c, global4.c, global4.c), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], 0i, 0i, -1986i))), max(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], -26894i) & var_0, var_0 | vec2<i32>(-5666i, global1[_wgslsmith_index_u32(0u, 4u)])))).a.a, Struct_1(global4.a, vec4<f32>(572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.x - global4.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f) - global2.x), global2.x), countOneBits(~(var_0.x & global4.c))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, ~u_input.a), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(47307u, u_input.a)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a >> (u_input.a % 32u), func_5(false, Struct_5(Struct_4(Struct_3(vec4<u32>(u_input.a, 0u, 33948u, 38006u), Struct_1(global4.b.x, global4.b, global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<u32>(u_input.a, 76589u)), vec3<u32>(u_input.a, 62267u, u_input.a), false, 1258f), 4294967295u, vec3<bool>(true, false, true), Struct_1(-507f, vec4<f32>(global4.b.x, global2.x, -518f, -681f), global4.c)), Struct_1(-216f, global4.b, -1i), global0[_wgslsmith_index_u32(1u, 3u)]).b), vec2<u32>(~u_input.a, u_input.a), ~vec2<u32>(u_input.a, 12225u))));
    global1 = array<i32, 4>();
    var var_2 = func_2(func_5(func_5(any(vec3<bool>(true, true, true)), func_5(false, func_4(Struct_4(var_1, vec3<u32>(u_input.a, 0u, 4294967295u), true, global2.x), Struct_4(var_1, var_1.a.xyw, false, global2.x), vec4<bool>(true, true, false, true)), func_5(true, Struct_5(Struct_4(Struct_3(vec4<u32>(var_1.c.x, 0u, 22542u, u_input.a), var_1.b, var_1.c), var_1.a.wwz, true, -1035f), 0u, vec3<bool>(false, true, true), Struct_1(global2.x, var_1.b.b, var_0.x)), var_1.b, global0[_wgslsmith_index_u32(0u, 3u)]).d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b.x, global4.a, 1000f))), Struct_1(-701f, vec4<f32>(1801f, 1461f, 239f, var_1.b.a), 1i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.a.xxz, ~var_1.a.ywy), 3u)]).c.x, Struct_5(func_2(Struct_4(Struct_3(vec4<u32>(1u, 7329u, 59187u, 52249u), Struct_1(global4.a, vec4<f32>(-223f, global2.x, -155f, var_1.b.b.x), global4.c), vec2<u32>(u_input.a, 4294967295u)), vec3<u32>(1u, 0u, u_input.a), true, var_1.b.b.x), vec4<bool>(true, true, true, true), Struct_2(var_1.b, vec3<bool>(false, false, true), Struct_1(var_1.b.a, global4.b, 4872i), var_0)), func_3(-491f, var_1.b).x << (u_input.a % 32u), vec3<bool>(true, true, true), var_1.b), var_1.b, vec3<f32>(851f, global2.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, -462f), _wgslsmith_f_op_f32(var_1.b.a * -1586f)))).a, vec4<bool>(all(!func_4(Struct_4(var_1, vec3<u32>(u_input.a, 4294967295u, var_1.c.x), true, -1000f), Struct_4(Struct_3(vec4<u32>(var_1.a.x, 4294967295u, var_1.c.x, 0u), var_1.b, vec2<u32>(u_input.a, var_1.a.x)), vec3<u32>(var_1.c.x, 0u, u_input.a), false, -1421f), vec4<bool>(false, false, false, false)).c.xz), _wgslsmith_f_op_f32(-global2.x) < _wgslsmith_f_op_f32(global4.a + _wgslsmith_f_op_f32(trunc(615f))), true, !(func_1(global4.b, vec2<f32>(var_1.b.b.x, var_1.b.a), 2169f).c >= (2147483647i << (var_1.c.x % 32u)))), Struct_2(var_1.b, vec3<bool>(true, true, true), func_5(true, func_5(true, Struct_5(Struct_4(var_1, vec3<u32>(1u, 1u, 48867u), true, global4.b.x), 25235u, vec3<bool>(true, false, true), var_1.b), var_1.b, vec3<f32>(var_1.b.b.x, var_1.b.b.x, global4.b.x)), func_2(func_5(true, Struct_5(Struct_4(var_1, var_1.a.xyz, false, -1287f), u_input.a, vec3<bool>(false, true, false), Struct_1(-920f, vec4<f32>(896f, 1457f, -316f, -2559f), -19861i)), Struct_1(global4.b.x, vec4<f32>(1804f, 470f, global2.x, global4.b.x), 51941i), vec3<f32>(var_1.b.b.x, -1000f, -691f)).a, vec4<bool>(true, true, true, true), Struct_2(var_1.b, vec3<bool>(true, false, false), Struct_1(global4.a, vec4<f32>(var_1.b.b.x, global4.b.x, 836f, var_1.b.b.x), 15911i), var_0)).a.b, func_4(func_5(true, Struct_5(Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), var_1.b, vec2<u32>(62274u, 91299u)), vec3<u32>(u_input.a, u_input.a, var_1.c.x), false, global2.x), var_1.c.x, vec3<bool>(true, false, true), Struct_1(-654f, vec4<f32>(-1072f, global2.x, var_1.b.a, var_1.b.b.x), -5874i)), Struct_1(var_1.b.a, vec4<f32>(global4.b.x, global4.a, global2.x, global4.b.x), var_0.x), global0[_wgslsmith_index_u32(4294967295u, 3u)]).a, Struct_4(Struct_3(var_1.a, Struct_1(-730f, vec4<f32>(global2.x, global2.x, 1256f, -556f), global1[_wgslsmith_index_u32(4294967295u, 4u)]), var_1.c), vec3<u32>(8921u, u_input.a, u_input.a), false, global2.x), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true)).d.b.wwx).d, ~vec2<i32>(_wgslsmith_clamp_i32(global4.c, global1[_wgslsmith_index_u32(var_1.c.x, 4u)], var_0.x), -2147483647i)));
    let var_3 = _wgslsmith_add_u32(7469u << (select(~_wgslsmith_dot_vec2_u32(var_2.a.c, vec2<u32>(u_input.a, var_2.a.a.x)), firstLeadingBit(4294967295u ^ u_input.a), false) % 32u), u_input.a);
    global0 = array<vec3<f32>, 3>();
    let var_4 = _wgslsmith_sub_vec3_u32(var_2.a.a.xyy, vec3<u32>(var_3, 23983u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.x, var_4.x), firstLeadingBit(~1i), 2147483647i);
}

