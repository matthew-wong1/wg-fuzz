struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 18063i;

var<private> global1: Struct_1 = Struct_1(2268f, vec2<bool>(true, false), 8218u);

var<private> global2: array<Struct_3, 16>;

var<private> global3: array<u32, 23>;

var<private> global4: array<u32, 28>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(758f * -423f), _wgslsmith_f_op_f32(669f - -813f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(433f, arg_0)))), global1.b.x)), vec2<bool>(!(!(u_input.d >= 18123i)), ~abs(global1.c) < ~global4[_wgslsmith_index_u32(4294967295u, 28u)]), 4294967295u);
    var var_0 = _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b.x, ~u_input.d), u_input.b);
    var var_1 = -2147483647i;
    var_0 = countOneBits(reverseBits(~vec2<i32>(var_0.x, _wgslsmith_div_i32(u_input.a, 36307i))));
    var var_2 = abs(max(_wgslsmith_dot_vec4_u32(vec4<u32>(~global3[_wgslsmith_index_u32(1u, 23u)], ~u_input.c, countOneBits(7085u), ~114438u), ~(vec4<u32>(0u, global3[_wgslsmith_index_u32(74205u, 23u)], global1.c, 4294967295u) >> (vec4<u32>(0u, u_input.c, 4294967295u, 50469u) % vec4<u32>(32u)))), global4[_wgslsmith_index_u32(55683u, 28u)]));
    return 498f;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global0 = arg_0.x;
    var var_0 = global1.b;
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2030f - _wgslsmith_f_op_f32(func_3(-398f))), -287f)))), global1.b, ~4294967295u);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    global0 = firstTrailingBit(u_input.a);
    global2 = array<Struct_3, 16>();
    let var_0 = global3[_wgslsmith_index_u32(arg_2.c, 23u)];
    global2 = array<Struct_3, 16>();
    var var_1 = Struct_2(arg_2, ~(~min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_0, u_input.a, u_input.a), vec4<i32>(26339i, 29877i, -54303i, -1i)), countOneBits(vec4<i32>(-37982i, u_input.a, arg_0, 35382i)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1522f - _wgslsmith_f_op_f32(-arg_2.a))), func_2(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, arg_0, u_input.b.x), vec3<i32>(2147483647i, 0i, arg_0))).b, ~select(4294967295u << (0u % 32u), global4[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.c, 23u)], 28u)], all(vec2<bool>(false, true)))));
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(max(global1.c, arg_2.c), _wgslsmith_div_u32(min(reverseBits(arg_2.c) >> (_wgslsmith_add_u32(4294967295u, var_1.c.c) % 32u), global3[_wgslsmith_index_u32(abs(~global3[_wgslsmith_index_u32(arg_2.c, 23u)]), 23u)]), ~_wgslsmith_clamp_u32(arg_2.c ^ global1.c, 1u, _wgslsmith_clamp_u32(4294967295u, 0u, u_input.c)))), 16u)];
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(-141f, global1.b, 1u), select(vec4<i32>(u_input.d << (global1.c % 32u), u_input.d | arg_1, abs(-14614i), _wgslsmith_mod_i32(arg_1, 0i)), vec4<i32>(-2147483647i, 1i, arg_1, 18967i), select(!vec4<bool>(true, false, true, global1.b.x), select(vec4<bool>(global1.b.x, true, false, global1.b.x), vec4<bool>(true, true, global1.b.x, global1.b.x), vec4<bool>(false, true, global1.b.x, global1.b.x)), true)) | ~(~vec4<i32>(arg_1, u_input.b.x, -57290i, -18650i) & _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a, -2147483647i, 13876i), vec4<i32>(-1i, 0i, 44090i, u_input.d))), func_2(select(min(vec3<i32>(u_input.b.x, 6724i, 0i), vec3<i32>(arg_1, u_input.b.x, 52298i)), vec3<i32>(-4323i, u_input.a, arg_1), !vec3<bool>(true, global1.b.x, false)) << (~arg_0.a % vec3<u32>(32u))));
    var var_1 = abs(1u);
    let var_2 = _wgslsmith_div_f32(876f, _wgslsmith_f_op_f32(trunc(global1.a)));
    let var_3 = func_2(var_0.b.zww);
    let var_4 = var_0.b;
    return Struct_2(var_0.c, select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_1, 2147483647i, -1i, var_0.b.x), max(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, 0i, var_4.x, 0i), vec4<i32>(arg_1, u_input.d, -40697i, -9253i)), vec4<i32>(arg_1, 49583i, arg_1, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.x, -68584i, 53059i, u_input.d), ~var_0.b, vec4<i32>(arg_1, var_4.x, 0i, 17348i))), var_0.b, func_2(var_4.xxy).b.x || true), func_2(_wgslsmith_add_vec3_i32(-max(vec3<i32>(var_0.b.x, -2147483647i, 1i), vec3<i32>(1i, 1328i, 19581i)), var_4.xzx)));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = func_5(func_4(-16252i, global1.a, func_2(min(~vec3<i32>(arg_0, 2147483647i, arg_0), vec3<i32>(-2147483647i, u_input.a, 3574i) << (vec3<u32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 28u)], 23u)], 28u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 23u)], 23u)], 23u)], 0u) % vec3<u32>(32u))))), ~1i, _wgslsmith_div_f32(-2582f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c, 1u), ~vec3<u32>(global1.c, 61372u, global1.c))), select(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(29131u, 18126u, u_input.c), vec3<u32>(54435u, global4[_wgslsmith_index_u32(13972u, 28u)], 4294967295u)), vec3<u32>(0u, global4[_wgslsmith_index_u32(global1.c, 28u)], global1.c)), select(vec3<u32>(14154u, global1.c, 67372u), vec3<u32>(global4[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 28u)], 23u)], global3[_wgslsmith_index_u32(global1.c, 23u)]), vec3<bool>(arg_1, global1.b.x, global1.b.x)) >> ((vec3<u32>(global1.c, u_input.c, 1u) | vec3<u32>(u_input.c, u_input.c, 40127u)) % vec3<u32>(32u)), !(!vec3<bool>(true, false, arg_1)))), 28u)]);
    global1 = var_0.c;
    global2 = array<Struct_3, 16>();
    var var_1 = !(!vec4<bool>(global1.b.x, func_5(Struct_3(vec3<u32>(28096u, var_0.c.c, 1u)), 1i, _wgslsmith_div_f32(var_0.a.a, 528f), 34958u).c.b.x, var_0.a.b.x, true));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(4294967295u, ~var_0.c.c)), 16u)];
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a, var_0.c.a)) - _wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(ceil(1103f)), any(vec2<bool>(var_1.x, arg_1))))), vec2<bool>(true, arg_1), _wgslsmith_dot_vec4_u32(max(vec4<u32>(_wgslsmith_add_u32(var_0.a.c, global4[_wgslsmith_index_u32(40663u, 28u)]), 73237u, global4[_wgslsmith_index_u32(func_4(u_input.d, 1653f, var_0.a).a.x, 28u)], 4939u), ~(~vec4<u32>(u_input.c, 4294967295u, 60194u, var_2.a.x))), vec4<u32>(global4[_wgslsmith_index_u32(u_input.c, 28u)] | u_input.c, global1.c ^ global4[_wgslsmith_index_u32(1u, 28u)], global4[_wgslsmith_index_u32(~4294967295u, 28u)], 1u) << (firstLeadingBit(min(vec4<u32>(20224u, var_2.a.x, 4294967295u, global4[_wgslsmith_index_u32(59899u, 28u)]), vec4<u32>(u_input.c, 47762u, 0u, 59848u))) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_mult_i32(-reverseBits(15596i), _wgslsmith_div_i32(u_input.a, abs(u_input.b.x))), any(vec4<bool>(global1.b.x, true, true && global1.b.x, global1.b.x))), vec4<i32>(u_input.a, (i32(-1i) * -29009i) >> (max(~1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 28u)], 23u)], 23u)]) % 32u), 16186i, _wgslsmith_div_i32(-u_input.b.x, u_input.d) << (func_2(abs(vec3<i32>(u_input.b.x, u_input.d, u_input.a))).c % 32u)), Struct_1(global1.a, !global1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(global3[_wgslsmith_index_u32(1u, 23u)]), 0u), max(~vec2<u32>(u_input.c, 59036u), vec2<u32>(0u, global3[_wgslsmith_index_u32(40805u, 23u)]) ^ vec2<u32>(global1.c, 1u)))));
    global0 = ~u_input.b.x;
    let var_1 = min(var_0.a.c, 1u);
    global4 = array<u32, 28>();
    let var_2 = var_0.b;
    let var_3 = global1.b.x;
    var var_4 = var_0.c.b.x;
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(~(~(~vec2<u32>(global1.c, 64049u))), vec2<u32>(func_4(u_input.a, _wgslsmith_f_op_f32(floor(281f)), var_0.c).a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_5, 4291u) ^ vec3<u32>(1u, 1u, var_0.a.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(3010u, var_1, 54987u), vec3<u32>(82509u, var_5, 1u), vec3<u32>(u_input.c, var_1, 49011u))))));
}

