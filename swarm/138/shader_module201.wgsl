struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(648f, 2224f, -675f, -598f), vec4<f32>(-1398f, -945f, 1217f, -189f), vec4<f32>(-1000f, 1002f, -315f, 1005f), vec4<f32>(1520f, 494f, -415f, -1367f), vec4<f32>(-902f, -411f, 952f, -115f), vec4<f32>(-2109f, -1129f, -674f, 353f), vec4<f32>(1000f, 229f, -147f, 1000f), vec4<f32>(114f, 615f, -930f, -1000f), vec4<f32>(-1046f, -1250f, -1552f, -1000f), vec4<f32>(-1726f, -255f, 740f, 1000f), vec4<f32>(289f, 2123f, 211f, 884f), vec4<f32>(-131f, -711f, 850f, 2162f), vec4<f32>(-942f, 1432f, -689f, -1000f), vec4<f32>(-314f, -281f, 899f, -923f), vec4<f32>(546f, -119f, 1198f, -465f), vec4<f32>(1050f, -334f, 1066f, -252f), vec4<f32>(-370f, 630f, -615f, 1000f), vec4<f32>(528f, 1000f, -683f, 746f), vec4<f32>(-360f, -729f, 1266f, 462f), vec4<f32>(-1052f, 1437f, -1000f, 701f), vec4<f32>(1044f, 239f, 755f, -115f), vec4<f32>(1107f, 713f, 217f, 958f), vec4<f32>(357f, -149f, -926f, 658f), vec4<f32>(-902f, -447f, -461f, -1000f), vec4<f32>(545f, 1000f, -1000f, -200f), vec4<f32>(498f, -473f, -1128f, -1102f), vec4<f32>(-539f, 513f, 651f, -763f), vec4<f32>(296f, 674f, 178f, -343f));

var<private> global1: Struct_5;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u), true, true, vec3<f32>(-323f, 636f, -1419f), true));

var<private> global3: vec4<i32> = vec4<i32>(-55697i, 1i, i32(-2147483648), 0i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = Struct_4(Struct_3(-_wgslsmith_mult_vec3_i32(u_input.c, select(vec3<i32>(u_input.c.x, global3.x, u_input.c.x), global3.zww, global2.a.e)), !(!(!vec3<bool>(false, true, global2.a.b))), 1u), vec3<f32>(_wgslsmith_f_op_f32(global2.a.d.x + global2.a.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.a.d.x + -3670f), _wgslsmith_f_op_f32(f32(-1f) * -1047f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a.d.x, 1738f)))))), !(all(!vec3<bool>(false, false, global2.a.e)) & global2.a.c), global2.a, Struct_3(select(~u_input.c, _wgslsmith_clamp_vec3_i32(u_input.c >> (vec3<u32>(arg_0, 1u, global1.a.x) % vec3<u32>(32u)), global3.zzy, u_input.c), true), select(vec3<bool>(all(vec2<bool>(false, global2.a.e)), !global2.a.c, all(vec2<bool>(false, false))), !vec3<bool>(global2.a.b, true, global2.a.b), true), global1.a.x));
    global3 = vec4<i32>(1i, -7678i, -_wgslsmith_mod_i32(-global3.x, u_input.c.x), abs(global3.x ^ _wgslsmith_sub_i32(-1i >> (global2.a.a.x % 32u), firstLeadingBit(0i))));
    var var_1 = Struct_5(vec3<u32>(4294967295u, global1.a.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, global1.a.x), 35453u)));
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    return min(reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a.x, u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(var_0.d.a.x, 108744u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, var_0.a.a.x, 9101i, 7343i)), reverseBits(1i), var_0.a.a.x, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(~(-33169i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, var_0.a.a.x), _wgslsmith_clamp_vec2_i32(u_input.c.yz, u_input.c.xz, u_input.c.zx)), _wgslsmith_mult_i32(firstTrailingBit(-9702i), ~0i), global3.x), vec4<i32>(abs(-1i), var_0.a.a.x, ~(~global3.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.a.x, u_input.c.x), vec2<i32>(global3.x, 21843i)))));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    global3 = ~func_3(23289u);
    var var_0 = Struct_3(global3.www << ((vec3<u32>(reverseBits(arg_1.a.a.x), max(global1.a.x, 10559u), u_input.b) | global1.a) % vec3<u32>(32u)), select(select(vec3<bool>(!arg_0, select(true, true, false), select(arg_0, arg_1.a.c, false)), !select(vec3<bool>(global2.a.c, true, true), vec3<bool>(global2.a.c, true, true), vec3<bool>(arg_0, arg_1.a.b, global2.a.b)), !global2.a.e), vec3<bool>(true, true, !arg_0), !vec3<bool>(global2.a.e || arg_0, select(true, global2.a.c, arg_0), any(vec3<bool>(arg_1.a.b, arg_1.a.c, true)))), _wgslsmith_mod_u32(reverseBits(~_wgslsmith_div_u32(4294967295u, arg_1.a.a.x)), 4294967295u >> (~_wgslsmith_mod_u32(4294967295u, global2.a.a.x) % 32u)));
    let var_1 = Struct_3(u_input.c, !(!var_0.b), var_0.c);
    global2 = arg_1;
    let var_2 = select(select(vec4<bool>(true, (612f < global2.a.d.x) | true, true, any(select(vec3<bool>(false, arg_1.a.b, var_0.b.x), var_1.b, true))), !(!(!vec4<bool>(arg_1.a.e, false, var_1.b.x, true))), vec4<bool>(!arg_1.a.b, true, var_0.b.x, global2.a.e)), select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.b.x, false, false, false), true), !select(vec4<bool>(true, true, var_1.b.x, global2.a.b), vec4<bool>(global2.a.b, false, global2.a.b, arg_1.a.b), vec4<bool>(arg_1.a.b, var_0.b.x, arg_1.a.c, true)), false), vec4<bool>(!global2.a.c, false, false, !(!var_0.b.x)), vec4<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(57608u, var_0.c, global2.a.a.x, global1.a.x), vec4<u32>(41647u, var_0.c, u_input.a.x, 34113u)) == abs(9559u), any(vec4<bool>(false, arg_1.a.b, false, false)), select(false, false, true))), !(!vec4<bool>(all(vec2<bool>(var_0.b.x, true)), false, false, false)));
    return Struct_2(global2.a);
}

