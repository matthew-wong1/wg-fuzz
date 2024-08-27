struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-211f, vec3<f32>(1000f, 714f, 1000f), vec2<f32>(597f, -473f), vec2<u32>(114u, 0u), vec4<i32>(2147483647i, 0i, 2147483647i, 15824i)), Struct_1(-405f, vec3<f32>(-1637f, 296f, -2308f), vec2<f32>(-1515f, 1039f), vec2<u32>(1u, 1u), vec4<i32>(-40366i, -23492i, -16783i, i32(-2147483648))), Struct_1(-647f, vec3<f32>(-294f, 280f, 1121f), vec2<f32>(-823f, 126f), vec2<u32>(4294967295u, 0u), vec4<i32>(-3957i, 1i, 1i, 30937i)), Struct_1(-481f, vec3<f32>(-1095f, -622f, -2176f), vec2<f32>(-1000f, 568f), vec2<u32>(62182u, 4294967295u), vec4<i32>(-1i, 23479i, 0i, i32(-2147483648))), Struct_1(165f, vec3<f32>(-227f, 1000f, 774f), vec2<f32>(-1028f, 579f), vec2<u32>(26043u, 1u), vec4<i32>(2147483647i, 74416i, i32(-2147483648), i32(-2147483648))), Struct_1(395f, vec3<f32>(-357f, -477f, -342f), vec2<f32>(-648f, -1000f), vec2<u32>(4294967295u, 10073u), vec4<i32>(-39338i, i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_1(-438f, vec3<f32>(509f, 1353f, 1345f), vec2<f32>(2176f, 670f), vec2<u32>(4294967295u, 38718u), vec4<i32>(-31691i, 0i, 35729i, i32(-2147483648))), Struct_1(603f, vec3<f32>(-544f, 1255f, -1036f), vec2<f32>(1000f, -1000f), vec2<u32>(6429u, 0u), vec4<i32>(-3055i, -54143i, -30426i, -26258i)), Struct_1(126f, vec3<f32>(324f, -1112f, -346f), vec2<f32>(1371f, -953f), vec2<u32>(53667u, 97104u), vec4<i32>(0i, 11992i, i32(-2147483648), 2147483647i)), Struct_1(-2294f, vec3<f32>(-2292f, 194f, 1000f), vec2<f32>(-1000f, -1259f), vec2<u32>(46641u, 4294967295u), vec4<i32>(-1i, 1i, -67881i, 1i)), Struct_1(328f, vec3<f32>(449f, -1199f, -561f), vec2<f32>(-1000f, -254f), vec2<u32>(15999u, 1u), vec4<i32>(43537i, i32(-2147483648), -43208i, -20601i)), Struct_1(251f, vec3<f32>(-2113f, 134f, -832f), vec2<f32>(367f, -667f), vec2<u32>(1u, 1u), vec4<i32>(-10922i, 53249i, -36698i, 11667i)), Struct_1(-1902f, vec3<f32>(-2222f, -1000f, -1154f), vec2<f32>(478f, -954f), vec2<u32>(20707u, 3783u), vec4<i32>(0i, 0i, -1i, -13241i)), Struct_1(1000f, vec3<f32>(-1743f, -608f, -1029f), vec2<f32>(-885f, 1255f), vec2<u32>(15858u, 4294967295u), vec4<i32>(-19611i, 2147483647i, -30273i, 3625i)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(~(~u_input.c), 14u)];
    var var_1 = u_input.a.x;
    var_0 = Struct_1(-1204f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-716f, var_0.b.x, 854f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 257f, var_0.a) - vec3<f32>(var_0.c.x, var_0.a, var_0.a)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.c.x, var_0.a))))), var_0.c, ~_wgslsmith_mod_vec2_u32(var_0.d, ~(~u_input.d.wy)), vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.yy, _wgslsmith_add_vec2_i32(vec2<i32>(-8463i, global1.x), select(vec2<i32>(-81454i, -2147483647i), vec2<i32>(53110i, 0i), false))), _wgslsmith_clamp_i32(global1.x, var_0.e.x, -61923i), -32467i ^ select(-1i, _wgslsmith_dot_vec2_i32(global1.zw, vec2<i32>(0i, global1.x)), all(vec4<bool>(false, true, false, false)))));
    var var_2 = true;
    let var_3 = ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(7885u, var_0.d.x), u_input.d.wz), ~vec2<u32>(1u, abs(92141u)));
    return var_0.a;
}

