struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: f32;

var<private> global2: bool = true;

var<private> global3: vec2<u32>;

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> bool {
    global2 = false;
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_1.c.a, arg_1.c.a, arg_0.a, 2147483647i)), ~vec4<i32>(-1i, arg_0.a, arg_1.c.a, -9953i)), (vec4<i32>(25827i, arg_1.c.a, 23700i, arg_0.a) << (firstTrailingBit(vec4<u32>(4294967295u, global3.x, arg_1.d, 33800u)) % vec4<u32>(32u))) ^ -(vec4<i32>(2147483647i, -2705i, 1i, -1i) | vec4<i32>(arg_0.a, arg_0.a, -28459i, arg_0.a))), _wgslsmith_mult_i32(1i, 1i << (~4294967295u % 32u)), -28106i);
    global4 = global0[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(1u, 54073u, _wgslsmith_sub_u32(8524u, ~(~arg_1.d))), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_2, 1u), ~4294967295u)), 2u)];
    global4 = global0[_wgslsmith_index_u32(21548u, 2u)];
    global2 = all(select(vec3<bool>(all(vec4<bool>(true, arg_1.b.x, true, false)), true | any(arg_1.b), arg_1.a), select(vec3<bool>(false, select(true, arg_1.a, true), all(arg_1.b)), !(!vec3<bool>(arg_1.b.x, false, arg_1.a)), !arg_1.a), !(!select(true, false, false))));
    return !(!(!arg_1.a)) | !(!(!(arg_1.a || arg_1.a)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(0i);
    var var_1 = _wgslsmith_div_f32(693f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)])))));
    let var_2 = Struct_2(any(vec2<bool>(true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true)))), vec2<bool>(-(var_0.a | var_0.a) >= ~(var_0.a & var_0.a), !func_3(Struct_1(4406i), Struct_2(false, vec2<bool>(false, true), Struct_1(var_0.a), 4294967295u), global3.x)), var_0, _wgslsmith_clamp_u32(4294967295u, ~47444u, 1u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 64716u, 24618u, 40793u), vec4<u32>(57752u, 1u, global3.x, 0u))));
    global3 = ~(u_input.a << (countOneBits(u_input.b) % vec2<u32>(32u)));
    return var_2.c;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    let var_0 = vec4<bool>(!(select(min(arg_3, 1u), arg_3, true) < 1u), any(!select(!vec3<bool>(arg_1, true, false), !vec3<bool>(arg_1, arg_1, false), !vec3<bool>(true, arg_1, arg_1))), arg_1, func_3(func_2(), Struct_2(true, vec2<bool>(true, true), arg_2, 0u), ~max(~0u, ~arg_3)));
    let var_1 = ~(~_wgslsmith_add_u32(u_input.b.x, 46264u));
    let var_2 = Struct_2(var_0.x, var_0.ww, Struct_1(1i), _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, var_1 << (min(arg_3, arg_3) % 32u)), 0u));
    var var_3 = arg_2;
    let var_4 = vec2<u32>(abs(~104026u), _wgslsmith_add_u32(max(~u_input.a.x, global3.x), u_input.a.x ^ max(4294967295u, 11739u))) | vec2<u32>(1u, abs(global3.x));
    return vec2<i32>(reverseBits(arg_0 << (min(arg_3, 0u) % 32u)) << (arg_3 % 32u), firstLeadingBit(var_2.c.a));
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = ~(~vec2<u32>(15834u, abs(global3.x | u_input.b.x)));
    var var_1 = select(true, ((2181u | var_0.x) ^ 1u) >= ~var_0.x, any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), true))) && true;
    var var_2 = global0[_wgslsmith_index_u32(~countOneBits(countOneBits(~var_0.x)) & global3.x, 2u)];
    var_0 = ~firstLeadingBit(~vec2<u32>(1u, 37510u));
    let var_3 = -836f;
    return _wgslsmith_div_u32(global3.x << (_wgslsmith_add_u32(countOneBits(global3.x) >> (335u % 32u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b.x, global3.x, 4294967295u, 4294967295u), vec4<u32>(var_0.x, 11842u, 0u, var_0.x)), firstLeadingBit(vec4<u32>(17267u, 24024u, 1u, var_0.x)))) % 32u), _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(global3.x, var_0.x, 11394u, 18483u)), vec4<u32>(33547u, _wgslsmith_mod_u32(0u, ~u_input.b.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.x, u_input.a.x)), vec2<u32>(global3.x, 14738u)), global3.x)));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = 13651u;
    var var_1 = u_input.b;
    let var_2 = func_5(Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(arg_0, 1i)), func_4(2147483647i | arg_0, all(vec4<bool>(true, true, true, true)), func_2(), ~15223u))));
    var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.b, vec2<u32>(abs(global3.x >> (var_2 % 32u)), 59908u)), ~_wgslsmith_add_vec2_u32(u_input.a, countOneBits(vec2<u32>(991u, 4294967295u))));
    var var_3 = ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~(vec3<u32>(var_2, var_2, 4294967295u) & vec3<u32>(13391u, 7501u, 1u)), ~vec3<u32>(0u, 78976u, global3.x)), ~vec3<u32>(func_5(Struct_1(-2147483647i)), ~var_2, 0u));
    return min(~min(-arg_0 << (~1u % 32u), _wgslsmith_mult_i32(arg_0, min(arg_0, 53908i))), -arg_0);
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0.yy;
    var var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~global3.x, max(~20546u, 12959u)), ~vec2<u32>(~17400u, global3.x)), u_input.a);
    global2 = true;
    global2 = all(!select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(arg_1.a <= -9102i, false, false, false)));
    global0 = array<f32, 2>();
    return Struct_1(_wgslsmith_mod_i32(arg_1.a ^ _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_2, arg_1.a), arg_2), ~arg_1.a));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_2 {
    return Struct_2(true, vec2<bool>(true, false), Struct_1(-(~(~arg_1.a))), ~4079u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1263f;
    let var_1 = select(vec2<bool>(any(vec3<bool>(false, all(vec2<bool>(true, false)), any(vec2<bool>(true, false)))), select(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), select(true, all(vec2<bool>(false, false)), all(vec2<bool>(false, true))))), select(vec2<bool>(false, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)))), select(vec2<bool>(true, any(vec3<bool>(false, true, true))), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, true)), true)), true), true);
    var var_2 = ~(~vec3<i32>(1i, 1i, 1i));
    let var_3 = _wgslsmith_mod_i32(var_2.x | 2091i, var_2.x);
    let var_4 = func_7(func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, -672f, 1190f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1849f, -460f, 2252f) * vec3<f32>(global0[_wgslsmith_index_u32(84818u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 391f))))), Struct_1(var_2.x), func_1(abs(2147483647i & var_2.x))), func_6(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(1149f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(17119u, 2u)]), -1215f))), func_2(), var_3), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-818f, -324f, global0[_wgslsmith_index_u32(40080u, 2u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1269f, -956f, global0[_wgslsmith_index_u32(4294967295u, 2u)]))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(575u, 2u)])), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global3.x, u_input.b.x), 2u)], -287f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global3.x, 2u)], global0[_wgslsmith_index_u32(global3.x, 2u)], -488f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(451f, 183f, -489f))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1143f, global0[_wgslsmith_index_u32(global3.x & u_input.b.x, 2u)], 695f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(var_4.d, 1u)), u_input.a & vec2<u32>(_wgslsmith_clamp_u32(4294967295u, var_4.d, 1u), 4294967295u & var_4.d)), u_input.a.x, ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 30557u, 86304u) ^ vec3<u32>(global3.x, 28527u, 0u), select(vec3<u32>(21069u, var_4.d, 1u), vec3<u32>(var_4.d, u_input.b.x, var_4.d), vec3<bool>(var_1.x, false, var_4.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(16220u, 1u, var_4.d) & vec3<u32>(8926u, u_input.b.x, 0u), vec3<u32>(var_4.d, global3.x, var_4.d))));
}

