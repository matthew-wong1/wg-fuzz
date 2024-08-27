struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true, vec2<bool>(true, true), vec3<i32>(-44679i, 0i, i32(-2147483648)), true), Struct_1(false, vec2<bool>(true, false), vec3<i32>(23059i, -31153i, 8053i), false), Struct_1(false, vec2<bool>(true, false), vec3<i32>(-34522i, 56914i, 2147483647i), true), Struct_1(false, vec2<bool>(false, true), vec3<i32>(-1i, 29919i, -52644i), false), Struct_1(true, vec2<bool>(false, false), vec3<i32>(2147483647i, 1507i, 53980i), true), Struct_1(false, vec2<bool>(true, true), vec3<i32>(-22506i, 16440i, i32(-2147483648)), true), Struct_1(true, vec2<bool>(true, true), vec3<i32>(2147483647i, -1i, 23511i), true), Struct_1(true, vec2<bool>(true, true), vec3<i32>(-1i, -27423i, 1i), false), Struct_1(true, vec2<bool>(true, false), vec3<i32>(0i, 8847i, i32(-2147483648)), false), Struct_1(true, vec2<bool>(true, true), vec3<i32>(0i, 418i, 0i), true), Struct_1(false, vec2<bool>(true, true), vec3<i32>(-19965i, 6576i, i32(-2147483648)), true), Struct_1(false, vec2<bool>(true, false), vec3<i32>(-51433i, 2147483647i, -1i), true), Struct_1(true, vec2<bool>(false, false), vec3<i32>(-28146i, 48620i, i32(-2147483648)), false), Struct_1(false, vec2<bool>(false, false), vec3<i32>(1i, 0i, 14309i), false), Struct_1(true, vec2<bool>(true, false), vec3<i32>(-1i, 43025i, 24664i), false), Struct_1(false, vec2<bool>(true, false), vec3<i32>(-1i, 2147483647i, -1i), true), Struct_1(false, vec2<bool>(true, true), vec3<i32>(1i, -75160i, i32(-2147483648)), false), Struct_1(false, vec2<bool>(false, false), vec3<i32>(-1i, -18830i, -45181i), true), Struct_1(true, vec2<bool>(false, false), vec3<i32>(0i, 15947i, 2147483647i), true), Struct_1(true, vec2<bool>(true, true), vec3<i32>(0i, i32(-2147483648), 2147483647i), true), Struct_1(false, vec2<bool>(false, false), vec3<i32>(0i, 42632i, 0i), true), Struct_1(true, vec2<bool>(true, false), vec3<i32>(20208i, 2147483647i, -4338i), false), Struct_1(false, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), false), Struct_1(false, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 26639i, i32(-2147483648)), false), Struct_1(true, vec2<bool>(false, false), vec3<i32>(-5732i, 2147483647i, -28014i), false), Struct_1(true, vec2<bool>(true, false), vec3<i32>(41377i, 2147483647i, i32(-2147483648)), true), Struct_1(true, vec2<bool>(true, true), vec3<i32>(-34775i, 1i, 2147483647i), false), Struct_1(true, vec2<bool>(false, false), vec3<i32>(22840i, -7467i, -18470i), true), Struct_1(false, vec2<bool>(false, true), vec3<i32>(0i, 2147483647i, -1i), false));

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(195f, -939f, -825f), vec3<f32>(766f, -960f, 1526f), vec3<f32>(-682f, 2056f, 1000f), vec3<f32>(1575f, 2013f, -979f), vec3<f32>(-1600f, -155f, 647f), vec3<f32>(2058f, -188f, 376f), vec3<f32>(-204f, -750f, -399f), vec3<f32>(2164f, -1145f, 273f), vec3<f32>(492f, 249f, -1322f));

var<private> global3: Struct_1 = Struct_1(true, vec2<bool>(false, true), vec3<i32>(34190i, 2147483647i, 0i), true);

