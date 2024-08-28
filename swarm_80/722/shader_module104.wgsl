struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: array<vec2<f32>, 32>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true, vec3<i32>(-33259i, i32(-2147483648), -12802i), 4294967295u, vec2<bool>(true, true), 1981f), Struct_1(true, vec3<i32>(-19182i, 0i, -1i), 4294967295u, vec2<bool>(false, true), 116f), Struct_1(true, vec3<i32>(0i, 39786i, -1424i), 4294967295u, vec2<bool>(true, true), -583f), Struct_1(true, vec3<i32>(16092i, 51874i, -20823i), 11621u, vec2<bool>(false, true), 1290f), Struct_1(false, vec3<i32>(46417i, -14249i, i32(-2147483648)), 0u, vec2<bool>(true, true), -843f), Struct_1(false, vec3<i32>(-59205i, -12800i, -13928i), 4294967295u, vec2<bool>(false, false), -276f), Struct_1(false, vec3<i32>(2147483647i, -66239i, -1i), 12650u, vec2<bool>(false, false), 482f), Struct_1(false, vec3<i32>(-24392i, 5510i, -33354i), 44695u, vec2<bool>(true, false), -2098f), Struct_1(true, vec3<i32>(0i, i32(-2147483648), -57206i), 34039u, vec2<bool>(true, false), -302f), Struct_1(false, vec3<i32>(70975i, -28744i, 58638i), 30748u, vec2<bool>(true, false), 323f), Struct_1(true, vec3<i32>(-134i, 24561i, -1i), 4294967295u, vec2<bool>(false, false), -526f), Struct_1(true, vec3<i32>(0i, i32(-2147483648), -1i), 22375u, vec2<bool>(true, true), -1675f), Struct_1(false, vec3<i32>(-23775i, 5853i, 1i), 0u, vec2<bool>(true, false), -1579f), Struct_1(true, vec3<i32>(29099i, 15705i, 1i), 1u, vec2<bool>(true, false), -1083f), Struct_1(false, vec3<i32>(-326i, 0i, 15912i), 0u, vec2<bool>(true, true), 503f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = all(!arg_1.d);
    global0 = array<Struct_2, 30>();
    return ~(-(~vec3<i32>(arg_1.b.x, arg_1.b.x, arg_0.b.x) << (_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(66188u, arg_0.c, arg_0.c)), vec3<u32>(29298u, u_input.a, 1u), vec3<u32>(arg_0.c, 25436u, 1u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_2, 30>();
    let var_0 = arg_1.b.yx;
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_2 = Struct_2(var_1.a, Struct_1(any(var_1.d), max(_wgslsmith_add_vec3_i32(-vec3<i32>(arg_2.b.x, 1i, var_0.x), -vec3<i32>(27379i, 1i, -2147483647i)), -vec3<i32>(arg_2.b.x, -66182i, 2147483647i) >> ((vec3<u32>(1u, arg_2.c, u_input.b) >> (vec3<u32>(4294967295u, 52998u, 35429u) % vec3<u32>(32u))) % vec3<u32>(32u))), arg_1.c, vec2<bool>(!(global2.x | var_1.d.x), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.e)) + -161f) - arg_2.e)), Struct_1(true, -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -1i, 31784i), vec3<i32>(-1i, 28005i, arg_2.b.x)), arg_2.b.x & arg_0, abs(var_1.c.b.x)), u_input.a, select(select(!vec2<bool>(global2.x, false), !vec2<bool>(global2.x, true), !var_1.b.d), !select(vec2<bool>(false, var_1.d.x), vec2<bool>(arg_1.a, false), vec2<bool>(true, global2.x)), false || any(vec3<bool>(arg_1.a, arg_1.d.x, false))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.e, _wgslsmith_f_op_f32(step(arg_1.e, arg_1.e))), -228f)), select(select(vec4<bool>(global2.x, arg_1.a, all(vec2<bool>(true, global2.x)), select(true, arg_1.a, false)), vec4<bool>(true, 19304u > arg_2.c, true, arg_1.a), select(var_1.d, vec4<bool>(true, false, global2.x, false), select(vec4<bool>(true, global2.x, false, false), vec4<bool>(false, arg_2.d.x, false, true), arg_2.a))), vec4<bool>((arg_0 ^ var_0.x) != -var_0.x, _wgslsmith_sub_u32(arg_1.c, 50695u) > _wgslsmith_mod_u32(arg_1.c, arg_2.c), (0i < arg_2.b.x) == true, _wgslsmith_mult_i32(39692i, var_0.x) <= firstTrailingBit(-19390i)), select(any(var_1.e), false, reverseBits(arg_1.c) > 28445u)), vec3<bool>(arg_1.d.x, true, !((true | var_1.e.x) || false)));
    let var_3 = ~(~_wgslsmith_div_u32(0u << (1u % 32u), var_1.c.c));
    return ~1i;
}

