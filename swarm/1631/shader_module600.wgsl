struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(1u, 0u, 21714u), vec3<u32>(103567u, 18936u, 4294967295u), vec3<u32>(1u, 23663u, 3408u), vec3<u32>(0u, 57824u, 86493u), vec3<u32>(4294967295u, 55816u, 0u), vec3<u32>(4294967295u, 56784u, 4294967295u), vec3<u32>(27045u, 13655u, 27731u), vec3<u32>(4294967295u, 0u, 72948u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(26128u, 4294967295u, 4294967295u), vec3<u32>(11624u, 55004u, 33239u), vec3<u32>(46510u, 8901u, 48210u), vec3<u32>(18405u, 359u, 4294967295u), vec3<u32>(55092u, 28907u, 18867u), vec3<u32>(4294967295u, 74112u, 56623u), vec3<u32>(43064u, 12125u, 25780u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 61926u, 43309u), vec3<u32>(17625u, 0u, 1u), vec3<u32>(4294967295u, 20979u, 4294967295u));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<u32>(0u, 4294967295u, 66969u), vec4<i32>(9522i, -1i, 0i, 18302i), 4294967295u);

var<private> global2: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(6711i, -60727i, 1i), vec3<i32>(-1i, 70614i, 0i), vec3<i32>(-9594i, 1i, 14878i), vec3<i32>(11103i, 25941i, 22778i), vec3<i32>(19642i, 2147483647i, -1i), vec3<i32>(-1i, -1i, -3805i), vec3<i32>(i32(-2147483648), -8053i, -7306i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(17747i, 0i, -30990i), vec3<i32>(-1i, 0i, 2634i), vec3<i32>(-36709i, 12633i, 0i), vec3<i32>(0i, i32(-2147483648), -9303i), vec3<i32>(i32(-2147483648), -23002i, 0i), vec3<i32>(2147483647i, 2147483647i, 46369i), vec3<i32>(2147483647i, i32(-2147483648), -52522i), vec3<i32>(0i, -41631i, -38268i), vec3<i32>(8585i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, 26789i), vec3<i32>(53780i, -22267i, 0i));

