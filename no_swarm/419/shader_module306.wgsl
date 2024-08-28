struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(25054i, 1211i);

var<private> global1: array<bool, 2> = array<bool, 2>(true, true);

var<private> global2: f32;

var<private> global3: vec3<f32> = vec3<f32>(1186f, 225f, 439f);

var<private> global4: array<i32, 20>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: i32) -> i32 {
    global2 = 1724f;
    global4 = array<i32, 20>();
    global4 = array<i32, 20>();
    var var_0 = vec4<i32>(-64298i, _wgslsmith_dot_vec4_i32(firstTrailingBit(~min(arg_1, vec4<i32>(24372i, -48612i, 0i, 23745i))), max(reverseBits(vec4<i32>(global0.x, arg_1.x, u_input.a, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, 1i, 11964i, global4[_wgslsmith_index_u32(35450u, 20u)]) >> (vec4<u32>(4294967295u, 63744u, 65627u, 67643u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-87631i, arg_1.x, 2147483647i, 1i), arg_1)))), -76189i, u_input.a);
    let var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 8576u, 4294967295u, 40788u)), countOneBits(vec4<u32>(30264u, 27287u, 4294967295u, 4982u)))), vec2<u32>(firstTrailingBit(105707u), min(~abs(69005u), _wgslsmith_mod_u32(1u, ~32396u))));
    return 2147483647i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    return ~61489u << (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(4294967295u), countOneBits(arg_3.b)), _wgslsmith_mod_vec2_u32(~vec2<u32>(66741u, arg_3.b), vec2<u32>(arg_3.b, arg_3.b)))) % 32u);
}

fn func_2() -> vec4<f32> {
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(ceil(-634f)), -1024f);
    let var_0 = Struct_1(!all(select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(69391u, 2u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(48273u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), global1[_wgslsmith_index_u32(1125u, 2u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(70410u, 2u)], false), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(39922u, 2u)]))), ~1u, vec3<bool>(global4[_wgslsmith_index_u32(~(~1u), 20u)] != ~(-32580i), !global1[_wgslsmith_index_u32(10171u, 2u)], any(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 2u)], true))));
    let var_1 = ~vec2<u32>(var_0.b, func_4(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, global0.x), vec3<i32>(u_input.a, -6351i, 25457i)), vec4<i32>(-1i, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 90166u, 0u, var_0.b), vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b)), 20u)], func_3(vec4<f32>(923f, global3.x, -1007f, -694f), vec4<i32>(u_input.a, 36119i, -23752i, global0.x), global4[_wgslsmith_index_u32(var_0.b, 20u)]), -global4[_wgslsmith_index_u32(52763u, 20u)]), vec3<bool>(true, true, var_0.a), Struct_1(any(vec3<bool>(global1[_wgslsmith_index_u32(var_0.b, 2u)], false, global1[_wgslsmith_index_u32(var_0.b, 2u)])), 0u, var_0.c)));
    let var_2 = global4[_wgslsmith_index_u32(firstTrailingBit(~0u) & (firstTrailingBit(72726u) ^ var_0.b), 20u)];
    var var_3 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))) + -1022f)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2084f - 659f))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_3.x, global3.x)), -362f, _wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(global3.x + var_3.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, var_3.x, global3.x, var_3.x)), vec4<f32>(var_3.x, global3.x, global3.x, 300f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.x * global3.x), global3.x, -1518f, _wgslsmith_f_op_f32(max(-1000f, -667f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1773f, -633f, var_3.x, -715f)))));
}

