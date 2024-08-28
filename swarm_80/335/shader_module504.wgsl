struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 4>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> vec4<i32> {
    global0 = ~4294967295u;
    return arg_3.b.b;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = -arg_2.xx;
    global1 = array<bool, 4>();
    var var_1 = Struct_1(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 4u)], arg_0, false), vec3<bool>(true, (u_input.b << (u_input.a % 32u)) >= ~u_input.b, !(false == arg_0)), (all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 4u)], true, false, arg_0)) && all(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 4u)], true, true))) != true), func_3(select(arg_0, true, true), u_input.c, Struct_3(-_wgslsmith_sub_i32(16519i, 10529i), Struct_1(vec3<bool>(true, true, true), abs(vec4<i32>(-21067i, arg_1.x, arg_2.x, u_input.c)), !vec2<bool>(true, arg_0), true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(674f + 503f))), Struct_3(arg_2.x, Struct_1(select(vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 4u)], false), vec3<bool>(true, arg_0, arg_0), false), vec4<i32>(2147483647i, -37086i, arg_1.x, u_input.c), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], arg_0), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 4u)]), vec2<bool>(false, false)), true, true), -1701f)), vec2<bool>(true, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a, 4294967295u)) != (~u_input.a | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, 1u), vec3<u32>(u_input.b, u_input.b, 4294967295u)))), !((u_input.b > (u_input.a >> (1u % 32u))) & select(!arg_0, true, true)), true && (true & !(!global1[_wgslsmith_index_u32(u_input.b, 4u)])));
    var var_2 = select(var_1.a, select(select(select(var_1.a, select(var_1.a, var_1.a, var_1.a), var_1.a.x), var_1.a, any(select(var_1.c, var_1.a.zz, global1[_wgslsmith_index_u32(u_input.b, 4u)]))), vec3<bool>(arg_0, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 4u)], false, false, arg_0)), any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 4u)])) & true), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 843u), vec2<u32>(u_input.b, u_input.a)), firstLeadingBit(vec2<u32>(4294967295u, u_input.b))) >= u_input.a), select(vec3<bool>(true, global1[_wgslsmith_index_u32(~(~u_input.a), 4u)], true), select(vec3<bool>(true, true, true), vec3<bool>(!global1[_wgslsmith_index_u32(27006u, 4u)], true & global1[_wgslsmith_index_u32(u_input.a, 4u)], true), !var_1.a), var_1.a));
    var_1 = Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 4u)], true), vec4<i32>(-36383i, -(min(arg_2.x, u_input.c) << (90855u % 32u)), arg_1.x, _wgslsmith_add_i32(-(~var_1.b.x), abs(8464i))), !select(!var_1.a.zz, var_2.yx, true), !var_1.d, false);
    return Struct_1(select(var_1.a, select(vec3<bool>(var_2.x && global1[_wgslsmith_index_u32(u_input.a, 4u)], true, true), var_1.a, false), vec3<bool>(true, !all(var_1.a.xx), all(var_2.xx) == true)), abs(max(~select(vec4<i32>(13450i, 1i, u_input.c, -2147483647i), var_1.b, global1[_wgslsmith_index_u32(24669u, 4u)]), -vec4<i32>(arg_1.x, var_1.b.x, -2147483647i, var_0.x))), select(var_1.c, var_2.zx, select(select(select(var_2.yz, var_1.a.xy, vec2<bool>(arg_0, var_2.x)), vec2<bool>(true, var_2.x), vec2<bool>(var_1.c.x, global1[_wgslsmith_index_u32(4294967295u, 4u)])), select(select(var_2.yx, var_2.yx, vec2<bool>(var_2.x, var_2.x)), var_2.yx, select(var_2.zy, vec2<bool>(var_1.e, global1[_wgslsmith_index_u32(4294967295u, 4u)]), arg_0)), select(vec2<bool>(var_2.x, var_1.e), var_1.a.zy, false))), ~countOneBits(10422i & arg_2.x) != ~_wgslsmith_clamp_i32(select(-2147483647i, 1i, var_1.d), ~var_0.x, 17209i), var_1.c.x);
}

