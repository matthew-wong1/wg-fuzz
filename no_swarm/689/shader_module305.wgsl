struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, true, true, true, false, true, false);

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec3<u32>(98341u, 60060u, 1u), 1u, Struct_1(vec2<i32>(-27734i, 11410i), vec3<u32>(63823u, 45u, 38878u), -88786i, 10533u), true, 1141f), Struct_2(vec3<u32>(26165u, 4294967295u, 50472u), 6753u, Struct_1(vec2<i32>(-28125i, 31084i), vec3<u32>(63272u, 1u, 48018u), -1i, 72848u), true, 778f), Struct_2(vec3<u32>(52375u, 0u, 55u), 4294967295u, Struct_1(vec2<i32>(0i, 2147483647i), vec3<u32>(0u, 3830u, 49472u), -1i, 816u), true, -1485f), Struct_2(vec3<u32>(66878u, 7778u, 2170u), 34638u, Struct_1(vec2<i32>(-10097i, 39298i), vec3<u32>(32492u, 4294967295u, 1u), i32(-2147483648), 0u), true, -983f), Struct_2(vec3<u32>(0u, 47039u, 4294967295u), 0u, Struct_1(vec2<i32>(13594i, 15544i), vec3<u32>(55634u, 32976u, 43316u), 19586i, 0u), true, -1295f), Struct_2(vec3<u32>(1u, 57381u, 0u), 35096u, Struct_1(vec2<i32>(66586i, -57701i), vec3<u32>(42767u, 0u, 32146u), 3571i, 0u), true, -1632f), Struct_2(vec3<u32>(75982u, 27224u, 22933u), 5538u, Struct_1(vec2<i32>(1i, -1i), vec3<u32>(4294967295u, 40315u, 1u), 4911i, 45098u), false, 651f), Struct_2(vec3<u32>(31234u, 1u, 8664u), 0u, Struct_1(vec2<i32>(i32(-2147483648), -3555i), vec3<u32>(1558u, 34257u, 98023u), -1164i, 41888u), false, -554f), Struct_2(vec3<u32>(4294967295u, 54429u, 4294967295u), 57822u, Struct_1(vec2<i32>(-67635i, 17803i), vec3<u32>(49499u, 22309u, 0u), 68862i, 0u), false, -1000f), Struct_2(vec3<u32>(45356u, 9232u, 0u), 35549u, Struct_1(vec2<i32>(-730i, -55804i), vec3<u32>(0u, 23406u, 61029u), 23446i, 1u), true, 915f), Struct_2(vec3<u32>(4294967295u, 1u, 24480u), 98458u, Struct_1(vec2<i32>(-12612i, 2147483647i), vec3<u32>(1u, 1u, 0u), 2147483647i, 29741u), false, 595f), Struct_2(vec3<u32>(4294967295u, 4294967295u, 111165u), 5678u, Struct_1(vec2<i32>(i32(-2147483648), -3436i), vec3<u32>(78891u, 1u, 35481u), 2147483647i, 3105u), true, -745f), Struct_2(vec3<u32>(0u, 23867u, 16403u), 0u, Struct_1(vec2<i32>(14891i, -34777i), vec3<u32>(40141u, 21362u, 0u), -1i, 1u), true, 740f), Struct_2(vec3<u32>(29167u, 39109u, 26541u), 1u, Struct_1(vec2<i32>(1i, i32(-2147483648)), vec3<u32>(0u, 4294967295u, 31481u), 30658i, 67434u), false, -519f), Struct_2(vec3<u32>(4294967295u, 61285u, 110267u), 61126u, Struct_1(vec2<i32>(i32(-2147483648), 0i), vec3<u32>(5606u, 8823u, 36819u), 0i, 28012u), true, -925f), Struct_2(vec3<u32>(49382u, 13024u, 28895u), 4294967295u, Struct_1(vec2<i32>(0i, 0i), vec3<u32>(18546u, 0u, 4294967295u), -30046i, 4294967295u), true, -864f), Struct_2(vec3<u32>(0u, 1u, 76477u), 2527u, Struct_1(vec2<i32>(39244i, -6673i), vec3<u32>(32972u, 0u, 128808u), -49336i, 1u), false, -200f), Struct_2(vec3<u32>(9824u, 9605u, 56036u), 29091u, Struct_1(vec2<i32>(-2850i, 18458i), vec3<u32>(41197u, 4294967295u, 1u), i32(-2147483648), 4294967295u), false, 865f), Struct_2(vec3<u32>(15689u, 49802u, 1u), 47340u, Struct_1(vec2<i32>(-5001i, -1i), vec3<u32>(98773u, 4294967295u, 1u), 12253i, 11263u), false, -2509f), Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), 19267u, Struct_1(vec2<i32>(-47099i, 3511i), vec3<u32>(10565u, 60174u, 98286u), -1i, 105013u), true, -1149f), Struct_2(vec3<u32>(32572u, 140149u, 1u), 30550u, Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<u32>(20031u, 1u, 50831u), -76673i, 0u), true, -1848f), Struct_2(vec3<u32>(4294967295u, 4294967295u, 1u), 7050u, Struct_1(vec2<i32>(2147483647i, 1i), vec3<u32>(4294967295u, 1u, 10143u), 1i, 0u), true, 1496f), Struct_2(vec3<u32>(4294967295u, 35778u, 1u), 63761u, Struct_1(vec2<i32>(1i, -1i), vec3<u32>(0u, 1u, 1u), -27655i, 4294967295u), false, 1580f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_u32(arg_0.x, firstTrailingBit(~u_input.a.x));
    let var_1 = ~vec3<u32>(~arg_0.x >> (_wgslsmith_mod_u32(select(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(2531u, 7u)]), ~u_input.a.x) % 32u), abs(max(~arg_0.x, 1u)), abs(u_input.a.x));
    var var_2 = min(abs(_wgslsmith_div_i32(-abs(u_input.c.x), ~arg_1)), countOneBits(_wgslsmith_sub_i32(2509i & arg_1, abs(~u_input.c.x))));
    global0 = array<bool, 7>();
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(ceil(arg_2)) >= _wgslsmith_f_op_f32(min(arg_2, arg_2)), any(vec2<bool>(global0[_wgslsmith_index_u32(min(global1.x, 1u), 7u)], all(vec3<bool>(global0[_wgslsmith_index_u32(15875u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true)))), global0[_wgslsmith_index_u32(u_input.a.x, 7u)], any(vec2<bool>(true, true)));
    return var_1;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(~_wgslsmith_add_vec2_i32(u_input.b.zx, u_input.c.ww), _wgslsmith_sub_vec3_u32(func_3(~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(13112u, 15790u)), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(669f, -109f))), ~_wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(global1.x, global1.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, 4294967295u, 1u))), _wgslsmith_mult_i32(-(-u_input.b.x | abs(20773i)), -u_input.c.x), global1.x << (~_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 83473u), ~26959u) % 32u));
    let var_1 = _wgslsmith_clamp_u32(~var_0.b.x, ~var_0.b.x, ~(~countOneBits(countOneBits(global1.x))));
    global0 = array<bool, 7>();
    var var_2 = var_0;
    global2 = array<Struct_2, 23>();
    return Struct_2(_wgslsmith_sub_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x), ~var_0.b)), _wgslsmith_div_vec3_u32(var_0.b, abs(_wgslsmith_mod_vec3_u32(var_2.b, var_0.b)))), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, ~var_0.d), var_1), Struct_1(max(select(u_input.c.yw, vec2<i32>(1i, var_0.a.x), vec2<bool>(global0[_wgslsmith_index_u32(11617u, 7u)], global0[_wgslsmith_index_u32(var_1, 7u)])), abs(var_2.a)) << (min(~vec2<u32>(var_1, var_0.d), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), var_0.b, -(~63545i), var_1), all(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_1, 7u)]))) || global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, u_input.a.x, u_input.a.x), ~vec3<u32>(31112u, var_0.d, 0u))), 7u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-447f + -243f))))));
}

