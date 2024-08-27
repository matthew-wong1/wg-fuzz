struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(i32(-2147483648), -18249i, 26267i, 38966i, 616i, 22959i, -71338i, i32(-2147483648), 0i, i32(-2147483648));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec4<f32>(-544f, -370f, -955f, -575f), 493f, true), 433f, Struct_1(vec3<u32>(12298u, 14282u, 1u), vec4<f32>(363f, 1178f, -1287f, 451f), -1500f, false), vec2<u32>(20844u, 4294967295u));

var<private> global2: array<bool, 23> = array<bool, 23>(true, false, true, false, false, true, true, true, true, true, false, false, true, false, false, true, true, false, true, false, true, false, false);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_4(global1.a, _wgslsmith_clamp_u32(reverseBits(_wgslsmith_div_u32(0u, 4294967295u) & arg_2.x), ~(~107979u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, 4294967295u, global1.c.a.x), _wgslsmith_mult_u32(1u, u_input.d), ~arg_1.a.a.x) >> (arg_1.d.x % 32u)), countOneBits(arg_0.x), Struct_3(abs(~global0[_wgslsmith_index_u32(0u, 10u)]) << (_wgslsmith_mult_u32(52405u, u_input.a.x) % 32u), -(~(-vec4<i32>(1i, 30676i, 2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]))), global1.a));
    var var_1 = arg_1.a;
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    let var_2 = Struct_1(~(~vec3<u32>(59152u, arg_2.x, 7113u)) ^ _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, var_0.b, 0u), vec3<u32>(var_0.a.a.x, 1u, 41846u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, arg_1.d.x, arg_1.d.x), var_0.a.a), ~(~vec3<u32>(76260u, global1.c.a.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d.c.b - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b.x, -243f, -532f, -789f))), vec4<f32>(-297f, arg_1.c.c, var_1.c, var_0.a.b.x))))), _wgslsmith_f_op_f32(-var_0.d.c.c), -global0[_wgslsmith_index_u32(1u, 10u)] < 0i);
    return 1u;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = 40975u;
    let var_1 = Struct_1(vec3<u32>(~func_3(vec3<i32>(global0[_wgslsmith_index_u32(0u, 10u)], 0i, 1i), Struct_2(Struct_1(vec3<u32>(u_input.b.x, 13137u, 4294967295u), global1.c.b, -317f, true), -443f, global1.c, vec2<u32>(64071u, u_input.c.x)), vec3<u32>(0u, 55057u, 40348u)), 1u, ~u_input.c.x) << (vec3<u32>(4294967295u, _wgslsmith_add_u32(u_input.b.x >> (20907u % 32u), 10386u << (u_input.c.x % 32u)), global1.a.a.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, -1000f, 1647f))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, 1243f, arg_0, arg_0))))), false)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -625f) * _wgslsmith_f_op_f32(sign(global1.a.b.x)))))), global2[_wgslsmith_index_u32(~global1.c.a.x, 23u)]);
    let var_2 = max(_wgslsmith_clamp_vec4_u32(u_input.c & abs(~u_input.c), ~(u_input.c ^ vec4<u32>(var_1.a.x, 23375u, var_1.a.x, global1.d.x)) & _wgslsmith_add_vec4_u32(vec4<u32>(3223u, u_input.d, 4294967295u, 94271u) >> (vec4<u32>(1u, u_input.a.x, var_1.a.x, 11019u) % vec4<u32>(32u)), u_input.c), ~_wgslsmith_clamp_vec4_u32(abs(u_input.c), u_input.c & vec4<u32>(u_input.c.x, 4294967295u, 52411u, 1u), ~vec4<u32>(global1.c.a.x, global1.d.x, 0u, 63423u))), select(~vec4<u32>(19581u, ~0u, u_input.b.x ^ 0u, _wgslsmith_div_u32(0u, 25595u)), _wgslsmith_add_vec4_u32(select(min(vec4<u32>(15027u, global1.a.a.x, 4294967295u, 4294967295u), vec4<u32>(65648u, var_1.a.x, var_1.a.x, var_1.a.x)), vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, var_1.a.x), false), u_input.c), global2[_wgslsmith_index_u32(~global1.a.a.x, 23u)]));
    var var_3 = 198f;
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))))));
    return Struct_2(global1.c, _wgslsmith_f_op_f32(sign(global1.a.c)), var_1, vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(var_2.ywx, vec3<u32>(11353u, 4294967295u, var_1.a.x)), 26283u, max(4294967295u, ~32664u)), _wgslsmith_mod_u32(global1.d.x, var_1.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> Struct_2 {
    var var_0 = vec4<i32>(~_wgslsmith_div_i32(31118i, 1i), global0[_wgslsmith_index_u32(4294967295u, 10u)], 1i >> (select(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.d.x, arg_0.c.a.x, arg_0.c.a.x, arg_0.d.x), vec4<u32>(4294967295u, 46659u, global1.d.x, global1.c.a.x) ^ vec4<u32>(1048u, arg_0.d.x, 46167u, 4294967295u)), max(26565u, ~global1.a.a.x), !any(vec3<bool>(global1.a.d, false, true))) % 32u), ~(-1i));
    var var_1 = Struct_3(arg_1, -(~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(18894i, arg_1, 2147483647i, arg_1), vec4<i32>(var_0.x, 2147483647i, -3383i, global0[_wgslsmith_index_u32(4294967295u, 10u)])), vec4<i32>(-18039i, -2064i, -1i, 2147483647i))), arg_0.c);
    var var_2 = select(!select(vec4<bool>(!arg_0.c.d, all(vec2<bool>(true, true)), false, all(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.a.x, 23u)], global1.a.d, true, arg_0.a.d))), vec4<bool>(!global2[_wgslsmith_index_u32(1u, 23u)], true, all(vec2<bool>(false, arg_0.a.d)), all(vec4<bool>(global1.a.d, false, arg_0.a.d, arg_0.a.d))), global1.a.d), select(!select(!vec4<bool>(global1.a.d, true, false, true), select(vec4<bool>(arg_2, global2[_wgslsmith_index_u32(4294967295u, 23u)], global1.a.d, var_1.c.d), vec4<bool>(false, false, true, arg_0.a.d), true), !vec4<bool>(arg_2, false, global1.a.d, arg_2)), select(vec4<bool>(global1.c.d, false, true, true), !(!vec4<bool>(false, arg_0.a.d, global1.a.d, global1.a.d)), !vec4<bool>(false, arg_2, var_1.c.d, global2[_wgslsmith_index_u32(66479u, 23u)])), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(arg_2, false, false, false), vec4<bool>(arg_2, global2[_wgslsmith_index_u32(global1.a.a.x, 23u)], true, true), vec4<bool>(false, false, false, true)), !vec4<bool>(true, false, arg_2, false), vec4<bool>(true, true, true, true)), global1.a.d)), vec4<bool>(!any(vec2<bool>(true, true)), !all(select(vec4<bool>(true, true, arg_0.a.d, arg_0.a.d), vec4<bool>(true, arg_0.a.d, true, arg_0.c.d), vec4<bool>(arg_2, true, arg_2, arg_0.c.d))), any(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 23u)], false)) & var_1.c.d, global1.a.d));
    let var_3 = arg_0;
    var var_4 = max(var_3.c.a, _wgslsmith_div_vec3_u32(vec3<u32>(min(firstTrailingBit(u_input.d), ~1u), min(4294967295u, var_1.c.a.x) ^ ~0u, 0u), ~vec3<u32>(4294967295u, ~var_3.c.a.x, ~4294967295u)));
    return func_2(global1.c.b.x);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    global1 = func_4(func_2(global1.c.c), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(11380i, global0[_wgslsmith_index_u32(7946u, 10u)], 0i), vec3<i32>(global0[_wgslsmith_index_u32(global1.d.x, 10u)], global0[_wgslsmith_index_u32(arg_1.a.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]) & vec3<i32>(12928i, 61386i, 2784i))), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(global0[_wgslsmith_index_u32(global1.d.x, 10u)], -9932i)), vec2<i32>(global0[_wgslsmith_index_u32(7968u, 10u)], 50837i)), ~global0[_wgslsmith_index_u32(firstTrailingBit(0u), 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), global2[_wgslsmith_index_u32(func_3(vec3<i32>(select(-41666i, 0i, true) << (~91445u % 32u), global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global1.d.x, 22333u), 10u)]), Struct_2(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b.x)), func_2(_wgslsmith_div_f32(arg_1.c, global1.b)).a, vec2<u32>(abs(48164u), u_input.b.x)), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(1u, global1.d.x, 27279u)), ~(~vec3<u32>(13884u, u_input.c.x, 16124u)))), 23u)]);
    global0 = array<i32, 10>();
    let var_0 = false;
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(4294967295u, 10u)], vec4<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(38643u ^ (global1.a.a.x & u_input.b.x), 10u)], max(global0[_wgslsmith_index_u32(arg_1.a.x, 10u)], global0[_wgslsmith_index_u32(func_3(vec3<i32>(5934i, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(arg_1.a.x, 10u)]), Struct_2(global1.c, 290f, arg_1, global1.a.a.zy), global1.a.a), 10u)])), _wgslsmith_div_i32(-1i, -(~global0[_wgslsmith_index_u32(global1.c.a.x, 10u)])), 2147483647i, -67959i), global1.a);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(282f, -492f))));
    return vec4<i32>(-1i, max(_wgslsmith_dot_vec4_i32(var_1.b, ~vec4<i32>(var_1.a, -30409i, global0[_wgslsmith_index_u32(arg_1.a.x, 10u)], -28411i)), ~0i), min(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~var_1.b, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_1.a.x, 10u)], global0[_wgslsmith_index_u32(arg_1.a.x, 10u)], 1i)), var_1.b ^ -var_1.b), ~1i), global0[_wgslsmith_index_u32(var_1.c.a.x, 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 10>();
    let var_0 = func_1(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(select(global1.a.a, global1.c.a, vec3<bool>(global1.c.d, global1.c.d, global2[_wgslsmith_index_u32(~u_input.d, 23u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(594f * global1.c.c))), 594f, false));
    var var_1 = vec4<i32>(_wgslsmith_add_i32(~firstTrailingBit(var_0.x) >> (u_input.d % 32u), -2147483647i), ~_wgslsmith_clamp_i32(29642i, 25331i, _wgslsmith_dot_vec4_i32(-var_0, var_0)), -firstLeadingBit(-var_0.x >> (24894u % 32u)), var_0.x);
    let var_2 = var_1.xyy;
    let var_3 = u_input.c.x;
    var var_4 = func_3(var_1.yyz, func_2(-1904f), ~abs(firstTrailingBit(vec3<u32>(46390u, var_3, u_input.b.x))));
    let var_5 = 4294967295u;
    var_1 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(42117i, var_2.x), ~var_2.x, -22735i, _wgslsmith_dot_vec2_i32(var_1.yy, vec2<i32>(-28367i, global0[_wgslsmith_index_u32(80723u, 10u)]))), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, -6701i, var_0.x, -2147483647i), vec4<i32>(4720i, 1i, var_2.x, var_1.x))), var_0, -min(var_0, vec4<i32>(-2147483647i, 40085i, var_2.x, 3224i)));
    let var_6 = func_2(-1000f).c.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(func_4(func_4(func_2(1000f), var_1.x, !var_6), _wgslsmith_add_i32(var_2.x, var_0.x ^ 14412i), !any(vec2<bool>(global2[_wgslsmith_index_u32(60772u, 23u)], false))).a.c, _wgslsmith_f_op_f32(f32(-1f) * -3184f)), var_2.x, max(min(~min(vec4<u32>(1u, u_input.b.x, 2158u, u_input.c.x), vec4<u32>(4294967295u, var_5, 49878u, var_3)), ~(vec4<u32>(global1.a.a.x, 43890u, u_input.b.x, 50035u) >> (u_input.c % vec4<u32>(32u)))), ~firstTrailingBit(~u_input.c)), 118f, select(53137u, ~(~(~u_input.a.x)), true));
}

