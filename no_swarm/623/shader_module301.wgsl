struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(0i, 0i, 0i);

var<private> global1: array<f32, 28> = array<f32, 28>(657f, 1000f, -1441f, -1152f, 2239f, 124f, 1000f, 284f, -112f, -1033f, 1096f, -705f, 1000f, 174f, 1000f, -1355f, -179f, 508f, 1265f, -1023f, 342f, -1317f, -1016f, 557f, 1541f, -920f, 719f, -765f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: f32) -> f32 {
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))) * _wgslsmith_f_op_f32(-arg_2)), arg_0, arg_0);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 28u)])), ~28010i, ~vec2<u32>(~(~0u), reverseBits(~1u)));
    var var_3 = !var_0.x;
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1727f, arg_1.x)), vec3<f32>(126f, _wgslsmith_f_op_f32(floor(920f)), _wgslsmith_f_op_f32(sign(353f))))), arg_1.zyz)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-242f)) - _wgslsmith_f_op_f32(select(var_1.x, -1000f, false)))) * arg_0), _wgslsmith_f_op_f32(ceil(-776f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    global1 = array<f32, 28>();
    var var_0 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_add_i32(5700i, abs(-u_input.a ^ 1i)));
    global1 = array<f32, 28>();
    var var_1 = _wgslsmith_f_op_f32(func_3(arg_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 28u)], 3416f, global1[_wgslsmith_index_u32(41661u, 28u)], -1365f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, arg_1.a, 721f, arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1.a, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]) + vec4<f32>(arg_0, -278f, -260f, -1446f)))))), _wgslsmith_f_op_f32(round(-210f))));
    let var_2 = arg_1.a;
    return Struct_2(Struct_1(-457f), abs(-global0[_wgslsmith_index_u32(countOneBits(~4294967295u), 3u)]), ~(~(~reverseBits(vec2<u32>(9597u, 1u)))));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<i32>) -> Struct_4 {
    global0 = array<i32, 3>();
    global1 = array<f32, 28>();
    global0 = array<i32, 3>();
    let var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1478f * _wgslsmith_f_op_f32(-arg_0.c.e.a)) * _wgslsmith_div_f32(1130f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~1u, 28u)])))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-286f + global1[_wgslsmith_index_u32(arg_0.c.a, 28u)]), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(19302u, 28u)])))))));
    let var_1 = i32(-1i) * -2147483647i;
    return Struct_4(vec4<i32>(firstLeadingBit(-(0i & arg_1.x)), -6601i, ~_wgslsmith_mult_i32(~arg_1.x, arg_0.c.d.x), firstTrailingBit(abs(_wgslsmith_sub_i32(-10580i, 0i)))), arg_0.c.c.wyw, Struct_3(reverseBits(40122u), ~1u, arg_0.c.c, ~arg_1, Struct_1(-1609f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_5) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_2.c.b, arg_3.c.b, arg_3.c.a, 0u)) << (vec4<u32>(~arg_2.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(2880u, arg_3.b.x, arg_3.b.x, 4294967295u), vec4<u32>(arg_2.c.a, arg_3.c.a, arg_2.c.b, arg_3.c.a)), arg_3.b.x, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(max(vec4<u32>(arg_3.b.x, arg_2.c.a, arg_2.c.b, arg_3.b.x), vec4<u32>(39683u, 29802u, arg_3.b.x, 1u))), countOneBits(select(vec4<u32>(arg_2.c.b, arg_3.b.x, 4294967295u, arg_3.b.x), vec4<u32>(arg_3.c.a, 34432u, 1u, arg_3.c.b), false)))));
    global1 = array<f32, 28>();
    var var_1 = Struct_1(797f);
    var var_2 = ~func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_3.c.a, 28u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_2.c.c.x)), _wgslsmith_f_op_f32(-465f * -809f)))), arg_0).c.x;
    let var_3 = 4294967295u;
    return func_1(Struct_5(0i, _wgslsmith_clamp_vec3_u32(firstLeadingBit(abs(arg_3.b)), _wgslsmith_add_vec3_u32(~arg_3.b, ~vec3<u32>(9489u, var_0, 1u)), arg_3.b), arg_2.c), select(arg_3.c.d, vec2<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(~arg_2.c.d.x, global0[_wgslsmith_index_u32(4294967295u, 3u)])), select(vec2<bool>(true, true), vec2<bool>(true, true), true))).c.e;
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    let var_0 = global1[_wgslsmith_index_u32(max(49536u, ~max(~1u, _wgslsmith_div_u32(reverseBits(55557u), countOneBits(1u)))), 28u)];
    var var_1 = Struct_1(_wgslsmith_div_f32(836f, 1457f));
    global0 = array<i32, 3>();
    var var_2 = -1i;
    let var_3 = select(select(vec4<bool>(true, all(vec2<bool>(false, false)) || true, true, _wgslsmith_f_op_f32(-var_1.a) > _wgslsmith_f_op_f32(-arg_0.a)), vec4<bool>(any(vec2<bool>(false, false)), (u_input.a >> (1u % 32u)) >= abs(global0[_wgslsmith_index_u32(1u, 3u)]), true, any(vec3<bool>(true, true, true))), true), vec4<bool>(false, !any(vec2<bool>(false, true)), firstTrailingBit(_wgslsmith_sub_u32(0u, 0u)) == 71504u, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, false, false)))));
    return func_1(Struct_5(firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(15640u, 3u)], global0[_wgslsmith_index_u32(801u, 3u)], -2147483647i), -vec3<i32>(25102i, -2147483647i, 1i))), ~(~vec3<u32>(1u, 31704u, 0u)), func_1(Struct_5(0i, reverseBits(vec3<u32>(70618u, 12883u, 50469u)), Struct_3(1u, 0u, vec4<f32>(var_1.a, arg_0.a, -324f, -862f), vec2<i32>(global0[_wgslsmith_index_u32(36501u, 3u)], 18972i), arg_0)), ~(-vec2<i32>(u_input.a, 2147483647i))).c), vec2<i32>(u_input.a, firstLeadingBit(i32(-1i) * -2147483647i) ^ global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(14948u, 1u), 3u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(454f));
    let var_1 = func_5(func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 28u)], 1489f)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(55542u, 28u)] + global1[_wgslsmith_index_u32(0u, 28u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(24492u, 28u)], 1281f), vec2<f32>(-688f, global1[_wgslsmith_index_u32(1u, 28u)]), false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(37404u, 28u)], 2400f)))), func_1(Struct_5(u_input.a, abs(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_3(4294967295u, 0u, vec4<f32>(-191f, 659f, 1188f, 170f), vec2<i32>(-1i, 3695i), Struct_1(506f))), ~(-vec2<i32>(global0[_wgslsmith_index_u32(1724u, 3u)], global0[_wgslsmith_index_u32(27273u, 3u)]))), Struct_5(6300i, vec3<u32>(1u, 1u, 1u), Struct_3(4294967295u, 1u, vec4<f32>(1591f, global1[_wgslsmith_index_u32(44719u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), vec2<i32>(global0[_wgslsmith_index_u32(1u, 3u)], u_input.a) | vec2<i32>(-1i, u_input.a), func_2(-1842f, Struct_1(global1[_wgslsmith_index_u32(4294967295u, 28u)])).a))));
    let var_2 = Struct_5(global0[_wgslsmith_index_u32(42685u, 3u)], _wgslsmith_mod_vec3_u32(~select(reverseBits(vec3<u32>(var_1.c.a, 4294967295u, var_1.c.b)), vec3<u32>(var_1.c.b, var_1.c.a, 0u), any(vec2<bool>(true, false))), abs(select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c.b, 165u, 23590u), vec3<u32>(57266u, var_1.c.b, var_1.c.a)), vec3<u32>(1013u, var_1.c.a, 21034u), true))), func_1(Struct_5(max(0i, global0[_wgslsmith_index_u32(var_1.c.b, 3u)] ^ -1i), vec3<u32>(1u, var_1.c.b, var_1.c.b) >> (select(vec3<u32>(0u, 3225u, var_1.c.b), vec3<u32>(var_1.c.b, var_1.c.b, 4294967295u), false) % vec3<u32>(32u)), Struct_3(func_2(633f, Struct_1(947f)).c.x, ~4294967295u, _wgslsmith_f_op_vec4_f32(-var_1.c.c), vec2<i32>(var_1.a.x, global0[_wgslsmith_index_u32(0u, 3u)]), Struct_1(-298f))), var_1.a.zx).c);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(27286u, 28u)], var_2.c.c.x, var_2.c.c.x, global1[_wgslsmith_index_u32(56397u, 28u)]), vec4<f32>(var_2.c.c.x, var_1.c.e.a, 1063f, 1465f))))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_2.b.x, 28u)], 914f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_1(var_2, vec2<i32>(var_1.a.x, u_input.a)).b.x)))));
    var var_5 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), func_2(438f, var_1.c.e).a);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(var_5.c), abs(firstTrailingBit(vec3<u32>(firstLeadingBit(var_2.b.x), var_5.c.x & 41353u, _wgslsmith_mod_u32(var_5.c.x, var_2.b.x)))), firstTrailingBit(abs(var_5.c.x)), firstTrailingBit(~(~(~vec4<u32>(var_2.b.x, var_1.c.a, 1u, 4294967295u)))));
}

