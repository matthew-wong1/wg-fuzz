struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -98878i;

var<private> global1: array<u32, 3>;

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> u32 {
    global0 = u_input.b.x;
    let var_0 = !vec3<bool>(global2.x, all(select(!global2.zy, !global2.xy, true)), global2.x);
    global1 = array<u32, 3>();
    let var_1 = _wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(~arg_0.x, 3u)])), 1u);
    global1 = array<u32, 3>();
    return reverseBits(abs(1u));
}

fn func_3() -> i32 {
    let var_0 = reverseBits(min(reverseBits(vec3<u32>(39257u, ~global1[_wgslsmith_index_u32(u_input.a, 3u)], ~1u)), ~(~(~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a)))));
    global2 = select(!(!select(!vec3<bool>(global2.x, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, global2.x, true), vec3<bool>(global2.x, global2.x, global2.x)), true)), !vec3<bool>(select(any(global2.zy), global2.x, any(vec3<bool>(true, global2.x, true))), -u_input.b.x < 0i, true), !select(select(vec3<bool>(global2.x, global2.x, global2.x), !vec3<bool>(global2.x, true, true), vec3<bool>(true, true, global2.x)), vec3<bool>(true, true, true), false));
    let var_1 = Struct_2(Struct_1(21472u, _wgslsmith_f_op_f32(f32(-1f) * -479f), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -188f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1015f)) - -1566f)), 30744u), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(-65114i, u_input.b.x, u_input.b.x)), vec3<i32>(1i, ~(-9838i), i32(-1i) * -15047i)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, 0i), u_input.b.x << (0u % 32u), -u_input.b.x), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 9597i, 12286i)), vec3<i32>(u_input.b.x, 330i, u_input.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -988f))) * 1000f) + 1f), Struct_1(_wgslsmith_div_u32(~36819u, _wgslsmith_sub_u32(~var_0.x, 77830u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1459f, -748f, false)) * _wgslsmith_f_op_f32(sign(-643f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1338f * 474f)))), firstTrailingBit(0u)), !global2.x);
    let var_2 = Struct_3(var_1, var_1.a, vec2<bool>(false, all(select(select(vec4<bool>(false, false, var_1.e, var_1.e), vec4<bool>(global2.x, global2.x, var_1.e, global2.x), true), select(vec4<bool>(global2.x, var_1.e, global2.x, global2.x), vec4<bool>(false, false, false, false), vec4<bool>(global2.x, var_1.e, global2.x, false)), !vec4<bool>(var_1.e, true, true, global2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.b, var_1.d.c.x, var_1.a.b, var_1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b, -386f, 613f, 312f)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-544f, var_1.c, 1000f, var_1.d.c.x), vec4<f32>(108f, var_1.d.c.x, 859f, 1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1364f)) * _wgslsmith_f_op_f32(round(var_1.d.b))), _wgslsmith_div_f32(-980f, var_1.a.c.x), -270f, var_1.d.c.x)));
    let var_3 = !global2.yy;
    return u_input.b.x;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    global1 = array<u32, 3>();
    let var_0 = 18473u;
    let var_1 = min(select(~22657u, u_input.a ^ ~global1[_wgslsmith_index_u32(37440u >> (0u % 32u), 3u)], false), _wgslsmith_mult_u32(~func_2(vec4<u32>(arg_0.b.a, 1u, arg_0.a.a.a, 5859u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 15966u, var_0), vec3<u32>(1u, 1u, arg_0.a.a.a)), ~vec2<u32>(45868u, var_0)), _wgslsmith_mult_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(47456u, 3u)], u_input.a) ^ 65733u, 0u)));
    global0 = func_3();
    global2 = vec3<bool>(true, true, global2.x);
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    global0 = u_input.b.x;
    global0 = firstTrailingBit(-(-arg_2 | u_input.b.x));
    var var_0 = 0u;
    let var_1 = ~(-vec4<i32>(-49074i, func_1(Struct_3(arg_3.a, Struct_1(arg_3.a.d.a, arg_1, vec2<f32>(-2388f, arg_0.a.a.c.x), 54305u), arg_3.c, arg_3.d)).a.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, u_input.b.x), vec2<i32>(arg_3.a.b.x, arg_0.a.b.x)), func_3()) ^ _wgslsmith_add_vec4_i32(~(~vec4<i32>(26455i, -17801i, arg_2, 2147483647i)), (vec4<i32>(arg_0.a.b.x, arg_0.a.b.x, 22943i, arg_2) | vec4<i32>(u_input.b.x, u_input.b.x, arg_2, -19073i)) & -vec4<i32>(arg_2, 85018i, -4789i, arg_0.a.b.x)));
    let var_2 = arg_0.a;
    return func_1(func_1(Struct_3(Struct_2(func_1(arg_3).a.d, vec3<i32>(var_1.x, arg_2, -7747i), 1000f, Struct_1(4294967295u, -1628f, vec2<f32>(arg_0.d.x, 954f), 4422u), true), Struct_1(~var_2.d.a, arg_0.b.b, vec2<f32>(-435f, arg_3.b.b), reverseBits(0u)), arg_3.c, arg_3.d))).a;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(abs(vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(15617u, arg_0.d.d, arg_1), max(vec3<u32>(u_input.a, 1u, arg_0.d.d), vec3<u32>(arg_3.a, 12479u, arg_1))), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 1u, 4294967295u, global1[_wgslsmith_index_u32(u_input.a, 3u)])), vec4<u32>(0u, arg_0.a.a, arg_2, global1[_wgslsmith_index_u32(u_input.a, 3u)])), _wgslsmith_clamp_u32(~0u, 49407u, ~4294967295u))));
    let var_1 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, arg_3.d, arg_3.a, 2057u), vec4<u32>(37021u, arg_3.d, var_0.x, 1u)), ~vec4<u32>(9425u, global1[_wgslsmith_index_u32(arg_0.a.d, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], 1893u)) >> (~select(vec4<u32>(0u, 4294967295u, 108561u, global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<u32>(arg_2, 0u, 65672u, 1u), vec4<bool>(global2.x, true, global2.x, true)) % vec4<u32>(32u)), ~firstLeadingBit(vec4<u32>(arg_1, 1u, 4294967295u, 53371u)), min(vec4<u32>(arg_3.d, 1u, countOneBits(8459u), _wgslsmith_mult_u32(var_0.x, arg_3.d)), vec4<u32>(~arg_3.a, 4294967295u, 4294967295u, ~arg_3.d)));
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(arg_0.a.b - func_1(Struct_3(func_1(func_1(Struct_3(arg_0, arg_3, global2.zx, vec4<f32>(arg_0.d.c.x, 623f, -1000f, -491f)))).a, func_4(func_1(Struct_3(Struct_2(Struct_1(var_2.x, arg_0.c, vec2<f32>(222f, 315f), global1[_wgslsmith_index_u32(1u, 3u)]), vec3<i32>(-49415i, u_input.b.x, -5148i), arg_0.c, Struct_1(0u, arg_3.b, arg_3.c, var_1.x), arg_0.e), arg_0.d, global2.zy, vec4<f32>(-496f, -1749f, arg_3.c.x, 308f))), arg_3.c.x, -1i, func_1(Struct_3(arg_0, arg_0.d, vec2<bool>(arg_0.e, global2.x), vec4<f32>(arg_3.b, arg_0.d.b, arg_3.b, 942f)))).d, select(vec2<bool>(global2.x, global2.x), global2.yy, !global2.zx), vec4<f32>(_wgslsmith_f_op_f32(abs(-979f)), _wgslsmith_f_op_f32(min(-878f, -1000f)), -457f, -708f))).d.x);
    var var_4 = func_1(Struct_3(Struct_2(func_4(func_1(Struct_3(arg_0, Struct_1(arg_3.a, arg_3.b, arg_3.c, global1[_wgslsmith_index_u32(1u, 3u)]), global2.zy, vec4<f32>(arg_3.b, -1075f, -1372f, -720f))), _wgslsmith_f_op_f32(arg_0.c * arg_0.d.b), arg_0.b.x, Struct_3(Struct_2(Struct_1(42449u, arg_3.b, vec2<f32>(-1968f, arg_0.a.b), 67979u), arg_0.b, arg_3.c.x, arg_3, true), arg_3, vec2<bool>(false, arg_0.e), vec4<f32>(583f, 721f, arg_3.b, -894f))).a, -vec3<i32>(11915i, arg_0.b.x, arg_0.b.x) | ~vec3<i32>(arg_0.b.x, u_input.b.x, arg_0.b.x), -1000f, func_4(func_1(Struct_3(arg_0, Struct_1(global1[_wgslsmith_index_u32(55811u, 3u)], arg_0.c, vec2<f32>(-261f, arg_3.c.x), 44129u), vec2<bool>(true, false), vec4<f32>(arg_3.c.x, -971f, arg_3.b, arg_3.c.x))), arg_3.b, -arg_0.b.x, func_1(Struct_3(arg_0, arg_3, vec2<bool>(true, arg_0.e), vec4<f32>(arg_0.d.c.x, 1000f, 1000f, 957f)))).d, true), arg_0.a, global2.zz, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-387f - 1099f), -1016f, -1000f, -1687f), vec4<f32>(arg_3.c.x, _wgslsmith_f_op_f32(arg_0.d.b + arg_3.c.x), arg_3.b, _wgslsmith_f_op_f32(sign(arg_0.d.c.x))))));
    return var_4.a.d;
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) + arg_1.b), -1000f, arg_1.b)));
    global1 = array<u32, 3>();
    global2 = !select(vec3<bool>((-35747i << (arg_1.d % 32u)) != (0i << (arg_1.d % 32u)), false, !(u_input.a > arg_1.d)), !select(vec3<bool>(false, false, true), !vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, true, true)), select(vec3<bool>(global2.x, all(vec4<bool>(true, global2.x, true, global2.x)), true), !select(vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, global2.x, global2.x), false), !(!vec3<bool>(false, false, global2.x))));
    let var_1 = vec3<bool>(global2.x, !(all(select(vec4<bool>(false, true, false, global2.x), vec4<bool>(global2.x, false, false, global2.x), global2.x)) && true), false);
    let var_2 = firstLeadingBit(countOneBits(vec2<u32>(0u, 1u)) << (abs(firstLeadingBit(vec2<u32>(0u, u_input.a)) & ~vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)));
    return Struct_3(Struct_2(func_1(func_1(Struct_3(Struct_2(arg_1, vec3<i32>(arg_0, 0i, u_input.b.x), arg_1.b, Struct_1(var_2.x, var_0.x, vec2<f32>(1277f, var_0.x), 1u), true), Struct_1(global1[_wgslsmith_index_u32(0u, 3u)], var_0.x, vec2<f32>(415f, -183f), 1u), vec2<bool>(global2.x, global2.x), vec4<f32>(486f, var_0.x, arg_1.c.x, arg_1.b)))).a.a, ~vec3<i32>(arg_0, u_input.b.x, arg_0) & select(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), ~vec3<i32>(u_input.b.x, u_input.b.x, arg_0), var_1), 1331f, arg_1, true), Struct_1(~_wgslsmith_mod_u32(1u, 1u), var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.x, arg_1.b), -143f)), max(abs(~82498u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global1[_wgslsmith_index_u32(arg_1.a, 3u)], arg_1.a), firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(44998u, 3u)], 32769u, 0u))))), select(vec2<bool>(!var_1.x, min(-9126i, 0i) >= _wgslsmith_mod_i32(arg_0, -7769i)), select(vec2<bool>(var_1.x, false), !func_1(Struct_3(Struct_2(Struct_1(0u, var_0.x, vec2<f32>(319f, arg_1.b), var_2.x), vec3<i32>(39786i, arg_0, -1i), 1000f, arg_1, false), arg_1, var_1.yz, vec4<f32>(arg_1.c.x, var_0.x, 567f, 1000f))).c, select(!global2.zy, !vec2<bool>(global2.x, false), select(vec2<bool>(true, global2.x), global2.yy, vec2<bool>(false, var_1.x)))), select(var_1.zz, select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, true), true), !vec2<bool>(var_1.x, var_1.x), !var_1.yy), select(var_1.zy, global2.zz, global2.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-317f, var_0.x, _wgslsmith_f_op_f32(-var_0.x), 287f), _wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(var_0.x, -128f, arg_1.c.x, arg_1.c.x)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(arg_1.c.x * -1000f), -408f, _wgslsmith_f_op_f32(sign(138f)))))));
}