fn func_1() -> i32 {
    global2 = func_2(!any(vec2<bool>(false, all(vec4<bool>(false, global2.a.b, global2.a.e, true)))), Struct_2(Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, global2.a.a.x, 0u), vec3<u32>(global2.a.a.x, 16985u, u_input.a.x)), ~global2.a.a), true, true, global2.a.d, global2.a.e)));
    var var_0 = func_2(true, Struct_2(global2.a));
    var var_1 = Struct_3(vec3<i32>(global3.x, 68115i, firstLeadingBit(-24247i)), select(vec3<bool>(true, true, (global2.a.d.x >= 1000f) && global2.a.c), select(!(!vec3<bool>(false, var_0.a.c, false)), vec3<bool>(true, true && var_0.a.c, all(vec4<bool>(global2.a.e, true, var_0.a.c, false))), var_0.a.b), !vec3<bool>(true, true, func_2(true, Struct_2(Struct_1(vec3<u32>(14440u, global2.a.a.x, 4294967295u), var_0.a.c, var_0.a.c, vec3<f32>(-1120f, global2.a.d.x, -1741f), false))).a.c)), ~(~((var_0.a.a.x & u_input.b) ^ ~u_input.b)));
    global3 = -(vec4<i32>(1i, -15418i, -1i, ~(-24691i)) << (_wgslsmith_div_vec4_u32(vec4<u32>(~global2.a.a.x, _wgslsmith_add_u32(var_1.c, 1u), ~var_0.a.a.x, 38765u), ~(~vec4<u32>(var_1.c, var_0.a.a.x, 1u, global1.a.x))) % vec4<u32>(32u)));
    global2 = Struct_2(var_0.a);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-27569i, -1i, -(~_wgslsmith_mod_i32(global3.x, var_1.a.x)), -global3.x), select(~vec4<i32>(var_1.a.x, 21804i, 0i, 14927i) << ((vec4<u32>(1u, var_0.a.a.x, global2.a.a.x, global2.a.a.x) & vec4<u32>(1u, var_1.c, 47825u, 40903u)) % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, 2147483647i, 17049i, -22346i)), !vec4<bool>(false, false, false, var_1.b.x)) ^ vec4<i32>(global3.x, var_1.a.x, func_3(max(global2.a.a.x, u_input.b)).x, -var_1.a.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: bool) -> Struct_5 {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(11143u, reverseBits(global1.a.x), global2.a.a.x, _wgslsmith_add_u32(arg_0.c, ~34267u ^ global1.a.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(52580u, arg_0.c, 4294967295u, arg_1.a.c), vec4<u32>(0u, 0u, 54151u, 84376u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(50483u, u_input.b, 81739u, 6574u), vec4<u32>(73725u, 1u, global1.a.x, global2.a.a.x)), countOneBits(vec4<u32>(arg_1.a.c, 1u, arg_0.c, 65828u)), !vec4<bool>(arg_0.b.x, arg_3, global2.a.c, arg_0.b.x))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 19411u, global2.a.a.x, 95483u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global2.a.a.x, global2.a.a.x, 4294967295u), vec4<u32>(arg_0.c, global2.a.a.x, 6926u, 47211u))), min(~vec4<u32>(arg_1.e.c, 4294967295u, arg_0.c, 36850u), vec4<u32>(arg_1.d.a.x, arg_1.d.a.x, 0u, 0u) | vec4<u32>(3752u, 0u, 1u, 6689u)))));
    global0 = array<vec4<f32>, 28>();
    global1 = Struct_5(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(global1.a.x, arg_0.c, global1.a.x)) & vec3<u32>(~global2.a.a.x, arg_0.c, ~20486u), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.d.a.x, 1u, arg_1.d.a.x), ~func_2(global2.a.b, Struct_2(arg_1.d)).a.a)));
    var var_1 = select(~global2.a.a.yy | _wgslsmith_clamp_vec2_u32(~vec2<u32>(2144u, var_0.x) & _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.c, global1.a.x), var_0.xz), ~vec2<u32>(21801u, u_input.b), global2.a.a.yy), vec2<u32>(func_2(global2.a.a.x > arg_0.c, func_2(true || arg_3, func_2(arg_1.c, Struct_2(Struct_1(var_0.xyw, global2.a.e, true, global2.a.d, false))))).a.a.x, ~min(_wgslsmith_mod_u32(var_0.x, 41874u), max(arg_0.c, 39434u))), false);
    let var_2 = ~0u;
    return Struct_5(~(countOneBits(vec3<u32>(arg_1.d.a.x, 4294967295u, 15998u)) >> (((vec3<u32>(1u, 4294967295u, var_1.x) | vec3<u32>(656u, 39780u, var_0.x)) & vec3<u32>(var_0.x, 3169u, 41078u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_3(vec3<i32>(-func_1(), u_input.c.x | u_input.c.x, 0i << (1u % 32u)), vec3<bool>(global2.a.c, any(!vec2<bool>(false, global2.a.e)), false), u_input.b), Struct_4(Struct_3(vec3<i32>(1i, reverseBits(u_input.c.x), _wgslsmith_mult_i32(global3.x, 2147483647i)), !vec3<bool>(global2.a.e, global2.a.b, false), ~_wgslsmith_mult_u32(global2.a.a.x, 14156u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.d), func_2(global2.a.c, Struct_2(global2.a)).a.d), (global2.a.c || func_2(false, Struct_2(Struct_1(vec3<u32>(u_input.a.x, 0u, 0u), global2.a.c, global2.a.b, vec3<f32>(-368f, 488f, global2.a.d.x), global2.a.e))).a.b) || true, global2.a, Struct_3(-vec3<i32>(global3.x, u_input.c.x, u_input.c.x), select(!vec3<bool>(global2.a.e, global2.a.e, false), select(vec3<bool>(true, false, false), vec3<bool>(true, global2.a.e, true), true), select(vec3<bool>(global2.a.b, true, true), vec3<bool>(global2.a.e, false, false), global2.a.b)), _wgslsmith_mod_u32(4754u, 20438u))), (_wgslsmith_add_vec3_i32(~vec3<i32>(global3.x, u_input.c.x, u_input.c.x), reverseBits(global3.wzy)) >> (select(vec3<u32>(global2.a.a.x, u_input.b, global2.a.a.x), _wgslsmith_add_vec3_u32(global1.a, u_input.a), any(vec3<bool>(false, global2.a.e, global2.a.c))) % vec3<u32>(32u))) | reverseBits(vec3<i32>(~(-2147483647i), 1i, -34950i)), all(!vec4<bool>(true, global2.a.b, true, global2.a.b)) | (false && (true & func_2(global2.a.b, Struct_2(Struct_1(global1.a, global2.a.b, global2.a.c, global2.a.d, true))).a.c)));
    let var_0 = reverseBits(func_3(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 45340u, 1u)), abs(~vec3<u32>(global2.a.a.x, global2.a.a.x, u_input.a.x)))).x);
    global3 = firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(select(-vec4<i32>(global3.x, var_0, global3.x, var_0), vec4<i32>(u_input.c.x, -34678i, global3.x, global3.x), select(false, false, true)), vec4<i32>(reverseBits(u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, var_0, u_input.c.x), vec3<i32>(u_input.c.x, -6061i, 1i)), abs(-61464i), _wgslsmith_mod_i32(u_input.c.x, global3.x))), vec4<i32>(-4234i, -max(u_input.c.x, u_input.c.x), -global3.x, func_1())));
    var var_1 = Struct_5(~vec3<u32>(~14363u, 4294967295u, func_2(true, Struct_2(global2.a)).a.a.x));
    global0 = array<vec4<f32>, 28>();
    global1 = Struct_5(global2.a.a >> (~select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, 1u, var_1.a.x), global1.a), u_input.a, vec3<bool>(true, global2.a.b, global2.a.b)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global2.a.d.x, global2.a.d.x), ~(~(vec4<u32>(1u, 1u, global1.a.x, 4294967295u) ^ vec4<u32>(46211u, 4294967295u, 4294967295u, global2.a.a.x))) << (~vec4<u32>(min(u_input.a.x, 11917u), ~4294967295u, 4294967295u, ~var_1.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~(~min(4294967295u, 1u)), 28u)] * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(global2.a.a.x, 28u)]) + vec4<f32>(_wgslsmith_f_op_f32(-662f - global2.a.d.x), -2012f, _wgslsmith_f_op_f32(global2.a.d.x * -1671f), _wgslsmith_f_op_f32(f32(-1f) * -316f)))), -1i);
}

