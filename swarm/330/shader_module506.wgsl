struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
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

var<private> global0: f32;

var<private> global1: vec4<i32>;

var<private> global2: array<bool, 1>;

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    let var_0 = firstTrailingBit(-vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-1i, -arg_0.a.x), 1i, _wgslsmith_sub_i32(2147483647i, u_input.a)));
    var var_1 = -(vec2<i32>(27154i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(40184i, 41693i, u_input.a), arg_0.a, vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], arg_0.b.x, arg_0.b.x)), reverseBits(vec3<i32>(var_0.x, -66509i, -8646i)))) >> (min(~_wgslsmith_clamp_vec2_u32(u_input.c.xy, vec2<u32>(1u, u_input.d), u_input.c.yx), abs(vec2<u32>(u_input.d, u_input.c.x))) % vec2<u32>(32u)));
    let var_2 = Struct_1(reverseBits(select(_wgslsmith_clamp_vec3_i32(abs(global1.zww), _wgslsmith_clamp_vec3_i32(vec3<i32>(9460i, 1i, 1i), global1.zyx, var_0.xxy), countOneBits(var_0.yxx)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(global1.zyy, vec3<i32>(30023i, -15215i, 1i)), -vec3<i32>(u_input.a, arg_0.a.x, global1.x)), arg_0.b.x)), vec2<bool>(-1010f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(select(arg_1.x, -920f, global2[_wgslsmith_index_u32(u_input.c.x, 1u)])))), any(select(vec3<bool>(true, arg_0.b.x, global2[_wgslsmith_index_u32(u_input.c.x, 1u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 1u)], false, global2[_wgslsmith_index_u32(1u, 1u)]), true))));
    global1 = abs(countOneBits(max(abs(vec4<i32>(arg_0.a.x, var_2.a.x, var_1.x, var_2.a.x)), var_0)));
    global2 = array<bool, 1>();
    return var_0.x;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = arg_2.x;
    global1 = vec4<i32>(~_wgslsmith_sub_i32(~_wgslsmith_add_i32(-11158i, arg_3.b.e.a.x), func_3(arg_3.b.e, _wgslsmith_f_op_vec3_f32(select(arg_2.wxz, vec3<f32>(arg_2.x, -899f, -500f), vec3<bool>(arg_3.c.b.x, true, global2[_wgslsmith_index_u32(arg_3.b.b, 1u)]))))), global1.x, -(~(~(global1.x ^ 0i))), arg_3.c.a.x);
    var var_1 = Struct_2(vec2<i32>(~_wgslsmith_mod_i32(arg_3.c.a.x, -1i), _wgslsmith_mod_i32(_wgslsmith_div_i32(-56712i, global1.x), -10394i)) & max(-_wgslsmith_clamp_vec2_i32(global1.xz, vec2<i32>(u_input.a, -23967i), vec2<i32>(-2147483647i, -19258i)), ~global1.wz ^ vec2<i32>(u_input.a, 1i)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, 24456u), _wgslsmith_sub_vec2_u32(u_input.e.wz, vec2<u32>(arg_3.b.b, arg_0))), _wgslsmith_clamp_u32(arg_1.a.x, select(1u, 87341u, false), u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b.b, arg_1.a.x, u_input.b, arg_3.b.b), arg_1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_2.yx))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1169f, _wgslsmith_f_op_f32(max(arg_2.x, arg_3.b.d))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3.b.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_3.b.c.x) - vec2<f32>(arg_3.b.d, var_0)), select(vec2<bool>(true, true), arg_3.c.b, global2[_wgslsmith_index_u32(arg_0, 1u)]))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(max(arg_3.b.e.a, firstLeadingBit(_wgslsmith_add_vec3_i32(global1.ywx, arg_3.b.e.a))), vec2<bool>(!(!arg_3.c.b.x), true)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-511f)))))) * arg_3.b.c.x);
    var var_3 = i32(-1i) * -21918i;
    return select(arg_3.c.b, vec2<bool>(!arg_3.c.b.x && global2[_wgslsmith_index_u32(~(~5729u), 1u)], true), vec2<bool>(!all(!vec3<bool>(arg_3.b.e.b.x, false, true)), global2[_wgslsmith_index_u32(~arg_1.a.x, 1u)]));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = Struct_3(vec3<i32>(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-9367i, ~u_input.a, 2147483647i & u_input.a, i32(-1i) * -2147483647i), vec4<i32>(-1i, 29997i, u_input.a, global1.x) ^ vec4<i32>(arg_0.a.x, -1i, global1.x, u_input.a)), 1i), Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(abs(0i), -1i), vec2<i32>(arg_0.a.x, _wgslsmith_add_i32(-21718i, -57438i))), 68567u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f) - _wgslsmith_f_op_f32(sign(-990f))), 403f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1017f * 1375f))))), arg_0), Struct_1(global1.yzx, select(vec2<bool>(all(vec2<bool>(arg_0.b.x, true)), false), arg_0.b, all(vec2<bool>(false, arg_2.x)) | true)));
    let var_1 = arg_1;
    global2 = array<bool, 1>();
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.b, arg_1.a.x), u_input.e.ww, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, u_input.c.x, 9842u, 0u), arg_1.a), 4294967295u, _wgslsmith_dot_vec2_u32(var_1.a.xx, vec2<u32>(var_0.b.b, u_input.e.x)), 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, 0u, var_0.b.b), arg_1.a | vec4<u32>(var_0.b.b, 23662u, 0u, 1u))), reverseBits(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_sub_u32(53213u, 10760u)))));
    var var_3 = !(!(!vec4<bool>(var_0.b.c.x <= var_0.b.c.x, false, true, arg_0.b.x | true)));
    return Struct_4(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_2.x, ~var_2.x, 1u, _wgslsmith_clamp_u32(23187u, var_2.x, 5516u))), vec4<u32>(1u, abs(firstTrailingBit(var_2.x)), 15967u, var_2.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    global2 = array<bool, 1>();
    var var_0 = arg_0.x;
    let var_1 = global1.zw;
    var var_2 = func_4(Struct_1(max(vec3<i32>(~var_1.x, firstLeadingBit(2147483647i), -var_1.x), _wgslsmith_mult_vec3_i32(select(global1.wzy, global1.zyw, vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 1u)], global2[_wgslsmith_index_u32(u_input.d, 1u)], global2[_wgslsmith_index_u32(0u, 1u)])), vec3<i32>(35474i, -20087i, 0i))), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(abs(u_input.d), 1u)]), select(func_2(u_input.e.x, Struct_4(u_input.e), vec4<f32>(arg_0.x, -1339f, arg_0.x, arg_0.x), Struct_3(vec3<i32>(arg_1, arg_2, var_1.x), global3[_wgslsmith_index_u32(4294967295u, 12u)], Struct_1(vec3<i32>(u_input.a, u_input.a, arg_1), vec2<bool>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(58046u, 1u)])))), vec2<bool>(false, false), all(vec2<bool>(false, false))), all(!vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 1u)])))), Struct_4(u_input.e), select(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], true)), vec3<bool>(select(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(u_input.e.x, 1u)], global2[_wgslsmith_index_u32(u_input.e.x, 1u)]), global2[_wgslsmith_index_u32(u_input.d, 1u)] | false, select(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], true, true)), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)], true), vec3<bool>(false, false, false), !global2[_wgslsmith_index_u32(0u, 1u)])), vec3<bool>(any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 1u)], global2[_wgslsmith_index_u32(1613u, 1u)])), global2[_wgslsmith_index_u32(~firstLeadingBit(9460u), 1u)], true), vec3<bool>((arg_0.x != -1373f) | any(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(35956u, 1u)])), true, true)));
    global3 = array<Struct_2, 12>();
    return Struct_1(select(~_wgslsmith_add_vec3_i32(vec3<i32>(-30663i, 0i, u_input.a), _wgslsmith_clamp_vec3_i32(global1.wwz, vec3<i32>(29102i, arg_1, u_input.a), global1.yyz)), global1.www, select(!(!vec3<bool>(global2[_wgslsmith_index_u32(var_2.a.x, 1u)], false, global2[_wgslsmith_index_u32(83313u, 1u)])), !vec3<bool>(true, global2[_wgslsmith_index_u32(17958u, 1u)], false), any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 1u)], false)))), select(select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(27726u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<bool>(false, true), false), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], false), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global2[_wgslsmith_index_u32(var_2.a.x, 1u)]), vec2<bool>(global2[_wgslsmith_index_u32(49189u, 1u)], global2[_wgslsmith_index_u32(60739u, 1u)]), vec2<bool>(false, false))), vec2<bool>(global2[_wgslsmith_index_u32(58584u, 1u)] && global2[_wgslsmith_index_u32(3596u, 1u)], all(vec3<bool>(global2[_wgslsmith_index_u32(var_2.a.x, 1u)], global2[_wgslsmith_index_u32(29840u, 1u)], global2[_wgslsmith_index_u32(var_2.a.x, 1u)]))), -1142f >= _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))), vec2<bool>(true, 1897f < arg_0.x), select(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(var_2.a.x, 1u)])), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(33826u, 1u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.b ^ u_input.e.x);
    var var_1 = Struct_2(vec2<i32>(-1290i, 0i), 26524u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), 729f, func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, 581f, 1275f, -798f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-309f, -1391f, 340f, -605f))))), global1.x, u_input.a));
    var var_2 = u_input.a;
    var_2 = u_input.a;
    var var_3 = Struct_3(vec3<i32>(1i, 21654i, var_1.e.a.x), Struct_2(reverseBits(-var_1.a) & vec2<i32>(1i, global1.x), 0u, _wgslsmith_f_op_vec2_f32(-var_1.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x))))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(795f, var_1.c.x, var_1.d, 2364f) * vec4<f32>(987f, 583f, 739f, var_1.d)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-644f, 594f, var_1.c.x, var_1.c.x) + vec4<f32>(-1936f, var_1.d, var_1.d, var_1.d))), 1i, ~var_1.a.x)), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(global1.wy, vec2<i32>(2147483647i, 0i)) << (4294967295u % 32u), ~_wgslsmith_div_i32(24137i, var_1.e.a.x), global1.x), select(var_1.e.b, vec2<bool>(true, true | global2[_wgslsmith_index_u32(1u, 1u)]), true)));
    var var_4 = var_3.b.e.b.x;
    var var_5 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(-19375i);
}

