struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-512f);

var<private> global1: array<Struct_2, 2>;

var<private> global2: array<bool, 10>;

var<private> global3: array<vec3<f32>, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<bool>) -> bool {
    global2 = array<bool, 10>();
    let var_0 = _wgslsmith_f_op_f32(global0.a + global0.a);
    global2 = array<bool, 10>();
    let var_1 = arg_0.b.b.a;
    let var_2 = Struct_2(Struct_1(var_1), arg_0.b.a, vec4<bool>(true, arg_2.x && !any(vec2<bool>(arg_2.x, true)), !(max(arg_0.b.d, 0u) > u_input.b), !arg_0.b.c.x), u_input.b);
    return false;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    global1 = array<Struct_2, 2>();
    let var_0 = Struct_5(Struct_1(global0.a), firstTrailingBit(~vec4<i32>(u_input.a, u_input.a, ~u_input.a, arg_2.x)), _wgslsmith_mod_i32(arg_2.x, _wgslsmith_mod_i32(-(u_input.a & 51471i), -1i)), any(vec4<bool>(!func_3(Struct_4(-2076f, global1[_wgslsmith_index_u32(1u, 2u)], vec3<u32>(u_input.b, u_input.b, u_input.b)), vec2<f32>(global0.a, -999f), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 10u)], false, global2[_wgslsmith_index_u32(59372u, 10u)])), true, true, true)));
    let var_1 = Struct_4(-739f, Struct_2(Struct_1(_wgslsmith_f_op_f32(step(arg_1, arg_1))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1275f * var_0.a.a))), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 10u)], false, var_0.d, global2[_wgslsmith_index_u32(1u, 10u)])), u_input.b), vec3<u32>(_wgslsmith_add_u32(~u_input.b, 9140u), u_input.b, 1u & u_input.b) >> (min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(0u, 35226u, u_input.b)), ~max(vec3<u32>(u_input.b, 4294967295u, 1834u), vec3<u32>(u_input.b, 13530u, 4294967295u))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(round(125f));
    var var_3 = abs(2166u);
    return 1f;
}

