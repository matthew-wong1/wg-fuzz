struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec4<u32>(19560u, 46564u, 59643u, 5413u), 1u, vec4<u32>(1256u, 4294967295u, 3469u, 11920u));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec4<u32>(1u, 110821u, 1u, 1u), 19907u, vec4<u32>(0u, 107973u, 34336u, 18617u));

var<private> global3: array<vec2<u32>, 8>;

var<private> global4: array<bool, 9>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global3 = array<vec2<u32>, 8>();
    return _wgslsmith_div_vec4_u32(vec4<u32>(22223u, max(arg_0.b.x & 4294967295u, 4294967295u) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(51089u, arg_0.c), vec2<u32>(16229u, u_input.c)) % 32u), abs(_wgslsmith_sub_u32(global2.d.x, 59693u) | ~4294967295u), _wgslsmith_clamp_u32(~countOneBits(global1.d.x), u_input.c, 71269u)), ~select(select(vec4<u32>(global2.d.x, 1u, 1930u, arg_1.c) >> (vec4<u32>(1u, global2.d.x, arg_1.c, global0[_wgslsmith_index_u32(4294967295u, 21u)]) % vec4<u32>(32u)), max(arg_0.d, global1.b), u_input.b >= arg_0.d.x), max(vec4<u32>(45388u, arg_0.d.x, 1u, 30863u), vec4<u32>(16708u, u_input.b, arg_0.c, global2.b.x)), arg_0.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = Struct_1(vec3<bool>(arg_0.a.x, all(arg_0.a.xy), !(~u_input.e.x >= (i32(-1i) * -2147483647i))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(select(~vec4<u32>(0u, arg_0.d.x, 12752u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 33231u, global1.c, 0u), vec4<bool>(arg_0.a.x, global1.a.x, false, false)), arg_0.d), global2.b), ~45104u, abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(global1.b, abs(global2.b)), arg_0.d, global2.b)));
    global4 = array<bool, 9>();
    var var_1 = true;
    let var_2 = false;
    var var_3 = var_0;
    return 94098u;
}

fn func_5(arg_0: u32) -> vec4<u32> {
    var var_0 = Struct_1(vec3<bool>(true, any(vec2<bool>(!global4[_wgslsmith_index_u32(58227u, 9u)], true)), !(!(global2.a.x & global1.a.x))), ~(global2.d << (vec4<u32>(_wgslsmith_add_u32(global2.c, 58448u), _wgslsmith_clamp_u32(60488u, global1.d.x, 7249u), 3967u, min(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 21u)])) % vec4<u32>(32u))), ~1u, vec4<u32>(11480u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1.b.x, 21u)], ~global1.d.x, 1u, _wgslsmith_mult_u32(26105u, u_input.c)), select(global1.b, ~vec4<u32>(global1.b.x, arg_0, 2172u, arg_0), all(global2.a))), max(~arg_0 << ((u_input.b << (global0[_wgslsmith_index_u32(arg_0, 21u)] % 32u)) % 32u), 2863u << (global2.d.x % 32u)), countOneBits(~66947u)));
    var var_1 = ~(~func_3(Struct_1(global1.a, global2.d, 1u, vec4<u32>(4294967295u, 4294967295u, global1.c, 1u)), Struct_1(vec3<bool>(global2.a.x, true, false), var_0.b, global1.d.x, var_0.b)).x) < ~(~(countOneBits(61639u) ^ (global1.d.x | var_0.b.x)));
    let var_2 = Struct_1(!select(vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.b.x, global2.c), 9u)], any(vec2<bool>(true, var_0.a.x)), false), vec3<bool>(false, true, !global1.a.x), select(select(vec3<bool>(global2.a.x, global2.a.x, false), global1.a, global1.a), select(vec3<bool>(global2.a.x, true, false), vec3<bool>(false, false, var_0.a.x), vec3<bool>(global4[_wgslsmith_index_u32(18653u, 9u)], true, var_0.a.x)), all(vec2<bool>(var_0.a.x, true)))), vec4<u32>(global2.d.x, abs(1u), var_0.c, _wgslsmith_mult_u32(~(~global2.b.x), ~35632u)), min(~(~_wgslsmith_mod_u32(u_input.b, 4294967295u)), reverseBits(arg_0) >> (var_0.b.x % 32u)), _wgslsmith_add_vec4_u32(vec4<u32>(~abs(1u), global2.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_0.d.yzz, var_0.d.xyy), ~vec3<u32>(48170u, 4294967295u, 4294967295u)), 0u), _wgslsmith_sub_vec4_u32(~(~global1.b), global1.d)));
    let var_3 = _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(min(global1.b, select(vec4<u32>(var_0.d.x, arg_0, arg_0, 1u), vec4<u32>(4294967295u, global2.d.x, 1u, 4294967295u), vec4<bool>(global1.a.x, true, global2.a.x, true))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c, arg_0, 1u, global0[_wgslsmith_index_u32(1u, 21u)]), vec4<u32>(global2.b.x, var_0.b.x, global1.b.x, 99011u), var_0.d))), vec4<u32>(arg_0, _wgslsmith_mult_u32(max(1u, 1u), global1.b.x), abs(func_3(var_2, var_2).x), 8674u));
    let var_4 = var_2;
    return ~var_4.d;
}