fn func_7(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = vec4<bool>(false, arg_1.x, false, global2.x);
    global2 = vec3<bool>(true, !arg_1.x, !arg_2.c.x);
    global1 = array<u32, 3>();
    let var_1 = u_input.a & ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(func_1(arg_0).b.d, 3u)], 3u)];
    var var_2 = Struct_2(Struct_1(~(~(~arg_2.a.a.d)), _wgslsmith_f_op_f32(min(-218f, -425f)), _wgslsmith_f_op_vec2_f32(-arg_2.a.a.c), u_input.a), vec3<i32>(firstLeadingBit(2147483647i), -65556i, ~(-1i)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.c)))), arg_0.a.d, all(!arg_2.c) != arg_2.a.e);
    return func_5(Struct_2(func_5(func_1(Struct_3(arg_2.a, arg_2.a.d, vec2<bool>(arg_1.x, var_2.e), arg_0.d)).a, var_2.d.d, max(_wgslsmith_add_u32(var_2.a.d, 29383u), arg_2.a.a.d), func_1(func_6(0i, arg_0.b)).b), vec3<i32>(u_input.b.x, arg_0.a.b.x, select(~0i, i32(-1i) * -1i, all(vec3<bool>(false, var_2.e, true)))), arg_2.b.b, arg_2.a.d, all(arg_1)), ~min(func_5(arg_0.a, global1[_wgslsmith_index_u32(1u, 3u)], 20260u, Struct_1(arg_0.a.a.d, 377f, var_2.d.c, 4294967295u)).a, arg_2.b.a) ^ 40426u, 18637u ^ ~_wgslsmith_mod_u32(max(45703u, 20356u), global1[_wgslsmith_index_u32(arg_2.b.a, 3u)] & 13096u), arg_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    global0 = u_input.b.x;
    let var_0 = ~(~vec4<u32>(0u, ~(~4294967295u), 28484u, u_input.a));
    var var_1 = func_7(func_6(u_input.b.x, func_5(func_4(func_1(Struct_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(138664u, 3u)], 127f, vec2<f32>(-329f, -154f), 11329u), vec3<i32>(u_input.b.x, u_input.b.x, 1i), 1515f, Struct_1(4294967295u, -2351f, vec2<f32>(-528f, 446f), global1[_wgslsmith_index_u32(1u, 3u)]), false), Struct_1(1u, 516f, vec2<f32>(1621f, 133f), 23285u), global2.zz, vec4<f32>(-1249f, -259f, 1618f, 424f))), _wgslsmith_f_op_f32(f32(-1f) * -2118f), ~(-1297i), Struct_3(Struct_2(Struct_1(1u, -1575f, vec2<f32>(-264f, -659f), var_0.x), vec3<i32>(2147483647i, 1i, -2147483647i), 595f, Struct_1(43371u, -1935f, vec2<f32>(2115f, 1588f), 4294967295u), true), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 3u)], 608f, vec2<f32>(-867f, -1043f), 4294967295u), vec2<bool>(global2.x, global2.x), vec4<f32>(-898f, -394f, 191f, -438f))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(67428u, 0u), _wgslsmith_dot_vec3_u32(var_0.ywz, var_0.xzy), ~global1[_wgslsmith_index_u32(u_input.a, 3u)]), ~4680u, func_4(Struct_3(Struct_2(Struct_1(u_input.a, -1000f, vec2<f32>(-1565f, 1107f), 1u), vec3<i32>(-33913i, u_input.b.x, -2147483647i), -687f, Struct_1(var_0.x, 254f, vec2<f32>(-256f, 503f), 0u), global2.x), Struct_1(u_input.a, -1051f, vec2<f32>(342f, 1638f), 1u), global2.zx, vec4<f32>(1419f, 662f, -1446f, 980f)), -996f, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), func_1(Struct_3(Struct_2(Struct_1(56074u, 462f, vec2<f32>(-973f, -692f), 4294967295u), vec3<i32>(u_input.b.x, -1338i, u_input.b.x), 466f, Struct_1(global1[_wgslsmith_index_u32(var_0.x, 3u)], -1000f, vec2<f32>(1000f, 1000f), 4294967295u), global2.x), Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 1197f, vec2<f32>(1105f, -104f), 42516u), vec2<bool>(true, global2.x), vec4<f32>(-520f, -1177f, -1094f, -1727f)))).d)), global2.zz, Struct_3(func_6(2147483647i, Struct_1(~40862u, -765f, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2488f, -616f), vec2<f32>(1056f, -429f))), global1[_wgslsmith_index_u32(abs(4294967295u), 3u)])).a, func_1(func_1(Struct_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(var_0.x, 3u)], 1528f, vec2<f32>(-280f, 804f), global1[_wgslsmith_index_u32(6179u, 3u)]), vec3<i32>(39446i, -1i, -9690i), -981f, Struct_1(4294967295u, -1486f, vec2<f32>(-1000f, 545f), 0u), global2.x), Struct_1(u_input.a, -827f, vec2<f32>(-150f, 764f), 1u), global2.zy, vec4<f32>(-615f, -613f, -722f, -1588f)))).b, global2.yz, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(3496f - -1000f), -359f, -503f, _wgslsmith_f_op_f32(abs(916f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1103f, 1200f, -1000f, 693f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-select(firstTrailingBit(select(vec4<i32>(1i, u_input.b.x, 1082i, u_input.b.x), vec4<i32>(26439i, 2147483647i, 6084i, -4383i), vec4<bool>(global2.x, global2.x, true, false))), vec4<i32>(1i, ~u_input.b.x, u_input.b.x, -57523i), vec4<bool>(false | global2.x, true, global2.x, func_4(Struct_3(Struct_2(Struct_1(45192u, -482f, var_1.c, var_0.x), vec3<i32>(u_input.b.x, -13610i, u_input.b.x), var_1.c.x, Struct_1(u_input.a, 511f, var_1.c, 3164u), global2.x), Struct_1(0u, 440f, vec2<f32>(1979f, var_1.c.x), 1u), vec2<bool>(global2.x, global2.x), vec4<f32>(var_1.c.x, var_1.c.x, 581f, 104f)), 691f, 20331i, Struct_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 3u)], var_1.c.x, var_1.c, 19807u), vec3<i32>(u_input.b.x, u_input.b.x, 27181i), -1403f, Struct_1(var_1.a, -115f, vec2<f32>(var_1.b, 167f), var_0.x), false), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 3u)], -1000f, var_1.c, u_input.a), global2.yx, vec4<f32>(var_1.b, var_1.c.x, var_1.c.x, var_1.b))).e)));
}

