struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, false);

var<private> global1: Struct_1;

var<private> global2: array<vec3<i32>, 10>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -883f) + -462f) + _wgslsmith_div_f32(_wgslsmith_div_f32(-307f, 651f), _wgslsmith_f_op_f32(ceil(-809f))))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1409f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-216f)))))));
    global2 = array<vec3<i32>, 10>();
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-842f + var_1)))), vec3<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 2147483647i), vec2<i32>(-21199i, arg_0))) >> (u_input.a.x % 32u), -12552i, _wgslsmith_mult_i32(~u_input.e, arg_0) ^ u_input.e), ~firstLeadingBit(_wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(u_input.d.x, 10u)], vec3<i32>(u_input.e, 27110i, arg_0)) << (reverseBits(vec3<u32>(var_0.x, u_input.c, 1u)) % vec3<u32>(32u))));
    return vec3<bool>((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, 56107u, var_0.x), ~vec4<u32>(u_input.c, u_input.a.x, 91031u, 73024u)) >> (~(~1u) % 32u)) > ~(~100881u), true, !global0.a);
}

fn func_2(arg_0: bool) -> Struct_3 {
    global1 = Struct_1(!all(vec4<bool>(true, true, false, arg_0)), any(vec2<bool>(any(!vec3<bool>(global1.a, global0.a, false)), false)));
    global1 = Struct_1(any(!select(vec3<bool>(true, true, true), vec3<bool>(arg_0, global0.b, arg_0), func_3(-46196i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) - -1214f), 945f)) >= _wgslsmith_f_op_f32(ceil(-774f)));
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(486f, -247f) - _wgslsmith_f_op_f32(381f + -756f)))), vec3<i32>(u_input.b, 50236i, ~max(u_input.b, u_input.b)), global2[_wgslsmith_index_u32(18008u, 10u)]), 631f, -736f, ~((select(vec3<u32>(u_input.a.x, u_input.d.x, 4294967295u), u_input.a.wzx, arg_0) & ~u_input.a.yxy) & firstTrailingBit(select(vec3<u32>(43443u, 10088u, 29587u), vec3<u32>(4294967295u, u_input.a.x, 9800u), vec3<bool>(global1.a, true, true)))));
    global1 = Struct_1(global0.b, select(arg_0, any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, global0.b, arg_0, global0.a), vec4<bool>(false, arg_0, arg_0, global1.b), global1.b), arg_0)), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, 532f) + _wgslsmith_f_op_f32(sign(1246f)))), _wgslsmith_f_op_f32(abs(-783f))));
    return Struct_3(var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1537f))), _wgslsmith_f_op_f32(-var_0.b))), 673f, vec3<u32>(u_input.c, u_input.a.x, u_input.a.x) ^ vec3<u32>(firstLeadingBit(~u_input.a.x), 34270u, var_0.d.x | u_input.d.x));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> Struct_3 {
    let var_0 = u_input.b;
    var var_1 = arg_0;
    var var_2 = arg_0;
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1190f, arg_0.a.a, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))), vec3<i32>(30196i, 1i, var_2.a.b.x), _wgslsmith_mult_vec3_i32(max(global2[_wgslsmith_index_u32(var_1.d.x, 10u)], _wgslsmith_add_vec3_i32(var_2.a.b, var_2.a.c)), var_2.a.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_2.c)))), 1f, ~select(vec3<u32>(~0u, arg_0.d.x, var_1.d.x), vec3<u32>(1u, var_2.d.x, 15247u) << (~vec3<u32>(var_1.d.x, 4294967295u, var_1.d.x) % vec3<u32>(32u)), (23332i >> (1u % 32u)) >= var_0));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0.a;
    let var_1 = arg_0.d.x;
    var var_2 = u_input.c;
    let var_3 = arg_0.a;
    var var_4 = func_2(~func_4(arg_0, any(vec3<bool>(false, false, global0.b)), var_3.a < 1000f).a.b.x == 0i).a;
    return Struct_1(true, global1.a);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = func_5(func_4(Struct_3(func_4(func_2(arg_2.b), false, any(vec4<bool>(arg_2.b, global0.a, true, false))).a, 126f, 1f, ~u_input.a.zwy), true, global1.b && arg_2.b));
    var var_1 = func_2(true != (_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(arg_1, u_input.b)) > _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, arg_1), vec3<i32>(u_input.b, u_input.b, arg_1)), u_input.b << (u_input.a.x % 32u))));
    var var_2 = ~1u;
    let var_3 = _wgslsmith_f_op_f32(ceil(489f));
    var var_4 = vec2<bool>(true, _wgslsmith_mod_u32(var_1.d.x, ~u_input.d.x | var_1.d.x) < min(_wgslsmith_clamp_u32(abs(var_1.d.x), ~u_input.c, 1u), var_1.d.x));
    return arg_0;
}