var<private> global4: array<vec4<i32>, 6>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global3 = arg_1;
    var var_0 = ~_wgslsmith_add_i32(1i, 27128i);
    global3 = arg_0;
    let var_1 = global2[_wgslsmith_index_u32(~(~1u), 9u)];
    let var_2 = _wgslsmith_f_op_f32(trunc(172f));
    return !select(select(global1.b, select(select(global3.b, arg_0.b, arg_3.b), select(arg_3.b, arg_1.b, arg_1.b), !vec2<bool>(arg_0.b.x, arg_1.a)), true), select(vec2<bool>(false, any(vec4<bool>(false, true, arg_1.a, arg_0.b.x))), vec2<bool>(all(vec2<bool>(arg_3.b.x, global1.d)), arg_0.d), !vec2<bool>(false, global3.d)), arg_1.b);
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = arg_0;
    var var_1 = var_0.c;
    var var_2 = Struct_1(true, func_3(global0[_wgslsmith_index_u32(10351u, 29u)], Struct_1(false, vec2<bool>(false, global1.b.x), countOneBits(-vec3<i32>(arg_0.c.x, u_input.a.x, u_input.a.x)), false), Struct_1(_wgslsmith_add_u32(u_input.b, u_input.b) == min(u_input.b, u_input.b), vec2<bool>(global1.d & false, any(vec2<bool>(global3.b.x, false))), vec3<i32>(30492i, -6831i, _wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(u_input.b, 6u)], vec4<i32>(u_input.a.x, -38783i, 5219i, global1.c.x))), true), Struct_1(true, !(!vec2<bool>(var_0.b.x, arg_0.b.x)), global3.c, select(any(vec4<bool>(false, false, var_0.d, true)), false, any(vec2<bool>(true, var_0.b.x))))), -_wgslsmith_mod_vec3_i32(global3.c, countOneBits(_wgslsmith_div_vec3_i32(arg_0.c, vec3<i32>(1i, -2147483647i, 17298i)))), all(select(!(!vec3<bool>(global1.d, global3.a, true)), select(vec3<bool>(true, true, true), !vec3<bool>(true, global1.b.x, false), true), select(!vec3<bool>(false, true, global1.b.x), vec3<bool>(arg_0.a, arg_0.d, arg_0.a), global3.b.x))));
    return vec4<u32>(_wgslsmith_div_u32(u_input.b >> (90157u % 32u), u_input.b), ~u_input.b & 4294967295u, reverseBits((u_input.b >> (u_input.b % 32u)) & _wgslsmith_add_u32(54743u, 47598u)), _wgslsmith_dot_vec3_u32(~((vec3<u32>(21376u, u_input.b, 4294967295u) | vec3<u32>(4294967295u, 4294967295u, 0u)) | vec3<u32>(u_input.b, 1u, 7334u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, u_input.b, 6663u))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = reverseBits(~(~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(27536u, u_input.b, 33909u, u_input.b), vec4<u32>(1u, 4294967295u, 5221u, u_input.b)), func_2(global0[_wgslsmith_index_u32(u_input.b, 29u)]))));
    var var_1 = Struct_1(!(any(vec4<bool>(global1.b.x, global1.d, global3.d, arg_0.d)) && !arg_0.a) && all(vec3<bool>(true, true, var_0.x != 4294967295u)), func_3(global0[_wgslsmith_index_u32(1u | max(u_input.b | u_input.b, 1u), 29u)], Struct_1(true | (false && global3.a), global1.b, select(-vec3<i32>(global1.c.x, global3.c.x, global3.c.x), vec3<i32>(global3.c.x, 1i, 2147483647i), !arg_0.a), !(!global1.d)), Struct_1(~u_input.b >= _wgslsmith_div_u32(10261u, var_0.x), !(!vec2<bool>(global3.b.x, true)), _wgslsmith_mult_vec3_i32(select(global3.c, vec3<i32>(arg_0.c.x, u_input.a.x, u_input.a.x), global1.d), ~arg_0.c), false), Struct_1(!arg_0.b.x, func_3(Struct_1(true, arg_0.b, arg_0.c, arg_0.d), Struct_1(true, vec2<bool>(true, global3.b.x), arg_0.c, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(28301u, 3590u), 29u)], Struct_1(false, vec2<bool>(global3.a, false), global3.c, global1.b.x)), vec3<i32>(min(u_input.a.x, 2147483647i), arg_0.c.x, -2147483647i ^ arg_0.c.x), any(global3.b))), arg_0.c, true);
    let var_2 = ~abs(select(0u, u_input.b, arg_0.b.x));
    var var_3 = arg_0;
    var_3 = Struct_1(var_1.d, func_3(global0[_wgslsmith_index_u32(~(~var_0.x) ^ ~1u, 29u)], arg_0, Struct_1(false, var_1.b, global3.c, !var_3.d), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, 4294967295u) << (~1u % 32u), 29u)]), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(30860i, select(48771i, -38479i, false), 1i), vec3<i32>(abs(var_1.c.x), ~global3.c.x, global3.c.x), -vec3<i32>(1i, 0i, arg_0.c.x)), _wgslsmith_add_vec3_i32(var_1.c, -_wgslsmith_sub_vec3_i32(global3.c, arg_0.c)), true), !arg_0.d);
    return Struct_1(false || (all(!vec3<bool>(var_3.a, var_3.d, true)) || true), select(!(!vec2<bool>(false, global1.b.x)), !vec2<bool>(false, all(vec3<bool>(false, var_3.a, arg_0.b.x))), true), _wgslsmith_div_vec3_i32(global1.c, select(~firstTrailingBit(vec3<i32>(var_3.c.x, global3.c.x, u_input.a.x)), global1.c, vec3<bool>(all(vec3<bool>(false, global1.b.x, global3.a)), true, !var_1.a))), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(u_input.b << (u_input.b % 32u), 29u)]);
    var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2474f * 861f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -604f)), vec2<bool>(true, any(func_1(global0[_wgslsmith_index_u32(1u, 29u)]).b)), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.c.x, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, global1.c.x)), ~(~var_0.c.x)), var_0.d));
    let var_1 = func_1(Struct_1(all(!select(vec4<bool>(global1.b.x, global1.b.x, global3.d, global3.d), vec4<bool>(var_0.d, true, true, true), vec4<bool>(var_0.d, false, global3.d, true))), !(!global1.b), global3.c, global1.a));
    var var_2 = global0[_wgslsmith_index_u32(u_input.b, 29u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-332f * _wgslsmith_f_op_f32(f32(-1f) * -917f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1075f) - _wgslsmith_f_op_f32(1247f - 285f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f + 806f)))));
    global1 = func_1(func_1(func_1(Struct_1(var_0.a, vec2<bool>(true, true), select(global1.c, vec3<i32>(var_0.c.x, global1.c.x, -9802i), vec3<bool>(true, false, false)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(493f, var_3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))), var_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -371f), global4[_wgslsmith_index_u32(u_input.b, 6u)]);
}

