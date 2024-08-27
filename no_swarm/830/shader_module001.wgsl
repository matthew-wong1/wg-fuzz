struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = ~vec4<i32>(-83527i, -1i, _wgslsmith_add_i32(~_wgslsmith_mod_i32(1i, -4081i), global0.x), ~4570i);
    global0 = -firstLeadingBit(vec2<i32>(arg_0.x, -32231i));
    global2 = array<Struct_1, 26>();
    var var_1 = vec4<u32>(~(~(1u >> (select(14889u, 0u, true) % 32u))), ~(~arg_2.b.x), ~(4294967295u << (~(4294967295u << (arg_2.b.x % 32u)) % 32u)), global1.x);
    var_0 = -vec4<i32>(-826i, _wgslsmith_dot_vec2_i32(arg_0.xx, min(vec2<i32>(-15074i, -2147483647i), vec2<i32>(1i, 5057i))), u_input.b, ~0i) | vec4<i32>(~(-2147483647i), abs(_wgslsmith_mod_i32(abs(var_0.x), -arg_0.x)), -var_0.x, 16850i);
    return 596f;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(sign(661f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c) * _wgslsmith_f_op_f32(select(133f, arg_2, false))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, global0.x), vec3<i32>(-10165i, -1i, -1i)), ~arg_1.a.xx, Struct_1(vec4<u32>(13923u, arg_0.x, 27180u, u_input.a.x), arg_1.a, 374f), Struct_1(vec4<u32>(u_input.e.x, arg_1.b.x, 0u, 8413u), vec4<u32>(arg_0.x, arg_0.x, 9333u, 0u), arg_3.c))))));
    return max(_wgslsmith_mult_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(1i, 211i, global0.x, u_input.b)) ^ (-vec4<i32>(-59289i, global0.x, global0.x, -1i) << (~arg_3.a % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global0.x, global0.x, 38906i), _wgslsmith_sub_vec4_i32(vec4<i32>(32584i, global0.x, -2147483647i, 0i), vec4<i32>(u_input.b, -2147483647i, u_input.b, global0.x)))), abs(select(_wgslsmith_sub_vec4_i32(-vec4<i32>(-12988i, u_input.b, 2147483647i, 32011i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, global0.x, global0.x), vec4<i32>(0i, 40104i, -2147483647i, 49098i))), ~firstLeadingBit(vec4<i32>(2147483647i, -36059i, u_input.b, global0.x)), true)));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = all(vec4<bool>(!all(vec3<bool>(false, true, true)), !any(vec3<bool>(false, false, true)) && !(arg_2 < -1164f), (~(-10296i) < global0.x) | (true | (0u <= u_input.c)), select(true, any(vec3<bool>(true, false, true)), false) || true));
    var var_1 = !((true | all(vec4<bool>(true, true, true, true))) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + -1235f) <= -658f));
    var var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(firstLeadingBit(arg_3.b), arg_3.b), arg_3.a, ~arg_3.b), ~select(arg_3.a, _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_3.b, vec4<u32>(global1.x, global1.x, 84723u, global1.x), vec4<u32>(global1.x, 21115u, 4294967295u, 24571u)), _wgslsmith_div_vec4_u32(vec4<u32>(20172u, 0u, 4294967295u, u_input.a.x), arg_3.a)), 7934u == _wgslsmith_mult_u32(arg_3.b.x, u_input.a.x)), _wgslsmith_div_f32(-938f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2))))));
    let var_3 = arg_3;
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_3.c)))), _wgslsmith_f_op_f32(func_3(arg_0.wxw, vec2<u32>(48914u, ~max(arg_3.a.x, 77807u)), arg_3, Struct_1(abs(var_2.b) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 0u, 52548u, arg_3.b.x), var_2.b), var_2.a, _wgslsmith_f_op_f32(2738f * -1099f))))));
    return 0i;
}

