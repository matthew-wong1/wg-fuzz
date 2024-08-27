struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(false, Struct_1(86884u, vec3<bool>(true, true, false), vec3<bool>(false, false, false), 2147483647i)), Struct_2(false, Struct_1(1u, vec3<bool>(false, false, false), vec3<bool>(true, true, false), 0i)), Struct_2(true, Struct_1(30773u, vec3<bool>(false, false, true), vec3<bool>(true, true, false), 0i)), Struct_2(true, Struct_1(1u, vec3<bool>(false, false, false), vec3<bool>(true, true, false), -1i)), Struct_2(false, Struct_1(1u, vec3<bool>(false, false, false), vec3<bool>(true, false, false), 14939i)), Struct_2(true, Struct_1(4294967295u, vec3<bool>(false, false, true), vec3<bool>(true, false, false), 11618i)), Struct_2(true, Struct_1(12842u, vec3<bool>(false, false, true), vec3<bool>(false, false, true), -54537i)), Struct_2(false, Struct_1(13934u, vec3<bool>(false, true, false), vec3<bool>(false, true, false), 2147483647i)), Struct_2(false, Struct_1(32398u, vec3<bool>(false, true, true), vec3<bool>(false, false, false), 1i)), Struct_2(true, Struct_1(1u, vec3<bool>(true, false, true), vec3<bool>(false, false, false), -1i)), Struct_2(false, Struct_1(14533u, vec3<bool>(false, false, false), vec3<bool>(true, true, false), -35211i)), Struct_2(true, Struct_1(2446u, vec3<bool>(false, false, false), vec3<bool>(true, true, true), 1i)), Struct_2(false, Struct_1(0u, vec3<bool>(false, false, false), vec3<bool>(true, true, true), 13763i)), Struct_2(true, Struct_1(0u, vec3<bool>(true, true, false), vec3<bool>(false, false, true), 0i)), Struct_2(false, Struct_1(63544u, vec3<bool>(true, true, false), vec3<bool>(true, false, false), 2147483647i)));

var<private> global1: array<vec4<i32>, 25>;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: Struct_2) -> bool {
    let var_0 = !(-2999f != _wgslsmith_f_op_f32(select(533f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-1453f - -1211f)), (2147483647i > arg_3.b.d) != true)));
    var var_1 = true;
    var_1 = false;
    global1 = array<vec4<i32>, 25>();
    global0 = array<Struct_2, 15>();
    return all(select(select(select(!vec3<bool>(arg_3.b.c.x, false, false), arg_2.c.b.b, arg_3.b.c), select(vec3<bool>(false, arg_0.x, false), !arg_2.c.b.c, vec3<bool>(true, arg_3.b.c.x, false)), global2.b.c), vec3<bool>((false & global2.a) && !arg_0.x, !global2.b.b.x, arg_2.b), true));
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: u32) -> u32 {
    global0 = array<Struct_2, 15>();
    var var_0 = Struct_4(2037f, ~abs(reverseBits(vec3<u32>(arg_2, 0u, 0u) >> (vec3<u32>(0u, 4294967295u, arg_2) % vec3<u32>(32u)))), Struct_2(all(vec2<bool>(func_3(vec4<bool>(true, true, global2.b.c.x, arg_1.c.a), vec2<u32>(60469u, 4294967295u), arg_1, arg_1.c), !arg_1.b)), global2.b));
    global0 = array<Struct_2, 15>();
    var var_1 = u_input.b;
    var var_2 = select(1u, _wgslsmith_dot_vec2_u32(var_0.b.xy, var_0.b.xz), global2.a);
    return firstLeadingBit(~_wgslsmith_dot_vec3_u32(var_0.b, firstTrailingBit(var_0.b)) ^ var_0.b.x);
}

