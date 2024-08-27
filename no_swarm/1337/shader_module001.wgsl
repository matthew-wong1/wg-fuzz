struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: array<f32, 3>;

var<private> global1: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = arg_0.a;
    var var_1 = arg_1.c;
    var var_2 = arg_2;
    var_1 = arg_1.d;
    var_2 = ~arg_0.b.d.x;
    return arg_0.b.d.x;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(~(-1i), -760i)), abs(max(abs(-5726i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 22971i), vec2<i32>(63304i, -2147483647i)))), abs(abs(1i)), firstTrailingBit(1i)), ~firstLeadingBit(~abs(vec4<i32>(-21377i, 29783i, 39727i, 19136i))));
    let var_1 = reverseBits(-var_0.x);
    global0 = array<f32, 3>();
    var_0 = -((-vec4<i32>(0i, 10577i, 41403i, var_1) & _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_1, 46085i, 0i), vec4<i32>(15690i, var_1, 49588i, var_1))) | (_wgslsmith_mult_vec4_i32(vec4<i32>(46003i, -4501i, -1i, var_1), vec4<i32>(2147483647i, 23586i, -15195i, -1i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, 16618i, 43279i, 0i), vec4<i32>(var_0.x, 15331i, -1i, var_0.x), vec4<i32>(var_0.x, -25407i, var_1, var_1)))) << (vec4<u32>(select(abs(min(u_input.b, u_input.a.x)), 1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.a.x), vec3<u32>(0u, 0u, 4294967295u)), select(true, any(vec2<bool>(true, false)), true)), _wgslsmith_mult_u32(u_input.a.x, ~4294967295u), ~u_input.b ^ u_input.b, func_3(Struct_3(true, Struct_1(vec4<i32>(-2147483647i, var_0.x, -2147483647i, var_0.x), 0i, -612f, vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 49119u)), arg_0.wx), Struct_2(0i, ~vec2<u32>(u_input.a.x, u_input.b), Struct_1(vec4<i32>(-26983i, var_1, 2147483647i, 1i), var_0.x, 988f, vec4<u32>(43298u, 4294967295u, 4294967295u, 48755u)), Struct_1(vec4<i32>(2147483647i, var_1, 2147483647i, var_1), var_0.x, global0[_wgslsmith_index_u32(u_input.b, 3u)], vec4<u32>(u_input.b, 71637u, 4612u, u_input.b)), ~17658i), 94430u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + global0[_wgslsmith_index_u32(4294967295u, 3u)]) * global0[_wgslsmith_index_u32(4294967295u, 3u)]))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(470f, arg_0.x)));
    return Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(min(-vec4<i32>(var_0.x, 2147483647i, 0i, var_1), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -90998i, -35055i, var_1), vec4<i32>(var_0.x, 0i, var_1, var_1))), ~(vec4<i32>(6804i, var_1, var_1, 1i) & vec4<i32>(0i, -28319i, 12532i, var_0.x))), vec4<i32>(2731i, firstTrailingBit(-24999i), -62980i, var_0.x)), _wgslsmith_dot_vec3_i32(min(firstTrailingBit(vec3<i32>(-14390i, var_1, 0i)), vec3<i32>(var_0.x, var_0.x, 54130i) | ~var_0.zxw), _wgslsmith_mult_vec3_i32(firstLeadingBit(var_0.wwx) & countOneBits(var_0.xyx), vec3<i32>(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 86021i), var_0.yx), ~var_1))), 302f, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_mod_u32(37497u, 4294967295u), ~4294967295u, 4294967295u), select(vec4<u32>(1u, u_input.a.x, 68129u, u_input.b), abs(vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.b)), vec4<bool>(true, true, true, true))), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 1416u, 53200u, u_input.b)), select(vec4<u32>(1u, 0u, 22933u, 4746u), vec4<u32>(4294967295u, 32589u, u_input.a.x, u_input.b), vec4<bool>(false, false, true, true)) >> (vec4<u32>(u_input.b, 73787u, u_input.b, u_input.a.x) % vec4<u32>(32u)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = u_input.a;
    global0 = array<f32, 3>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 3u)]), -1183f, 1f) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-204f, global0[_wgslsmith_index_u32(arg_0.x, 3u)], global0[_wgslsmith_index_u32(arg_3.d.x, 3u)], 958f), vec4<f32>(-355f, -1466f, 330f, global0[_wgslsmith_index_u32(9011u, 3u)]))))))));
    global0 = array<f32, 3>();
    let var_2 = arg_3;
    return Struct_3(true | all(select(vec4<bool>(false, true, arg_1, false), select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1), select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1)))), Struct_1(_wgslsmith_sub_vec4_i32(-countOneBits(arg_3.a), _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, arg_3.a.x, var_2.a.x, 0i), vec4<i32>(arg_3.a.x, 4946i, 1i, arg_3.b))), 0i, var_1.x, var_2.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, -524f) - var_1.ww) - vec2<f32>(global0[_wgslsmith_index_u32(arg_3.d.x, 3u)], var_2.c))))));
}