fn func_1() -> Struct_1 {
    var var_0 = abs(_wgslsmith_div_vec3_i32(countOneBits(~vec3<i32>(8871i, u_input.b.x, 67669i)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, 0u, global1.x), ~vec3<u32>(22840u, u_input.a.x, 12500u)) % vec3<u32>(32u)), firstTrailingBit(max(u_input.b, u_input.c.xxy)) << (~(~vec3<u32>(u_input.a.x, u_input.a.x, 0u)) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.a, (~vec2<u32>(u_input.a.x, u_input.a.x) & global1.xy) & (vec2<u32>(global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(95534u, u_input.a.x, 10305u), vec3<u32>(global1.x, 4294967295u, global1.x))) & vec2<u32>(4294967295u >> (u_input.a.x % 32u), 15264u >> (global1.x % 32u))));
    let var_2 = func_2();
    var var_3 = Struct_2(var_2.c.b, 35794u, var_2.c, !global0[_wgslsmith_index_u32(u_input.a.x, 7u)], var_2.e);
    var_1 = 1u;
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)))) + 1378f);
    var var_1 = Struct_2((~abs(vec3<u32>(70396u, u_input.a.x, u_input.a.x)) ^ (~vec3<u32>(0u, u_input.a.x, 4294967295u) & ~vec3<u32>(9282u, u_input.a.x, u_input.a.x))) ^ vec3<u32>(~global1.x >> (~global1.x % 32u), ~(~86248u), firstLeadingBit(u_input.a.x)), countOneBits(u_input.a.x), Struct_1(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.c.x, 16732i), min(u_input.c.yx, u_input.c.yw) ^ -u_input.c.yz), ~(~vec3<u32>(46259u, 38575u, 7445u)), u_input.b.x, (abs(u_input.a.x) ^ abs(0u)) << (reverseBits(~4294967295u) % 32u)), !select(true, !global0[_wgslsmith_index_u32(1u, 7u)], u_input.c.x < -5309i) != global0[_wgslsmith_index_u32(u_input.a.x, 7u)], _wgslsmith_f_op_f32(max(-1118f, _wgslsmith_f_op_f32(-309f + _wgslsmith_f_op_f32(f32(-1f) * -1064f)))));
    var_1 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(u_input.a.x) >> (~u_input.a.x % 32u), _wgslsmith_div_u32(reverseBits(u_input.a.x), global1.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(35178u, 42585u, 4294967295u, 1u), vec4<u32>(var_1.b, global1.x, u_input.a.x, u_input.a.x))), countOneBits(vec3<u32>(~u_input.a.x, 54444u, 20127u))), u_input.a.x, func_1(), !any(!select(vec3<bool>(true, false, var_1.d), vec3<bool>(var_1.d, var_1.d, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) - _wgslsmith_f_op_f32(-546f * 597f)))));
    let var_2 = func_2();
    let var_3 = var_2;
    let var_4 = 13527i;
    global1 = abs(var_3.a);
    var var_5 = vec4<bool>(var_1.d, _wgslsmith_f_op_f32(-762f - var_1.e) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(955f))))), any(select(!select(vec2<bool>(var_1.d, true), vec2<bool>(false, var_3.d), var_2.d), vec2<bool>(var_3.d, select(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(2422u, 7u)], false)), vec2<bool>(true, true))), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(func_2().e)), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.e), -995f) + func_2().e) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(187f, var_3.e)), 220f)), abs(min(vec3<i32>(var_2.c.c, -42679i, var_2.c.a.x), ~vec3<i32>(99769i, 16960i, -1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(var_2.e - _wgslsmith_f_op_f32(max(var_1.e, var_3.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3.e)), -1611f), _wgslsmith_f_op_f32(-var_3.e)) + vec4<f32>(var_1.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(117f * -651f), _wgslsmith_f_op_f32(138f + var_1.e))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.e))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(648f, -485f))))));
}

