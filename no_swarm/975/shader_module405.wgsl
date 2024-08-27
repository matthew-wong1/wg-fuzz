struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(201f, 894f, 202f, -1067f));

var<private> global2: array<vec2<bool>, 19>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> vec3<i32> {
    global2 = array<vec2<bool>, 19>();
    let var_0 = abs(abs(i32(-1i) * -_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)));
    let var_1 = Struct_1(vec4<bool>(false, true && (abs(var_0) < u_input.b.x), true, !any(vec3<bool>(true, false, false)) && false), select(vec4<bool>(-2147483647i != (u_input.b.x << (u_input.a % 32u)), _wgslsmith_f_op_f32(arg_0.x - -403f) == _wgslsmith_f_op_f32(-147f - arg_0.x), true, !(u_input.c == u_input.c)), vec4<bool>(_wgslsmith_f_op_f32(-arg_0.x) != 404f, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), select(false, true, false) | true, u_input.c == ~u_input.a), select(vec4<bool>(420f > arg_0.x, any(vec4<bool>(true, false, false, false)), any(vec4<bool>(false, false, false, false)), true), vec4<bool>(true, any(vec3<bool>(true, true, false)), false, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1285f)) - arg_0.x));
    global0 = array<Struct_3, 17>();
    var var_2 = Struct_2(-vec4<i32>(u_input.b.x, min(var_0 ^ -17087i, -19464i), ~max(u_input.b.x, -2147483647i), abs(var_0 & -1i)), var_1, var_1, var_1.a.zz, _wgslsmith_clamp_u32(~(~u_input.c << (1u % 32u)), ~(~(u_input.a | u_input.c)), 72566u));
    return ~(~vec3<i32>(var_0, countOneBits(reverseBits(2147483647i)), firstLeadingBit(1i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = select(func_3(_wgslsmith_f_op_vec4_f32(arg_3.d * vec4<f32>(-2223f, _wgslsmith_f_op_f32(ceil(-343f)), arg_2.c.c, 589f))), firstTrailingBit(u_input.b) & _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.a.x, u_input.b.x, u_input.b.x) ^ arg_2.a.xzw, ~vec3<i32>(u_input.b.x, -13711i, -70590i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -1i, arg_2.a.x), vec3<i32>(-21703i, -17043i, u_input.b.x))), vec3<bool>(arg_1.x, !all(!vec4<bool>(arg_1.x, true, true, false)), !any(select(arg_2.c.a, vec4<bool>(arg_0.x, true, false, false), arg_1.x))));
    var var_1 = arg_2.a;
    var var_2 = ~_wgslsmith_div_i32(var_0.x, -var_0.x);
    var var_3 = abs(-27572i);
    var var_4 = vec3<i32>(-var_1.x, reverseBits(u_input.b.x), _wgslsmith_mult_i32(1i, var_1.x) | 2147483647i) >> (reverseBits(~(~select(vec3<u32>(0u, arg_3.c, arg_3.b), vec3<u32>(0u, arg_2.e, arg_2.e), arg_2.b.b.x))) % vec3<u32>(32u));
    return arg_2.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = vec2<f32>(func_2(vec4<bool>(arg_1.b.x, (u_input.b.x & u_input.b.x) >= u_input.b.x, true, false), !global2[_wgslsmith_index_u32(u_input.c, 19u)], Struct_2(abs(-vec4<i32>(u_input.b.x, -31658i, -1i, u_input.b.x)), Struct_1(vec4<bool>(false, arg_1.a.x, true, arg_1.b.x), !arg_1.b, _wgslsmith_f_op_f32(-388f - arg_0)), Struct_1(func_2(vec4<bool>(true, false, true, arg_1.a.x), vec2<bool>(arg_1.a.x, true), Struct_2(vec4<i32>(u_input.b.x, 27202i, -1i, 2147483647i), arg_1, Struct_1(vec4<bool>(arg_1.b.x, arg_1.a.x, false, true), arg_1.b, -1764f), arg_1.b.zw, u_input.a), global0[_wgslsmith_index_u32(u_input.c, 17u)]).b, arg_1.b, arg_0), arg_1.a.xz, 4294967295u), global0[_wgslsmith_index_u32(u_input.c, 17u)]).c, _wgslsmith_f_op_f32(min(1317f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c))))));
    let var_1 = 25271u ^ ~firstTrailingBit(18745u);
    var var_2 = max(_wgslsmith_mod_vec2_u32(vec2<u32>(14134u, ~(~u_input.a)), max(~vec2<u32>(var_1, 0u), ~vec2<u32>(0u, 51955u)) >> (vec2<u32>(u_input.c >> (var_1 % 32u), ~55555u) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(52011u, 29090u), vec2<u32>(u_input.c, u_input.a))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 4140u), abs(vec2<u32>(var_1, 1u))))));
    global0 = array<Struct_3, 17>();
    var var_3 = u_input.b.x;
    return select(!select(!select(vec4<bool>(arg_1.a.x, true, false, arg_1.a.x), vec4<bool>(false, arg_1.a.x, arg_1.b.x, false), vec4<bool>(arg_1.a.x, false, arg_1.a.x, true)), !select(vec4<bool>(true, false, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.b.x, true, true), true), true), !vec4<bool>(arg_1.b.x, any(vec3<bool>(true, false, true)), arg_1.a.x, arg_1.b.x), arg_1.b.x);
}

