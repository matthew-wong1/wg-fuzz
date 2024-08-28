struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<bool, 17> = array<bool, 17>(false, true, false, true, false, false, true, false, false, false, true, false, false, false, true, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: Struct_3) -> vec2<bool> {
    return arg_3.b.xx;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_3(arg_0, !vec3<bool>(any(!vec3<bool>(global1[_wgslsmith_index_u32(arg_3.x, 17u)], arg_2, false)), any(!vec3<bool>(false, false, arg_2)), all(func_3(vec2<bool>(arg_2, arg_0.b), vec2<bool>(true, arg_2), vec4<f32>(-307f, 970f, -424f, -162f), Struct_3(arg_0, vec3<bool>(arg_0.b, false, global1[_wgslsmith_index_u32(6819u, 17u)]))))));
    var_0 = Struct_3(Struct_1(var_0.a.a, true), select(!select(select(vec3<bool>(true, true, arg_0.b), var_0.b, var_0.b), var_0.b, select(var_0.b, vec3<bool>(var_0.a.b, arg_2, true), arg_2)), !select(var_0.b, vec3<bool>(false, var_0.a.b, true), vec3<bool>(false, var_0.b.x, global1[_wgslsmith_index_u32(arg_3.x, 17u)])), select(var_0.b, select(!var_0.b, var_0.b, all(vec4<bool>(false, var_0.b.x, true, arg_2))), !(!arg_0.b))));
    global0 = countOneBits(vec4<u32>(~_wgslsmith_mod_u32(1u, abs(1u)), countOneBits(_wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_0.a, 8545u, 18612u), arg_1.wxz), ~arg_1.www)), reverseBits(_wgslsmith_sub_u32(~arg_0.a, ~0u)), 51887u));
    global0 = ~(vec4<u32>(3574u, firstTrailingBit(42968u), 0u, ~(~global0.x)) & arg_1);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(395f, -117f, -298f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-965f, 1130f, -1034f), vec3<f32>(1000f, 163f, 760f))), true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(315f, -1352f, -510f) + vec3<f32>(-150f, -148f, 1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(528f, 1369f, 849f) + vec3<f32>(550f, -594f, 825f))))));
    return Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(reverseBits(arg_1.xx), select(arg_1.xz, ~vec2<u32>(0u, global0.x), true)), !all(var_0.b.xy)), vec3<bool>(!arg_0.b, true, arg_2));
}

