struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, false, false, false, false, false, true, true, false, true, false, false, false, true, false, false, true, false);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<u32>(72583u, 4294967295u, 0u, 1u), -171f), Struct_1(vec4<u32>(7034u, 4294967295u, 1u, 5948u), -913f), 50102u, i32(-2147483648));

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec4<u32>(13809u, 46708u, 14233u, 1u), 235f), Struct_1(vec4<u32>(99743u, 58041u, 14027u, 72128u), 381f), 0u, -8276i), Struct_2(Struct_1(vec4<u32>(42146u, 15978u, 24709u, 19145u), 383f), Struct_1(vec4<u32>(63038u, 4294967295u, 0u, 4294967295u), -1416f), 4294967295u, i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(39321u, 77730u, 4294967295u, 1u), 1000f), Struct_1(vec4<u32>(1u, 32148u, 82673u, 4294967295u), -103f), 0u, 47671i), Struct_2(Struct_1(vec4<u32>(1u, 15649u, 23786u, 4294967295u), -1456f), Struct_1(vec4<u32>(1u, 8605u, 19660u, 61640u), 1674f), 4294967295u, i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(0u, 20892u, 79085u, 0u), 274f), Struct_1(vec4<u32>(4338u, 11058u, 4294967295u, 4294967295u), 1000f), 44270u, -32296i), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 40104u, 23020u), 210f), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), -753f), 18176u, 1541i));

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 24067u, 4294967295u), -1000f), Struct_1(vec4<u32>(40324u, 1u, 12102u, 0u), 1238f), 0u, -15696i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global3 = array<Struct_2, 6>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b.b, 1044f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-951f, 576f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(global4.a.b, global1.a.b), vec2<f32>(666f, global4.b.b))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(549f, global4.a.b) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.b.b, -358f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(296f, 107f) * vec2<f32>(global1.b.b, 329f))))));
    var var_1 = global1.b;
    let var_2 = vec3<f32>(global4.a.b, _wgslsmith_f_op_f32(2252f + _wgslsmith_f_op_f32(max(-304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), 1328f);
    let var_3 = global1.b;
    return global0[_wgslsmith_index_u32(var_1.a.x, 18u)];
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = !vec2<bool>(global0[_wgslsmith_index_u32(global4.a.a.x, 18u)], true);
    let var_1 = global3[_wgslsmith_index_u32(~global4.a.a.x, 6u)];
    let var_2 = select(select(vec3<bool>(true, arg_0.b, global1.c == _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, 0u, 4294967295u), global4.b.a.zzx)), !(!arg_0.a), vec3<bool>(all(select(vec4<bool>(true, true, var_0.x, global0[_wgslsmith_index_u32(u_input.b, 18u)]), vec4<bool>(false, arg_0.b, arg_0.b, arg_0.a.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(43008u, 18u)], global0[_wgslsmith_index_u32(global4.a.a.x, 18u)], false))), all(!arg_0.a.zy), true)), vec3<bool>(func_3(), false, !any(vec3<bool>(true, var_0.x, false))), false);
    global2 = true;
    let var_3 = ~(-(~32315i));
    return global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(var_1.b.a.x | ~var_1.b.a.x), countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.a.x, u_input.b, u_input.c.x, 1054u), global4.a.a))) & u_input.c.x, 6u)];
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = arg_3.x;
    var var_1 = ~(func_2(Struct_3(!vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(94599u, 18u)]), global0[_wgslsmith_index_u32(15666u, 18u)])).b.a.zx >> (_wgslsmith_clamp_vec2_u32(countOneBits(~vec2<u32>(4294967295u, 0u)), u_input.c, ~arg_1.zw) % vec2<u32>(32u)));
    global2 = global0[_wgslsmith_index_u32(arg_1.x, 18u)];
    global3 = array<Struct_2, 6>();
    var var_2 = u_input.a.yz;
    return Struct_3(!(!vec3<bool>(global0[_wgslsmith_index_u32(func_2(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(global4.b.a.x, 18u)], false, global0[_wgslsmith_index_u32(arg_2.c, 18u)]), true)).c, 18u)], false, true)), true);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> bool {
    global3 = array<Struct_2, 6>();
    let var_0 = ~vec3<u32>(reverseBits(firstLeadingBit(~arg_1.b.a.x)), abs(46900u & (1u << (arg_1.a.a.x % 32u))), u_input.b);
    let var_1 = func_4(~(-40991i), ~global4.a.a, func_2(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(~global1.a.a.x, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], select(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(global4.b.a.x, 18u)], false)), all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(var_0.x, 18u)], global0[_wgslsmith_index_u32(7062u, 18u)])))), func_2(Struct_3(vec3<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(6485u, 55921u), 18u)], true), !(global1.d < -2147483647i))).a.a);
    let var_2 = select(_wgslsmith_mult_vec3_i32(vec3<i32>(~global1.d, ~_wgslsmith_clamp_i32(31879i, global1.d, arg_1.d), ~min(global1.d, u_input.a.x)), vec3<i32>(-1i) * -u_input.a), u_input.a, !vec3<bool>(any(var_1.a.zx), func_3() && any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], true, true)), !any(vec4<bool>(true, var_1.a.x, false, var_1.b))));
    var var_3 = func_2(Struct_3(var_1.a, (~0u & u_input.c.x) != u_input.c.x));
    return !all(vec2<bool>(true, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, var_3.b.a.x, global4.c), vec4<u32>(0u, var_0.x, 20673u, arg_1.c)), 18u)]));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec2<bool>, arg_3: vec3<bool>) -> u32 {
    global3 = array<Struct_2, 6>();
    var var_0 = global1.b.a.zxy;
    global1 = func_2(Struct_3(!(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 18u)], arg_2.x))), false));
    global2 = true;
    global2 = true;
    return 26928u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(Struct_1(vec4<u32>(1u, 1u, func_5(2599f, func_1(2147483647i, global3[_wgslsmith_index_u32(global1.b.a.x, 6u)]), !vec2<bool>(global0[_wgslsmith_index_u32(global4.c, 18u)], global0[_wgslsmith_index_u32(global1.b.a.x, 18u)]), vec3<bool>(true, true, true)), 1u), _wgslsmith_f_op_f32(f32(-1f) * -934f)), func_2(func_4(-u_input.a.x, ~vec4<u32>(4294967295u, u_input.b, global1.a.a.x, u_input.b), func_2(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], false), global0[_wgslsmith_index_u32(u_input.b, 18u)])), min(firstTrailingBit(global1.b.a), countOneBits(vec4<u32>(132932u, global4.a.a.x, global4.a.a.x, global1.b.a.x))))).a, global1.c, -40497i >> ((62925u & firstTrailingBit(4294967295u)) % 32u));
    var var_0 = global3[_wgslsmith_index_u32(global1.c, 6u)];
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.c.x, 8481u, global4.b.a.x, u_input.c.x)) << (global1.b.a % vec4<u32>(32u)), vec4<u32>(u_input.b, ~reverseBits(61172u), var_0.a.a.x, ~firstLeadingBit(0u))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-744f, 1039f))));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(1098f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(338f))), _wgslsmith_f_op_f32(f32(-1f) * -807f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.b, 1509f)), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_div_f32(-653f, -686f)))));
    let var_3 = _wgslsmith_clamp_vec2_i32(select(~select(u_input.a.yy, u_input.a.yz, true), vec2<i32>(-firstTrailingBit(u_input.a.x), func_2(func_4(global1.d, vec4<u32>(23971u, 72261u, 92511u, 4294967295u), global3[_wgslsmith_index_u32(global4.a.a.x, 6u)], vec4<u32>(48492u, 4294967295u, var_1.a.x, global1.c))).d), true), vec2<i32>(select(20462i, ~global4.d, true), var_0.d), u_input.a.yz);
    global0 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.a.b))), 1450f), _wgslsmith_f_op_vec2_f32(vec2<f32>(func_2(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], true, false), true)).a.b, _wgslsmith_f_op_f32(446f * 1149f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, var_0.b.b))))), global0[_wgslsmith_index_u32(reverseBits((global1.a.a.x << (1u % 32u)) >> (~u_input.b % 32u)), 18u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1356f, _wgslsmith_f_op_f32(global4.b.b - -1197f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-251f, var_0.b.b)))))));
}

