struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 32> = array<bool, 32>(true, true, true, true, true, true, true, false, true, true, true, true, true, false, false, false, true, true, true, false, true, false, true, false, false, true, true, false, false, true, false, false);

var<private> global2: u32 = 79550u;

var<private> global3: u32 = 39249u;

var<private> global4: i32 = -32276i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<i32> {
    return -_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(73251i), -35111i, -1i, _wgslsmith_clamp_i32(u_input.a, u_input.a, -36496i)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, -8672i, -2147483647i), vec4<i32>(-2147483647i, u_input.a, 9095i, u_input.a)))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)), vec4<i32>(2147483647i, 1i, u_input.a, u_input.a)), select(-vec4<i32>(u_input.a, -68858i, u_input.a, u_input.a), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global1[_wgslsmith_index_u32(0u, 32u)]), global1[_wgslsmith_index_u32(0u, 32u)]))));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_4 {
    var var_0 = select(vec4<i32>(-(~(-25076i)), abs(u_input.a), u_input.a, ~countOneBits(~u_input.a)), func_3(), any(select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(true, arg_1), arg_1), !vec2<bool>(arg_1, global1[_wgslsmith_index_u32(4294967295u, 32u)]), false), vec2<bool>(arg_1, true), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), vec2<bool>(true, true), global1[_wgslsmith_index_u32(82144u, 32u)]), true))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 641f, -1375f, 1993f), vec4<f32>(863f, 463f, 117f, -332f), vec4<bool>(arg_1, global1[_wgslsmith_index_u32(arg_0.x, 32u)], global1[_wgslsmith_index_u32(u_input.c, 32u)], arg_1))) * vec4<f32>(704f, 541f, -745f, -935f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-755f, -1681f, 1188f, 804f), vec4<f32>(-351f, -155f, 939f, 686f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(640f, -174f, 1143f, -105f)))))), ~arg_0.x, Struct_1(true, ~(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_0.x), var_0.ww))), countOneBits(arg_0.x), Struct_3(!vec4<bool>(true, true, !global1[_wgslsmith_index_u32(u_input.c, 32u)], true), vec3<f32>(382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1071f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1383f, 1000f))))), Struct_2(Struct_1(arg_1, -vec2<i32>(u_input.a, 2852i)), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 32u)], vec2<i32>(1i, var_0.x))), Struct_2(Struct_1(arg_1, vec2<i32>(var_0.x, u_input.a)), Struct_1(all(vec3<bool>(false, true, arg_1)), countOneBits(var_0.wz)))));
    global0 = (1i | (var_0.x | select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, 51774i, 2147483647i)), 1i, arg_1 & true))) >> (0u % 32u);
    global3 = var_1.d;
    let var_2 = 40134u;
    return Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_1.e.b.x), -191f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 1389f, var_1.e.b.x, var_1.a.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(196f, var_1.e.b.x, var_1.a.x, var_1.e.b.x)), vec4<f32>(var_1.a.x, 619f, var_1.e.b.x, var_1.a.x), vec4<bool>(true, true, false, var_1.e.a.x))), vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x * -396f), _wgslsmith_div_f32(742f, var_1.e.b.x), -1206f, 848f))))), 6976u, Struct_1(false, _wgslsmith_add_vec2_i32(var_1.e.c.a.b, -abs(vec2<i32>(-1i, var_0.x)))), _wgslsmith_sub_u32(~4294967295u, u_input.c), var_1.e);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> u32 {
    let var_0 = func_2(countOneBits(~select(u_input.b & u_input.b, u_input.b, vec3<bool>(true, true, false))), false).c;
    global3 = _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(u_input.c), _wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.b.x, u_input.b.x), firstTrailingBit(abs(11842u)))), ~vec2<u32>(30394u, ~69869u));
    let var_1 = 1102f;
    var var_2 = u_input.b.zz;
    let var_3 = 107f;
    return _wgslsmith_div_u32(~(~u_input.b.x), ~select(select(~39404u, _wgslsmith_mult_u32(u_input.c, 1u), var_2.x != arg_1), ~func_2(u_input.b, true).d, _wgslsmith_f_op_f32(-var_1) > var_3));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    let var_0 = vec2<bool>(global1[_wgslsmith_index_u32(func_4(vec2<bool>(arg_0.a.a, false), firstLeadingBit(~57264u), func_2(~(~u_input.b), !select(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true, arg_1.d.b.a)), Struct_1(u_input.c > 4294967295u, arg_1.c.b.b)), 32u)], !(-arg_1.c.b.b.x != 1i) && (true | func_2(u_input.b & u_input.b, all(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 32u)], arg_1.d.a.a))).c.a));
    var var_1 = func_2(countOneBits(min(~(~vec3<u32>(0u, u_input.b.x, u_input.b.x)), select(vec3<u32>(1u, 4294967295u, 2772u), u_input.b >> (u_input.b % vec3<u32>(32u)), vec3<bool>(var_0.x, false, false)))), arg_0.b.a).e;
    global4 = i32(-1i) * -12083i;
    global2 = u_input.b.x;
    let var_2 = func_2(~u_input.b, -29794i < u_input.a).e;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1263f - _wgslsmith_f_op_f32(-876f - _wgslsmith_f_op_f32(var_1.b.x - var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(181f))))), arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 32>();
    var var_0 = 1u | u_input.b.x;
    var var_1 = u_input.c;
    let var_2 = firstLeadingBit(u_input.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(true, vec2<i32>(var_2, var_2)), Struct_1(false, vec2<i32>(1i, 6941i))), Struct_3(vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 32u)], false), vec3<f32>(832f, -1267f, -735f), Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], vec2<i32>(var_2, -5969i)), Struct_1(global1[_wgslsmith_index_u32(11072u, 32u)], vec2<i32>(-35653i, -13007i))), Struct_2(Struct_1(true, vec2<i32>(-7970i, var_2)), Struct_1(false, vec2<i32>(6384i, -21209i)))))), _wgslsmith_f_op_f32(f32(-1f) * -1039f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2451f * _wgslsmith_f_op_f32(1262f + 1481f)))));
    let x = u_input.a;
    s_output = StorageBuffer((~min(vec4<i32>(-53097i, u_input.a, 0i, var_2), vec4<i32>(-1i, 25803i, u_input.a, u_input.a)) & _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, -47009i, u_input.a, -2147483647i)), -vec4<i32>(u_input.a, 1i, 1i, var_2))) & select(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, var_2, u_input.a), vec4<i32>(var_2, -1i, 1i, var_2)) & _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 0i, 4354i, -30981i), vec4<i32>(var_2, u_input.a, -11897i, u_input.a)), select(select(vec4<i32>(u_input.a, var_2, -2147483647i, -2147483647i), vec4<i32>(1i, u_input.a, -14434i, var_2), vec4<bool>(global1[_wgslsmith_index_u32(56298u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(67938u, 32u)])), vec4<i32>(-27186i, 2147483647i, var_2, var_2), false), func_2(firstLeadingBit(vec3<u32>(u_input.c, 1u, u_input.b.x)), true).e.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1541f, var_3.x, -649f, var_3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(205f, -662f, var_3.x, var_3.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(343f, 706f, var_3.x, 573f)))))), vec4<f32>(-962f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.x)) * _wgslsmith_f_op_f32(f32(-1f) * -714f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2090f, var_3.x) * -157f), var_3.x)), var_3.x));
}

