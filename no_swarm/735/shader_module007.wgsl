struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec4<u32>(88844u, 40032u, 47413u, 0u), -19110i, vec4<i32>(14778i, 95771i, -46541i, 1i)), false), Struct_2(Struct_1(vec4<u32>(46180u, 77681u, 1u, 3179u), -3683i, vec4<i32>(1i, 47072i, -68216i, 93506i)), false), Struct_2(Struct_1(vec4<u32>(10605u, 70916u, 4294967295u, 1u), 30167i, vec4<i32>(57783i, 13363i, 1i, -30083i)), false), Struct_2(Struct_1(vec4<u32>(0u, 0u, 28395u, 0u), 2147483647i, vec4<i32>(-1i, -5815i, 1i, 0i)), false), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 64114u, 87963u), i32(-2147483648), vec4<i32>(0i, 43611i, 44369i, 8645i)), false), Struct_2(Struct_1(vec4<u32>(4294967295u, 22267u, 26527u, 1u), 2147483647i, vec4<i32>(-32543i, i32(-2147483648), 69864i, -26642i)), false), Struct_2(Struct_1(vec4<u32>(48603u, 0u, 81822u, 1u), 58710i, vec4<i32>(27012i, -1i, i32(-2147483648), -77541i)), false), Struct_2(Struct_1(vec4<u32>(4294967295u, 15665u, 36153u, 0u), 17681i, vec4<i32>(i32(-2147483648), -2065i, 56514i, -26539i)), false), Struct_2(Struct_1(vec4<u32>(4294967295u, 60437u, 58979u, 1u), -38467i, vec4<i32>(-1i, 6283i, -24948i, i32(-2147483648))), false), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), 0i, vec4<i32>(2147483647i, 7687i, 9698i, 8158i)), true), Struct_2(Struct_1(vec4<u32>(24550u, 4294967295u, 53617u, 2098u), -23150i, vec4<i32>(-44674i, i32(-2147483648), -1i, 0i)), true), Struct_2(Struct_1(vec4<u32>(0u, 2091u, 49239u, 37653u), -14008i, vec4<i32>(-1i, 0i, i32(-2147483648), -85628i)), true), Struct_2(Struct_1(vec4<u32>(0u, 23482u, 64506u, 26171u), 1i, vec4<i32>(-8347i, 13803i, -1i, 15535i)), true), Struct_2(Struct_1(vec4<u32>(86038u, 53005u, 61198u, 97428u), i32(-2147483648), vec4<i32>(-1i, 13083i, 19014i, 41452i)), false), Struct_2(Struct_1(vec4<u32>(63450u, 50870u, 1u, 133301u), -1i, vec4<i32>(2147483647i, 15928i, 2147483647i, 10109i)), true), Struct_2(Struct_1(vec4<u32>(11322u, 1u, 1u, 1u), i32(-2147483648), vec4<i32>(-1i, i32(-2147483648), 27754i, 54084i)), false), Struct_2(Struct_1(vec4<u32>(60558u, 1u, 60871u, 48165u), 37760i, vec4<i32>(47646i, -13570i, 3743i, 6639i)), false), Struct_2(Struct_1(vec4<u32>(4294967295u, 34796u, 0u, 35395u), 1i, vec4<i32>(i32(-2147483648), i32(-2147483648), 2034i, -57710i)), true), Struct_2(Struct_1(vec4<u32>(1u, 0u, 4294967295u, 91165u), 27459i, vec4<i32>(0i, -1i, 1i, 24095i)), false), Struct_2(Struct_1(vec4<u32>(0u, 33023u, 146101u, 71880u), i32(-2147483648), vec4<i32>(0i, 4763i, 43352i, 2463i)), true), Struct_2(Struct_1(vec4<u32>(32205u, 0u, 0u, 4294967295u), -573i, vec4<i32>(-13556i, 9518i, 36348i, 0i)), false), Struct_2(Struct_1(vec4<u32>(68505u, 0u, 1u, 59205u), 38790i, vec4<i32>(-23407i, -1i, 12660i, 0i)), true));

