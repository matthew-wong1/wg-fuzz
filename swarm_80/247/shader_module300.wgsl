struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(48867u, 0u, 0u, 3942u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    global0 = vec4<u32>(~(~1u), select(49680u, 3972u, !(all(vec3<bool>(true, true, false)) & true)), 61368u, u_input.d);
    var var_0 = 1057f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), arg_0.a);
    let var_1 = any(vec3<bool>(!any(vec3<bool>(false, false, true)), false, true));
    var_0 = false;
    return firstTrailingBit(abs(~(~(~arg_0.b.x))));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    global0 = abs(vec4<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 4294967295u, u_input.d, 27157u) ^ vec4<u32>(15374u, global0.x, 0u, 44104u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 90700u, u_input.d, 38503u), vec4<u32>(u_input.d, global0.x, 21491u, global0.x))), ~vec4<u32>(0u, global0.x, u_input.d, u_input.d)), 1u, _wgslsmith_sub_u32(max(~21460u, ~global0.x), global0.x), u_input.d));
    let var_0 = _wgslsmith_f_op_f32(round(218f));
    let var_1 = Struct_1(vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), true, !(u_input.a > arg_0) || any(vec2<bool>(true, false))), ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global0.x, 18315u, 672u, global0.x) & vec4<u32>(u_input.d, 16801u, u_input.d, 0u)), vec4<u32>(u_input.d | 18566u, abs(global0.x), _wgslsmith_div_u32(u_input.d, u_input.d), global0.x)), (_wgslsmith_div_i32(~41438i, -arg_0) ^ u_input.b) | firstTrailingBit(arg_0 & _wgslsmith_mult_i32(-1i, arg_0)), 0u, u_input.d);
    let var_2 = Struct_1(select(var_1.a, var_1.a, true), min(reverseBits(_wgslsmith_mod_vec4_u32(max(vec4<u32>(45264u, var_1.e, 4294967295u, u_input.d), var_1.b), var_1.b)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, global0.x, var_1.b.x), ~vec4<u32>(var_1.e, var_1.e, var_1.e, 36855u), _wgslsmith_sub_vec4_u32(vec4<u32>(31722u, var_1.d, 52069u, 11427u), var_1.b)), var_1.b)), -reverseBits(~0i), countOneBits(4294967295u) << (abs(_wgslsmith_add_u32(global0.x, var_1.b.x)) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(select(reverseBits(0u), u_input.d, true), 1u, _wgslsmith_mult_u32(var_1.b.x, ~global0.x), 936u), _wgslsmith_mult_vec4_u32(var_1.b, vec4<u32>(u_input.d, 4294967295u, 1u, 4294967295u) >> (select(vec4<u32>(61556u, u_input.d, u_input.d, 1u), vec4<u32>(var_1.b.x, 4294967295u, 54466u, 0u), var_1.a) % vec4<u32>(32u)))));
    global0 = var_1.b << (var_1.b % vec4<u32>(32u));
    return var_2.b;
}

fn func_4(arg_0: vec4<u32>) -> i32 {
    var var_0 = 0u;
    var var_1 = select(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), true), vec4<bool>(true, !select(any(vec4<bool>(true, false, true, false)), all(vec2<bool>(false, true)), all(vec2<bool>(true, true))), !select(all(vec2<bool>(false, false)), true, true), false), select((_wgslsmith_mult_u32(arg_0.x, arg_0.x) & ~1u) >= func_1(Struct_2(500f, global0.xz), -2926i), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), false & (true & any(vec3<bool>(true, false, true)))));
    var var_2 = _wgslsmith_clamp_vec3_u32(arg_0.zwz | ~vec3<u32>(select(arg_0.x, 8153u, var_1.x), ~global0.x, u_input.d), abs(vec3<u32>(min(603u, global0.x), ~reverseBits(0u), ~0u)), arg_0.xyx);
    let var_3 = select(vec2<bool>(true, true), var_1.xz, select(!select(var_1.wz, vec2<bool>(true, false), !vec2<bool>(var_1.x, var_1.x)), !vec2<bool>(true, false || var_1.x), false));
    let var_4 = Struct_2(-950f, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_0.zz), ~var_2.yx), 23427u), firstTrailingBit(arg_0.x)));
    return firstTrailingBit(~u_input.a);
}