fn func_1(arg_0: f32) -> vec2<f32> {
    global1 = array<bool, 2>();
    global2 = global3.x;
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(146f, arg_0, arg_0, arg_0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-631f, -1000f, 336f, arg_0) * vec4<f32>(arg_0, 1058f, arg_0, global3.x)) * _wgslsmith_f_op_vec4_f32(func_2())))), 1i, true, -(~(~(-vec2<i32>(2147483647i, 63066i)))), Struct_1(true, 3201u, !vec3<bool>(global1[_wgslsmith_index_u32(~40706u, 2u)], true, false)));
    var var_1 = select(select(select(!select(vec4<bool>(var_0.e.a, false, true, false), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(var_0.c, global1[_wgslsmith_index_u32(64370u, 2u)], global1[_wgslsmith_index_u32(var_0.e.b, 2u)], false)), select(select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.e.b, 2u)], false, global1[_wgslsmith_index_u32(28233u, 2u)], false), vec4<bool>(true, var_0.e.c.x, global1[_wgslsmith_index_u32(1u, 2u)], true), global1[_wgslsmith_index_u32(4294967295u, 2u)]), select(vec4<bool>(var_0.c, true, var_0.c, true), vec4<bool>(var_0.c, var_0.c, var_0.c, false), false), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.e.b, 2u)], var_0.c, false)), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_0.e.b, 2u)], false)), vec4<bool>((var_0.e.b >> (1u % 32u)) != var_0.e.b, global1[_wgslsmith_index_u32(firstLeadingBit(61513u), 2u)] || true, select(!global1[_wgslsmith_index_u32(34959u, 2u)], -1i >= u_input.a, global1[_wgslsmith_index_u32(var_0.e.b, 2u)] & false), var_0.c), all(select(vec4<bool>(var_0.e.c.x, var_0.e.c.x, false, global1[_wgslsmith_index_u32(var_0.e.b, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(38136u, 2u)], false, var_0.c, var_0.c), false))), !select(vec4<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(32617u, 2u)], true, global1[_wgslsmith_index_u32(0u, 2u)])), all(var_0.e.c.yz), true, var_0.e.c.x || global1[_wgslsmith_index_u32(65853u, 2u)]), vec4<bool>(false, 10577u < var_0.e.b, global1[_wgslsmith_index_u32(30140u, 2u)], global1[_wgslsmith_index_u32(var_0.e.b, 2u)] != var_0.e.a), var_0.c), var_0.e.a);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + arg_0) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(125f, -1000f))), _wgslsmith_f_op_f32(-global3.x));
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: u32, arg_3: f32) -> vec3<bool> {
    global1 = array<bool, 2>();
    global1 = array<bool, 2>();
    let var_0 = ~arg_2;
    var var_1 = Struct_3(vec4<f32>(-409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x)), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1702f)))), -48274i, all(vec2<bool>(true, global1[_wgslsmith_index_u32(var_0, 2u)])), vec2<i32>(firstLeadingBit(arg_1), arg_1), Struct_1(true, 1u, select(select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_0, 2u)]), !vec3<bool>(global1[_wgslsmith_index_u32(arg_2, 2u)], global1[_wgslsmith_index_u32(12852u, 2u)], true), vec3<bool>(global1[_wgslsmith_index_u32(var_0, 2u)], global1[_wgslsmith_index_u32(22000u, 2u)], global1[_wgslsmith_index_u32(var_0, 2u)])), select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0, 2u)], global1[_wgslsmith_index_u32(var_0, 2u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(arg_2, 2u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(43802u, 2u)], true), global1[_wgslsmith_index_u32(0u, 2u)]), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(21603u, 2u)], false)), false)));
    let var_2 = select(!select(!select(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(var_1.e.a, global1[_wgslsmith_index_u32(arg_2, 2u)], false, global1[_wgslsmith_index_u32(var_1.e.b, 2u)]), true), vec4<bool>(global1[_wgslsmith_index_u32(countOneBits(var_1.e.b), 2u)], var_1.e.a, global1[_wgslsmith_index_u32(4294967295u, 2u)], any(vec4<bool>(global1[_wgslsmith_index_u32(35263u, 2u)], false, var_1.c, var_1.c))), vec4<bool>(global1[_wgslsmith_index_u32(~88597u, 2u)], global1[_wgslsmith_index_u32(var_0, 2u)], global1[_wgslsmith_index_u32(var_0, 2u)] != var_1.c, var_1.e.a)), !vec4<bool>(false, var_1.c, all(select(var_1.e.c.yx, vec2<bool>(var_1.e.a, var_1.c), var_1.e.c.xy)), any(vec4<bool>(var_1.e.c.x, global1[_wgslsmith_index_u32(42215u, 2u)], false, false))), !(!select(!vec4<bool>(global1[_wgslsmith_index_u32(15024u, 2u)], global1[_wgslsmith_index_u32(var_1.e.b, 2u)], var_1.e.a, true), !vec4<bool>(global1[_wgslsmith_index_u32(var_1.e.b, 2u)], true, false, true), vec4<bool>(false, var_1.c, global1[_wgslsmith_index_u32(28055u, 2u)], global1[_wgslsmith_index_u32(arg_2, 2u)]))));
    return vec3<bool>(any(select(select(var_1.e.c.xx, var_2.wx, false), !var_2.xy, var_1.e.c.zy)) == var_2.x, var_0 >= _wgslsmith_mod_u32(arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2, 16391u), ~vec3<u32>(65886u, 0u, var_0))), global1[_wgslsmith_index_u32(max(~arg_2 & ~arg_2, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 0u, arg_2), ~vec3<u32>(var_1.e.b, 0u, arg_2)), vec3<u32>(var_1.e.b, 1u, 51086u) << (countOneBits(vec3<u32>(arg_2, var_1.e.b, arg_2)) % vec3<u32>(32u)))), 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    let var_1 = Struct_1(true, firstLeadingBit(~(~min(0u, 4294967295u))), !(!func_5(_wgslsmith_f_op_vec2_f32(func_1(-194f)), _wgslsmith_div_i32(-5279i, 2147483647i), 5385u, global3.x)));
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(998f, global3.x)), _wgslsmith_f_op_f32(sign(-153f)))), 1000f, any(!(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.b, 2u)], var_1.c.x, true))))));
    let var_2 = Struct_1(!(!global1[_wgslsmith_index_u32(~min(var_1.b, var_1.b), 2u)]), max(firstTrailingBit(firstTrailingBit(~0u)), var_1.b), !func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 524f) + global3.yx), -global4[_wgslsmith_index_u32(var_1.b, 20u)] << ((10342u | var_1.b) % 32u), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, -777f)) * _wgslsmith_f_op_f32(-292f - global3.x))));
    let var_3 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1473f, -284f, global3.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-139f, global3.x, -1254f, global3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, global3.x, 1000f, -1239f)))), vec4<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * global3.x) * global3.x), global3.x, 311f)), -9479i, true, ~_wgslsmith_sub_vec2_i32(-(~vec2<i32>(2147483647i, u_input.a)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(18915i, global4[_wgslsmith_index_u32(var_1.b, 20u)]), vec2<i32>(global0.x, -1i)), -vec2<i32>(1i, u_input.a))), Struct_1(var_1.c.x, 1u ^ (func_4(vec3<i32>(global0.x, u_input.a, global4[_wgslsmith_index_u32(var_1.b, 20u)]), vec4<i32>(77460i, -1i, 52572i, global0.x), vec3<bool>(global1[_wgslsmith_index_u32(var_1.b, 2u)], var_2.a, true), var_1) >> (~var_2.b % 32u)), !(!func_5(global3.xy, -26629i, var_2.b, global3.x))));
    global2 = -122f;
    let x = u_input.a;
    s_output = StorageBuffer(11576i, u_input.a, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(var_1.b, 1u, 0u, 13730u)), firstLeadingBit(abs(vec4<u32>(4294967295u, var_1.b, 15999u, var_3.e.b)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, global3.x, -1000f)) - var_3.a.yyy)))), vec4<u32>(4294967295u, ~var_3.e.b, var_3.e.b, firstLeadingBit(var_2.b >> (var_2.b % 32u))) >> (~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_3.e.b, 4294967295u, 4294967295u), select(vec4<u32>(var_2.b, 30471u, 1u, 66234u), vec4<u32>(12443u, 22470u, var_1.b, 1u), var_3.e.c.x)) % vec4<u32>(32u)));
}

