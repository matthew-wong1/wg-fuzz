struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<f32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(64763u, 4688u, 0u), Struct_2(-29806i), vec2<f32>(1000f, 178f), true);

var<private> global2: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    var var_0 = select(global1.a.yx, global1.a.xx, select(vec2<bool>(_wgslsmith_f_op_f32(1172f * global1.c.x) >= _wgslsmith_f_op_f32(global1.c.x * global1.c.x), global1.d), !(!select(vec2<bool>(global1.d, true), vec2<bool>(global1.d, true), global1.d)), false));
    global1 = Struct_3(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 684u, u_input.c, 1u), vec4<u32>(4098u, 0u, global0[_wgslsmith_index_u32(global1.a.x, 1u)], 4294967295u)) & ~vec4<u32>(49869u, 4294967295u, global0[_wgslsmith_index_u32(var_0.x, 1u)], u_input.c), ~(~vec4<u32>(1u, 27821u, 11566u, u_input.c))), ~global1.a.x, _wgslsmith_div_u32(32874u, global0[_wgslsmith_index_u32(1u, 1u)]) & 38119u), Struct_2((i32(-1i) * -u_input.a.x) ^ u_input.b), _wgslsmith_f_op_vec2_f32(sign(arg_0.yz)), false);
    global2 = ~global1.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.yx);
    global1 = Struct_3(~(~vec3<u32>(~var_0.x, var_0.x, ~global0[_wgslsmith_index_u32(u_input.c, 1u)])), Struct_2(-16875i), vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 722f) + arg_0.x)), true);
    return _wgslsmith_f_op_vec2_f32(-arg_0.xy);
}

fn func_2() -> f32 {
    var var_0 = Struct_4(Struct_1(global1.a, vec2<i32>(-reverseBits(2147483647i), ~global1.b.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-277f, 1080f, global1.c.x))))), select(select(vec2<bool>(true, global1.d), vec2<bool>(global1.d, true), vec2<bool>(true, true)), select(!vec2<bool>(true, global1.d), !vec2<bool>(true, global1.d), true), u_input.b >= 1i)), !all(vec4<bool>(any(vec2<bool>(true, global1.d)), true, global1.d, global1.d)), min(global1.a.yx, ~countOneBits(vec2<u32>(4294967295u, 26947u))), 13623u);
    let var_1 = Struct_3(var_0.a.a, Struct_2(_wgslsmith_mod_i32(firstLeadingBit(2147483647i), ~1i)), _wgslsmith_f_op_vec2_f32(-var_0.a.c), !var_0.b);
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -13516i), vec2<i32>(u_input.a.x, -6626i)) << (~global1.a.x % 32u), _wgslsmith_sub_i32(~var_0.a.b.x, reverseBits(-31822i))), -8377i, _wgslsmith_mod_i32(-40702i, ~countOneBits(-1i))), vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(var_0.a.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_0.a.b.x), vec2<i32>(2147483647i, var_1.b.a)), global1.b.a, 2147483647i), min(vec4<i32>(var_1.b.a, var_1.b.a, u_input.a.x, -29945i), vec4<i32>(global1.b.a, 5238i, -1i, -28554i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.a, var_1.b.a, 0i, 23547i), vec4<i32>(21762i, global1.b.a, var_0.a.b.x, var_0.a.b.x), vec4<i32>(u_input.a.x, u_input.b, 0i, -2147483647i))), ~3805i, u_input.a.x));
    let var_3 = Struct_4(Struct_1(var_0.a.a, firstTrailingBit(countOneBits(~vec2<i32>(global1.b.a, var_0.a.b.x))), vec2<f32>(_wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1138f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(602f, -841f))), !select(var_0.a.d, !var_0.a.d, global1.d)), true, abs(var_0.a.a.yy), 1u);
    global1 = var_1;
    return _wgslsmith_f_op_f32(min(var_1.c.x, var_0.a.c.x));
}

