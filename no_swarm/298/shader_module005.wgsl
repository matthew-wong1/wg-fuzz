struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: Struct_3,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 5>;

var<private> global2: vec2<f32>;

var<private> global3: Struct_1 = Struct_1(true);

var<private> global4: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(4294967295u, Struct_1(true), vec2<i32>(0i, i32(-2147483648))), -48191i, -14056i, vec4<i32>(-61308i, -2582i, 10319i, 1i)), Struct_3(Struct_2(4294967295u, Struct_1(true), vec2<i32>(-19123i, -1i)), -1i, -17023i, vec4<i32>(-19089i, -41352i, 15325i, 2147483647i)), Struct_3(Struct_2(0u, Struct_1(false), vec2<i32>(20460i, 35415i)), 2147483647i, 2147483647i, vec4<i32>(29196i, 2147483647i, -2273i, -1i)), Struct_3(Struct_2(15635u, Struct_1(true), vec2<i32>(19251i, 3804i)), -12863i, 75554i, vec4<i32>(2147483647i, 27648i, -64916i, -9467i)), Struct_3(Struct_2(20488u, Struct_1(false), vec2<i32>(17588i, i32(-2147483648))), 2147483647i, 2147483647i, vec4<i32>(-1i, 2147483647i, 46970i, 2147483647i)), Struct_3(Struct_2(0u, Struct_1(false), vec2<i32>(i32(-2147483648), 0i)), 29489i, -25069i, vec4<i32>(-1i, 30314i, -6988i, i32(-2147483648))), Struct_3(Struct_2(146803u, Struct_1(true), vec2<i32>(i32(-2147483648), 2147483647i)), 15640i, 1i, vec4<i32>(-9010i, 39321i, -20650i, 32961i)), Struct_3(Struct_2(39781u, Struct_1(false), vec2<i32>(-6297i, 2147483647i)), -46784i, -60819i, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -24379i)), Struct_3(Struct_2(45776u, Struct_1(false), vec2<i32>(0i, -1i)), -70287i, 1i, vec4<i32>(-19115i, -25567i, -1i, 1i)), Struct_3(Struct_2(4294967295u, Struct_1(false), vec2<i32>(1i, 33672i)), -6398i, 37683i, vec4<i32>(-1i, -73248i, -1i, 41291i)), Struct_3(Struct_2(1u, Struct_1(false), vec2<i32>(-1i, 2147483647i)), 46136i, 0i, vec4<i32>(-1i, i32(-2147483648), 48319i, 0i)), Struct_3(Struct_2(4294967295u, Struct_1(true), vec2<i32>(-1115i, -15964i)), -1i, i32(-2147483648), vec4<i32>(2147483647i, 0i, 0i, -1i)), Struct_3(Struct_2(89599u, Struct_1(true), vec2<i32>(5015i, 63141i)), 9922i, -1252i, vec4<i32>(-1i, -1i, -11587i, i32(-2147483648))), Struct_3(Struct_2(77513u, Struct_1(false), vec2<i32>(-24476i, 1i)), i32(-2147483648), -44573i, vec4<i32>(-26013i, 1i, 26455i, i32(-2147483648))), Struct_3(Struct_2(1u, Struct_1(true), vec2<i32>(-25032i, i32(-2147483648))), 0i, -1i, vec4<i32>(2147483647i, 2147483647i, -29430i, -20580i)), Struct_3(Struct_2(1u, Struct_1(false), vec2<i32>(22541i, -290i)), i32(-2147483648), -13104i, vec4<i32>(-1i, -71842i, i32(-2147483648), 2147483647i)), Struct_3(Struct_2(39084u, Struct_1(false), vec2<i32>(45492i, -21002i)), 5790i, i32(-2147483648), vec4<i32>(-7804i, -1i, 0i, 1i)), Struct_3(Struct_2(1u, Struct_1(false), vec2<i32>(2147483647i, -47705i)), -1i, 25818i, vec4<i32>(0i, 1i, -7864i, 8778i)), Struct_3(Struct_2(32687u, Struct_1(true), vec2<i32>(-41722i, -1i)), -1i, -10719i, vec4<i32>(-27842i, 13508i, 13152i, -51581i)), Struct_3(Struct_2(76987u, Struct_1(true), vec2<i32>(9643i, -69637i)), i32(-2147483648), 2147483647i, vec4<i32>(-1i, 1i, i32(-2147483648), i32(-2147483648))), Struct_3(Struct_2(1u, Struct_1(true), vec2<i32>(12921i, -1i)), -1i, 11629i, vec4<i32>(-6254i, i32(-2147483648), -28510i, 19663i)), Struct_3(Struct_2(12800u, Struct_1(true), vec2<i32>(-11953i, -1i)), -8110i, i32(-2147483648), vec4<i32>(39666i, 1i, 16399i, 1i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    global1 = array<Struct_4, 5>();
    var var_0 = ~u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1155f), -1813f, -600f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, global2.x, 732f, -329f), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, 346f), vec4<f32>(1056f, 152f, global2.x, global2.x))))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -1570f))))))), global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-872f * -1660f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(665f + _wgslsmith_f_op_f32(sign(1000f))))))));
    global0 = Struct_1(global3.a);
    return !(!vec2<bool>((u_input.c.x == 9433i) & all(vec3<bool>(global0.a, global0.a, global3.a)), global3.a));
}

