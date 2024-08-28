struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(-22254i, 61439i, -12433i, 2147483647i), vec4<i32>(1i, -1i, 2147483647i, 3513i), vec4<i32>(-1i, -59314i, -14050i, -43915i), vec4<i32>(0i, -1i, -70334i, 15250i), vec4<i32>(-24121i, 20869i, i32(-2147483648), 17422i), vec4<i32>(58222i, i32(-2147483648), 0i, 20321i), vec4<i32>(-7760i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 15995i, -1i, -1i), vec4<i32>(14227i, 4504i, 18967i, -1833i), vec4<i32>(-46593i, -27873i, 2147483647i, 23917i), vec4<i32>(1i, 67526i, 1i, 1i), vec4<i32>(0i, 2147483647i, 61996i, i32(-2147483648)), vec4<i32>(-34068i, 17026i, 1262i, -30909i), vec4<i32>(1i, -1i, 2147483647i, -42163i), vec4<i32>(i32(-2147483648), -39767i, 53685i, 2147483647i), vec4<i32>(-19543i, -1i, -1i, 54770i), vec4<i32>(81925i, 9934i, -50503i, 9814i), vec4<i32>(-27933i, 0i, 2147483647i, 2147483647i), vec4<i32>(0i, -9761i, 17555i, 24289i), vec4<i32>(i32(-2147483648), -18065i, 11681i, 1i), vec4<i32>(-26996i, -24764i, -1723i, i32(-2147483648)), vec4<i32>(2147483647i, 30691i, 0i, -818i), vec4<i32>(i32(-2147483648), -1i, 33732i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 8760i));

var<private> global1: array<i32, 18> = array<i32, 18>(-73812i, -1i, 26615i, 2147483647i, 2147483647i, -52803i, 6237i, -97360i, -9769i, 1795i, i32(-2147483648), -56780i, 20691i, -1i, -27236i, 0i, 47050i, i32(-2147483648));

