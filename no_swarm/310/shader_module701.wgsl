struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(30372u, 51503u, 71160u);

var<private> global1: array<bool, 26> = array<bool, 26>(false, true, true, false, true, true, true, true, true, false, true, false, true, true, true, true, false, false, false, false, true, true, true, false, true, false);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<u32>(1u, 45997u, 46012u), vec4<i32>(-83969i, -19051i, i32(-2147483648), 2147483647i)), Struct_1(vec3<u32>(585u, 1u, 39956u), vec4<i32>(1i, 30765i, -1i, 2147483647i)), Struct_1(vec3<u32>(1u, 0u, 1u), vec4<i32>(549i, 0i, 10633i, -201i)));

var<private> global4: array<vec2<u32>, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> vec4<u32> {
    let var_0 = -global2.b.x;
    var var_1 = Struct_1(~vec3<u32>(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(8809u, 11u)] & global4[_wgslsmith_index_u32(1u, 11u)], vec2<u32>(54333u, 0u)), global0.x, ~4294967295u), -(~_wgslsmith_mult_vec4_i32(min(u_input.b, vec4<i32>(var_0, var_0, -23114i, 2147483647i)), global2.b)));
    let var_2 = vec2<i32>(var_0, var_0);
    global2 = Struct_1(~var_1.a, min(-global2.b >> (select(vec4<u32>(0u, global2.a.x, var_1.a.x, 1u), vec4<u32>(var_1.a.x, var_1.a.x, 23258u, 13811u), vec4<bool>(false, false, false, false)) % vec4<u32>(32u)), select(reverseBits(global2.b), -global2.b, global1[_wgslsmith_index_u32(46753u, 26u)])) << ((vec4<u32>(4294967295u, 4294967295u >> (var_1.a.x % 32u), global0.x, 1u) >> (~(~vec4<u32>(global0.x, global2.a.x, global0.x, var_1.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1486f, -543f, -1382f, -675f)))));
    return ~(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(16724u, 10633u, global2.a.x, var_1.a.x), vec4<u32>(9517u, 71567u, global0.x, 45975u)), vec4<u32>(global2.a.x, _wgslsmith_mult_u32(var_1.a.x, global0.x), ~5983u, 4294967295u), ~(vec4<u32>(4294967295u, global0.x, 20595u, global2.a.x) & vec4<u32>(2688u, global0.x, 78111u, global2.a.x))) ^ firstTrailingBit(vec4<u32>(abs(var_1.a.x), 80650u | var_1.a.x, var_1.a.x, _wgslsmith_mod_u32(var_1.a.x, 18937u))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global1 = array<bool, 26>();
    global4 = array<vec2<u32>, 11>();
    global1 = array<bool, 26>();
    let var_0 = u_input.b.wy ^ -select(max(vec2<i32>(-25481i, global2.b.x), u_input.b.zx), ~u_input.b.ww & max(u_input.b.zy, global2.b.zz), false);
    global1 = array<bool, 26>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(748f + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(780f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) + arg_0.x))) + 1572f);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(-(_wgslsmith_clamp_vec4_i32(arg_2.b, u_input.b, global2.b) & ~(~global2.b)), max(~global2.b >> (abs(func_2()) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(global2.b.x, ~arg_2.b.x), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-1i, -33350i, -6505i, global2.b.x)), 0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(39701i, global2.b.x, 2147483647i), vec3<i32>(arg_2.b.x, -41941i, u_input.b.x)))));
    global1 = array<bool, 26>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1, arg_1) + vec3<f32>(arg_1, arg_1, arg_1)))), arg_1, -432f, 1306f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(107f, -1284f, 701f, 440f), _wgslsmith_div_vec4_f32(vec4<f32>(-852f, -1276f, 447f, 717f), vec4<f32>(arg_1, 718f, 1000f, 1122f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1007f, 1637f, 390f)), vec4<f32>(arg_1, -1322f, 577f, arg_1)))))));
    var var_2 = var_1;
    var_0 = min(i32(-1i) * -2147483647i, global2.b.x & ~_wgslsmith_dot_vec3_i32(u_input.b.xyx, vec3<i32>(arg_2.b.x, -2147483647i, -24562i)));
    return Struct_1(_wgslsmith_add_vec3_u32(~max(vec3<u32>(1u, arg_2.a.x, global2.a.x), abs(vec3<u32>(global0.x, 18559u, global0.x))), ~(~vec3<u32>(arg_2.a.x, global2.a.x, 73143u))), u_input.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 356f, -670f) * vec3<f32>(769f, -1000f, 295f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2670f, 925f, 1000f) * vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1295f, 1080f, 1085f) + vec3<f32>(548f, -1783f, -1885f))), !(!vec3<bool>(true, false, arg_0.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1116f, 607f, 718f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-418f, 227f, -1598f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1522f, 2190f, -334f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-726f, -199f, -196f), vec3<f32>(-953f, -2230f, 451f))))))));
    global1 = array<bool, 26>();
    let var_1 = vec3<i32>(-u_input.b.x, 23103i, -15396i);
    var var_2 = vec3<i32>(arg_1.b.x & -8236i, arg_1.b.x, -2147483647i);
    let var_3 = global3[_wgslsmith_index_u32(abs(global2.a.x), 3u)];
    return ~min(firstTrailingBit(_wgslsmith_sub_vec4_u32(max(vec4<u32>(18761u, var_3.a.x, global0.x, arg_1.a.x), vec4<u32>(61074u, arg_1.a.x, 0u, arg_1.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 74768u, global2.a.x, global0.x), vec4<u32>(44368u, var_3.a.x, 1u, global0.x)))), firstTrailingBit(vec4<u32>(var_3.a.x, 1u, global0.x, var_3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-709f, -113f), vec2<f32>(508f, 497f), global1[_wgslsmith_index_u32(global0.x, 26u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1812f, 950f) - vec2<f32>(507f, -995f))), !(true && !global1[_wgslsmith_index_u32(global2.a.x, 26u)])))));
    var var_1 = _wgslsmith_mod_vec4_u32(~(~(~(~vec4<u32>(global2.a.x, 0u, 1u, 1u)))), ~(~max(firstLeadingBit(vec4<u32>(4294967295u, global0.x, 51815u, global0.x)), firstLeadingBit(vec4<u32>(global0.x, 6984u, 0u, global2.a.x)))));
    var var_2 = select(firstTrailingBit(global0.x), ~_wgslsmith_dot_vec4_u32(func_4(select(vec4<bool>(global1[_wgslsmith_index_u32(global2.a.x, 26u)], global1[_wgslsmith_index_u32(65429u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 26u)], true, global1[_wgslsmith_index_u32(57242u, 26u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 26u)], global1[_wgslsmith_index_u32(9569u, 26u)], true, global1[_wgslsmith_index_u32(59978u, 26u)])), func_1(false, var_0.x, global3[_wgslsmith_index_u32(global0.x, 3u)])), abs(select(vec4<u32>(global2.a.x, var_1.x, 26358u, 69712u), vec4<u32>(var_1.x, 77666u, global2.a.x, global2.a.x), global1[_wgslsmith_index_u32(global2.a.x, 26u)]))), (select(global1[_wgslsmith_index_u32(func_4(vec4<bool>(global1[_wgslsmith_index_u32(142026u, 26u)], global1[_wgslsmith_index_u32(34959u, 26u)], true, global1[_wgslsmith_index_u32(1u, 26u)]), Struct_1(var_1.yzz, global2.b)).x, 26u)], false, any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 26u)], false, true))) && (true | any(vec2<bool>(global1[_wgslsmith_index_u32(global2.a.x, 26u)], global1[_wgslsmith_index_u32(51222u, 26u)])))) | true);
    var var_3 = func_1(all(select(vec2<bool>(false, all(vec2<bool>(global1[_wgslsmith_index_u32(27858u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)]))), !vec2<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 26u)]), vec2<bool>(false & global1[_wgslsmith_index_u32(var_1.x, 26u)], global1[_wgslsmith_index_u32(func_4(vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(8491u, 26u)]), global3[_wgslsmith_index_u32(1u, 3u)]).x, 26u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * -144f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), Struct_1(func_2().xwz, _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-global2.b, vec4<i32>(global2.b.x, u_input.b.x, u_input.b.x, -6585i) | u_input.b), -vec4<i32>(u_input.a.x, -20582i, u_input.a.x, -15598i), global2.b)));
    var var_4 = !(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(9115u, 26u)] && false, all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(14072u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_6 = func_1(all(!select(vec4<bool>(var_4.x, var_4.x, false, false), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 26u)], var_4.x, true, false), vec4<bool>(false, var_4.x, true, true))) && var_4.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-602f, -1000f, global1[_wgslsmith_index_u32(reverseBits(var_3.a.x), 26u)])))), Struct_1(var_1.xwz, ~vec4<i32>(40420i, global2.b.x, var_3.b.x, 0i)));
    global1 = array<bool, 26>();
    let var_7 = _wgslsmith_f_op_f32(sign(var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