var<private> global3: array<Struct_1, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    global2 = array<vec3<i32>, 19>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-648f, _wgslsmith_div_f32(609f, 1040f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1000f, -469f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1989f), -366f, true))))));
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 25u)];
    var var_2 = -_wgslsmith_dot_vec4_i32(~select(arg_1.c ^ vec4<i32>(u_input.b, -32792i, arg_1.a.x, u_input.b), ~arg_1.c, select(vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(true, false, false, arg_0.x), false)), select(abs(~vec4<i32>(var_1.a.x, global1.c.x, 2147483647i, -1206i)), arg_1.c, true));
    global1 = arg_1;
    return u_input.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: u32) -> i32 {
    var var_0 = vec2<bool>(u_input.c <= 26484u, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(869f * -636f), -940f, _wgslsmith_div_f32(1671f, -863f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(939f, -1520f, -324f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(766f)), _wgslsmith_f_op_f32(-2039f + 2185f))), _wgslsmith_f_op_f32(sign(-1283f)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(458f, -1000f, true)), _wgslsmith_f_op_f32(abs(-2055f))), any(!vec2<bool>(true, var_0.x))))));
    let var_2 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.yx, reverseBits(global1.a << (global1.b.xx % vec2<u32>(32u)))), firstLeadingBit(arg_1.ww)), arg_0.zxw, global1.c, 137312u);
    var var_3 = var_1.x;
    global2 = array<vec3<i32>, 19>();
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~var_2.c, firstLeadingBit(reverseBits(_wgslsmith_sub_vec4_i32(var_2.c, vec4<i32>(0i, arg_1.x, arg_1.x, 24330i))))), 2147483647i);
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    global1 = global3[_wgslsmith_index_u32(0u, 25u)];
    let var_0 = global3[_wgslsmith_index_u32(global1.b.x, 25u)];
    global2 = array<vec3<i32>, 19>();
    var var_1 = 57547i;
    let var_2 = select(func_4(vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, u_input.c), countOneBits(var_0.b.zz)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b.x, 17270u, 48981u), ~global1.b), ~(~global1.d)), (vec4<i32>(global1.c.x, -1i, global1.a.x, u_input.b) >> ((vec4<u32>(global1.d, 10499u, u_input.c, 456u) ^ vec4<u32>(34135u, 0u, 0u, 21072u)) % vec4<u32>(32u))) ^ -abs(var_0.c), _wgslsmith_mult_u32(~func_3(vec3<bool>(true, false, false), global3[_wgslsmith_index_u32(global1.d, 25u)], Struct_1(global1.a, var_0.b, vec4<i32>(41503i, global1.a.x, arg_0.x, -53600i), var_0.d), true), max(0u, global1.d) >> (abs(29507u) % 32u))), var_0.c.x, all(vec2<bool>(true, true)) && all(vec3<bool>(true, true, true)));
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0 | vec4<i32>(-arg_0.x, 1i, var_2, _wgslsmith_dot_vec3_i32(global1.c.zxx, vec3<i32>(u_input.a, 239i, global1.c.x))), arg_0), global1.c, ~vec4<i32>(var_2, func_4(vec4<u32>(1u, global1.b.x, var_0.b.x, 42956u) & vec4<u32>(u_input.c, 52072u, var_0.d, 8774u), vec4<i32>(global1.c.x, u_input.a, var_2, var_0.c.x), var_0.b.x), select(global1.c.x, -1i, true), 2147483647i >> (reverseBits(u_input.c) % 32u)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_1 {
    global1 = Struct_1(vec2<i32>(-48667i, (~(-1i) << (abs(global1.d) % 32u)) | -62371i), vec3<u32>(_wgslsmith_clamp_u32(~abs(22049u), ~181u, ~reverseBits(40946u)), 1u, global1.b.x), arg_0, global1.d);
    var var_0 = global3[_wgslsmith_index_u32(~abs(~_wgslsmith_mult_u32(global1.d, global1.b.x << (u_input.c % 32u))), 25u)];
    var var_1 = global3[_wgslsmith_index_u32(~(~35671u), 25u)];
    global3 = array<Struct_1, 25>();
    let var_2 = arg_1.x;
    return Struct_1(~(_wgslsmith_mult_vec2_i32(-arg_0.xw, var_0.a) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.d, u_input.c), ~var_1.b.zx) % vec2<u32>(32u))), vec3<u32>(1u, _wgslsmith_add_u32(39802u << (_wgslsmith_mult_u32(global1.d, 1u) % 32u), (u_input.c ^ var_1.b.x) >> (~74334u % 32u)), ~u_input.c), vec4<i32>(2147483647i, ~func_2(vec4<i32>(var_0.c.x, 5146i, u_input.a, 64221i)).x, -1i, -40187i), 4294967295u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(229f, 561f))))) * -319f);
    let var_1 = func_5(abs(func_2(~arg_0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-327f, var_0, 771f)) + vec3<f32>(var_0, -3114f, 226f)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, var_0)))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(411f, var_0, 1475f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, 737f, 377f))))))));
    let var_2 = Struct_1(var_1.c.wy, ~max(func_5(vec4<i32>(u_input.b, 10948i, -2147483647i, 1i), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(415f, var_0, 1597f)))).b, ~vec3<u32>(1u, 14452u, u_input.c)), abs(arg_1.c), _wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(~u_input.c, arg_1.d)), ~(~countOneBits(9766u))));
    let var_3 = arg_1;
    global1 = global3[_wgslsmith_index_u32(abs(~(~global1.d)) ^ arg_0.d, 25u)];
    return -countOneBits(max(-39360i, ~1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(486f, 359f, 216f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1207f, 467f), _wgslsmith_f_op_f32(f32(-1f) * -876f), _wgslsmith_f_op_f32(ceil(1672f))))));
    var var_1 = ~func_1(global3[_wgslsmith_index_u32(u_input.c, 25u)], global3[_wgslsmith_index_u32(reverseBits(47327u), 25u)]);
    global0 = array<vec3<u32>, 21>();
    let var_2 = all(vec2<bool>(any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, true), true)), true));
    var var_3 = -(-func_2(global1.c | vec4<i32>(global1.a.x, 1i, global1.c.x, u_input.a)) ^ ~_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(global1.c.x, 2147483647i, -20153i, u_input.b)), ~global1.c, ~vec4<i32>(global1.a.x, 2147483647i, global1.c.x, u_input.b)));
    var var_4 = Struct_1(var_3.xy, abs(abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d, u_input.c, global1.d, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 0u)), 1u, countOneBits(1u)))), -select(_wgslsmith_mod_vec4_i32(~global1.c, firstTrailingBit(vec4<i32>(-2147483647i, global1.c.x, 1i, global1.a.x))), -vec4<i32>(var_3.x, var_3.x, 1i, 0i), !(!vec4<bool>(false, true, var_2, var_2))), u_input.c);
    let var_5 = vec4<bool>(select(any(vec3<bool>(var_2, true, true)), var_2, any(!vec4<bool>(var_2, false, var_2, var_2))) | true, true, true, select(true, !any(!vec4<bool>(true, false, var_2, true)), var_2));
    let var_6 = _wgslsmith_f_op_f32(max(-102f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x) - _wgslsmith_div_f32(var_0.x, var_0.x)), any(!var_5.zz) | (_wgslsmith_mult_i32(u_input.b, 14081i) == u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.c);
}

