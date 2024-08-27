struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

var<private> global1: array<vec4<f32>, 26>;

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(4294967295u, vec3<bool>(true, true, false), vec4<i32>(0i, 34195i, i32(-2147483648), 28834i)), Struct_1(4294967295u, vec3<bool>(true, false, false), vec4<i32>(9942i, 0i, 26500i, 1i)), Struct_1(1u, vec3<bool>(true, true, false), vec4<i32>(1i, -14322i, i32(-2147483648), -9417i)), Struct_1(24393u, vec3<bool>(true, true, false), vec4<i32>(i32(-2147483648), -1i, -21028i, i32(-2147483648))), Struct_1(39744u, vec3<bool>(false, false, false), vec4<i32>(1i, 9548i, -1056i, -5654i)), Struct_1(0u, vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), 28635i, 2147483647i, i32(-2147483648))), Struct_1(0u, vec3<bool>(true, false, true), vec4<i32>(-14434i, 1i, 1i, -17297i)), Struct_1(41337u, vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), 44214i, 2147483647i, -30731i)), Struct_1(16189u, vec3<bool>(true, false, true), vec4<i32>(85109i, -10900i, -1i, 0i)), Struct_1(0u, vec3<bool>(false, false, false), vec4<i32>(2147483647i, -1572i, 38620i, 1i)), Struct_1(30989u, vec3<bool>(true, true, false), vec4<i32>(2147483647i, 16544i, i32(-2147483648), 6675i)), Struct_1(5590u, vec3<bool>(false, false, false), vec4<i32>(1i, -5257i, 7583i, i32(-2147483648))));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    global0 = array<vec3<f32>, 16>();
    let var_0 = Struct_4(Struct_3(~(-1i), Struct_2(Struct_1(~u_input.d.x, vec3<bool>(true, true, true), vec4<i32>(0i, u_input.c.x, u_input.e.x, u_input.c.x)), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1201f - -1154f)), ~(vec3<u32>(u_input.a.x, 4294967295u, global2.x) ^ vec3<u32>(14936u, global2.x, 0u)), Struct_1(max(45583u, 46719u), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), abs(vec4<i32>(u_input.e.x, u_input.c.x, u_input.c.x, u_input.e.x)))), true), ~(firstTrailingBit(reverseBits(vec4<u32>(global2.x, 1u, u_input.a.x, global2.x))) >> (firstLeadingBit(~vec4<u32>(7949u, 4294967295u, u_input.b, global2.x)) % vec4<u32>(32u))));
    let var_1 = any(vec2<bool>(any(vec4<bool>(true, var_0.a.b.a.b.x, var_0.a.b.a.b.x, var_0.a.b.a.b.x)) && true, any(vec4<bool>(any(vec4<bool>(true, true, var_0.a.b.e.b.x, var_0.a.c)), false, true, all(var_0.a.b.e.b.yx)))));
    var var_2 = _wgslsmith_mult_i32(-6075i, u_input.e.x);
    let var_3 = select(vec2<bool>(!all(vec4<bool>(var_0.a.c, true, var_0.a.b.a.b.x, false)) && var_0.a.b.a.b.x, countOneBits(_wgslsmith_add_u32(0u, global2.x)) > ~global2.x), var_0.a.b.e.b.zx, !vec2<bool>(var_1, var_0.a.b.c < -2957f));
    return u_input.a.x;
}

