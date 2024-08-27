struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(219f, -1053f, -286f, -337f, -1000f, -1158f, 483f, 386f, 1000f, 258f, -668f, 871f, 383f, 390f, -111f, -1086f, 692f, -907f, 1352f);

var<private> global1: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(-411f, -207f), vec2<f32>(692f, 1335f), vec2<f32>(-285f, 1000f), vec2<f32>(-500f, -1243f), vec2<f32>(786f, -1626f), vec2<f32>(475f, 773f), vec2<f32>(1356f, -517f), vec2<f32>(559f, 1000f), vec2<f32>(-615f, 988f), vec2<f32>(223f, -189f), vec2<f32>(132f, -528f), vec2<f32>(-285f, -399f), vec2<f32>(569f, -740f), vec2<f32>(436f, -1071f), vec2<f32>(-2302f, 154f), vec2<f32>(1000f, -1000f), vec2<f32>(-1262f, 1115f), vec2<f32>(1304f, -1844f), vec2<f32>(1000f, -1000f), vec2<f32>(-1443f, -1050f));

var<private> global2: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(4294967295u, 1i), Struct_1(4294967295u, 10499i)), false, vec2<i32>(2147483647i, -1i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_3.a.b.b, -1i, global3.c.x, -56169i), (vec4<i32>(-32502i, 19240i, -1i, arg_3.c.x) >> (u_input.b % vec4<u32>(32u))) & (vec4<i32>(arg_3.c.x, 5927i, global3.a.b.b, global3.c.x) | vec4<i32>(1i, arg_3.c.x, -42116i, global3.a.a.b))));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(18704u, 19u)] + -223f) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a.a.a, 19u)])) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 19u)] * -717f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-398f, -587f)))), arg_3.b, arg_3.a);
    global1 = array<vec2<f32>, 20>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-681f, 452f, 751f, global0[_wgslsmith_index_u32(24593u, 19u)]), vec4<f32>(924f, global0[_wgslsmith_index_u32(arg_2.x, 19u)], global0[_wgslsmith_index_u32(arg_3.a.a.a, 19u)], global0[_wgslsmith_index_u32(31544u, 19u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_2.x, 19u)], global0[_wgslsmith_index_u32(3964u, 19u)], global0[_wgslsmith_index_u32(arg_1, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]) + vec4<f32>(-1587f, global0[_wgslsmith_index_u32(arg_1, 19u)], 322f, 316f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1589f), global0[_wgslsmith_index_u32(72183u, 19u)], -528f, -770f))));
    var var_3 = Struct_5(arg_3.b, true, var_1.c);
    return var_2;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = 0u;
    var var_1 = Struct_4(Struct_3(global3.a, global3.b & false, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(global3.c, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_0.b), vec2<i32>(u_input.a, 20531i))), _wgslsmith_mult_vec2_i32(-global3.c, vec2<i32>(arg_0.b, -2147483647i)))), u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-636f, global0[_wgslsmith_index_u32(firstLeadingBit(~arg_0.a), 19u)], (false && global3.b) | global3.b)), _wgslsmith_f_op_f32(step(556f, _wgslsmith_div_f32(1018f, _wgslsmith_f_op_f32(sign(-138f))))))));
    let var_2 = !(!vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, var_1.a.b), vec3<bool>(global3.b, global3.b, true))), true, false || (u_input.a < -5882i)));
    let var_3 = u_input.b;
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(var_1.a, u_input.b.x, vec3<u32>(4294967295u, u_input.b.x, arg_0.a), Struct_3(Struct_2(Struct_1(var_0, 2147483647i), global3.a.b), false, var_1.a.c))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-966f, var_1.c, -1109f, -225f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], var_1.c, var_1.c, global0[_wgslsmith_index_u32(arg_0.a, 19u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], var_1.c, var_1.c, var_1.c)) * vec4<f32>(var_1.c, var_1.c, 205f, -664f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1241f, -1574f, global0[_wgslsmith_index_u32(4294967295u, 19u)], var_1.c) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(global3.a.b.a, 19u)], global0[_wgslsmith_index_u32(var_0, 19u)], global0[_wgslsmith_index_u32(27433u, 19u)], 1000f)))), vec4<bool>(true, false, all(vec3<bool>(var_1.a.b, true, var_1.a.b)), true)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 19u)]))), 1127f, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_3.wyy, var_3.zzw), 19u)], _wgslsmith_f_op_f32(var_1.c * 1000f))))));
    return 1u;
}

