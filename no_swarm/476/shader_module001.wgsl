struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(37983i, -1i, -34577i, i32(-2147483648), 0i, -42852i, -11544i, 5188i, i32(-2147483648), -1i, 7247i, -11330i, 24760i);

var<private> global1: array<f32, 3> = array<f32, 3>(-540f, -161f, 528f);

var<private> global2: array<Struct_1, 14>;

var<private> global3: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_4(Struct_3(Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 18982u, 0u), vec3<u32>(0u, 11730u, 4294967295u)), 14u)]), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), vec2<u32>(1u, 1u))), reverseBits(u_input.a.zz), Struct_3(Struct_2(Struct_1(true, 4294967295u)), ~(~vec2<u32>(66732u, 0u))), global1[_wgslsmith_index_u32(countOneBits(~(~32161u)), 3u)]);
    let var_1 = select(vec2<bool>(true, select(var_0.c.a.a.a, false, true)), vec2<bool>(false, !var_0.a.a.a.a), any(vec4<bool>(var_0.a.a.a.a, var_0.c.a.a.a, any(vec3<bool>(false, var_0.a.a.a.a, false)), false)));
    var var_2 = vec2<i32>(-63683i, -2147483647i);
    let var_3 = Struct_5(~abs(~countOneBits(vec3<u32>(var_0.c.a.a.b, 80749u, 27956u))), 1u & var_0.a.b.x, ~firstLeadingBit(var_2.x) ^ min(1i, 8518i), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(470f, global1[_wgslsmith_index_u32(1u, 3u)], -1152f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1183f, global1[_wgslsmith_index_u32(var_0.a.b.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)])), select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_0.c.a.a.a, var_1.x), vec3<bool>(true, false, true)), false))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(191f, global1[_wgslsmith_index_u32(var_0.c.a.a.b, 3u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(897f * global1[_wgslsmith_index_u32(var_0.c.b.x, 3u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * -168f) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 3u)] * var_0.d)))));
    var var_4 = any(vec4<bool>(false, true, var_1.x, !any(vec3<bool>(false, true, var_1.x)) & all(vec2<bool>(var_0.a.a.a.a, true))));
    return var_0.c.a.a.b;
}

fn func_2() -> bool {
    global2 = array<Struct_1, 14>();
    var var_0 = Struct_1(~_wgslsmith_clamp_u32(0u, abs(37766u), 11286u) != func_3(), abs(func_3()));
    var var_1 = Struct_3(Struct_2(Struct_1(!(!var_0.a), 78695u)), firstLeadingBit(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(2755u, var_0.b), vec2<u32>(91106u, var_0.b)))));
    global0 = array<i32, 13>();
    let var_2 = Struct_4(Struct_3(var_1.a, firstTrailingBit(var_1.b) << ((max(var_1.b, vec2<u32>(1u, 1u)) ^ vec2<u32>(var_0.b, var_1.a.a.b)) % vec2<u32>(32u))), max(min(vec2<i32>(firstLeadingBit(-2147483647i), -24355i), vec2<i32>(-2147483647i, -14606i)), u_input.a.yy), Struct_3(var_1.a, vec2<u32>(~26031u, 39901u)), -599f);
    return true;
}

