struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<vec2<f32>, 32>;

var<private> global2: vec4<u32> = vec4<u32>(1u, 72630u, 30630u, 1u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = 1i;
    global2 = vec4<u32>(0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(firstTrailingBit(~global2.zw)), vec2<u32>(global2.x, global2.x)), 4294967295u & max(_wgslsmith_mod_u32(1u, ~global2.x), global2.x), 8303u);
    let var_1 = firstTrailingBit(~(-(select(vec4<i32>(2147483647i, arg_0.a.x, var_0, u_input.a), vec4<i32>(arg_0.a.x, u_input.b, var_0, var_0), vec4<bool>(global0[_wgslsmith_index_u32(43488u, 29u)], true, false, global0[_wgslsmith_index_u32(10817u, 29u)])) ^ vec4<i32>(37270i, -1i, var_0, -50294i))));
    global2 = vec4<u32>(~(~select(621u, 1u, global0[_wgslsmith_index_u32(global2.x << (21922u % 32u), 29u)])), _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(min(global2.x, 16552u), _wgslsmith_sub_u32(12669u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 5035u, global2.x), vec4<u32>(global2.x, 9374u, global2.x, global2.x))), 31463u ^ _wgslsmith_dot_vec3_u32(global2.xyz, vec3<u32>(global2.x, 0u, global2.x)))), ~(~reverseBits(global2.x) | global2.x), _wgslsmith_mod_u32(1u | _wgslsmith_mult_u32(~global2.x, ~4294967295u), 13407u));
    global1 = array<vec2<f32>, 32>();
    return global2.x;
}

fn func_2() -> Struct_1 {
    let var_0 = -24691i;
    global2 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~global2.x, global2.x), global2.x, ~(global2.x << (10399u % 32u)), global2.x), vec4<u32>(abs(~global2.x), 0u, ~1u, global2.x)) << ((~(~select(vec4<u32>(67200u, 82393u, global2.x, global2.x), vec4<u32>(22402u, global2.x, global2.x, 4294967295u), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(global2.x, 29u)], false))) >> (vec4<u32>(func_3(Struct_3(vec2<i32>(-6342i, -2147483647i))), 23795u, ~(~global2.x), 0u) % vec4<u32>(32u))) % vec4<u32>(32u));
    global2 = max(max(abs(reverseBits(vec4<u32>(5650u, global2.x, 18233u, 0u))) & firstTrailingBit(vec4<u32>(56326u, 1u, global2.x, global2.x)), ~vec4<u32>(global2.x, global2.x, 0u, global2.x)), select(select(select(vec4<u32>(79187u, 1u, 71891u, 52662u) << (vec4<u32>(global2.x, global2.x, global2.x, global2.x) % vec4<u32>(32u)), ~vec4<u32>(global2.x, 3985u, global2.x, global2.x), vec4<bool>(global0[_wgslsmith_index_u32(47316u, 29u)], global0[_wgslsmith_index_u32(62268u, 29u)], global0[_wgslsmith_index_u32(global2.x, 29u)], false)), ~vec4<u32>(31812u, global2.x, global2.x, global2.x) & ~vec4<u32>(global2.x, 21586u, global2.x, 1u), !(!global0[_wgslsmith_index_u32(15386u, 29u)])), abs(~max(vec4<u32>(4294967295u, 19625u, global2.x, 4294967295u), vec4<u32>(1u, 3586u, global2.x, global2.x))), any(vec4<bool>(true, all(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(27776u, 29u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 1u, global2.x), 29u)]))));
    var var_1 = select(vec4<bool>(false & all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(reverseBits(func_3(Struct_3(vec2<i32>(-5254i, -51416i)))), 29u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(107451u, global2.x, global2.x), ~vec3<u32>(0u, global2.x, 8056u)), 1u, 4294967295u), 29u)]), !vec4<bool>(false, any(select(vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 29u)], false, global0[_wgslsmith_index_u32(global2.x, 29u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(global2.x, 29u)]), vec3<bool>(global0[_wgslsmith_index_u32(33880u, 29u)], false, false))), global0[_wgslsmith_index_u32(global2.x, 29u)], global0[_wgslsmith_index_u32(global2.x << (~global2.x % 32u), 29u)]), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(~global2.x, 29u)], true, global0[_wgslsmith_index_u32(global2.x, 29u)])));
    var var_2 = abs(vec4<u32>(~global2.x, countOneBits(~global2.x), select(abs(1u), _wgslsmith_add_u32(global2.x, global2.x), all(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 29u)], var_1.x, global0[_wgslsmith_index_u32(0u, 29u)]))), firstLeadingBit(global2.x)));
    return Struct_1(1f, _wgslsmith_div_vec4_i32(-vec4<i32>(-51722i, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-15562i, u_input.b, var_0, 2147483647i), vec4<i32>(var_0, var_0, u_input.a, var_0)), ~u_input.a), abs(select(vec4<i32>(var_0, -25225i, -38277i, u_input.a), vec4<i32>(-1i, u_input.b, var_0, -1713i), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(659f, -161f, -1376f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-680f, -1568f, -907f) * vec3<f32>(-1801f, 873f, -1401f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-652f, 1651f, -444f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-329f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-782f * 127f) - _wgslsmith_f_op_f32(f32(-1f) * -562f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-453f, -1002f))))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    global1 = array<vec2<f32>, 32>();
    var var_0 = Struct_3(select(arg_2.b.xw, _wgslsmith_sub_vec2_i32(~arg_2.b.ww >> (reverseBits(global2.xw) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -1i, arg_2.b.x)), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_div_vec2_u32(firstLeadingBit(global2.zx), vec2<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(48183u, 26689u, 0u, global2.x) >> (vec4<u32>(0u, 0u, global2.x, 21227u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(17813u, 0u, global2.x, 113507u), vec4<u32>(1u, 43731u, global2.x, global2.x)))));
    let var_2 = -492f;
    global0 = array<bool, 29>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, -310f, -572f) * vec4<f32>(967f, -219f, var_2, var_2)))) * vec4<f32>(806f, -383f, _wgslsmith_f_op_f32(step(-1193f, -1486f)), var_2)) - vec4<f32>(_wgslsmith_div_f32(1000f, 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-143f * -434f))), _wgslsmith_f_op_f32(floor(arg_2.c.x)), -1534f)));
}