fn func_4(arg_0: f32) -> f32 {
    var var_0 = Struct_5(Struct_1(-138f), vec4<i32>(-7996i, ~2147483647i, u_input.a, u_input.a), i32(-1i) * -u_input.a, global2[_wgslsmith_index_u32(u_input.b, 10u)]);
    let var_1 = Struct_2(var_0.a, var_0.a, select(!(!select(vec4<bool>(true, false, false, var_0.d), vec4<bool>(var_0.d, true, var_0.d, false), vec4<bool>(true, false, false, var_0.d))), vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), true, all(vec4<bool>(var_0.d, true, var_0.d, global2[_wgslsmith_index_u32(u_input.b, 10u)])), (365f >= arg_0) | true), select(vec4<bool>(true, all(vec4<bool>(false, false, var_0.d, true)), all(vec4<bool>(false, false, false, true)), true), select(!vec4<bool>(true, false, true, var_0.d), select(vec4<bool>(true, var_0.d, false, false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], var_0.d, false, global2[_wgslsmith_index_u32(36359u, 10u)]), vec4<bool>(var_0.d, false, var_0.d, false)), vec4<bool>(global2[_wgslsmith_index_u32(44431u, 10u)], global2[_wgslsmith_index_u32(u_input.b, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], false)), vec4<bool>(global2[_wgslsmith_index_u32(0u, 10u)] != var_0.d, true, !global2[_wgslsmith_index_u32(u_input.b, 10u)], any(vec2<bool>(false, true))))), ~u_input.b >> (55274u % 32u));
    var var_2 = Struct_5(var_1.b, var_0.b, firstTrailingBit(i32(-1i) * -2147483647i), !(!func_3(Struct_4(894f, global1[_wgslsmith_index_u32(4294967295u, 2u)], vec3<u32>(21867u, var_1.d, var_1.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(790f, var_1.b.a) + vec2<f32>(242f, var_0.a.a)), var_1.c.zzz)));
    var var_3 = Struct_5(var_2.a, vec4<i32>(u_input.a, i32(-1i) * -(~0i), var_0.b.x, var_2.c & var_0.c), var_2.b.x, !var_1.c.x);
    var var_4 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(64931u ^ u_input.b, firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(41327u, 1u, 11283u, var_1.d), ~vec4<u32>(var_1.d, 1u, var_1.d, var_1.d))), ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, var_1.d), vec3<u32>(85188u, 0u, var_1.d)))), ~(~vec3<u32>(~var_1.d, ~u_input.b, _wgslsmith_div_u32(1u, 26126u))));
    return var_1.b.a;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(true, global0.a, vec2<i32>(arg_0, arg_1.x))))) + -1000f))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, ~4294967295u), 2u)], _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, ~u_input.b, _wgslsmith_add_u32(1u, u_input.b)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), abs(vec3<u32>(u_input.b, u_input.b, u_input.b))) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.b, 1u, 4294967295u)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(49182u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), firstTrailingBit(max(vec3<u32>(41201u, 19686u, u_input.b), vec3<u32>(1u, 8550u, u_input.b))))));
    global3 = array<vec3<f32>, 20>();
    let var_1 = abs(9542i);
    var var_2 = arg_1.x;
    let var_3 = ~((~vec4<u32>(var_0.b.d, u_input.b, 4294967295u, 1u) << (select(vec4<u32>(var_0.b.d, u_input.b, u_input.b, var_0.b.d), vec4<u32>(3988u, 0u, 1u, 53673u), vec4<bool>(false, var_0.b.c.x, false, var_0.b.c.x)) % vec4<u32>(32u))) << (~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.d, var_0.c.x, u_input.b, var_0.b.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, var_0.b.d), vec4<u32>(var_0.c.x, 0u, 29560u, var_0.b.d), vec4<u32>(u_input.b, 1083u, var_0.c.x, u_input.b))) % vec4<u32>(32u)));
    return Struct_3(422f);
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -1047f, _wgslsmith_f_op_f32(arg_2.a * arg_2.a)) + _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(1u, 4294967295u)), 20u)], vec3<f32>(arg_2.a, 1396f, 1f)));
    let var_1 = vec2<bool>(all(vec3<bool>(true, true, true)), func_3(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), Struct_2(Struct_1(var_0.x), Struct_1(var_0.x), vec4<bool>(global2[_wgslsmith_index_u32(4491u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], false, global2[_wgslsmith_index_u32(1u, 10u)]), 82359u), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 7927u), vec3<u32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(712f, -2184f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_0.yy, var_0.zz)))), !vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(117608u, 10u)])), u_input.a >= u_input.a, true)));
    let var_2 = global0.a;
    let var_3 = -1i;
    var var_4 = ~abs(u_input.b);
    return Struct_1(var_0.x);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: f32, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_4(-2343f, Struct_2(func_5(358i, -abs(arg_1.b.zzz), func_1(1i, vec4<i32>(u_input.a, 26476i, -2759i, 2147483647i)), arg_1.b.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -608f)), !select(!vec4<bool>(arg_1.d, arg_3.x, false, arg_1.d), vec4<bool>(true, arg_1.d, arg_1.d, false), true), select(_wgslsmith_mult_u32(arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.ww, vec2<u32>(1u, arg_0.x))), arg_0.x, func_3(Struct_4(arg_1.a.a, Struct_2(arg_1.a, arg_1.a, vec4<bool>(arg_1.d, false, true, true), 82578u), arg_0.zxw), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-837f, -504f))), vec3<bool>(arg_3.x, global2[_wgslsmith_index_u32(u_input.b, 10u)], arg_1.d)))), min(_wgslsmith_div_vec3_u32(arg_0.yzw, vec3<u32>(59551u, 28311u, max(arg_0.x, arg_0.x))), vec3<u32>(4294967295u, ~_wgslsmith_add_u32(arg_0.x, u_input.b), 4294967295u)));
    var var_1 = var_0.b;
    let var_2 = Struct_2(func_5(u_input.a, arg_1.b.xxy, func_1(-u_input.a, -arg_1.b), _wgslsmith_add_i32(-12350i, 1i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-549f - 1013f)))), !var_0.b.c, arg_0.x);
    let var_3 = func_5(~27224i, _wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(arg_1.c), -_wgslsmith_sub_i32(14694i, u_input.a), arg_1.b.x), -vec3<i32>(19840i, -1i, u_input.a >> (1u % 32u)), arg_1.b.xww), func_1(0i, countOneBits(vec4<i32>(max(u_input.a, -57714i), abs(51846i), firstTrailingBit(u_input.a), _wgslsmith_mult_i32(-2147483647i, u_input.a)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-15396i, _wgslsmith_mod_i32(u_input.a, arg_1.c) | _wgslsmith_sub_i32(-2147483647i, u_input.a)), _wgslsmith_mult_vec2_i32(abs(arg_1.b.ww), firstLeadingBit(vec2<i32>(-50264i, u_input.a)))));
    let var_4 = _wgslsmith_clamp_vec4_u32(~(~(~arg_0)), ~firstTrailingBit(firstLeadingBit(vec4<u32>(4294967295u, u_input.b, 1u, u_input.b))), _wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(arg_0, vec4<u32>(var_2.d, var_2.d, var_0.b.d, 1u)), arg_0 >> (vec4<u32>(var_1.d, 0u, 0u, 28324u) % vec4<u32>(32u)))), arg_0));
    return func_1(i32(-1i) * -1i, vec4<i32>(1i, 29019i, ~_wgslsmith_sub_i32(-2147483647i, arg_1.c), -45237i));
}