var<private> global2: array<u32, 23>;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_1;
    global0 = array<vec4<i32>, 24>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(961f, 1183f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1112f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-580f, 590f))))) + vec2<f32>(430f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1423f))))));
    let var_2 = arg_3.b;
    var_0 = !(!any(vec2<bool>(true, true)));
    return vec2<bool>(true, !(true | !var_2));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global2 = array<u32, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-197f, 1049f, 758f) + vec3<f32>(-464f, -594f, 548f)) - vec3<f32>(-197f, 1190f, -293f)) * vec3<f32>(_wgslsmith_f_op_f32(floor(1497f)), _wgslsmith_f_op_f32(-1434f - -496f), _wgslsmith_f_op_f32(select(1763f, 760f, arg_1.a))))));
    let var_1 = arg_1;
    global3 = var_1;
    var var_2 = var_1;
    return vec2<u32>(~(global2[_wgslsmith_index_u32(~0u, 23u)] | 4294967295u) << (~arg_0.x % 32u), arg_0.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = ~vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(global2[_wgslsmith_index_u32(542u, 23u)], u_input.a.x)), select(vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]), ~u_input.a.yz, func_2(4776i, true, u_input.a.ww, Struct_1(false, arg_2)))));
    let var_1 = firstLeadingBit(vec2<i32>(16637i, firstTrailingBit(0i) ^ ~(-2147483647i)));
    let var_2 = Struct_1(false, arg_2);
    global0 = array<vec4<i32>, 24>();
    var_0 = ~_wgslsmith_div_vec2_u32(func_3(u_input.a.yzz, Struct_1(global3.a, true), var_2), u_input.a.wy);
    return Struct_1(var_2.a, false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~arg_1.b;
    var var_1 = Struct_1(true, all(vec2<bool>(any(!vec3<bool>(global3.b, arg_1.d.b, arg_3.b)), false)));
    let var_2 = Struct_1(select(all(!(!vec4<bool>(true, global3.a, var_1.a, arg_1.a))), all(select(vec3<bool>(global3.a, true, arg_1.a), vec3<bool>(global3.a, false, true), arg_3.a)), select(func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 18u)], u_input.b, 1i), vec3<i32>(2147483647i, u_input.b, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(474u, 23u)], 18u)])), vec4<f32>(1528f, 758f, -550f, -1281f), arg_1.c.a | global3.b).b, arg_0.a, true)), false);
    let var_3 = countOneBits(arg_2);
    var var_4 = func_1(-(-vec3<i32>(u_input.b, -33643i, u_input.b) << (~select(vec3<u32>(0u, 4294967295u, arg_1.b), u_input.a.xwy, false) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(451f, 267f, 1000f, 1064f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(820f, -1000f, -693f, -1568f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -416f, -1994f, -1211f), vec4<f32>(-808f, -269f, -1741f, -414f), global3.b))))), false);
    return func_1(_wgslsmith_mult_vec3_i32(-vec3<i32>(0i, abs(0i), max(u_input.b, 2147483647i)), -_wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, 1i, global1[_wgslsmith_index_u32(27055u, 18u)]), vec3<i32>(-2147483647i, 28370i, var_3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1384f, 237f, -486f, -1278f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-394f, -2290f, -405f, -1797f) * vec4<f32>(-379f, 239f, 1230f, 117f)))))), countOneBits(min(1u, 78796u) >> (~arg_1.b % 32u)) > ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(-(vec3<i32>(-1i, 2628i, 2147483647i) | _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.b, u_input.b), vec3<i32>(0i, u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))), vec4<f32>(-323f, -987f, _wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) - -947f)), true), Struct_2(global3.b && (34884u != countOneBits(u_input.a.x)), global2[_wgslsmith_index_u32(u_input.a.x, 23u)], func_1(vec3<i32>(2371i, 61726i, global1[_wgslsmith_index_u32(4294967295u, 18u)]) | min(vec3<i32>(-261i, -65495i, 0i), vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 0i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-426f, -488f, -799f, -1173f), vec4<f32>(1383f, 205f, 364f, 746f), vec4<bool>(false, true, false, false)))), false), Struct_1(all(vec4<bool>(false, global3.b, false, false)) & false, true)), ~(firstTrailingBit(vec2<i32>(-47235i, global1[_wgslsmith_index_u32(31723u, 18u)])) ^ (vec2<i32>(u_input.b, 10636i) | vec2<i32>(u_input.b, -23661i))) << (_wgslsmith_mod_vec2_u32(u_input.a.zy | firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(5421u, 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45416u, 23u)], 23u)])), ~abs(u_input.a.yw)) % vec2<u32>(32u)), Struct_1(true, 0u == global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(56854u, 4294967295u, u_input.a.x), 23u)]));
    let var_1 = ~reverseBits(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(u_input.a.x & 31479u), 23u)], 18u)]);
    global3 = var_0;
    global0 = array<vec4<i32>, 24>();
    var var_2 = -6425i;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-873f, -1000f, -1187f)))) * vec3<f32>(_wgslsmith_f_op_f32(select(-336f, 360f, global3.a)), _wgslsmith_f_op_f32(step(2755f, 375f)), -1363f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1276f - 379f), 1000f, 384f))))));
    var var_4 = Struct_1(!(~12341i != var_1), true);
    var var_5 = Struct_1(917f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1731f)), _wgslsmith_f_op_f32(select(var_3.x, var_3.x, var_0.a)))) + -426f), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_3), vec2<i32>(-_wgslsmith_add_i32(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), ~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 23u)], 18u)]) << (~vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~19760u) % vec2<u32>(32u)), countOneBits(global0[_wgslsmith_index_u32(1u, 24u)] << (vec4<u32>(0u, 4294967295u, ~1u, ~1u) % vec4<u32>(32u))), vec4<i32>(0i, -abs(u_input.b), 21292i, ~(0i << (u_input.a.x % 32u))));
}

