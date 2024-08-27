struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1532f, -518f) + _wgslsmith_f_op_f32(max(224f, -943f))), _wgslsmith_f_op_f32(-177f * -953f), true)), 289f, 198f), u_input.a.x);
}

fn func_1() -> vec3<u32> {
    let var_0 = select(true, true, !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)));
    global0 = true;
    let var_1 = Struct_3(all(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, true, true), true)), !vec4<bool>(var_0, true, false, var_0 || all(vec4<bool>(false, false, false, true))), ~(~u_input.b ^ (i32(-1i) * -u_input.a.x)), u_input.c.wz);
    var var_2 = func_2();
    let var_3 = !vec4<bool>(var_1.a, true, true, ~u_input.d.x <= u_input.d.x);
    return vec3<u32>(u_input.d.x, ~1u, ~_wgslsmith_mult_u32(u_input.d.x, 78707u));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<u32>) -> Struct_4 {
    var var_0 = abs(~countOneBits(vec3<i32>(-23489i, arg_2, -arg_2)));
    let var_1 = ~var_0.x;
    let var_2 = firstTrailingBit(arg_3);
    var_0 = select(-_wgslsmith_sub_vec3_i32(firstLeadingBit(select(u_input.a, vec3<i32>(0i, 45126i, var_1), vec3<bool>(false, arg_0, true))), u_input.a), vec3<i32>(-19832i, -_wgslsmith_div_i32(-16306i, var_1), 1i), select(!(!(!vec3<bool>(arg_0, arg_0, true))), vec3<bool>(all(!vec4<bool>(true, false, arg_0, false)), any(!vec4<bool>(false, arg_0, arg_0, arg_0)), arg_0 & (true & arg_0)), select(select(!vec3<bool>(arg_0, false, false), !vec3<bool>(true, arg_0, arg_0), arg_0), vec3<bool>(!arg_0, true, select(false, arg_0, arg_0)), !arg_0)));
    let var_3 = Struct_5(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~(~0u), abs(abs(arg_3.x))), var_2.x >> (var_2.x % 32u)), vec3<i32>(-13392i, u_input.b, ~arg_2), !arg_0, !(!(!vec2<bool>(arg_0, arg_0))));
    return Struct_4(arg_1, arg_1, var_1);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_5 {
    var var_0 = vec2<bool>(_wgslsmith_div_u32(1u | firstTrailingBit(5160u), _wgslsmith_div_u32(~0u, 4294967295u)) > ~(abs(u_input.d.x) >> (0u % 32u)), all(select(select(vec4<bool>(true, true, true, arg_3.b), select(vec4<bool>(false, true, arg_3.b, true), vec4<bool>(arg_1.b, true, arg_1.b, true), vec4<bool>(true, false, true, arg_3.b)), false), !vec4<bool>(arg_1.b, arg_3.b, true, true), !vec4<bool>(true, false, true, arg_3.b))));
    global0 = !(!var_0.x);
    global0 = all(vec2<bool>(false, any(select(vec3<bool>(arg_3.b, true, true), vec3<bool>(arg_3.b, arg_3.b, arg_1.b), !vec3<bool>(arg_1.b, arg_1.b, true)))));
    var_0 = !select(vec2<bool>(var_0.x, !arg_3.b), vec2<bool>(!any(vec3<bool>(false, var_0.x, true)), !any(vec2<bool>(arg_1.b, var_0.x))), vec2<bool>(!arg_3.b, !any(vec4<bool>(true, true, false, true))));
    var var_1 = Struct_2(~arg_3.d.a, u_input.c.x <= 0i, Struct_1(-arg_1.d.a), Struct_1(arg_1.d.a << (select(~vec4<u32>(u_input.d.x, u_input.d.x, arg_2, arg_2), vec4<u32>(u_input.d.x, arg_2, u_input.d.x, 0u), select(vec4<bool>(arg_3.b, arg_1.b, false, arg_1.b), vec4<bool>(arg_1.b, false, arg_1.b, var_0.x), false)) % vec4<u32>(32u))), Struct_1(arg_1.c.a));
    return Struct_5(arg_2, -u_input.c.wxy & arg_1.e.a.xzw, true, select(vec2<bool>(!(44092i > arg_3.c.a.x), all(select(vec3<bool>(true, false, arg_3.b), vec3<bool>(var_1.b, arg_3.b, arg_3.b), vec3<bool>(false, false, var_0.x)))), select(select(vec2<bool>(true, var_0.x), select(vec2<bool>(var_1.b, true), vec2<bool>(arg_3.b, arg_1.b), vec2<bool>(false, true)), true), !select(vec2<bool>(true, arg_3.b), vec2<bool>(false, var_1.b), vec2<bool>(arg_1.b, var_0.x)), true), vec2<bool>(any(!vec3<bool>(true, arg_1.b, false)), all(select(vec3<bool>(arg_1.b, arg_3.b, false), vec3<bool>(var_1.b, var_1.b, true), var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_4(func_3(!(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 41056u), vec2<u32>(52342u, 1u)) >= 1u), vec3<f32>(_wgslsmith_f_op_f32(select(-451f, _wgslsmith_f_op_f32(floor(-1491f)), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1176f) - 1042f), _wgslsmith_f_op_f32(min(571f, _wgslsmith_f_op_f32(-621f + 1854f)))), ~(i32(-1i) * -2147483647i), func_1()), Struct_2(vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(-1i, 31408i), reverseBits(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c.x), vec2<i32>(u_input.b, 0i))) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x), vec4<u32>(u_input.d.x, 18413u, u_input.d.x, u_input.d.x)), vec4<u32>(4294967295u, 6998u, 8700u, 4294967295u) >> (vec4<u32>(u_input.d.x, 0u, 69979u, u_input.d.x) % vec4<u32>(32u)), vec4<bool>(true, true, true, var_0)) % vec4<u32>(32u)), !(!var_0), Struct_1(countOneBits(max(u_input.c, vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, 0i)))), Struct_1(_wgslsmith_mult_vec4_i32(u_input.c, -u_input.c)), Struct_1(-vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, 2147483647i))), u_input.d.x << (1u % 32u), Struct_2(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-2147483647i, ~u_input.b, u_input.c.x, min(-2147483647i, u_input.b))), var_0, Struct_1(u_input.c), Struct_1(u_input.c), Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, 13423i), vec3<i32>(7857i, u_input.a.x, -5496i)), _wgslsmith_sub_i32(u_input.c.x, 2147483647i), min(8820i, 12771i), u_input.a.x << (0u % 32u)))));
    let var_2 = Struct_2(-firstTrailingBit(vec4<i32>(22398i, -45404i ^ var_1.b.x, var_1.b.x & -6358i, select(9670i, 0i, true))), !(!(!(!var_1.c))), Struct_1(~max(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-1423i, 2147483647i, 60595i, 1i)), u_input.c | vec4<i32>(1i, 40969i, 89675i, var_1.b.x))), Struct_1(vec4<i32>(7798i, ~_wgslsmith_div_i32(var_1.b.x, 44602i), var_1.b.x, -var_1.b.x)), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-84916i, _wgslsmith_clamp_i32(u_input.b, var_1.b.x, 1i), ~var_1.b.x, func_4(Struct_4(vec3<f32>(-544f, -977f, 958f), vec3<f32>(1080f, 2254f, 986f), var_1.b.x), Struct_2(u_input.c, false, Struct_1(vec4<i32>(var_1.b.x, -2979i, 1i, u_input.a.x)), Struct_1(u_input.c), Struct_1(vec4<i32>(u_input.a.x, -263i, u_input.a.x, -1025i))), u_input.d.x, Struct_2(vec4<i32>(var_1.b.x, u_input.c.x, u_input.a.x, -33817i), true, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, var_1.b.x)), Struct_1(u_input.c), Struct_1(vec4<i32>(u_input.a.x, var_1.b.x, 25440i, var_1.b.x)))).b.x), abs(u_input.c | vec4<i32>(var_1.b.x, -2147483647i, -2147483647i, 2147483647i)))));
    var var_3 = vec3<bool>(func_4(Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-809f, -1302f, 926f) + vec3<f32>(1000f, 292f, -1806f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-477f, -408f, 286f) - vec3<f32>(1181f, 1831f, -648f))), vec3<f32>(_wgslsmith_f_op_f32(-163f * -1000f), -1439f, _wgslsmith_f_op_f32(ceil(-578f))), func_4(func_3(var_1.d.x, vec3<f32>(1044f, 755f, -1284f), 2147483647i, vec3<u32>(u_input.d.x, 1u, var_1.a)), var_2, 4763u, var_2).b.x), Struct_2(vec4<i32>(-2147483647i, select(-1i, var_1.b.x, var_1.c), -u_input.c.x, u_input.c.x), var_0, var_2.c, var_2.d, Struct_1(select(var_2.d.a, var_2.c.a, false))), _wgslsmith_mod_u32(func_4(func_3(false, vec3<f32>(-170f, 943f, 428f), var_1.b.x, vec3<u32>(1u, var_1.a, var_1.a)), Struct_2(u_input.c, var_2.b, Struct_1(vec4<i32>(-37231i, 2147483647i, u_input.b, u_input.b)), var_2.e, Struct_1(vec4<i32>(var_2.d.a.x, var_1.b.x, -60536i, -1i))), _wgslsmith_div_u32(41745u, var_1.a), Struct_2(vec4<i32>(var_1.b.x, 65534i, u_input.c.x, 0i), var_2.b, Struct_1(var_2.d.a), var_2.e, var_2.c)).a, 0u), Struct_2(-var_2.a, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(var_0, false, true, var_0))), Struct_1(vec4<i32>(u_input.a.x, var_2.d.a.x, -43760i, var_2.c.a.x)), Struct_1(u_input.c & vec4<i32>(var_2.d.a.x, u_input.c.x, var_1.b.x, var_2.a.x)), Struct_1(vec4<i32>(var_2.a.x, u_input.a.x, 20840i, var_1.b.x)))).d.x, false, all(vec3<bool>(var_2.b, true, true)));
    var var_4 = Struct_3(select(false, false, var_0), !(!select(!vec4<bool>(true, var_3.x, true, var_0), vec4<bool>(var_0, false, false, var_0), var_2.b)), 0i, vec2<i32>(_wgslsmith_div_i32(countOneBits(-1i), _wgslsmith_div_i32(6962i, -1i)), i32(-1i) * -2147483647i));
    var_4 = Struct_3(0i > ~u_input.c.x, var_4.b, func_2().c, vec2<i32>(var_2.d.a.x, var_1.b.x));
    let var_5 = ~_wgslsmith_sub_vec4_u32(select(min(vec4<u32>(39410u, var_1.a, u_input.d.x, 0u) & vec4<u32>(u_input.d.x, 0u, 21165u, u_input.d.x), ~vec4<u32>(u_input.d.x, u_input.d.x, 113945u, var_1.a)), vec4<u32>(_wgslsmith_add_u32(var_1.a, var_1.a), 58158u, min(var_1.a, u_input.d.x), 12952u), var_0), select(vec4<u32>(40531u, 0u, func_1().x, ~22617u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, var_1.a, u_input.d.x), vec4<u32>(4294967295u, 1u, 67922u, 81509u)), var_4.b));
    var var_6 = func_4(func_2(), var_2, ~0u, var_2).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(countOneBits(func_4(Struct_4(vec3<f32>(-802f, -1000f, -1401f), vec3<f32>(1100f, -234f, 172f), 0i), Struct_2(u_input.c, var_3.x, var_2.c, var_2.d, var_2.d), 4294967295u, Struct_2(var_2.e.a, false, Struct_1(vec4<i32>(var_2.e.a.x, -2147483647i, var_4.d.x, -2147483647i)), Struct_1(u_input.c), Struct_1(u_input.c))).b), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, var_4.c) >> (vec3<u32>(0u, 89686u, var_5.x) % vec3<u32>(32u)), var_2.c.a.zzx)), vec3<u32>(var_5.x, var_1.a, 46293u) << (firstTrailingBit(vec3<u32>(abs(var_1.a), _wgslsmith_div_u32(var_5.x, 0u), _wgslsmith_div_u32(u_input.d.x, 28131u))) % vec3<u32>(32u)), 1u << (_wgslsmith_dot_vec4_u32(var_5 << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 54465u, 4294967295u), var_5) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(var_5, var_5), firstTrailingBit(var_5))) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f)));
}

