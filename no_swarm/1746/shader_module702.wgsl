struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, false, false, false);

var<private> global1: Struct_4;

var<private> global2: array<u32, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>) -> vec3<bool> {
    let var_0 = all(select(!(!select(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(0u, 4u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 4u)], true, true), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.c.x, 28u)], 4u)])), vec4<bool>(false, all(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(arg_0, 4u)])), all(vec4<bool>(global0[_wgslsmith_index_u32(14129u, 4u)], false, false, true)), global0[_wgslsmith_index_u32(arg_0, 4u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(arg_1.b, 4u)], global0[_wgslsmith_index_u32(52100u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(global0[_wgslsmith_index_u32(27961u, 4u)], false, global0[_wgslsmith_index_u32(arg_1.c.x, 4u)], global0[_wgslsmith_index_u32(42837u, 4u)])), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 4u)], true, global0[_wgslsmith_index_u32(arg_1.c.x, 4u)])), vec4<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(44016u, 4u)], global0[_wgslsmith_index_u32(arg_2.x, 4u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 28u)], 4u)])), global0[_wgslsmith_index_u32(75392u, 4u)] || global0[_wgslsmith_index_u32(u_input.b.x, 4u)], !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 4u)], false))));
    global0 = array<bool, 4>();
    let var_1 = -28356i;
    global2 = array<u32, 28>();
    global2 = array<u32, 28>();
    return vec3<bool>(true, global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global2[_wgslsmith_index_u32(arg_2.x, 28u)], 13875u, arg_2.x))), 4u)], var_0);
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = any(vec3<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, u_input.b.x), 4u)], false));
    var var_1 = global1.b.b.a;
    let var_2 = Struct_5(~select(~vec3<i32>(0i, global1.b.a, arg_0), u_input.a.wzy, select(vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27011u, 28u)], 28u)], 4u)], false, true), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 4u)]), func_3(1u, Struct_3(vec2<f32>(312f, 706f), global2[_wgslsmith_index_u32(u_input.b.x, 28u)], vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25279u, 28u)], 28u)], 0u, 1u)), vec2<u32>(u_input.b.x, global2[_wgslsmith_index_u32(88658u, 28u)])))), _wgslsmith_f_op_f32(-global1.a.x));
    let var_3 = !all(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], !global0[_wgslsmith_index_u32(43615u, 4u)]), func_3(~4294967295u, Struct_3(global1.b.b.b.yx, 0u, vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b.x, global2[_wgslsmith_index_u32(1u, 28u)], 1u)), u_input.b.xx).yy, vec2<bool>(true, false)));
    global0 = array<bool, 4>();
    return Struct_4(vec2<f32>(var_2.b, global1.a.x), Struct_2(-49511i, global1.b.b, vec2<f32>(var_2.b, _wgslsmith_f_op_f32(-var_2.b))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: u32) -> Struct_5 {
    global0 = array<bool, 4>();
    let var_0 = ~(~vec4<i32>(arg_1.a.x, _wgslsmith_mult_i32(global1.b.a, global1.b.b.a.x), -1i ^ global1.b.a, -arg_1.a.x) & ~vec4<i32>(-arg_0.b.a, min(global1.b.a, arg_0.b.a), -9732i, func_2(2147483647i).b.a));
    global2 = array<u32, 28>();
    global0 = array<bool, 4>();
    var var_1 = true;
    return Struct_5(select(abs(-(~arg_0.b.b.a)), vec3<i32>(~_wgslsmith_div_i32(0i, arg_0.b.a), countOneBits(firstTrailingBit(u_input.a.x)), -2147483647i), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2, 4u)], global0[_wgslsmith_index_u32(arg_2, 4u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.b - 662f))) * _wgslsmith_div_f32(-898f, arg_1.b)) * -645f));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    var var_0 = func_4(func_2(_wgslsmith_clamp_i32(-9059i, -2147483647i, u_input.a.x)), Struct_5(abs(~global1.b.b.a), _wgslsmith_f_op_f32(global1.b.b.c.x - -263f)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, 1u, global2[_wgslsmith_index_u32(59310u, 28u)], 41024u >> (u_input.b.x % 32u)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(38799u, u_input.b.x, u_input.b.x, 1u)), select(vec4<u32>(u_input.b.x, 90662u, global2[_wgslsmith_index_u32(24028u, 28u)], global2[_wgslsmith_index_u32(31548u, 28u)]), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 48245u), false), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 28u)], 20378u, 10276u, 4294967295u)), firstLeadingBit(vec4<u32>(21414u, 33509u, u_input.b.x, 77199u) | vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 1u, 4294967295u))), firstLeadingBit(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b.x, 107329u, u_input.b.x, 4294967295u), vec4<u32>(15362u, 4294967295u, u_input.b.x, global2[_wgslsmith_index_u32(29227u, 28u)]), false), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 31948u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b.b.b.x)) + -1000f);
    let var_2 = global0[_wgslsmith_index_u32(3463u, 4u)];
    global1 = func_2(_wgslsmith_add_i32(var_0.a.x, -14537i));
    var var_3 = reverseBits(~_wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(60629u, 28u)], 24332u, u_input.b.x) ^ u_input.b, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 69422u, u_input.b.x), vec4<u32>(0u, u_input.b.x, 4294967295u, 49562u)), ~global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 14494u)));
    return global0[_wgslsmith_index_u32(101573u, 4u)] || (-1000f != _wgslsmith_f_op_f32(round(-638f)));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_5 {
    var var_0 = select(func_3(_wgslsmith_mult_u32(abs(u_input.b.x) >> (~4294967295u % 32u), u_input.b.x), arg_0, vec2<u32>(arg_0.b, 1u)), select(vec3<bool>(true, !arg_1, false), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(arg_0.c.x, 28u)], 0u), 28u)], 4u)], _wgslsmith_f_op_f32(-global1.a.x) == _wgslsmith_f_op_f32(-global1.a.x), func_1(vec3<f32>(arg_0.a.x, global1.a.x, 134f))), func_1(global1.b.b.b)), true);
    var var_1 = func_2(global1.b.b.a.x).b.b;
    global2 = array<u32, 28>();
    global2 = array<u32, 28>();
    global0 = array<bool, 4>();
    return func_4(Struct_4(_wgslsmith_f_op_vec2_f32(arg_0.a + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(286f, global1.a.x) + global1.a), vec2<f32>(1183f, global1.b.c.x), var_0.xy))), Struct_2(var_1.a.x, global1.b.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -623f)), _wgslsmith_div_vec2_f32(vec2<f32>(1195f, -675f), global1.a)))), Struct_5(vec3<i32>(global1.b.b.a.x, ~u_input.a.x, u_input.a.x) << (reverseBits(u_input.b) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.b.b.x)))))), abs(~_wgslsmith_sub_u32(65827u, ~u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(vec3<i32>(-1i, abs(abs(1i)), -35220i), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))));
    let var_1 = (var_0.a & vec3<i32>(abs(0i & global1.b.b.a.x), 36033i, global1.b.a)) >> (u_input.b % vec3<u32>(32u));
    global1 = Struct_4(global1.b.c, global1.b);
    var var_2 = Struct_5(var_0.a, var_0.b);
    let var_3 = global1.b;
    var_2 = func_5(Struct_3(var_3.b.b.yx, select(u_input.b.x, 0u, func_1(global1.b.b.b)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, 0u, 4294967295u, 18862u)), (vec4<u32>(global2[_wgslsmith_index_u32(75556u, 28u)], 0u, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 0u) ^ vec4<u32>(13470u, 41473u, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 71980u)) ^ ~vec4<u32>(0u, u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b.x))), all(select(func_3(max(4294967295u, 68828u), Struct_3(var_3.c, 61589u, vec4<u32>(36043u, 1u, 31434u, 4294967295u)), _wgslsmith_add_vec2_u32(u_input.b.yz, u_input.b.zy)).yy, !vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], true), func_3(_wgslsmith_div_u32(45509u, u_input.b.x), Struct_3(global1.a, 1u, vec4<u32>(global2[_wgslsmith_index_u32(2830u, 28u)], u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17692u, 28u)], 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)])), u_input.b.xx & vec2<u32>(0u, 0u)).x)));
    var var_4 = Struct_5(-u_input.a.wyy, -1657f);
    var var_5 = func_4(Struct_4(global1.b.c, Struct_2(_wgslsmith_mod_i32(u_input.a.x, var_4.a.x), Struct_1(_wgslsmith_mult_vec3_i32(var_4.a, vec3<i32>(47212i, -2147483647i, 59841i)), _wgslsmith_f_op_vec3_f32(var_3.b.b + vec3<f32>(var_0.b, var_3.c.x, var_4.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(422f, 280f) - var_3.c)), vec2<f32>(-370f, _wgslsmith_f_op_f32(var_2.b + var_4.b)))), func_5(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-187f, -972f), var_3.c) - vec2<f32>(var_3.b.c.x, var_0.b)), ~91073u, ~vec4<u32>(1u, global2[_wgslsmith_index_u32(64152u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7745u, 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)]) & select(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30189u, 28u)], 28u)], u_input.b.x, 34290u, 50284u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 4294967295u, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b.x), false)), any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 28u)], 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], true)), vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(u_input.b.x, 4u)]), false))), 1u).a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(f32(-1f) * -2207f));
}

