struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: array<u32, 32> = array<u32, 32>(4294967295u, 0u, 4294967295u, 0u, 0u, 0u, 0u, 0u, 8028u, 1u, 12539u, 14647u, 23695u, 26009u, 1u, 61996u, 55884u, 31726u, 1u, 39972u, 19561u, 35871u, 0u, 14737u, 28831u, 24094u, 19175u, 0u, 0u, 0u, 23861u, 14535u);

var<private> global2: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(47026u, 0u), vec2<u32>(18301u, 4294967295u), vec2<u32>(71291u, 38983u), vec2<u32>(1u, 119927u), vec2<u32>(23629u, 1u), vec2<u32>(17195u, 4294967295u), vec2<u32>(4294967295u, 52231u), vec2<u32>(0u, 33229u), vec2<u32>(1u, 42013u), vec2<u32>(4294967295u, 95641u), vec2<u32>(75084u, 0u), vec2<u32>(20677u, 89770u), vec2<u32>(4294967295u, 19502u), vec2<u32>(1u, 1u), vec2<u32>(52265u, 0u), vec2<u32>(1u, 113848u), vec2<u32>(14843u, 26980u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 26485u), vec2<u32>(51298u, 37783u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -304f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - arg_1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.b.d) + 1919f)))));
    var var_1 = Struct_1(abs(_wgslsmith_div_i32(firstLeadingBit(arg_3.b), ~arg_3.a.b.a)), ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), arg_3.a.b.c.xz), _wgslsmith_mod_u32(arg_3.c, u_input.a.x), all(vec4<bool>(true, true, arg_3.a.a, true))) != _wgslsmith_sub_u32(60816u, _wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(arg_3.a.b.c.x, 32u)], ~865u)), vec3<u32>(abs(~arg_3.a.b.c.x) ^ ~max(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 1u), min(_wgslsmith_mult_u32(arg_3.a.d.x, global1[_wgslsmith_index_u32(firstLeadingBit(3215u), 32u)]), 45223u), ~0u), arg_3.a.b.d);
    var_1 = arg_3.a.b;
    global2 = array<vec2<u32>, 21>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) - vec2<f32>(907f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.d))))));
    return var_1.d;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_3 {
    global1 = array<u32, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, 925f, -604f) - vec3<f32>(-433f, -673f, 869f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) + _wgslsmith_f_op_f32(f32(-1f) * -511f)), -282f, _wgslsmith_f_op_f32(-843f * -457f))));
    var var_1 = Struct_2(select(_wgslsmith_f_op_f32(func_3(-336f, var_0.xy, vec4<i32>(2147483647i, 2147483647i, 52863i, 33999i), Struct_3(Struct_2(global0.x, Struct_1(-2147483647i, global0.x, vec3<u32>(u_input.a.x, arg_1, global1[_wgslsmith_index_u32(arg_1, 32u)]), var_0.x), var_0.x, u_input.a.zz, vec3<bool>(false, false, false)), -1538i, arg_1, global0.x))) != 1f, any(!vec2<bool>(true, global0.x)), true) & true, Struct_1(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(65791i, -2147483647i), vec2<i32>(-12680i, 8576i)), 2147483647i, _wgslsmith_clamp_i32(1i, ~(-18702i), 1i)), false, vec3<u32>(1u, global1[_wgslsmith_index_u32(arg_1 | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], _wgslsmith_add_u32(0u, 4294967295u)) >> (vec3<u32>(~8151u, max(24207u, u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a.zwy, vec3<u32>(global1[_wgslsmith_index_u32(0u, 32u)], 4294967295u, u_input.a.x))) % vec3<u32>(32u)), 183f), var_0.x, ~vec2<u32>(reverseBits(~arg_1), 0u), !vec3<bool>(true, any(vec2<bool>(arg_0, false)) && (var_0.x < var_0.x), false));
    var var_2 = select(var_1.b.b, false, arg_0);
    global1 = array<u32, 32>();
    return Struct_3(Struct_2(any(vec4<bool>(true, !var_1.a, true, true)), var_1.b, 611f, reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(16045u & global1[_wgslsmith_index_u32(31979u, 32u)], 32u)], ~arg_1)), !global0.wxw), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_1.b.a, 2147483647i, 11260i, 1i)), firstLeadingBit(_wgslsmith_sub_vec4_i32(select(vec4<i32>(var_1.b.a, var_1.b.a, var_1.b.a, 2147483647i), vec4<i32>(-29190i, var_1.b.a, var_1.b.a, var_1.b.a), vec4<bool>(arg_0, true, var_1.a, false)), -vec4<i32>(2147483647i, var_1.b.a, var_1.b.a, var_1.b.a)))), min(~(~arg_1 | 37048u), select(countOneBits(_wgslsmith_mod_u32(80882u, u_input.a.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(102587u, 4294967295u, 4294967295u, 0u), u_input.a), u_input.a.x, _wgslsmith_dot_vec3_u32(var_1.b.c, vec3<u32>(45233u, arg_1, var_1.b.c.x))), false)), arg_0);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> vec4<bool> {
    var var_0 = func_2(global0.x, ~1u);
    var var_1 = ~arg_1.x;
    let var_2 = min(_wgslsmith_mult_vec3_u32(func_2(all(global0.zwz), ~0u).a.b.c, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 104850u, 1u), vec3<u32>(12206u, 27274u, var_0.c)) & min(vec3<u32>(32059u, var_0.c, u_input.a.x), var_0.a.b.c)) & var_0.a.b.c, vec3<u32>(max(firstTrailingBit(var_0.a.d.x), u_input.a.x), _wgslsmith_div_u32(var_0.c, var_0.a.d.x), global1[_wgslsmith_index_u32(36039u, 32u)]));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.c, arg_0) * _wgslsmith_f_op_f32(arg_0 + 1293f)) <= -370f, Struct_1(abs(-2147483647i), true, u_input.a.zxx, 289f), 980f, u_input.a.yx, !(!vec3<bool>(global0.x, true, global0.x))), -11379i, ~50684u, global0.x);
    let var_4 = var_3.b;
    return select(!select(!vec4<bool>(true, var_3.d, false, true), !(!vec4<bool>(true, true, true, global0.x)), !select(vec4<bool>(true, var_3.a.a, var_3.a.e.x, var_3.d), vec4<bool>(false, global0.x, false, var_3.d), global0.x)), select(vec4<bool>(true & var_3.d, _wgslsmith_f_op_f32(arg_0 - arg_0) > var_3.a.c, _wgslsmith_div_i32(82847i, 65859i) >= var_3.b, any(global0.zx) != !var_3.a.b.b), select(select(!vec4<bool>(false, var_3.a.e.x, var_3.a.a, global0.x), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, var_3.a.b.b, false), vec4<bool>(true, global0.x, false, global0.x), global0.x)), vec4<bool>(true, true, false, var_0.a.a || var_0.a.e.x), !vec4<bool>(global0.x, false, true, true)), true), select(select(!(!vec4<bool>(var_3.d, var_0.a.e.x, global0.x, global0.x)), vec4<bool>(true, all(global0.ywz), true || var_0.a.b.b, true), !vec4<bool>(true, global0.x, var_3.a.b.b, var_3.a.b.b)), select(!select(vec4<bool>(global0.x, var_0.a.e.x, true, false), vec4<bool>(global0.x, var_3.d, var_0.a.a, global0.x), false), select(!vec4<bool>(global0.x, true, var_0.a.b.b, global0.x), vec4<bool>(true, true, true, true), !vec4<bool>(false, var_3.d, true, var_0.d)), select(vec4<bool>(global0.x, false, true, false), !vec4<bool>(true, false, var_3.a.e.x, var_3.a.b.b), var_0.a.b.b && true)), vec4<bool>(var_3.a.a, true, true, var_3.a.c != _wgslsmith_f_op_f32(arg_0 * -140f))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = ~(~countOneBits(1u));
    global0 = !(!func_1(-1777f, ~(~vec4<i32>(20388i, 0i, -24982i, 11245i))));
    global0 = !vec4<bool>(!arg_1.x, global0.x, global0.x, arg_1.x || true);
    global0 = arg_1;
    let var_1 = u_input.a.x;
    return func_2(true, ~arg_0.x).a.b;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: vec2<u32>) -> i32 {
    var var_0 = Struct_3(func_2(arg_1, 28752u ^ arg_0.c.x).a, ~arg_0.a, ~global1[_wgslsmith_index_u32(46359u, 32u)], !global0.x);
    global1 = array<u32, 32>();
    let var_1 = i32(-1i) * -30452i;
    var_0 = Struct_3(func_2(any(vec4<bool>(all(vec3<bool>(true, false, true)), arg_1, any(vec4<bool>(true, true, true, arg_0.b)), true)), 1366u).a, var_1, 20662u, arg_0.b);
    let var_2 = global0.wwz;
    return _wgslsmith_sub_i32(~1i, min(firstLeadingBit(_wgslsmith_clamp_i32(~1i, max(arg_2.x, var_0.a.b.a), var_1 | -17238i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 2684i, -26404i), arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.yxw;
    global0 = !(!(!(!select(vec4<bool>(true, global0.x, true, true), vec4<bool>(true, true, true, global0.x), global0.x))));
    let var_1 = func_5(func_4(~global2[_wgslsmith_index_u32(~var_0.x, 21u)], select(vec4<bool>(global0.x, global0.x, false, true || global0.x), func_1(_wgslsmith_f_op_f32(trunc(1000f)), ~vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -2147483647i)), true)), global0.x, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(~(~vec3<i32>(12114i, 1i, 0i)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 13800i, 2147483647i), vec3<i32>(34783i, -67890i, 21215i)))), firstLeadingBit(~vec3<i32>(1i, 1i, 1i))), var_0.xy);
    var var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 32u)];
    global1 = array<u32, 32>();
    let var_3 = func_2(!(_wgslsmith_f_op_f32(-func_2(global0.x, var_0.x).a.b.d) == _wgslsmith_f_op_f32(f32(-1f) * -1445f)), u_input.a.x).a;
    var var_4 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(firstLeadingBit(var_3.d.x), 21u)] >> (vec2<u32>(~var_3.b.c.x, _wgslsmith_dot_vec3_u32(u_input.a.wyy, u_input.a.xzy)) % vec2<u32>(32u)), ~((vec2<u32>(u_input.a.x, 79488u) & vec2<u32>(0u, 50676u)) >> (~var_0.zz % vec2<u32>(32u)))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-131f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.b.d - var_3.c)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c - var_3.b.d)) - _wgslsmith_div_f32(var_3.b.d, _wgslsmith_f_op_f32(var_3.b.d + -792f)))), _wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(var_3.b.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.b.d, -199f)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(max(-1i, var_3.b.a), var_3.b.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, 1i), vec3<i32>(var_3.b.a, var_1, var_1)), _wgslsmith_add_i32(1i, 5139i)), vec4<i32>(~(-2147483647i), 29200i, _wgslsmith_sub_i32(13834i, var_3.b.a), var_3.b.a), _wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, var_3.b.a, var_3.b.a, var_3.b.a), vec4<i32>(-12748i, var_3.b.a, 41699i, -1i), vec4<bool>(global0.x, true, true, var_3.b.b)), vec4<i32>(var_3.b.a, var_3.b.a, var_3.b.a, -1i) ^ vec4<i32>(var_3.b.a, 0i, var_1, var_3.b.a))), Struct_3(Struct_2(true, func_4(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 21u)], vec4<bool>(true, var_3.e.x, var_3.e.x, global0.x)), 1000f, u_input.a.yx >> (var_0.yz % vec2<u32>(32u)), select(vec3<bool>(true, false, true), var_3.e, false)), var_1, var_0.x, !(var_3.b.a <= var_1)))), max(vec4<i32>(func_4(vec2<u32>(var_0.x, u_input.a.x), vec4<bool>(global0.x, true, var_3.a, var_3.b.b)).a, -314i, ~abs(14593i), 12732i), ~(~vec4<i32>(0i, 20924i, 39088i, 1i)) & ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.b.a, 57933i, -1i, 1i), vec4<i32>(-2147483647i, 25145i, var_3.b.a, var_3.b.a))), countOneBits(max(u_input.a, vec4<u32>(~27660u, u_input.a.x, 1u, _wgslsmith_sub_u32(30158u, var_3.b.c.x)))));
}

