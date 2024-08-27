struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(27440u, 25614u, 32683u);

var<private> global1: u32;

var<private> global2: array<f32, 6>;

var<private> global3: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(2147483647i, i32(-2147483648), 15049i), vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(-27483i, i32(-2147483648), -13149i), vec3<i32>(-11062i, 0i, -74964i), vec3<i32>(0i, 2147483647i, -23498i), vec3<i32>(42631i, 14616i, i32(-2147483648)), vec3<i32>(-3649i, -18524i, -46813i), vec3<i32>(2147483647i, -89245i, 30140i), vec3<i32>(47283i, 2147483647i, 21298i), vec3<i32>(0i, -23689i, 268i), vec3<i32>(17964i, -1i, 1i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(13634i, -1i, i32(-2147483648)), vec3<i32>(1i, -17609i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(5109i, -1i, 2147483647i), vec3<i32>(2147483647i, -37015i, 2147483647i), vec3<i32>(-27840i, -1i, -1i), vec3<i32>(i32(-2147483648), -1i, 28447i), vec3<i32>(-14707i, 2147483647i, -42314i), vec3<i32>(15150i, i32(-2147483648), -14511i));

var<private> global4: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    global0 = reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u));
    var var_0 = Struct_1(-arg_0, max(_wgslsmith_clamp_i32(~(-2147483647i), firstTrailingBit(arg_0), ~(~u_input.a)), -arg_0), !(!vec2<bool>(arg_1 > -2992f, select(true, false, false))), vec3<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false)) || !(u_input.c <= -2147483647i), (29020i <= ~arg_0) & any(vec2<bool>(true, true)), any(vec4<bool>(true, true, select(false, false, false), select(true, false, true)))), -(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-23476i, arg_0), vec2<i32>(18689i, 15001i))) >> (min(u_input.b.x ^ 9454u, u_input.b.x) % 32u)));
    var var_1 = -arg_0;
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(7939u, ~firstLeadingBit(4294967295u)) & (~global0.x & ~(~0u)), firstTrailingBit(~max(_wgslsmith_mod_u32(15743u, global0.x), u_input.b.x)));
    let var_3 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global3[_wgslsmith_index_u32(u_input.b.x, 21u)], global3[_wgslsmith_index_u32(21640u >> (0u % 32u), 21u)]), vec3<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i), 37980i, _wgslsmith_mult_i32(-1i, -60030i)))), var_0.e, vec2<bool>(var_0.d.x, all(!(!vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x)))), select(var_0.d, select(!(!vec3<bool>(var_0.d.x, var_0.c.x, true)), var_0.d, (u_input.a << (u_input.b.x % 32u)) <= _wgslsmith_sub_i32(25909i, 2147483647i)), vec3<bool>(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(94069u, 6u)], arg_1)) >= 1452f, !all(var_0.d), arg_1 > 2068f)), ~1i);
    return select(u_input.b.x, var_2.x, global0.x == abs(_wgslsmith_add_u32(u_input.b.x, u_input.b.x))) >> (23169u % 32u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global4 = func_3(-(i32(-1i) * -2147483647i), global2[_wgslsmith_index_u32(20487u ^ min(1u, ~global0.x), 6u)]) <= global0.x;
    var var_0 = vec4<f32>(global2[_wgslsmith_index_u32(select(~_wgslsmith_clamp_u32(~28396u, _wgslsmith_div_u32(0u, 4294967295u), func_3(u_input.c, 793f)), reverseBits(~1u) << (global0.x % 32u), true), 6u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(global0.x) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(global0.x, global0.x, global0.x, 36239u)) % 32u), 6u)] - global2[_wgslsmith_index_u32(~(~0u), 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(global0.x, 6u)])) - global2[_wgslsmith_index_u32(func_3(u_input.c, global2[_wgslsmith_index_u32(24549u, 6u)]), 6u)])))), 1000f);
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, 38924u, 67505u) >> (countOneBits(vec3<u32>(global0.x, 3928u, 12334u)) % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_u32(select(vec3<u32>(global0.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, global0.x), true), ~vec3<u32>(23108u, 1u, 5343u))), 0u, ~_wgslsmith_add_u32(4294967295u, ~4294967295u), ~(u_input.b.x >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(5743u, global0.x), vec2<u32>(1u, 59719u)), vec2<u32>(u_input.b.x, 50483u)) % 32u)));
    var var_2 = Struct_1(29250i, u_input.a, select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(var_1.x == 0u, true)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), vec2<bool>(true, all(vec4<bool>(true, true, false, false))), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(false, true, true))), true), !select(vec3<bool>(true, true, any(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(true, true, false, true)))), ~(-23229i));
    let var_3 = var_0.zw;
    return Struct_1(-1i, u_input.c, select(select(var_2.d.yz, vec2<bool>(true, true), !vec2<bool>(var_2.c.x, true)), var_2.c, false), var_2.d, _wgslsmith_sub_i32(firstTrailingBit(firstTrailingBit(select(var_2.e, arg_0, var_2.d.x))), 2147483647i));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = func_2(_wgslsmith_dot_vec4_i32(((vec4<i32>(u_input.c, -10166i, -21613i, -64177i) << (vec4<u32>(global0.x, 0u, 1u, global0.x) % vec4<u32>(32u))) << (vec4<u32>(u_input.b.x, 4294967295u, 12352u, 28036u) % vec4<u32>(32u))) << (vec4<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 1u, ~54749u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(~vec4<i32>(40925i, -2147483647i, u_input.a, -1i) & -vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), (vec4<i32>(u_input.a, u_input.a, 2147483647i, 2693i) | vec4<i32>(u_input.c, 11134i, u_input.a, u_input.a)) | vec4<i32>(u_input.a, 2147483647i, -1i, -2147483647i))));
    var var_1 = -select((global3[_wgslsmith_index_u32(~global0.x, 21u)] | global3[_wgslsmith_index_u32(~1u, 21u)]) & vec3<i32>(-2147483647i, -2147483647i, u_input.a), global3[_wgslsmith_index_u32(u_input.b.x, 21u)], false);
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~0u, max(global0.x, 14278u), ~1u), abs(33722u), ~(~u_input.b.x), u_input.b.x), vec4<u32>(54339u, global0.x, min(u_input.b.x, u_input.b.x) << (~u_input.b.x % 32u), ~1u)), min(select(~(~vec4<u32>(u_input.b.x, 0u, 4294967295u, 21063u)), vec4<u32>(global0.x, global0.x, u_input.b.x, 1u) >> (~vec4<u32>(2513u, global0.x, global0.x, global0.x) % vec4<u32>(32u)), true), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, 1u, 38249u), vec4<u32>(0u, 45530u, 79673u, u_input.b.x)), vec4<u32>(~1u, global0.x, global0.x >> (44529u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(23192u, 8983u), vec2<u32>(27252u, 86797u))))));
    var var_3 = abs(func_2(-12184i).b) | min(~u_input.c, u_input.a);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(min(-108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-934f))))), arg_0.x, _wgslsmith_f_op_f32(max(438f, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~u_input.b.x, 6u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(231f * 1019f))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x >> (95030u % 32u), var_2.x, _wgslsmith_mod_u32(var_2.x, global0.x)), 6u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(28293u, 6u)]) * arg_0.x))));
    return vec3<bool>(!((true | !arg_1.x) | false), u_input.b.x < _wgslsmith_dot_vec3_u32(countOneBits(var_2.zwx), _wgslsmith_mult_vec3_u32(max(var_2.wyx, var_2.wyw), ~var_2.xzz)), u_input.c < ((14604i << (global0.x % 32u)) >> (u_input.b.x % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~(~firstLeadingBit(arg_0.a ^ 0i)), -_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.e, u_input.a), ~(~arg_0.e)), vec2<bool>(true, true), arg_0.d, _wgslsmith_clamp_i32(~(~(-1i)), arg_0.e, -_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, u_input.c), ~(-26450i))));
    var var_1 = 1i;
    var var_2 = select(~u_input.b.x, func_3(-func_2(_wgslsmith_clamp_i32(arg_0.e, 1i, arg_0.e)).a, arg_1.x), (~4294967295u | global0.x) > 1u);
    var var_3 = min(abs(4294967295u), _wgslsmith_div_u32(1478u, _wgslsmith_mult_u32(1u, u_input.b.x & ~4294967295u)));
    global2 = array<f32, 6>();
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(0u, 6u)];
    let var_1 = -1000f;
    global1 = global0.x;
    var var_2 = Struct_1(_wgslsmith_add_i32(func_2(-u_input.a).e, i32(-1i) * -2147483647i), arg_3.a, vec2<bool>(arg_3.c.x, !arg_3.c.x), func_2(-27854i).d, firstTrailingBit(~arg_0.b | -1i) ^ ~arg_3.b);
    var var_3 = Struct_1(arg_3.a, reverseBits(arg_3.a), func_4(arg_3, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, -1000f, -1000f), vec3<f32>(global2[_wgslsmith_index_u32(1u, 6u)], 373f, var_1)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, 1404f, global2[_wgslsmith_index_u32(arg_2, 6u)]), vec3<f32>(var_1, -641f, var_1))))), vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_1.x), 6u)], _wgslsmith_f_op_f32(-218f + global2[_wgslsmith_index_u32(24764u, 6u)]), _wgslsmith_f_op_f32(300f * 1400f))), Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, arg_0.a, arg_3.b, arg_3.a), vec4<i32>(arg_0.a, arg_3.a, 2147483647i, u_input.a))), abs(-u_input.c), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 702f, 900f) - vec3<f32>(372f, global2[_wgslsmith_index_u32(10337u, 6u)], var_1)), func_1(vec3<f32>(global2[_wgslsmith_index_u32(global0.x, 6u)], global2[_wgslsmith_index_u32(global0.x, 6u)], var_1), arg_0.d.yx).yz).yz, arg_3.d, i32(-1i) * -arg_0.e), func_2(~(-28828i))).c, !var_2.d, func_4(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 785f, var_1) * vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(53596u, 6u)], 1384f))))), func_4(arg_3, vec3<f32>(global2[_wgslsmith_index_u32(37639u, 6u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(84986u, 6u)] + global2[_wgslsmith_index_u32(1u, 6u)]), 424f), func_4(func_2(-1i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, global2[_wgslsmith_index_u32(arg_2, 6u)], var_1))), arg_0, Struct_1(var_2.e, -2147483647i, var_2.d.yx, arg_3.d, -51866i)), Struct_1(u_input.c, -arg_3.e, func_1(vec3<f32>(-1076f, global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(42879u, 6u)]), vec2<bool>(arg_0.d.x, var_2.d.x)).zy, vec3<bool>(arg_0.d.x, true, arg_3.c.x), arg_3.a)), arg_0).a);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(Struct_1(u_input.a, _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(global0.x, 21u)], ~vec3<i32>(-9697i, u_input.a, 0i)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global0.x, 6u)], global2[_wgslsmith_index_u32(1u, 6u)], -1200f)), vec2<bool>(false, false)), ~u_input.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(23617u, 6u)], 1000f, -1454f)))), func_2(-1i), Struct_1(-u_input.a, u_input.a, vec2<bool>(true, false), vec3<bool>(true, 63574u >= u_input.b.x, true), countOneBits(u_input.a) ^ (u_input.c << (34286u % 32u)))), ~firstLeadingBit(vec4<u32>(global0.x, u_input.b.x, u_input.b.x, 0u) ^ select(vec4<u32>(4294967295u, global0.x, 31987u, u_input.b.x), vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x), vec4<bool>(false, false, false, true))), ~countOneBits(_wgslsmith_dot_vec2_u32(u_input.b, global0.zz) ^ firstTrailingBit(global0.x)), func_4(func_4(func_2(-u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-108f, global2[_wgslsmith_index_u32(global0.x, 6u)], -295f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1527f, global2[_wgslsmith_index_u32(global0.x, 6u)], global2[_wgslsmith_index_u32(64603u, 6u)])))), Struct_1(_wgslsmith_add_i32(2147483647i, u_input.a), _wgslsmith_div_i32(0i, u_input.c), vec2<bool>(true, true), func_4(Struct_1(u_input.c, 1i, vec2<bool>(true, true), vec3<bool>(true, false, true), -1i), vec3<f32>(120f, 2824f, 902f), Struct_1(-1i, 1i, vec2<bool>(true, false), vec3<bool>(true, true, true), -9282i), Struct_1(-41342i, u_input.c, vec2<bool>(true, true), vec3<bool>(false, true, true), u_input.a)).d, _wgslsmith_sub_i32(-58778i, u_input.a)), func_4(func_4(Struct_1(u_input.c, 12488i, vec2<bool>(false, true), vec3<bool>(true, false, false), -8447i), vec3<f32>(-678f, -1621f, 568f), Struct_1(u_input.c, 2147483647i, vec2<bool>(true, true), vec3<bool>(false, false, true), u_input.c), Struct_1(1i, u_input.a, vec2<bool>(false, false), vec3<bool>(true, true, true), 1i)), _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(112046u, 6u)], 2405f, global2[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<f32>(global2[_wgslsmith_index_u32(28499u, 6u)], 238f, 389f)), func_2(0i), func_4(Struct_1(0i, u_input.a, vec2<bool>(false, true), vec3<bool>(false, false, false), 2147483647i), vec3<f32>(797f, 1426f, -1870f), Struct_1(-2147483647i, u_input.c, vec2<bool>(true, false), vec3<bool>(false, true, true), -31256i), Struct_1(0i, u_input.a, vec2<bool>(true, true), vec3<bool>(true, false, true), 1i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(u_input.b.x, 6u)]))))) + vec3<f32>(271f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 6u)]), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global0.x, 6u)])))), func_4(Struct_1(func_2(-42773i).a, u_input.c, vec2<bool>(true, true), func_2(-62618i).d, ~u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(u_input.b.x, 6u)], 1560f)), Struct_1(u_input.a, 1i, vec2<bool>(true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), _wgslsmith_div_i32(u_input.a, -60411i)), Struct_1(~12605i, -1i, func_1(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], -484f, -651f), vec2<bool>(true, true)).yy, vec3<bool>(true, true, true), u_input.c)), Struct_1(u_input.a, 35213i, vec2<bool>(func_4(Struct_1(u_input.c, -2147483647i, vec2<bool>(true, false), vec3<bool>(true, false, false), u_input.a), vec3<f32>(-1000f, global2[_wgslsmith_index_u32(global0.x, 6u)], 578f), Struct_1(1i, u_input.c, vec2<bool>(false, false), vec3<bool>(true, true, false), -1i), Struct_1(48763i, -1i, vec2<bool>(false, false), vec3<bool>(true, false, false), -1i)).d.x, false), vec3<bool>(any(vec4<bool>(true, false, true, true)), false, any(vec2<bool>(true, false))), -2147483647i)));
    var var_1 = ~(~vec4<u32>(1u, global0.x, min(~0u, ~3303u), 0u));
    var_1 = vec4<u32>(112406u, ~global0.x, func_3(_wgslsmith_sub_i32(u_input.a, ~var_0.e), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(0u, 6u)], 1067f, true)), _wgslsmith_div_f32(1000f, -634f)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 42280u, 37249u, global0.x), select(vec4<u32>(78779u, global0.x, 0u, 39205u), vec4<u32>(4294967295u, var_1.x, 4294967295u, u_input.b.x), true)) >> (1u % 32u)) << (firstLeadingBit(~(vec4<u32>(1u, 18300u, 1u, 1u) << (min(vec4<u32>(28511u, var_1.x, u_input.b.x, 37902u), vec4<u32>(global0.x, 0u, 22577u, global0.x)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global3 = array<vec3<i32>, 21>();
    let var_2 = vec3<i32>(u_input.c, var_0.e, _wgslsmith_mult_i32(-2147483647i, reverseBits(func_5(func_4(Struct_1(0i, 2147483647i, var_0.d.yx, vec3<bool>(false, false, var_0.c.x), 6514i), vec3<f32>(global2[_wgslsmith_index_u32(var_1.x, 6u)], global2[_wgslsmith_index_u32(global0.x, 6u)], -896f), Struct_1(39389i, u_input.c, vec2<bool>(false, var_0.c.x), vec3<bool>(var_0.c.x, false, false), u_input.a), var_0), abs(vec4<u32>(0u, var_1.x, 0u, var_1.x)), 24346u >> (0u % 32u), Struct_1(-13202i, -1i, var_0.c, vec3<bool>(var_0.d.x, var_0.d.x, true), -14289i)).a)));
    var var_3 = !func_4(Struct_1(-1i, min(-2147483647i, var_2.x), func_5(var_0, select(vec4<u32>(var_1.x, 1u, var_1.x, global0.x), vec4<u32>(u_input.b.x, var_1.x, 0u, 6938u), vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x)), 1u, Struct_1(var_2.x, var_2.x, vec2<bool>(var_0.c.x, false), vec3<bool>(var_0.d.x, false, true), 29425i)).c, var_0.d, ~select(1i, 12305i, var_0.d.x)), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_f_op_f32(-2053f - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(113917u, 6u)] * global2[_wgslsmith_index_u32(global0.x, 6u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(867f * -435f) + _wgslsmith_f_op_f32(155f - -1767f))), Struct_1(~u_input.a, -_wgslsmith_clamp_i32(-7785i, 1i, 33449i), func_4(func_2(var_0.e), vec3<f32>(global2[_wgslsmith_index_u32(25579u, 6u)], 120f, global2[_wgslsmith_index_u32(u_input.b.x, 6u)]), var_0, func_4(var_0, vec3<f32>(global2[_wgslsmith_index_u32(7964u, 6u)], -648f, 2155f), var_0, Struct_1(u_input.c, -33154i, var_0.c, var_0.d, var_2.x))).d.xx, var_0.d, var_2.x), func_2(-1i)).d;
    global1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(1004f, -274f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2[_wgslsmith_index_u32(global0.x, 6u)], -1814f, -116f) * vec4<f32>(2233f, -131f, global2[_wgslsmith_index_u32(0u, 6u)], -1000f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 6u)], -167f, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], -872f) - vec4<f32>(1635f, 405f, -1211f, -137f))))), select(vec4<bool>(var_3.x, false | var_0.d.x, any(vec4<bool>(true, var_0.c.x, var_3.x, var_0.d.x)), true), vec4<bool>(true != var_3.x, 2147483647i >= u_input.c, func_5(var_0, vec4<u32>(u_input.b.x, var_1.x, u_input.b.x, 4294967295u), global0.x, var_0).c.x, var_0.d.x), select(!vec4<bool>(false, false, var_3.x, var_0.d.x), vec4<bool>(true, true, true, true), !vec4<bool>(false, var_3.x, true, var_3.x))))));
}

