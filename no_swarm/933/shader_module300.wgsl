struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, false, true, false), 0u, Struct_1(vec2<u32>(4294967295u, 57268u), 2807i, vec2<f32>(-327f, 1332f), false, -1139f));

var<private> global1: array<bool, 29> = array<bool, 29>(false, false, true, false, true, false, true, true, false, true, false, true, false, false, true, false, true, true, true, false, false, false, true, false, true, false, true, false, false);

var<private> global2: array<u32, 23> = array<u32, 23>(62371u, 4294967295u, 0u, 599u, 33617u, 1u, 0u, 34320u, 4290u, 115153u, 61995u, 4294967295u, 0u, 63864u, 26975u, 1u, 0u, 57197u, 0u, 70362u, 61530u, 4294967295u, 11263u);

var<private> global3: vec3<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(global0.c.e, arg_0.x));
    let var_1 = ~abs(firstTrailingBit(countOneBits(abs(vec2<u32>(63361u, global0.c.a.x)))));
    global3 = _wgslsmith_mod_vec3_i32(u_input.c, u_input.c);
    var var_2 = all(!global0.a.zzw);
    var var_3 = Struct_2(!select(global0.a, vec4<bool>(true, all(vec4<bool>(false, global0.a.x, global1[_wgslsmith_index_u32(1u, 29u)], false)), true, global1[_wgslsmith_index_u32(u_input.b.x, 29u)]), !all(vec3<bool>(true, global0.a.x, true))), global0.c.a.x, global0.c);
    return vec4<bool>(true, true, !(!(all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], var_3.a.x, global1[_wgslsmith_index_u32(4294967295u, 29u)], var_3.a.x)) & global0.c.d)), ~(~(~global0.c.a.x)) > 63798u);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = Struct_2(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.e, arg_0.c.e, -183f, arg_2.c.c.x)))), global0.c.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-312f, -138f, arg_0.c.d)), -1006f, _wgslsmith_div_f32(arg_2.c.c.x, -310f)))), 0u, arg_2.c);
    global0 = arg_2;
    global3 = countOneBits(u_input.c) | -_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0.c.b, u_input.a, 0i), u_input.c);
    global3 = u_input.c;
    let var_1 = 2676f;
    return vec4<u32>(_wgslsmith_dot_vec3_u32(~u_input.b, ~u_input.b ^ _wgslsmith_mult_vec3_u32(vec3<u32>(880u, 18482u, arg_2.b), u_input.b)) << (_wgslsmith_dot_vec2_u32(global0.c.a, vec2<u32>(~20304u, 26434u)) % 32u), 4294967295u, u_input.b.x, min(~arg_0.b, ~0u));
}