fn func_2(arg_0: u32) -> vec2<u32> {
    let var_0 = Struct_1(true, ~(-abs(countOneBits(vec3<i32>(2147483647i, 1i, 55803i)))), 1u, !(!select(vec2<bool>(global2.x, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), !global2.x)), _wgslsmith_f_op_f32(-1f));
    let var_1 = global0[_wgslsmith_index_u32(~(~(reverseBits(4294967295u << (u_input.a % 32u)) >> (~_wgslsmith_div_u32(35906u, var_0.c) % 32u))), 30u)];
    var var_2 = vec3<i32>(abs(func_4(var_0.b.x, Struct_1(false, func_3(Struct_1(true, vec3<i32>(var_1.c.b.x, var_1.b.b.x, 0i), 65064u, global2.zy, 418f), Struct_1(global2.x, vec3<i32>(var_0.b.x, 0i, 47719i), arg_0, global2.xz, var_1.c.e)), arg_0, var_1.b.d, _wgslsmith_f_op_f32(-var_0.e)), var_1.c)), 30492i, 10828i);
    return ~(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, 4294967295u), select(arg_0, 22810u, true)), 14242u) ^ _wgslsmith_add_vec2_u32(select(countOneBits(vec2<u32>(44153u, arg_0)), min(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 12349u)), vec2<bool>(true, global2.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(52344u, var_0.c), firstTrailingBit(vec2<u32>(var_0.c, arg_0)))));
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 30u)];
    global3 = array<Struct_1, 15>();
    var var_1 = true;
    var var_2 = reverseBits(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(79791u, 53924u)) << (func_2(_wgslsmith_sub_u32(4061u, 0u)) % vec2<u32>(32u)), ~(~firstTrailingBit(vec2<u32>(31867u, 1762u))), vec2<u32>(_wgslsmith_mod_u32(var_0.b.c & 1u, u_input.c), 54953u | var_0.b.c)));
    global1 = array<vec2<f32>, 32>();
    return var_0.c;
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = 0u;
    var var_1 = _wgslsmith_add_vec2_u32(~(vec2<u32>(486u, 11510u << (1u % 32u)) << (~vec2<u32>(arg_0.c, 4294967295u) % vec2<u32>(32u))), ~(abs(vec2<u32>(1u, arg_0.c) & vec2<u32>(u_input.b, 56862u)) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, var_0), vec3<u32>(arg_0.c, 1u, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 15128u), vec3<u32>(u_input.b, 1u, 0u)))));
    var var_2 = select(-(~vec4<i32>(-59982i, 1i, _wgslsmith_div_i32(1i, arg_0.b.x), 66025i)), -max(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.b.x, -835i, 20841i, 1i), abs(vec4<i32>(arg_0.b.x, 2147483647i, 37594i, arg_0.b.x))), vec4<i32>(_wgslsmith_clamp_i32(arg_0.b.x, 1i, arg_0.b.x), ~0i, arg_0.b.x, ~arg_0.b.x)), !(!select(!vec4<bool>(arg_0.d.x, false, true, false), vec4<bool>(true, arg_0.a, global2.x, true), vec4<bool>(false, global2.x, true, global2.x))));
    let var_3 = (-56008i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i, _wgslsmith_clamp_i32(arg_0.b.x, 13104i, 6977i)), max(~vec2<i32>(31679i, arg_0.b.x), arg_0.b.zz))) == var_2.x;
    var_1 = select(vec2<u32>(arg_0.c, var_1.x), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u) ^ vec2<u32>(var_0, var_1.x), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(1u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(10297u, 41861u), vec2<u32>(var_1.x, 0u), vec2<u32>(arg_0.c, 25389u)))), ~firstLeadingBit(vec2<u32>(54854u, u_input.a))), true);
    return !(!arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.x, vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -48487i, 2147483647i), vec3<i32>(2147483647i, 4118i, 70087i))), 2147483647i, 8183i), ~(_wgslsmith_mod_u32(firstTrailingBit(14771u), _wgslsmith_add_u32(u_input.c, 4294967295u)) >> (32946u % 32u)), select(vec2<bool>(any(vec3<bool>(global2.x, global2.x, true)), true), func_5(func_1()), global2.zx), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1159f, 1400f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1110f + 818f))))));
    let var_1 = 1u;
    var var_2 = global3[_wgslsmith_index_u32(firstLeadingBit(22609u), 15u)];
    let var_3 = func_1();
    global0 = array<Struct_2, 30>();
    var var_4 = var_3;
    let var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(522f, var_3.e)), _wgslsmith_f_op_f32(floor(-904f)), false));
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(493f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - -1529f))))));
}

