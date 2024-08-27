struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(3257u), Struct_2(69667u), Struct_2(0u), Struct_2(0u), Struct_2(1u), Struct_2(0u), Struct_2(20216u));

var<private> global2: array<bool, 14> = array<bool, 14>(false, true, true, false, false, false, true, true, true, true, true, true, true, false);

var<private> global3: f32 = -1649f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3) -> bool {
    return true;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global1 = array<Struct_2, 7>();
    let var_0 = 47374i;
    global2 = array<bool, 14>();
    var var_1 = arg_2;
    let var_2 = vec2<bool>(!global2[_wgslsmith_index_u32(121489u, 14u)], !(!func_3(Struct_2(8510u), arg_0, Struct_3(vec4<i32>(arg_1.d, -1i, u_input.d.x, 1i)))));
    return arg_0.d.x;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(func_2(arg_0, Struct_1(abs(-vec2<i32>(arg_1.a.x, arg_0.c.x)) << (firstTrailingBit(countOneBits(vec2<u32>(84724u, 1u))) % vec2<u32>(32u)), true, _wgslsmith_f_op_f32(exp2(arg_0.d.x)), firstTrailingBit(~arg_1.a.x) << (44128u % 32u), _wgslsmith_clamp_i32(-2147483647i, arg_0.c.x, _wgslsmith_mod_i32(~arg_1.a.x, arg_2))), Struct_2(abs(firstTrailingBit(abs(48730u))))));
    let var_0 = _wgslsmith_mult_vec2_i32(abs(select(vec2<i32>(~arg_0.c.x, _wgslsmith_mult_i32(arg_2, arg_2)), firstLeadingBit(~u_input.d.wx), _wgslsmith_f_op_f32(select(arg_0.d.x, -2240f, true)) >= _wgslsmith_f_op_f32(arg_0.d.x - -658f))), vec2<i32>(u_input.c, i32(-1i) * -8021i));
    let var_1 = Struct_1(vec2<i32>(-u_input.c, reverseBits(_wgslsmith_mod_i32(~(-2971i), -2147483647i))), all(select(!vec3<bool>(global2[_wgslsmith_index_u32(arg_0.a.a, 14u)], global2[_wgslsmith_index_u32(u_input.b.x, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)]), select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 14u)], true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b.x, 14u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(41934u, 14u)])), select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(19275u, 14u)]), global2[_wgslsmith_index_u32(4294967295u, 14u)]))) | global2[_wgslsmith_index_u32(61779u, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.d.x)), arg_0.d.x)), 2147483647i, ~(-9873i));
    global1 = array<Struct_2, 7>();
    let var_2 = (vec3<u32>(abs(~0u), ~(~arg_0.b.a), 68159u) & vec3<u32>(13229u, u_input.b.x, ~arg_0.b.a)) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 1u, ~89108u), vec3<u32>(0u, firstTrailingBit(abs(u_input.b.x)), _wgslsmith_dot_vec2_u32(u_input.b | u_input.b, vec2<u32>(arg_0.b.a, u_input.b.x))));
    return Struct_2(var_2.x);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3) -> Struct_2 {
    global2 = array<bool, 14>();
    let var_0 = arg_0;
    let var_1 = 1i;
    global3 = _wgslsmith_f_op_f32(func_2(arg_1, Struct_1(-_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.c.x, arg_2.a.x), vec2<i32>(-27925i, 1i), vec2<i32>(u_input.c, -28162i)), u_input.d.zy), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(892f)), 105f)), min(arg_1.c.x & abs(13076i), 1i), arg_2.a.x), Struct_2(~(abs(arg_1.a.a) << ((80822u >> (1u % 32u)) % 32u)))));
    var var_2 = arg_1.c;
    return global1[_wgslsmith_index_u32(~u_input.b.x, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 2>();
    var var_0 = Struct_4(global1[_wgslsmith_index_u32(0u, 7u)], func_4(_wgslsmith_div_f32(801f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f))), Struct_4(func_1(Struct_4(global1[_wgslsmith_index_u32(u_input.a, 7u)], Struct_2(u_input.b.x), u_input.d, vec2<f32>(424f, 554f)), Struct_3(vec4<i32>(-9174i, 2147483647i, 16047i, u_input.c)), u_input.d.x | u_input.c), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x << (70925u % 32u), 1u), 7u)], u_input.d, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-219f, -139f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-352f, 1641f))))), Struct_3(abs(-vec4<i32>(u_input.d.x, 7757i, u_input.c, u_input.d.x)))), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-25007i, u_input.d.x), u_input.d.zx), i32(-1i) * -1i, u_input.c), u_input.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1029f, -1203f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1203f, -778f), vec2<f32>(450f, 1619f))))))));
    let var_1 = countOneBits(vec3<u32>(~var_0.b.a, _wgslsmith_mult_u32(select(4294967295u, 72244u, global2[_wgslsmith_index_u32(~u_input.b.x, 14u)]), 65570u), 0u));
    var var_2 = u_input.b.x;
    var var_3 = vec4<f32>(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -312f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d.x - var_0.d.x), 3553f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, var_0.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.x)) * var_0.d.x), -469f), _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(exp2(var_0.d.x))));
    var var_4 = vec2<i32>(-1i, ~var_0.c.x);
    let var_5 = Struct_3(vec4<i32>(~(-2147483647i), abs(u_input.d.x ^ 46941i) ^ _wgslsmith_add_i32(2147483647i ^ u_input.c, _wgslsmith_add_i32(var_4.x, var_0.c.x)), 2147483647i, -var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_clamp_vec3_i32(~var_5.a.xzw, vec3<i32>(26952i, var_0.c.x, var_4.x) >> (var_1 % vec3<u32>(32u)), select(u_input.d.zzw, var_5.a.zzw, vec3<bool>(false, global2[_wgslsmith_index_u32(var_1.x, 14u)], global2[_wgslsmith_index_u32(var_0.b.a, 14u)]))) >> (~(~var_1) % vec3<u32>(32u))) ^ firstTrailingBit(firstLeadingBit(var_0.c.wxw)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d), _wgslsmith_f_op_vec2_f32(sign(var_0.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, 1072f) * vec2<f32>(var_3.x, var_0.d.x)) * vec2<f32>(var_0.d.x, -286f)))))));
}

