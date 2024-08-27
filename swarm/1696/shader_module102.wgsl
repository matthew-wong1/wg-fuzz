struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
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

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 0u);

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(0i, -19746i, -1i, i32(-2147483648)), vec4<i32>(15481i, 23773i, -23341i, 27423i), vec4<i32>(1i, 1i, 0i, -30751i), vec4<i32>(454i, -7088i, -1i, 17981i), vec4<i32>(25476i, -56551i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, 23475i, 23502i, 2147483647i), vec4<i32>(-24034i, 1i, 2147483647i, 1i), vec4<i32>(-5921i, 1i, -28920i, -17240i), vec4<i32>(i32(-2147483648), 0i, 45278i, 8054i), vec4<i32>(-14046i, -1i, -46215i, -12163i), vec4<i32>(2147483647i, -12922i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 2147483647i, 38377i, -2921i), vec4<i32>(-1i, 28655i, -20066i, 23585i), vec4<i32>(8631i, -4847i, 10432i, 0i), vec4<i32>(-47490i, 1i, -48817i, 2147483647i), vec4<i32>(2147483647i, 1i, i32(-2147483648), -1i), vec4<i32>(-21658i, -10399i, 2147483647i, -1i), vec4<i32>(1i, 87522i, -1i, 2147483647i), vec4<i32>(81038i, 1i, 23199i, 1i), vec4<i32>(2147483647i, 1i, -37631i, -30883i), vec4<i32>(10776i, -15705i, 13882i, -31857i), vec4<i32>(2147483647i, 0i, 10196i, i32(-2147483648)), vec4<i32>(19937i, 55619i, 0i, -3333i));

