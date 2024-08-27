struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 26>;

var<private> global2: Struct_1;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: array<vec4<f32>, 12>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<u32>) -> i32 {
    global0 = Struct_1(-9849i, -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(global2.b, vec4<i32>(global2.b.x, 1952i, global2.b.x, global2.b.x)), -37961i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(40066i, global0.a), global2.b.zw), global2.b.xz), -(~global2.b.x), global2.b.x), false, arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(step(397f, 1000f)))), global2.d));
    var var_0 = !(_wgslsmith_f_op_f32(1790f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1053f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * global2.d));
    global3 = !vec2<bool>(any(!select(vec3<bool>(global3.x, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), all(select(vec4<bool>(global0.c, false, true, false), select(vec4<bool>(true, false, global2.c, true), vec4<bool>(global2.c, true, true, global0.c), global0.c), global2.c)));
    var var_1 = false;
    global2 = Struct_1(~global2.a, global2.b, !(!global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e))) * arg_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2676f + 592f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1664f), _wgslsmith_f_op_f32(select(-2284f, -1116f, global2.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) * _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-arg_1)))));
    return _wgslsmith_add_i32(firstTrailingBit(global0.b.x & 2147483647i), global2.a);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = abs(2147483647i);
    return Struct_3(func_3(~(~11754u), _wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(u_input.b.x ^ u_input.a.x, 26u)], vec2<f32>(-1024f, -755f), vec2<bool>(global3.x, true)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(11579u, 40189u, u_input.b.x, u_input.a.x), vec4<u32>(u_input.b.x, u_input.a.x, 124868u, 0u)))), arg_0, Struct_1(max(-global2.a, 7486i), vec4<i32>(global0.a, -_wgslsmith_add_i32(global2.b.x, arg_0.b.x), 0i, abs(-2147483647i)), !(global0.a != global0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global2.e)), global2.e, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2004f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1602f, global0.d)))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2.b;
    var var_1 = true;
    let var_2 = _wgslsmith_mult_u32(u_input.b.x, ~(_wgslsmith_div_u32(~19247u, max(u_input.a.x, 1u)) & 0u));
    global1 = array<vec2<f32>, 26>();
    global0 = Struct_1(global2.a, arg_2.b.b, !(!arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * global0.e), _wgslsmith_f_op_f32(-arg_2.c.e)))) * _wgslsmith_f_op_f32(select(arg_2.c.d, 278f, var_0.c))), _wgslsmith_f_op_f32(-1000f * -1244f));
    return func_2(var_0);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_2 {
    global3 = select(select(select(vec2<bool>(select(false, arg_2, false), select(arg_2, arg_2, false)), !vec2<bool>(arg_1.b.c, arg_0.b.c), !vec2<bool>(arg_0.b.c, arg_1.b.c)), !(!select(vec2<bool>(false, false), vec2<bool>(false, global2.c), vec2<bool>(global0.c, arg_0.c.c))), !vec2<bool>(false != arg_0.c.c, true)), !vec2<bool>(!(false | arg_2), arg_1.b.c), vec2<bool>(true, true));
    let var_0 = vec3<bool>(!(_wgslsmith_add_u32(u_input.b.x >> (21126u % 32u), 1u) != 66171u), any(vec2<bool>((arg_1.b.c & false) && true, global0.c && true)), arg_1.b.c);
    global2 = Struct_1(max(42612i, 9667i), func_2(arg_1.b).c.b, func_2(arg_0.b).c.c, -1741f, 141f);
    global3 = select(var_0.zy, select(!vec2<bool>(arg_2, false), select(vec2<bool>(true, arg_0.b.c), !select(vec2<bool>(false, true), var_0.zz, arg_2), func_1(vec3<i32>(global0.a, -7944i, -2147483647i), true, Struct_3(6040i, arg_1.b, arg_1.b)).c.c), !any(!vec4<bool>(true, global0.c, true, false))), false && all(var_0));
    global1 = array<vec2<f32>, 26>();
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    var var_0 = 29590u;
    global2 = Struct_1(arg_1.b.a | 1i, -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b.b.x, 7319i, arg_0.b.a, arg_3.a), vec4<i32>(~26804i, global0.a, arg_3.b.x | global2.b.x, arg_1.b.b.x)), global2.b.x == (-2147483647i | (2147483647i ^ arg_2.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.d) * _wgslsmith_div_f32(-563f, -1399f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-318f)) * 575f));
    global3 = vec2<bool>(false, false);
    let var_1 = u_input.b.x;
    var var_2 = ~(vec4<u32>(1u, ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~4294967295u, abs(0u)) << (vec4<u32>(_wgslsmith_add_u32(var_1, var_1), 1u, reverseBits(0u), _wgslsmith_mod_u32(abs(21718u), 51045u)) % vec4<u32>(32u)));
    return ~(-(-2147483647i ^ -_wgslsmith_clamp_i32(0i, arg_3.a, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 26>();
    let var_0 = vec2<i32>(max(-2147483647i, global2.b.x), -func_5(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-315f, 1053f, global2.d, 1113f) - global4[_wgslsmith_index_u32(u_input.a.x, 12u)]), Struct_1(global2.b.x, vec4<i32>(global0.a, global0.a, -1i, global2.a), false, 1053f, global0.e)), func_4(func_1(global2.b.yyw, false, Struct_3(global2.b.x, Struct_1(global2.b.x, global0.b, true, global2.d, global2.e), Struct_1(global2.b.x, global2.b, global3.x, global2.e, -803f))), Struct_2(global4[_wgslsmith_index_u32(4294967295u, 12u)], Struct_1(2147483647i, global2.b, global0.c, 290f, global0.d)), true, countOneBits(u_input.b.x)), Struct_3(-global2.b.x, func_4(Struct_3(global0.b.x, Struct_1(global0.b.x, vec4<i32>(global0.a, global0.a, global2.a, global0.b.x), false, 774f, global2.e), Struct_1(-13412i, vec4<i32>(global2.b.x, 30848i, -15980i, -2147483647i), global3.x, -1022f, 1124f)), Struct_2(global4[_wgslsmith_index_u32(1u, 12u)], Struct_1(2147483647i, global0.b, global0.c, global0.e, 439f)), global0.c, 44794u).b, func_2(Struct_1(35416i, global2.b, global0.c, global2.d, 592f)).b), func_2(Struct_1(global0.b.x, global0.b, global2.c, 195f, global2.d)).b));
    global4 = array<vec4<f32>, 12>();
    let var_1 = true;
    var var_2 = Struct_3(0i, Struct_1(0i, firstTrailingBit(vec4<i32>(var_0.x, ~global2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.x, var_0.x, global2.b.x, var_0.x), vec4<i32>(-26392i, global0.b.x, 51823i, var_0.x)), -2147483647i)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.d * global0.d), func_1(global0.b.wxw, false, Struct_3(global2.a, Struct_1(global0.b.x, vec4<i32>(var_0.x, 52709i, 0i, var_0.x), global3.x, 1646f, global0.e), Struct_1(var_0.x, global0.b, global0.c, global2.e, 488f))).c.d))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.d)))))), Struct_1(_wgslsmith_add_i32(var_0.x, 1i), _wgslsmith_mod_vec4_i32(global2.b, global0.b), func_1(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global2.a, var_0.x), reverseBits(global2.b.zwx)), var_1, Struct_3(~1i, Struct_1(global0.b.x, global2.b, false, 1000f, global2.d), Struct_1(global0.a, global2.b, global2.c, global2.d, global2.e))).c.c, global0.e, _wgslsmith_f_op_f32(round(1f))));
    let var_3 = !select(vec3<bool>(true, true, true), !select(!vec3<bool>(global2.c, true, true), vec3<bool>(true, true, true), vec3<bool>(var_1, true, global2.c)), !(!select(vec3<bool>(global0.c, false, true), vec3<bool>(true, true, false), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global4[_wgslsmith_index_u32(u_input.b.x, 12u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, _wgslsmith_f_op_f32(var_2.c.e - var_2.b.e), _wgslsmith_f_op_f32(max(global0.d, var_2.b.e)), func_4(Struct_3(0i, Struct_1(43275i, global2.b, true, -382f, var_2.c.e), var_2.b), Struct_2(vec4<f32>(118f, 356f, 720f, var_2.b.d), var_2.b), true, u_input.b.x).a.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e, global2.d, var_2.b.e, -886f) * vec4<f32>(-2736f, global0.d, global2.e, -486f))))));
}