fn func_2() -> vec4<bool> {
    global0 = ~vec4<u32>(min(u_input.d, ~6681u), u_input.d << ((u_input.d >> (u_input.d % 32u)) % 32u), ~abs(33524u), 4294967295u);
    var var_0 = Struct_2(-2261f, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u) & global0.wx, select(global0.xw, vec2<u32>(65424u, u_input.d), true)), ~1u), ~global0.x));
    let var_1 = func_4(func_3(reverseBits(u_input.b)));
    global0 = ~(~(min(vec4<u32>(u_input.d, 0u, 79847u, 23395u), vec4<u32>(var_0.b.x, u_input.d, 1u, 47408u)) ^ firstTrailingBit(vec4<u32>(var_0.b.x, global0.x, global0.x, var_0.b.x))) ^ ~vec4<u32>(_wgslsmith_mult_u32(8557u, 29290u), 1u, 4294967295u, u_input.d));
    let var_2 = Struct_1(vec4<bool>(!(44349u >= func_3(1804i).x), select(true, true, true), select(true, !all(vec2<bool>(false, true)), false), all(vec2<bool>(true, true))), ~(~firstTrailingBit(vec4<u32>(u_input.d, var_0.b.x, 26679u, var_0.b.x))) | (~abs(vec4<u32>(0u, u_input.d, 43979u, var_0.b.x)) & (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 41044u, var_0.b.x, global0.x), vec4<u32>(var_0.b.x, global0.x, global0.x, 18534u)) << (~vec4<u32>(14602u, 0u, 92524u, global0.x) % vec4<u32>(32u)))), _wgslsmith_mult_i32(u_input.b, -2038i), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(10418u, var_0.b.x, 4294967295u), global0.yzy), global0.x) << (1u % 32u), 1u), var_0.b.x);
    return var_2.a;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(119f, _wgslsmith_mult_vec2_u32(reverseBits(firstTrailingBit(_wgslsmith_mod_vec2_u32(global0.yx, arg_2.b.yw))), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_2.b.wx, vec2<u32>(global0.x, u_input.d)), vec2<u32>(~4294967295u, global0.x & 3220u), vec2<u32>(_wgslsmith_dot_vec4_u32(arg_2.b, arg_2.b), global0.x))));
    var var_1 = Struct_2(var_0.a, min(select(global0.zy, max(vec2<u32>(55371u, var_0.b.x), global0.wz), !(arg_2.c < -2147483647i)), ~(~reverseBits(vec2<u32>(18977u, 4294967295u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(-arg_1));
    let var_3 = 1u;
    global0 = arg_2.b;
    return Struct_1(func_2(), arg_2.b, 18886i, (0u | reverseBits(arg_2.e)) | func_1(Struct_2(-1992f, global0.zz), func_4(~vec4<u32>(0u, 138520u, var_1.b.x, 0u))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(global0.x, _wgslsmith_sub_u32(~_wgslsmith_add_u32(~u_input.d, 4294967295u), 5365u ^ u_input.d), 43422u, ~4294967295u);
    global0 = select(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, _wgslsmith_mult_u32(u_input.d & u_input.d, ~4294967295u), ~(~global0.x), ~1u), min(_wgslsmith_div_vec4_u32(vec4<u32>(62862u, global0.x, 1u, global0.x), vec4<u32>(4294967295u, 0u, u_input.d, 25988u)) & (vec4<u32>(global0.x, u_input.d, 32884u, 1u) << (vec4<u32>(u_input.d, 29839u, 4294967295u, global0.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(27716u, 1u, u_input.d, u_input.d)), vec4<u32>(u_input.d, global0.x, 12708u, 0u) & vec4<u32>(1u, 4294967295u, 4294967295u, u_input.d), ~vec4<u32>(1u, 121831u, global0.x, global0.x)))), ~vec4<u32>(~4294967295u, 50894u, _wgslsmith_mod_u32(~41571u, ~20963u), ~16833u), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_0 = Struct_1(vec4<bool>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(global0.x, global0.x), ~1u) >= u_input.d, true, reverseBits(-7730i) <= ~(-u_input.a), all(vec3<bool>(true, true, true))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, func_1(Struct_2(-1866f, vec2<u32>(4294967295u, u_input.d)), 2147483647i), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), global0.zxz), reverseBits(global0.x)), min(vec4<u32>(0u, 0u, 0u, global0.x), vec4<u32>(u_input.d, 1u, 21942u, 30411u)) | ~vec4<u32>(u_input.d, 1u, global0.x, global0.x)), ~(~select(u_input.b & 2147483647i, _wgslsmith_mult_i32(u_input.b, u_input.a), true)), _wgslsmith_dot_vec3_u32(firstTrailingBit(global0.wyz), countOneBits(vec3<u32>(global0.x, global0.x, 4294967295u)) | global0.xwy), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global0.yyx, vec3<u32>(global0.x, global0.x, 4294967295u)), countOneBits(vec3<u32>(u_input.d, 37322u, 54000u))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-473f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-457f * 551f), _wgslsmith_f_op_f32(590f - -1031f), var_0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -387f))))) - -1180f)));
    var var_2 = vec4<u32>(abs(7143u), 2129u, 4294967295u, 4294967295u);
    var var_3 = -1392f;
    let var_4 = var_0.a.x;
    let var_5 = func_5(vec2<bool>(all(var_0.a.zyw), all(select(!vec3<bool>(var_0.a.x, true, var_0.a.x), select(vec3<bool>(false, true, var_0.a.x), var_0.a.xwy, true), all(var_0.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * -1774f) * _wgslsmith_f_op_f32(sign(var_1))), 671f, _wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(var_1 - -1183f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)))), Struct_1(func_2(), var_0.b, -var_0.c, 37871u, func_1(Struct_2(_wgslsmith_f_op_f32(491f - 660f), firstLeadingBit(var_2.yy)), -(~var_0.c))));
    let var_6 = _wgslsmith_div_vec4_i32(~u_input.c << (var_0.b % vec4<u32>(32u)), -u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f)), var_2.x);
}