fn func_2(arg_0: i32) -> u32 {
    global2 = Struct_1(vec3<bool>(any(select(vec2<bool>(false, global4[_wgslsmith_index_u32(global2.c, 9u)]), global1.a.yx, vec2<bool>(global4[_wgslsmith_index_u32(global2.c, 9u)], false))), global2.a.x, !global1.a.x), global2.d, ~(~27686u), firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.c, 4294967295u, 18972u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 21u)], 21u)]), vec4<u32>(global2.b.x, 54858u, 42484u, global0[_wgslsmith_index_u32(u_input.b, 21u)])), ~vec4<u32>(5670u, u_input.b, global0[_wgslsmith_index_u32(global1.d.x, 21u)], 541u))));
    global4 = array<bool, 9>();
    var var_0 = reverseBits(func_5(func_4(Struct_1(!global1.a, reverseBits(vec4<u32>(global2.d.x, global0[_wgslsmith_index_u32(1u, 21u)], u_input.c, 416u)), 55292u, func_3(Struct_1(vec3<bool>(true, true, true), vec4<u32>(50589u, global0[_wgslsmith_index_u32(u_input.b, 21u)], u_input.b, global0[_wgslsmith_index_u32(4294967295u, 21u)]), global2.b.x, vec4<u32>(59422u, 16858u, u_input.c, global1.b.x)), Struct_1(global2.a, global2.b, 0u, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b, 21u)], 0u, global2.c)))), abs(arg_0) & -u_input.a)));
    global1 = Struct_1(global1.a, ~(~global1.b), 1u, vec4<u32>(var_0.x << (_wgslsmith_div_u32(~33941u, _wgslsmith_clamp_u32(var_0.x, 45730u, u_input.c)) % 32u), _wgslsmith_clamp_u32(~(~global1.c), _wgslsmith_dot_vec4_u32(global1.d, ~vec4<u32>(7449u, 29149u, 22320u, 1u)), ~0u), 1u, 1u));
    global1 = Struct_1(global2.a, global2.b, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~(~4294967295u), 23818u), 21u)], global1.b);
    return max(var_0.x, firstTrailingBit(var_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_add_i32(-92151i, ~(~arg_1.x)) << (firstLeadingBit(func_2(-u_input.d.x)) % 32u);
    global1 = Struct_1(!vec3<bool>(true, true, arg_3.x), _wgslsmith_mod_vec4_u32(vec4<u32>(17387u, 59371u, func_5(global2.c | arg_0.d.x).x, 6723u), ~(~(vec4<u32>(25908u, 0u, global2.d.x, global1.b.x) ^ global1.d))), _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(1u, 21u)], func_3(arg_0, arg_0).x), global1.b << (vec4<u32>(~u_input.c, ~5661u, _wgslsmith_dot_vec2_u32(global2.b.zy, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.c, 21u)], 8u)]), ~(~0u)) % vec4<u32>(32u)));
    global0 = array<u32, 21>();
    var_0 = u_input.e.x;
    let var_1 = Struct_1(select(vec3<bool>(abs(-2147483647i) <= arg_1.x, false, global2.a.x), !(!arg_2), global1.a), ~vec4<u32>(func_5(~global2.c).x, 20648u, countOneBits(arg_0.c), ~0u), func_3(Struct_1(select(vec3<bool>(arg_0.a.x, true, false), select(global2.a, arg_3.zzz, global2.a), select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 9u)], true, arg_0.a.x), vec3<bool>(true, arg_2.x, false), arg_3.x)), ~arg_0.d, ~(~global0[_wgslsmith_index_u32(arg_0.b.x, 21u)]), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, arg_0.c, global1.b.x, 1u), global1.d)), Struct_1(arg_0.a, (vec4<u32>(57285u, u_input.b, 17174u, 4294967295u) ^ vec4<u32>(global0[_wgslsmith_index_u32(arg_0.d.x, 21u)], arg_0.d.x, global0[_wgslsmith_index_u32(arg_0.d.x, 21u)], arg_0.b.x)) << (select(vec4<u32>(u_input.b, 4294967295u, arg_0.d.x, 4294967295u), arg_0.b, global1.a.x) % vec4<u32>(32u)), global1.b.x << (5143u % 32u), global2.b)).x, ~(~_wgslsmith_sub_vec4_u32(global2.b ^ vec4<u32>(25021u, 24807u, 89516u, u_input.b), global2.d)));
    return ~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_0.b, global1.b), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (i32(-1i) * -1i) << (0u % 32u);
    global4 = array<bool, 9>();
    let var_1 = select(global0[_wgslsmith_index_u32(global2.d.x, 21u)], ~(~func_1(Struct_1(global1.a, vec4<u32>(global0[_wgslsmith_index_u32(12022u, 21u)], global1.d.x, global2.c, global2.b.x), global1.c, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.c, 21u)], 21u)], 52166u, 4294967295u, 4757u)), vec4<i32>(var_0, var_0, -1i, 2147483647i), vec3<bool>(true, global2.a.x, true), vec4<bool>(global4[_wgslsmith_index_u32(0u, 9u)], true, global4[_wgslsmith_index_u32(0u, 9u)], global2.a.x)) ^ ~(~2037u)), !global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(~1u, 21u)] & (u_input.c >> (global2.c % 32u))), 21u)], 9u)]);
    let var_2 = Struct_1(global1.a, func_3(Struct_1(global2.a, global1.d << (vec4<u32>(global2.d.x, 22639u, 31866u, u_input.c) % vec4<u32>(32u)), _wgslsmith_div_u32(func_1(Struct_1(global2.a, vec4<u32>(var_1, var_1, 4294967295u, 0u), 4294967295u, global2.d), vec4<i32>(u_input.a, u_input.e.x, -2147483647i, var_0), vec3<bool>(false, global1.a.x, global1.a.x), vec4<bool>(false, global1.a.x, true, global1.a.x)), ~global1.c), global2.d), Struct_1(!global1.a, vec4<u32>(func_1(Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global2.d, 41131u, global1.d), vec4<i32>(u_input.e.x, var_0, 15061i, 49730i), vec3<bool>(true, false, true), vec4<bool>(false, false, true, global1.a.x)), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global1.d.x, 21u)], 0u), var_1, _wgslsmith_add_u32(34463u, 25079u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(var_1, global1.b.x), abs(4294967295u)), ~(~global2.b))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.c), _wgslsmith_add_vec2_u32(global1.b.zz, vec2<u32>(global1.d.x, 1u))) | abs(_wgslsmith_sub_vec2_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(42476u, 8u)])), ~global3[_wgslsmith_index_u32(~0u, 8u)]), _wgslsmith_sub_vec4_u32(global1.b, ~global1.d));
    let var_3 = ~vec2<i32>(_wgslsmith_add_i32(-u_input.a, u_input.a), select(1i ^ _wgslsmith_clamp_i32(-2147483647i, -14231i, -41107i), 0i, false || global1.a.x));
    let var_4 = ~2147483647i;
    let var_5 = u_input.d;
    var var_6 = firstTrailingBit(var_5);
    let var_7 = -835f;
    let x = u_input.a;
    s_output = StorageBuffer(19716u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_7, -2537f, 459f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_7, 187f, var_7))))))), 1u | (_wgslsmith_div_u32(0u, 9806u) & max(4294967295u ^ global1.d.x, ~global1.d.x)), var_5.x);
}