fn func_1() -> Struct_2 {
    let var_0 = ~(~global2.b.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1584f + 2182f), _wgslsmith_f_op_f32(-1083f * -834f), _wgslsmith_f_op_f32(step(-1211f, 1833f)), 843f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -531f), _wgslsmith_f_op_f32(floor(-620f)), _wgslsmith_f_op_f32(122f * 154f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(655f)), -183f, _wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_div_f32(-145f, -754f))))));
    var var_2 = vec4<bool>(global2.a, true, select(global2.b.c.x, false, all(select(!vec2<bool>(global2.a, global2.b.b.x), vec2<bool>(global2.b.b.x, false), true & global2.b.c.x))), !global2.b.c.x || (global2.b.a < global2.b.a));
    var var_3 = select(firstLeadingBit(~vec4<u32>(global2.b.a, global2.b.a, 1u ^ global2.b.a, func_2(var_1.x, Struct_5(global2.b.d, global2.a, Struct_2(global2.b.b.x, global2.b)), var_0))), (vec4<u32>(select(global2.b.a, var_0, false), 0u, firstLeadingBit(39881u), ~35526u) << (countOneBits(select(vec4<u32>(4294967295u, var_0, 40745u, global2.b.a), vec4<u32>(global2.b.a, var_0, 0u, var_0), global2.a)) % vec4<u32>(32u))) & ~(~vec4<u32>(4294967295u, var_0, 1u, var_0)), select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, global2.a, var_2.x), global2.a), vec4<bool>(global2.a & false, false, global2.b.b.x, true), true), select(vec4<bool>(any(vec2<bool>(true, global2.a)), global2.a, var_2.x, global2.a), vec4<bool>(false, global2.b.c.x, global2.b.c.x, global2.b.b.x), !vec4<bool>(true, global2.b.c.x, var_2.x, global2.a)), vec4<bool>(global2.a, global2.b.c.x, any(var_2.ww), (var_2.x == false) | var_2.x)));
    let var_4 = select(vec3<bool>(global2.a | func_3(select(vec4<bool>(false, true, false, var_2.x), vec4<bool>(var_2.x, false, global2.a, true), var_2.x), ~vec2<u32>(27772u, 18957u), Struct_5(-1i, true, global0[_wgslsmith_index_u32(67880u, 15u)]), global0[_wgslsmith_index_u32(~53466u, 15u)]), true, global2.b.c.x), vec3<bool>(true, true, true), var_2.xyw);
    return global0[_wgslsmith_index_u32(global2.b.a, 15u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> vec4<u32> {
    let var_0 = ~u_input.b;
    global0 = array<Struct_2, 15>();
    return vec4<u32>(global2.b.a, 66713u, 9242u >> (arg_0.b.a % 32u), 4294967295u) << (_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 71321u), vec2<u32>(global2.b.a, 81778u)), arg_1.b << (0u % 32u), 6005u)), ~((vec4<u32>(arg_1.b, arg_1.b, 1u, 80560u) | vec4<u32>(arg_2.b, arg_2.b, global2.b.a, arg_0.b.a)) | (vec4<u32>(1u, arg_0.b.a, global2.b.a, arg_1.b) | vec4<u32>(global2.b.a, 0u, global2.b.a, 4294967295u)))) % vec4<u32>(32u));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(676f, 631f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1106f, 851f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1276f, 1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, 821f))), u_input.b >= u_input.b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(880f, -1697f)), _wgslsmith_f_op_f32(trunc(-446f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-143f, 537f) - vec2<f32>(312f, -339f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(270f, 600f) - vec2<f32>(-300f, -1000f))))));
    var var_1 = ~vec3<i32>(arg_3.d, 46857i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(1i, -2147483647i, u_input.b, global2.b.d)), vec4<i32>(u_input.a, arg_3.d, 2147483647i, u_input.b)), global1[_wgslsmith_index_u32(~arg_3.a, 25u)]));
    let var_2 = arg_2;
    let var_3 = Struct_5(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_1.zx, vec2<i32>(1i, 1i)), select(_wgslsmith_mod_i32(-16764i, u_input.b), -36683i, func_1().a)), true, Struct_2(true, func_1().b));
    var var_4 = ~_wgslsmith_div_vec2_u32(vec2<u32>(~firstLeadingBit(global2.b.a), ~_wgslsmith_mult_u32(global2.b.a, arg_3.a)), ~vec2<u32>(arg_1.x, 13752u) | countOneBits(firstTrailingBit(vec2<u32>(var_3.c.b.a, 1u))));
    return global0[_wgslsmith_index_u32(arg_3.a, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(true, global2.b);
    global2 = global0[_wgslsmith_index_u32(1u, 15u)];
    global2 = Struct_2(true, global2.b);
    var var_0 = Struct_5(358i, true, func_5(false, func_4(func_1(), Struct_3(vec3<i32>(u_input.b, global2.b.d, global2.b.d) << (vec3<u32>(global2.b.a, 28040u, global2.b.a) % vec3<u32>(32u)), _wgslsmith_add_u32(global2.b.a, global2.b.a)), Struct_3(reverseBits(vec3<i32>(u_input.b, -38702i, -42700i)), func_1().b.a), global2.a), select(select(select(vec4<bool>(false, global2.b.b.x, global2.a, false), vec4<bool>(global2.b.c.x, true, true, true), true), !vec4<bool>(global2.a, false, false, global2.a), select(vec4<bool>(global2.b.c.x, global2.b.b.x, global2.b.b.x, false), vec4<bool>(false, false, global2.a, global2.a), vec4<bool>(false, global2.a, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(global2.b.a <= 40841u, true, true, false)), Struct_1(~reverseBits(global2.b.a), select(vec3<bool>(global2.b.c.x, true, global2.b.b.x), vec3<bool>(global2.a, false, global2.b.c.x), global2.b.a > 4294967295u), global2.b.c, -1i)));
    global2 = func_1();
    global2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-1i, u_input.b) & 1i, 44987u, min(reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.b.a, var_0.c.b.a, global2.b.a), vec3<u32>(4294967295u, 10662u, 48831u), vec3<u32>(3857u, global2.b.a, 20595u))), vec3<u32>(4294967295u, 1u, _wgslsmith_add_u32(var_0.c.b.a, abs(var_0.c.b.a)))), vec2<f32>(_wgslsmith_f_op_f32(-273f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(239f + -311f) * _wgslsmith_f_op_f32(floor(674f)))), 758f));
}