fn func_4(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = ~0u;
    let var_1 = _wgslsmith_sub_vec3_i32(min(~vec3<i32>(1i, 1i, 1i), select(abs(abs(vec3<i32>(-67111i, 0i, -10084i))), reverseBits(reverseBits(vec3<i32>(-18402i, 9129i, -1i))), false)), vec3<i32>(_wgslsmith_clamp_i32(abs(1i), 2147483647i, countOneBits(1i)), -2147483647i, -1i));
    let var_2 = _wgslsmith_div_f32(259f, _wgslsmith_f_op_f32(1436f + -855f));
    global1 = array<bool, 17>();
    var var_3 = var_1.yx;
    return vec3<f32>(var_2, var_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(279f * _wgslsmith_f_op_f32(round(-1399f))))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = ~firstTrailingBit(select(4294967295u, 4294967295u, !arg_0.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(975f, -1467f, 2657f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, -1456f, 537f)), !arg_0.b)), _wgslsmith_f_op_vec3_f32(func_4(func_2(Struct_1(var_0, global1[_wgslsmith_index_u32(84815u, 17u)]), vec4<u32>(10012u, var_0, 3689u, arg_0.a), false, global0.ywz))), func_2(arg_0, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, u_input.b, global0.x, 44984u), vec4<u32>(u_input.a.x, arg_0.a, u_input.a.x, arg_0.a)), false, _wgslsmith_mod_vec3_u32(global0.yzw, vec3<u32>(arg_0.a, global0.x, global0.x))).b)))));
    var var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(~(-vec2<i32>(0i, -48668i))) | -_wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(~firstTrailingBit(1i), 2147483647i));
    let var_3 = Struct_3(Struct_1(~170355u & ~(10169u | global0.x), true), select(vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(1273f + var_1.x) < -260f, _wgslsmith_f_op_f32(240f + var_1.x) == var_1.x), select(!func_2(arg_0, vec4<u32>(u_input.b, arg_0.a, 15799u, global0.x), false, global0.wxz).b, !select(vec3<bool>(global1[_wgslsmith_index_u32(53519u, 17u)], arg_0.b, true), vec3<bool>(arg_0.b, arg_0.b, global1[_wgslsmith_index_u32(var_0, 17u)]), true), arg_0.b), arg_0.b));
    let var_4 = Struct_4(func_2(func_2(Struct_1(var_0, !arg_0.b), vec4<u32>(firstTrailingBit(1u), ~4294967295u, _wgslsmith_add_u32(global0.x, global0.x), ~u_input.b), false, ~(~vec3<u32>(1u, 1u, arg_0.a))).a, vec4<u32>(~_wgslsmith_div_u32(arg_0.a, arg_0.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.a, var_0, 4294967295u, arg_0.a), vec4<u32>(30796u, arg_0.a, global0.x, 0u)), var_3.a.a, ~global0.x), global1[_wgslsmith_index_u32(~var_0, 17u)], global0.wzz ^ vec3<u32>(abs(u_input.b), ~var_3.a.a, 163965u)).b, abs(~(~(~vec4<i32>(1169i, -2147483647i, -32304i, 19743i)))), true, -47852i, vec4<i32>(1i, firstTrailingBit(~reverseBits(-2336i)), 1i, 0i));
    return i32(-1i) * -24211i;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: vec4<i32>) -> Struct_3 {
    global0 = vec4<u32>(16483u, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, u_input.b, 1u), 0u), min(arg_1.a.x, arg_2), _wgslsmith_mod_u32((u_input.b >> (32025u % 32u)) >> (1u % 32u), max(4294967295u, _wgslsmith_clamp_u32(firstTrailingBit(arg_1.b), 58638u, arg_1.a.x))));
    return Struct_3(Struct_1(u_input.a.x, false), func_2(Struct_1(0u, func_3(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(arg_1.a.x, 17u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1200f, -1000f, -929f, -482f)), Struct_3(Struct_1(28972u, global1[_wgslsmith_index_u32(u_input.b, 17u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 17u)]))).x), firstTrailingBit(~firstLeadingBit(vec4<u32>(1u, 38539u, 72645u, 0u))), all(!select(vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 17u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(18865u, 17u)], global1[_wgslsmith_index_u32(64501u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]), true)), arg_1.a).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_u32(global0.x, max(reverseBits(30285u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 51613u), vec2<u32>(u_input.b, 4294967295u)))), true);
    let var_1 = global0.x;
    var var_2 = true;
    global1 = array<bool, 17>();
    let var_3 = func_5(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 65274i, -9269i) | select(vec3<i32>(11650i, 1418i, -2147483647i), vec3<i32>(0i, 11958i, 2147483647i), false), -select(vec3<i32>(2147483647i, 43010i, -1i), vec3<i32>(-1i, -19963i, 38546i), vec3<bool>(false, false, true))), _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -1i, 1i, func_1(Struct_1(4294967295u, global1[_wgslsmith_index_u32(global0.x, 17u)]))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, 2147483647i, 85861i)))), Struct_2(min(select(vec3<u32>(u_input.b, 49127u, 1u), global0.wxz, select(vec3<bool>(false, false, true), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.a, 17u)], true), var_0.b)), _wgslsmith_clamp_vec3_u32(global0.zyz, global0.xwz, global0.yxx) ^ min(vec3<u32>(21133u, global0.x, var_0.a), vec3<u32>(4294967295u, var_0.a, 80647u))), reverseBits(~4826u)), 1u, -(~(abs(vec4<i32>(-1i, -2147483647i, 2147483647i, -11263i)) << (vec4<u32>(3615u, var_0.a, 4294967295u, 4294967295u) % vec4<u32>(32u)))));
    var_0 = Struct_1(~(~(~(~var_3.a.a))), func_5(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-2147483647i, 17130i, 2147483647i), vec3<i32>(-46798i, 1i, -1i), global1[_wgslsmith_index_u32(global0.x, 17u)]), firstLeadingBit(vec3<i32>(-3601i, 12328i, -21198i)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -11941i, 2147483647i), vec3<i32>(33514i, 54781i, 2147483647i))), vec3<i32>(-22360i, ~(-39729i), reverseBits(0i))), Struct_2(global0.yww, 1u), reverseBits(33710u), abs(~(~vec4<i32>(-5299i, -2147483647i, -1i, 19481i)))).b.x);
    global1 = array<bool, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-106f, 879f))))), 1000f), ~max(firstTrailingBit(-1i), _wgslsmith_clamp_i32(~12480i, 1i, max(-1i, 0i))));
}