fn func_2() -> Struct_4 {
    global2 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.b), firstLeadingBit(4294967295u)), ~(1u | u_input.b)), firstLeadingBit(257u), firstTrailingBit(~3851u), abs(~(global2.x & 10467u)));
    let var_0 = true;
    let var_1 = !var_0;
    var var_2 = Struct_5(Struct_4(Struct_3(u_input.c.x, Struct_2(global3[_wgslsmith_index_u32(15605u, 12u)], -1000f, _wgslsmith_f_op_f32(-1216f * 273f), _wgslsmith_mod_vec3_u32(u_input.a, global2.wwy), global3[_wgslsmith_index_u32(func_3(), 12u)]), any(vec4<bool>(var_0, var_1, true, var_0))), vec4<u32>(0u, ~_wgslsmith_mult_u32(global2.x, 24955u), ~4294967295u, 0u)), Struct_3(u_input.c.x, Struct_2(Struct_1(0u, select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_0, var_0, var_1), true), vec4<i32>(u_input.e.x, u_input.e.x, 0i, 0i)), -723f, _wgslsmith_f_op_f32(sign(1f)), firstTrailingBit(abs(vec3<u32>(4294967295u, 1u, u_input.a.x))), global3[_wgslsmith_index_u32(~u_input.b, 12u)]), var_0 | any(!vec3<bool>(false, var_1, true))));
    var var_3 = min(45865i, -_wgslsmith_dot_vec3_i32(~(-var_2.b.b.a.c.zwx), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.e.x), var_2.a.a.b.e.c.zyy), var_2.b.b.e.c.zyx)));
    return Struct_4(var_2.a.a, _wgslsmith_add_vec4_u32(var_2.a.b, var_2.a.b << (select(vec4<u32>(4098u, 1u, global2.x, var_2.a.a.b.d.x) ^ var_2.a.b, var_2.a.b, false || var_2.b.c) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec3<bool>(!all(!(!vec4<bool>(arg_2, true, arg_2, false))), true, false);
    var var_1 = _wgslsmith_add_vec2_i32(u_input.e, min(u_input.c >> ((~vec2<u32>(u_input.a.x, 18482u) ^ vec2<u32>(57738u, 5649u)) % vec2<u32>(32u)), (arg_3.b.e.c.zw ^ (arg_3.b.a.c.yz & vec2<i32>(1i, arg_3.a))) ^ (func_2().a.b.a.c.zy << (abs(u_input.d) % vec2<u32>(32u)))));
    let var_2 = Struct_5(arg_1, arg_1.a);
    global0 = array<vec3<f32>, 16>();
    global1 = array<vec4<f32>, 26>();
    return var_2.a.a.b;
}

fn func_5(arg_0: Struct_2) -> Struct_5 {
    let var_0 = vec3<bool>(true, false, !select(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, u_input.b, global2.x, 4294967295u), vec4<u32>(0u, arg_0.e.a, global2.x, arg_0.e.a)) != global2.x, arg_0.e.b.x, true));
    global1 = array<vec4<f32>, 26>();
    let var_1 = arg_0.b;
    var var_2 = ~func_2().a.b.d.zy;
    var var_3 = func_2();
    return Struct_5(func_2(), Struct_3(func_2().a.a, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(804f, var_1, -871f, var_1))), func_2(), true, Struct_3(1i, func_4(global1[_wgslsmith_index_u32(arg_0.d.x, 26u)], Struct_4(var_3.a, var_3.b), arg_0.e.b.x, var_3.a), arg_0.a.b.x)), !all(vec4<bool>(false, false, var_0.x, var_3.a.b.e.b.x))));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: u32) -> i32 {
    let var_0 = func_5(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.b.c), _wgslsmith_f_op_f32(arg_1.b.b.b * 450f), _wgslsmith_div_f32(arg_1.b.b.c, -247f), -983f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a.b.b, -1244f, 107f, 1018f)) * vec4<f32>(arg_1.b.b.c, arg_1.a.a.b.b, 915f, arg_1.b.b.b))), func_2(), ~select(global2.x, u_input.a.x, false) <= 33795u, func_2().a));
    global2 = arg_1.a.b;
    let var_1 = vec2<i32>(68235i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(11412i, arg_1.b.b.a.c.x, var_0.a.a.a, 50838i) & -arg_1.a.a.b.e.c, var_0.b.b.a.c | max(vec4<i32>(2147483647i, u_input.e.x, var_0.b.b.a.c.x, u_input.c.x), var_0.b.b.a.c))));
    var var_2 = arg_2;
    var var_3 = Struct_2(Struct_1(~71055u, func_5(var_0.a.a.b).a.a.b.a.b, var_0.a.a.b.a.c), 821f, _wgslsmith_f_op_f32(var_0.a.a.b.c - -1792f), _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(abs(u_input.a.x)), 20401u, 24280u), ~vec3<u32>(~4294967295u, _wgslsmith_mult_u32(0u, arg_1.b.b.d.x), 27816u)), Struct_1(24484u, vec3<bool>(any(vec2<bool>(var_0.a.a.b.e.b.x, arg_1.b.c)), !(!var_0.b.c), true), -select(vec4<i32>(-2147483647i, arg_0, -2103i, var_1.x) | var_0.a.a.b.a.c, vec4<i32>(arg_1.a.a.a, var_0.a.a.b.a.c.x, var_0.a.a.a, 52958i) ^ vec4<i32>(7758i, arg_1.a.a.a, -9723i, var_0.b.b.e.c.x), select(vec4<bool>(false, false, true, var_0.b.c), vec4<bool>(false, arg_1.b.b.e.b.x, true, var_0.a.a.b.e.b.x), vec4<bool>(true, true, false, false)))));
    return var_0.a.a.b.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec4<bool>(true, true, true, true)), true, true);
    let var_1 = _wgslsmith_div_i32(~_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 34515i, -1i, u_input.e.x), vec4<i32>(u_input.e.x, 73297i, u_input.c.x, u_input.e.x)), ~func_1(u_input.e.x, Struct_5(Struct_4(Struct_3(u_input.c.x, Struct_2(Struct_1(5811u, vec3<bool>(var_0.x, var_0.x, true), vec4<i32>(43065i, u_input.e.x, 19839i, -620i)), 700f, -472f, vec3<u32>(u_input.b, 68157u, 9033u), Struct_1(0u, var_0.zwx, vec4<i32>(88537i, -11780i, 22646i, u_input.c.x))), false), vec4<u32>(103259u, 48181u, u_input.d.x, 8490u)), Struct_3(u_input.e.x, Struct_2(global3[_wgslsmith_index_u32(global2.x, 12u)], -817f, 1165f, vec3<u32>(0u, u_input.d.x, u_input.a.x), Struct_1(3430u, var_0.zxy, vec4<i32>(u_input.e.x, 4838i, 0i, u_input.c.x))), var_0.x)), 54077u)), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~vec3<u32>(49171u, u_input.d.x, global2.x))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(), u_input.a.x), 26u)], vec4<i32>(countOneBits(_wgslsmith_mod_i32(-20284i, _wgslsmith_sub_i32(u_input.e.x, 2147483647i))), ~max(_wgslsmith_mult_i32(42478i, u_input.e.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, -1i), u_input.c)), select(u_input.e.x, 1i, func_5(func_4(vec4<f32>(-1019f, -107f, -892f, 449f), Struct_4(Struct_3(u_input.c.x, Struct_2(global3[_wgslsmith_index_u32(30232u, 12u)], -1560f, 299f, global2.wxy, Struct_1(u_input.a.x, vec3<bool>(var_0.x, var_0.x, false), vec4<i32>(var_1, 2147483647i, 0i, -36527i))), var_0.x), vec4<u32>(u_input.a.x, global2.x, 0u, u_input.a.x)), var_0.x, Struct_3(u_input.c.x, Struct_2(global3[_wgslsmith_index_u32(u_input.d.x, 12u)], -1444f, -776f, global2.zzy, global3[_wgslsmith_index_u32(88687u, 12u)]), var_0.x))).b.b.e.b.x), firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(17759i, var_1, -1i), vec3<i32>(var_1, -30818i, -1263i)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(409f, 200f)), func_4(global1[_wgslsmith_index_u32(u_input.b, 26u)], Struct_4(Struct_3(52074i, Struct_2(Struct_1(u_input.a.x, vec3<bool>(true, var_0.x, false), vec4<i32>(u_input.e.x, u_input.e.x, 13184i, 14167i)), 1205f, -102f, vec3<u32>(u_input.a.x, global2.x, 4294967295u), Struct_1(0u, var_0.wxx, vec4<i32>(-5820i, -38779i, u_input.e.x, u_input.e.x))), true), vec4<u32>(u_input.b, 0u, u_input.d.x, u_input.a.x)), var_0.x, Struct_3(var_1, Struct_2(Struct_1(1u, vec3<bool>(true, true, var_0.x), vec4<i32>(var_1, var_1, var_1, -37158i)), 161f, 210f, u_input.a, Struct_1(21069u, vec3<bool>(var_0.x, var_0.x, var_0.x), vec4<i32>(var_1, 1i, var_1, -11103i))), var_0.x)).b))))), u_input.e.x);
}

