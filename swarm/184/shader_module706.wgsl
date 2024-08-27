struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_1(23186u, vec2<i32>(28038i, i32(-2147483648)), vec4<bool>(false, true, true, true))), Struct_3(Struct_1(4294967295u, vec2<i32>(77418i, -62586i), vec4<bool>(true, false, true, true))), Struct_3(Struct_1(64460u, vec2<i32>(13871i, -9317i), vec4<bool>(true, false, false, false))), Struct_3(Struct_1(1u, vec2<i32>(i32(-2147483648), 0i), vec4<bool>(false, false, false, true))), Struct_3(Struct_1(0u, vec2<i32>(14858i, 6338i), vec4<bool>(true, false, false, true))), Struct_3(Struct_1(4294967295u, vec2<i32>(-1i, 1i), vec4<bool>(false, true, false, false))), Struct_3(Struct_1(4294967295u, vec2<i32>(8130i, 0i), vec4<bool>(false, true, true, false))), Struct_3(Struct_1(68691u, vec2<i32>(0i, 0i), vec4<bool>(true, true, false, true))), Struct_3(Struct_1(0u, vec2<i32>(2147483647i, 2147483647i), vec4<bool>(false, false, true, true))), Struct_3(Struct_1(26442u, vec2<i32>(19035i, 1i), vec4<bool>(true, true, true, false))), Struct_3(Struct_1(4294967295u, vec2<i32>(-11495i, 34868i), vec4<bool>(false, false, false, false))), Struct_3(Struct_1(19029u, vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(true, false, true, true))), Struct_3(Struct_1(4294967295u, vec2<i32>(47637i, 2147483647i), vec4<bool>(true, false, false, false))), Struct_3(Struct_1(62022u, vec2<i32>(7942i, i32(-2147483648)), vec4<bool>(false, true, false, true))), Struct_3(Struct_1(94024u, vec2<i32>(-22743i, 1i), vec4<bool>(true, true, true, false))), Struct_3(Struct_1(21550u, vec2<i32>(-19355i, -5422i), vec4<bool>(true, false, false, true))), Struct_3(Struct_1(82333u, vec2<i32>(1i, 36262i), vec4<bool>(true, true, false, true))), Struct_3(Struct_1(1u, vec2<i32>(905i, -31617i), vec4<bool>(true, true, true, false))), Struct_3(Struct_1(33069u, vec2<i32>(1i, 3612i), vec4<bool>(true, true, false, false))), Struct_3(Struct_1(4965u, vec2<i32>(2147483647i, 32085i), vec4<bool>(true, false, false, false))), Struct_3(Struct_1(59630u, vec2<i32>(45952i, i32(-2147483648)), vec4<bool>(true, true, true, true))), Struct_3(Struct_1(1u, vec2<i32>(0i, i32(-2147483648)), vec4<bool>(false, true, false, false))), Struct_3(Struct_1(0u, vec2<i32>(i32(-2147483648), 1i), vec4<bool>(false, true, false, true))), Struct_3(Struct_1(4294967295u, vec2<i32>(-7400i, -1i), vec4<bool>(false, true, false, false))), Struct_3(Struct_1(12056u, vec2<i32>(-9571i, 0i), vec4<bool>(false, false, true, false))), Struct_3(Struct_1(42614u, vec2<i32>(20785i, 1i), vec4<bool>(true, true, true, true))), Struct_3(Struct_1(1u, vec2<i32>(0i, -1i), vec4<bool>(false, true, true, true))));

var<private> global2: vec3<u32>;

var<private> global3: array<i32, 6> = array<i32, 6>(58570i, -1i, 2147483647i, 0i, -19386i, 0i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> vec2<bool> {
    var var_0 = Struct_1(~u_input.b, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, arg_0.b.x), vec3<i32>(arg_0.b.x, 14172i, global3[_wgslsmith_index_u32(1u, 6u)])), -8669i), arg_0.b.x) ^ vec2<i32>(_wgslsmith_div_i32(-1i, -32861i) | (global3[_wgslsmith_index_u32(0u, 6u)] | -2147483647i), arg_0.b.x), vec4<bool>(~arg_0.b.x <= firstTrailingBit(select(global3[_wgslsmith_index_u32(7277u, 6u)], global3[_wgslsmith_index_u32(arg_0.a, 6u)], true)), true, true, !arg_1.a.x));
    let var_1 = -countOneBits(~arg_0.b.x);
    global2 = firstLeadingBit(~firstLeadingBit(~vec3<u32>(22022u, arg_0.a, 32718u))) | max(select(vec3<u32>(var_0.a, 33904u, 3834u << (1u % 32u)), select(vec3<u32>(global2.x, 54601u, arg_0.a), reverseBits(vec3<u32>(4294967295u, 4294967295u, 6431u)), arg_0.c.xxy), all(arg_0.c.zw) == true), countOneBits(~vec3<u32>(7229u, 94887u, 27786u)) ^ select(vec3<u32>(global2.x, 50395u, var_0.a), _wgslsmith_div_vec3_u32(vec3<u32>(global2.x, 1u, arg_0.a), vec3<u32>(70258u, 6556u, 1u)), true));
    var var_2 = arg_0;
    let var_3 = Struct_4(!(!vec2<bool>(false, arg_1.a.x)));
    return var_3.a;
}