fn func_1(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(50384u, (1u << (global2.x % 32u)) >> (1u % 32u), select(_wgslsmith_clamp_u32(12238u, 94394u, 15784u), _wgslsmith_add_u32(41677u, 95880u), global2.x >= global2.x), min(select(43265u, 5539u, false), 35574u)), ~(vec4<u32>(1u, global2.x, global2.x, global2.x) ^ ~vec4<u32>(global2.x, global2.x, 41257u, global2.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(506f, _wgslsmith_f_op_f32(f32(-1f) * -330f), 1002f, 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(1u != max(0u, global2.x), !global0[_wgslsmith_index_u32(~0u, 29u)], func_2())) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, -762f, 1000f, -1374f)))))));
    let var_2 = func_2();
    let var_3 = vec2<u32>(~_wgslsmith_add_u32(~24956u, ~global2.x) & 4294967295u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global2.x, 4294967295u, global2.x), var_0 >> (vec4<u32>(8008u, global2.x, var_0.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 5229u, var_0.x, global2.x)), vec4<u32>(~global2.x, global2.x >> (var_0.x % 32u), var_0.x, ~0u)));
    return min(var_0 << (vec4<u32>(var_0.x | abs(var_0.x), ~_wgslsmith_sub_u32(var_3.x, var_0.x), firstTrailingBit(global2.x & var_0.x), var_0.x) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, ~(~17946u), 0u, ~(~var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1u >> ((1u & _wgslsmith_add_u32(global2.x, 18236u)) % 32u)) != ~1u;
    global2 = func_1(Struct_2(vec3<i32>(-u_input.a, u_input.a, ~(-1986i | u_input.a)), ~_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, u_input.a, u_input.b, -2147483647i)), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.b))));
    let var_1 = Struct_1(-1792f, reverseBits(_wgslsmith_sub_vec4_i32(select(~vec4<i32>(1i, u_input.b, -1i, u_input.b), max(vec4<i32>(u_input.b, u_input.b, u_input.a, 2147483647i), vec4<i32>(u_input.b, -1i, 11084i, u_input.b)), select(vec4<bool>(var_0, global0[_wgslsmith_index_u32(64534u, 29u)], true, var_0), vec4<bool>(var_0, false, var_0, global0[_wgslsmith_index_u32(75138u, 29u)]), global0[_wgslsmith_index_u32(74u, 29u)])), ~vec4<i32>(u_input.b, -11101i, u_input.a, u_input.a) ^ -vec4<i32>(u_input.b, u_input.a, u_input.b, 8973i))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-180f, 1156f) * _wgslsmith_f_op_f32(149f - -1311f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1615f, 1303f)), _wgslsmith_f_op_f32(abs(-896f))), _wgslsmith_f_op_f32(f32(-1f) * -894f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(212f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-302f + -394f))));
    var var_2 = Struct_3(_wgslsmith_mult_vec2_i32(~var_1.b.xz, var_1.b.zy));
    let var_3 = Struct_3(vec2<i32>(~firstLeadingBit(_wgslsmith_mod_i32(-25500i, u_input.a)), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-236f, _wgslsmith_f_op_f32(var_1.a + var_1.c.x), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.c.x, var_1.d)), var_1.d))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d, var_1.c.x, -1280f))))), var_1.c)), 0u);
}

