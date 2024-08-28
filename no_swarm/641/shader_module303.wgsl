struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: i32 = 21000i;

var<private> global2: Struct_1 = Struct_1(-251f, 302f, vec2<i32>(1i, -5464i), vec2<u32>(1u, 58213u));

var<private> global3: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(28663u, 53476u), vec2<u32>(17032u, 37470u), vec2<u32>(51963u, 4294967295u), vec2<u32>(4294967295u, 3304u), vec2<u32>(4294967295u, 0u), vec2<u32>(7354u, 4294967295u), vec2<u32>(1039u, 19039u), vec2<u32>(111436u, 26669u), vec2<u32>(30466u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(5198u, 46067u), vec2<u32>(64883u, 97579u), vec2<u32>(54998u, 1u), vec2<u32>(30454u, 0u), vec2<u32>(115023u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 32160u), vec2<u32>(51554u, 1u), vec2<u32>(25081u, 12531u), vec2<u32>(3268u, 1u), vec2<u32>(0u, 19276u), vec2<u32>(8491u, 4294967295u), vec2<u32>(63341u, 80052u), vec2<u32>(13950u, 4294967295u), vec2<u32>(40965u, 54450u), vec2<u32>(826u, 1u), vec2<u32>(1u, 58378u), vec2<u32>(59146u, 4294967295u), vec2<u32>(22496u, 97117u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = ~arg_0;
    let var_1 = vec2<bool>(all(select(!(!vec3<bool>(arg_2, false, arg_2)), vec3<bool>(any(vec3<bool>(arg_2, false, arg_1)), any(vec3<bool>(false, arg_2, false)), any(vec4<bool>(false, true, false, false))), arg_1)), true);
    var var_2 = vec3<bool>(var_1.x, false, true);
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(-988f + -282f), u_input.d, vec2<u32>(_wgslsmith_mult_u32(~56025u, arg_0.x), global2.d.x));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_f32(global2.b, 1347f), global2.b, vec2<i32>(-43182i, 35040i), ~global2.d);
    var var_1 = min(vec3<i32>(-33516i, _wgslsmith_dot_vec2_i32(reverseBits(abs(var_0.c)), ~vec2<i32>(u_input.e.x, var_0.c.x)), _wgslsmith_mult_i32(arg_2, _wgslsmith_add_i32(func_2(arg_3, arg_1.x, true, var_0.d).c.x, countOneBits(0i)))), ~u_input.e);
    var var_2 = Struct_1(global2.b, var_0.b, vec2<i32>(~u_input.c, _wgslsmith_mult_i32(arg_0.c.x, -17937i | var_1.x) & var_1.x), vec2<u32>(~firstLeadingBit(23206u), firstTrailingBit(~(~1u))));
    global3 = array<vec2<u32>, 32>();
    var_1 = ~_wgslsmith_div_vec3_i32(vec3<i32>(global2.c.x, -(var_0.c.x << (u_input.a.x % 32u)), i32(-1i) * -var_2.c.x), abs(~(-vec3<i32>(var_0.c.x, 0i, -7434i))));
    return Struct_1(-536f, _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-569f))))))), ~func_2(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, var_0.d.x, 2562u, 51974u), arg_3), !(var_0.d.x != var_0.d.x), ~var_2.d.x < ~arg_3.x, vec2<u32>(1u, min(46493u, 46934u))).c, select(vec2<u32>(23881u, arg_0.d.x), vec2<u32>(1u, u_input.a.x), !(!arg_1.wy)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    global2 = arg_0;
    global3 = array<vec2<u32>, 32>();
    global1 = global2.c.x;
    global2 = func_3(Struct_1(_wgslsmith_f_op_f32(-1093f - global2.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(floor(global2.a)))), -1131f)), firstLeadingBit(vec2<i32>(u_input.d.x, _wgslsmith_add_i32(arg_1.c.x, global2.c.x))), vec2<u32>(arg_1.d.x, max(arg_1.d.x, 1u))), !(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), u_input.d.x, firstTrailingBit(firstTrailingBit(max(firstTrailingBit(vec4<u32>(arg_1.d.x, arg_1.d.x, arg_0.d.x, arg_0.d.x)), vec4<u32>(arg_1.d.x, 2086u, 467u, 18669u) | vec4<u32>(arg_1.d.x, 58891u, arg_1.d.x, global2.d.x)))));
    global3 = array<vec2<u32>, 32>();
    return global2.d;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = global2.c.x;
    var var_0 = ~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.d.x, abs(~u_input.a.x), firstTrailingBit(u_input.a.x)), 32u)] >> ((_wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(~u_input.a.x, 32u)], vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 0u), u_input.a.x)) ^ func_4(func_3(func_2(vec4<u32>(7947u, global2.d.x, u_input.a.x, global2.d.x), true, true, vec2<u32>(global2.d.x, u_input.a.x)), vec4<bool>(true, true, true, true), u_input.e.x | global2.c.x, ~vec4<u32>(35244u, u_input.a.x, global2.d.x, 4294967295u)), Struct_1(-219f, _wgslsmith_f_op_f32(global2.a + 513f), vec2<i32>(-2147483647i, u_input.e.x), global2.d))) % vec2<u32>(32u));
    var var_1 = -103f;
    var_0 = global3[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 32u)];
    global0 = u_input.c;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -178f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_3(Struct_1(124f, arg_0, vec2<i32>(u_input.d.x, u_input.c), global3[_wgslsmith_index_u32(var_0.x, 32u)]), vec4<bool>(false, false, true, false), 151i, vec4<u32>(0u, 4294967295u, var_0.x, global2.d.x)).a))), -firstTrailingBit(func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(48187u, 0u, var_0.x, 39745u), vec4<u32>(1u, 4294967295u, global2.d.x, 0u)), all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), global2.d).c), vec2<u32>(u_input.a.x, firstLeadingBit(u_input.b.x | u_input.a.x)) << (func_4(Struct_1(_wgslsmith_div_f32(arg_0, 206f), _wgslsmith_f_op_f32(258f + -2106f), _wgslsmith_mod_vec2_i32(u_input.e.xy, u_input.d), func_3(Struct_1(global2.a, arg_0, vec2<i32>(-1i, u_input.d.x), vec2<u32>(1u, 14882u)), vec4<bool>(true, false, true, false), global2.c.x, vec4<u32>(var_0.x, 1u, var_0.x, global2.d.x)).d), Struct_1(_wgslsmith_f_op_f32(arg_0 - 1411f), _wgslsmith_f_op_f32(min(876f, -1768f)), global2.c, vec2<u32>(u_input.a.x, var_0.x))) % vec2<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1678f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-207f)), arg_1.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-arg_0.a)).a - -579f), 1373f)), vec2<i32>(_wgslsmith_sub_i32(~arg_3.c.x & arg_3.c.x, ~_wgslsmith_mod_i32(arg_1.c.x, 33347i)), -10612i), vec2<u32>(arg_1.d.x, arg_0.d.x));
    global2 = Struct_1(-594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), global2.c, _wgslsmith_mult_vec2_u32(~(~(~arg_1.d)), vec2<u32>(func_3(arg_1, vec4<bool>(true, true, true, true), 19314i, vec4<u32>(arg_1.d.x, arg_0.d.x, global2.d.x, arg_3.d.x)).d.x, global2.d.x | global2.d.x) >> (~(~arg_3.d) % vec2<u32>(32u))));
    var_0 = func_2(vec4<u32>(global2.d.x, ~func_4(Struct_1(arg_0.b, -394f, vec2<i32>(-24583i, -71618i), vec2<u32>(global2.d.x, arg_0.d.x)), func_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 18812u), false, true, arg_1.d)).x, ~(~(u_input.b.x | 1u)), 1u), false || (any(vec2<bool>(false, false)) && true), (1u & ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.a)) != (_wgslsmith_dot_vec2_u32(vec2<u32>(16120u, 1u), ~vec2<u32>(94087u, 50164u)) << (_wgslsmith_div_u32(5192u, arg_0.d.x) % 32u)), u_input.b.yx);
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-arg_3.b))));
    global0 = -var_0.c.x;
    return abs(50685i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(func_5(func_1(_wgslsmith_f_op_f32(select(global2.a, 675f, true))), func_3(Struct_1(_wgslsmith_f_op_f32(-global2.b), global2.b, u_input.e.zz, vec2<u32>(u_input.b.x, 38391u)), vec4<bool>(true, all(vec2<bool>(true, false)), false, false), -abs(u_input.e.x), select(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.a.x), ~vec4<u32>(1u, 4294967295u, 55790u, 33611u), true)), global2.d.x, func_3(func_3(func_1(global2.a), vec4<bool>(false, false, false, false), _wgslsmith_sub_i32(u_input.d.x, u_input.e.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, global2.d.x, 40666u, u_input.a.x), vec4<u32>(1u, global2.d.x, u_input.b.x, u_input.a.x))), vec4<bool>(true, true, true, true), -18367i, countOneBits(firstLeadingBit(vec4<u32>(1u, 4294967295u, 4994u, u_input.a.x))))), -u_input.e.x);
    global3 = array<vec2<u32>, 32>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2396f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(-388f + -1000f)))) - 262f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-366f, _wgslsmith_f_op_f32(round(-1210f)))), vec2<i32>((_wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.x, var_0, 0i, u_input.e.x), vec4<i32>(u_input.e.x, 7613i, 15081i, 32615i)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global2.c.x, var_0), vec2<i32>(global2.c.x, global2.c.x))) << (~35338u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(func_2(vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, 63284u), false, true, vec2<u32>(global2.d.x, 18142u)).c.x, u_input.c, _wgslsmith_dot_vec2_i32(global2.c, u_input.e.yx)), vec3<i32>(countOneBits(var_0), 0i, 0i >> (1u % 32u)))), vec2<u32>(_wgslsmith_div_u32(~u_input.b.x, 0u), u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(689f, var_1.b))))), var_1.b));
    var var_3 = any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_1.b != global2.a), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))) != false;
    let var_4 = 2147483647i;
    global1 = -var_4;
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -1435f), global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, var_1.d.x)), vec4<u32>(countOneBits(95583u), func_1(var_5.x).d.x, func_3(Struct_1(-490f, global2.a, u_input.e.yy, vec2<u32>(4294967295u, 49424u)), vec4<bool>(false, true, true, true), -23311i, vec4<u32>(44921u, 1u, 1u, 17998u)).d.x, 1u)) & _wgslsmith_div_vec4_u32(vec4<u32>(0u & var_1.d.x, 45171u & u_input.b.x, _wgslsmith_div_u32(0u, u_input.b.x), 0u | u_input.a.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(14789u, 112848u, u_input.a.x, global2.d.x), vec4<u32>(70999u, var_1.d.x, var_1.d.x, var_1.d.x))), u_input.b, -1i);
}

