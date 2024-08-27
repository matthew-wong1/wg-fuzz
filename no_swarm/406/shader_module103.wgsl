struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> i32 {
    return select(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.c, vec4<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x)), vec4<i32>(62882i, arg_1.c.x, 1i, arg_1.c.x)), reverseBits(arg_1.c.x)), min(_wgslsmith_add_i32(22836i, i32(-1i) * -1i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1.c.x ^ arg_1.c.x, -2147483647i >> (arg_1.a % 32u), arg_1.c.x), ~arg_1.c.x, -(44460i << (1u % 32u)))), (true && !any(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 20u)]))) != !(_wgslsmith_f_op_f32(arg_0 - arg_1.d.x) == arg_0));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    return 51779i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, func_3(-2147483647i, vec4<i32>(11328i, -18705i, 25405i, 6446i), Struct_1(vec4<i32>(6503i, 15767i, 915i, 36242i), u_input.b.xy), 1i), 1i), vec4<i32>(1i, 1i, 1i, 1i)), abs(~vec4<i32>(-7809i, -43651i, 34226i, 0i))), abs(~vec2<u32>(u_input.c.x, 1u)));
    let var_1 = !vec3<bool>(!all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(var_0.b.x, 20u)], global0[_wgslsmith_index_u32(var_0.b.x, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(44022u, 20u)], true, global0[_wgslsmith_index_u32(var_0.b.x, 20u)]), true)), !any(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 20u)], global0[_wgslsmith_index_u32(var_0.b.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], false), vec4<bool>(global0[_wgslsmith_index_u32(6815u, 20u)], global0[_wgslsmith_index_u32(23841u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]), global0[_wgslsmith_index_u32(var_0.b.x, 20u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.a.xx), ~(~var_0.b.x)), 20u)]);
    var var_2 = ~(~_wgslsmith_div_vec4_u32(select(~vec4<u32>(4294967295u, var_0.b.x, u_input.a.x, 52116u), ~vec4<u32>(45939u, 0u, var_0.b.x, 1u), true), abs(~vec4<u32>(var_0.b.x, var_0.b.x, 0u, 0u))));
    var var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(259f - -462f), _wgslsmith_f_op_f32(-1631f * 593f)))) < _wgslsmith_f_op_f32(trunc(-584f)));
    global0 = array<bool, 20>();
    return Struct_1(select(vec4<i32>(~(~1i), -var_0.a.x, -var_0.a.x, reverseBits(2147483647i)), _wgslsmith_add_vec4_i32(var_0.a, firstTrailingBit(var_0.a) << ((u_input.b << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<bool>(all(vec4<bool>(false, true, var_1.x, global0[_wgslsmith_index_u32(var_2.x, 20u)])), true, true, false)), min(reverseBits(~vec2<u32>(1u, 1u)), var_0.b));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = vec3<u32>(firstLeadingBit(arg_0.b.x), firstTrailingBit(52094u), _wgslsmith_sub_u32(~arg_0.b.x, ~arg_0.b.x));
    let var_1 = Struct_2(-223f, 1355f);
    global0 = array<bool, 20>();
    let var_2 = !any(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 20u)], false, false), vec3<bool>(true, false, false)));
    var_0 = max(_wgslsmith_clamp_vec3_u32(vec3<u32>(~var_0.x, ~var_0.x, ~15600u) ^ vec3<u32>(u_input.a.x, 0u, 4294967295u), u_input.a, vec3<u32>(4294967295u, 21399u, ~37141u << ((arg_0.b.x | 72523u) % 32u))), ~(~(~u_input.a)) >> (abs(vec3<u32>(~1u, u_input.a.x & 18151u, _wgslsmith_sub_u32(u_input.b.x, 45732u))) % vec3<u32>(32u)));
    return _wgslsmith_add_vec4_i32(select(~(~min(vec4<i32>(arg_0.a.x, -2147483647i, 34851i, arg_0.a.x), arg_0.a)), arg_0.a, !global0[_wgslsmith_index_u32(47079u, 20u)]), _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, 23455i, arg_0.a.x, arg_0.a.x), arg_0.a | arg_0.a), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.a.x), vec2<i32>(arg_0.a.x, -18765i)), _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(-2147483647i, -1i, arg_0.a.x)), -arg_0.a.x, _wgslsmith_clamp_i32(arg_0.a.x, func_3(1i, vec4<i32>(arg_0.a.x, -17479i, arg_0.a.x, 2147483647i), arg_0, 57389i), -53604i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    let var_0 = _wgslsmith_div_i32(abs(~(-1i)), i32(-1i) * -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19976i, -2147483647i, 1i, -37666i), vec4<i32>(-2147483647i, -44061i, -57184i, 12588i)), func_1(-1000f, Struct_3(0u, Struct_2(-1338f, 641f), vec4<i32>(8723i, 0i, -1i, -1i), vec4<f32>(-2103f, 583f, -376f, -262f)))));
    let var_1 = 53034i & var_0;
    let var_2 = countOneBits(4294967295u);
    var var_3 = Struct_1(max(-vec4<i32>(~var_0, countOneBits(-1i), _wgslsmith_add_i32(var_0, 5830i), 67648i), func_4(func_2())), u_input.a.zz);
    var_3 = Struct_1(select(_wgslsmith_add_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0, 71338i, var_0), var_3.a)), select(vec4<i32>(var_1, 15210i, var_0, 2483i), select(var_3.a, vec4<i32>(var_1, var_3.a.x, -46694i, var_0), vec4<bool>(true, global0[_wgslsmith_index_u32(45222u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], false)), true)), func_2().a, select(!select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_3.b.x, 20u)], global0[_wgslsmith_index_u32(42123u, 20u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(var_3.b.x, 20u)], true, true), global0[_wgslsmith_index_u32(var_3.b.x, 20u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(var_3.b.x, 20u)], false, global0[_wgslsmith_index_u32(var_3.b.x, 20u)], false), vec4<bool>(global0[_wgslsmith_index_u32(var_3.b.x, 20u)], false, false, false), false), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_3.b.x, var_3.b.x, 21469u)), 20u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(var_3.b.x, 20u)])), !global0[_wgslsmith_index_u32(48932u, 20u)], global0[_wgslsmith_index_u32(var_3.b.x, 20u)]))), u_input.b.yy);
    let var_4 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1345f), _wgslsmith_f_op_f32(min(-395f, 1465f)))), -2318f, true)), -2327f);
    var_3 = func_2();
    let var_5 = vec3<i32>(13891i, min(-9776i, _wgslsmith_mod_i32(select(var_1, 38232i >> (var_3.b.x % 32u), any(vec3<bool>(global0[_wgslsmith_index_u32(var_3.b.x, 20u)], true, global0[_wgslsmith_index_u32(1u, 20u)]))), var_0)), _wgslsmith_mult_i32(var_0, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-15697i, var_0), -var_0, var_3.a.x)) | min(~_wgslsmith_mult_i32(-1i, 2147483647i), -37562i));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, _wgslsmith_f_op_f32(-var_4.a), ~var_2, 30462u >> (~(~_wgslsmith_div_u32(var_2, 0u)) % 32u), var_5);
}

