struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, i32(-2147483648));

var<private> global1: array<vec4<bool>, 28>;

var<private> global2: array<f32, 5> = array<f32, 5>(1486f, 302f, 988f, 1000f, -1078f);

var<private> global3: array<f32, 31>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = vec3<bool>((~(22293i | global0.x) != 1i) | (firstTrailingBit(global4.b.x) <= _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_2.b.x, 0u, arg_0.b.x), 46292u)), arg_2.b.x != arg_1.x, any(vec2<bool>(true & any(vec2<bool>(false, false)), !all(vec4<bool>(true, true, true, true)))));
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1260f * 786f)), -137f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -668f)))), vec3<bool>(!(arg_0.b.x > 29013u), !(var_0.x & false), true))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, firstTrailingBit(arg_3.x | 20963u), 22663u), ~_wgslsmith_add_vec3_u32(arg_1, arg_0.b), global4.b));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.x, arg_2.b.x, arg_0.b.x) >> (vec3<u32>(78842u, global4.b.x, arg_0.b.x) % vec3<u32>(32u)), vec3<u32>(~u_input.a.x, 64417u, _wgslsmith_div_u32(4294967295u, arg_1.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, global4.a.x, -111f, global2[_wgslsmith_index_u32(global4.b.x, 5u)]) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(arg_3.x, 5u)], -106f, global3[_wgslsmith_index_u32(arg_2.b.x, 31u)], -609f))))))));
    global1 = array<vec4<bool>, 28>();
    return select(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(~arg_3.x >> (~arg_3.x % 32u), 0u ^ _wgslsmith_mult_u32(arg_2.b.x, arg_3.x))), 28u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(max(~(~4294967295u), 0u), 105743u), 28u)], vec4<bool>(!var_0.x, !any(select(var_0, vec3<bool>(var_0.x, false, var_0.x), true)), true, true));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = vec4<bool>(any(select(!global1[_wgslsmith_index_u32(abs(global4.b.x), 28u)], vec4<bool>(true, true, true, true), true)), false, any(func_3(Struct_1(vec3<f32>(-369f, -148f, global3[_wgslsmith_index_u32(12850u, 31u)]), global4.b), firstLeadingBit(arg_0), Struct_1(global4.a, _wgslsmith_mod_vec3_u32(vec3<u32>(global4.b.x, 0u, u_input.a.x), global4.b)), ~(~arg_0))), true);
    let var_1 = -min(-(~(-1i)), global0.x << (((4294967295u | u_input.a.x) >> (~49722u % 32u)) % 32u));
    global1 = array<vec4<bool>, 28>();
    var_0 = global1[_wgslsmith_index_u32(select(38649u, _wgslsmith_div_u32(1u, global4.b.x), true), 28u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-global4.a);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-global4.a), global4.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global4 = arg_1;
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-410i | global0.x, global0.x), vec2<i32>(-2147483647i, -33957i)) | -2147483647i, -(abs(abs(1i)) << ((arg_0.b.x >> (firstTrailingBit(1u) % 32u)) % 32u)));
    global0 = reverseBits(vec2<i32>(global0.x, 1i));
    global3 = array<f32, 31>();
    var var_1 = reverseBits(_wgslsmith_sub_vec4_u32(reverseBits(~(~vec4<u32>(arg_0.b.x, 46054u, arg_0.b.x, arg_1.b.x))), _wgslsmith_div_vec4_u32(select(vec4<u32>(19939u, arg_1.b.x, 1u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, arg_1.b.x, 0u) ^ vec4<u32>(arg_1.b.x, arg_0.b.x, arg_1.b.x, 6817u), func_3(Struct_1(arg_0.a, arg_0.b), vec3<u32>(1u, 1u, 4294967295u), Struct_1(global4.a, arg_1.b), arg_0.b)), firstTrailingBit(abs(vec4<u32>(0u, arg_0.b.x, arg_1.b.x, u_input.a.x))))));
    return select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-24224i, global0.x, global0.x, global0.x) ^ vec4<i32>(2147483647i, -2147483647i, -1i, -19309i), vec4<i32>(global0.x, 32844i, -1i, 2147483647i) << (vec4<u32>(u_input.a.x, 0u, 5369u, 29141u) % vec4<u32>(32u)), vec4<i32>(12464i, global0.x, 2147483647i, -36635i)), ~vec4<i32>(28051i, -1i, global0.x, global0.x), select(!global1[_wgslsmith_index_u32(67327u, 28u)], vec4<bool>(true, 2784i == global0.x, arg_1.a.x >= arg_1.a.x, true), vec4<bool>(true, true, true, true))) >> (abs(vec4<u32>(~u_input.a.x, 4294967295u, ~16671u, firstLeadingBit(global4.b.x))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global0 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-60394i, 0i, -206i, -1i) >> (arg_0 % vec4<u32>(32u)), vec4<i32>(-58139i, global0.x, global0.x, global0.x) >> (vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u) % vec4<u32>(32u)), all(vec2<bool>(true, true))), -vec4<i32>(57232i, global0.x, 2147483647i, global0.x), ~vec4<i32>(global0.x, global0.x, global0.x, 0i) | vec4<i32>(0i, global0.x, -1i, global0.x)), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.a.x, -173f, global3[_wgslsmith_index_u32(u_input.a.x, 31u)]))), reverseBits(global4.b)), func_2(~global4.b))), -48179i);
    var var_0 = vec2<i32>(~_wgslsmith_sub_i32(-(~global0.x), max(1i, -22501i) << (global4.b.x % 32u)), -global0.x);
    global2 = array<f32, 5>();
    let var_1 = Struct_1(global4.a, vec3<u32>(arg_0.x, arg_0.x, _wgslsmith_mult_u32(142411u, _wgslsmith_dot_vec4_u32(~arg_0, arg_0 & vec4<u32>(global4.b.x, 1u, global4.b.x, 4294967295u)))));
    let var_2 = func_2(arg_0.xxy);
    return func_2(var_2.b);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global3 = array<f32, 31>();
    var var_0 = func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.b.x, ~_wgslsmith_mod_u32(global4.b.x, arg_0.b.x), ~1u), arg_0.b, arg_0.b));
    global4 = func_1(~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.b.x, u_input.a.x, arg_0.b.x, 0u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, arg_0.b.x, 0u), vec4<u32>(80680u, u_input.a.x, 1u, 8650u), vec4<u32>(global4.b.x, 28320u, 23176u, var_0.b.x))));
    global0 = select(_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(global0.x, global0.x)), vec2<i32>(global0.x, 1i), vec2<i32>(1i, ~global0.x)), ~vec2<i32>(1i, 1i), 119f < func_1(~vec4<u32>(10099u, global4.b.x, 7295u, global4.b.x)).a.x) >> (vec2<u32>(_wgslsmith_clamp_u32(10447u, _wgslsmith_div_u32(0u, 3451u ^ global4.b.x), 4294967295u), func_2(~arg_0.b).b.x ^ _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x), max(4294967295u, var_0.b.x))) % vec2<u32>(32u));
    var var_1 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(reverseBits(vec4<u32>(~u_input.a.x, u_input.a.x, u_input.a.x >> (global4.b.x % 32u), min(global4.b.x, global4.b.x))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(64370u, 57301u, ~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 0u, 0u)), firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)))) % vec4<u32>(32u)));
    var var_1 = global4.b.xx;
    global4 = func_5(func_1(var_0));
    var var_2 = ~vec2<i32>(global0.x, abs(global0.x));
    let var_3 = func_1(_wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 18631u, var_1.x, var_1.x), var_0)), var_0));
    let var_4 = select(func_5(var_3).b.yz, vec2<u32>(var_3.b.x, ~1u), vec2<bool>(global0.x != -global0.x, any(vec4<bool>(true, true, true, true)))) << (func_1(vec4<u32>(~_wgslsmith_div_u32(13010u, u_input.a.x), firstLeadingBit(2166u | var_0.x), var_1.x, ~var_1.x ^ ~4581u)).b.zy % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(~vec3<u32>(var_3.b.x, var_0.x, 0u), vec3<u32>(u_input.a.x, var_4.x, 30533u), vec3<bool>(true, true, true)), ~(~var_0.yzw), vec3<bool>(false, true, any(vec3<bool>(true, false, true)))) << (~_wgslsmith_div_vec3_u32(var_3.b, var_3.b) % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_4.x, 42143u), abs(u_input.a.x)), ~0u)), vec4<f32>(func_5(Struct_1(vec3<f32>(-162f, global2[_wgslsmith_index_u32(var_0.x, 5u)], -420f), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, global4.b.x, var_0.x), var_0.xzx))).a.x, _wgslsmith_f_op_f32(global4.a.x * var_3.a.x), global3[_wgslsmith_index_u32(global4.b.x, 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 31u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)))));
}