fn func_1() -> vec2<i32> {
    global1 = vec2<u32>(global1.x ^ abs(_wgslsmith_add_u32(global1.x ^ 10651u, global1.x)), 35156u);
    let var_0 = ~func_4(reverseBits(func_2(vec4<u32>(0u, u_input.a.x, 4294967295u, global1.x), Struct_1(vec4<u32>(74345u, 1u, global1.x, u_input.a.x), vec4<u32>(u_input.c, 4294967295u, u_input.d.x, global1.x), -825f), 887f, global2[_wgslsmith_index_u32(0u, 26u)])), -2147483647i, _wgslsmith_f_op_f32(ceil(-234f)), global2[_wgslsmith_index_u32(u_input.a.x, 26u)]) | u_input.b;
    var var_1 = _wgslsmith_dot_vec2_u32(~(firstTrailingBit(~vec2<u32>(global1.x, global1.x)) | u_input.e), _wgslsmith_div_vec2_u32(~u_input.a, abs(u_input.e) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(6045u, global1.x), vec2<u32>(u_input.e.x, 0u), u_input.e)));
    var var_2 = -vec4<i32>(firstLeadingBit(var_0) << (4294967295u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, -9932i, global0.x), vec3<i32>(u_input.b, var_0, u_input.b)), -vec3<i32>(-1i, var_0, -2147483647i)), -var_0, 0i) & _wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0, var_0, var_0), -vec4<i32>(21841i, var_0, 2147483647i, 13150i)), _wgslsmith_mult_vec4_i32(~(vec4<i32>(2129i, -5454i, var_0, var_0) & vec4<i32>(-9442i, 39361i, var_0, var_0)), ~(~vec4<i32>(-2147483647i, var_0, var_0, -20504i))));
    var var_3 = global2[_wgslsmith_index_u32(31172u, 26u)];
    return ~vec2<i32>(_wgslsmith_add_i32(-15360i, func_2(vec4<u32>(u_input.e.x, 62818u, 6201u, 1u) | var_3.a, global2[_wgslsmith_index_u32(~global1.x, 26u)], -1686f, global2[_wgslsmith_index_u32(u_input.a.x, 26u)]).x), ~func_4(vec4<i32>(5206i, var_0, u_input.b, 50312i), 29392i, var_3.c, Struct_1(vec4<u32>(var_3.a.x, 95773u, u_input.d.x, global1.x), var_3.a, var_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec2_i32(~abs(vec2<i32>(abs(1i), global0.x)), select(vec2<i32>(countOneBits(global0.x), u_input.b), func_1(), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)) ^ -vec2<i32>(-u_input.b, _wgslsmith_sub_i32(u_input.b, global0.x)));
    var var_0 = Struct_1(select(~vec4<u32>(1u, 37156u, _wgslsmith_mult_u32(1u, 119995u), global1.x | 18929u), _wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, global1.x, global1.x, 104508u) & ~vec4<u32>(21781u, 39195u, 1u, global1.x), ~(~vec4<u32>(52357u, global1.x, global1.x, 11796u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), (vec4<u32>(u_input.e.x ^ u_input.d.x, global1.x, ~u_input.c, ~54301u) ^ vec4<u32>(u_input.d.x & u_input.a.x, ~1u, firstLeadingBit(36011u), global1.x)) << (~reverseBits(~vec4<u32>(7899u, 433u, global1.x, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1117f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2502f))))));
    global2 = array<Struct_1, 26>();
    let var_1 = vec4<u32>(38278u, u_input.a.x, ~57917u, _wgslsmith_sub_u32(select(min(~global1.x, 0u), _wgslsmith_mult_u32(u_input.d.x, 4294967295u) & ~var_0.b.x, true), min(~u_input.d.x, 70417u)));
    let var_2 = global2[_wgslsmith_index_u32(0u, 26u)];
    let var_3 = vec2<bool>(any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false))), u_input.a.x > (_wgslsmith_mod_u32(var_1.x, ~var_2.a.x) ^ u_input.a.x));
    global1 = var_1.zx;
    global2 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, -1i), ~vec2<i32>(global0.x, global0.x))), countOneBits(1u));
}

