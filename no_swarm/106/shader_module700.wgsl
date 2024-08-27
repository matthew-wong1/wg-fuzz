struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: array<f32, 16> = array<f32, 16>(718f, -1250f, 606f, 257f, 787f, -674f, -133f, 1429f, 260f, -227f, -348f, 268f, -1194f, 1000f, -227f, -260f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> vec3<i32> {
    global0 = array<bool, 1>();
    let var_0 = Struct_1(reverseBits(4294967295u), firstLeadingBit(~(-vec4<i32>(u_input.a, 27584i, 7108i, u_input.a)) ^ (~vec4<i32>(0i, u_input.a, 5369i, -65201i) << (abs(vec4<u32>(4294967295u, 0u, u_input.b, 71287u)) % vec4<u32>(32u)))), _wgslsmith_clamp_i32(-9641i, -2147483647i, abs(-(u_input.a << (u_input.c % 32u)))), !(!vec3<bool>(-2147483647i < u_input.a, true, global1[_wgslsmith_index_u32(49584u, 16u)] <= -1456f)), -u_input.a);
    let var_1 = select(firstLeadingBit(reverseBits(~var_0.a)), reverseBits(var_0.a), var_0.d.x);
    let var_2 = Struct_4(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, var_1, 1u), vec3<u32>(var_1, 34496u, 4294967295u)), min(vec3<u32>(u_input.c, u_input.c, 49695u), vec3<u32>(var_1, 68087u, u_input.c))), firstLeadingBit(vec3<u32>(50394u, u_input.b, 73210u) << (vec3<u32>(4294967295u, var_0.a, 175626u) % vec3<u32>(32u)))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_0.a, 33944u), vec3<u32>(var_1, var_0.a, 64426u) << (vec3<u32>(48969u, 0u, 0u) % vec3<u32>(32u)), select(vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(49009u, 4294967295u, 4294967295u), vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(u_input.c, 1u)], var_0.d.x)))), ~_wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, var_1, var_1, 1u), vec4<u32>(var_0.a, u_input.b, u_input.c, 4294967295u), vec4<u32>(var_1, 0u, u_input.b, var_0.a))), countOneBits(min(vec4<u32>(24295u, 10606u, 1u, 70037u), vec4<u32>(5029u, 47848u, 39044u, 11419u)))), Struct_2(!var_0.d.yx), Struct_3(select(vec3<bool>(true, true, true), var_0.d, select(var_0.d, vec3<bool>(false, false, var_0.d.x), select(var_0.d, var_0.d, false)))), Struct_2(select(select(var_0.d.zx, select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(var_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 1u)]), false), vec2<bool>(true, true)), !var_0.d.zx, !select(arg_0, vec2<bool>(arg_0.x, false), vec2<bool>(true, false)))));
    let var_3 = _wgslsmith_sub_i32(~countOneBits(min(-var_0.c, u_input.a & u_input.a)), var_0.c ^ (select(~u_input.a, 1i, 666f != global1[_wgslsmith_index_u32(var_2.b.x, 16u)]) | u_input.a));
    return var_0.b.xyx;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = 23380i ^ u_input.a;
    global1 = array<f32, 16>();
    var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2147483647i, -20135i), vec3<i32>(0i, -2147483647i, 1i))) | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -17005i, u_input.a) << (vec3<u32>(arg_0.x, arg_0.x, 36642u) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -26082i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a))), ~(~(~vec3<i32>(18889i, -2371i, u_input.a)))), -func_3(vec2<bool>(true, false)));
    let var_1 = u_input.b;
    var_0 = u_input.a;
    return Struct_1(_wgslsmith_div_u32(1u, var_1) << (u_input.c % 32u), firstLeadingBit(~select(vec4<i32>(3238i, 3501i, -14367i, 0i), ~vec4<i32>(u_input.a, 25117i, u_input.a, 2147483647i), !vec4<bool>(true, arg_1.x, true, arg_1.x))), firstLeadingBit(u_input.a), !select(!(!vec3<bool>(arg_1.x, global0[_wgslsmith_index_u32(29847u, 1u)], true)), !vec3<bool>(global0[_wgslsmith_index_u32(44484u, 1u)], true, global0[_wgslsmith_index_u32(0u, 1u)]), false), u_input.a);
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    global1 = array<f32, 16>();
    var var_0 = ~min(i32(-1i) * -79620i, u_input.a) ^ ~u_input.a;
    var var_1 = func_2(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.zzz, firstLeadingBit(vec3<u32>(u_input.b, arg_0.x, u_input.c))), ~_wgslsmith_div_vec3_u32(arg_0.zww, arg_0.www)), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(7644u, 51824u), 1u)], global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_add_u32(1u, arg_0.x)), 1u)]));
    let var_2 = Struct_4(~vec3<u32>(~(~arg_0.x), max(var_1.a, 1155u), ~_wgslsmith_clamp_u32(1u, 46984u, u_input.b)), _wgslsmith_div_vec4_u32(arg_0, _wgslsmith_clamp_vec4_u32(arg_0, arg_0, _wgslsmith_mod_vec4_u32(vec4<u32>(65415u, u_input.c, u_input.c, 55912u), arg_0))) | select(~vec4<u32>(u_input.b, 29801u, arg_0.x, arg_0.x) << (~arg_0 % vec4<u32>(32u)), vec4<u32>(~66439u, abs(arg_0.x), 12504u, reverseBits(3796u)), !(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], var_1.d.x, var_1.d.x, global0[_wgslsmith_index_u32(arg_0.x, 1u)]))), Struct_2(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], var_1.d.x)))), Struct_3(!func_2(arg_0.zxw, select(vec2<bool>(var_1.d.x, global0[_wgslsmith_index_u32(u_input.c, 1u)]), var_1.d.zx, vec2<bool>(var_1.d.x, true))).d), Struct_2(vec2<bool>(!func_2(vec3<u32>(1u, 63356u, var_1.a), var_1.d.xy).d.x, true)));
    let var_3 = 4294967295u;
    return vec2<bool>(true, func_2(vec3<u32>(72853u, var_1.a, ~(~0u)), !vec2<bool>(var_2.d.a.x, true)).d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~(~u_input.c), 16u)]));
    let var_1 = Struct_2(select(select(select(vec2<bool>(true, true), func_1(vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.b)), func_1(vec4<u32>(4919u, u_input.c, u_input.c, 1u))), select(vec2<bool>(false, global0[_wgslsmith_index_u32(21365u, 1u)]), vec2<bool>(true, true), select(vec2<bool>(false, global0[_wgslsmith_index_u32(72024u, 1u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 1u)]), true)), true), func_2(vec3<u32>(~0u, u_input.c, ~24625u), vec2<bool>(false, false)).d.xz, !(!(global0[_wgslsmith_index_u32(47793u, 1u)] | global0[_wgslsmith_index_u32(u_input.c, 1u)]))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(724f, global1[_wgslsmith_index_u32(u_input.c, 16u)], -1019f, global1[_wgslsmith_index_u32(u_input.b, 16u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], 507f, global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(u_input.c, 16u)]))) + vec4<f32>(290f, global1[_wgslsmith_index_u32(34808u, 16u)], 1000f, 199f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-481f, 711f, 1000f, 446f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1234f, global1[_wgslsmith_index_u32(u_input.b, 16u)], 531f, global1[_wgslsmith_index_u32(u_input.c, 16u)]))), var_1.a.x)));
    var var_3 = u_input.c;
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-975f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 1479f) + -2917f)), global1[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(1u, u_input.b), reverseBits(~78501u)), 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)) * var_2.x), global1[_wgslsmith_index_u32(1u, 16u)]) + vec4<f32>(var_2.x, _wgslsmith_f_op_f32(max(-1461f, _wgslsmith_f_op_f32(min(1536f, -306f)))), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b | 174u, 4294967295u), 16u)], _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-823f, global1[_wgslsmith_index_u32(1u, 16u)]))))), _wgslsmith_f_op_f32(trunc(1207f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~vec3<i32>(30928i, -2147483647i, 0i & u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -10501i, max(u_input.a, 1i), 12896i), vec3<i32>(-2147483647i, -32786i, u_input.a) >> (countOneBits(vec3<u32>(u_input.b, 1u, u_input.b)) % vec3<u32>(32u)))), -35426i, u_input.b, 37268u, firstTrailingBit(~_wgslsmith_sub_i32(52595i, func_2(vec3<u32>(4294967295u, u_input.b, 0u), var_1.a).c)));
}