fn func_3() -> i32 {
    global3 = array<Struct_1, 14>();
    global1 = firstLeadingBit(-countOneBits(firstTrailingBit(vec4<i32>(global1.x, u_input.a.x, u_input.a.x, -1i) | vec4<i32>(-14033i, 31560i, 22354i, -2147483647i))));
    global1 = vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(-u_input.a.zy, vec2<i32>(global1.x, global1.x) ^ vec2<i32>(u_input.a.x, -1i), vec2<i32>(global1.x, global1.x)), ~(~vec2<i32>(1i, u_input.b))), -max(reverseBits(28917i >> (u_input.e % 32u)), ~(~(-1i))), global1.x);
    global3 = array<Struct_1, 14>();
    global2 = array<Struct_1, 28>();
    return ~abs(_wgslsmith_div_i32(global1.x, ~(global1.x | -2147483647i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(1860f * 907f), _wgslsmith_f_op_f32(floor(arg_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a, _wgslsmith_f_op_f32(-arg_1.c.x)))), _wgslsmith_div_f32(arg_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.c.x * -580f), _wgslsmith_f_op_f32(-arg_3.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1907f)), arg_1.a, -1293f)));
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_3.c.x, -1616f), vec3<f32>(arg_3.b.x, _wgslsmith_f_op_f32(func_2()), arg_3.c.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x + var_0.x) * _wgslsmith_f_op_f32(exp2(var_0.x)))))), arg_1.d, vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(), abs(1i)), _wgslsmith_sub_vec2_i32(firstLeadingBit(arg_0.zz), arg_1.e.xw)), select(abs(_wgslsmith_mod_i32(arg_0.x, -24469i)), select(2147483647i, firstTrailingBit(arg_3.e.x), arg_2 | false), all(select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), arg_2))), -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_1.e.xwz, vec3<i32>(-1i, -2147483647i, arg_0.x)), _wgslsmith_mult_vec3_i32(arg_0, global1.xwx))));
    var var_2 = countOneBits(_wgslsmith_mod_i32(reverseBits(~(~20569i)), -1i));
    let var_3 = ~vec2<i32>(arg_1.e.x, ~2147483647i);
    var var_4 = u_input.c;
    return _wgslsmith_div_f32(1528f, 753f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 28>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1512f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(216f + 466f) * _wgslsmith_f_op_f32(func_1(u_input.a, global3[_wgslsmith_index_u32(u_input.e, 14u)], true, global3[_wgslsmith_index_u32(u_input.d.x, 14u)])))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-169f, 1788f, true)), 1496f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1420f + -2456f) + 251f), _wgslsmith_f_op_f32(f32(-1f) * -1701f)) + vec3<f32>(-322f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-1577f * -1127f))), _wgslsmith_div_f32(869f, _wgslsmith_div_f32(708f, -993f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1217f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1341f, -270f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-455f, 657f) + vec2<f32>(783f, 1003f)), vec2<f32>(986f, 646f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-584f, 129f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(660f, -1284f))))), ~_wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.d.yy, vec2<u32>(21136u, u_input.e)), vec2<u32>(4294967295u, _wgslsmith_sub_u32(u_input.d.x, 1u))), vec4<i32>(global1.x, global1.x, ~firstTrailingBit(u_input.b), ~1i));
    global1 = -_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(16114i, -17545i), var_0.e.zx | vec2<i32>(-1i, var_0.e.x)), 2147483647i, global1.x, 1i), _wgslsmith_div_vec4_i32(var_0.e, vec4<i32>(global1.x, global1.x, global1.x, firstTrailingBit(22947i))));
    global0 = func_3() > u_input.a.x;
    let var_1 = global2[_wgslsmith_index_u32(~(~0u), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(var_0.d, ~var_1.d)), i32(-1i) * -21087i, _wgslsmith_f_op_f32(abs(-123f)));
}

