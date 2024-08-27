struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 29>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, 0i), Struct_1(false, i32(-2147483648)), Struct_1(false, -32890i), Struct_1(true, 2556i), Struct_1(true, 1i), Struct_1(true, 2147483647i), Struct_1(true, i32(-2147483648)), Struct_1(true, -13208i), Struct_1(true, -98895i), Struct_1(true, -31100i), Struct_1(true, 26546i), Struct_1(true, -17429i), Struct_1(false, 2147483647i), Struct_1(false, 36991i), Struct_1(true, 12855i), Struct_1(false, i32(-2147483648)), Struct_1(true, -25571i), Struct_1(true, -26019i), Struct_1(true, 30732i), Struct_1(false, -13804i), Struct_1(true, i32(-2147483648)), Struct_1(false, 1i), Struct_1(false, -1305i), Struct_1(false, 1134i), Struct_1(true, 0i), Struct_1(true, 0i), Struct_1(true, -29116i), Struct_1(false, -2293i), Struct_1(false, -1i), Struct_1(false, -28659i), Struct_1(true, -1i), Struct_1(false, -1i));

var<private> global3: array<i32, 18> = array<i32, 18>(0i, 6200i, 1i, 16760i, -27891i, -1i, i32(-2147483648), -1i, -1i, 0i, 1i, -1i, 46277i, 1i, 28437i, i32(-2147483648), -9037i, 1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>) -> bool {
    global0 = ~countOneBits(firstLeadingBit(1u));
    var var_0 = arg_0.a;
    global2 = array<Struct_1, 32>();
    global1 = array<bool, 29>();
    let var_1 = false;
    return !(!all(select(!vec3<bool>(arg_1, global1[_wgslsmith_index_u32(4294967295u, 29u)], false), !vec3<bool>(true, arg_2.x, true), vec3<bool>(true, false, var_1))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(1u, u_input.c, u_input.c) ^ vec3<u32>(u_input.b, 0u, u_input.c)) | select(~(~vec3<u32>(u_input.b, u_input.b, 10887u)), vec3<u32>(~u_input.b, 0u, u_input.a), arg_1.zww), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(88503u, 1u, u_input.c), ~vec3<u32>(u_input.c, u_input.c, u_input.c), any(vec2<bool>(true, false))) ^ (vec3<u32>(u_input.a, 5926u, u_input.c) & _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 3517u, 23398u), vec3<u32>(u_input.b, 56507u, u_input.b))), reverseBits(~min(vec3<u32>(4294967295u, u_input.a, 133843u), vec3<u32>(83279u, u_input.b, 1u))), ~vec3<u32>(u_input.b, u_input.a, u_input.a) << (abs(vec3<u32>(0u, u_input.c, 0u)) % vec3<u32>(32u))));
    let var_1 = Struct_1(func_3(global2[_wgslsmith_index_u32(0u, 32u)], arg_0 == _wgslsmith_f_op_f32(-868f - _wgslsmith_div_f32(496f, -761f)), vec2<bool>(!(!global1[_wgslsmith_index_u32(var_0.x, 29u)]), any(!arg_1.zwz))), global3[_wgslsmith_index_u32(~reverseBits(~(~64828u)), 18u)]);
    global2 = array<Struct_1, 32>();
    var var_2 = Struct_1(select(global1[_wgslsmith_index_u32(var_0.x, 29u)], var_1.a, true), ~(-64837i));
    let var_3 = ~reverseBits(var_1.b);
    return vec4<bool>(true, arg_1.x, !global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 29u)], arg_1.x || false);
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2333f, -1339f, global1[_wgslsmith_index_u32(u_input.b, 29u)])), 107f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(386f, -1166f) - -350f)), all(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 29u)]))))));
    var var_1 = !(!all(select(select(vec3<bool>(false, true, arg_0.a), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 29u)], arg_0.a, false), arg_0.a), select(vec3<bool>(false, true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(5204u, 29u)], true), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 29u)])), u_input.c <= 39805u)));
    var var_2 = vec3<bool>(all(func_4(1368f, vec4<bool>(true, func_3(Struct_1(true, -19669i), true, vec2<bool>(arg_0.a, global1[_wgslsmith_index_u32(u_input.a, 29u)])), !global1[_wgslsmith_index_u32(u_input.c, 29u)], false))), all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 18u)] <= -arg_0.b, arg_0.a)), true);
    global0 = u_input.a;
    var var_3 = arg_0;
    return min(~select(~vec3<i32>(arg_0.b, var_3.b, 0i), vec3<i32>(arg_0.b, 0i, var_3.b) | reverseBits(vec3<i32>(-14738i, global3[_wgslsmith_index_u32(u_input.c, 18u)], arg_0.b)), true), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -17373i, 0i) >> (vec3<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 37238u), 4294967295u, ~4294967295u) % vec3<u32>(32u)), vec3<i32>(-max(2147483647i, 2147483647i), -1i, _wgslsmith_mult_i32(~(-7423i), ~(-1i)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> bool {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-arg_1.b, 8478i), arg_1.b), _wgslsmith_dot_vec3_i32(-func_2(Struct_1(arg_1.a, arg_1.b)), -(vec3<i32>(arg_0.b, global3[_wgslsmith_index_u32(1526u, 18u)], 2147483647i) >> (vec3<u32>(u_input.c, 7422u, 1u) % vec3<u32>(32u)))), var_0, max(func_2(Struct_1(true, arg_1.b)).x, ~10599i)), vec4<i32>(func_2(arg_0).x, abs(max(-2147483647i, var_0 >> (u_input.b % 32u))), 0i, countOneBits(_wgslsmith_mult_i32(arg_0.b, var_0) & _wgslsmith_clamp_i32(-21825i, var_0, global3[_wgslsmith_index_u32(arg_3, 18u)]))));
    var var_2 = 26828u;
    var var_3 = false;
    var var_4 = Struct_2(!(!select(!vec2<bool>(global1[_wgslsmith_index_u32(5462u, 29u)], true), !vec2<bool>(true, arg_2), select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(13117u, 29u)], false), global1[_wgslsmith_index_u32(0u, 29u)]))), vec3<i32>(arg_0.b, abs(_wgslsmith_mod_i32(1i, select(-12959i, var_0, arg_1.a))), -16373i), Struct_1(true, -(global3[_wgslsmith_index_u32(u_input.c, 18u)] >> (u_input.a % 32u))), vec3<bool>(!(!select(arg_0.a, arg_1.a, true)), true, all(func_4(_wgslsmith_f_op_f32(1028f * -662f), !vec4<bool>(arg_2, false, false, arg_1.a)).yw)), _wgslsmith_add_i32(firstTrailingBit(1i) | abs(2080i), _wgslsmith_mult_i32(-2147483647i, arg_0.b >> (u_input.c % 32u))) != (2147483647i & arg_0.b));
    return select(global1[_wgslsmith_index_u32(arg_3, 29u)], global1[_wgslsmith_index_u32(arg_3, 29u)], ~(abs(-547i) >> (arg_3 % 32u)) <= _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_1.xzx >> (vec3<u32>(arg_3, 1u, 60671u) % vec3<u32>(32u)), var_4.b), -_wgslsmith_mod_i32(var_0, arg_0.b)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = vec4<f32>(267f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-971f))), -366f);
    global0 = 1u;
    let var_1 = Struct_2(vec2<bool>(-34993i != min(arg_2.b, 0i), any(vec3<bool>(true, !arg_1.d.x, true))), abs(vec3<i32>(_wgslsmith_add_i32(2147483647i, -1i), arg_1.b.x, 13562i)), arg_0, !(!func_4(_wgslsmith_f_op_f32(901f - 381f), !vec4<bool>(false, arg_1.d.x, false, arg_0.a)).zxy), arg_1.c.a);
    global0 = ~(~u_input.b);
    global3 = array<i32, 18>();
    return _wgslsmith_f_op_f32(max(var_0.x, 298f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = (~(u_input.a ^ u_input.a) << (1u % 32u)) | 1u;
    let var_1 = _wgslsmith_f_op_f32(func_5(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(~select(u_input.b, u_input.a, global1[_wgslsmith_index_u32(u_input.b, 29u)]), 4294967295u), 4294967295u), 32u)], Struct_2(vec2<bool>(true, select(true, global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(1u, 29u)])), -(~(vec3<i32>(2147483647i, 1i, -27165i) | vec3<i32>(-9448i, -1i, global3[_wgslsmith_index_u32(1u, 18u)]))), Struct_1(func_1(global2[_wgslsmith_index_u32(u_input.c & u_input.a, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], !global1[_wgslsmith_index_u32(u_input.b, 29u)], u_input.c >> (72394u % 32u)), ~236i), !(!(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 29u)], true, true))), any(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 29u)], true, false))), Struct_1(true, -1i)));
    let var_2 = vec4<u32>(0u, ~_wgslsmith_div_u32(0u, countOneBits(u_input.a)) | _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.b, u_input.c, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, u_input.c, 1u), false), reverseBits(vec4<u32>(383u, u_input.c, u_input.b, 4294967295u)) | countOneBits(vec4<u32>(u_input.b, u_input.c, 53586u, u_input.c))), ~_wgslsmith_mod_u32(u_input.b, ~93095u), min(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.c, u_input.b, u_input.a)), ~vec3<u32>(7971u, 0u, 4294967295u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(15009u, u_input.a, 0u), vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(0u, 0u, u_input.b))), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, 0u)), vec2<u32>(u_input.a, ~u_input.b))));
    var var_3 = select(!(!select(select(vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 29u)], global1[_wgslsmith_index_u32(var_2.x, 29u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 29u)], global1[_wgslsmith_index_u32(53540u, 29u)]), false), vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 29u)], true), any(vec4<bool>(global1[_wgslsmith_index_u32(71248u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], true, global1[_wgslsmith_index_u32(47412u, 29u)])))), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 29u)]), vec2<bool>(!(var_1 == 210f), any(!select(vec2<bool>(true, false), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 29u)]), global1[_wgslsmith_index_u32(u_input.a, 29u)]))));
    let var_4 = !vec3<bool>(false, var_3.x, max(-global3[_wgslsmith_index_u32(var_2.x, 18u)], _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -42405i), vec2<i32>(1i, global3[_wgslsmith_index_u32(u_input.a, 18u)]))) == ~_wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.a, 18u)], 2147483647i));
    let var_5 = -658f;
    let var_6 = Struct_2(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), var_4.yx), vec2<bool>(false, global1[_wgslsmith_index_u32(var_2.x, 29u)]), !var_4.yz), !select(var_4.xx, vec2<bool>(var_3.x, true), false), vec2<bool>(true, var_4.x)), vec2<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(var_2.x, 29u)])), true), false), -(~vec3<i32>(~global3[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_div_i32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 1i), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(var_2.x, 18u)]))), Struct_1(true | var_3.x, global3[_wgslsmith_index_u32(~31056u, 18u)] ^ global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 0u), 18u)]), select(var_4, !(!var_4), select(!vec3<bool>(var_3.x, true, var_3.x), !var_4, select(select(vec3<bool>(global1[_wgslsmith_index_u32(15859u, 29u)], global1[_wgslsmith_index_u32(31474u, 29u)], var_3.x), vec3<bool>(false, false, true), vec3<bool>(false, false, var_4.x)), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 29u)], var_3.x), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], var_4.x, var_4.x)))), all(vec3<bool>(any(var_4.zz) & true, !var_3.x, global1[_wgslsmith_index_u32(firstLeadingBit(var_2.x), 29u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(-min(vec4<i32>(var_6.b.x, -2147483647i, global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<i32>(13561i, var_6.b.x, -10405i, 1i)), -vec4<i32>(37049i, global3[_wgslsmith_index_u32(u_input.a, 18u)], 12842i, -28507i))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1509f)))), 1642f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_5)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_5)))))), _wgslsmith_add_vec2_i32(abs((vec2<i32>(var_6.b.x, var_6.c.b) << (var_2.zz % vec2<u32>(32u))) & ~vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)])), (vec2<i32>(global3[_wgslsmith_index_u32(0u, 18u)], var_6.b.x) & var_6.b.zz) << (~vec2<u32>(0u, var_2.x) % vec2<u32>(32u))));
}