fn func_1() -> bool {
    let var_0 = ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.e, u_input.e) << ((u_input.d.zzw >> (vec3<u32>(0u, 35938u, 25979u) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(vec3<i32>(-34838i, 1i, u_input.b))) | ~global2[_wgslsmith_index_u32(u_input.a.x, 10u)];
    let var_1 = func_6(func_5(func_4(func_2(true), false, all(vec4<bool>(global0.b, false, false, false)))), var_0.x >> (24170u % 32u), Struct_1(func_5(func_4(Struct_3(Struct_2(172f, global2[_wgslsmith_index_u32(9602u, 10u)], vec3<i32>(-14384i, 17030i, 11396i)), -268f, 281f, vec3<u32>(u_input.c, 11606u, 109329u)), func_3(1i).x, global0.b)).b, 0u >= _wgslsmith_mod_u32(u_input.c, u_input.d.x)), ~firstTrailingBit(~select(u_input.d.x, u_input.a.x, global0.b)));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1962f * 263f)));
    let var_3 = -1425f;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1549f)), var_3));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-((~u_input.e >> ((u_input.a.x & 0u) % 32u)) | -1i));
    let var_1 = select(select(select(vec3<bool>(true, all(vec4<bool>(false, global0.b, true, false)), all(vec3<bool>(false, global0.a, global1.b))), select(!vec3<bool>(true, true, global0.b), select(vec3<bool>(global1.a, global0.a, global1.a), vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(false, true, global0.b)), func_1()), all(vec3<bool>(true, false, global1.b))), select(!select(vec3<bool>(global0.b, false, global0.b), vec3<bool>(global0.b, global0.a, global1.b), vec3<bool>(false, false, global1.b)), select(!vec3<bool>(false, global0.a, true), vec3<bool>(true, global1.a, global0.b), !global1.a), global1.b), func_6(Struct_1(any(vec4<bool>(false, global0.b, global0.a, global0.a)), true), 1i, Struct_1(global1.b | false, true), ~(~1u)).b), vec3<bool>(true, true, true), global0.b);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-func_2(all(vec4<bool>(var_1.x, global0.b, true, false))).c) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-530f * 302f)) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(212f, -1001f)))), global1.a);
    var_2 = Struct_1(false, true);
    var var_3 = vec4<bool>(!any(!select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(var_2.a, var_1.x, true, var_2.a), true)), false, func_1(), !var_1.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-434f + _wgslsmith_f_op_f32(-1270f * 714f)), _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(827f, vec3<i32>(27609i, -42029i, u_input.b), vec3<i32>(2147483647i, 47120i, -40915i)), -480f, 1153f, u_input.a.wxx), var_1.x, global0.a).c - _wgslsmith_div_f32(183f, 1381f)), _wgslsmith_f_op_f32(step(109f, _wgslsmith_f_op_f32(674f * -887f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1602f, 454f, 548f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1981f, -818f, 129f), vec3<f32>(-120f, -797f, 369f), vec3<bool>(var_3.x, true, false)))))));
    var_3 = !select(select(!(!vec4<bool>(global1.b, false, global0.a, global1.a)), select(vec4<bool>(var_2.b, false, false, var_1.x), vec4<bool>(true, var_2.b, true, var_3.x), func_3(u_input.e).x), select(!vec4<bool>(global0.a, false, var_2.a, var_1.x), vec4<bool>(true, false, global0.b, false), true)), select(select(select(vec4<bool>(var_1.x, var_2.a, var_2.b, true), vec4<bool>(true, global1.a, true, false), vec4<bool>(var_1.x, var_3.x, global1.b, var_3.x)), select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(true, var_1.x, true, var_3.x), vec4<bool>(true, var_1.x, true, var_1.x)), true), vec4<bool>(all(vec2<bool>(var_3.x, var_2.b)), global0.a != var_1.x, true, all(vec2<bool>(true, true))), false), !select(!vec4<bool>(false, var_1.x, false, false), select(vec4<bool>(global0.b, var_1.x, true, true), vec4<bool>(global0.b, global0.b, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true)), true));
    var var_5 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mult_vec4_i32(~vec4<i32>(-10103i, u_input.e, u_input.b, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.e, u_input.e, 2147483647i), vec4<i32>(u_input.b, u_input.e, u_input.b, -17520i))) ^ -vec4<i32>(1i, u_input.e, u_input.b, 54130i)), ~abs(u_input.c));
}

