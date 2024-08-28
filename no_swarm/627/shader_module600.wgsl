struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec4<u32>) -> bool {
    global0 = array<vec2<u32>, 21>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(arg_1.ww)), arg_1.yz)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.zw + vec2<f32>(arg_1.x, 331f)))))) - _wgslsmith_f_op_vec2_f32(-arg_1.xw));
    var var_1 = Struct_2(arg_1.x, select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec2<bool>(true, true)), 1867f != arg_1.x)), vec3<bool>(true, all(vec2<bool>(true, true)), true), all(vec3<bool>(true, true, true))), ~_wgslsmith_div_i32(reverseBits(u_input.b.x | u_input.b.x), ~u_input.b.x | -1i), vec4<bool>(true, !(all(vec3<bool>(true, true, false)) == false), false, any(vec2<bool>(true, false))), false);
    var var_2 = max(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-9910i, -79192i), u_input.b.yw), u_input.b.yw, -u_input.b.wz >> (vec2<u32>(56967u, 1u) % vec2<u32>(32u))) | _wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(_wgslsmith_div_i32(-1i, 1i), _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, var_1.c))), u_input.b.xw);
    global0 = array<vec2<u32>, 21>();
    return all(!vec4<bool>(any(select(var_1.d.xy, vec2<bool>(true, false), var_1.e)), arg_1.x < _wgslsmith_f_op_f32(abs(var_1.a)), true, all(var_1.d)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = 318f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-2803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-533f))))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f - _wgslsmith_f_op_f32(-1145f + 549f)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(abs(418f)), vec3<bool>(arg_1, all(vec4<bool>(true, func_3(u_input.a.yy, vec4<f32>(-494f, 450f, 418f, -307f), vec4<u32>(1u, 31898u, arg_0, 18409u)), arg_2, any(vec4<bool>(true, arg_1, true, false)))), _wgslsmith_f_op_f32(ceil(619f)) > _wgslsmith_f_op_f32(sign(-1630f))), _wgslsmith_mod_i32(i32(-1i) * -32999i, -abs(u_input.b.x)), vec4<bool>(true, arg_2, u_input.b.x > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i), ~vec2<i32>(2147483647i, u_input.b.x)), true), arg_2);
    global0 = array<vec2<u32>, 21>();
    return Struct_2(-1072f, var_1.d.zyx, _wgslsmith_add_i32(countOneBits((-1i ^ var_1.c) ^ 1i), var_1.c), !(!vec4<bool>(select(var_1.b.x, arg_1, arg_2), func_3(vec2<u32>(arg_0, u_input.a.x), vec4<f32>(var_1.a, var_1.a, 1484f, var_1.a), u_input.a), arg_2, true)), false);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_3.d;
    var var_1 = func_2(1u ^ u_input.a.x, true, arg_3.a == -578f);
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(arg_0.d.zxw, vec3<i32>(_wgslsmith_add_i32(~arg_0.c & 0i, -_wgslsmith_mult_i32(arg_1.x, arg_0.c)), arg_3.c, min(~arg_3.c, -max(arg_3.c, arg_1.x))), countOneBits(~select(u_input.a.x, arg_2, !arg_3.e)), arg_0.b.x);
    global0 = array<vec2<u32>, 21>();
    var var_1 = select(select(arg_0.b.xy, !(!(!vec2<bool>(true, arg_3.d.x))), !all(select(var_0.a.yy, vec2<bool>(var_0.a.x, arg_3.e), var_0.d))), vec2<bool>(true, true), func_1(~(var_0.c << (var_0.c % 32u)) << (24795u % 32u), _wgslsmith_add_vec4_i32(u_input.b, max(-u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.c, arg_1.x, var_0.b.x, var_0.b.x), u_input.b))), _wgslsmith_mod_i32(~_wgslsmith_mod_i32(39337i, arg_3.c), 1i), arg_3).b.zz);
    var_1 = func_1(58563u, u_input.b, var_0.b.x, Struct_2(1f, !(!select(vec3<bool>(true, var_1.x, false), arg_0.b, true)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_0.b, vec3<i32>(37085i, u_input.b.x, 0i)), arg_3.c), ~arg_3.c), !arg_3.d, _wgslsmith_sub_i32(3093i ^ arg_0.c, -var_0.b.x) > ((u_input.b.x >> (1u % 32u)) ^ (i32(-1i) * -24853i)))).d.wy;
    var var_2 = vec2<u32>(~35u, ~1u);
    return arg_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = 637f;
    var var_1 = vec4<i32>(_wgslsmith_div_i32(~_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_1.c, -2147483647i), -u_input.b.x), 1i >> (u_input.c % 32u)), u_input.b.x, arg_1.c, _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.zx, vec2<i32>(arg_3.c, arg_3.c)), _wgslsmith_mult_vec2_i32(u_input.b.yx, u_input.b.xy)), -vec2<i32>(~arg_1.c, -2147483647i)));
    var var_2 = vec4<i32>(max(u_input.b.x, -17056i), -arg_1.c, arg_3.c, _wgslsmith_mult_i32(2147483647i, var_1.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_3.a, arg_3.a), _wgslsmith_f_op_f32(abs(arg_1.a)))), 1438f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_3.a, 179f)), _wgslsmith_f_op_f32(-499f - arg_1.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, 169f, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, -696f, !arg_3.b.x)), 1960f, arg_3.a, func_2(u_input.a.x, true, all(vec4<bool>(false, true, true, arg_1.b.x))).a)));
    let var_4 = true;
    return countOneBits(~max(~arg_1.c, ~59853i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 21>();
    let var_0 = !(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-994f, 805f, -1636f, 1516f)), Struct_2(_wgslsmith_f_op_f32(step(1296f, 1000f)), vec3<bool>(true, true, true), 2147483647i, select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true), true), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.c, u_input.c)), ~global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), func_4(Struct_2(837f, vec3<bool>(true, false, true), u_input.b.x, vec4<bool>(false, false, true, true), false), ~vec2<i32>(u_input.b.x, -2147483647i), abs(u_input.a.x), func_1(u_input.a.x, u_input.b, u_input.b.x, Struct_2(-1068f, vec3<bool>(true, false, false), 8491i, vec4<bool>(true, true, false, false), true)))) > 2147483647i);
    global0 = array<vec2<u32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(10913u, abs(0u), 33624u), u_input.a.xyx ^ firstLeadingBit(~vec3<u32>(0u, 28237u, 1u))), select(firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.a.zyy, u_input.a.xyx)) ^ vec3<u32>(u_input.c, 1u, firstTrailingBit(1u)), u_input.a.zxw, !(!var_0 & (var_0 == var_0))));
}

