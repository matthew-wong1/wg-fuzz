struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(Struct_1(vec4<i32>(-64184i, 0i, 8814i, 30093i)), Struct_2(-1314f, -1000f, vec3<f32>(-241f, -2156f, 1138f), vec2<f32>(468f, -896f), Struct_1(vec4<i32>(-29346i, -7062i, 2147483647i, 1i))), Struct_2(-1000f, -562f, vec3<f32>(-923f, 790f, 439f), vec2<f32>(-815f, -886f), Struct_1(vec4<i32>(1i, 9791i, i32(-2147483648), -1i))), vec3<u32>(0u, 8667u, 0u), -1i), vec3<i32>(0i, 11835i, 1i), vec4<u32>(42723u, 44229u, 41143u, 0u));

var<private> global1: vec2<u32>;

var<private> global2: array<u32, 21> = array<u32, 21>(64923u, 31287u, 4294967295u, 32883u, 1u, 57446u, 1850u, 80661u, 21195u, 0u, 1u, 4294967295u, 39069u, 0u, 37959u, 4294967295u, 1u, 4294967295u, 4973u, 1u, 67404u);

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    let var_0 = global0.a.b.e;
    var var_1 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(_wgslsmith_div_u32(0u, global0.c.x), 66041u) >> (~countOneBits(vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))), global3.xy);
    let var_2 = select(~global0.c, vec4<u32>(global2[_wgslsmith_index_u32(var_1.x, 21u)], 67139u, u_input.d.x, _wgslsmith_sub_u32(u_input.c, global3.x)), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(vec4<bool>(any(vec4<bool>(true, true, true, false)), 170f != global0.a.c.c.x, true, true))));
    var var_3 = Struct_4(global0.a, _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(var_0.a.x << (var_2.x % 32u), var_0.a.x, max(-9737i, -2147483647i))), vec3<i32>(-1i, 2147483647i, _wgslsmith_div_i32(12002i, _wgslsmith_mult_i32(0i, u_input.a)))), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(~4294967295u, 21u)], u_input.d.x, reverseBits(global1.x), global3.x ^ 39967u) ^ min(reverseBits(vec4<u32>(0u, global2[_wgslsmith_index_u32(21804u, 21u)], global3.x, 1u)), abs(var_2)), ~vec4<u32>(_wgslsmith_mod_u32(32083u, var_1.x), var_1.x, reverseBits(var_1.x), 1u)));
    var_1 = ~(~(~global3.yw));
    return select(_wgslsmith_add_vec3_i32(reverseBits(global0.a.b.e.a.xzw >> (~vec3<u32>(24886u, var_3.a.d.x, global0.a.d.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(-6947i, var_0.a.x, var_0.a.x)), vec3<i32>(-1i, u_input.a, 39030i)), abs(var_3.a.b.e.a.wyx))), vec3<i32>(u_input.a, -2147483647i, (var_0.a.x << (~0u % 32u)) | -21707i), !select(vec3<bool>(true, global0.c.x != var_2.x, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), !any(vec2<bool>(false, true))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    global0 = Struct_4(global0.a, func_3(), vec4<u32>(70259u, _wgslsmith_sub_u32(global3.x, u_input.c), countOneBits(u_input.d.x), ~(~4294967295u) & global1.x));
    var var_0 = 3065i;
    var var_1 = all(!(!vec3<bool>(true, any(vec2<bool>(false, false)), false)));
    let var_2 = Struct_4(global0.a, global0.b, u_input.d);
    global3 = abs(~(~vec4<u32>(4294967295u, 4294967295u, u_input.c, 1u))) >> (u_input.d % vec4<u32>(32u));
    return !vec3<bool>(select(false, all(vec2<bool>(true, true)), _wgslsmith_dot_vec2_i32(var_2.a.c.e.a.wx, vec2<i32>(global0.a.e, -5995i)) >= select(u_input.a, arg_2.a.x, true)), true, global0.c.x <= ~_wgslsmith_add_u32(u_input.b.x, u_input.c));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = false;
    var var_1 = global0.a.a;
    var_0 = all(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), vec3<bool>(false, true, true), vec3<bool>(any(func_2(vec4<f32>(global0.a.c.d.x, global0.a.b.b, 446f, global0.a.c.b), 0u, Struct_1(vec4<i32>(1i, -15084i, arg_0.x, -68645i)))), false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))))));
    var var_2 = ~vec3<u32>(global1.x << ((~37201u ^ ~global1.x) % 32u), global2[_wgslsmith_index_u32(4294967295u, 21u)], 1u);
    var var_3 = global0.a.c.c.x;
    return !all(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = global0.a.c.e;
    var var_1 = Struct_3(Struct_1(vec4<i32>(i32(-1i) * -1i, ~_wgslsmith_mult_i32(-33637i, u_input.a), _wgslsmith_clamp_i32(var_0.a.x, -1i, global0.a.a.a.x) ^ global0.b.x, var_0.a.x)), Struct_2(-525f, arg_1, _wgslsmith_f_op_vec3_f32(select(global0.a.b.c, global0.a.b.c, arg_3.x)), vec2<f32>(1072f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))), Struct_1(~(-var_0.a))), Struct_2(-1040f, _wgslsmith_f_op_f32(abs(-1101f)), vec3<f32>(-1331f, arg_1, -292f), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(437f - global0.a.c.c.x))), -581f), Struct_1(~global0.a.b.e.a << (abs(vec4<u32>(29448u, 0u, u_input.b.x, 1u)) % vec4<u32>(32u)))), global3.yxw, select(-_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 23013i), global0.a.b.e.a.xyy), ~(select(2147483647i, -14851i, true) | (u_input.a << (11660u % 32u))), arg_0));
    var_1 = Struct_3(Struct_1(~(vec4<i32>(var_0.a.x, u_input.a, u_input.a, var_0.a.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(23842u, 4294967295u, global2[_wgslsmith_index_u32(0u, 21u)], 1u), vec4<u32>(1u, var_1.d.x, var_1.d.x, 0u)) % vec4<u32>(32u)))), global0.a.c, global0.a.c, ~vec3<u32>(u_input.b.x ^ (var_1.d.x << (global3.x % 32u)), global1.x, global2[_wgslsmith_index_u32(global3.x, 21u)]), ~(countOneBits(max(0i, u_input.a)) >> (global2[_wgslsmith_index_u32(global3.x, 21u)] % 32u)));
    let var_2 = !arg_3.wx;
    var var_3 = -208f;
    return Struct_4(global0.a, select(vec3<i32>(~_wgslsmith_sub_i32(-23013i, -14672i), select(_wgslsmith_mult_i32(1i, -14560i), global0.b.x | u_input.a, true), -4095i), reverseBits(_wgslsmith_add_vec3_i32(select(var_0.a.xzx, vec3<i32>(u_input.a, -2147483647i, -32584i), arg_3.xwx), global0.b)), arg_3.wwy), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(vec2<u32>(global2[_wgslsmith_index_u32(abs(4294967295u), 21u)], _wgslsmith_mult_u32(~0u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.c, global0.c), 21u)])) ^ (_wgslsmith_mult_vec2_u32(~u_input.b, global3.wy | global0.a.d.zy) << (u_input.d.xy % vec2<u32>(32u))));
    global0 = func_4(!(true || func_1(vec2<i32>(94929i, u_input.a) << (vec2<u32>(u_input.d.x, u_input.b.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b.b * -425f)))), !all(vec4<bool>(false, false, true, true)) && !(!all(vec3<bool>(false, false, false))), select(!vec4<bool>(true, func_1(global0.b.yz), true, true), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, -1690f > global0.a.b.c.x, false, true), true), vec4<bool>(any(vec3<bool>(true, true, true)), false, true, true)));
    var var_0 = global0.a.b.e;
    let var_1 = true;
    var var_2 = vec4<u32>(max(13052u, global0.c.x), 1u, ~global1.x, ~(global1.x >> (13875u % 32u))) >> (abs(vec4<u32>(firstTrailingBit(0u), _wgslsmith_mult_u32(global3.x, ~global1.x), global1.x, min(32148u, global3.x))) % vec4<u32>(32u));
    var var_3 = func_4(~min(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, var_0.a.x), var_0.a.yx), u_input.a & 1i) >= 15719i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.c.c.x, global0.a.c.a) - global0.a.b.c.x), any(vec4<bool>(var_1, true & var_1, true, all(vec4<bool>(false, var_1, false, var_1)))) & any(select(!vec2<bool>(var_1, false), vec2<bool>(var_1, false), any(vec4<bool>(true, false, true, false)))), vec4<bool>(min(reverseBits(var_2.x), 18886u << (u_input.b.x % 32u)) < 38046u, any(!select(vec4<bool>(false, var_1, var_1, false), vec4<bool>(var_1, var_1, true, var_1), var_1)), true, !(true & any(vec2<bool>(var_1, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, u_input.d.x >> (_wgslsmith_add_u32(0u, 4294967295u) % 32u));
}

