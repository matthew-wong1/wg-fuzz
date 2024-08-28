struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 8652u;

var<private> global1: array<u32, 5> = array<u32, 5>(44783u, 67145u, 4294967295u, 24959u, 1u);

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-1i, 2147483647i, -15467i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(34192i, -4502i, 0i), vec3<i32>(0i, -1i, 0i), vec3<i32>(1i, -14180i, i32(-2147483648)), vec3<i32>(-12687i, 20026i, 61452i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(-8232i, -15043i, i32(-2147483648)), vec3<i32>(2147483647i, 33114i, -45791i), vec3<i32>(1i, 0i, -18275i), vec3<i32>(-23899i, 10295i, 0i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(-1i, 10087i, 2147483647i), vec3<i32>(-1i, 2710i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1258f * 1000f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1597f, -1372f)), -443f, arg_0.b.a.x)))));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> vec4<i32> {
    let var_0 = firstLeadingBit(-(arg_1 ^ ((vec4<i32>(arg_1.x, 1i, 2147483647i, -1i) ^ vec4<i32>(17132i, 19217i, 60544i, u_input.a.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, global1[_wgslsmith_index_u32(1u, 5u)], global2.x, 69710u), vec4<u32>(global2.x, 101791u, u_input.d, 4294967295u)) % vec4<u32>(32u)))));
    global1 = array<u32, 5>();
    global3 = array<vec3<i32>, 14>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(true, true), Struct_1(vec3<bool>(true, true, false), vec2<i32>(u_input.a.x, arg_2), var_0.x), Struct_1(vec3<bool>(false, true, true), vec2<i32>(0i, -1i), arg_1.x)))), arg_0, 277f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 1000f) * -1056f), arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, arg_0)))) - vec3<f32>(-654f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-450f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))))));
    let var_2 = vec4<bool>(!all(vec3<bool>(true, true, true)), true || select(true, true, true || any(vec4<bool>(true, true, false, true))), !all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), all(select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), true)));
    return vec4<i32>(firstLeadingBit(u_input.c.x), reverseBits(countOneBits(firstTrailingBit(max(u_input.a.x, -5474i)))), select(_wgslsmith_sub_i32(u_input.a.x & max(arg_2, arg_2), u_input.c.x), u_input.a.x, true), _wgslsmith_mult_i32(0i, -firstLeadingBit(max(-2147483647i, u_input.c.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    global0 = 1u;
    let var_0 = Struct_2(arg_2.a, Struct_1(!(!select(vec3<bool>(arg_2.a.x, true, true), arg_2.b.a, arg_2.c.a)), vec2<i32>(arg_2.c.c, _wgslsmith_dot_vec3_i32(min(global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(11183u, 14u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_1.x, -21833i), global3[_wgslsmith_index_u32(1u, 14u)]))), arg_1.x), arg_2.b);
    global2 = max(~firstTrailingBit((vec4<u32>(global2.x, 4294967295u, 0u, 1u) | vec4<u32>(global2.x, 1u, 0u, 4294967295u)) << (~vec4<u32>(631u, global2.x, 14776u, 128402u) % vec4<u32>(32u))), vec4<u32>(global1[_wgslsmith_index_u32(~1u, 5u)], ~(~global2.x), _wgslsmith_add_u32(firstLeadingBit(~global1[_wgslsmith_index_u32(90567u, 5u)]), ~19889u), 0u));
    let var_1 = global2.x;
    var var_2 = 1000f;
    return Struct_1(vec3<bool>(abs(0u) < firstTrailingBit(global1[_wgslsmith_index_u32(~63300u, 5u)]), var_0.c.a.x, any(vec4<bool>(true | arg_2.b.a.x, false, true, all(vec2<bool>(var_0.a.x, false))))), arg_0.xz >> ((max(vec2<u32>(global1[_wgslsmith_index_u32(global2.x, 5u)], 1u), global2.ww) >> (vec2<u32>(u_input.b, global2.x) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mod_i32(~_wgslsmith_mod_i32(2811i, 53413i) | func_2(_wgslsmith_f_op_f32(-1810f - 2305f), arg_0, u_input.a.x).x, 1i));
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_2(vec2<bool>(true, true), func_4(-_wgslsmith_mod_vec4_i32(vec4<i32>(56635i, u_input.a.x, u_input.c.x, u_input.c.x) << (vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 5u)], 0u, u_input.b) % vec4<u32>(32u)), func_2(1000f, vec4<i32>(-12851i, 2147483647i, u_input.a.x, u_input.c.x), -23526i)), -u_input.a, Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), Struct_1(vec3<bool>(true, true, true), select(u_input.a, u_input.c, true), 1i), Struct_1(vec3<bool>(true, true, false), u_input.a, ~u_input.a.x))), func_4(~(-vec4<i32>(-2147483647i, -16616i, u_input.a.x, u_input.c.x)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(19382i, u_input.c.x), vec2<i32>(u_input.a.x, -1i) & vec2<i32>(u_input.c.x, u_input.a.x), select(vec2<i32>(-1i, -2147483647i), u_input.a, vec2<bool>(true, true))) | -vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true))), Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), ~u_input.a, ~29554i), func_4(vec4<i32>(u_input.c.x, u_input.a.x, -2734i, u_input.a.x) | vec4<i32>(-74138i, 2147483647i, 88756i, 0i), ~u_input.a, Struct_2(vec2<bool>(false, true), Struct_1(vec3<bool>(false, false, true), u_input.a, u_input.c.x), Struct_1(vec3<bool>(true, false, true), u_input.c, u_input.a.x))))));
    let var_1 = firstLeadingBit(abs(max(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 25809u, u_input.b, 4294967295u), vec4<u32>(u_input.b, 54132u, 26u, 4294967295u)), reverseBits(vec4<u32>(0u, global2.x, 21132u, 30444u) & vec4<u32>(global1[_wgslsmith_index_u32(14696u, 5u)], global2.x, global1[_wgslsmith_index_u32(10448u, 5u)], u_input.d)))));
    global3 = array<vec3<i32>, 14>();
    var_0 = Struct_2(select(var_0.b.a.zz, var_0.b.a.yy, var_0.a), func_4(reverseBits(-vec4<i32>(-1i, u_input.c.x, var_0.b.c, var_0.c.b.x)), select(_wgslsmith_add_vec2_i32(reverseBits(u_input.c), ~vec2<i32>(var_0.b.c, u_input.a.x)), vec2<i32>(abs(-21159i), 1i), vec2<bool>(var_0.a.x, false)), Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, var_0.c.a.x), true), var_0.b, func_4(func_2(2894f, vec4<i32>(26280i, u_input.c.x, var_0.c.b.x, 49752i), u_input.c.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, 18537i), vec2<i32>(0i, u_input.a.x), var_0.c.b), Struct_2(vec2<bool>(false, var_0.a.x), var_0.c, var_0.b)))), func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, ~(-8219i), ~(-1i), i32(-1i) * -23581i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a.x, -39358i, var_0.c.c, u_input.a.x), vec4<i32>(u_input.c.x, u_input.a.x, var_0.c.b.x, 16991i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.b.x, var_0.b.b.x, 12295i, 0i), vec4<i32>(var_0.b.b.x, -2147483647i, 0i, var_0.c.b.x)))), var_0.b.b, Struct_2(var_0.c.a.yz, var_0.c, Struct_1(!vec3<bool>(true, var_0.b.a.x, var_0.c.a.x), var_0.b.b >> (vec2<u32>(global2.x, 12878u) % vec2<u32>(32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.c, var_0.b.c, 0i, 24520i), vec4<i32>(4243i, u_input.a.x, -7850i, 0i))))));
    var var_2 = select(!(!(!(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.b.a.x, true)))), select(vec4<bool>(true, false, var_0.b.c > func_4(vec4<i32>(3518i, var_0.c.b.x, var_0.c.b.x, u_input.a.x), vec2<i32>(var_0.b.c, 1i), Struct_2(vec2<bool>(var_0.c.a.x, false), var_0.b, var_0.b)).b.x, false), select(!(!vec4<bool>(var_0.c.a.x, true, true, var_0.b.a.x)), select(select(vec4<bool>(var_0.b.a.x, var_0.a.x, true, true), vec4<bool>(var_0.a.x, true, var_0.b.a.x, var_0.c.a.x), vec4<bool>(true, true, var_0.a.x, var_0.c.a.x)), !vec4<bool>(var_0.a.x, var_0.b.a.x, true, var_0.c.a.x), var_0.c.a.x), select(!vec4<bool>(true, var_0.b.a.x, true, var_0.b.a.x), select(vec4<bool>(var_0.a.x, false, true, var_0.b.a.x), vec4<bool>(true, true, false, true), var_0.b.a.x), var_0.a.x)), var_0.c.c > -(~u_input.c.x)), select(vec4<bool>(var_0.b.a.x, var_0.a.x, true, true), select(!select(vec4<bool>(var_0.c.a.x, var_0.a.x, true, false), vec4<bool>(true, var_0.b.a.x, true, var_0.b.a.x), vec4<bool>(var_0.b.a.x, true, true, var_0.a.x)), select(vec4<bool>(var_0.a.x, var_0.a.x, true, false), vec4<bool>(true, false, var_0.c.a.x, var_0.c.a.x), !vec4<bool>(var_0.b.a.x, true, true, false)), !vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_0.a.x, var_0.b.a.x)), !(!vec4<bool>(var_0.b.a.x, var_0.a.x, var_0.c.a.x, true))));
    return Struct_3(var_0.b, 0u);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = !(!(u_input.a.x <= arg_0.a.b.x));
    let var_1 = -1243f;
    let var_2 = var_1;
    global0 = ~arg_0.b;
    global0 = select(abs(global2.x), _wgslsmith_add_u32(_wgslsmith_add_u32(reverseBits(u_input.b), ~(~60384u)), _wgslsmith_mult_u32(~4294967295u, 0u)), func_4(~(~vec4<i32>(0i, arg_0.a.b.x, 2147483647i, arg_0.a.c)), firstTrailingBit(min(~arg_0.a.b, func_4(vec4<i32>(arg_0.a.c, u_input.a.x, -28987i, 4364i), arg_0.a.b, Struct_2(vec2<bool>(var_0, var_0), Struct_1(arg_0.a.a, u_input.a, 0i), arg_0.a)).b)), Struct_2(!(!arg_0.a.a.zy), Struct_1(!vec3<bool>(true, false, arg_0.a.a.x), vec2<i32>(-40766i, arg_0.a.b.x), 0i), func_1(_wgslsmith_f_op_f32(f32(-1f) * -152f)).a)).a.x);
    return Struct_1(select(vec3<bool>(arg_0.a.a.x | (1u < u_input.d), true, !var_0), func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2)), _wgslsmith_f_op_f32(var_1 * 1375f)))).a.a, arg_0.a.a.x), vec2<i32>(arg_0.a.b.x, 62096i) << (vec2<u32>(u_input.b, firstLeadingBit(select(1u, u_input.d, true))) % vec2<u32>(32u)), arg_0.a.c);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    let var_0 = firstLeadingBit(arg_1.b);
    let var_1 = Struct_3(arg_3.a, 1u);
    global1 = array<u32, 5>();
    var var_2 = Struct_2(!func_4(_wgslsmith_div_vec4_i32(func_2(847f, vec4<i32>(-8441i, -735i, -2147483647i, arg_2.c), 1i), vec4<i32>(36956i, arg_3.a.b.x, arg_2.b.x, -1i) & vec4<i32>(-14340i, var_1.a.b.x, 2147483647i, 0i)), func_1(_wgslsmith_f_op_f32(313f * -1003f)).a.b, Struct_2(vec2<bool>(false, arg_1.a.x), var_1.a, arg_1)).a.yz, Struct_1(!arg_1.a, -firstTrailingBit(arg_1.b), ~arg_1.c), func_5(Struct_3(Struct_1(vec3<bool>(true, true, true), -u_input.a, _wgslsmith_mult_i32(arg_1.c, -2147483647i)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global1[_wgslsmith_index_u32(10033u, 5u)], u_input.b, 4294967295u), vec4<u32>(arg_3.b, 43135u, var_1.b, 1u)), ~39241u, select(global2.x, arg_0.b, arg_3.a.a.x)))));
    global1 = array<u32, 5>();
    return Struct_2(vec2<bool>(arg_3.a.b.x >= firstLeadingBit(33688i), !func_4(abs(vec4<i32>(arg_1.b.x, var_0.x, var_0.x, arg_2.b.x)), _wgslsmith_add_vec2_i32(u_input.c, u_input.c), Struct_2(arg_2.a.xy, arg_3.a, var_1.a)).a.x), Struct_1(var_1.a.a, firstLeadingBit(vec2<i32>(-var_1.a.c, arg_2.b.x)), ~(-arg_0.a.c) | (-var_0.x << (arg_3.b % 32u))), var_1.a);
}

