struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(0i, 23059i), vec2<i32>(-1i, 55001i), vec2<i32>(-3429i, 0i), vec2<i32>(-1i, 21923i), vec2<i32>(-12118i, -10243i), vec2<i32>(-1029i, -13157i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), -65498i), vec2<i32>(-38831i, -61991i), vec2<i32>(-6397i, i32(-2147483648)), vec2<i32>(-1i, -16713i), vec2<i32>(-6707i, -22615i), vec2<i32>(22507i, -1i), vec2<i32>(0i, 29707i), vec2<i32>(16421i, -1i), vec2<i32>(1979i, 42815i), vec2<i32>(20713i, 2564i), vec2<i32>(-60126i, 2147483647i), vec2<i32>(34697i, 0i), vec2<i32>(i32(-2147483648), -20404i), vec2<i32>(14745i, -12484i), vec2<i32>(-61831i, -44813i), vec2<i32>(51212i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(35763i, 435i));

var<private> global2: array<Struct_4, 20>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(Struct_1(~_wgslsmith_div_u32(max(u_input.b.x, 41910u), 85000u << (u_input.b.x % 32u))), ~1i, u_input.b.yy, reverseBits(_wgslsmith_clamp_vec3_u32(firstLeadingBit(~u_input.b.xyz), ~vec3<u32>(u_input.b.x, u_input.b.x, 3238u), vec3<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.b.x))), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), true), vec3<bool>(select(any(vec2<bool>(true, false)), false, all(vec2<bool>(false, true))), (u_input.c ^ -32969i) > u_input.c, false), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))));
    return global0[_wgslsmith_index_u32(4294967295u, 11u)];
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 4294967295u));
    var var_1 = _wgslsmith_clamp_i32(i32(-1i) * -9125i, ~(-(func_3() | ~u_input.c)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, global0[_wgslsmith_index_u32(0u, 11u)], -2147483647i), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.c, u_input.c), _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 11u)], 2147483647i, global0[_wgslsmith_index_u32(var_0.a, 11u)]), vec3<i32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(15607u, 11u)], global0[_wgslsmith_index_u32(var_0.a, 11u)])))), countOneBits(_wgslsmith_add_i32(~global0[_wgslsmith_index_u32(91735u, 11u)], ~2147483647i))));
    let var_2 = u_input.b.x;
    var var_3 = u_input.c;
    let var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(416f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1830f, 119f)), 199f), _wgslsmith_f_op_f32(-164f - _wgslsmith_f_op_f32(step(-579f, -992f)))))));
    return _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.x))) - 1655f));
}

fn func_1(arg_0: vec4<u32>) -> vec2<i32> {
    global0 = array<i32, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f) + _wgslsmith_f_op_f32(func_2(all(vec3<bool>(false, false, true))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -682f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1261f, -713f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -369f)))));
    var var_1 = Struct_3(Struct_1(~arg_0.x), -34396i, arg_0.wz, ~(arg_0.ywz | ~arg_0.zzx), !select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true));
    return _wgslsmith_add_vec2_i32(-select(vec2<i32>(u_input.c, u_input.a), _wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(arg_0.x, 25u)], vec2<i32>(var_1.b, -2147483647i)), vec2<bool>(true, false)), -vec2<i32>(reverseBits(2147483647i), -4579i)) ^ vec2<i32>(~(-12618i), -33966i);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>) -> Struct_5 {
    let var_0 = Struct_1(4294967295u);
    let var_1 = var_0;
    let var_2 = vec2<u32>(var_0.a ^ ~4294967295u, var_0.a);
    let var_3 = 73273u;
    let var_4 = Struct_4(Struct_3(Struct_1(firstTrailingBit(4294967295u)), 42718i, select(abs(vec2<u32>(var_2.x, 4294967295u)), var_2, vec2<bool>(arg_0.x != 2147483647i, true)), countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wzz, u_input.b.ywz), 0u, var_1.a)), arg_1.yxw), ~(~max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(3852i, arg_0.x)), vec2<i32>(arg_0.x, 2147483647i))), _wgslsmith_add_vec2_u32(select(vec2<u32>(17831u, var_3), vec2<u32>(1u, 74557u), arg_1.ww) >> (u_input.b.yw % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(min(~var_2, select(u_input.b.zx, u_input.b.zw, false)), var_2, vec2<u32>(12706u, ~var_0.a))));
    return Struct_5(Struct_2(var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_1.x)) * _wgslsmith_f_op_f32(round(2592f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1298f + 1021f) + -1399f), arg_1.x))), reverseBits(u_input.b.x), var_4);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 11>();
    var var_0 = func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 37678i), global1[_wgslsmith_index_u32(11799u, 25u)], vec2<bool>(false, false)), func_1(u_input.b)), -24025i), (~vec4<i32>(u_input.c, u_input.c, -43769i, u_input.c) ^ reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], -2147483647i, 1i, 1i))) & min(abs(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(30121u, 11u)], 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-65469i, u_input.a, u_input.c, global0[_wgslsmith_index_u32(30659u, 11u)]), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 11u)])))), select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true)), vec4<bool>(abs(u_input.b.x) > 1u, true | all(vec3<bool>(false, false, false)), true, any(vec2<bool>(true, false))), !(any(vec3<bool>(true, true, false)) || false)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b * -301f) * var_0.a.b) + -124f), _wgslsmith_f_op_f32(trunc(var_0.a.b)), var_0.a.b));
    global0 = array<i32, 11>();
    let var_2 = func_4(min(-vec4<i32>(~global0[_wgslsmith_index_u32(1u, 11u)], u_input.c, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 11u)], 8481i), min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c, var_0.c.a.b, u_input.a), vec4<i32>(1i, 1i, -28185i, 10272i)) & vec4<i32>(u_input.c, var_0.c.b.x, 2147483647i, -2147483647i), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -1500i, u_input.c, var_0.c.b.x), vec4<i32>(19190i, -71610i, 60871i, -5216i))))), !vec4<bool>(var_0.c.a.e.x, (var_0.c.b.x & 1i) < ~var_0.c.b.x, -1714f == var_1.x, true)).c.a.a;
    global2 = array<Struct_4, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(-countOneBits(global1[_wgslsmith_index_u32(51013u, 25u)] >> (vec2<u32>(66572u, 0u) % vec2<u32>(32u))), ~(~global1[_wgslsmith_index_u32(var_0.b, 25u)])), _wgslsmith_mod_i32(max(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(0u, 11u)], 6727i) | func_4(vec4<i32>(u_input.a, var_0.c.a.b, var_0.c.a.b, -2147483647i), vec4<bool>(var_0.c.a.e.x, var_0.c.a.e.x, var_0.c.a.e.x, true)).c.a.b, var_0.c.b.x), 36873i), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 27903u, 0u, 12705u), vec4<u32>(1925u, u_input.b.x, var_0.b, var_0.a.a.a))), 1u), vec4<u32>(abs(~var_0.a.a.a), 1u, select(u_input.b.x, 1u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 7942u, 34513u), vec4<u32>(var_0.a.a.a, 0u, var_0.b, 1u)), ~var_2.a), var_0.c.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.b, -585f, var_0.a.b, var_1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, var_0.a.b, var_1.x, 122f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-915f, -1913f, -561f, var_1.x))))))));
}

