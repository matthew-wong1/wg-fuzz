struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec4<bool>(false, true, true, false), false, vec2<f32>(1000f, 1000f), true), Struct_1(vec4<bool>(true, true, false, true), true, vec2<f32>(440f, 172f), false), vec3<u32>(25903u, 1u, 0u), vec2<i32>(1064i, -65228i)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), false, vec2<f32>(579f, 2206f), false), Struct_1(vec4<bool>(true, false, true, false), false, vec2<f32>(-1000f, 1802f), false), vec3<u32>(75766u, 49932u, 1u), vec2<i32>(0i, -1i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), true, vec2<f32>(-871f, -339f), true), Struct_1(vec4<bool>(false, false, false, false), true, vec2<f32>(379f, -143f), true), vec3<u32>(40317u, 4294967295u, 43135u), vec2<i32>(0i, -3982i)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), false, vec2<f32>(-562f, -1050f), true), Struct_1(vec4<bool>(false, true, true, false), false, vec2<f32>(-1057f, -1303f), true), vec3<u32>(4872u, 1u, 48484u), vec2<i32>(21767i, 24389i)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), false, vec2<f32>(-527f, 1413f), false), Struct_1(vec4<bool>(true, true, true, true), true, vec2<f32>(-1454f, -1404f), false), vec3<u32>(38653u, 1u, 4294967295u), vec2<i32>(1i, 2147483647i)));

var<private> global1: array<f32, 20> = array<f32, 20>(195f, 527f, 1368f, 1339f, 1605f, -260f, 2424f, -1184f, -1239f, -363f, -899f, 1714f, -1246f, -1000f, -665f, -1360f, 319f, -661f, -164f, 1538f);

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    return global0[_wgslsmith_index_u32(4294967295u, 5u)];
}

fn func_3() -> f32 {
    var var_0 = firstLeadingBit(vec3<u32>(select(~(~27146u), ~_wgslsmith_clamp_u32(6897u, 0u, 15469u), !any(vec3<bool>(true, true, false))), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(23834u, 1u, 0u)), select(vec3<u32>(1u, 66058u, 3697u), ~vec3<u32>(0u, 25349u, 0u), vec3<bool>(true, true, true))), 0u));
    global0 = array<Struct_2, 5>();
    var_0 = vec3<u32>(~1u | var_0.x, var_0.x, var_0.x) & (~_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.x, 34187u) << (vec3<u32>(4294967295u, 34545u, var_0.x) % vec3<u32>(32u)), vec3<u32>(var_0.x, var_0.x, 1u)) | _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, 63570u) | vec3<u32>(var_0.x, var_0.x, 19551u), vec3<u32>(var_0.x, var_0.x, var_0.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 4294967295u))));
    global1 = array<f32, 20>();
    var_0 = ~(~firstTrailingBit(firstTrailingBit(~vec3<u32>(12731u, var_0.x, 70780u))));
    return 1147f;
}

