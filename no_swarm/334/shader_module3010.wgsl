struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(-51625i, 3175f, vec3<f32>(-1000f, -1101f, -999f)), Struct_3(-19408i, -419f, vec3<f32>(-1480f, -125f, -720f)), Struct_3(-43675i, -1800f, vec3<f32>(254f, -1381f, -1465f)), Struct_3(0i, 1000f, vec3<f32>(-334f, 534f, -1365f)), Struct_3(0i, -600f, vec3<f32>(294f, -1112f, -214f)), Struct_3(0i, 323f, vec3<f32>(-923f, -592f, -233f)), Struct_3(4033i, 749f, vec3<f32>(-1205f, -485f, 1000f)), Struct_3(-1i, 1697f, vec3<f32>(-886f, 395f, -1184f)), Struct_3(-18023i, 318f, vec3<f32>(668f, -837f, 431f)), Struct_3(13767i, -772f, vec3<f32>(333f, -677f, 1664f)), Struct_3(21742i, 1000f, vec3<f32>(1151f, 158f, -107f)), Struct_3(i32(-2147483648), -395f, vec3<f32>(1000f, 611f, -873f)), Struct_3(2147483647i, 655f, vec3<f32>(1871f, 211f, -1122f)), Struct_3(-20124i, -1211f, vec3<f32>(780f, -354f, -1634f)), Struct_3(-9324i, -369f, vec3<f32>(1285f, -642f, -439f)), Struct_3(27646i, 1489f, vec3<f32>(-804f, 202f, -691f)));

var<private> global1: i32;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    global1 = 2147483647i;
    let var_0 = select(!global2.b, !vec4<bool>(49951i <= _wgslsmith_mult_i32(-1i, u_input.a), true, global2.c && (u_input.a == 0i), !global2.c), global2.b.x);
    var var_1 = Struct_1(global2.a, vec4<bool>(var_0.x, !arg_1, 30218u < (0u & _wgslsmith_mod_u32(arg_0, 27257u)), true), false);
    global1 = reverseBits(_wgslsmith_sub_i32(-40754i, ~1i));
    global2 = Struct_1(~u_input.a, vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -826f))) >= 665f, global2.c, var_0.x, !any(select(vec4<bool>(global2.b.x, var_0.x, var_1.c, false), vec4<bool>(false, true, false, true), arg_1))), all(var_0.zw));
    return _wgslsmith_sub_i32(-(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, u_input.a), var_1.a) >> (0u % 32u)), 1i);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_1(func_3(arg_2, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -6860i, -9507i), vec3<i32>(arg_0.a, u_input.a, 66145i))) > -(~(-2147483647i))), select(!(!(!global2.b)), select(vec4<bool>(all(global2.b.xy), false, false, !global2.b.x), !global2.b, false & global2.c), !(!vec4<bool>(global2.b.x, global2.b.x, global2.b.x, global2.c))), any(global2.b.xy));
    var var_1 = Struct_3(~(~(~u_input.a)) & -285i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-347f)) + -2678f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c * arg_0.c))), _wgslsmith_f_op_vec3_f32(arg_0.c + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b, 695f, arg_0.c.x))))));
    let var_2 = vec4<u32>(arg_2, 73436u, arg_2, arg_2);
    global0 = array<Struct_3, 16>();
    var var_3 = -4915i;
    return Struct_2(Struct_1(~(~0i), !vec4<bool>(!global2.b.x, select(true, false, true), true, true), global2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2069f - _wgslsmith_f_op_f32(trunc(-573f))) + 686f), reverseBits(vec3<u32>(_wgslsmith_add_u32(~4294967295u, 22274u), var_2.x, ~var_2.x)), select(var_2.wx, vec2<u32>(_wgslsmith_div_u32(reverseBits(var_2.x), 1u), ~4294967295u), !global2.b.yz));
}

fn func_1() -> i32 {
    let var_0 = reverseBits(-u_input.a);
    let var_1 = Struct_1(u_input.a, !select(!global2.b, !(!vec4<bool>(global2.b.x, global2.c, global2.b.x, global2.b.x)), select(global2.b, !vec4<bool>(true, true, false, global2.b.x), true)), global2.b.x);
    var var_2 = true;
    var var_3 = func_2(Struct_3(36775i, -394f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3595f) * _wgslsmith_f_op_f32(round(226f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(468f - -160f))), 1f)), vec2<i32>(0i, _wgslsmith_mod_i32(-global2.a, ~var_0)), ~(~reverseBits(5412u)));
    global2 = var_1;
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    var var_0 = global2.b.x;
    let var_1 = -vec2<i32>(1i, 1i);
    let var_2 = -vec2<i32>(48201i, global2.a);
    let var_3 = 9874u;
    let var_4 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.a, 18665i), vec2<i32>(global2.a & -19787i, 3296i), vec2<i32>(abs(2147483647i), _wgslsmith_add_i32(u_input.a | 2147483647i, (i32(-1i) * -54640i) & u_input.a)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3((_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2.a), vec2<i32>(0i, 2147483647i)) ^ func_1()) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 3568u, 10348u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u)) % 32u), -1394f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-207f, 1220f, 1002f)))))), Struct_2(Struct_1(~firstLeadingBit(u_input.a), global2.b, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -734f)), vec3<u32>(1u, 23456u, ~1u), _wgslsmith_mod_vec2_u32(~select(vec2<u32>(39124u, 4294967295u), vec2<u32>(4294967295u, 1u), global2.c), ~max(vec2<u32>(3464u, 20086u), vec2<u32>(4294967295u, 1u)))));
    var var_1 = 1u;
    var var_2 = global0[_wgslsmith_index_u32(0u, 16u)];
    var var_3 = min(vec2<i32>(_wgslsmith_mult_i32(global2.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a, -11680i, 1i, u_input.a), vec4<i32>(u_input.a, -1i, var_2.a, global2.a)), vec4<i32>(-2147483647i, var_0.a.a, u_input.a, 47286i))), countOneBits(-global2.a)), _wgslsmith_mod_vec2_i32(countOneBits(max(vec2<i32>(-2147483647i, var_0.a.a), vec2<i32>(0i, global2.a))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 488i), vec2<i32>(-25306i, 37255i)), vec2<i32>(u_input.a, -3548i))) | vec2<i32>(var_0.a.a, func_3(max(var_0.d.x, 24289u), all(vec4<bool>(var_0.a.b.x, false, true, var_0.a.b.x)))));
    let var_4 = 249f;
    global1 = var_2.a | _wgslsmith_sub_i32(_wgslsmith_mod_i32(select(global2.a, var_0.a.a, var_0.a.c) ^ u_input.a, u_input.a), u_input.a);
    let var_5 = var_4;
    var_0 = func_2(Struct_3(u_input.a, -594f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4, var_0.b, 255f))) * vec3<f32>(var_4, 1602f, _wgslsmith_f_op_f32(-1358f - var_4)))), vec2<i32>(var_2.a, 1i), ~var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4, 1019f, _wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(-885f - var_4)), vec4<f32>(_wgslsmith_f_op_f32(-748f * var_0.b), var_0.b, -330f, _wgslsmith_f_op_f32(round(1560f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c))), 2160f);
}

