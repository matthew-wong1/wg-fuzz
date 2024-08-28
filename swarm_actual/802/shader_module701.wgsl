struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_2(Struct_1(true, 2147483647i, -937f))));

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    let var_0 = vec4<i32>(-select(_wgslsmith_add_i32(abs(-38132i), firstTrailingBit(30801i)), 19318i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-25977i), firstLeadingBit(countOneBits(1i)), _wgslsmith_add_i32(1i, 30551i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), ~vec2<i32>(1i, -703i))), min(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, 0i, 2147483647i), vec4<i32>(0i, 0i, 1i, 28073i) >> (vec4<u32>(0u, 12508u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(-1i << (u_input.a.x % 32u), -2147483647i, ~(-18809i), 0i))), -1i, _wgslsmith_sub_i32(~(1i << (~u_input.a.x % 32u)), 1i));
    var var_1 = Struct_2(Struct_1(!select(14200u >= u_input.a.x, true, true), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(21325i, 5664i, var_0.x, -1907i), ~vec4<i32>(-1i, 2147483647i, 25797i, var_0.x)), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1137f))))));
    let var_2 = u_input.b.zz;
    var var_3 = 1u;
    global0 = array<Struct_4, 1>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-983f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1.a.c) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 611f, var_1.a.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1625f, -307f, global1.x)), all(select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(true, var_1.a.a), vec2<bool>(var_1.a.a, false)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.c + -218f) - 321f), _wgslsmith_div_f32(var_1.a.c, _wgslsmith_div_f32(global1.x, global1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1323f, -1074f, 154f)))));
}

fn func_2() -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-235f, -431f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x - -1361f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(round(-747f))))));
    let var_0 = -4321i;
    let var_1 = -select(vec3<i32>(reverseBits(var_0), 36043i, var_0), -vec3<i32>(select(var_0, 28986i, true), var_0, 2147483647i), !vec3<bool>(select(true, false, false), true, false));
    let var_2 = !(any(vec3<bool>(true, true, true)) & true);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -962f), global1.x));
    return global1.x;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    global0 = array<Struct_4, 1>();
    let var_0 = 1142f;
    var var_1 = Struct_4(Struct_2(Struct_1(true, i32(-1i) * -1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))))));
    let var_2 = var_1.a;
    global1 = arg_1;
    return Struct_2(var_2.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 1u)];
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, arg_0.a.c, 432f), vec3<f32>(2254f, global1.x, -469f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1037f, -867f, arg_0.a.c), vec3<f32>(arg_1.a.a.c, var_0.a.a.c, -676f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 222f, arg_3.x), vec3<f32>(arg_0.a.c, -802f, global1.x), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(542f, arg_1.a.a.c, 221f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-1437f, var_0.a.a.c), var_0.a.a.c, _wgslsmith_f_op_f32(-var_0.a.a.c)), vec3<f32>(-953f, var_0.a.a.c, -608f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a.c, 1066f, var_0.a.a.c))))));
    let var_1 = Struct_3(Struct_1(!all(!vec4<bool>(false, arg_1.a.a.a, true, true)), ~1i, arg_1.a.a.c), arg_2);
    global0 = array<Struct_4, 1>();
    return Struct_3(var_1.a, ~arg_1.a.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~reverseBits(firstLeadingBit(u_input.a));
    var var_1 = func_4(Struct_2(Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_sub_i32(11008i, 1i) >> (u_input.b.x % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) - _wgslsmith_f_op_f32(-global1.x)))), Struct_4(func_1(~1i, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, global1.x, 577f))), 851i >> (~var_0.x % 32u))), -(5366i >> (u_input.b.x % 32u)), vec2<f32>(global1.x, global1.x));
    let var_2 = vec4<i32>(~15816i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-29045i, func_1(18120i, vec3<f32>(-1817f, global1.x, 1089f), -17790i).a.b), _wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(var_1.a.b, -2147483647i), ~25997i), 0i) << (~4294967295u % 32u), _wgslsmith_div_i32(var_1.a.b | 27238i, var_1.b) >> (u_input.b.x % 32u), _wgslsmith_mult_i32(abs(_wgslsmith_div_i32(var_1.a.b, var_1.b) | var_1.a.b), var_1.b));
    global0 = array<Struct_4, 1>();
    var var_3 = _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(var_2.x, 0i)), ~(~reverseBits(vec2<i32>(var_2.x, -19354i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-234f))), -1000f)))), firstTrailingBit(vec2<u32>(0u, ~var_0.x)), func_4(func_1(var_2.x, vec3<f32>(1476f, _wgslsmith_f_op_f32(f32(-1f) * -1315f), 1122f), var_2.x), Struct_4(Struct_2(func_1(var_2.x, vec3<f32>(384f, global1.x, var_1.a.c), -1i).a)), var_3.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c, 262f)), _wgslsmith_f_op_vec2_f32(-global1.xy))))).a.b, u_input.b, ~vec4<u32>(_wgslsmith_add_u32(~1u, abs(var_0.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.b.xx), vec2<u32>(var_0.x, 12217u) | u_input.b.zy), ~max(47614u, u_input.a.x), min(~49693u, var_0.x)));
}

