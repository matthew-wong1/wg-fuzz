struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(0i, 0i), vec4<f32>(-726f, -1535f, 323f, 175f), 1070f, 248f);

var<private> global1: u32 = 28294u;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(1i, 8381i), vec4<f32>(156f, -187f, 161f, 785f), -1000f, 132f), Struct_1(vec2<i32>(1i, -1i), vec4<f32>(-250f, -1000f, -827f, -1007f), -479f, -432f));

var<private> global3: array<f32, 16> = array<f32, 16>(668f, -564f, -405f, -891f, 575f, 635f, -611f, -804f, 259f, 839f, -967f, 793f, -829f, -645f, 1000f, 1863f);

var<private> global4: vec2<u32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    global1 = 0u;
    let var_0 = true;
    global4 = countOneBits(~select(~_wgslsmith_mod_vec2_u32(vec2<u32>(50186u, 12367u), vec2<u32>(1u, global4.x)), max(vec2<u32>(1u, 52408u), ~vec2<u32>(35547u, 62538u)), var_0 & all(vec4<bool>(false, var_0, false, true))));
    var var_1 = global4.x;
    let var_2 = vec4<f32>(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1025f + global0.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 16u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0.b.x)))))), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(abs(global4.x), global4.x) ^ countOneBits(~_wgslsmith_sub_u32(global4.x, global4.x)), 16u)]);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, 1053f, global3[_wgslsmith_index_u32(47855u, 16u)], -476f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(147f, 399f, -2743f, var_2.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global3[_wgslsmith_index_u32(global4.x, 16u)], global3[_wgslsmith_index_u32(global4.x, 16u)], global0.b.x) - global0.b)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, global0.c, global0.d, global0.d)))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, _wgslsmith_div_u32(arg_0.x ^ global4.x, ~arg_0.x), max(countOneBits(28498u), arg_0.x | 0u)), firstLeadingBit(vec3<u32>(1u >> (~global4.x % 32u), firstTrailingBit(arg_0.x) << (arg_0.x % 32u), global4.x)));
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(reverseBits(arg_0.x | global4.x), 2u)], Struct_1(-vec2<i32>(global0.a.x ^ 14767i, select(global0.a.x, arg_2.b.a.x, arg_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.c, -416f, 1354f), _wgslsmith_f_op_vec4_f32(func_3()), vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_vec4_f32(func_3()).x, global3[_wgslsmith_index_u32(4294967295u, 16u)]), arg_2.a);
    var_1 = Struct_2(global2[_wgslsmith_index_u32(global4.x, 2u)], Struct_1(vec2<i32>(2147483647i, 0i), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.c) * _wgslsmith_f_op_f32(f32(-1f) * -2113f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.d - var_1.c.c) + _wgslsmith_div_f32(1450f, -1453f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(0u, 16u)])) * _wgslsmith_f_op_f32(sign(var_1.b.d)))), _wgslsmith_f_op_f32(min(-762f, 2677f)), _wgslsmith_f_op_f32(var_1.a.c - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(646f, 1655f)))), Struct_1(~_wgslsmith_mod_vec2_i32(min(global0.a, vec2<i32>(-2147483647i, u_input.a.x)), vec2<i32>(arg_2.c.a.x, arg_2.a.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-355f, arg_2.c.c, arg_1, -746f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, 598f, global3[_wgslsmith_index_u32(1u, 16u)], global0.d))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b.x, arg_2.c.b.x, arg_1, 1127f))))), global0.b.x, _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(438f)))))));
    global4 = vec2<u32>(arg_0.x, global4.x);
    let var_2 = Struct_1(-select(_wgslsmith_mod_vec2_i32(abs(u_input.a.yw), _wgslsmith_sub_vec2_i32(global0.a, u_input.a.wx)), _wgslsmith_mult_vec2_i32(select(global0.a, vec2<i32>(arg_2.c.a.x, -1i), false), vec2<i32>(u_input.a.x, arg_2.c.a.x)), arg_3 | arg_3), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b * arg_2.b.b), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -559f), _wgslsmith_f_op_f32(arg_2.a.b.x - global0.d), _wgslsmith_f_op_f32(1274f * 919f), arg_2.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(arg_1 - arg_1)))), global3[_wgslsmith_index_u32(~1u, 16u)]);
    return arg_3;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global3 = array<f32, 16>();
    var var_0 = arg_3.a;
    global0 = Struct_1(-vec2<i32>(0i, -2147483647i), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-823f, 1109f, any(vec3<bool>(true, false, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1155f * var_0.d)), _wgslsmith_f_op_f32(select(229f, 1335f, arg_1.x)), _wgslsmith_f_op_f32(-var_0.d)), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1860f)) * _wgslsmith_f_op_f32(min(var_0.b.x, global0.d))), 262f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(242f + global3[_wgslsmith_index_u32(arg_2, 16u)]), _wgslsmith_f_op_f32(ceil(1000f)))))), _wgslsmith_f_op_f32(abs(-335f)), 478f);
    var var_1 = !select(select(select(!vec4<bool>(true, false, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(false, arg_1.x, true, false), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), !vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(func_2(vec2<u32>(arg_2, 18932u), global0.d, Struct_2(arg_3.b, Struct_1(u_input.a.zy, arg_3.a.b, -181f, global3[_wgslsmith_index_u32(global4.x, 16u)]), Struct_1(vec2<i32>(arg_3.a.a.x, arg_3.b.a.x), global0.b, -1465f, -2072f)), arg_1.x), true, all(vec4<bool>(false, arg_1.x, true, false)), all(vec3<bool>(true, arg_1.x, arg_1.x)))), vec4<bool>(-1i == arg_3.c.a.x, 23380u >= _wgslsmith_dot_vec2_u32(vec2<u32>(57988u, 21699u), vec2<u32>(arg_2, 0u)), arg_1.x, select(arg_1.x, true, true)), arg_1.x);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.d)), _wgslsmith_f_op_f32(1099f * var_0.d), _wgslsmith_f_op_f32(sign(-122f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * global3[_wgslsmith_index_u32(arg_0, 16u)]) - _wgslsmith_f_op_f32(var_0.c * -106f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.c.b.x))))));
    return global2[_wgslsmith_index_u32(1u, 2u)];
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = global2[_wgslsmith_index_u32(global4.x, 2u)];
    let var_1 = func_4((1u >> (min(min(global4.x, global4.x), 14245u) % 32u)) ^ ~4294967295u, arg_0.xwz, 4294967295u, arg_1);
    global0 = global2[_wgslsmith_index_u32(~(~1u), 2u)];
    global4 = vec2<u32>(_wgslsmith_mod_u32(26240u, _wgslsmith_add_u32(global4.x, global4.x)), global4.x) << (((min(select(vec2<u32>(global4.x, global4.x), vec2<u32>(global4.x, global4.x), arg_0.yx), vec2<u32>(43360u, 41222u)) ^ ~(~vec2<u32>(global4.x, global4.x))) & ~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global4.x, 1u), vec2<u32>(global4.x, 24020u)), vec2<u32>(0u, 0u))) % vec2<u32>(32u));
    global3 = array<f32, 16>();
    return _wgslsmith_clamp_vec3_i32(u_input.a.wzz, ~u_input.a.yzx, vec3<i32>(-28706i, 0i, countOneBits(var_0.a.x)) & (vec3<i32>(-1i) * -u_input.a.wwx));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = global2[_wgslsmith_index_u32(global4.x, 2u)];
    global1 = 24195u;
    let var_1 = func_5(!(!vec4<bool>(true, true, -15007i != var_0.a.x, true)), Struct_2(Struct_1(vec2<i32>(abs(var_0.a.x), firstTrailingBit(2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b.x, var_0.b.x, -400f, var_0.d) + var_0.b), global0.d, var_0.c), func_4(_wgslsmith_div_u32(global4.x, 1u), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, func_2(vec2<u32>(global4.x, 0u), 1000f, Struct_2(arg_0.c, global2[_wgslsmith_index_u32(4294967295u, 2u)], Struct_1(u_input.a.xw, arg_0.b.b, global0.c, arg_1.d)), false)), reverseBits(global4.x), Struct_2(Struct_1(vec2<i32>(20925i, -6345i), vec4<f32>(var_0.b.x, global0.c, arg_0.a.d, 1712f), -1727f, arg_0.b.d), Struct_1(vec2<i32>(var_0.a.x, var_0.a.x), vec4<f32>(-355f, arg_1.b.x, var_0.d, arg_1.b.x), var_0.c, 2120f), Struct_1(vec2<i32>(-2147483647i, -18798i), vec4<f32>(arg_1.b.x, -1677f, -1000f, global0.c), 706f, -157f))), arg_0.b));
    global2 = array<Struct_1, 2>();
    var var_2 = arg_1.b;
    return select(!vec3<bool>(all(vec2<bool>(false, false)) || select(true, false, true), true, true), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f + arg_1.d)) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-509f, -818f) - global0.b.x), !all(vec3<bool>(true, true, true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 2>();
    var var_0 = select(select(vec3<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), all(func_1(Struct_2(global2[_wgslsmith_index_u32(global4.x, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(global4.x, 2u)]), Struct_1(vec2<i32>(-1i, -23899i), vec4<f32>(-295f, 403f, 346f, global3[_wgslsmith_index_u32(4294967295u, 16u)]), -780f, global3[_wgslsmith_index_u32(global4.x, 16u)]))), true), vec3<bool>(true, true, true), func_1(Struct_2(func_4(7340u, vec3<bool>(false, false, true), global4.x, Struct_2(Struct_1(global0.a, global0.b, 790f, global3[_wgslsmith_index_u32(global4.x, 16u)]), Struct_1(vec2<i32>(-2147483647i, u_input.a.x), global0.b, global3[_wgslsmith_index_u32(global4.x, 16u)], global0.b.x), Struct_1(u_input.a.wz, vec4<f32>(1604f, global0.d, -427f, -1000f), global0.c, -1207f))), Struct_1(vec2<i32>(global0.a.x, 39284i), global0.b, global3[_wgslsmith_index_u32(1u, 16u)], -895f), Struct_1(global0.a, global0.b, global0.d, 2028f)), func_4(global4.x, func_1(Struct_2(global2[_wgslsmith_index_u32(global4.x, 2u)], Struct_1(vec2<i32>(-34520i, u_input.a.x), vec4<f32>(global3[_wgslsmith_index_u32(global4.x, 16u)], 1263f, 1884f, global3[_wgslsmith_index_u32(global4.x, 16u)]), -133f, global0.c), Struct_1(vec2<i32>(global0.a.x, 0i), vec4<f32>(global3[_wgslsmith_index_u32(global4.x, 16u)], -1034f, 524f, -660f), global3[_wgslsmith_index_u32(31447u, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)])), global2[_wgslsmith_index_u32(global4.x, 2u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, global4.x), vec2<u32>(16230u, 20212u)), Struct_2(Struct_1(u_input.a.zz, vec4<f32>(946f, global3[_wgslsmith_index_u32(global4.x, 16u)], 215f, 1239f), 819f, 376f), global2[_wgslsmith_index_u32(global4.x, 2u)], Struct_1(global0.a, global0.b, global0.d, global0.d))))), !vec3<bool>(!any(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_f32(abs(global0.d)) < _wgslsmith_f_op_f32(294f - global0.b.x), true), !(true & any(func_1(Struct_2(global2[_wgslsmith_index_u32(8670u, 2u)], global2[_wgslsmith_index_u32(28793u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]), Struct_1(vec2<i32>(-2147483647i, -31422i), global0.b, 316f, -1000f)).xz)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global4.x), abs(~reverseBits(global4.x)), _wgslsmith_div_i32(0i, 66992i >> (~(~global4.x) % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.b.wyx)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.b.yww + vec3<f32>(global3[_wgslsmith_index_u32(38557u, 16u)], global3[_wgslsmith_index_u32(74729u, 16u)], -960f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-355f, 365f, global0.d), global0.b.xzy, vec3<bool>(var_0.x, var_0.x, false)))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-636f + global0.b.x), global3[_wgslsmith_index_u32(1u, 16u)], var_0.x)), global0.c, global0.b.x), vec3<bool>(!var_0.x, !var_0.x, select(var_0.x, !var_0.x, var_0.x)))), -_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(2147483647i, u_input.a.x, global0.a.x)), -u_input.a.wzw), select(-vec3<i32>(global0.a.x, u_input.a.x, 0i), vec3<i32>(-40981i, 2147483647i, 1i) | vec3<i32>(u_input.a.x, -27712i, u_input.a.x), select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, false)))));
}

