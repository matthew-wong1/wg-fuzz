struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: Struct_1;

var<private> global3: array<f32, 30> = array<f32, 30>(-198f, 556f, 992f, -1000f, 1089f, 359f, -1000f, -1285f, 1117f, -1335f, -1458f, -922f, -1246f, 1284f, 582f, 1461f, -1000f, -984f, 746f, -415f, 1108f, -1000f, -304f, 1595f, 1669f, -311f, 442f, -980f, -215f, -403f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec4<i32> {
    global3 = array<f32, 30>();
    global3 = array<f32, 30>();
    global3 = array<f32, 30>();
    var var_0 = select(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(~13031u ^ max(19296u, global2.d.x), ~1u, 10838u, 4294967295u), global2.d >> ((~global2.d << (firstTrailingBit(global2.d) % vec4<u32>(32u))) % vec4<u32>(32u))), 0u == _wgslsmith_add_u32(global2.d.x & ~4294967295u, 4294967295u));
    let var_1 = vec3<f32>(729f, _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.d.x, 30u)] + _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 30u)]))));
    return reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(global2.c, global2.c, 1i, -26823i), vec4<i32>(global2.c, global2.c, 16307i, global2.c)), vec4<i32>(2147483647i, firstTrailingBit(global2.c), -1i, 2147483647i)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(global2.c, global2.c, global2.c, -1i)), min(firstTrailingBit(vec4<i32>(global2.c, -1i, global2.c, -2147483647i)), vec4<i32>(2147483647i, global2.c, 42178i, -2543i))), ~max(firstLeadingBit(vec4<i32>(2147483647i, global2.c, -2147483647i, global2.c)), reverseBits(vec4<i32>(-26273i, -1i, 0i, 9381i)))));
}

fn func_2() -> vec3<f32> {
    var var_0 = min(abs(vec4<i32>(1i, global2.c, _wgslsmith_sub_i32(-69799i | global2.c, firstTrailingBit(global2.c)), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -1i), ~vec2<i32>(global2.c, global2.c)))), -(func_3(-2053f, select(vec2<bool>(true, global2.a.x), global0[_wgslsmith_index_u32(u_input.a, 3u)], vec2<bool>(false, true))) | ~countOneBits(vec4<i32>(6017i, global2.c, -2147483647i, global2.c))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.d.x, 109673u), 14u)];
    var_1 = Struct_1(select(vec3<bool>(all(vec2<bool>(true, var_1.a.x)), any(vec2<bool>(false, true)), all(global2.a)), !vec3<bool>(var_1.a.x == true, any(vec4<bool>(false, global2.a.x, true, false)), global2.a.x), any(vec3<bool>(any(global0[_wgslsmith_index_u32(26853u, 3u)]), global2.a.x || true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b)) + _wgslsmith_f_op_f32(round(189f))) * -157f))), -countOneBits(i32(-1i) * -69476i), _wgslsmith_sub_vec4_u32(~(~(global2.d ^ vec4<u32>(0u, 26156u, u_input.a, 16883u))), _wgslsmith_add_vec4_u32(var_1.d, global2.d)));
    let var_2 = countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x << (6016u % 32u), max(var_1.c, global2.c)), var_0.wx)) == var_1.c;
    let var_3 = vec2<bool>(true, !(select(1i, _wgslsmith_clamp_i32(1i, -1i, -12592i), false) <= ~(-1i)));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(191f, -1000f, var_1.b) - vec3<f32>(1278f, var_1.b, 649f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1539f, global3[_wgslsmith_index_u32(global2.d.x, 30u)], global2.b))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, 1492f, -117f) * vec3<f32>(-297f, global2.b, 1473f))))))));
}

