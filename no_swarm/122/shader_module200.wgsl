struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: u32 = 51234u;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-1i, 51147i), -46492i, 87329u);

var<private> global3: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 24058i, 1u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(356f, 688f, 1132f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1468f, -119f, 211f) * vec3<f32>(-565f, 1284f, -136f)), global0[_wgslsmith_index_u32(~4294967295u, 3u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -830f, -1000f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(669f, -1377f, -2104f), vec3<f32>(-1031f, -1777f, -1116f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1476f, -914f, -1260f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-305f, 1269f, 1027f) - vec3<f32>(637f, -1438f, 1000f)) + vec3<f32>(1f, 1f, 1f)))))));
    global2 = Struct_1(global2.a, min(-2147483647i, _wgslsmith_add_i32(firstLeadingBit(global2.b), -2147483647i)), max(global2.c, global3.c));
    var var_1 = vec4<f32>(-1491f, 996f, -833f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-772f - _wgslsmith_f_op_f32(select(-1102f, -621f, global0[_wgslsmith_index_u32(3299u, 3u)])))));
    global2 = Struct_1(~arg_0.a, _wgslsmith_clamp_i32(((-15913i >> (arg_0.c % 32u)) << (~global3.c % 32u)) >> (((0u ^ global2.c) ^ 32284u) % 32u), ~(~arg_0.a.x), _wgslsmith_add_i32(~global2.b, -_wgslsmith_mult_i32(2147483647i, u_input.c.x))), 25592u);
    var var_2 = ~_wgslsmith_sub_i32(~_wgslsmith_mult_i32(arg_0.b, arg_0.a.x), reverseBits(arg_1.b) << (_wgslsmith_mod_u32(firstTrailingBit(arg_1.c), global2.c) % 32u));
    return all(select(vec3<bool>(false | global0[_wgslsmith_index_u32(43642u, 3u)], ~arg_0.c != arg_1.c, true), select(vec3<bool>(any(vec3<bool>(false, true, false)), global0[_wgslsmith_index_u32(arg_1.c, 3u)], !global0[_wgslsmith_index_u32(arg_1.c, 3u)]), select(vec3<bool>(false, true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(54266u, 3u)], false, true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 3u)]), global0[_wgslsmith_index_u32(global3.c, 3u)]), !vec3<bool>(global0[_wgslsmith_index_u32(arg_1.c, 3u)], global0[_wgslsmith_index_u32(global2.c, 3u)], true)), true), global0[_wgslsmith_index_u32(38947u, 3u)]));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_1(vec2<i32>(firstTrailingBit(-25790i), -2229i), ~((global3.b & global3.a.x) & global2.a.x), arg_0.x);
    var var_1 = vec4<bool>(_wgslsmith_dot_vec3_i32(u_input.b.wxz, vec3<i32>(var_0.b, ~(-53529i), ~global3.b)) > (global3.a.x & -(~var_0.b)), true, true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.wz, arg_0.yx ^ _wgslsmith_mod_vec2_u32(arg_0.wz, arg_0.xw)), 3u)]);
    let var_2 = all(!vec3<bool>(any(!vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(0u, 3u)], false, var_1.x)), !func_3(Struct_1(vec2<i32>(var_0.a.x, global3.a.x), var_0.a.x, global3.c), var_0), !(!global0[_wgslsmith_index_u32(arg_0.x, 3u)])));
    var var_3 = vec2<bool>(any(select(select(select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(global3.c, 3u)]), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_2, true)), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], true, true, false), !var_2), select(select(vec4<bool>(true, var_2, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.c, 3u)], global0[_wgslsmith_index_u32(var_0.c, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 3u)], false)), vec4<bool>(false, var_2, var_1.x, false), select(vec4<bool>(var_2, var_1.x, global0[_wgslsmith_index_u32(var_0.c, 3u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)], false, true), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, global2.c >= 4294967295u, true))), global0[_wgslsmith_index_u32(min(arg_0.x, _wgslsmith_dot_vec2_u32(max(arg_0.xx, _wgslsmith_add_vec2_u32(arg_0.zy, vec2<u32>(4294967295u, 11744u))), arg_0.wz)), 3u)]);
    global0 = array<bool, 3>();
    return !(!all(select(select(vec2<bool>(false, true), vec2<bool>(false, var_1.x), var_2), !vec2<bool>(var_2, true), select(vec2<bool>(var_2, var_3.x), var_1.yy, var_1.wx))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = vec4<bool>(true, any(vec3<bool>(select(global0[_wgslsmith_index_u32(global3.c, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(global2.c, 3u)]) & all(vec2<bool>(true, true)), true, !func_2(vec4<u32>(arg_0.x, 9158u, global2.c, 135301u)))), _wgslsmith_dot_vec4_i32(u_input.c, ~firstTrailingBit(vec4<i32>(global3.a.x, 9043i, global2.b, u_input.a.x))) >= _wgslsmith_sub_i32(-global2.b >> (1u % 32u), 9856i), global0[_wgslsmith_index_u32(~arg_0.x, 3u)]);
    let var_1 = ~global3.a.x;
    global0 = array<bool, 3>();
    var var_2 = Struct_1(global3.a, select(2147483647i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), var_0.x), global3.c);
    var var_3 = _wgslsmith_f_op_f32(-987f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -464f))) * 751f)));
    return Struct_1(global3.a, ~(-21078i), abs(global2.c));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2.c;
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(global2.a.x, _wgslsmith_clamp_i32(firstLeadingBit(u_input.c.x), 1i, _wgslsmith_add_i32(~1i, -18863i)), arg_3.b), vec3<i32>(reverseBits(abs(arg_1)), ~2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, global3.b), arg_0.b >> (global2.c % 32u))));
    global3 = func_1(select(abs(~vec2<u32>(4294967295u, 0u)), firstTrailingBit(vec2<u32>(var_0, arg_0.c)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(var_0, 3u)], true, global0[_wgslsmith_index_u32(global2.c, 3u)], true), global0[_wgslsmith_index_u32(global2.c, 3u)]))) ^ reverseBits(vec2<u32>(arg_0.c, ~arg_0.c)));
    var var_2 = _wgslsmith_f_op_f32(407f * _wgslsmith_f_op_f32(817f + _wgslsmith_f_op_f32(floor(706f))));
    global2 = Struct_1(vec2<i32>(~abs(0i), _wgslsmith_dot_vec2_i32(-var_1.zx, vec2<i32>(-2147483647i, i32(-1i) * -2147483647i))), max(max(u_input.c.x, -1i), ~countOneBits(arg_1)), 4294967295u);
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<bool, 3>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1497f, -850f, 746f), vec3<f32>(-916f, 1340f, -682f)))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(676f, 1375f, -1014f)))))));
    global2 = func_1(vec2<u32>(88562u, (_wgslsmith_add_u32(arg_1, 4294967295u) ^ ~arg_0.c) ^ max(global3.c ^ 0u, ~global2.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy)), _wgslsmith_f_op_vec2_f32(var_0.yz - _wgslsmith_f_op_vec2_f32(max(var_0.zz, vec2<f32>(var_0.x, -483f))))))), vec2<f32>(100f, -333f), any(vec3<bool>(true, global0[_wgslsmith_index_u32(global2.c, 3u)], true))));
    let var_2 = Struct_1(-vec2<i32>(min(global3.a.x, arg_2.b), arg_2.a.x), (u_input.c.x & -1i) >> (max(max(~4294967295u, ~0u), ~_wgslsmith_add_u32(arg_2.c, arg_2.c)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1 & arg_2.c, 50419u) << (firstLeadingBit(~vec3<u32>(arg_0.c, global2.c, 26021u)) % vec3<u32>(32u)), ~countOneBits(countOneBits(vec3<u32>(4294967295u, arg_0.c, global2.c)))));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, 23327i, _wgslsmith_mod_u32(0u, global3.c));
    let var_1 = ~abs(_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, arg_0.c)), select(vec2<u32>(1u, global3.c), ~vec2<u32>(4294967295u, 0u), arg_2)));
    var var_2 = u_input.a;
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_1 {
    global1 = func_5(func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.c, _wgslsmith_sub_u32(0u, global3.c)), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 13671u), vec2<u32>(0u, 23307u))))), arg_0.c, Struct_1(-(~global3.a), ~_wgslsmith_div_i32(global3.b, 0i), ~(~(~global3.c)))).c;
    global1 = 23328u;
    let var_0 = !(!select(global0[_wgslsmith_index_u32(~56169u, 3u)], true & (global0[_wgslsmith_index_u32(10975u, 3u)] | true), arg_1.x));
    let var_1 = true;
    var var_2 = arg_0;
    return func_1(abs(vec2<u32>(abs(62666u), arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(func_6(func_5(func_4(Struct_1(global2.a, global2.a.x, 10320u), -2147483647i, Struct_1(global3.a, 2147483647i, 0u), func_1(vec2<u32>(global3.c, global3.c))), global3.c, func_1(vec2<u32>(4294967295u, 4294967295u))), Struct_1(vec2<i32>(-1i) * -global3.a, _wgslsmith_clamp_i32(countOneBits(global2.b), global2.a.x, 1i), global3.c), select(global2.c <= select(global2.c, global3.c, false), global0[_wgslsmith_index_u32(~(global2.c >> (10936u % 32u)), 3u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.c & global2.c, 0u, 0u), 3u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-366f))), 1881f, (global0[_wgslsmith_index_u32(global3.c, 3u)] == true) & true))), vec4<bool>(!all(vec4<bool>(global0[_wgslsmith_index_u32(973u, 3u)], true, false, global0[_wgslsmith_index_u32(global3.c, 3u)])), false, any(select(vec2<bool>(false, true), select(vec2<bool>(global0[_wgslsmith_index_u32(global2.c, 3u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(false, true)), !vec2<bool>(global0[_wgslsmith_index_u32(28239u, 3u)], false))), any(vec3<bool>(true, true, true))), !(!vec2<bool>(true, !global0[_wgslsmith_index_u32(4294967295u, 3u)])));
    global3 = func_4(func_7(func_6(func_4(Struct_1(u_input.b.xw, -47421i, global2.c), _wgslsmith_div_i32(u_input.b.x, 1i), Struct_1(vec2<i32>(global2.b, 2147483647i), u_input.a.x, 1u), func_1(vec2<u32>(global2.c, 12330u))), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, global3.a.x), vec2<i32>(11268i, 25390i)), -1i, global2.c), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f))), !select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(50165u, 3u)], true, global0[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], false, global0[_wgslsmith_index_u32(global3.c, 3u)], false), global0[_wgslsmith_index_u32(69702u, 3u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(18547u, 3u)], global0[_wgslsmith_index_u32(global3.c, 3u)], false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(2254u, 3u)], true), global0[_wgslsmith_index_u32(global2.c, 3u)]), func_3(Struct_1(u_input.c.zy, global2.a.x, 12455u), Struct_1(global3.a, -1i, 1u))), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(global2.c, 3u)], global0[_wgslsmith_index_u32(global2.c, 3u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(41982u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(global3.c, 3u)])))), global2.b, Struct_1(_wgslsmith_add_vec2_i32(global2.a, vec2<i32>(global3.a.x, global3.b) | vec2<i32>(0i, -1i)) >> (abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.c, global3.c), vec2<u32>(global2.c, 34650u))) % vec2<u32>(32u)), 1i, ~func_4(Struct_1(vec2<i32>(global3.a.x, global3.a.x), 8802i, global2.c), -1i, Struct_1(vec2<i32>(global2.a.x, -47855i), global2.b, global2.c), Struct_1(global3.a, 5436i, global3.c)).c), Struct_1(abs(vec2<i32>(49869i, -global2.a.x)), global2.a.x, global2.c));
    global3 = Struct_1(-func_1(~_wgslsmith_add_vec2_u32(vec2<u32>(69025u, 4294967295u), vec2<u32>(global3.c, 0u))).a, -global2.a.x, ~0u);
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-909f - -1226f), _wgslsmith_f_op_f32(f32(-1f) * -1800f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(482f)), 236f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f - 206f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2137f) + _wgslsmith_f_op_f32(round(2734f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(1625f)))), 1036f)));
    global2 = func_6(Struct_1(global2.a, _wgslsmith_add_i32(-68924i, global2.b ^ (i32(-1i) * -1i)), min(~global2.c, global3.c)), func_6(Struct_1(_wgslsmith_div_vec2_i32(global3.a, vec2<i32>(0i, -1i)), (u_input.c.x | u_input.b.x) << (global2.c % 32u), 1u), Struct_1(~vec2<i32>(30749i, global2.b) << (_wgslsmith_mult_vec2_u32(vec2<u32>(global2.c, 33886u), vec2<u32>(global2.c, 4294967295u)) % vec2<u32>(32u)), global3.a.x, _wgslsmith_add_u32(global2.c, global3.c)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(20212u, abs(global3.c)), ~global3.c), 3u)], var_0.x), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -384f), var_0.x, any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], false)))))) + 1305f));
    var var_1 = -(u_input.b << (~(vec4<u32>(global2.c, global3.c, 24006u, global2.c) >> (firstLeadingBit(vec4<u32>(global3.c, global2.c, global2.c, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(var_0.wz)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(var_0.wz)))), true));
    let var_3 = Struct_1(select(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(var_1.x, 0i), global3.a, vec2<bool>(global0[_wgslsmith_index_u32(global3.c, 3u)], global0[_wgslsmith_index_u32(global2.c, 3u)])), ~var_1.yw), -(u_input.c.yz << (vec2<u32>(global3.c, global3.c) % vec2<u32>(32u)))), func_1(abs(~vec2<u32>(global2.c, 26022u))).a, func_2(vec4<u32>(~global2.c, global2.c, _wgslsmith_div_u32(global3.c, global2.c), abs(global2.c)))), global2.a.x, ~_wgslsmith_mult_u32(global2.c, 31644u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(4726u));
}