fn func_1(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(max(~select(_wgslsmith_mult_vec4_i32(vec4<i32>(-28601i, global1.b.a, u_input.b, -26239i), vec4<i32>(arg_0.x, global1.b.a, -2147483647i, global1.b.a)), vec4<i32>(global1.b.a, 20039i, arg_0.x, arg_0.x), !vec4<bool>(global1.d, global1.d, global1.d, global1.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(-54963i, 1i, u_input.b, ~8228i), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.b.a, 0i, global1.b.a, 2147483647i), vec4<i32>(-1i, 1i, -4322i, arg_0.x)) & _wgslsmith_add_vec4_i32(vec4<i32>(38134i, 27327i, u_input.b, u_input.a.x), vec4<i32>(-1i, global1.b.a, 2147483647i, u_input.b)))), min(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, 27641i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a.x, -1i, 62284i), vec4<i32>(global1.b.a, 3685i, u_input.a.x, 6833i))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(global1.b.a, global1.b.a, -1i, -1i), vec4<i32>(12668i, global1.b.a, u_input.b, arg_0.x) >> (vec4<u32>(global1.a.x, 41497u, global0[_wgslsmith_index_u32(80134u, 1u)], u_input.c) % vec4<u32>(32u))), vec4<i32>(u_input.a.x, -1i >> ((global1.a.x << (66897u % 32u)) % 32u), global1.b.a, arg_0.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(global1.c.x * global1.c.x)))), global1.c.x));
    var var_2 = abs(arg_0.x);
    let var_3 = global1.a.zy;
    global1 = Struct_3(_wgslsmith_mod_vec3_u32(~(~global1.a) >> ((~global1.a >> ((vec3<u32>(15655u, 1u, 19019u) << (vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<u32>(var_3.x, 1u, _wgslsmith_mult_u32(var_3.x, var_3.x))), Struct_2(-2147483647i), global1.c, any(!vec3<bool>(true, global1.d, false)));
    return !(!vec4<bool>(false, global1.d, select(global1.d, global1.d, false) || (2147483647i != u_input.b), !(!global1.d)));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_3(reverseBits(global1.a), global1.b, _wgslsmith_f_op_vec2_f32(global1.c - global1.c), !(!(!arg_0.x)) | all(func_1(max(vec3<i32>(global1.b.a, -1i, u_input.a.x), vec3<i32>(-1i, 2147483647i, global1.b.a))).zwx));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-608f, _wgslsmith_f_op_f32(f32(-1f) * -221f))) - var_0.c.x)) + -1069f);
    let var_2 = 111483u;
    let var_3 = ~(~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(7434u, 1u, var_0.a.x, 16549u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(66444u, u_input.c, u_input.c, arg_1), vec4<u32>(67743u, 0u, 23221u, arg_1))));
    let var_4 = 1i;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(!select(vec4<bool>(!global1.d, true, global1.d, true), func_1(select(vec3<i32>(0i, -25839i, -29638i), vec3<i32>(21603i, 1i, 42376i), true)), vec4<bool>(global1.d, false, global1.d | false, !global1.d)), global0[_wgslsmith_index_u32(47699u, 1u)], ~u_input.b >> (0u % 32u));
    global2 = abs(4294967295u ^ reverseBits(~(~global1.a.x)));
    global0 = array<u32, 1>();
    global1 = func_4(vec4<bool>(true, false, global1.c.x > _wgslsmith_f_op_f32(-func_4(vec4<bool>(false, true, false, global1.d), u_input.c, -1i).c.x), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.c, 1u)], 1u)] >= global0[_wgslsmith_index_u32(~(~global1.a.x), 1u)]), global1.a.x, _wgslsmith_sub_i32(u_input.b, global1.b.a));
    var var_0 = Struct_4(Struct_1(global1.a, _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-62236i, -40206i)) & -min(vec2<i32>(u_input.b, -4829i), u_input.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.c.x)), _wgslsmith_f_op_f32(-1498f * global1.c.x)))), select(vec2<bool>(global1.d, global1.d), !(!vec2<bool>(global1.d, false)), select(func_1(vec3<i32>(1611i, u_input.b, global1.b.a)).zw, vec2<bool>(false, global1.d), vec2<bool>(global1.d, true)))), global1.c.x != global1.c.x, _wgslsmith_add_vec2_u32(select(~reverseBits(global1.a.yx), global1.a.zy, vec2<bool>(true, true)), reverseBits(firstTrailingBit(_wgslsmith_mult_vec2_u32(global1.a.yx, global1.a.zy)))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~global1.a.x, max(u_input.c, 5795u), 0u, abs(14983u)), ~countOneBits(vec4<u32>(2411u, 58605u, global1.a.x, 15663u))), vec4<u32>(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)] & global0[_wgslsmith_index_u32(99373u, 1u)]), u_input.c, 57195u, 31045u)));
    let var_1 = vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(select(_wgslsmith_add_u32(1u, var_0.a.a.x), ~0u, all(vec3<bool>(global1.d, var_0.b, false))), 1u)], 1u)), ~u_input.c, select(u_input.c, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, countOneBits(global0[_wgslsmith_index_u32(u_input.c, 1u)])), 1u)], var_0.a.d.x), countOneBits(_wgslsmith_mod_u32(global1.a.x, ~var_0.a.a.x | 4294967295u)));
    let var_2 = Struct_1(vec3<u32>(u_input.c, select(var_1.x, 73246u, global1.d), ~u_input.c), ~var_0.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, -1058f) * global1.c)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.c.x)), -103f)), !vec2<bool>(true || global1.d, all(!var_0.a.d)));
    global0 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(507f, global1.b.a, reverseBits(~(var_0.d ^ _wgslsmith_dot_vec2_u32(var_2.a.yx, var_2.a.zy))));
}

