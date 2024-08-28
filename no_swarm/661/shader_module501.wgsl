struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(-52349i, 1611i));

var<private> global1: i32;

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec2<i32>(43055i, 5381i)), Struct_2(vec2<i32>(33351i, i32(-2147483648))), Struct_2(vec2<i32>(0i, -1i)), Struct_2(vec2<i32>(2147483647i, 0i)), Struct_2(vec2<i32>(-1i, -1i)), Struct_2(vec2<i32>(-1i, 0i)), Struct_2(vec2<i32>(1i, -21767i)), Struct_2(vec2<i32>(1i, 8917i)), Struct_2(vec2<i32>(0i, -15515i)), Struct_2(vec2<i32>(47413i, 0i)), Struct_2(vec2<i32>(8804i, 13268i)), Struct_2(vec2<i32>(-16556i, i32(-2147483648))), Struct_2(vec2<i32>(34756i, -2303i)), Struct_2(vec2<i32>(i32(-2147483648), -8354i)), Struct_2(vec2<i32>(-1i, 2147483647i)), Struct_2(vec2<i32>(-2822i, 1i)), Struct_2(vec2<i32>(29723i, 2147483647i)), Struct_2(vec2<i32>(0i, 0i)), Struct_2(vec2<i32>(-74873i, 13672i)), Struct_2(vec2<i32>(0i, i32(-2147483648))), Struct_2(vec2<i32>(-64328i, 1i)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3.a.x;
    global2 = array<Struct_2, 21>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1515f, 582f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-593f, 228f) * vec2<f32>(1128f, 245f))))))), 29224i, select(_wgslsmith_mod_vec4_i32(-vec4<i32>(-57562i, arg_3.a.x, arg_0.a.x, 2147483647i), _wgslsmith_mult_vec4_i32(~vec4<i32>(arg_3.a.x, -1i, 26187i, -2147483647i), reverseBits(vec4<i32>(arg_3.a.x, -46261i, 39576i, 104190i)))), reverseBits(vec4<i32>(~arg_3.a.x, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, arg_3.a.x, -65618i), vec3<i32>(arg_0.a.x, 17590i, -21255i)), i32(-1i) * -1i)), !(all(vec2<bool>(arg_2, arg_2)) || arg_2)), ~_wgslsmith_add_i32(select(firstLeadingBit(arg_3.a.x), arg_0.a.x, all(vec2<bool>(true, true))), -reverseBits(arg_3.a.x)), ~(-arg_0.a.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1182f, 1000f) + vec2<f32>(811f, -696f)) - vec2<f32>(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(-947f - -343f))), var_1.a.x)), arg_3.a.x, firstLeadingBit(var_1.c), 1i, -30148i);
    return 1u;
}