fn func_1() -> Struct_1 {
    var var_0 = abs(i32(-1i) * -50078i);
    let var_1 = true;
    var var_2 = -(~(~u_input.b));
    var var_3 = Struct_2(vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, var_2.x), Struct_1(!func_4(_wgslsmith_f_op_f32(ceil(-1882f)), func_2(vec4<bool>(true, false, var_1, false), vec2<bool>(var_1, true), Struct_2(vec4<i32>(13496i, -1i, var_2.x, 0i), Struct_1(vec4<bool>(var_1, true, false, var_1), vec4<bool>(true, true, var_1, false), -1039f), Struct_1(vec4<bool>(true, false, var_1, true), vec4<bool>(false, false, var_1, true), 1308f), global2[_wgslsmith_index_u32(15211u, 19u)], u_input.c), Struct_3(vec2<f32>(-636f, -289f), 57723u, 0u, global1[_wgslsmith_index_u32(u_input.c, 1u)])), _wgslsmith_f_op_f32(f32(-1f) * -2072f)), func_2(select(func_2(vec4<bool>(var_1, var_1, true, true), vec2<bool>(var_1, true), Struct_2(vec4<i32>(u_input.b.x, var_2.x, 1i, var_2.x), Struct_1(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(false, true, var_1, false), -1056f), Struct_1(vec4<bool>(false, true, true, var_1), vec4<bool>(false, false, false, var_1), -1589f), global2[_wgslsmith_index_u32(u_input.c, 19u)], u_input.c), global0[_wgslsmith_index_u32(u_input.c, 17u)]).a, !vec4<bool>(var_1, true, var_1, var_1), all(vec2<bool>(var_1, var_1))), !global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 19u)], Struct_2(vec4<i32>(-1i, var_2.x, -27832i, 10874i) >> (vec4<u32>(57303u, u_input.a, u_input.a, 74367u) % vec4<u32>(32u)), func_2(vec4<bool>(true, var_1, var_1, var_1), global2[_wgslsmith_index_u32(4294967295u, 19u)], Struct_2(vec4<i32>(var_2.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec4<bool>(true, false, true, var_1), vec4<bool>(false, false, var_1, true), 509f), Struct_1(vec4<bool>(var_1, true, var_1, true), vec4<bool>(true, false, var_1, true), 419f), global2[_wgslsmith_index_u32(0u, 19u)], 0u), Struct_3(vec2<f32>(952f, 1691f), u_input.a, u_input.c, vec4<f32>(-377f, 1019f, 834f, -1121f))), Struct_1(vec4<bool>(var_1, false, var_1, true), vec4<bool>(var_1, var_1, var_1, var_1), 265f), !global2[_wgslsmith_index_u32(u_input.a, 19u)], 1u), Struct_3(vec2<f32>(-1000f, 636f), 0u >> (u_input.c % 32u), 21706u, vec4<f32>(407f, 1080f, -2397f, 1248f))).a, 1176f), Struct_1(select(func_4(621f, Struct_1(vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, true), -769f), 819f), !vec4<bool>(var_1, var_1, true, false), u_input.c == _wgslsmith_div_u32(u_input.c, u_input.a)), !select(vec4<bool>(true, var_1, true, false), func_4(981f, Struct_1(vec4<bool>(true, var_1, var_1, true), vec4<bool>(var_1, var_1, true, false), -981f), -1413f), var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1456f, 841f)), _wgslsmith_f_op_f32(-660f + -1330f))))), func_4(-1883f, Struct_1(func_4(2475f, Struct_1(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, false, var_1), -2153f), -367f), vec4<bool>(var_1, all(global2[_wgslsmith_index_u32(45603u, 19u)]), any(vec3<bool>(true, var_1, var_1)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-814f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1031f))).xz, min(_wgslsmith_mod_u32(u_input.a, ~(~53302u)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(34676u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.c)), ~vec4<u32>(1u, 55582u, u_input.c, u_input.a)) ^ ~(~64117u)));
    var var_4 = var_3.c;
    return func_2(vec4<bool>(all(select(select(var_3.c.a, vec4<bool>(var_4.a.x, var_3.b.b.x, var_3.c.b.x, false), vec4<bool>(var_3.c.a.x, var_1, false, var_4.b.x)), !vec4<bool>(true, var_4.a.x, var_3.b.b.x, var_4.a.x), func_2(var_4.b, global2[_wgslsmith_index_u32(u_input.a, 19u)], Struct_2(vec4<i32>(u_input.b.x, 12744i, u_input.b.x, var_3.a.x), Struct_1(var_4.b, var_4.a, -797f), Struct_1(var_3.c.b, vec4<bool>(true, true, true, var_3.b.a.x), var_4.c), vec2<bool>(var_3.c.b.x, var_4.b.x), 18380u), global0[_wgslsmith_index_u32(227u, 17u)]).a)), !(!all(var_3.b.b)), 13513u != _wgslsmith_mod_u32(var_3.e >> (13656u % 32u), var_3.e), false), var_3.c.b.wy, Struct_2(vec4<i32>(u_input.b.x, var_2.x, u_input.b.x, var_3.a.x), func_2(vec4<bool>(!var_3.b.b.x, func_4(var_4.c, Struct_1(var_4.b, vec4<bool>(false, var_1, var_1, var_3.d.x), -1000f), var_4.c).x, var_1, var_3.a.x <= var_2.x), vec2<bool>(u_input.c != var_3.e, true), Struct_2(var_3.a, func_2(vec4<bool>(var_4.b.x, false, false, false), vec2<bool>(var_3.c.a.x, false), Struct_2(vec4<i32>(-2147483647i, 22358i, var_3.a.x, -42042i), var_3.c, var_3.b, var_4.b.xx, 0u), global0[_wgslsmith_index_u32(12495u, 17u)]), Struct_1(vec4<bool>(var_4.a.x, var_3.d.x, var_3.d.x, var_3.c.b.x), var_3.b.a, -2127f), !vec2<bool>(var_4.b.x, var_3.b.a.x), _wgslsmith_div_u32(u_input.a, 123093u)), global0[_wgslsmith_index_u32(4294967295u, 17u)]), Struct_1(var_3.c.a, func_2(!var_3.c.b, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.e, u_input.a, var_3.e, u_input.c), vec4<u32>(1u, 13u, var_3.e, u_input.a)), 19u)], Struct_2(vec4<i32>(0i, -2147483647i, -102050i, 28036i), Struct_1(var_3.c.b, vec4<bool>(var_3.b.b.x, false, false, false), 1161f), Struct_1(var_3.b.b, vec4<bool>(false, false, false, true), var_3.b.c), vec2<bool>(false, false), var_3.e), global0[_wgslsmith_index_u32(34643u, 17u)]).b, _wgslsmith_f_op_f32(f32(-1f) * -1710f)), select(!global2[_wgslsmith_index_u32(~u_input.c, 19u)], vec2<bool>(var_3.d.x, var_4.b.x || var_1), func_4(_wgslsmith_f_op_f32(-2633f * 457f), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(var_3.c.b.x, var_4.a.x, var_4.a.x, true), 298f), _wgslsmith_f_op_f32(-var_3.b.c)).x), 9320u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(max(vec2<u32>(0u, u_input.a), vec2<u32>(67238u, u_input.c)), vec2<u32>(1u, var_3.e)), vec2<u32>(var_3.e, _wgslsmith_mod_u32(u_input.a, u_input.c))), abs(~4294967295u)), 17u)]);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f - _wgslsmith_f_op_f32(ceil(arg_0.c))))));
    var var_1 = global0[_wgslsmith_index_u32(23771u, 17u)];
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(~max(reverseBits(4294967295u), abs(u_input.a)), _wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, 28846u, 3714u)), ~vec3<u32>(0u, 53663u, 28675u)), _wgslsmith_add_u32(arg_1, arg_1) | 41824u), var_1.b | _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(var_1.c, var_1.c)), abs(vec2<u32>(43867u, var_1.b))))), 17u)];
    var var_3 = 230f;
    var var_4 = var_1.d.x;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(var_2.d))))))), select(select(vec4<i32>(u_input.b.x, 54586i, u_input.b.x, u_input.b.x) << (vec4<u32>(var_2.b, 7353u, 1u, u_input.a) % vec4<u32>(32u)), -vec4<i32>(60935i, u_input.b.x, -21180i, -9449i), true), firstTrailingBit(~vec4<i32>(-13755i, 0i, u_input.b.x, 1i)), !(!vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x))) | vec4<i32>(_wgslsmith_mult_i32(29714i, 53162i), abs(u_input.b.x) << (~u_input.a % 32u), _wgslsmith_div_i32(-u_input.b.x, _wgslsmith_div_i32(-1i, u_input.b.x)), select(_wgslsmith_div_i32(-2147483647i, 1i), ~(-50322i), all(global2[_wgslsmith_index_u32(15311u, 19u)]))), firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, var_1.b), vec4<u32>(u_input.c, arg_1, 4294967295u, u_input.a), vec4<u32>(0u, 1u, arg_1, var_1.b)) | vec4<u32>(var_2.b, ~u_input.a, 41773u, _wgslsmith_div_u32(arg_1, var_2.b))), 57529u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(-(~u_input.b.x)), 1i), 38983i ^ u_input.b.x, -abs(_wgslsmith_sub_i32(u_input.b.x << (u_input.c % 32u), abs(-7440i))));
    global1 = array<vec4<f32>, 1>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), u_input.a, ~firstTrailingBit(0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~0u, 1u)])));
    global1 = array<vec4<f32>, 1>();
    let var_3 = reverseBits(countOneBits(vec3<u32>(reverseBits(var_2.c), ~u_input.c, ~u_input.a)) << (reverseBits(vec3<u32>(min(var_2.c, u_input.c), 27219u << (u_input.a % 32u), ~40861u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = func_5(func_1(), var_2.b);
}