fn func_1() -> u32 {
    global0 = Struct_1(global3.a);
    let var_0 = !select(!(!func_2(u_input.c.wwz)), !vec2<bool>(any(vec4<bool>(global0.a, global3.a, global0.a, global3.a)), global3.a), global0.a & !global3.a);
    let var_1 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1112f)))), global2.x);
    let var_2 = Struct_1(any(!vec4<bool>(var_0.x, u_input.b.x < u_input.b.x, true, false)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(var_1)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -835f, _wgslsmith_f_op_f32(1048f - -908f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(-3094f, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, var_1.x, 787f))))))));
    return u_input.b.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    global0 = arg_1.a.b;
    let var_0 = global1[_wgslsmith_index_u32(abs(u_input.b.x), 5u)];
    let var_1 = abs(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(min(arg_2.d.xwy, vec3<i32>(var_0.e, var_0.c.d.x, -31960i)), u_input.c.wzy), ~countOneBits(vec3<i32>(-14036i, arg_1.d.x, var_0.e)) & countOneBits(~u_input.c.yzw)));
    var var_2 = 1u;
    var var_3 = Struct_1(!(-1478f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + -246f), 799f))));
    return countOneBits(1u);
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> bool {
    var var_0 = all(vec2<bool>(func_2(vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, 2147483647i, arg_0.x)).x, 0u > u_input.b.x));
    var_0 = true;
    var var_1 = select(~min(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1, 1u, 0u, 1u), vec4<u32>(1u, u_input.b.x, 1u, arg_1) ^ vec4<u32>(77347u, 0u, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(arg_1, arg_1, arg_1, 4294967295u), vec4<u32>(arg_1, 39415u, 1u, arg_1)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 6379u, 0u, arg_1), vec4<u32>(arg_1, arg_1, 4294967295u, arg_1)))), ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(134364u, 22561u, u_input.b.x, 2865u), vec4<u32>(16464u, 4294967295u, 19157u, 22701u) | vec4<u32>(u_input.b.x, 56751u, u_input.b.x, 8570u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(958f)) * _wgslsmith_f_op_f32(global2.x - 1573f))) >= global2.x);
    global0 = Struct_1(any(vec4<bool>(!global3.a | (global0.a && false), global0.a && false, any(vec2<bool>(global0.a, true)), !(global3.a && true))));
    var var_2 = arg_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 22>();
    let var_0 = -1404f;
    var var_1 = Struct_2((_wgslsmith_mod_u32(0u, countOneBits(u_input.b.x)) >> (~(2241u << (u_input.b.x % 32u)) % 32u)) ^ func_1(), Struct_1(func_4(countOneBits(vec4<i32>(u_input.a, u_input.c.x, 20545i, u_input.a)), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, global2.x, global2.x, global2.x) - vec4<f32>(858f, var_0, var_0, 192f)), Struct_3(Struct_2(u_input.b.x, Struct_1(global0.a), vec2<i32>(0i, 74646i)), u_input.c.x, u_input.a, u_input.c), Struct_3(Struct_2(170923u, Struct_1(global0.a), u_input.c.yy), -1i, 35999i, u_input.c)))), vec2<i32>(u_input.c.x, ~u_input.a));
    let var_2 = ~abs(abs(max(vec4<u32>(48427u, u_input.b.x, u_input.b.x, 71000u), vec4<u32>(u_input.b.x, var_1.a, 29142u, 35268u))));
    let var_3 = u_input.a;
    let var_4 = Struct_1(all(select(select(select(vec3<bool>(global0.a, var_1.b.a, true), vec3<bool>(var_1.b.a, false, var_1.b.a), true), vec3<bool>(var_1.b.a, global3.a, false), select(vec3<bool>(false, true, var_1.b.a), vec3<bool>(true, false, false), vec3<bool>(global3.a, true, true))), !select(vec3<bool>(global0.a, false, false), vec3<bool>(global0.a, false, false), vec3<bool>(var_1.b.a, global3.a, global3.a)), vec3<bool>(true, global0.a, true))));
    var var_5 = var_1.c.x;
    global3 = var_4;
    var var_6 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a | ~u_input.c.x, var_1.c.x >> (~1u % 32u), 12710i & (-14204i ^ ~var_1.c.x)), -(~u_input.c.xww << (abs(~vec3<u32>(var_2.x, 1u, var_2.x)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-608f, _wgslsmith_f_op_f32(-239f + 540f), _wgslsmith_f_op_f32(select(-1810f, global2.x, true)), _wgslsmith_f_op_f32(round(-167f))))), reverseBits(var_2.x));
}

