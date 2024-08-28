struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(0i, 19543i, 16936i), vec3<bool>(false, true, true), 2147483647i);

var<private> global1: array<u32, 21> = array<u32, 21>(49014u, 8045u, 15669u, 0u, 0u, 4366u, 97830u, 31140u, 94342u, 13249u, 0u, 5224u, 4294967295u, 26450u, 38631u, 1u, 0u, 0u, 66692u, 5020u, 0u);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(38558i, i32(-2147483648), -1i), vec3<bool>(false, false, true), -58898i);

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<i32>(1i, -202i, 0i), vec3<bool>(true, false, true), -4559i), Struct_1(vec3<i32>(-1i, -3494i, 8651i), vec3<bool>(true, true, true), 0i), Struct_1(vec3<i32>(21717i, 0i, -957i), vec3<bool>(false, false, true), -1i), Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<bool>(true, true, true), 0i), Struct_1(vec3<i32>(-28349i, 0i, -10470i), vec3<bool>(true, true, false), 0i), Struct_1(vec3<i32>(-58109i, 2147483647i, 76367i), vec3<bool>(true, true, false), 1i), Struct_1(vec3<i32>(-1i, -29823i, 3337i), vec3<bool>(false, false, true), -45177i), Struct_1(vec3<i32>(0i, 7303i, -9317i), vec3<bool>(true, true, false), -345i), Struct_1(vec3<i32>(79316i, -43981i, 0i), vec3<bool>(false, true, false), 45824i), Struct_1(vec3<i32>(1i, -16083i, 13999i), vec3<bool>(true, true, true), 31377i), Struct_1(vec3<i32>(1i, 2147483647i, 25541i), vec3<bool>(true, false, false), -36699i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<bool>(false, false, true), -15450i), Struct_1(vec3<i32>(-1i, 1i, -1i), vec3<bool>(true, true, false), 0i), Struct_1(vec3<i32>(1i, 1255i, 23665i), vec3<bool>(true, false, true), -1i), Struct_1(vec3<i32>(3988i, 23196i, 2147483647i), vec3<bool>(true, true, true), 0i), Struct_1(vec3<i32>(i32(-2147483648), -21564i, -20827i), vec3<bool>(false, false, true), 2147483647i), Struct_1(vec3<i32>(169i, -41958i, 4082i), vec3<bool>(true, true, false), -37542i), Struct_1(vec3<i32>(27643i, -29610i, 14781i), vec3<bool>(false, true, true), -2517i), Struct_1(vec3<i32>(2147483647i, 2147483647i, 33983i), vec3<bool>(false, true, false), 2147483647i), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<bool>(true, true, true), 0i), Struct_1(vec3<i32>(i32(-2147483648), -40902i, -26120i), vec3<bool>(true, false, true), i32(-2147483648)), Struct_1(vec3<i32>(0i, -12672i, 1i), vec3<bool>(true, true, false), -22887i), Struct_1(vec3<i32>(-19501i, 1i, -31502i), vec3<bool>(false, true, true), 3738i), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<bool>(false, false, true), 2147483647i), Struct_1(vec3<i32>(54748i, -24305i, -31979i), vec3<bool>(false, false, false), -1i), Struct_1(vec3<i32>(-25141i, -73803i, i32(-2147483648)), vec3<bool>(false, false, false), 12088i), Struct_1(vec3<i32>(1i, -1i, 1i), vec3<bool>(true, false, true), 39029i), Struct_1(vec3<i32>(-26509i, 5509i, 2147483647i), vec3<bool>(true, true, true), i32(-2147483648)), Struct_1(vec3<i32>(2147483647i, 18067i, 0i), vec3<bool>(false, true, true), 4204i));

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = arg_3;
    global1 = array<u32, 21>();
    global0 = Struct_1(vec3<i32>(~abs(firstLeadingBit(arg_3.a.x)), select(_wgslsmith_clamp_i32(~u_input.e, arg_2.c | -2147483647i, _wgslsmith_dot_vec2_i32(arg_2.a.xx, global0.a.xz)), firstLeadingBit(12324i), (arg_3.b.x | true) & !global0.b.x), ~abs(561i)), vec3<bool>(global0.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global0.c, u_input.e, u_input.e), vec4<i32>(-8691i, arg_2.a.x, 1007i, global2.c), vec4<i32>(37698i, arg_3.a.x, u_input.e, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, -1i, 0i, 19582i), vec4<i32>(arg_0, arg_0, 41330i, -24510i))) < abs(_wgslsmith_sub_i32(0i, global0.a.x)), true), countOneBits(~25137i));
    global1 = array<u32, 21>();
    return arg_3.c;
}

