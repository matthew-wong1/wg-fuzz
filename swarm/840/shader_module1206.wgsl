struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: vec4<i32> = vec4<i32>(7897i, i32(-2147483648), -1i, 15203i);

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec2<i32>(1i, 8346i)), Struct_2(vec2<i32>(-32558i, -65071i)), Struct_2(vec2<i32>(4849i, 1i)), Struct_2(vec2<i32>(-13791i, 32889i)), Struct_2(vec2<i32>(-20993i, 1i)), Struct_2(vec2<i32>(2147483647i, -1i)), Struct_2(vec2<i32>(2147483647i, 15225i)), Struct_2(vec2<i32>(1i, 38055i)), Struct_2(vec2<i32>(-51580i, -16037i)), Struct_2(vec2<i32>(13119i, -24556i)), Struct_2(vec2<i32>(2147483647i, 1i)), Struct_2(vec2<i32>(-6948i, 1i)), Struct_2(vec2<i32>(1i, 1i)), Struct_2(vec2<i32>(18854i, -51187i)), Struct_2(vec2<i32>(-53681i, 0i)), Struct_2(vec2<i32>(-1i, -86641i)), Struct_2(vec2<i32>(-53196i, -1i)), Struct_2(vec2<i32>(i32(-2147483648), -28024i)), Struct_2(vec2<i32>(10888i, 1i)), Struct_2(vec2<i32>(0i, -14509i)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(vec2<i32>(0i, -1i)), Struct_2(vec2<i32>(0i, -1i)), Struct_2(vec2<i32>(-18384i, -30043i)), Struct_2(vec2<i32>(2147483647i, 7322i)), Struct_2(vec2<i32>(-16065i, i32(-2147483648))), Struct_2(vec2<i32>(0i, 37409i)), Struct_2(vec2<i32>(2147483647i, 2147483647i)), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(vec2<i32>(33505i, -21964i)));

var<private> global3: array<i32, 14>;