fn func_1(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = Struct_3(~u_input.c & arg_0.c, func_2(true, vec2<i32>(u_input.c, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(9884i, -43583i), vec2<i32>(u_input.c, arg_0.a)), ~(-2147483647i))), select(~(~vec3<i32>(11083i, 2147483647i, u_input.c)), ~abs(vec3<i32>(1i, u_input.c, u_input.c)), !any(vec4<bool>(true, arg_0.b, true, arg_0.b)))), _wgslsmith_f_op_f32(655f + -1968f));
    global0 = ~43617u << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), min(~vec2<u32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.a, u_input.b)))), vec2<u32>(countOneBits(u_input.a), u_input.a) ^ ((vec2<u32>(u_input.b, 1u) >> (vec2<u32>(108437u, 29973u) % vec2<u32>(32u))) >> ((vec2<u32>(u_input.b, 1671u) ^ vec2<u32>(1u, 1u)) % vec2<u32>(32u)))) % 32u);
    var var_1 = all(select(!select(vec3<bool>(arg_0.b, arg_0.b, var_0.b.c.x), func_2(arg_0.b, vec2<i32>(48665i, 2147483647i), vec3<i32>(arg_0.a, var_0.b.b.x, arg_0.c)).a, global1[_wgslsmith_index_u32(u_input.b, 4u)]), select(!(!var_0.b.a), vec3<bool>(-176f < var_0.c, select(true, global1[_wgslsmith_index_u32(u_input.a, 4u)], arg_0.b), false), !(!vec3<bool>(var_0.b.d, arg_0.b, false))), any(var_0.b.a)));
    var_1 = false;
    global0 = u_input.a;
    return ~min(firstTrailingBit(abs(~vec2<u32>(u_input.b, u_input.a))), countOneBits(vec2<u32>(u_input.a, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b ^ u_input.b, countOneBits(u_input.b)), _wgslsmith_clamp_u32(firstLeadingBit(~reverseBits(u_input.a)), _wgslsmith_sub_u32(reverseBits(u_input.a), u_input.a) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(11542u, 50401u), vec2<u32>(1u, u_input.a)), _wgslsmith_mod_u32(52599u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.a, u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 3365u, 14544u), vec3<u32>(4294967295u, 47726u, u_input.b))))));
    let var_1 = -_wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(10291i, 1i) | vec2<i32>(u_input.c, 1i)), ~(~vec2<i32>(u_input.c, 11800i)));
    var var_2 = ~_wgslsmith_sub_vec2_u32(select(func_1(Struct_2(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 4u)], var_1.x)), vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(u_input.b, 1u), true), vec2<u32>(~u_input.a, 39809u)) ^ vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(49054u, u_input.a, u_input.a)), vec3<u32>(u_input.b ^ 77408u, ~1u, u_input.a)));
    let var_3 = Struct_2(-(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_1.x, u_input.c) & vec3<i32>(u_input.c, var_1.x, u_input.c), vec3<i32>(var_1.x, 22242i, -1i)) >> (var_2.x % 32u)), false, func_2(_wgslsmith_dot_vec2_i32(var_1 & var_1, -var_1) != var_1.x, _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(28818i, 12094i)), vec2<i32>(u_input.c, -1i)), ~(~(-vec3<i32>(0i, -1i, u_input.c)))).b.x);
    var var_4 = Struct_3(-var_1.x << (~_wgslsmith_mult_u32(98179u, ~u_input.b) % 32u), func_2(global1[_wgslsmith_index_u32(countOneBits(0u) | _wgslsmith_add_u32(4294967295u | var_2.x, u_input.a), 4u)], vec2<i32>(_wgslsmith_sub_i32(~var_3.c, u_input.c & var_3.a), var_3.c), select(-(~vec3<i32>(var_3.a, u_input.c, u_input.c)), vec3<i32>(u_input.c, var_3.c, -13657i), vec3<bool>(func_2(false, vec2<i32>(u_input.c, -3706i), vec3<i32>(var_1.x, var_3.a, var_1.x)).e, !var_3.b, var_3.b))), _wgslsmith_f_op_f32(119f * 375f));
    let var_5 = Struct_2(countOneBits(_wgslsmith_mod_i32(-26107i, func_3(var_3.b, _wgslsmith_sub_i32(-2147483647i, u_input.c), Struct_3(-2147483647i, var_4.b, 1109f), Struct_3(2147483647i, var_4.b, var_4.c)).x)), any(func_2(var_4.a < var_4.b.b.x, -countOneBits(var_4.b.b.xz), ~(~vec3<i32>(-2147483647i, var_1.x, var_3.a))).a), countOneBits(~(-1i)));
    let var_6 = var_1.x;
    let var_7 = select(func_2(false & ((1940f != var_4.c) && false), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(var_4.b.b.wz, var_1), ~abs(-var_4.b.b.wxx)).a, var_4.b.a, all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, u_input.a), 4u)] & false, _wgslsmith_add_u32(var_2.x, 13430u) > u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-234f, _wgslsmith_f_op_f32(-var_4.c), -170f, _wgslsmith_f_op_f32(-346f - 1300f)), max(vec3<i32>(0i, var_6, -82369i), vec3<i32>(i32(-1i) * -u_input.c, i32(-1i) * -34948i, -11124i)));
}