fn func_2() -> i32 {
    var var_0 = !select(!select(select(vec4<bool>(true, global2.b.x, global0.b.x, false), vec4<bool>(false, global0.b.x, false, global0.b.x), true), select(vec4<bool>(global2.b.x, global2.b.x, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, true, true, global0.b.x), vec4<bool>(true, global0.b.x, false, global0.b.x)), true), !vec4<bool>(any(vec4<bool>(true, false, global2.b.x, false)), global0.b.x, any(global0.b), global0.b.x), !vec4<bool>(true, all(vec3<bool>(false, global0.b.x, global0.b.x)), global0.b.x, global0.b.x));
    let var_1 = global4[_wgslsmith_index_u32(select(u_input.d, ~(~(67899u >> (u_input.d % 32u))) ^ ~(~select(u_input.c.x, 4294967295u, global0.b.x)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-699f)) + _wgslsmith_f_op_f32(trunc(-1101f))) <= _wgslsmith_f_op_f32(-477f - _wgslsmith_f_op_f32(select(-1000f, 205f, false))))), 19u)];
    var var_2 = u_input.e;
    global2 = global4[_wgslsmith_index_u32(u_input.d, 19u)];
    global0 = Struct_1(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.e, global0.c, -7556i) ^ countOneBits(vec3<i32>(8163i, global2.a.x, global0.c)), global0.a) & abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -61024i, -1i) ^ global0.a, max(vec3<i32>(global0.c, 12134i, global0.c), global2.a), global0.a)), !global0.b, func_3(-69916i, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, _wgslsmith_add_vec2_u32(u_input.b, u_input.c.xz)), 21u)], _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b.x, 20991u, 8400u), global1[_wgslsmith_index_u32(20537u, 21u)]), ~_wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.yy)), global4[_wgslsmith_index_u32(4294967295u, 19u)], Struct_1(var_1.a, vec3<bool>(false, any(vec4<bool>(true, var_0.x, global2.b.x, false)), true), 40450i)));
    return max(global2.c, func_3(_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(global0.a, vec3<i32>(global2.a.x, -1i, global2.c)), _wgslsmith_mod_i32(2147483647i, 2120i)), _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_mult_u32(31210u, u_input.d), ~abs(0u)), global3[_wgslsmith_index_u32(u_input.c.x, 29u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.a.yx), 29u)]));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(-_wgslsmith_clamp_vec3_i32(abs(global2.a), global0.a, vec3<i32>(_wgslsmith_div_i32(global0.c, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(6893i, global2.a.x), vec2<i32>(arg_1.a.x, u_input.e)), -23327i)), arg_1.b, firstLeadingBit(global0.a.x));
    global0 = Struct_1(vec3<i32>(~(-2147483647i), 2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.c, arg_1.c, 2147483647i, u_input.e), vec4<i32>(global2.c, -11385i, 1i, -17448i)) & _wgslsmith_div_vec4_i32(vec4<i32>(12038i, u_input.e, global2.a.x, global0.c), vec4<i32>(var_0.c, u_input.e, -2147483647i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.x, 38375i, global0.a.x, 1i), vec4<i32>(u_input.e, arg_1.a.x, -1i, global2.c)) << ((vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], 4294967295u, 30859u) >> (vec4<u32>(4382u, 14934u, arg_3, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)))), arg_1.b, func_2());
    var var_1 = global3[_wgslsmith_index_u32(5768u, 29u)];
    var var_2 = Struct_1(max(max(var_1.a, vec3<i32>(_wgslsmith_div_i32(global2.c, 1i), countOneBits(global2.a.x), u_input.e)), var_0.a), vec3<bool>(false, var_0.b.x, var_1.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.e, ~_wgslsmith_mult_i32(var_1.c, 0i)), reverseBits(-vec2<i32>(-9176i, -1i))));
    var var_3 = u_input.c.yz;
    return Struct_1(firstTrailingBit(reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.c, 0i, 1i), vec4<i32>(2147483647i, 4259i, -9336i, var_0.a.x)), 0i, -8144i))), select(vec3<bool>(arg_2.x, false, var_1.b.x), select(select(!vec3<bool>(true, true, arg_1.b.x), !var_1.b, var_0.b.x), vec3<bool>(true, true, true), true), select(!select(vec3<bool>(false, var_1.b.x, global0.b.x), vec3<bool>(global2.b.x, var_0.b.x, true), vec3<bool>(arg_1.b.x, var_0.b.x, true)), global0.b, !arg_1.b.x & !arg_1.b.x)), u_input.e | var_1.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(993f - -576f), 1000f, global0.b.x)), _wgslsmith_f_op_f32(max(-724f, _wgslsmith_f_op_f32(227f * -795f))))), _wgslsmith_f_op_f32(f32(-1f) * -907f)));
    var var_1 = -1000f;
    global2 = Struct_1(abs(-arg_0.a), global0.b, _wgslsmith_mult_i32(0i, global0.c));
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.c, _wgslsmith_sub_i32(min(u_input.e, 1i), global0.c), global2.a.x & func_1(526f, Struct_1(vec3<i32>(u_input.e, 57600i, -26477i), arg_0.b, -2147483647i), vec4<bool>(true, false, global0.b.x, true), 1u).a.x, func_2()), ~select(-vec4<i32>(10320i, global2.a.x, u_input.e, -34845i), vec4<i32>(2147483647i, global2.a.x, -1690i, -2147483647i) << (vec4<u32>(139582u, 80145u, 5549u, 13485u) % vec4<u32>(32u)), func_1(1032f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(126561u, 21u)], 29u)], vec4<bool>(true, arg_0.b.x, false, true), 4294967295u).b.x)), select(firstTrailingBit(max(vec4<i32>(6155i, -33498i, 6269i, 1i), countOneBits(vec4<i32>(2147483647i, global0.c, global2.a.x, global2.c)))), ~(vec4<i32>(2147483647i, 13574i, -1i, arg_0.a.x) << (vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 15457u, 10868u, u_input.c.x) % vec4<u32>(32u))) & select(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.e, 17682i, u_input.e), vec4<i32>(24505i, 9839i, arg_0.a.x, -18286i), vec4<i32>(-1i, -52790i, 0i, u_input.e)), firstTrailingBit(vec4<i32>(u_input.e, 19432i, 20083i, global2.c)), !vec4<bool>(arg_0.b.x, true, true, arg_1.x)), !all(vec3<bool>(false, global2.b.x, global0.b.x))));
    var var_3 = _wgslsmith_f_op_f32(trunc(280f));
    return 12353i;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = abs(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-449f)), -1000f)), 455f, !arg_2.b.x)), func_1(_wgslsmith_f_op_f32(-235f - _wgslsmith_div_f32(1291f, -1502f)), func_1(_wgslsmith_f_op_f32(531f + -1113f), func_1(144f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58422u, 21u)], 21u)], 29u)], vec4<bool>(arg_3.b.x, true, arg_2.b.x, arg_0.b.x), global1[_wgslsmith_index_u32(26145u, 21u)]), select(vec4<bool>(global2.b.x, global2.b.x, global2.b.x, global0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, global0.b.x), true), 8216u), select(!vec4<bool>(global2.b.x, global0.b.x, arg_0.b.x, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, global2.b.x, true), arg_0.b.x), !vec4<bool>(true, global2.b.x, arg_0.b.x, true)), u_input.b.x), select(select(vec4<bool>(false, false, false, arg_0.b.x), select(vec4<bool>(global2.b.x, true, arg_0.b.x, arg_3.b.x), vec4<bool>(arg_0.b.x, true, global0.b.x, arg_3.b.x), vec4<bool>(false, arg_3.b.x, true, false)), arg_0.b.x), select(!vec4<bool>(global2.b.x, global0.b.x, global0.b.x, arg_2.b.x), select(vec4<bool>(arg_2.b.x, false, true, false), vec4<bool>(arg_2.b.x, true, arg_3.b.x, false), false), !vec4<bool>(false, true, true, arg_2.b.x)), vec4<bool>(false, false && arg_2.b.x, false, global0.b.x)), ~_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21700u, 21u)], 21u)], global1[_wgslsmith_index_u32(u_input.d, 21u)] ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], 21u)])).a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-905f, -790f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-831f, 594f)))))));
    let var_2 = func_1(-638f, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~53658u), 7855u), 29u)], vec4<bool>(min(67121u, _wgslsmith_dot_vec4_u32(vec4<u32>(80237u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(93734u, 21u)], 21u)], 50315u, 4294967295u), vec4<u32>(1u, 30352u, u_input.b.x, u_input.d))) > ~_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(u_input.a.x, 8456u)), arg_2.b.x, global0.b.x, any(!vec2<bool>(false, arg_2.b.x))), ~(~_wgslsmith_sub_u32(84021u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)] & global1[_wgslsmith_index_u32(41891u, 21u)])));
    global4 = array<Struct_1, 19>();
    global2 = arg_2;
    return StorageBuffer(arg_3.a.yz, _wgslsmith_sub_vec4_i32(arg_1, arg_1), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = !vec4<bool>(global0.b.x, true, true, !(!all(global0.b)));
    var var_2 = Struct_1(vec3<i32>(-35900i, -22040i, u_input.e), var_1.ywy, select(1i, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.c, 0i, global2.c, global2.c)), firstLeadingBit(vec4<i32>(28817i, u_input.e, 35104i, -22983i)) ^ vec4<i32>(global2.a.x, u_input.e, 0i, 0i)), !global2.b.x));
    let var_3 = vec4<u32>(select(~(~(~global1[_wgslsmith_index_u32(u_input.b.x, 21u)])), u_input.a.x, -1230f > _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(1953f)))), u_input.b.x | u_input.a.x, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 21u)], 30259u)), 21u)], 21u)], ~_wgslsmith_add_u32(_wgslsmith_div_u32(23835u, 26629u), global1[_wgslsmith_index_u32(0u, 21u)])), u_input.a.x);
    var var_4 = (-(~global2.c) != u_input.e) | (min(var_3.x, 1u) <= (_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 77735u), min(0u, 43070u)) << (~(~var_3.x) % 32u)));
    var_0 = 4294967295u;
    let x = u_input.a;
    s_output = func_5(Struct_1(vec3<i32>(func_4(func_1(1111f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26558u, 21u)], 29u)], vec4<bool>(true, false, true, true), var_3.x), !var_1.zz), ~u_input.e, var_2.a.x), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(320f)) * -1549f), global4[_wgslsmith_index_u32(1u, 19u)], vec4<bool>(var_2.b.x || var_2.b.x, true, all(vec3<bool>(true, true, true)), !global0.b.x), _wgslsmith_sub_u32(1u, ~global1[_wgslsmith_index_u32(u_input.a.x, 21u)])).b, 6156i), ~(vec4<i32>(firstLeadingBit(global0.a.x), global0.c & -20016i, global0.c ^ 1i, _wgslsmith_div_i32(var_2.c, -16668i)) ^ -vec4<i32>(var_2.a.x, u_input.e, -1i, 0i)), Struct_1(global0.a | global2.a, select(vec3<bool>(true, any(global0.b), all(vec4<bool>(false, false, false, false))), global0.b, true), u_input.e), global4[_wgslsmith_index_u32(~1u, 19u)]);
}