var<private> global4: Struct_2 = Struct_2(vec2<i32>(-5582i, -48371i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global4 = Struct_2(_wgslsmith_div_vec2_i32(-max(u_input.d.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1903i), global1.zx)), ~((global4.a & vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(9601u, 14u)])) | vec2<i32>(global3[_wgslsmith_index_u32(11152u, 14u)], u_input.c))));
    let var_0 = arg_0.c.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1683f - var_0), _wgslsmith_f_op_f32(f32(-1f) * -594f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * var_0) + _wgslsmith_f_op_f32(f32(-1f) * -562f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + arg_0.c.x)), var_0) * arg_0.c.xxw));
    var var_2 = vec4<i32>(-1i) * -select(vec4<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(u_input.d, global1.zzz), 0i ^ global3[_wgslsmith_index_u32(15806u, 14u)], -2147483647i), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xzy, vec3<i32>(global4.a.x, global1.x, global3[_wgslsmith_index_u32(828u, 14u)])), ~u_input.c, u_input.d.x, max(3768i, global3[_wgslsmith_index_u32(72748u, 14u)])), !vec4<bool>(true, arg_0.a, false, arg_0.a));
    let var_3 = global0[_wgslsmith_index_u32(82024u, 9u)];
    return global3[_wgslsmith_index_u32(~arg_0.b, 14u)];
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    global4 = global2[_wgslsmith_index_u32(reverseBits(arg_1.x), 30u)];
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, func_3(Struct_1(true, u_input.b, vec4<f32>(-310f, -1000f, arg_0, arg_0), -1701f))), 18601i) | max(~vec2<i32>(global1.x, 1i), global1.zy);
    global3 = array<i32, 14>();
    global0 = array<Struct_2, 9>();
    var var_1 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, arg_1.x), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x)), vec4<u32>(u_input.b, arg_1.x, arg_1.x, 28060u)), ~(~vec4<u32>(arg_1.x, 4294967295u, 1u, arg_1.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)), _wgslsmith_f_op_f32(trunc(arg_0)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = select(-vec2<i32>(global3[_wgslsmith_index_u32(u_input.b, 14u)], u_input.c), max(u_input.a.yy, global4.a), vec2<bool>(arg_1, select(arg_1, arg_1, !select(arg_1, false, false))));
    global2 = array<Struct_2, 30>();
    let var_1 = Struct_1(!any(vec3<bool>(!arg_1, true, arg_1 != arg_1)), min(54680u, 15148u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f - 1060f)), -189f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 945f)) - arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0.x)))));
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 34480u, var_1.b, var_1.b), vec4<u32>(2891u, 34093u, var_1.b, u_input.b)), 34881u) ^ 1u, reverseBits(abs(92224u)), 1u);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(arg_0)))), _wgslsmith_f_op_vec3_f32(exp2(var_1.c.xyx)))));
    return Struct_1(all(vec3<bool>(select(true, all(vec3<bool>(arg_1, var_1.a, true)), !var_1.a), !select(var_1.a, true, arg_1), all(select(vec4<bool>(var_1.a, true, arg_1, var_1.a), vec4<bool>(true, arg_1, false, var_1.a), vec4<bool>(arg_1, var_1.a, true, var_1.a))))), countOneBits(_wgslsmith_mod_u32(4294967295u, 2229u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(848f, _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(func_2(-466f, var_2.zy))), 1480f, _wgslsmith_f_op_f32(floor(var_1.d))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 1711f, arg_0.x, -1000f)), 30734u < abs(var_2.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * var_1.d))))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(true, u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 485f, 669f, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(1107f, arg_0, 318f, -1592f) * vec4<f32>(1478f, arg_0, arg_0, -1367f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -730f) + vec4<f32>(-1332f, arg_0, -365f, arg_0)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-948f, -334f, arg_0, 383f), vec4<f32>(799f, -173f, 272f, 343f), true))))), _wgslsmith_f_op_f32(645f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(var_0.d, -1016f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.yw - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 158f), vec2<f32>(1245f, 1375f), all(vec2<bool>(false, true)))))));
    let var_3 = ~vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, 4583u, var_1), vec3<u32>(var_0.b, u_input.b, 71808u)), vec3<u32>(u_input.b, u_input.b, var_0.b)), ~_wgslsmith_mult_u32(~100376u, _wgslsmith_sub_u32(u_input.b, var_0.b)), 34407u, u_input.b);
    let var_4 = _wgslsmith_f_op_f32(round(363f));
    return func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + var_0.c.x), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(func_2(arg_0, var_3.wz))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-1184f * var_2.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0) - _wgslsmith_f_op_vec3_f32(max(var_0.c.yyy, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, -1000f, -247f), var_0.c.wxx)))))), any(select(!vec3<bool>(false, var_0.a, false), !select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, var_0.a, var_0.a), var_0.a), true)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> Struct_3 {
    global0 = array<Struct_2, 9>();
    return Struct_3(Struct_2(global1.zw), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.c.yxw, arg_0.c.zyz)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-945f, arg_0.c.x, 565f) * vec3<f32>(arg_0.d, arg_0.d, arg_0.d)))), true), arg_0.a, arg_0);
}

fn func_6(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    global3 = array<i32, 14>();
    let var_0 = func_5(arg_0.d, select(!vec4<bool>(true, arg_0.b.a, true, arg_0.d.a), !select(select(vec4<bool>(false, true, arg_0.b.a, false), vec4<bool>(false, false, true, true), vec4<bool>(arg_0.c, false, arg_0.d.a, arg_0.c)), select(vec4<bool>(arg_0.d.a, false, false, true), vec4<bool>(arg_0.c, true, false, false), vec4<bool>(false, false, arg_0.b.a, arg_0.b.a)), true), !select(vec4<bool>(false, true, false, true), !vec4<bool>(true, true, arg_0.c, true), vec4<bool>(arg_0.b.a, false, arg_0.c, arg_0.c))), ~(-_wgslsmith_sub_i32(global4.a.x, 29599i) >> ((~1u ^ arg_0.d.b) % 32u)));
    let var_1 = arg_0;
    return Struct_3(func_5(Struct_1(any(select(vec2<bool>(var_0.c, false), vec2<bool>(false, false), vec2<bool>(var_0.d.a, var_1.b.a))), ~(~37367u), vec4<f32>(1309f, var_0.b.c.x, _wgslsmith_f_op_f32(-var_0.d.d), _wgslsmith_f_op_f32(f32(-1f) * -1713f)), _wgslsmith_f_op_f32(max(-1250f, arg_0.d.c.x))), select(select(vec4<bool>(false, arg_0.b.a, arg_0.b.a, false), select(vec4<bool>(false, true, true, var_0.c), vec4<bool>(true, false, arg_0.c, true), true), true), !(!vec4<bool>(false, var_0.d.a, arg_0.b.a, false)), true == (1u < arg_1)), -1i).a, var_1.b, var_0.d.b >= 4294967295u, Struct_1(any(vec3<bool>(any(vec4<bool>(true, var_1.d.a, false, arg_0.c)), func_4(var_1.b.c.xxy, arg_0.d.a).a, false || var_1.b.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 18429u, u_input.b), ~vec3<u32>(var_1.d.b, var_0.b.b, 12202u)) ^ ~43281u, _wgslsmith_f_op_vec4_f32(round(var_0.b.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.d - 1496f))))));
}