fn func_2() -> u32 {
    global1 = global0.a.x;
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_mult_u32(29765u, 4294967295u | u_input.b) | func_3(global2[_wgslsmith_index_u32(u_input.a, 21u)], Struct_2(vec2<i32>(global0.a.x, 1338i)), true, Struct_2(global0.a))), select(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, 23281u)), vec2<u32>(u_input.b, u_input.a)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, 0u), vec2<u32>(u_input.b, u_input.b), false), _wgslsmith_mult_vec2_u32(vec2<u32>(15966u, u_input.b), vec2<u32>(1u, u_input.a)), vec2<u32>(1u, 35645u)), min(vec2<u32>(u_input.b, u_input.a), vec2<u32>(27258u, u_input.a))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), true))));
    var var_1 = Struct_2(abs(global0.a));
    var var_2 = global2[_wgslsmith_index_u32(0u, 21u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(312f)), _wgslsmith_f_op_f32(243f + -1000f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1148f, -1032f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -371f) * vec2<f32>(1180f, -189f))))), var_2.a.x, ~(select(vec4<i32>(-23992i, 28213i, global0.a.x, -2147483647i), -vec4<i32>(var_2.a.x, var_2.a.x, var_1.a.x, 18202i), true) | vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x & var_1.a.x, -var_1.a.x)), var_1.a.x, -_wgslsmith_mod_i32(_wgslsmith_add_i32(var_2.a.x, 10890i), -1i));
    return min(42459u, _wgslsmith_clamp_u32(17205u, _wgslsmith_mod_u32(~(~u_input.b), func_3(global2[_wgslsmith_index_u32(113u, 21u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(44500u, 4294967295u), 21u)], all(vec4<bool>(false, false, false, false)), global2[_wgslsmith_index_u32(~var_0.x, 21u)])), ~(~1u >> (~u_input.a % 32u))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: bool) -> vec2<i32> {
    let var_0 = global2[_wgslsmith_index_u32(func_2(), 21u)];
    var var_1 = ~(~0i >> (firstTrailingBit(~(~17420u)) % 32u));
    global2 = array<Struct_2, 21>();
    let var_2 = vec3<f32>(1f, 1f, 1f);
    var var_3 = var_2.x;
    return ~min(_wgslsmith_add_vec2_i32(countOneBits(-vec2<i32>(var_0.a.x, -2947i)), max(var_0.a, firstLeadingBit(vec2<i32>(arg_0.x, -2147483647i)))), arg_0);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = ~_wgslsmith_div_vec4_u32(firstLeadingBit(select(vec4<u32>(4294967295u, u_input.b, 10892u, u_input.b), vec4<u32>(4451u, u_input.a, u_input.b, 96293u), false)) & _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.b, 4294967295u, u_input.a), vec4<u32>(4294967295u, 50152u, u_input.b, 73908u)), vec4<u32>(~_wgslsmith_mod_u32(88187u, 50692u), ~_wgslsmith_mod_u32(u_input.a, 4294967295u), 46969u, (u_input.b | 65075u) | 62563u));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x - 1302f), _wgslsmith_f_op_f32(select(125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + -533f), true)))));
    var_1 = arg_1.a.x;
    let var_2 = func_2();
    var var_3 = arg_1.a;
    return Struct_2(func_1(vec2<i32>(func_1(select(vec2<i32>(-15847i, global0.a.x), vec2<i32>(-25945i, arg_0.x), true), ~vec4<u32>(15029u, var_2, 18464u, var_2), true).x, arg_0.x), ~(~select(vec4<u32>(15096u, 4294967295u, 0u, 39209u), vec4<u32>(u_input.a, 4294967295u, var_0.x, 0u), true)), any(vec3<bool>(false, false, all(vec3<bool>(false, false, true))))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_1(vec2<f32>(102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1571f))), -firstTrailingBit(min(_wgslsmith_add_i32(15145i, -83785i), -28499i)), vec4<i32>(-firstLeadingBit(5477i << (u_input.b % 32u)), global0.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(-16916i, 12902i, arg_2, 1i), ~vec4<i32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)), arg_2), firstTrailingBit(1i), arg_3.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) + var_0.a) * var_0.a)), (global0.a.x & ~(~arg_2)) | _wgslsmith_mult_i32(2147483647i << (func_2() % 32u), firstLeadingBit(0i)), vec4<i32>(i32(-1i) * -var_0.e, global0.a.x, ~arg_1.a.x | arg_0, global0.a.x << (~u_input.a % 32u)) & select(vec4<i32>(_wgslsmith_mod_i32(7685i, arg_3.a.x), ~arg_0, ~global0.a.x, 1i), _wgslsmith_div_vec4_i32(select(vec4<i32>(31984i, -2147483647i, var_0.b, var_0.d), vec4<i32>(-2147483647i, -1i, 56611i, 35750i), vec4<bool>(true, false, false, true)), var_0.c), vec4<bool>(true, true, true, any(vec3<bool>(true, false, false)))), 2147483647i, ~_wgslsmith_sub_i32(-_wgslsmith_div_i32(1i, 5375i), 2147483647i));
    var var_2 = arg_1.a;
    global2 = array<Struct_2, 21>();
    var_2 = -(arg_3.a << (abs(vec2<u32>(23568u, u_input.a) & vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, min(u_input.a ^ u_input.b, u_input.b)), firstLeadingBit(~(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(0u, u_input.a)))) % vec2<u32>(32u));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(countOneBits(global0.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(firstLeadingBit(abs(-52455i)), Struct_2(-(global0.a >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))), global0.a.x, func_4(func_1(vec2<i32>(var_0.a.x, global0.a.x), vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b), all(vec3<bool>(true, false, true))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -244f)), countOneBits(var_0.a.x), ~vec4<i32>(var_0.a.x, -1i, -34843i, var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, 28702i, global0.a.x, -2147483647i), vec4<i32>(-2147483647i, global0.a.x, var_0.a.x, 2147483647i)), countOneBits(global0.a.x))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 762f))), vec2<f32>(-1133f, 801f))) - vec2<f32>(_wgslsmith_f_op_f32(min(407f, 1517f)), _wgslsmith_f_op_f32(-585f - -723f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1473f, 1649f)) * vec2<f32>(1107f, 148f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-520f, 996f), vec2<f32>(-460f, 1149f)) - vec2<f32>(-1000f, 1474f)))), _wgslsmith_dot_vec2_i32(var_0.a, vec2<i32>(var_0.a.x & 1i, global0.a.x) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1170u), vec2<u32>(19708u, u_input.a)), vec2<u32>(4294967295u, u_input.b), max(vec2<u32>(u_input.b, u_input.a), vec2<u32>(19652u, u_input.b))) % vec2<u32>(32u))), -((vec4<i32>(-693i, 10307i, var_0.a.x, var_0.a.x) << (vec4<u32>(0u, 22955u, 17422u, u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(83214u, u_input.a, u_input.a, u_input.b) % vec4<u32>(32u))) >> (max(vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, 73996u, 1u), vec4<u32>(u_input.b, u_input.a, 4294967295u, 54557u)), u_input.b, ~71132u), vec4<u32>(~4294967295u, u_input.b | u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 67673u), vec2<u32>(1u, u_input.b)), 18471u)) % vec4<u32>(32u)), firstTrailingBit(~(~(~13919i))), _wgslsmith_mod_i32(~(-1i), _wgslsmith_mult_i32(~(1i & global0.a.x), ~(-6330i))));
    var var_3 = u_input.a;
    var var_4 = !(!vec4<bool>(select(true, true, false), true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false)), ~u_input.a != u_input.b));
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(var_2.a))))))), 61964i, var_2.c, (select(-471i, ~(-2147483647i), false) ^ _wgslsmith_mod_i32(global0.a.x, 1i)) ^ -19463i, _wgslsmith_sub_i32(var_0.a.x, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -361f)))));
}