fn func_1() -> Struct_1 {
    global3 = array<f32, 30>();
    var var_0 = Struct_1(select(!select(!global2.a, vec3<bool>(global2.a.x, global2.a.x, global2.a.x), vec3<bool>(true, true, true)), vec3<bool>(global2.a.x | (global2.a.x | true), false, true), global2.a.x | global2.a.x), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.d.x, u_input.a), 30u)]), global2.c, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, 4294967295u & global2.d.x), 57162u & (0u ^ u_input.a)), ~(0u & ~u_input.b.x), global2.d.x, ~global2.d.x));
    global3 = array<f32, 30>();
    global1 = array<Struct_1, 14>();
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(737f, -972f, global3[_wgslsmith_index_u32(u_input.b.x, 30u)]) + vec3<f32>(var_0.b, global2.b, global2.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, 223f, -418f) - vec3<f32>(var_0.b, 1478f, global3[_wgslsmith_index_u32(var_0.d.x, 30u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1828f, 1392f, var_0.b) + vec3<f32>(global3[_wgslsmith_index_u32(30076u, 30u)], 708f, -709f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, -1021f, -904f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 30u)], 454f, var_0.b) - vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 30u)], -641f, -999f)))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_vec3_f32(func_2()).x, global3[_wgslsmith_index_u32(u_input.a, 30u)])));
    return global1[_wgslsmith_index_u32(67431u, 14u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(global2.b, 1000f))) + _wgslsmith_f_op_vec2_f32(trunc(arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) - vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.b)), _wgslsmith_f_op_f32(-121f * global2.b)))));
    var var_1 = global1[_wgslsmith_index_u32(~((0u ^ _wgslsmith_add_u32(1u, _wgslsmith_add_u32(0u, arg_1.d.x))) & _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2.d.x, 1u), global2.d.x), ~1u)), 14u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1469f, _wgslsmith_f_op_f32(981f - -598f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-973f + arg_0.x), _wgslsmith_f_op_f32(round(-453f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(29735u, 30u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1938f, arg_1.b, 234f, 149f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-780f, arg_1.b, 771f, var_0.x), vec4<f32>(arg_1.b, 347f, -1831f, -595f), vec4<bool>(true, true, arg_2.a.x, global2.a.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1070f, arg_0.x, 706f))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1031f, _wgslsmith_f_op_f32(var_1.b * arg_1.b), _wgslsmith_f_op_f32(sign(-1200f)), _wgslsmith_f_op_f32(ceil(arg_2.b))))))));
    let var_3 = firstLeadingBit(vec4<i32>(select(var_1.c, var_1.c, any(arg_1.a)), _wgslsmith_dot_vec4_i32(-vec4<i32>(38081i, var_1.c, arg_2.c, arg_1.c), ~vec4<i32>(1i, -1i, 1i, global2.c)), firstTrailingBit(var_1.c), arg_2.c >> (min(1u, global2.d.x) % 32u))) << ((vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.x, 1u, arg_2.d.x), vec3<u32>(41089u, arg_2.d.x, u_input.a)), arg_2.d.x, 1u, countOneBits(var_1.d.x)) ^ var_1.d) % vec4<u32>(32u));
    let var_4 = func_1().d.x;
    return 1i;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> StorageBuffer {
    global1 = array<Struct_1, 14>();
    global3 = array<f32, 30>();
    let var_0 = func_1();
    let var_1 = global1[_wgslsmith_index_u32(~min(~min(min(u_input.b.x, var_0.d.x), func_1().d.x), _wgslsmith_dot_vec3_u32(var_0.d.yxy, ~firstTrailingBit(var_0.d.wzw))), 14u)];
    var var_2 = all(arg_0.a);
    return StorageBuffer(vec4<i32>(func_3(global3[_wgslsmith_index_u32(~(var_0.d.x << (4294967295u % 32u)), 30u)], func_1().a.zx).x, 84393i, 0i, i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 14>();
    let var_0 = global1[_wgslsmith_index_u32(abs(abs(~(~1u))), 14u)];
    global1 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b * 987f) + _wgslsmith_f_op_f32(1000f + var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, var_0.b) - var_0.b))));
    let var_2 = ~49898u;
    global1 = array<Struct_1, 14>();
    global0 = array<vec2<bool>, 3>();
    global3 = array<f32, 30>();
    let x = u_input.a;
    s_output = func_5(Struct_1(global2.a, _wgslsmith_f_op_f32(min(var_0.b, -1299f)), -46235i, ~abs(max(global2.d, vec4<u32>(var_2, 41504u, 53542u, 28337u)))), ~vec3<u32>(var_0.d.x, 0u, firstTrailingBit(var_0.d.x) ^ 6741u), min(_wgslsmith_clamp_i32(func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3[_wgslsmith_index_u32(24275u, 30u)], 827f), vec2<f32>(global2.b, var_1))), func_1(), func_1()), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, var_0.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.c, -2147483647i), vec2<i32>(-1i, var_0.c), vec2<i32>(20142i, -2147483647i))), global2.c), reverseBits(_wgslsmith_mod_i32(func_4(vec2<f32>(var_1, -1111f), global1[_wgslsmith_index_u32(var_2, 14u)], global1[_wgslsmith_index_u32(global2.d.x, 14u)]), _wgslsmith_div_i32(global2.c, -9598i)))));
}

