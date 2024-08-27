struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: Struct_4,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23>;

var<private> global1: Struct_2;

var<private> global2: array<u32, 22>;

var<private> global3: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(1u, 1u, 4294967295u, 68825u), vec4<u32>(62765u, 19439u, 1140u, 1u), vec4<u32>(1u, 0u, 1u, 45501u), vec4<u32>(37361u, 4294967295u, 49298u, 0u), vec4<u32>(1u, 1u, 8445u, 4294967295u), vec4<u32>(46358u, 31797u, 18126u, 4294967295u), vec4<u32>(57705u, 1u, 31984u, 56042u), vec4<u32>(14257u, 10393u, 29394u, 110593u), vec4<u32>(5875u, 54344u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 40806u, 43997u, 4294967295u), vec4<u32>(44436u, 24366u, 6916u, 45210u), vec4<u32>(25334u, 4294967295u, 27427u, 0u), vec4<u32>(1u, 4294967295u, 142026u, 0u), vec4<u32>(61944u, 33722u, 2407u, 17471u), vec4<u32>(65303u, 15151u, 0u, 8299u), vec4<u32>(89579u, 92745u, 0u, 44013u), vec4<u32>(34150u, 1u, 14815u, 68517u), vec4<u32>(1u, 24219u, 33103u, 17827u), vec4<u32>(9262u, 0u, 68006u, 72665u), vec4<u32>(66356u, 4294967295u, 27317u, 51301u), vec4<u32>(1u, 4294967295u, 0u, 99481u), vec4<u32>(48587u, 13895u, 4294967295u, 26903u), vec4<u32>(63026u, 0u, 39268u, 43287u), vec4<u32>(28578u, 4294967295u, 26060u, 75011u), vec4<u32>(25902u, 0u, 47437u, 1u), vec4<u32>(25430u, 0u, 2580u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(15305u, 1u, 48424u, 0u), vec4<u32>(0u, 0u, 32875u, 4294967295u), vec4<u32>(0u, 1u, 14945u, 1u), vec4<u32>(9170u, 28066u, 96903u, 22834u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> vec3<u32> {
    let var_0 = Struct_3(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 22u)]), select(_wgslsmith_dot_vec2_u32(arg_1.a.yy, vec2<u32>(arg_0.a, global2[_wgslsmith_index_u32(71006u, 22u)])) << ((4294967295u | global1.a.a) % 32u), abs(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a, 1u), 32u)], global3[_wgslsmith_index_u32(0u, 32u)])), arg_1.c.b));
    let var_1 = global1.a.a;
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>((_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.b, 60i, 33054i), vec4<i32>(1i, arg_1.b, 1i, 25097i)) & (i32(-1i) * -2147483647i)) & arg_1.b, _wgslsmith_clamp_i32(~(~arg_1.b), min(arg_1.b, arg_1.b), 0i)));
    global2 = array<u32, 22>();
    global1 = Struct_2(Struct_1(abs(59789u)));
    return reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(12631u, firstLeadingBit(u_input.a) >> (_wgslsmith_mult_u32(arg_1.a.x, 7737u) % 32u), global2[_wgslsmith_index_u32(~min(global1.a.a, 5802u), 22u)]), vec3<u32>(arg_1.c.c.b, 4294967295u, ~_wgslsmith_div_u32(global1.a.a, 4294967295u)), abs(~arg_1.a) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.a.yz, vec2<u32>(93737u, 4294967295u)), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(28747u, 22u)], 95413u), ~u_input.a) % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_1) -> Struct_5 {
    var var_0 = Struct_3(global1.a, 0u);
    var var_1 = Struct_5(_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 35887u), vec3<u32>(u_input.a, arg_0.a, 16956u) >> (vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 22u)], 26211u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(func_3(Struct_1(8077u), Struct_5(vec3<u32>(1u, global1.a.a, 4294967295u), 0i, Struct_4(Struct_3(Struct_1(var_0.b), 37548u), true, Struct_3(var_0.a, var_0.b)), global0[_wgslsmith_index_u32(63221u, 23u)])), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_0.a.a, var_0.b), vec3<u32>(4294967295u, 0u, 66591u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(global1.a.a, 22u)], 4294967295u, u_input.a), ~vec3<u32>(0u, 6142u, var_0.a.a)), abs(vec3<u32>(36478u, 4294967295u, var_0.b) >> (vec3<u32>(4294967295u, var_0.b, 1u) % vec3<u32>(32u))))), -1i, Struct_4(Struct_3(var_0.a, 0u), !any(vec2<bool>(false, false)), Struct_3(global1.a, global1.a.a)), vec2<bool>(~var_0.a.a > 1u, true));
    var var_2 = var_1.b;
    global1 = Struct_2(Struct_1(~abs(var_0.a.a) >> (_wgslsmith_div_u32(var_1.c.a.b >> (13782u % 32u), ~16544u) % 32u)));
    let var_3 = -806f;
    return Struct_5(vec3<u32>(u_input.a, ~min(_wgslsmith_mod_u32(22336u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 22u)], 22u)]), var_1.c.c.b), ~((arg_0.a << (4294967295u % 32u)) >> (u_input.a % 32u))), reverseBits(_wgslsmith_sub_i32(~(~(-2147483647i)), _wgslsmith_mod_i32(~45832i, var_1.b))), var_1.c, select(!global0[_wgslsmith_index_u32(5984u, 23u)], select(!(!vec2<bool>(var_1.c.b, true)), select(vec2<bool>(var_1.c.b, var_1.d.x), vec2<bool>(false, true), vec2<bool>(var_1.d.x, true)), any(vec4<bool>(true, var_1.d.x, var_1.d.x, var_1.c.b)) && all(vec2<bool>(var_1.c.b, var_1.d.x))), select(vec2<bool>(true, true), select(vec2<bool>(false, var_1.c.b), global0[_wgslsmith_index_u32(~20633u, 23u)], !vec2<bool>(var_1.d.x, var_1.c.b)), _wgslsmith_dot_vec2_u32(var_1.a.zz, var_1.a.xx) > 4294967295u)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(2108f)))), 1f, 403f, -483f);
    return all(select(vec2<bool>(true, arg_0.c.b), select(vec2<bool>(all(vec2<bool>(arg_0.d.x, true)), !arg_0.d.x), global0[_wgslsmith_index_u32(~(4294967295u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30282u, 22u)], 22u)] % 32u)), 23u)], false), select(func_2(global1.a).d, arg_0.d, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(arg_1.a), _wgslsmith_mod_u32(1u, 1u)), 22u)], 22u)], 23u)])));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-901f - 177f);
    global1 = Struct_2(global1.a);
    global2 = array<u32, 22>();
    var var_1 = select(-25452i, arg_0.x, all(!(!vec4<bool>(true, arg_1, arg_1, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(848f, 592f, 518f, -453f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2032f, -211f, 2952f, 559f) - vec4<f32>(1100f, -1316f, -198f, 734f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-911f, -1737f, 561f, 958f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(883f, 996f, 283f, -797f) + vec4<f32>(-598f, 1000f, -1000f, 1721f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(375f, -1083f, 1461f, 1169f) * vec4<f32>(-811f, -778f, -334f, -1586f))))))));
    return func_2(Struct_1(arg_2.x)).c.c.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_5) -> Struct_1 {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(1i, -21507i, _wgslsmith_mult_i32(_wgslsmith_add_i32(15136i, 1i), _wgslsmith_mod_i32(arg_2.b, arg_2.b)));
    let var_1 = Struct_2(arg_0);
    let var_2 = func_4(Struct_5(_wgslsmith_add_vec3_u32(arg_2.a, ~vec3<u32>(arg_0.a, arg_2.a.x, global2[_wgslsmith_index_u32(1u, 22u)])), ~1i << (~(~var_1.a.a) % 32u), func_2(var_1.a).c, vec2<bool>(all(func_2(Struct_1(arg_1.a)).d), arg_2.c.b && true)), global1.a);
    var_0 = firstTrailingBit(vec3<i32>(arg_2.b, _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -45640i, _wgslsmith_add_i32(-2147483647i, arg_2.b)), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(1i, arg_2.b)))), reverseBits(~(-33388i))));
    let var_3 = func_2(arg_2.c.c.a).c;
    return var_3.c.a;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    global1 = Struct_2(func_2(func_5(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -26886i, -27866i, 8550i), vec4<i32>(2147483647i, 0i, 1i, 0i))), false, global3[_wgslsmith_index_u32(3596u, 32u)])).c.a.a);
    global2 = array<u32, 22>();
    var var_0 = max(~60303u & _wgslsmith_clamp_u32(1u, ~_wgslsmith_div_u32(438u, u_input.a), ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 22u)], global1.a.a)), abs(11126u));
    var var_1 = Struct_4(func_2(global1.a).c.c, select(!(!(!arg_1.x)), false, arg_1.x), func_2(func_5(vec4<i32>(-49667i, 28434i, -1i, func_2(Struct_1(0u)).b), false, vec4<u32>(global1.a.a, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global1.a.a, 22u)], u_input.a), 1u, global1.a.a))).c.a);
    var_0 = ~4294967295u;
    return Struct_2(func_5(reverseBits(countOneBits(vec4<i32>(1i, 0i, 14865i, 11178i))), true, reverseBits(vec4<u32>(4294967295u, ~arg_0.a, firstTrailingBit(global2[_wgslsmith_index_u32(1u, 22u)]), global1.a.a))));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> bool {
    global2 = array<u32, 22>();
    let var_0 = func_7(func_6(func_5(firstLeadingBit(vec4<i32>(arg_1, 24045i, -1i, 12671i) & vec4<i32>(-6812i, arg_1, arg_1, -2147483647i)), func_4(func_2(global1.a), global1.a), max(max(global3[_wgslsmith_index_u32(33408u, 32u)], global3[_wgslsmith_index_u32(99041u, 32u)]), min(vec4<u32>(global1.a.a, u_input.a, 10712u, 42936u), vec4<u32>(global1.a.a, u_input.a, 1u, u_input.a)))), Struct_1(abs(~5136u)), Struct_5(min(vec3<u32>(global1.a.a, u_input.a, 0u), vec3<u32>(3443u, u_input.a, global1.a.a)), -reverseBits(-27574i), func_2(func_5(vec4<i32>(arg_1, arg_1, arg_1, -1i), true, vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 22u)], 1u, global2[_wgslsmith_index_u32(global1.a.a, 22u)]))).c, arg_0.xy)), vec3<bool>(false, true, all(select(arg_0, vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), !vec4<bool>(arg_0.x, true, true, true)))));
    global0 = array<vec2<bool>, 23>();
    global3 = array<vec4<u32>, 32>();
    var var_1 = all(!arg_0.zw) & (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1396f, 280f) * _wgslsmith_f_op_f32(sign(450f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(855f, -1000f))));
    return func_2(func_6(func_7(func_6(Struct_1(18621u), func_2(Struct_1(5604u)).c.a.a, func_2(var_0.a)), !(!arg_0.yxz)).a, var_0.a, Struct_5(abs(max(vec3<u32>(0u, global1.a.a, 18241u), vec3<u32>(global2[_wgslsmith_index_u32(global1.a.a, 22u)], global2[_wgslsmith_index_u32(60367u, 22u)], u_input.a))), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 13400i, -2147483647i, -1i), vec4<i32>(0i, arg_1, 2147483647i, 2147483647i))), Struct_4(func_2(Struct_1(4294967295u)).c.a, !arg_0.x, func_2(Struct_1(48134u)).c.a), vec2<bool>(!arg_0.x, false & arg_0.x)))).d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1(vec4<bool>(false, true, false, false), 1i)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, true))), true), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), true), true);
    global3 = array<vec4<u32>, 32>();
    let var_1 = ~(~func_6(func_6(Struct_1(1u), Struct_1(4294967295u), Struct_5(vec3<u32>(global2[_wgslsmith_index_u32(global1.a.a, 22u)], 20080u, u_input.a), -37826i, Struct_4(Struct_3(global1.a, 1u), var_0.x, Struct_3(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 22u)]), u_input.a)), vec2<bool>(true, var_0.x))), global1.a, Struct_5(vec3<u32>(global1.a.a, 29332u, 4294967295u), -1i, Struct_4(Struct_3(global1.a, 42329u), false, Struct_3(global1.a, u_input.a)), vec2<bool>(var_0.x, var_0.x))).a) ^ global1.a.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2033f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1143f - _wgslsmith_f_op_f32(round(995f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1630f + 359f), -2232f)))));
    let var_3 = func_2(global1.a).c;
    var var_4 = var_3.c;
    global2 = array<u32, 22>();
    var var_5 = abs(abs(firstLeadingBit(firstLeadingBit(-vec4<i32>(2147483647i, 46789i, 0i, -4257i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~func_2(var_3.c.a).a.xz)));
}

