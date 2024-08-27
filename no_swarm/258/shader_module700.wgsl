struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(9952u, 119228u), vec2<u32>(1u, 41810u), vec2<u32>(4782u, 0u), vec2<u32>(1u, 50042u), vec2<u32>(108817u, 20298u), vec2<u32>(1u, 15526u), vec2<u32>(65541u, 26499u), vec2<u32>(0u, 56240u), vec2<u32>(731u, 4294967295u), vec2<u32>(4294967295u, 18632u), vec2<u32>(24414u, 19915u), vec2<u32>(5u, 41599u));

var<private> global1: Struct_2;

var<private> global2: array<f32, 31>;

var<private> global3: array<f32, 17>;

var<private> global4: array<vec2<bool>, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<u32> {
    global1 = arg_1;
    global0 = array<vec2<u32>, 12>();
    var var_0 = Struct_5(!all(vec4<bool>(true, true, false, any(vec3<bool>(true, true, true)))), ~firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.c, arg_1.d.x, arg_1.d.x), vec3<i32>(2147483647i, -2147483647i, global1.d.x)), u_input.b)), _wgslsmith_sub_u32(~(~(~global1.a.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(~global1.e, ~1u), (vec2<u32>(0u, 71240u) >> (global0[_wgslsmith_index_u32(41508u, 12u)] % vec2<u32>(32u))) | vec2<u32>(1u, 16346u))), global1.a);
    var var_1 = !var_0.a;
    let var_2 = Struct_2(arg_1.a, arg_1.a, firstLeadingBit(~(~(-79392i))), ~firstLeadingBit(vec2<i32>(~var_0.b.x, var_0.b.x)), 1u);
    return vec2<u32>(~reverseBits(var_2.a.a.x), _wgslsmith_clamp_u32(firstTrailingBit(global1.a.a.x), arg_1.a.a.x, ~_wgslsmith_add_u32(76707u, 48397u)) << (var_2.e % 32u));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: f32) -> Struct_2 {
    global0 = array<vec2<u32>, 12>();
    global4 = array<vec2<bool>, 15>();
    global2 = array<f32, 31>();
    global1 = Struct_2(Struct_1(~func_3(vec3<f32>(-987f, 935f, -1097f), Struct_2(Struct_1(global1.b.a), Struct_1(global0[_wgslsmith_index_u32(0u, 12u)]), u_input.b.x, vec2<i32>(-23961i, 1401i), global1.b.a.x)) << (global0[_wgslsmith_index_u32(83921u, 12u)] % vec2<u32>(32u))), global1.a, 3576i, ~u_input.b.zz, abs(global1.b.a.x) & max(select(22793u, countOneBits(4294967295u), true), abs(4294967295u)));
    global2 = array<f32, 31>();
    return Struct_2(global1.a, Struct_1(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(global1.a.a.x, 8768u), global1.b.a, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.a.a, global0[_wgslsmith_index_u32(global1.b.a.x, 12u)]) >> ((global1.b.a.x << (1u % 32u)) % 32u), 12u)], ~firstTrailingBit(global1.a.a))), ~arg_0, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(1i, global1.c)), firstLeadingBit(countOneBits(u_input.b.xx)), vec2<i32>(0i, u_input.b.x)), _wgslsmith_mod_vec2_i32(~countOneBits(vec2<i32>(u_input.a.x, 72756i)), -vec2<i32>(u_input.b.x, -31920i)), select(arg_1.yx, abs(u_input.a), vec2<bool>(-454f != global2[_wgslsmith_index_u32(10415u, 31u)], any(vec4<bool>(true, false, true, false))))), abs(firstLeadingBit(global1.a.a.x)) >> (global1.a.a.x % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_4 {
    global0 = array<vec2<u32>, 12>();
    var var_0 = Struct_2(func_2(abs(-arg_0.b.c), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.c, -1i, arg_0.a.d.x), -vec3<i32>(u_input.b.x, u_input.a.x, global1.d.x)) ^ vec3<i32>(~(-2147483647i), 2147483647i, 1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -352f))).a, arg_0.d, func_2(14944i, vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -12473i, select(u_input.a.x, u_input.a.x, false)), arg_0.a.c, arg_0.a.d.x), global3[_wgslsmith_index_u32(global1.b.a.x, 17u)]).d.x, u_input.a, 0u);
    let var_1 = Struct_2(Struct_1(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(2271u, arg_0.a.e), vec2<u32>(global1.b.a.x, 44294u), arg_0.d.a))), Struct_1(min(~(~vec2<u32>(111560u, 1u)), ~vec2<u32>(1u, global1.b.a.x) << (var_0.b.a % vec2<u32>(32u)))), arg_0.a.d.x | (~4705i << (select(1u, _wgslsmith_mult_u32(var_0.e, 63373u), true) % 32u)), abs(u_input.b.yx), var_0.b.a.x);
    let var_2 = Struct_4(_wgslsmith_mult_i32(var_1.d.x, global1.d.x), Struct_3(func_2(_wgslsmith_div_i32(arg_0.b.c, ~(-1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 12709i, var_0.c), u_input.b) ^ reverseBits(vec3<i32>(var_0.d.x, var_0.d.x, arg_0.a.d.x)), global2[_wgslsmith_index_u32(global1.a.a.x << (var_1.b.a.x % 32u), 31u)]), func_2(2147483647i, u_input.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(132f, 227f))))), Struct_1(select(global0[_wgslsmith_index_u32(global1.b.a.x, 12u)], vec2<u32>(4294967295u, var_1.a.a.x) >> (global0[_wgslsmith_index_u32(0u, 12u)] % vec2<u32>(32u)), arg_1.x)), var_0.b));
    let var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(abs(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.a.x, 56546u, arg_0.c.a.x, 4294967295u), vec4<u32>(arg_0.a.e, global1.e, 1u, 1u)))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, var_0.e, arg_0.b.b.a.x, 1u), ~vec4<u32>(var_0.a.a.x, global1.b.a.x, var_1.e, arg_0.d.a.x)), vec4<u32>(var_0.e, var_1.a.a.x, 0u, _wgslsmith_div_u32(var_0.a.a.x, arg_0.d.a.x)))), vec4<u32>(var_2.b.a.b.a.x, ~reverseBits(var_0.a.a.x), 1u, 0u), abs(abs(~vec4<u32>(34023u, var_1.e, 4294967295u, arg_0.d.a.x) ^ (vec4<u32>(var_2.b.a.a.a.x, 109824u, arg_0.c.a.x, 4294967295u) << (vec4<u32>(global1.e, var_2.b.d.a.x, var_2.b.b.a.a.x, 39555u) % vec4<u32>(32u))))));
    return Struct_4(~(-(~1i)), var_2.b);
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = func_4(Struct_3(Struct_2(Struct_1(~global0[_wgslsmith_index_u32(global1.a.a.x, 12u)]), global1.a, 2147483647i, max(global1.d, vec2<i32>(u_input.b.x, global1.d.x) & vec2<i32>(global1.d.x, u_input.b.x)), 1u), func_2(global1.c, _wgslsmith_mod_vec3_i32(-u_input.b, reverseBits(u_input.b)), -1369f), func_2(10608i, firstLeadingBit(_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(0i, -2147483647i, u_input.b.x))), 714f).b, global1.a), vec2<bool>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-45433i, u_input.a.x, global1.c)), abs(u_input.b)) <= (0i << (firstTrailingBit(4294967295u) % 32u)), !any(vec3<bool>(arg_0, arg_0, true))));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.d.a.x, global1.a.a.x), reverseBits(global1.a.a)), min(global1.a.a.x, var_0.b.d.a.x) >> (var_0.b.b.b.a.x % 32u)), ~var_0.b.b.b.a));
    let var_2 = Struct_4(func_4(Struct_3(func_4(var_0.b, !global4[_wgslsmith_index_u32(113302u, 15u)]).b.b, var_0.b.b, Struct_1(vec2<u32>(74446u, var_0.b.d.a.x) << (global1.a.a % vec2<u32>(32u))), Struct_1(~vec2<u32>(global1.b.a.x, var_0.b.d.a.x))), select(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(49587u, var_0.b.a.e), ~4294967295u), 15u)], vec2<bool>(arg_0, true), vec2<bool>(true, true))).a, Struct_3(Struct_2(func_2(reverseBits(-2147483647i), -u_input.b, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(33768u, 31u)], -1042f))).a, var_0.b.a.a, var_0.a, _wgslsmith_add_vec2_i32(global1.d, var_0.b.a.d), 0u << (_wgslsmith_mod_u32(16621u, global1.a.a.x) % 32u)), var_0.b.b, Struct_1(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 12u)])), var_0.b.d));
    global2 = array<f32, 31>();
    var var_3 = _wgslsmith_sub_i32(16529i ^ var_2.a, var_2.a);
    return abs(firstLeadingBit(0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.e;
    var_0 = ~(~abs(select(0u, 1u, false)) | func_1(true));
    var var_1 = ~global1.b.a;
    var var_2 = !(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))) && any(vec3<bool>(true, true, true)));
    global3 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-36581i, u_input.b.x | (-u_input.a.x | 0i), ~(-1i << (var_1.x % 32u)), abs(global1.c) & (~u_input.b.x & -15244i)), max(-5441i, -3169i >> (_wgslsmith_add_u32(4294967295u, ~var_1.x) % 32u)), u_input.b & ~max(u_input.b, u_input.b));
}

