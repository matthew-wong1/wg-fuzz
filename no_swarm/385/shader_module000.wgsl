struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: array<u32, 6> = array<u32, 6>(4294967295u, 1u, 33301u, 1u, 4294967295u, 33160u);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<i32>(14149i, 9785i)), Struct_1(vec2<i32>(i32(-2147483648), 18452i)), Struct_1(vec2<i32>(1i, 1i)), Struct_1(vec2<i32>(1710i, 75917i)), Struct_1(vec2<i32>(-14324i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(-22731i, -31937i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<i32>(-24126i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, -53183i)), Struct_1(vec2<i32>(-30326i, -1i)), Struct_1(vec2<i32>(-37022i, 12878i)), Struct_1(vec2<i32>(-11291i, -38814i)), Struct_1(vec2<i32>(1i, i32(-2147483648))));

var<private> global2: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = vec3<bool>(true, true, false);
    var_0 = !vec3<bool>(var_0.x || !(!var_0.x), ~global0[_wgslsmith_index_u32(43305u, 6u)] > ~min(0u, 65563u), !any(vec3<bool>(true, var_0.x, false)));
    var_0 = vec3<bool>(false, var_0.x, true);
    var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!var_0.x, (-30203i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.a, arg_2.a.x, u_input.a), vec4<i32>(41156i, u_input.b.x, -82087i, u_input.d))) <= _wgslsmith_add_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(10629i, arg_2.a.x, arg_2.a.x, 2147483647i), vec4<i32>(-26819i, -7388i, arg_2.a.x, -8032i))), var_0.x), !select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, arg_0 != -101f), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, -203f, -418f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1194f, arg_0, 1326f, -1000f) - vec4<f32>(arg_0, arg_0, -1748f, -1560f))))))));
    return _wgslsmith_mult_u32(~(~select(16935u << (global0[_wgslsmith_index_u32(116629u, 6u)] % 32u), ~68784u, true)), select(global0[_wgslsmith_index_u32(0u, 6u)], reverseBits(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u >> (arg_1.x % 32u), 6u)], 6u)]), any(vec4<bool>(true, all(vec3<bool>(var_0.x, true, false)), var_0.x, true))));
}