fn func_1() -> Struct_3 {
    global0 = array<f32, 3>();
    let var_0 = func_4(~(~u_input.a), true, -41421i | -select(1i >> (0u % 32u), 1i, false), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], 536f, -1089f, -1467f))))));
    let var_1 = select(select(vec3<bool>(true, false, (var_0.a & true) || true), !select(select(vec3<bool>(false, true, false), vec3<bool>(var_0.a, true, var_0.a), true), !vec3<bool>(var_0.a, var_0.a, var_0.a), !vec3<bool>(true, var_0.a, var_0.a)), vec3<bool>(!var_0.a, var_0.a, true)), select(!select(select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.a, var_0.a, var_0.a)), vec3<bool>(false, true, var_0.a), false | var_0.a), select(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.a, var_0.a, var_0.a), any(vec4<bool>(true, false, false, var_0.a))), !(!vec3<bool>(true, true, var_0.a)), !vec3<bool>(true, true, var_0.a)), var_0.a), func_4(~firstTrailingBit(u_input.a) << (~u_input.a % vec3<u32>(32u)), !var_0.a && all(select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true))), var_0.b.b, Struct_1(_wgslsmith_mult_vec4_i32(firstLeadingBit(var_0.b.a), -var_0.b.a), ~1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2013f))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -204f, 145f, 164f))).d)).a);
    global1 = true;
    var var_2 = true;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = func_1();
    var var_1 = ~func_2(vec4<f32>(global0[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_f32(step(158f, -1323f)), _wgslsmith_div_f32(1000f, 985f), _wgslsmith_f_op_f32(f32(-1f) * -2066f))).a.wx >> ((vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.d.x, u_input.b), select(u_input.a.xx, var_0.b.d.zy, vec2<bool>(var_0.a, true))), countOneBits(_wgslsmith_mod_u32(0u, 4294967295u))) ^ ~vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_2 = func_4(~u_input.a, select(func_4(func_4(~vec3<u32>(var_0.b.d.x, 51279u, 0u), func_1().a, i32(-1i) * -2147483647i, var_0.b).b.d.wwy, var_0.a, var_0.b.a.x, func_4(~vec3<u32>(var_0.b.d.x, u_input.b, var_0.b.d.x), false, func_2(vec4<f32>(global0[_wgslsmith_index_u32(36672u, 3u)], var_0.c.x, var_0.b.c, -1596f)).b, Struct_1(vec4<i32>(var_1.x, -29470i, var_1.x, 17403i), var_0.b.a.x, var_0.b.c, var_0.b.d)).b).a, all(!vec3<bool>(var_0.a, true, false)), var_0.a), ~0i, Struct_1(select(abs(vec4<i32>(var_1.x, -30370i, var_1.x, var_0.b.b)), select(vec4<i32>(-3018i, 10244i, 23932i, 42068i), var_0.b.a, select(var_0.a, var_0.a, var_0.a)), select(select(vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(false, false, var_0.a, true)), select(vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(false, var_0.a, var_0.a, false), vec4<bool>(var_0.a, true, var_0.a, var_0.a)), !vec4<bool>(var_0.a, false, var_0.a, var_0.a))), var_0.b.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), abs(select(var_0.b.d, vec4<u32>(0u, 40261u, 58210u, var_0.b.d.x), vec4<bool>(false, false, var_0.a, true))) << (var_0.b.d % vec4<u32>(32u))));
    global0 = array<f32, 3>();
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(364f, var_0.b.c, var_0.b.c, var_2.b.c) + vec4<f32>(var_2.b.c, var_2.b.c, var_0.c.x, 212f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 3u)], var_2.b.c, 1820f, 1487f)), vec4<f32>(global0[_wgslsmith_index_u32(2298u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], 1171f, -755f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.c.x), 0i, var_0.b.d.x);
}

