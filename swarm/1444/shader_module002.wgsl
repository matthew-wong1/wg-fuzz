struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    let var_0 = Struct_1(global0.a, !(!arg_1.x), reverseBits(global0.c));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(0i, ~1i, (i32(-1i) * -2147483647i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c, u_input.b, u_input.b), vec4<i32>(-1181i, 0i, u_input.a, u_input.a))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -1i, -50129i), vec3<i32>(u_input.c, u_input.a, u_input.b)) | abs(vec3<i32>(u_input.b, 2147483647i, u_input.c)))) & vec3<i32>(0i, -31357i, u_input.b);
    var var_2 = any(!arg_1);
    var var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.c.x, arg_0, ~96455u, global0.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(700u, var_0.c.x), ~global0.c.x, 0u, var_0.c.x), ~(var_0.c >> (global0.c % vec4<u32>(32u))))), vec4<u32>(~_wgslsmith_sub_u32(4294967295u, arg_0), 16913u, 4294967295u, arg_0));
    global0 = var_0;
    return max(_wgslsmith_sub_u32(1u >> (~_wgslsmith_mult_u32(54404u, var_0.c.x) % 32u), 4294967295u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(24169u, var_0.c.x, global0.c.x, var_0.c.x) >> (vec4<u32>(arg_0, 4294967295u, var_3.x, 0u) % vec4<u32>(32u)), var_0.c | var_0.c, all(vec2<bool>(arg_1.x, global0.b))), ~vec4<u32>(64138u, arg_0, 0u, var_3.x)) ^ (countOneBits(var_0.c.x) << (1u % 32u)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = false;
    global0 = Struct_1(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-global0.a)), global0.b, firstTrailingBit(global0.c >> (~(~global0.c) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(min(global0.a, global0.a)) < _wgslsmith_f_op_f32(f32(-1f) * -124f);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-301f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.a))))), select(true, false, true), _wgslsmith_mult_vec4_u32((global0.c ^ global0.c) >> (_wgslsmith_div_vec4_u32(vec4<u32>(51758u, global0.c.x, 84162u, 1u), vec4<u32>(arg_0, arg_0, 16412u, global0.c.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(arg_0, 4972u), 46504u | global0.c.x, ~global0.c.x, 77498u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, _wgslsmith_f_op_f32(exp2(global0.a))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a, 408f), vec2<f32>(global0.a, global0.a))))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global0.a))))), ~(~35862u) <= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), global0.c.xx), global0.c));
    var var_3 = select(!vec4<bool>(var_0, all(!vec2<bool>(var_1, false)), ~arg_0 == _wgslsmith_mult_u32(arg_0, 4294967295u), !all(vec2<bool>(false, var_2.c.b))), !vec4<bool>(var_1, false, !all(vec2<bool>(false, false)), !any(vec3<bool>(true, false, false))), select(vec4<bool>(true, select(all(vec4<bool>(true, true, false, false)), u_input.b != u_input.a, global0.b), true, false), !(!vec4<bool>(global0.b, false, false, false)), var_2.a.b));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_3.b.x)))), min(-(i32(-1i) * -14717i), u_input.b) > u_input.b, vec4<u32>(global0.c.x, ~func_2(1u, !vec4<bool>(true, false, arg_2, global0.b), _wgslsmith_f_op_f32(exp2(arg_1.x))), func_2(0u, !select(vec4<bool>(global0.b, true, true, false), vec4<bool>(arg_2, arg_3.a.b, arg_3.c.b, global0.b), vec4<bool>(false, arg_3.a.b, arg_2, arg_3.a.b)), 1885f), 1u >> (func_3(_wgslsmith_dot_vec4_u32(arg_3.c.c, arg_3.c.c)) % 32u)));
    let var_0 = _wgslsmith_add_i32(u_input.b << (reverseBits(4294967295u) % 32u), u_input.b);
    global0 = arg_3.a;
    let var_1 = ~var_0;
    global0 = Struct_1(_wgslsmith_f_op_f32(-arg_3.c.a), arg_1.x != global0.a, ~vec4<u32>(arg_3.a.c.x, ~arg_0, func_3(global0.c.x), func_3(countOneBits(0u))));
    return arg_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> vec4<i32> {
    global0 = Struct_1(arg_1, global0.b, vec4<u32>(~(~(~0u)), arg_0.c.x, 0u, _wgslsmith_dot_vec3_u32(arg_0.c.wxx, vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.c.yxx, global0.c.wxy), abs(0u), 4294967295u))));
    var var_0 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -115f), false, select(~global0.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(arg_0.c.x), 0u, reverseBits(var_0.c.x), 32427u), global0.c & (vec4<u32>(4294967295u, global0.c.x, arg_0.c.x, global0.c.x) & vec4<u32>(0u, 0u, var_0.c.x, var_0.c.x)), select(vec4<u32>(4294967295u, 36524u, 30806u, global0.c.x), select(arg_0.c, vec4<u32>(global0.c.x, arg_0.c.x, 19914u, var_0.c.x), vec4<bool>(true, arg_0.b, true, var_0.b)), true)), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), global0.b))));
    let var_1 = abs(min(36562u, func_2(arg_0.c.x, !vec4<bool>(false, arg_0.b, false, true), _wgslsmith_f_op_f32(round(871f))))) ^ (global0.c.x & global0.c.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 424f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.a)))))), -10741i > (u_input.b >> (4294967295u % 32u)), ~(~(~select(var_0.c, vec4<u32>(var_0.c.x, arg_0.c.x, 0u, 0u), vec4<bool>(global0.b, arg_0.b, false, true)))));
    return vec4<i32>(~18709i, u_input.b, 0i, _wgslsmith_dot_vec2_i32((reverseBits(vec2<i32>(8716i, 8942i)) << (vec2<u32>(global0.c.x, var_2.c.x) % vec2<u32>(32u))) & select(select(vec2<i32>(1i, u_input.c), vec2<i32>(29698i, -1i), true), ~vec2<i32>(u_input.c, 97386i), vec2<bool>(arg_0.b, arg_0.b)), -(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(-13381i, -1i)) >> (countOneBits(vec2<u32>(4294967295u, global0.c.x)) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(20354i, 0i), vec2<i32>(u_input.a, -1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(57589i, 44682i, 1i), vec3<i32>(u_input.b, -27734i, u_input.b)), -vec3<i32>(1i, 0i, -2147483647i)), min(u_input.b, u_input.a), ~abs(u_input.b)) ^ (func_4(func_1(0u, vec3<f32>(global0.a, global0.a, global0.a), true, Struct_2(Struct_1(144f, global0.b, vec4<u32>(0u, global0.c.x, global0.c.x, global0.c.x)), vec2<f32>(global0.a, -782f), Struct_1(global0.a, global0.b, vec4<u32>(56558u, global0.c.x, global0.c.x, global0.c.x)))), _wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-682f, global0.a))) >> (countOneBits(~vec4<u32>(61817u, 0u, 33411u, global0.c.x)) % vec4<u32>(32u))));
    let var_1 = var_0.xyw;
    let var_2 = !vec4<bool>(all(select(!vec4<bool>(global0.b, global0.b, global0.b, true), !vec4<bool>(false, global0.b, global0.b, true), any(vec2<bool>(true, global0.b)))), false, !global0.b, 6161u != (4294967295u & global0.c.x));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a)))));
    var var_4 = func_1(6966u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_3.x, global0.a)), _wgslsmith_f_op_f32(step(-472f, -1176f)), func_1(global0.c.x, vec3<f32>(var_3.x, var_3.x, global0.a), true, Struct_2(Struct_1(global0.a, true, vec4<u32>(1u, global0.c.x, global0.c.x, 0u)), vec2<f32>(var_3.x, var_3.x), Struct_1(-1959f, var_2.x, global0.c))).a)))), global0.b, Struct_2(func_1(~global0.c.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(max(var_3.x, 544f)), global0.a), any(!vec3<bool>(true, global0.b, global0.b)), Struct_2(func_1(4294967295u, vec3<f32>(global0.a, -364f, var_3.x), false, Struct_2(Struct_1(var_3.x, var_2.x, vec4<u32>(global0.c.x, 1411u, global0.c.x, 52089u)), var_3, Struct_1(-1082f, global0.b, global0.c))), vec2<f32>(-823f, -683f), func_1(30502u, vec3<f32>(-446f, var_3.x, global0.a), var_2.x, Struct_2(Struct_1(global0.a, var_2.x, vec4<u32>(global0.c.x, global0.c.x, 1u, 27383u)), var_3, Struct_1(var_3.x, false, vec4<u32>(global0.c.x, 4294967295u, global0.c.x, global0.c.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(var_3))))), func_1(global0.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, global0.a, var_3.x) * vec3<f32>(global0.a, 1000f, global0.a))), all(vec2<bool>(true, true)), Struct_2(func_1(26484u, vec3<f32>(-1631f, 1000f, global0.a), var_2.x, Struct_2(Struct_1(var_3.x, global0.b, vec4<u32>(1u, 51019u, global0.c.x, global0.c.x)), vec2<f32>(var_3.x, var_3.x), Struct_1(var_3.x, false, vec4<u32>(1u, 55089u, 103860u, global0.c.x)))), _wgslsmith_f_op_vec2_f32(-var_3), func_1(23093u, vec3<f32>(var_3.x, global0.a, global0.a), true, Struct_2(Struct_1(global0.a, global0.b, global0.c), var_3, Struct_1(global0.a, var_2.x, vec4<u32>(global0.c.x, 5229u, global0.c.x, 1u)))))))).b;
    global0 = Struct_1(137f, min(_wgslsmith_dot_vec3_u32(~global0.c.wxz, ~global0.c.xwx), global0.c.x) <= global0.c.x, max(min(vec4<u32>(2680u & global0.c.x, global0.c.x, global0.c.x, global0.c.x), ~vec4<u32>(global0.c.x, 19901u, global0.c.x, 13187u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 1u), vec4<u32>(global0.c.x, global0.c.x, 9706u, 55196u))));
    var var_5 = -19676i;
    let var_6 = vec3<bool>(!(select(~24908u, abs(global0.c.x), true) <= select(global0.c.x, 1u, true)), var_2.x && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1510f)) - _wgslsmith_f_op_f32(min(-1543f, 1871f))) < -1563f), true);
    let var_7 = -u_input.c ^ func_4(func_1(~firstLeadingBit(global0.c.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1025f, 836f, -624f), vec3<f32>(-775f, global0.a, var_3.x))))), select(false && var_2.x, var_2.x, true), Struct_2(func_1(global0.c.x, vec3<f32>(975f, 618f, var_3.x), true, Struct_2(Struct_1(707f, true, vec4<u32>(global0.c.x, 46648u, 120566u, 19513u)), var_3, Struct_1(global0.a, false, global0.c))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a, 651f))), func_1(41629u, vec3<f32>(1000f, 578f, -1170f), var_6.x, Struct_2(Struct_1(global0.a, var_6.x, vec4<u32>(global0.c.x, 19834u, 18549u, global0.c.x)), vec2<f32>(-2060f, global0.a), Struct_1(-749f, true, global0.c))))), 588f, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, global0.a)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~firstLeadingBit(abs(1i)), reverseBits(~32167i), var_0.x), _wgslsmith_clamp_vec3_i32(var_1, max(var_1, abs(var_1) << (max(vec3<u32>(global0.c.x, 1u, 71406u), vec3<u32>(global0.c.x, 8088u, global0.c.x)) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(var_1 | ~vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(2147483647i, -2147483647i, i32(-1i) * -2147483647i))), vec2<f32>(-622f, -778f), firstLeadingBit(vec2<i32>(48306i, 18142i)));
}