fn func_2() -> vec4<u32> {
    let var_0 = any(vec4<bool>(false, true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), false)), true));
    global3 = array<i32, 6>();
    var var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(!var_0, var_0), !func_3(Struct_1(global2.x, vec2<i32>(-29980i, global3[_wgslsmith_index_u32(0u, 6u)]), vec4<bool>(var_0, var_0, false, false)), Struct_2(vec3<bool>(var_0, var_0, var_0)), 183f, 1351f)), vec2<bool>(4294967295u >= u_input.b, !any(select(vec4<bool>(var_0, false, true, true), vec4<bool>(true, var_0, true, var_0), false))), (any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, var_0, var_0))) || (!var_0 | all(vec2<bool>(false, false)))) == (_wgslsmith_f_op_f32(select(-1298f, -589f, true)) < -206f));
    var_1 = select(!vec2<bool>(var_0, var_1.x), !(!func_3(Struct_1(4294967295u, vec2<i32>(-2147483647i, 20301i), vec4<bool>(var_1.x, var_1.x, var_0, false)), Struct_2(vec3<bool>(true, var_1.x, var_1.x)), _wgslsmith_f_op_f32(141f - -471f), -800f)), !(!vec2<bool>(select(var_0, var_0, var_1.x), all(vec4<bool>(false, true, false, var_0)))));
    let var_2 = Struct_1(min(1u, _wgslsmith_div_u32(u_input.a, firstTrailingBit(global2.x)) >> (~u_input.a % 32u)), _wgslsmith_sub_vec2_i32(~(-abs(vec2<i32>(global3[_wgslsmith_index_u32(96722u, 6u)], -50569i))), abs(countOneBits(~vec2<i32>(global3[_wgslsmith_index_u32(u_input.b, 6u)], 0i)))), vec4<bool>(true, var_1.x, var_0 & true, true));
    return ~(~(~abs(vec4<u32>(1u, 1u, 0u, 1u))) << (vec4<u32>(u_input.b ^ ~4294967295u, 5112u, firstLeadingBit(var_2.a) & 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 0u, 1u, 46909u), vec4<u32>(77718u, u_input.a, u_input.a, 1u)) << (~1u % 32u)) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> vec4<bool> {
    var var_0 = func_2();
    global2 = ~(~_wgslsmith_div_vec3_u32(select(var_0.ywz, abs(var_0.zww), any(vec4<bool>(true, true, false, true))), vec3<u32>(arg_0, ~1u, ~56642u)));
    global3 = array<i32, 6>();
    var var_1 = Struct_2(vec3<bool>(22944u == firstLeadingBit(~u_input.a), false, (select(true, true, true) & true) || (-1416f != _wgslsmith_f_op_f32(exp2(arg_1.x)))));
    global0 = abs(var_0.x);
    return vec4<bool>(0u != u_input.a, true, var_1.a.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 6>();
    var var_0 = Struct_1(~max(0u, _wgslsmith_sub_u32(u_input.b, u_input.b)), -((vec2<i32>(-1i) * -vec2<i32>(global3[_wgslsmith_index_u32(global2.x, 6u)], 1i)) >> (global2.yz % vec2<u32>(32u))), select(!vec4<bool>(true, -4555i < global3[_wgslsmith_index_u32(4294967295u, 6u)], true, false), !func_1(~u_input.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 438f, -1000f, -1165f)))), func_1(global2.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1809f, 329f, -1015f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1363f, -308f, 743f, 1538f)))))));
    var var_1 = _wgslsmith_f_op_f32(1000f - 239f);
    let var_2 = -511f;
    global3 = array<i32, 6>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-95123i) & var_0.b.x), -1016f, vec4<i32>(-1i, countOneBits(global3[_wgslsmith_index_u32(83077u, 6u)]), firstTrailingBit(-_wgslsmith_mult_i32(var_0.b.x, 1i)), countOneBits(~_wgslsmith_mod_i32(var_0.b.x, -2147483647i))));
}