fn func_7(arg_0: vec3<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = vec3<i32>(countOneBits(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -8054i, -580i), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, -16390i, -2147483647i)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, max(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a & 1i)), ~select(-vec3<i32>(41328i, 10494i, -42586i), ~vec3<i32>(-22573i, 0i, u_input.a), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(arg_2, 10u)], global2[_wgslsmith_index_u32(11267u, 10u)]), global2[_wgslsmith_index_u32(1u, 10u)]))), _wgslsmith_clamp_i32(countOneBits(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_div_i32(u_input.a, 0i))), ~u_input.a, u_input.a));
    let var_1 = Struct_1(global0.a);
    let var_2 = arg_3.a;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.a))) + 166f))), Struct_2(var_1, var_1, vec4<bool>(global2[_wgslsmith_index_u32(~(~u_input.b), 10u)], global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, 3161u, arg_2), vec3<u32>(49116u, u_input.b, u_input.b)), 10u)], true), ~(~(~24523u))), _wgslsmith_div_vec3_u32(abs(vec3<u32>(~1u, ~1u, _wgslsmith_mult_u32(u_input.b, u_input.b))), ~(vec3<u32>(arg_2, u_input.b, 4294967295u) << ((vec3<u32>(arg_2, arg_2, u_input.b) >> (vec3<u32>(22251u, 29327u, 23967u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let var_4 = global2[_wgslsmith_index_u32(1u, 10u)];
    return Struct_3(-646f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 20>();
    global2 = array<bool, 10>();
    let var_0 = u_input.b << (1u % 32u);
    global0 = func_7(_wgslsmith_f_op_vec3_f32(max(global3[_wgslsmith_index_u32(0u, 20u)], vec3<f32>(-386f, _wgslsmith_div_f32(global0.a, 117f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1156f * -1567f), -121f)))), global0.a, var_0, func_6(~vec4<u32>(abs(var_0), ~u_input.b, u_input.b, u_input.b), Struct_5(func_5(-105386i, vec3<i32>(u_input.a, u_input.a, 1i) & vec3<i32>(u_input.a, u_input.a, u_input.a), func_1(u_input.a, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_i32(u_input.a, 1i)), -select(vec4<i32>(0i, -2147483647i, u_input.a, u_input.a), vec4<i32>(-59847i, u_input.a, u_input.a, u_input.a), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 10u)], false, false)), -_wgslsmith_mod_i32(2756i, u_input.a), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(354f))), vec2<bool>(false, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(func_5(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, -17154i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, -23536i), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a) << (vec3<u32>(u_input.b, 31413u, u_input.b) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(20713i, -21481i, u_input.a))), func_7(vec3<f32>(global0.a, global0.a, 1155f), global0.a, ~35069u, Struct_3(global0.a)), -1i).a, _wgslsmith_f_op_f32(1009f * _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(func_2(false, _wgslsmith_f_op_f32(step(global0.a, -722f)), _wgslsmith_clamp_vec2_i32(vec2<i32>(26070i, u_input.a), vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, -21017i))))), func_6(max(min(vec4<u32>(u_input.b, 13033u, u_input.b, 99898u), vec4<u32>(var_0, var_0, 25714u, 20183u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 51323u, u_input.b, var_0), vec4<u32>(var_0, var_0, var_0, var_0))), Struct_5(func_5(-2147483647i, vec3<i32>(u_input.a, -53561i, u_input.a), Struct_3(-716f), u_input.a), -vec4<i32>(u_input.a, u_input.a, -1i, 28764i), _wgslsmith_mod_i32(-17624i, u_input.a), false), global0.a, vec2<bool>(select(global2[_wgslsmith_index_u32(var_0, 10u)], false, global2[_wgslsmith_index_u32(var_0, 10u)]), select(true, global2[_wgslsmith_index_u32(u_input.b, 10u)], true))).a) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(471f * -961f)))), _wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(step(global0.a, -409f))), any(select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(95419u, 10u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(24844u, 10u)], global2[_wgslsmith_index_u32(105244u, 10u)]), vec3<bool>(true, true, true))))), 1129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a)))));
    var var_2 = ~vec4<u32>(85107u, firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 1u, var_0), vec3<u32>(4294967295u, 0u, 20786u))), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.b, 4294967295u)), reverseBits(~vec3<u32>(u_input.b, var_0, var_0))), ~55296u);
    var var_3 = vec4<bool>(global2[_wgslsmith_index_u32(var_0, 10u)], all(select(vec3<bool>(true, true, all(vec2<bool>(global2[_wgslsmith_index_u32(15356u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]))), vec3<bool>(func_3(Struct_4(global0.a, global1[_wgslsmith_index_u32(32323u, 2u)], var_2.wyz), var_1.yz, vec3<bool>(global2[_wgslsmith_index_u32(25153u, 10u)], true, false)), 4294967295u >= var_2.x, u_input.a <= u_input.a), select(select(vec3<bool>(global2[_wgslsmith_index_u32(var_0, 10u)], true, global2[_wgslsmith_index_u32(var_0, 10u)]), vec3<bool>(false, true, false), true), select(vec3<bool>(false, global2[_wgslsmith_index_u32(40203u, 10u)], true), vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 10u)], true, global2[_wgslsmith_index_u32(var_0, 10u)]), global2[_wgslsmith_index_u32(var_0, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], false, global2[_wgslsmith_index_u32(4294967295u, 10u)])))), !(2211f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a)))), true);
    var_2 = firstTrailingBit(~(~(vec4<u32>(u_input.b, var_0, u_input.b, 1u) & vec4<u32>(41964u, 62783u, var_0, 22039u)))) & vec4<u32>(u_input.b, var_2.x, var_2.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -30145i, ~(~u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(global0.a - -521f))) - _wgslsmith_f_op_f32(ceil(var_1.x))));
}