var<private> global3: array<i32, 5>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = Struct_3(arg_2, Struct_1(vec2<u32>(18258u, ~4294967295u), ~arg_1.b.b), select(arg_0, vec4<bool>(all(select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_1.c.x, arg_0.x, arg_2.b, true), false)), any(select(vec3<bool>(false, arg_2.b, arg_2.b), arg_1.c.wwz, vec3<bool>(arg_2.b, false, false))), true, false), arg_1.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(select(-1997f, 861f, false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)))));
    global0 = max(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~select(vec3<u32>(4294967295u, 64610u, 1u), vec3<u32>(arg_2.a, 24372u, 1u), arg_3.b), countOneBits(~vec3<u32>(39988u, 49602u, global0.x))), ~vec3<u32>(var_0.b.a.x << (21410u % 32u), arg_2.a, ~1u)), reverseBits(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, global0.x, arg_2.a), vec3<u32>(4294967295u, 8169u, u_input.c), vec3<u32>(21308u, 1u, 4294967295u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(23657u, arg_2.a, global0.x), vec3<u32>(35912u, u_input.c, global0.x)))));
    return global2[_wgslsmith_index_u32(~(~(arg_3.a << (1u % 32u))), 23u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = (global3[_wgslsmith_index_u32(global0.x, 5u)] <= -1i) || true;
    let var_1 = Struct_1(~max(vec2<u32>(4294967295u, firstTrailingBit(1u)), vec2<u32>(37633u, arg_1.x) >> (vec2<u32>(47881u, u_input.c) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(global0.zz, ~abs(_wgslsmith_add_vec2_u32(global0.yz, vec2<u32>(u_input.c, 53262u)))));
    let var_2 = vec2<f32>(731f, -594f);
    let var_3 = _wgslsmith_dot_vec3_i32(arg_0.ywz, vec3<i32>(1i, 1i, 1i));
    var var_4 = Struct_4(var_3 > -1i, Struct_3(Struct_2(countOneBits(~var_1.a.x), true), Struct_1(var_1.b, ~var_1.b), select(vec4<bool>(true, false, false, true), !(!vec4<bool>(var_0, false, false, var_0)), vec4<bool>(var_0, false, any(vec3<bool>(var_0, var_0, true)), !var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)))), Struct_2(~_wgslsmith_div_u32(u_input.c, u_input.c), select(true, true, true & var_0)), Struct_2(~(var_1.b.x >> (52244u % 32u)) | ~select(global0.x, 0u, var_0), !(arg_1.x > var_1.b.x) || var_0));
    return countOneBits(arg_0.x);
}

fn func_5(arg_0: bool, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-238f, -1233f)), vec2<f32>(_wgslsmith_f_op_f32(444f - _wgslsmith_f_op_f32(select(321f, -906f, false))), _wgslsmith_f_op_f32(f32(-1f) * -643f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(816f, 124f)), -998f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-813f, 759f), _wgslsmith_f_op_f32(step(468f, -1837f))))));
    let var_1 = vec2<bool>(!all(!(!vec3<bool>(arg_0, true, false))), u_input.a <= min(-14852i, global3[_wgslsmith_index_u32(select(u_input.c, u_input.c, any(vec4<bool>(false, arg_0, true, arg_0))), 5u)]));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1837f, var_0.x), -1000f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1000f)))));
    global1 = global0.x;
    global3 = array<i32, 5>();
    return _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, global0.x)), ~select(~global0.yy, firstTrailingBit(global0.xx), !var_1)) < 63838u;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> bool {
    global2 = array<vec4<i32>, 23>();
    let var_0 = Struct_1(abs(max(firstTrailingBit(vec2<u32>(46001u, global0.x) ^ arg_0.xx), vec2<u32>(35095u, min(u_input.c, u_input.c)))), arg_0.xz);
    var var_1 = var_0;
    global2 = array<vec4<i32>, 23>();
    let var_2 = u_input.b;
    return func_5(all(vec3<bool>(true, ~var_2 > max(var_2, var_2), ~var_1.a.x >= (var_0.b.x & u_input.c))), func_4(_wgslsmith_sub_vec4_i32(func_3(vec4<bool>(false, arg_1.x, arg_1.x, true), Struct_3(Struct_2(4294967295u, arg_1.x), var_0, vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), 944f), Struct_2(59724u, arg_1.x), Struct_2(28796u, arg_1.x)), firstLeadingBit(global2[_wgslsmith_index_u32(0u, 23u)])), ~_wgslsmith_mult_vec2_u32(vec2<u32>(23352u, u_input.c), global0.xy)) | ~1i);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec2<bool>) -> Struct_5 {
    global0 = vec3<u32>(~22231u, 28973u, global0.x);
    let var_0 = -select(func_3(select(!vec4<bool>(false, true, arg_0.x, arg_1.x), !vec4<bool>(false, arg_0.x, arg_1.x, false), arg_0), Struct_3(Struct_2(15290u, arg_1.x), Struct_1(global0.xz, vec2<u32>(u_input.c, 21533u)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -694f)), Struct_2(global0.x, select(true, arg_0.x, false)), Struct_2(1u, true)), ~_wgslsmith_mult_vec4_i32(-global2[_wgslsmith_index_u32(61744u, 23u)], abs(global2[_wgslsmith_index_u32(u_input.c, 23u)])), arg_0);
    global0 = firstLeadingBit(~reverseBits(vec3<u32>(global0.x, 1u, global0.x) << (vec3<u32>(62199u, global0.x, 4294967295u) % vec3<u32>(32u))));
    let var_1 = firstLeadingBit(vec2<u32>(~1u, 1872u));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1768f, 216f) - 1657f))), _wgslsmith_sub_vec4_u32(~(vec4<u32>(var_1.x, 2087u, 53553u, u_input.c) & vec4<u32>(1u, 22440u, u_input.c, 1u)) & (reverseBits(vec4<u32>(40012u, global0.x, 1u, var_1.x)) >> (vec4<u32>(u_input.c, 111809u, var_1.x, 9421u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(select(select(vec4<u32>(global0.x, 71398u, 0u, 60316u), vec4<u32>(var_1.x, 29200u, u_input.c, global0.x), true), select(vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.c), vec4<u32>(0u, 4294967295u, global0.x, u_input.c), arg_0.x), vec4<bool>(arg_1.x, false, false, true)), max(~vec4<u32>(37747u, 1u, 1u, 1u), select(vec4<u32>(u_input.c, 1u, 24633u, var_1.x), vec4<u32>(var_1.x, var_1.x, 4294967295u, u_input.c), vec4<bool>(arg_0.x, false, arg_0.x, arg_1.x))), vec4<u32>(global0.x | 30776u, 4294967295u, select(1u, global0.x, arg_0.x), 0u))), ~(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(global3[_wgslsmith_index_u32(181660u, 5u)], -6566i))) | _wgslsmith_mult_vec2_i32(var_0.zy, -max(vec2<i32>(0i, global3[_wgslsmith_index_u32(u_input.c, 5u)]), var_0.ww)));
}