fn func_7(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(func_6(func_1(_wgslsmith_f_op_f32(abs(1081f))), Struct_1(select(select(arg_1.b.a, arg_1.c.a, arg_1.c.a), arg_1.c.a, !arg_1.a.x), ~select(vec2<i32>(arg_1.b.c, 1i), u_input.c, true), -1i), arg_1.b, Struct_3(arg_1.c, global2.x)).c.a.xy, arg_1.c, arg_1.c);
    global0 = ~u_input.d;
    global0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, global2.x), u_input.b);
    global3 = array<vec3<i32>, 14>();
    var var_1 = !var_0.c.a.yy;
    return Struct_3(func_6(Struct_3(Struct_1(vec3<bool>(arg_1.b.a.x, arg_1.c.a.x, var_0.c.a.x), abs(vec2<i32>(-13314i, u_input.c.x)), var_0.c.b.x), ~38983u), arg_1.c, Struct_1(var_0.c.a, _wgslsmith_mult_vec2_i32(vec2<i32>(-17302i, var_0.b.b.x), func_2(-1985f, vec4<i32>(1i, 47258i, -4199i, arg_1.b.b.x), 2147483647i).xx), ~(var_0.b.c & 2147483647i)), func_1(-1515f)).b, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 87018i), ~(-vec2<i32>(-2147483647i, -3031i)));
    let var_1 = func_7(_wgslsmith_f_op_f32(min(1073f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_6(Struct_3(Struct_1(vec3<bool>(true, true, true), abs(vec2<i32>(2147483647i, var_0.x)), 0i), u_input.d & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 5u)], 5u)] << (8696u % 32u), 5u)]), Struct_1(vec3<bool>(any(vec3<bool>(false, true, false)), true, true), vec2<i32>(max(-33655i, -33664i), -41746i ^ u_input.a.x), -1i), func_5(func_1(-433f)), Struct_3(Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), var_0, -48807i << (global2.x % 32u)), global2.x)));
    var var_2 = true | (var_1.a.a.x | all(!(!vec3<bool>(var_1.a.a.x, true, true))));
    global2 = vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(~global2.x), _wgslsmith_add_u32(~u_input.b, ~0u) ^ u_input.d), _wgslsmith_dot_vec2_u32(global2.yy, ~select(vec2<u32>(1u, 4294967295u), ~global2.xw, var_1.a.a.x)), ~0u << (max(min(1u, func_7(858f, Struct_2(vec2<bool>(false, var_1.a.a.x), var_1.a, Struct_1(vec3<bool>(false, false, var_1.a.a.x), vec2<i32>(39260i, 1i), var_1.a.b.x))).b), ~(0u ^ global2.x)) % 32u), _wgslsmith_dot_vec2_u32(global2.xy, ~reverseBits(vec2<u32>(global2.x, global1[_wgslsmith_index_u32(u_input.d, 5u)]))));
    var var_3 = ~(-22473i) | _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.a.x), vec2<i32>(countOneBits(_wgslsmith_add_i32(-2147483647i, var_0.x)), var_0.x));
    var var_4 = -104f;
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(286f - -271f), _wgslsmith_f_op_f32(max(-785f, -554f)), _wgslsmith_div_f32(-517f, -401f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -852f, 296f)))))));
    global1 = array<u32, 5>();
    global2 = countOneBits(firstTrailingBit(max(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 0u), vec4<u32>(var_1.b, global2.x, 1u, 23321u))), ~(vec4<u32>(1u, 118293u, var_1.b, global2.x) << (vec4<u32>(41642u, 4294967295u, 17963u, u_input.b) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.d >> (0u % 32u), 5u)], 5u)] | _wgslsmith_add_u32(4294967295u >> (var_1.b % 32u), _wgslsmith_sub_u32(var_1.b, global2.x))), _wgslsmith_mult_i32(firstLeadingBit(func_1(505f).a.c), 18857i));
}

