struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 16616u), vec3<u32>(3771u, 0u, 0u), vec3<u32>(4294967295u, 0u, 22070u), vec3<u32>(4723u, 16179u, 4294967295u), vec3<u32>(53651u, 51005u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(4488u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 51740u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 61085u), vec3<u32>(4294967295u, 4294967295u, 42034u), vec3<u32>(88997u, 0u, 75518u), vec3<u32>(9938u, 5963u, 21044u), vec3<u32>(41199u, 37566u, 62487u), vec3<u32>(4294967295u, 60826u, 0u), vec3<u32>(3445u, 59952u, 4294967295u), vec3<u32>(50902u, 4294967295u, 4294967295u), vec3<u32>(1u, 68685u, 0u), vec3<u32>(4294967295u, 0u, 35789u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 59490u), vec3<u32>(37904u, 40374u, 1u), vec3<u32>(10323u, 4294967295u, 4294967295u), vec3<u32>(27452u, 4294967295u, 4294967295u), vec3<u32>(2306u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 19882u), vec3<u32>(2485u, 3030u, 0u), vec3<u32>(128038u, 32333u, 8662u));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -968f);
    var var_1 = _wgslsmith_mod_vec2_u32(u_input.b, ~(~abs(u_input.b)));
    var var_2 = Struct_2(countOneBits(u_input.c | select(-u_input.c, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, false, false, false))));
    let var_3 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.x, -1i, _wgslsmith_sub_i32(firstTrailingBit(63902i), 60277i), u_input.a), vec4<i32>(firstLeadingBit(~1i), u_input.c.x, 1i, var_2.a.x), u_input.c));
    var var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(351f, var_0, var_0, 682f), vec4<f32>(-203f, var_0, var_0, var_0))))))), vec2<bool>(!(!any(vec4<bool>(false, true, false, false))), any(vec2<bool>(false, false)) || any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-var_0), ~var_1.x != ~var_1.x)) <= -1345f, firstLeadingBit(vec2<i32>(reverseBits(-1i), -60439i)));
    return select(u_input.b.x, select(81611u, u_input.d, all(select(vec3<bool>(false, true, true), !vec3<bool>(var_4.b.x, var_4.b.x, var_4.c), false))), select(all(!select(vec4<bool>(var_4.b.x, var_4.c, false, false), vec4<bool>(var_4.c, var_4.c, true, false), vec4<bool>(var_4.b.x, true, true, false))), true, true));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(arg_0, 30u)], global0[_wgslsmith_index_u32(~(~min(arg_0, func_3())), 30u)]);
    var var_1 = Struct_1(max(~_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 34226u, 50363u, var_0.x), vec4<u32>(0u, 36807u, 31591u, 33851u) << (vec4<u32>(4294967295u, 7185u, var_0.x, u_input.d) % vec4<u32>(32u))), ~abs(max(vec4<u32>(1u, var_0.x, var_0.x, 0u), vec4<u32>(arg_0, arg_0, arg_0, 0u)))), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), select(vec4<bool>(true, false, false, true), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, 17312i < min(u_input.a, u_input.a), ~arg_0 >= _wgslsmith_div_u32(1u, arg_0)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !all(vec2<bool>(false, false)))), ~(~(~10859u)) << (min(var_0.x >> (var_0.x % 32u), select(~var_0.x, ~u_input.b.x, true)) % 32u));
    let var_2 = u_input.c.x;
    let var_3 = u_input.c.xyz;
    var var_4 = min(~var_1.a.zx, ~(~min(var_0.xx, var_0.xy)) << (u_input.b % vec2<u32>(32u)));
    return Struct_1(select(abs((var_1.a << (vec4<u32>(arg_0, var_0.x, var_4.x, 8625u) % vec4<u32>(32u))) << (select(var_1.a, var_1.a, vec4<bool>(var_1.b.x, var_1.c.x, var_1.c.x, var_1.c.x)) % vec4<u32>(32u))), max(vec4<u32>(abs(var_0.x), ~23050u, ~1u, ~arg_0), var_1.a), var_1.c), var_1.b, vec4<bool>(select(select(var_1.c.x, var_1.b.x, false), true, false && var_1.b.x) | all(!vec4<bool>(true, var_1.b.x, true, false)), abs(arg_0) > firstTrailingBit(1u | var_0.x), (all(var_1.c.wwz) & false) | var_1.b.x, var_1.b.x), 22245u);
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    global0 = array<vec3<u32>, 30>();
    var var_0 = !select(vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), (0u > u_input.d) & any(vec2<bool>(true, true))), false);
    var_0 = !vec2<bool>(all(vec3<bool>(true, select(var_0.x, true, false), all(vec2<bool>(var_0.x, var_0.x)))), true);
    var var_1 = func_2(u_input.d);
    let var_2 = u_input.c;
    return Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-438f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-681f + 527f))), _wgslsmith_f_op_f32(f32(-1f) * -130f))), Struct_2(vec4<i32>(-14276i, -46428i, u_input.c.x, -countOneBits(var_2.x))), Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d, 1u, var_1.a.x, 0u), func_2(u_input.d).a), vec3<bool>(true, true, all(func_2(1u).b.yy)), var_1.c, ~(_wgslsmith_sub_u32(0u, 0u) ^ ~u_input.d)), var_1.c.x);
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_3 {
    let var_0 = select(select(vec4<bool>(u_input.c.x > abs(arg_0.b.a.x), any(vec4<bool>(arg_0.c.b.x, arg_0.d, arg_0.d, false)) & true, arg_0.c.b.x, true), arg_0.c.c, true), func_2(~u_input.b.x).c, func_1(~(~(vec3<u32>(arg_0.c.d, arg_0.c.a.x, 57205u) & global0[_wgslsmith_index_u32(37724u, 30u)]))).c.c);
    global0 = array<vec3<u32>, 30>();
    var var_1 = true;
    global0 = array<vec3<u32>, 30>();
    return Struct_3(vec4<f32>(-958f, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.a)) + _wgslsmith_f_op_f32(-arg_0.a))), vec2<bool>(arg_0.d, true), false, vec2<i32>(firstLeadingBit(arg_0.b.a.x), 1i));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_4) -> Struct_1 {
    var var_0 = ~arg_1.d;
    let var_1 = false;
    global0 = array<vec3<u32>, 30>();
    let var_2 = -min(arg_2.b.a.ww ^ vec2<i32>(var_0.x, arg_1.d.x), vec2<i32>(~u_input.a, select(-53111i, -9591i, all(vec3<bool>(false, var_1, arg_1.c)))));
    global0 = array<vec3<u32>, 30>();
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.c.xyy, func_4(func_1(global0[_wgslsmith_index_u32(abs(~4294967295u), 30u)]), ~u_input.b.x), func_1(min(vec3<u32>(~0u, ~u_input.b.x, abs(u_input.d)), select(global0[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_sub_vec3_u32(vec3<u32>(46828u, u_input.b.x, 25270u), vec3<u32>(u_input.d, 4294967295u, u_input.d)), vec3<bool>(true, true, true)))));
    var var_1 = Struct_2(u_input.c ^ -(~reverseBits(u_input.c)));
    var_1 = func_1(select(var_0.a.wxz, countOneBits(min(~vec3<u32>(var_0.d, 4294967295u, u_input.d), vec3<u32>(3294u, 4294967295u, 42873u))), func_2(_wgslsmith_add_u32(u_input.b.x, select(var_0.d, u_input.b.x, false))).b)).b;
    var_1 = Struct_2(firstLeadingBit(vec4<i32>(0i, -_wgslsmith_mod_i32(-2147483647i, u_input.a), -u_input.c.x >> ((u_input.b.x ^ u_input.b.x) % 32u), select(u_input.c.x, firstTrailingBit(var_1.a.x), func_2(var_0.a.x).c.x))));
    var_1 = Struct_2(countOneBits(vec4<i32>(u_input.c.x, u_input.c.x | _wgslsmith_dot_vec2_i32(var_1.a.ww, vec2<i32>(var_1.a.x, var_1.a.x)), var_1.a.x, var_1.a.x)));
    var var_2 = ~func_1(~var_0.a.xyz).c.d;
    var_2 = 0u;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec3_u32(func_2(14416u).a.wxy, _wgslsmith_sub_vec3_u32(vec3<u32>(var_3.d, 14062u, u_input.b.x), global0[_wgslsmith_index_u32(0u, 30u)]))), select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(countOneBits(reverseBits(53413i)), u_input.c.x), func_4(Struct_4(func_4(Struct_4(-2326f, Struct_2(var_1.a), Struct_1(vec4<u32>(0u, 1u, 2472u, 0u), vec3<bool>(var_0.b.x, true, var_3.c.x), var_0.c, var_0.a.x), var_0.c.x), var_0.d).a.x, func_1(vec3<u32>(4294967295u, 4294967295u, 84948u)).b, Struct_1(vec4<u32>(30757u, 4294967295u, u_input.d, 4294967295u), var_0.c.zzy, var_3.c, var_0.a.x), all(vec4<bool>(var_3.b.x, var_3.b.x, var_3.c.x, var_3.c.x))), ~4294967295u ^ ~var_0.d).b.x), -(vec2<i32>(-1i, 0i) ^ u_input.c.xy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1054f, -1762f, -275f, 222f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f + -507f) - _wgslsmith_f_op_f32(ceil(564f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1189f, -772f)))))) * 1391f));
}