fn func_1() -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.e - _wgslsmith_f_op_f32(1615f - global0.c.c.x)) + global0.c.e)), 1010f);
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.b, countOneBits(-2147483647i), u_input.c.x, global3.x), _wgslsmith_add_vec4_i32(select(abs(vec4<i32>(-16709i, u_input.a, -2729i, 14770i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 50316u, 1u, u_input.b.x), vec4<u32>(0u, u_input.b.x, 27610u, u_input.b.x)) % vec4<u32>(32u)), vec4<i32>(0i, reverseBits(global3.x), u_input.a, global3.x ^ 2147483647i), !(global1[_wgslsmith_index_u32(10756u, 29u)] && global0.c.d)), select(firstTrailingBit(vec4<i32>(2147483647i, -35002i, global0.c.b, u_input.a)) ^ ~vec4<i32>(12745i, u_input.c.x, u_input.a, u_input.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 62984i, -1i, global3.x), vec4<i32>(global0.c.b, u_input.a, -44134i, -64723i)) >> (func_2(Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(global0.b, 29u)], false, false, true), 5818u, global0.c), 127251u, Struct_2(global0.a, global0.b, Struct_1(vec2<u32>(11241u, global2[_wgslsmith_index_u32(41405u, 23u)]), 60458i, global0.c.c, true, global0.c.e))) % vec4<u32>(32u)), global0.a.x)));
    let var_2 = -37379i;
    let var_3 = global0.c.d;
    global1 = array<bool, 29>();
    return countOneBits(~firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26120u, 23u)], 23u)]) ^ 26680u);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = !(~_wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 21755u, u_input.b.x), u_input.b)) >= _wgslsmith_mult_u32(arg_0.b, ~reverseBits(0u)));
    var var_1 = Struct_2(!(!vec4<bool>(func_3(arg_1, global0.c.b, vec3<f32>(-1064f, -369f, -1308f)).x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(56131u, global2[_wgslsmith_index_u32(43137u, 23u)]), 29u)], true, any(vec2<bool>(false, false)))), 93891u | _wgslsmith_sub_u32(4294967295u, u_input.b.x), Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(61394u, global0.b), firstTrailingBit(21220u), arg_0.c.a.x), 23u)], ~min(74311u, 4294967295u)), global0.c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.zy))) * vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + arg_1.x))), !(!all(vec4<bool>(false, arg_0.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], global0.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-953f))))));
    let var_2 = global0.a.yyw;
    let var_3 = arg_0;
    global1 = array<bool, 29>();
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 23>();
    let var_0 = func_4(Struct_2(!vec4<bool>(true, true, any(global0.a.xx), all(global0.a)), func_1(), global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.c.c.x, global0.c.e, global0.c.c.x) - vec4<f32>(global0.c.e, global0.c.e, global0.c.c.x, global0.c.e))), vec4<f32>(313f, -602f, 1043f, global0.c.e), select(select(global0.a, global0.a, vec4<bool>(true, global0.a.x, true, global0.a.x)), select(vec4<bool>(global0.c.d, false, false, false), global0.a, global0.a), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], false, global1[_wgslsmith_index_u32(global0.b, 29u)], false)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.c.e, global0.c.e), _wgslsmith_f_op_f32(abs(-322f)), _wgslsmith_f_op_f32(sign(1528f)), global0.c.e) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, global0.c.c.x, global0.c.e, 1115f) * vec4<f32>(global0.c.e, global0.c.c.x, -1214f, global0.c.c.x))))), abs(~(-firstTrailingBit(vec4<i32>(2147483647i, u_input.a, 8983i, global3.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.e, 420f, global0.c.c.x) * vec3<f32>(global0.c.c.x, global0.c.c.x, 1094f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(455f, 1120f, global0.c.c.x))), vec3<f32>(global0.c.e, global0.c.c.x, global0.c.e), global0.a.zyz))), !global0.a.x)));
    var var_1 = _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(~(~1u), abs(abs(0u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(10937u, var_0.a.x), vec2<u32>(1u, u_input.b.x))) << (_wgslsmith_sub_vec3_u32(select(u_input.b << (vec3<u32>(4294967295u, 8256u, u_input.b.x) % vec3<u32>(32u)), ~u_input.b, true), u_input.b) % vec3<u32>(32u)));
    let var_2 = Struct_2(vec4<bool>(!select(all(global0.a.zyy), all(global0.a), true), !(global0.a.x || true), any(global0.a.zxx), select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, global0.b), vec2<u32>(var_0.a.x, 4294967295u)), max(var_1.x, u_input.b.x), any(global0.a)) < 0u), 22750u, Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(global0.c.a, _wgslsmith_mod_vec2_u32(u_input.b.yy, global0.c.a)), ~4294967295u), _wgslsmith_mod_i32(global3.x, global3.x), var_0.c, true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1820f, -2189f)), _wgslsmith_f_op_f32(f32(-1f) * -1243f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.c.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(max(vec4<u32>(49292u, 1u, 1u, 0u), vec4<u32>(global2[_wgslsmith_index_u32(var_0.a.x, 23u)], var_0.a.x, var_2.c.a.x, 4294967295u)), reverseBits(vec4<u32>(40709u, global0.c.a.x, 1u, var_2.c.a.x)) | vec4<u32>(global0.c.a.x, var_1.x, var_0.a.x, global0.b)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.c.a.x, u_input.b.x, 26538u, var_1.x) | select(vec4<u32>(17406u, global2[_wgslsmith_index_u32(var_1.x, 23u)], 8624u, var_1.x), vec4<u32>(var_1.x, 0u, var_2.b, var_1.x), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(71642u, 29u)])), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 81505u, var_2.c.a.x, 4294967295u), vec4<u32>(global0.c.a.x, 51127u, global0.c.a.x, global2[_wgslsmith_index_u32(54307u, 23u)]))), firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(41892u, 0u, global0.c.a.x, 57604u), vec4<u32>(global0.c.a.x, var_2.b, u_input.b.x, global2[_wgslsmith_index_u32(0u, 23u)])))), firstLeadingBit(~global3.x), _wgslsmith_dot_vec4_i32(vec4<i32>(~(~1i), ~(-u_input.a), _wgslsmith_add_i32(-25271i, var_2.c.b), global0.c.b), vec4<i32>(reverseBits(-2147483647i), ~global3.x, u_input.a ^ -36889i, i32(-1i) * -2147483647i) << ((vec4<u32>(var_2.c.a.x, 4294967295u, global2[_wgslsmith_index_u32(var_2.b, 23u)], u_input.b.x) ^ ~vec4<u32>(5471u, 7509u, 1u, 0u)) % vec4<u32>(32u))));
}

