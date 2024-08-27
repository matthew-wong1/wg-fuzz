struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-10082i, -68603i, -10239i);

var<private> global1: bool = true;

var<private> global2: vec3<i32>;

var<private> global3: Struct_3 = Struct_3(Struct_1(-1i, 0i), vec3<bool>(false, true, true));

var<private> global4: array<vec2<u32>, 25>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    global0 = select(select(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global3.a.a, 0i, global0.x), vec3<i32>(global2.x, 52946i, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(79171i, 1i, u_input.a), vec3<i32>(-1i, global0.x, global2.x))), vec3<i32>(2147483647i, global3.a.a >> (arg_1 % 32u), max(global3.a.b, -2147483647i)), global3.b.x) >> ((~abs(vec3<u32>(arg_1, 30101u, arg_1)) << (_wgslsmith_div_vec3_u32(~vec3<u32>(7581u, arg_1, arg_1), vec3<u32>(1u, 0u, 56431u)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(global3.a.a, _wgslsmith_mult_i32(reverseBits(0i), 2147483647i) | _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c, global3.a.b), u_input.a), abs(1i)), true);
    global0 = vec3<i32>(1i, -abs(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 38123i, 4575i), vec3<i32>(-2147483647i, 1640i, global3.a.b)))), select(~_wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, 1i), 18308i, global2.x), abs(_wgslsmith_add_i32(global3.a.b, -5581i)) << (arg_1 % 32u), true));
    var var_0 = Struct_3(Struct_1(1i, select(_wgslsmith_clamp_i32(1i & global2.x, 17890i, select(global0.x, -33688i, global3.b.x)), ~(-45356i), !arg_0)), !(!vec3<bool>(global3.b.x, arg_1 <= 4294967295u, all(vec2<bool>(false, global3.b.x)))));
    global1 = global3.b.x;
    global3 = Struct_3(var_0.a, global3.b);
    return ~(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0.x, 1i), _wgslsmith_add_i32(u_input.c, global2.x), u_input.c) << (arg_1 % 32u));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: vec2<u32>) -> vec2<bool> {
    global1 = any(select(vec4<bool>(false, true, false, all(!vec4<bool>(global3.b.x, false, global3.b.x, global3.b.x))), select(vec4<bool>(true, !global3.b.x, false, global3.b.x), vec4<bool>(any(vec2<bool>(true, global3.b.x)), true, false, false && global3.b.x), vec4<bool>(true, !global3.b.x, !global3.b.x, global3.b.x || true)), !(!select(vec4<bool>(true, true, global3.b.x, false), vec4<bool>(false, false, true, true), vec4<bool>(global3.b.x, true, global3.b.x, global3.b.x)))));
    var var_0 = firstLeadingBit(global2.x);
    var var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(33809u, 25u)], vec2<u32>(countOneBits(~arg_3.x), arg_3.x)), ~_wgslsmith_add_u32(17587u, abs(_wgslsmith_mult_u32(1u, arg_3.x))));
    var_0 = -reverseBits(firstLeadingBit(arg_0 >> (32975u % 32u))) << (15387u % 32u);
    var_1 = 48771u;
    return !global3.b.xy;
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: Struct_2, arg_3: Struct_5) -> Struct_3 {
    global0 = vec3<i32>(firstTrailingBit(20476i), func_2(global3.b.x, ~1u), -arg_0.a.a.a);
    global3 = Struct_3(global3.a, arg_0.a.b);
    var var_0 = vec4<f32>(444f, -827f, _wgslsmith_f_op_f32(f32(-1f) * -2223f), -347f);
    let var_1 = select(arg_0.a.b.xz, !func_3(u_input.b.x | ~global3.a.b, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1121f), global4[_wgslsmith_index_u32(~2645u, 25u)]), all(func_3(select(1i, arg_0.b.x, arg_3.a.b.x) << (1u % 32u), var_0.x, var_0.x, abs(global4[_wgslsmith_index_u32(4294967295u, 25u)]) ^ vec2<u32>(1u, 1u))));
    let var_2 = var_0.x;
    return Struct_3(Struct_1(global3.a.a, _wgslsmith_div_i32(abs(-arg_0.b.x), countOneBits(global3.a.b) ^ _wgslsmith_add_i32(arg_2.c.a, arg_3.b.x))), select(select(vec3<bool>(!arg_3.a.b.x, arg_0.a.b.x & false, false), arg_3.a.b, !global3.b.x), arg_3.a.b, select(arg_2.c.a != arg_3.b.x, arg_0.a.b.x, true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    global0 = vec3<i32>(countOneBits(func_1(Struct_5(arg_2, global0.yz), firstLeadingBit(-1i) & _wgslsmith_sub_i32(global0.x, global2.x), Struct_2(arg_2.a, arg_2.a, Struct_1(global2.x, arg_2.a.b)), Struct_5(func_1(Struct_5(Struct_3(Struct_1(1i, 1i), vec3<bool>(true, arg_2.b.x, arg_2.b.x)), u_input.b), -19740i, Struct_2(arg_2.a, global3.a, arg_2.a), Struct_5(Struct_3(arg_2.a, arg_2.b), vec2<i32>(global3.a.a, -32433i))), vec2<i32>(global0.x, 1i) | u_input.b)).a.b), -65575i, max(global0.x | (select(8982i, u_input.c, true) | ~u_input.c), 1i));
    var var_0 = Struct_2(func_1(Struct_5(func_1(Struct_5(Struct_3(global3.a, arg_2.b), global0.xx), _wgslsmith_sub_i32(42309i, u_input.c), Struct_2(global3.a, arg_2.a, arg_2.a), Struct_5(Struct_3(arg_2.a, global3.b), vec2<i32>(global0.x, arg_2.a.b))), global0.xx), func_2(false, ~4294967295u << (~4294967295u % 32u)), Struct_2(Struct_1(func_1(Struct_5(Struct_3(arg_2.a, global3.b), global0.zz), -37880i, Struct_2(Struct_1(2147483647i, 16548i), Struct_1(global0.x, global2.x), Struct_1(2147483647i, u_input.a)), Struct_5(Struct_3(arg_2.a, vec3<bool>(arg_1, false, arg_2.b.x)), global0.yz)).a.b, 0i), Struct_1(abs(1i), global3.a.a >> (4294967295u % 32u)), arg_2.a), Struct_5(func_1(Struct_5(Struct_3(Struct_1(-28261i, 2147483647i), vec3<bool>(arg_1, arg_2.b.x, true)), global0.xy), _wgslsmith_dot_vec4_i32(vec4<i32>(-22970i, u_input.b.x, arg_2.a.a, 52675i), vec4<i32>(global3.a.a, arg_2.a.a, global0.x, global3.a.b)), Struct_2(Struct_1(global3.a.b, 2147483647i), arg_2.a, Struct_1(1i, 0i)), Struct_5(arg_2, u_input.b)), _wgslsmith_sub_vec2_i32(abs(global0.yy), _wgslsmith_div_vec2_i32(vec2<i32>(global3.a.b, 1i), vec2<i32>(arg_2.a.b, u_input.b.x))))).a, Struct_1(~(~_wgslsmith_mod_i32(2147483647i, -2147483647i)), -(~global0.x)), func_1(Struct_5(Struct_3(arg_2.a, vec3<bool>(false, arg_1, arg_1)), vec2<i32>(i32(-1i) * -9380i, 25516i)), -21048i, Struct_2(Struct_1(-2147483647i, -39592i), Struct_1(global0.x, 0i), global3.a), Struct_5(Struct_3(Struct_1(u_input.a, 11739i), select(global3.b, vec3<bool>(global3.b.x, arg_2.b.x, false), global3.b)), -vec2<i32>(-30000i, global2.x))).a);
    let var_1 = select(min(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 26415u)), !vec4<bool>(false, arg_1, true, true)) >> (~(vec4<u32>(~11294u, _wgslsmith_dot_vec4_u32(vec4<u32>(50871u, 4294967295u, 48153u, 0u), vec4<u32>(43717u, 1702u, 4294967295u, 0u)), 65762u, 4294967295u) | vec4<u32>(1u, 15652u, ~8244u, 46112u)) % vec4<u32>(32u));
    global0 = ((vec3<i32>(func_1(Struct_5(arg_2, global0.zx), global0.x, Struct_2(Struct_1(global3.a.b, 2147483647i), global3.a, arg_2.a), Struct_5(arg_2, global2.zz)).a.a, 21338i << (var_1.x % 32u), i32(-1i) * -1i) ^ min(_wgslsmith_mod_vec3_i32(vec3<i32>(-29717i, global3.a.a, global2.x), vec3<i32>(global0.x, global3.a.a, 2147483647i)), ~vec3<i32>(35119i, arg_2.a.a, global2.x))) >> ((select(vec3<u32>(var_1.x, 4294967295u, 1u), abs(var_1.ywx), !vec3<bool>(false, arg_1, false)) << (abs(var_1.xxw) % vec3<u32>(32u))) % vec3<u32>(32u))) << (var_1.zxw % vec3<u32>(32u));
    let var_2 = vec4<i32>(~(-12329i >> (~var_1.x % 32u)), 31103i, _wgslsmith_dot_vec2_i32(select(countOneBits(countOneBits(vec2<i32>(global0.x, arg_2.a.b))), global2.yy, vec2<bool>(true, true)), -global2.zy), _wgslsmith_clamp_i32(abs(-(~0i)), -(~arg_2.a.b >> (1u % 32u)), _wgslsmith_add_i32(~u_input.c, ~global3.a.a ^ ~1i)));
    return Struct_1(global3.a.a, -var_2.x);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> u32 {
    global0 = select(~(-_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(8970i, 2147483647i, global0.x)), vec3<i32>(2147483647i, -1i, -2147483647i))), vec3<i32>(2147483647i, -1i | max(-u_input.a, arg_1.a.a), i32(-1i) * -23480i), select(vec3<bool>(all(!vec2<bool>(arg_1.b.x, global3.b.x)), _wgslsmith_f_op_f32(select(-1102f, 1776f, true)) < _wgslsmith_f_op_f32(f32(-1f) * -270f), global3.b.x), arg_1.b, vec3<bool>(arg_1.b.x == true, (u_input.a ^ global0.x) >= (arg_1.a.a & u_input.a), arg_1.b.x)));
    let var_0 = vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.a.b, -52157i, global0.x) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a.a, u_input.c, global0.x), vec3<i32>(-1i, 2147483647i, arg_1.a.b)), vec3<i32>(global2.x, -u_input.b.x, u_input.a));
    global3 = func_1(Struct_5(func_1(Struct_5(func_1(Struct_5(arg_1, var_0.zx), arg_1.a.a, Struct_2(global3.a, global3.a, Struct_1(global2.x, 62936i)), Struct_5(Struct_3(Struct_1(global0.x, 1i), arg_1.b), vec2<i32>(u_input.c, global3.a.b))), max(vec2<i32>(-13879i, u_input.c), vec2<i32>(7389i, -2147483647i))), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1002f, -630f, 2304f, 165f) - vec4<f32>(395f, -2292f, 2661f, 499f)), arg_1.b.x || true, func_1(Struct_5(Struct_3(Struct_1(26103i, global0.x), arg_1.b), var_0.xx), -1i, Struct_2(global3.a, Struct_1(-1i, var_0.x), arg_1.a), Struct_5(Struct_3(arg_1.a, arg_1.b), u_input.b)), -591f).a, Struct_2(global3.a, arg_1.a, arg_1.a), Struct_5(Struct_3(Struct_1(global0.x, global2.x), vec3<bool>(arg_0.x, arg_1.b.x, false)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -2147483647i), var_0.zx))), abs(vec2<i32>(~(-62258i), -2147483647i))), firstLeadingBit(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(-66251i, global0.x), max(-2147483647i, arg_1.a.a))), Struct_2(global3.a, Struct_1(global3.a.a, ~(-24276i)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.b.x, global2.x, -8553i), vec4<i32>(arg_1.a.a, 2147483647i, var_0.x, 2147483647i)) << (firstLeadingBit(23216u) % 32u), -2147483647i)), Struct_5(func_1(Struct_5(arg_1, u_input.b), global3.a.a, Struct_2(Struct_1(arg_1.a.a, 28720i), func_1(Struct_5(Struct_3(Struct_1(-2147483647i, 70389i), global3.b), u_input.b), global2.x, Struct_2(arg_1.a, arg_1.a, Struct_1(-47113i, 2147483647i)), Struct_5(arg_1, global2.xz)).a, func_4(vec4<f32>(832f, -1613f, -408f, -334f), arg_1.b.x, Struct_3(arg_1.a, global3.b), 2512f)), Struct_5(func_1(Struct_5(arg_1, global0.zz), 2147483647i, Struct_2(Struct_1(-2147483647i, -16485i), Struct_1(global2.x, global2.x), global3.a), Struct_5(arg_1, vec2<i32>(arg_1.a.a, 40519i))), global0.yz)), vec2<i32>(u_input.b.x & func_1(Struct_5(arg_1, vec2<i32>(arg_1.a.a, global2.x)), arg_1.a.b, Struct_2(arg_1.a, Struct_1(1i, -1i), Struct_1(-1i, -17975i)), Struct_5(arg_1, global0.zz)).a.b, countOneBits(-2147483647i))));
    let var_1 = vec2<i32>(abs(~firstLeadingBit(-15690i)), _wgslsmith_mult_i32(global2.x, ~var_0.x));
    let var_2 = arg_1.b.yy;
    return ~(~(~7360u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(abs(func_5(!vec2<bool>(any(global3.b), global3.b.x), Struct_3(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(131f, -2058f, -1000f, 1335f), vec4<f32>(-126f, -1000f, -1337f, -1477f)), true, func_1(Struct_5(Struct_3(Struct_1(-1i, global3.a.b), global3.b), vec2<i32>(49627i, -2147483647i)), -1i, Struct_2(global3.a, Struct_1(-1i, 0i), Struct_1(-69636i, -2147483647i)), Struct_5(Struct_3(Struct_1(global0.x, global3.a.a), vec3<bool>(false, true, true)), vec2<i32>(-46110i, -1i))), _wgslsmith_f_op_f32(-365f - -847f)), func_1(Struct_5(Struct_3(Struct_1(global0.x, 36463i), vec3<bool>(global3.b.x, global3.b.x, true)), u_input.b), global2.x, Struct_2(Struct_1(-2147483647i, -43038i), global3.a, Struct_1(-2147483647i, 113846i)), Struct_5(Struct_3(Struct_1(global2.x, u_input.a), global3.b), vec2<i32>(global2.x, 2147483647i))).b))), 25u)];
    let var_1 = firstLeadingBit(var_0.x);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -108f, 386f, -492f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(823f, 839f, 1000f, 100f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2358f, 292f, 1682f, -1603f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-252f, 545f, -1233f, -643f))), -33539i == global2.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1345f, 589f, 1815f, -718f), vec4<f32>(1056f, -1034f, -614f, -949f)))))));
    var var_3 = _wgslsmith_dot_vec3_i32(((_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, -24172i, 1i), vec3<i32>(1598i, -9606i, -2147483647i)) << (vec3<u32>(0u, 0u, var_0.x) % vec3<u32>(32u))) & (abs(vec3<i32>(global3.a.a, global0.x, 60881i)) | -vec3<i32>(global0.x, u_input.a, global0.x))) & ~vec3<i32>(global3.a.a, 2672i >> (var_0.x % 32u), i32(-1i) * -24943i), ~(-vec3<i32>(1i, 1i, 1i)));
    var var_4 = Struct_5(Struct_3(global3.a, select(!select(vec3<bool>(true, global3.b.x, false), vec3<bool>(true, true, global3.b.x), global3.b.x), !func_1(Struct_5(Struct_3(Struct_1(global2.x, global3.a.b), global3.b), global2.xz), -2147483647i, Struct_2(Struct_1(global2.x, -9099i), global3.a, global3.a), Struct_5(Struct_3(Struct_1(2147483647i, u_input.a), vec3<bool>(global3.b.x, global3.b.x, true)), global2.xz)).b, global3.b.x)), vec2<i32>(-(~(-18568i)), 1i));
    let var_5 = 24907u;
    var var_6 = _wgslsmith_mod_i32(61533i, global3.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f - var_2.x)), 0u, reverseBits(max(~(~vec4<u32>(var_1, var_0.x, var_1, var_0.x)), firstLeadingBit(vec4<u32>(var_5, var_0.x, var_5, var_0.x)) ^ reverseBits(vec4<u32>(var_5, 4294967295u, 4294967295u, var_1)))));
}