fn func_1(arg_0: f32) -> f32 {
    global1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(reverseBits(29411u), global0.x), ~_wgslsmith_mod_u32(u_input.c, 1u), 5181u, 61169u), ~((_wgslsmith_mod_vec4_u32(vec4<u32>(17172u, u_input.c, 1u, u_input.c), vec4<u32>(u_input.c, global0.x, 1836u, 1u)) | ~vec4<u32>(8043u, u_input.c, 1u, global0.x)) ^ vec4<u32>(~u_input.c, max(33686u, global0.x), ~global0.x, u_input.c)));
    let var_0 = func_6(!select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), select(false, true, true) != any(vec2<bool>(true, false))), select(vec2<bool>(func_2(vec3<u32>(1u, global0.x, 4294967295u), vec4<bool>(false, false, false, true)) | false, true), vec2<bool>(true, true), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(func_2(vec3<u32>(1u, 3779u, global0.x), vec4<bool>(true, false, false, false)), global3[_wgslsmith_index_u32(0u, 5u)] > global3[_wgslsmith_index_u32(4294967295u, 5u)]))));
    var var_1 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_add_u32(65110u, _wgslsmith_dot_vec2_u32(global0.xy, _wgslsmith_sub_vec2_u32(vec2<u32>(12688u, 0u), var_0.b.zz))), 4597u), func_2(_wgslsmith_sub_vec3_u32(max(var_0.b.wzy, abs(var_0.b.yxx)), _wgslsmith_clamp_vec3_u32(vec3<u32>(21342u, global0.x, 0u), abs(var_0.b.yyw), func_6(vec4<bool>(false, false, true, true), vec2<bool>(true, true)).b.zzw)), vec4<bool>(~global0.x < 1u, true, true, true)));
    var var_2 = ~(-func_6(select(!vec4<bool>(true, true, true, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, false), var_1.b), select(vec2<bool>(var_1.b, true), !vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, false))).c.x);
    global0 = reverseBits(var_0.b.xxx) & vec3<u32>(_wgslsmith_sub_u32(select(66299u, ~var_1.a, any(vec2<bool>(var_1.b, var_1.b))), 37830u), min(max(85646u, ~26455u), _wgslsmith_dot_vec2_u32(var_0.b.yx, vec2<u32>(4294967295u, var_1.a))), 1u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(155f, -723f, var_1.b)))) - _wgslsmith_f_op_f32(step(-737f, var_0.a))) - _wgslsmith_f_op_f32(round(200f))));
}

fn func_7(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec3<bool>) -> f32 {
    var var_0 = arg_0.yzx;
    global2 = array<vec4<i32>, 23>();
    var var_1 = Struct_3(Struct_2(~(~45643u), u_input.b <= 49021i), Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, 0u), vec2<u32>(global0.x, global0.x), firstTrailingBit(vec2<u32>(0u, arg_1.x))), ~select(~vec2<u32>(47633u, arg_1.x), vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(31257u, 1u), arg_2.x)), select(!vec4<bool>(true, arg_2.x & false, 5761u <= u_input.c, true), select(!select(vec4<bool>(arg_2.x, false, true, false), vec4<bool>(arg_2.x, arg_2.x, false, true), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), !(!vec4<bool>(false, true, true, arg_2.x)), !(!arg_2.x)), true & (select(false, true, arg_2.x) && (arg_1.x >= 4294967295u))), -1022f);
    var var_2 = Struct_5(_wgslsmith_f_op_f32(1000f + -640f), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(19429u, u_input.c, u_input.c, 4294967295u) | vec4<u32>(42539u, u_input.c, 0u, 97262u), ~vec4<u32>(u_input.c, var_1.b.a.x, global0.x, var_1.b.a.x), vec4<bool>(arg_2.x, var_1.a.b, arg_2.x, false)), firstLeadingBit(vec4<u32>(10648u << (0u % 32u), ~34261u, _wgslsmith_dot_vec2_u32(vec2<u32>(66968u, global0.x), vec2<u32>(global0.x, 70105u)), 38586u))), vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c ^ var_1.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(44033u, global0.x, global0.x, 1u), vec4<u32>(global0.x, 10744u, 65971u, arg_1.x)), 31346u ^ u_input.c), ~vec3<u32>(4294967295u, 1u, 1u)), 5u)]));
    var_2 = Struct_5(-329f, ~(vec4<u32>(min(arg_1.x, u_input.c), global0.x, _wgslsmith_div_u32(0u, var_2.b.x), ~1u) | var_2.b), _wgslsmith_add_vec2_i32(func_3(vec4<bool>(true, true, arg_2.x, any(var_1.c.xxy)), Struct_3(Struct_2(u_input.c, arg_2.x), var_1.b, !var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -495f)), Struct_2(~3393u, var_1.a.b), var_1.a).wy, var_2.c));
    return 1694f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -226f) * _wgslsmith_f_op_f32(func_7(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-664f * 1116f) * _wgslsmith_f_op_f32(func_1(383f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1628f)) * _wgslsmith_f_op_f32(min(-772f, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1007f)), firstTrailingBit(global0.xz ^ global0.zz), vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_mod_vec3_i32(select(firstTrailingBit(-vec3<i32>(-33741i, u_input.a, 53243i) | select(vec3<i32>(global3[_wgslsmith_index_u32(global0.x, 5u)], global3[_wgslsmith_index_u32(33697u, 5u)], u_input.a), vec3<i32>(28883i, global3[_wgslsmith_index_u32(0u, 5u)], u_input.a), true)), firstLeadingBit(vec3<i32>(49567i, firstTrailingBit(global3[_wgslsmith_index_u32(global0.x, 5u)]), ~22736i)), !vec3<bool>(func_5(true, 45216i), false, true)), -((~vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], -4137i, 1i) | vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)], u_input.a)) >> (vec3<u32>(select(global0.x, 36779u, false), max(0u, 4294967295u), ~u_input.c) % vec3<u32>(32u))));
    global3 = array<i32, 5>();
    global1 = (~abs(67349u) ^ ~u_input.c) | ~(~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(-7108i);
}