fn func_2(arg_0: i32, arg_1: i32) -> u32 {
    global0 = array<u32, 6>();
    let var_0 = Struct_1(abs(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -6876i), ~u_input.c), abs(abs(vec2<i32>(-1i, 1i))))));
    let var_1 = -select(vec2<i32>(2147483647i, 0i), u_input.c, all(vec4<bool>(true, true, true, true))) & (vec2<i32>(-10529i, arg_1) >> (~(~(~vec2<u32>(70556u, 0u))) % vec2<u32>(32u)));
    let var_2 = var_0;
    global0 = array<u32, 6>();
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(13271u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61998u, 6u)], 6u)]), abs(global0[_wgslsmith_index_u32(4294967295u, 6u)])), 6u)], 42709u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 6u)]) ^ func_3(1777f, vec4<u32>(41007u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13730u, 6u)], 6u)], 6u)], global0[_wgslsmith_index_u32(71500u, 6u)]), Struct_1(var_2.a)), 6u)], ~global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(59296u, 6u)]), 6u)]), ~((vec4<u32>(global0[_wgslsmith_index_u32(1u, 6u)], 34900u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69691u, 6u)], 6u)], 16955u) & vec4<u32>(global0[_wgslsmith_index_u32(13921u, 6u)], 23673u, global0[_wgslsmith_index_u32(4294967295u, 6u)], 58515u)) >> (max(vec4<u32>(global0[_wgslsmith_index_u32(19529u, 6u)], 67892u, 6531u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37461u, 6u)], 6u)]), vec4<u32>(global0[_wgslsmith_index_u32(23121u, 6u)], 4294967295u, 47025u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], 6u)])) % vec4<u32>(32u))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> vec2<u32> {
    var var_0 = vec4<bool>(~(~arg_2 << (func_2(-19933i, u_input.c.x) % 32u)) < arg_1.x, any(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true), true)), any(vec3<bool>(!all(vec3<bool>(true, false, true)), u_input.b.x > firstLeadingBit(54925i), !any(vec4<bool>(true, true, true, true)))), true);
    var var_1 = u_input.b;
    let var_2 = countOneBits(vec4<u32>(~21474u, abs(~(59367u & global0[_wgslsmith_index_u32(1u, 6u)])), arg_1.x, _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(1u, arg_1.x))));
    let var_3 = Struct_1(abs(var_1.yz));
    var var_4 = Struct_1(max(var_3.a & firstLeadingBit(var_3.a), countOneBits(vec2<i32>(u_input.d | var_3.a.x, 4725i))));
    return var_2.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-_wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, 51381i), vec2<i32>(-76734i, -2147483647i), vec2<i32>(u_input.c.x, u_input.b.x)), vec2<i32>(0i, u_input.b.x >> (global0[_wgslsmith_index_u32(67595u, 6u)] % 32u))));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_2 = ~abs(select(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(53358u, 6u)], 30708u), 6u)], 1u), firstTrailingBit(func_1(-199f, vec2<u32>(0u, global0[_wgslsmith_index_u32(7073u, 6u)]), 4294967295u)), !(4294967295u <= global0[_wgslsmith_index_u32(13611u, 6u)])));
    var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(~186349u, ~28108u), ~(~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 6u)]))), _wgslsmith_mod_vec2_u32(countOneBits(select(countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(var_2.x, 6u)], var_2.x)), vec2<u32>(0u, 15976u) | vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(99968u, 6u)], 6u)], 6u)]), any(vec3<bool>(false, true, true)))), abs(reverseBits(vec2<u32>(0u, var_2.x)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(456f - _wgslsmith_f_op_f32(select(-1964f, _wgslsmith_f_op_f32(trunc(-1003f)), true))))) * 2070f);
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-223f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-865f)), _wgslsmith_f_op_f32(sign(724f)))), 1612f, _wgslsmith_f_op_f32(f32(-1f) * -963f))));
    var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(min(vec2<u32>(0u, var_2.x), vec2<u32>(global0[_wgslsmith_index_u32(var_2.x, 6u)], var_2.x))), ~vec2<u32>(0u, global0[_wgslsmith_index_u32(var_2.x, 6u)]) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(25783u, 6u)]), vec2<u32>(115183u, 34761u))) | func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, var_4.x)), vec2<u32>(global0[_wgslsmith_index_u32(1u, 6u)], var_2.x) << (firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(59822u, 6u)], global0[_wgslsmith_index_u32(41047u, 6u)])) % vec2<u32>(32u)), _wgslsmith_mult_u32(var_2.x >> (global0[_wgslsmith_index_u32(4294967295u, 6u)] % 32u), func_1(-691f, vec2<u32>(4294967295u, var_2.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18777u, 6u)], 6u)], 6u)]).x)), ~_wgslsmith_div_vec2_u32(select(vec2<u32>(1u, global0[_wgslsmith_index_u32(var_2.x, 6u)]), vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 6u)]), true) << (_wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(var_2.x, 0u)) % vec2<u32>(32u)), ~vec2<u32>(global0[_wgslsmith_index_u32(33696u, 6u)], 0u)));
    var_2 = ~max(vec2<u32>(global0[_wgslsmith_index_u32(var_2.x, 6u)], ~4294967295u), vec2<u32>(~var_2.x, abs(var_2.x))) << (max(~(~_wgslsmith_add_vec2_u32(vec2<u32>(20666u, 3535u), vec2<u32>(global0[_wgslsmith_index_u32(9849u, 6u)], 5245u))), _wgslsmith_clamp_vec2_u32(func_1(var_4.x, vec2<u32>(global0[_wgslsmith_index_u32(35151u, 6u)], var_2.x), 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(6662u, var_2.x), vec2<u32>(0u, 55801u)), vec2<u32>(48916u, 61631u)) ^ ~(vec2<u32>(var_2.x, var_2.x) << (vec2<u32>(32689u, global0[_wgslsmith_index_u32(var_2.x, 6u)]) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.x);
}

