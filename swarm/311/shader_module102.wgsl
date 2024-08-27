struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: u32 = 27900u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<bool, 15>();
    var var_0 = !vec3<bool>(!(-34180i > arg_0.c), arg_0.e, all(vec2<bool>(1i != arg_0.d, !global0[_wgslsmith_index_u32(0u, 15u)])));
    let var_1 = 1u << (abs(~_wgslsmith_clamp_u32(countOneBits(arg_0.b.x), 96957u << (u_input.a.x % 32u), arg_0.b.x)) % 32u);
    var_0 = vec3<bool>(global0[_wgslsmith_index_u32(var_1, 15u)], select(any(!(!vec3<bool>(arg_0.e, true, global0[_wgslsmith_index_u32(1u, 15u)]))), false, all(vec2<bool>(arg_0.e, true))), !global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(4294967295u, 26032u), u_input.a.x), 15u)]);
    global0 = array<bool, 15>();
    return arg_0.b;
}

fn func_3() -> u32 {
    let var_0 = vec2<bool>(select(true, global0[_wgslsmith_index_u32(~1u, 15u)], !any(vec2<bool>(true, true))), any(!(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))));
    let var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(11367i, _wgslsmith_mult_i32(1i, abs(-80634i)), -8699i), abs(vec3<i32>(~(-6377i), 1i, _wgslsmith_clamp_i32(~(-2147483647i), ~1i, 1i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(245f))))), -202f) * vec2<f32>(_wgslsmith_f_op_f32(step(606f, _wgslsmith_f_op_f32(f32(-1f) * -249f))), _wgslsmith_f_op_f32(f32(-1f) * -473f)));
    var var_3 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + 868f), true)), var_2.x)), 594f);
    var var_4 = Struct_1(vec3<i32>(-31701i & _wgslsmith_clamp_i32(var_1, var_1, var_1), -2147483647i, firstLeadingBit(firstTrailingBit(~var_1))), vec2<u32>(4294967295u, 4294967295u) ^ _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(~36601u, ~u_input.a.x), _wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, 8710u), u_input.a))), 1i, var_1, global0[_wgslsmith_index_u32(u_input.a.x ^ _wgslsmith_div_u32(~1u, ~89045u), 15u)]);
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global1 = (max(_wgslsmith_sub_u32(countOneBits(arg_0.b.x), arg_1.b.x), arg_0.b.x) >> (~_wgslsmith_div_u32(func_3(), arg_1.b.x) % 32u)) >> (~_wgslsmith_mult_u32(~arg_1.b.x, ~arg_1.b.x) % 32u);
    let var_0 = Struct_1(vec3<i32>(arg_1.c, arg_1.c, ~(-(-1i & arg_0.c))), arg_0.b, firstTrailingBit(_wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, 2584i), arg_1.a.yz), abs(~(-1i)))), countOneBits(0i), all(!(!select(vec3<bool>(true, arg_1.e, true), vec3<bool>(arg_1.e, false, global0[_wgslsmith_index_u32(0u, 15u)]), true))));
    let var_1 = firstTrailingBit(40233i);
    global0 = array<bool, 15>();
    global1 = 0u;
    return !(!(60980u >= u_input.a.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = !vec3<bool>(false, (_wgslsmith_sub_u32(0u, var_0.b.x) << (firstLeadingBit(arg_1.b.x) % 32u)) > 0u, true);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(arg_0), ~firstLeadingBit(vec3<i32>(1i, var_0.a.x, 23501i)), ~vec3<i32>(55638i, var_2.c, _wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(arg_1.a.x, 76644i)))) ^ arg_1.a;
    global1 = _wgslsmith_sub_u32(u_input.a.x, u_input.a.x);
    return _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(0i, ~_wgslsmith_mult_i32(2147483647i, arg_0.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-13233i, 2147483647i, var_2.d, 1i), vec4<i32>(var_3.x, 0i, var_0.c, arg_1.c)), 0i), -8840i), vec3<i32>(6739i, ~19857i, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~(~(~vec4<i32>(1i, 1i, 1i, 1i))), -vec4<i32>(17509i, -5061i, 1i ^ select(-14744i, -2147483647i, global0[_wgslsmith_index_u32(5858u, 15u)]), _wgslsmith_mult_i32(~(-1i), _wgslsmith_sub_i32(-1i, 1528i))));
    let var_1 = Struct_1(func_4(var_0.xyw, Struct_1(reverseBits(var_0.yxz), func_1(Struct_1(vec3<i32>(-14087i, var_0.x, -18287i), u_input.a, 0i, var_0.x, true)), -var_0.x << (firstTrailingBit(62389u) % 32u), var_0.x, func_2(Struct_1(var_0.zww, u_input.a, var_0.x, -19652i, global0[_wgslsmith_index_u32(0u, 15u)]), Struct_1(vec3<i32>(var_0.x, var_0.x, 39005i), u_input.a, var_0.x, -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))), reverseBits(-9280i)), ~vec2<u32>(~1u, u_input.a.x), _wgslsmith_mult_i32(2147483647i, 0i), (~var_0.x | abs(firstTrailingBit(38897i))) | select(_wgslsmith_mult_i32(-25226i & var_0.x, ~(-1i)), -542i, true), all(!vec2<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 15u)], all(vec4<bool>(global0[_wgslsmith_index_u32(24562u, 15u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false)))));
    global1 = var_1.b.x | ~_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.b.x, reverseBits(u_input.a.x), 1u), ~(~vec3<u32>(u_input.a.x, 2831u, 0u)));
    let var_2 = Struct_1(vec3<i32>(2147483647i, 1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 1i), var_0.xx >> (u_input.a % vec2<u32>(32u)))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.b, min(vec2<u32>(56622u, var_1.b.x), u_input.a) >> (reverseBits(u_input.a) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(min(vec2<u32>(var_1.b.x, 4294967295u), vec2<u32>(u_input.a.x, var_1.b.x)) >> (firstLeadingBit(vec2<u32>(4060u, u_input.a.x)) % vec2<u32>(32u)), ~(~vec2<u32>(u_input.a.x, var_1.b.x)))), countOneBits(-19521i), max(~(~2147483647i), abs(-var_0.x)) | var_0.x, true);
    let var_3 = Struct_1(select(countOneBits(vec3<i32>(_wgslsmith_mod_i32(var_1.c, var_1.d), var_2.a.x | var_1.d, -2147483647i)), vec3<i32>(select(6090i, firstLeadingBit(17595i), true), func_4(vec3<i32>(var_1.d, var_0.x, var_2.a.x), var_2, 0i << (var_1.b.x % 32u)).x, -1i), select(vec3<bool>(false, false, true & global0[_wgslsmith_index_u32(var_2.b.x, 15u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.b.x, 15u)], true), !var_1.e)), var_1.b, func_4(-_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(var_2.d, var_1.c, -39001i)), vec3<i32>(45794i, var_2.c, 0i) >> (vec3<u32>(455u, 0u, var_2.b.x) % vec3<u32>(32u))), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 2147483647i, 2147483647i), countOneBits(vec3<i32>(var_1.a.x, var_0.x, var_1.c))), vec2<u32>(~var_1.b.x, 34438u), (4829i ^ var_2.c) | -2147483647i, func_4(_wgslsmith_div_vec3_i32(vec3<i32>(-13683i, var_1.a.x, var_0.x), vec3<i32>(1i, var_2.c, 22440i)), Struct_1(vec3<i32>(var_0.x, 2147483647i, 51866i), u_input.a, var_0.x, -4618i, var_1.e), _wgslsmith_clamp_i32(var_1.a.x, var_2.a.x, var_2.c)).x, false), -var_1.c).x, reverseBits(abs(_wgslsmith_mult_i32(i32(-1i) * -1658i, -var_1.c))), true);
    let var_4 = var_2.a.x;
    var var_5 = Struct_1(vec3<i32>(var_2.a.x, var_0.x, _wgslsmith_div_i32(i32(-1i) * -27623i, -2147483647i)), var_3.b, _wgslsmith_clamp_i32(var_3.c, _wgslsmith_dot_vec2_i32(~var_2.a.zz, vec2<i32>(var_2.c, -2147483647i) ^ var_3.a.yx) >> (_wgslsmith_mult_u32(var_2.b.x, ~var_3.b.x) % 32u), abs(var_3.d)), var_0.x, all(select(vec3<bool>(false, func_2(Struct_1(var_1.a, var_2.b, -52631i, 2147483647i, global0[_wgslsmith_index_u32(6796u, 15u)]), var_2), true), vec3<bool>(false, true, false), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~var_3.b.x >> (u_input.a.x % 32u), abs(_wgslsmith_div_u32(1u, 1u))), ~(~(countOneBits(vec4<u32>(59482u, 0u, var_2.b.x, var_1.b.x)) | ~vec4<u32>(0u, 1u, var_1.b.x, var_2.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1288f)) - _wgslsmith_f_op_f32(abs(1342f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -811f)))))), var_3.b.x);
}