fn func_4(arg_0: f32) -> u32 {
    let var_0 = -18154i;
    global0 = array<Struct_2, 5>();
    global1 = array<f32, 20>();
    var var_1 = !select(true, true || any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true))), true);
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(1u, 14u)], Struct_1(vec4<bool>(true, select(func_2().a.a.x, true, func_2().b.a.x), select(true, select(false, false, true), true), true), !(var_0 == var_0) | all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)])))), select(false, true, true)), ~func_2().c, _wgslsmith_mod_vec2_i32(vec2<i32>(func_2().d.x, u_input.a), ~max(-vec2<i32>(u_input.a, 7511i), firstLeadingBit(vec2<i32>(u_input.a, 47695i)))));
    return var_2.c.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_2 {
    global2 = array<Struct_1, 14>();
    global0 = array<Struct_2, 5>();
    global2 = array<Struct_1, 14>();
    let var_0 = max(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, _wgslsmith_mult_i32(u_input.c, 0i), u_input.a >> (1u % 32u), -1i), vec4<i32>(-6332i, ~(2147483647i ^ u_input.b), i32(-1i) * -26269i, ~_wgslsmith_mult_i32(u_input.c, -21438i))), u_input.b);
    var var_1 = func_2().a;
    return Struct_2(Struct_1(!select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), var_1.a, vec4<bool>(arg_1.a.x, var_1.b, arg_1.d, arg_0.x)), false, _wgslsmith_f_op_vec2_f32(arg_1.c + _wgslsmith_f_op_vec2_f32(arg_1.c - _wgslsmith_f_op_vec2_f32(arg_1.c - vec2<f32>(-1356f, global1[_wgslsmith_index_u32(arg_2, 20u)])))), false), arg_1, ~(vec3<u32>(_wgslsmith_mult_u32(2400u, 31573u), _wgslsmith_clamp_u32(0u, arg_2, arg_2), 8617u) ^ ~firstLeadingBit(vec3<u32>(54911u, arg_2, arg_2))), -_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-1i, var_0), vec2<i32>(-2147483647i, 42484i), arg_1.a.wy), -vec2<i32>(var_0, -32206i), reverseBits(vec2<i32>(var_0, u_input.b))), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a) | vec2<i32>(u_input.a, 31899i), -vec2<i32>(u_input.b, 0i))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = u_input.b;
    var var_2 = any(var_0.b.a);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(_wgslsmith_mult_u32(var_0.c.x, 11851u) & 41877u)), _wgslsmith_div_u32(reverseBits(var_0.c.x), ~(0u | _wgslsmith_mod_u32(4294967295u, var_0.c.x)))), 14u)];
    global0 = array<Struct_2, 5>();
    return func_5(vec4<bool>(all(select(!vec2<bool>(true, var_3.b), var_3.a.zw, !vec2<bool>(var_3.b, true))), true, all(var_3.a), (~u_input.a >> (1u % 32u)) != 108i), func_2().a, ~select(var_0.c.x, var_0.c.x, !(false == var_0.b.a.x)), global1[_wgslsmith_index_u32(min(6493u, 1u ^ func_4(_wgslsmith_f_op_f32(func_3()))), 20u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<Struct_1, 14>();
    var var_1 = func_2().b.b;
    var var_2 = func_5(func_1().b.a, func_5(func_1().b.a, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 20u)] <= -744f, !var_0.b.d, 4294967295u == var_0.c.x, true), false, _wgslsmith_f_op_vec2_f32(trunc(func_5(vec4<bool>(var_0.b.b, true, var_0.a.b, var_0.b.a.x), global2[_wgslsmith_index_u32(var_0.c.x, 14u)], var_0.c.x, -1007f).a.c)), select(var_0.b.a.x | var_0.b.d, all(vec3<bool>(var_0.b.b, var_0.a.a.x, var_0.a.a.x)), all(vec3<bool>(var_0.a.b, var_0.a.a.x, false)))), var_0.c.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(var_0.c.x & 57385u), 20u)])).b, ~(~min(var_0.c.x, 4294967295u)), global1[_wgslsmith_index_u32(~var_0.c.x, 20u)]).b;
    global0 = array<Struct_2, 5>();
    var var_3 = Struct_2(func_2().b, Struct_1(var_2.a, true, _wgslsmith_f_op_vec2_f32(-var_0.a.c), false), _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(~var_0.c.x), ~(var_0.c.x & var_0.c.x), var_0.c.x), ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, 22249u), var_0.c), func_1().c)), vec2<i32>(~1i, -u_input.b));
    let var_4 = _wgslsmith_mod_u32(var_0.c.x << (var_3.c.x % 32u), func_1().c.x);
    global1 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.c.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(30503u & var_3.c.x, select(var_3.c.x, var_0.c.x, var_0.a.a.x)), 20u)])), _wgslsmith_f_op_f32(-var_0.b.c.x), 22207i, abs(~(var_0.c.yz >> (var_3.c.yx % vec2<u32>(32u))) | vec2<u32>(1u, ~10174u)));
}