var<private> global2: Struct_3;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(25888u, 40027u, 23925u, 1u), 0i, vec4<i32>(1i, 0i, 1i, 0i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_1(vec4<u32>(19808u, _wgslsmith_dot_vec2_u32(max(~vec2<u32>(global3.a.x, 1u), global3.a.zy << (vec2<u32>(39606u, arg_1.a.a.x) % vec2<u32>(32u))), global3.a.ww), arg_1.a.a.x, _wgslsmith_add_u32(~(~arg_1.a.a.x), 4294967295u)), 24396i, global2.c.a.c & abs(arg_1.a.c));
    var var_1 = abs(~(~var_0.a.xz));
    var var_2 = min(countOneBits(countOneBits(vec4<i32>(-2147483647i, 0i, arg_1.a.b, global3.b))), vec4<i32>(i32(-1i) * -1i, 0i, _wgslsmith_div_i32(2147483647i, global3.b), ~global3.c.x ^ firstTrailingBit(var_0.c.x))) ^ _wgslsmith_clamp_vec4_i32(arg_1.a.c, var_0.c, vec4<i32>(firstLeadingBit(global3.b), _wgslsmith_add_i32(2942i, -2147483647i), var_0.b, arg_1.a.c.x));
    var var_3 = global2.b.x;
    var var_4 = min(vec2<u32>(select(~arg_1.a.a.x, ~20567u, true) | ~arg_1.a.a.x, ~4294967295u), global3.a.ww ^ global2.c.a.a.ww);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-733f)), global2.b.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) + _wgslsmith_f_op_f32(trunc(global2.b.x))), 1f))));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = global2.c.a.b;
    let var_1 = global2.c.a;
    let var_2 = abs(_wgslsmith_add_vec2_u32(global3.a.xz, firstLeadingBit(vec2<u32>(max(global3.a.x, 47139u), 4294967295u))));
    global2 = Struct_3(vec4<u32>(select(global2.d, var_2.x, global2.c.b) ^ 1u, 3280u, var_2.x, u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, global2.b.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, global2.b.x))) + vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, false, true), Struct_2(Struct_1(vec4<u32>(0u, global2.d, u_input.a, 0u), global3.c.x, var_1.c), global2.c.b), vec3<bool>(false, false, global2.c.b))), _wgslsmith_f_op_f32(-global2.b.x)))), Struct_2(Struct_1(reverseBits(firstLeadingBit(vec4<u32>(u_input.a, global2.d, 4294967295u, 4294967295u))), arg_0, _wgslsmith_mult_vec4_i32(select(global3.c, global3.c, true), vec4<i32>(global2.c.a.c.x, var_1.c.x, global2.c.a.b, global3.b) >> (vec4<u32>(4294967295u, global3.a.x, 0u, 0u) % vec4<u32>(32u)))), any(vec2<bool>(true, true))), _wgslsmith_add_u32(89122u, max(~_wgslsmith_mod_u32(4294967295u, var_2.x), _wgslsmith_mod_u32(~var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, global3.a.x), vec2<u32>(4294967295u, 4294967295u))))));
    var var_3 = Struct_2(global2.c.a, global2.c.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 362f, _wgslsmith_f_op_f32(global2.b.x * global2.b.x))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(363f, 1948f, global2.b.x) * vec3<f32>(global2.b.x, 1266f, global2.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1297f, global2.b.x, -1041f) * vec3<f32>(-809f, 680f, global2.b.x)))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_3(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(~global3.a.x, ~0u, ~4294967295u, 1u), abs(global2.c.a.a) | ~vec4<u32>(88057u, arg_0.d, 1u, arg_1.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-271f, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.xz, global0[_wgslsmith_index_u32(4294967295u, 32u)]))) * _wgslsmith_f_op_vec3_f32(func_2(-(global3.c.x & global3.b))).xx), global2.c, _wgslsmith_dot_vec2_u32(~(~(~global2.c.a.a.xx)), vec2<u32>(~reverseBits(74150u), abs(_wgslsmith_add_u32(global2.c.a.a.x, 0u)))));
    let var_1 = arg_0;
    let var_2 = vec4<u32>(4294967295u ^ ~arg_1.a.x, ~u_input.a & ~firstTrailingBit(~global3.a.x), u_input.a, max(~4294967295u, global2.d));
    global3 = arg_0.c.a;
    var var_3 = Struct_1(arg_0.a, select(var_0.c.a.b, global3.c.x, !(global2.c.b && (global2.c.a.b > -57268i))), -firstLeadingBit(vec4<i32>(i32(-1i) * -3617i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.c.a.b), vec2<i32>(1i, arg_1.b)), firstLeadingBit(-1i), ~1i)));
    return Struct_3(arg_1.a | arg_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(282f, var_1.b.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, var_0.b.x)))))), Struct_2(arg_0.c.a, !select(37369u > var_3.a.x, var_1.c.b, true)), global2.a.x);
}