fn func_1() -> vec3<bool> {
    global1 = array<vec2<f32>, 20>();
    var var_0 = max(_wgslsmith_mult_u32(func_2(global3.a.a, firstTrailingBit(u_input.a), ~(-7758i)), 1796u), global3.a.a.a) >= ~1u;
    global1 = array<vec2<f32>, 20>();
    let var_1 = Struct_3(global3.a, !all(vec2<bool>(true, global3.b)) || !global3.b, abs(vec2<i32>(_wgslsmith_div_i32(-u_input.a, ~48461i), global3.c.x)));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>((_wgslsmith_clamp_u32(0u, 37856u, var_1.a.b.a) ^ _wgslsmith_mult_u32(var_1.a.a.a, u_input.b.x)) >> (~_wgslsmith_div_u32(global3.a.b.a, var_1.a.b.a) % 32u), 22554u, 26251u), firstLeadingBit(u_input.b.yxz));
    return !select(global2[_wgslsmith_index_u32(u_input.b.x << (41623u % 32u), 16u)], !global2[_wgslsmith_index_u32(4294967295u, 16u)], var_1.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    let var_0 = global3.a.a;
    let var_1 = global0[_wgslsmith_index_u32(25070u, 19u)];
    global3 = Struct_3(Struct_2(Struct_1(4294967295u, -1i), global3.a.a), any(vec3<bool>(global3.b, arg_2, true)), ~global3.c);
    global2 = array<vec3<bool>, 16>();
    let var_2 = global3.a;
    return Struct_2(arg_1, Struct_1(global3.a.b.a, countOneBits(-u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 19>();
    global2 = array<vec3<bool>, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(86886u, 19u)], 110f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(global3.a.b.a, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], -463f, -1052f), vec4<f32>(-583f, global0[_wgslsmith_index_u32(9941u, 19u)], global0[_wgslsmith_index_u32(global3.a.a.a, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(global3.b, global3.b, global3.b, global3.b)))))));
    var var_1 = func_4(select(func_1(), select(!vec3<bool>(global3.b, global3.b, global3.b), vec3<bool>(true, false, true), true), !(!any(vec2<bool>(true, true)))), Struct_1(global3.a.b.a, u_input.a), global3.b);
    let var_2 = Struct_5(!(global0[_wgslsmith_index_u32(~(~1u), 19u)] == -1101f), global3.b && true, func_4(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.a.a, ~countOneBits(1u)), 16u)], func_4(vec3<bool>(!global3.b, any(vec2<bool>(global3.b, global3.b)), true), Struct_1(global3.a.a.a, -51649i), global3.b).a, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1059f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(113f, -470f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1189f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(6900u, 19u)] - var_0.x)))), _wgslsmith_f_op_f32(436f - -1240f), global0[_wgslsmith_index_u32(58266u, 19u)]), _wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, global3.c.x), vec3<i32>(var_2.c.b.b, var_2.c.a.b, -1i)), _wgslsmith_mod_i32(27722i, global3.a.b.b), _wgslsmith_dot_vec2_i32(global3.c, global3.c), var_2.c.a.b), firstLeadingBit(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_2.c.a.b, var_2.c.b.b, u_input.a, var_1.a.b)), vec4<i32>(-30619i, 44292i, var_2.c.a.b, global3.c.x)))), global3.a.a.a, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(func_4(vec3<bool>(global3.b, var_2.b, var_2.b), Struct_1(1u, var_2.c.a.b), global3.b), var_2.a, ~vec2<i32>(var_2.c.a.b, -2147483647i)), 1u & ~global3.a.b.a, firstTrailingBit(~u_input.b.xxy), Struct_3(var_2.c, false, abs(global3.c)))).x));
}