fn func_1(arg_0: Struct_5, arg_1: vec3<bool>) -> vec3<bool> {
    global1 = array<f32, 3>();
    global0 = array<i32, 13>();
    var var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32(arg_0.b, 3u)];
    return vec3<bool>(false, func_2(), true);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    global3 = any(arg_2);
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(reverseBits(4067u), 14u)]);
    var var_1 = vec3<bool>(arg_1.a, select(true, arg_2.x, ~firstTrailingBit(global0[_wgslsmith_index_u32(var_0.a.b, 13u)]) >= -30977i), var_0.a.a);
    var var_2 = Struct_4(Struct_3(Struct_2(var_0.a), firstLeadingBit(abs(vec2<u32>(var_0.a.b, 1u) << (vec2<u32>(arg_1.b, var_0.a.b) % vec2<u32>(32u))))), -vec2<i32>(2147483647i, _wgslsmith_add_i32(firstTrailingBit(-1i), -global0[_wgslsmith_index_u32(arg_1.b, 13u)])), Struct_3(Struct_2(arg_1), min(vec2<u32>(0u, arg_1.b), vec2<u32>(select(1u, var_0.a.b, true), func_3()))), _wgslsmith_f_op_f32(-1000f * 874f));
    global3 = !any(!arg_2);
    return 41779u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~func_4(u_input.a.yyy, global2[_wgslsmith_index_u32(37070u, 14u)], func_1(Struct_5(vec3<u32>(15386u, 36772u, 4294967295u), 1u, 66481i, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-924f, global1[_wgslsmith_index_u32(15783u, 3u)], global1[_wgslsmith_index_u32(70541u, 3u)]))), vec3<bool>(true, true, true))), 14u)];
    let var_1 = select(vec4<bool>(any(vec2<bool>(func_1(Struct_5(vec3<u32>(var_0.b, var_0.b, var_0.b), 1u, u_input.a.x, true, vec3<f32>(1717f, -867f, -2021f)), vec3<bool>(var_0.a, var_0.a, true)).x, 25869i <= u_input.a.x)), !var_0.a, var_0.a, 1i != global0[_wgslsmith_index_u32(~(48992u | var_0.b), 13u)]), vec4<bool>(var_0.a, false, !var_0.a, select(true, func_1(Struct_5(vec3<u32>(var_0.b, 1u, var_0.b), var_0.b, 74000i, false, vec3<f32>(-1000f, global1[_wgslsmith_index_u32(var_0.b, 3u)], -599f)), !vec3<bool>(false, var_0.a, var_0.a)).x, true)), all(!select(vec4<bool>(var_0.a, var_0.a, true, false), vec4<bool>(false, var_0.a, var_0.a, true), true)));
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(64596u, 3u)]) < 201f, ~(~var_0.b))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(~vec2<u32>(1u, var_0.b)) << (~(vec2<u32>(var_0.b, 62319u) | vec2<u32>(var_0.b, var_0.b)) % vec2<u32>(32u)), max(min(vec2<u32>(var_0.b, 4636u) >> (vec2<u32>(33410u, var_0.b) % vec2<u32>(32u)), vec2<u32>(1u, 1u)), ~vec2<u32>(var_0.b, 1u)), vec2<u32>(16151u, 34016u)));
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(min(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1989u, var_2.b.x), 13u)], global0[_wgslsmith_index_u32(~22037u, 13u)]), _wgslsmith_div_i32(u_input.a.x, -1i)) & vec2<i32>(24330i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(59125u, 1u), var_2.b), 13u)]), ~abs(abs(~u_input.a.yz)));
    var var_4 = Struct_4(Struct_3(Struct_2(var_2.a.a), var_2.b >> (select(_wgslsmith_clamp_vec2_u32(var_2.b, var_2.b, var_2.b), vec2<u32>(var_2.b.x, var_2.b.x), all(var_1.yy)) % vec2<u32>(32u))), vec2<i32>(-u_input.a.x, -(~var_3.x) >> (countOneBits(~54569u) % 32u)), Struct_3(var_2.a, var_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(62313u, 3u)])) * _wgslsmith_f_op_f32(f32(-1f) * -1336f)), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_0.b, 3u)])), global1[_wgslsmith_index_u32(4294967295u, 3u)] > global1[_wgslsmith_index_u32(0u, 3u)])) + global1[_wgslsmith_index_u32(var_2.b.x, 3u)]));
    var var_5 = vec4<bool>(!(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~0u, 3u)]) <= _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 3u)], 728f))), var_4.a.a.a.a, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_4.c.b.x, 93632u, var_0.b, 1u)), vec4<u32>(var_0.b, 0u, var_4.a.b.x, var_4.c.b.x) & min(vec4<u32>(35817u, 1u, 1u, var_0.b), vec4<u32>(1u, 4294967295u, 36234u, 0u))) != var_0.b, func_2());
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1331f, 424f, 1834f, var_4.d)), vec4<f32>(-1721f, var_4.d, 1652f, global1[_wgslsmith_index_u32(var_4.a.b.x, 3u)]), var_1)), vec4<f32>(-787f, _wgslsmith_div_f32(1026f, 742f), _wgslsmith_f_op_f32(min(513f, global1[_wgslsmith_index_u32(50811u, 3u)])), _wgslsmith_f_op_f32(409f + 1918f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-648f, -546f, global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(var_4.a.b.x, 3u)]), vec4<f32>(global1[_wgslsmith_index_u32(1u, 3u)], var_4.d, -2050f, -624f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d, -518f, 1022f, global1[_wgslsmith_index_u32(var_0.b, 3u)]))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(938f * _wgslsmith_f_op_f32(-var_4.d)), global1[_wgslsmith_index_u32(~var_2.a.a.b, 3u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 3u)] + _wgslsmith_f_op_f32(-var_4.d)), var_4.d)));
    let x = u_input.a;
    s_output = StorageBuffer(30810i, var_4.a.a.a.b);
}