fn func_5(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = func_4(arg_0, Struct_1(vec4<u32>(~43651u, 4294967295u, global2.c.a.a.x, global3.a.x), 0i, vec4<i32>(-1i) * -vec4<i32>(15989i, global3.b, -15559i, global2.c.a.c.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(438f, -366f, global2.b.x) * vec3<f32>(global2.b.x, -1780f, 2405f))) + vec3<f32>(1f, global2.b.x, 459f)))));
    var var_1 = func_4(arg_0, func_4(arg_0, func_4(arg_0, func_4(Struct_3(global2.c.a.a, global0[_wgslsmith_index_u32(global3.a.x, 32u)], Struct_2(Struct_1(vec4<u32>(var_0.a.x, 42865u, 26166u, 55354u), 55178i, vec4<i32>(global3.b, arg_0.c.a.b, -1i, 2147483647i)), false), 15579u), func_4(arg_0, var_0.c.a, vec3<f32>(-510f, 507f, global2.b.x)).c.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-136f, global2.b.x, var_0.b.x) - vec3<f32>(678f, 522f, global2.b.x))).c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-806f, 881f, 869f)))).c.a, vec3<f32>(-921f, _wgslsmith_f_op_f32(f32(-1f) * -1202f), _wgslsmith_div_f32(global2.b.x, func_4(arg_0, global2.c.a, vec3<f32>(-1000f, global2.b.x, -2482f)).b.x))).c.a, vec3<f32>(1000f, arg_0.b.x, _wgslsmith_f_op_f32(func_4(func_4(arg_0, var_0.c.a, vec3<f32>(-2019f, arg_0.b.x, -592f)), var_0.c.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-285f, -1449f, global2.b.x) * vec3<f32>(global2.b.x, 1527f, -388f))).b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -299f) + _wgslsmith_f_op_f32(global2.b.x - var_0.b.x))))).c.b;
    var var_2 = false | global2.c.b;
    let var_3 = !(!any(select(!vec4<bool>(global2.c.b, var_0.c.b, global2.c.b, global2.c.b), select(vec4<bool>(true, global2.c.b, true, var_0.c.b), vec4<bool>(false, false, true, global2.c.b), false), 28123u > u_input.a)));
    let var_4 = ~81359u;
    return vec3<bool>(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b.x, 293f)) * 241f) == -1283f, any(vec3<bool>(false, true, true)), true), arg_0.c.b, true);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(~global3.a.x, 13967u, ~global2.c.a.a.x)) << (u_input.a % 32u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(74935u, 67796u), ~global2.c.a.a.x, global3.a.x, global2.d)), vec4<u32>(1u, 1u, abs(48043u), 1u)));
    let var_1 = global2.c.a;
    var var_2 = func_5(func_4(Struct_3(vec4<u32>(52096u, ~u_input.a, 0u, u_input.a ^ u_input.a), vec2<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(trunc(294f))), Struct_2(Struct_1(vec4<u32>(4294967295u, global2.a.x, 0u, var_1.a.x), -1i, vec4<i32>(-11983i, var_1.b, var_1.b, -32185i)), global3.a.x == u_input.a), ~_wgslsmith_add_u32(0u, global3.a.x)), Struct_1(var_1.a, global3.c.x, firstTrailingBit(vec4<i32>(-5226i, global2.c.a.b, 0i, 2147483647i))), _wgslsmith_f_op_vec3_f32(func_2(-20443i))));
    global3 = global2.c.a;
    let var_3 = select(!vec4<bool>(all(vec3<bool>(true, var_2.x, global2.c.b)), select(var_2.x, var_1.a.x <= 14865u, global2.c.b & true), var_2.x, true), !(!select(select(vec4<bool>(true, global2.c.b, true, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_2.x, global2.c.b, false, global2.c.b)), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, global2.c.b, var_2.x, false))), select(vec4<bool>(all(vec4<bool>(true, true, var_2.x, var_2.x)), _wgslsmith_div_f32(global2.b.x, 246f) < _wgslsmith_f_op_f32(global2.b.x + global2.b.x), (0u ^ global3.a.x) > _wgslsmith_clamp_u32(var_1.a.x, 24703u, global3.a.x), true), !select(!vec4<bool>(var_2.x, true, false, var_2.x), !vec4<bool>(global2.c.b, true, global2.c.b, true), !vec4<bool>(false, true, global2.c.b, global2.c.b)), select(vec4<bool>(!var_2.x, var_2.x, true, true), !vec4<bool>(var_2.x, var_2.x, var_2.x, true), !global2.c.b)));
    return Struct_3(global2.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.b.x, global2.b.x), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(global2.a.x, 32u)])))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x + global2.b.x) * _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(step(global2.b.x, _wgslsmith_f_op_f32(round(global2.b.x)))))), global2.c, ~(~func_4(func_4(Struct_3(vec4<u32>(global3.a.x, 1u, global2.d, 0u), vec2<f32>(global2.b.x, global2.b.x), Struct_2(Struct_1(vec4<u32>(var_1.a.x, u_input.a, 20288u, var_1.a.x), -1i, vec4<i32>(-2147483647i, global3.b, -2147483647i, -7698i)), true), global2.d), global2.c.a, vec3<f32>(-809f, -2725f, global2.b.x)), Struct_1(global3.a, var_1.b, vec4<i32>(var_1.b, 0i, -3655i, 7797i)), _wgslsmith_f_op_vec3_f32(func_2(-42150i))).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global2.d, _wgslsmith_dot_vec3_u32(global2.a.zyz, global2.c.a.a.zzx)), _wgslsmith_mult_u32(~global2.d, 30787u), u_input.a, global2.a.x ^ (u_input.a >> (global3.a.x % 32u))), global2.a, _wgslsmith_mult_vec4_u32(firstLeadingBit(~global2.a), vec4<u32>(u_input.a, global3.a.x, 102014u, 21201u) | vec4<u32>(0u, 0u, 4294967295u, 70u))), global2.c.a.b, (vec4<i32>(-1i) * -global2.c.a.c) & vec4<i32>(-(global3.c.x << (57384u % 32u)), global3.b, abs(-global2.c.a.c.x), 0i));
    global1 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.a.a.x, 4555u, global2.c.a.a.x, u_input.a), vec4<u32>(0u, 4294967295u, global2.a.x, u_input.a)), 1u), global2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.x, global3.a.x), vec2<u32>(u_input.a, u_input.a))), ~global2.a.zyz);
    global2 = func_1();
    global3 = global2.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, -global2.c.a.c.x, ~(~max(global3.c.x, 0i)), -global3.c.x), -2147483647i);
}