fn func_7(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    let var_0 = ~(~(u_input.a.x << (0u % 32u)));
    global1 = -u_input.a;
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 14u)];
    global4 = func_6(arg_0, arg_0.d.b).a;
    let var_2 = Struct_2(~u_input.d.xz);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 30>();
    var var_0 = func_7(func_6(func_5(func_1(-1078f), vec4<bool>(any(vec4<bool>(true, true, false, true)), true, true, any(vec2<bool>(true, true))), 23812i), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 49807u), vec2<u32>(u_input.b, 1u) & vec2<u32>(u_input.b, u_input.b)), 62678u)), select(!func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1378f, 350f, 1068f) - vec3<f32>(860f, -147f, -218f)), true).a, true, false));
    var var_1 = min(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, var_0.d.b) | ~vec2<u32>(u_input.b, 27948u), max(vec2<u32>(1u, var_0.d.b), vec2<u32>(var_0.d.b, u_input.b)) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 24734u), vec2<u32>(20874u, u_input.b)), countOneBits(~vec2<u32>(0u, 1u))), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 22907u), vec3<u32>(1u, var_0.d.b, var_0.d.b), vec3<u32>(10850u, var_0.d.b, u_input.b)), reverseBits(vec3<u32>(1879u, var_0.d.b, u_input.b))), ~(~var_0.b.b))) << (~abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 37418u), vec2<u32>(0u, 97111u), vec2<u32>(90818u, u_input.b))) % vec2<u32>(32u));
    let var_2 = var_0.d.c.wzw;
    var var_3 = abs(max(vec4<u32>(func_7(Struct_3(Struct_2(vec2<i32>(-5522i, -28914i)), var_0.d, var_0.c, var_0.b), true).b.b >> (var_0.b.b % 32u), var_0.b.b, var_1.x, 25384u), select(max(reverseBits(vec4<u32>(36389u, 76149u, 1u, var_1.x)), vec4<u32>(var_0.b.b, var_0.d.b, var_1.x, var_0.d.b) & vec4<u32>(0u, var_0.d.b, var_0.d.b, 0u)), vec4<u32>(1u >> (var_1.x % 32u), abs(u_input.b), ~1u, 80335u), vec4<bool>(true, var_0.b.a, var_0.d.a && var_0.b.a, true))));
    global1 = ~select(~max(u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(0i, 2147483647i, global4.a.x, var_0.a.a.x))), vec4<i32>(max(0i, -22662i), 0i, -50626i, -global4.a.x), vec4<bool>(true, false, ~1u <= ~var_3.x, true));
    var var_4 = Struct_3(global0[_wgslsmith_index_u32(func_1(-468f).b, 9u)], Struct_1(var_0.c, func_5(var_0.b, !vec4<bool>(true, false, false, var_0.c), global4.a.x).b.b & 1u, func_6(Struct_3(global2[_wgslsmith_index_u32(54082u, 30u)], func_1(var_0.d.c.x), var_0.c, Struct_1(var_0.d.a, 18314u, vec4<f32>(638f, var_0.d.c.x, var_2.x, 706f), var_0.b.d)), 13276u).d.c, var_2.x), func_5(Struct_1(abs(global4.a.x) < 28101i, firstLeadingBit(u_input.b) & 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.c.x, var_0.d.d, var_0.b.d, 423f)), _wgslsmith_f_op_f32(-var_0.d.d)), select(!(!vec4<bool>(var_0.d.a, var_0.c, var_0.c, false)), vec4<bool>(true, var_0.d.a, true, 1u <= u_input.b), var_0.d.a), var_0.a.a.x).c, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(2199i, global1.zxw, select(countOneBits(firstTrailingBit(0i)), 1i, false), vec2<u32>(var_1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.x), var_3.wz) | _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_4.d.b, var_3.x), var_3.zz), vec2<u32>(var_1.x, ~var_4.d.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_4.d.c)));
}

