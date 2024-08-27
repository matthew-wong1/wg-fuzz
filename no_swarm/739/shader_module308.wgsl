struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: bool = true;

var<private> global2: array<f32, 31> = array<f32, 31>(240f, -405f, -618f, 423f, 855f, 991f, 459f, 791f, 337f, -118f, -486f, -378f, 374f, -1161f, 366f, 716f, -671f, 718f, 186f, 870f, -1347f, 1000f, -1302f, -1100f, 126f, -1000f, 1186f, -528f, 1447f, -936f, 420f);

var<private> global3: vec2<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(~max(vec2<u32>(9857u, 12680u), ~arg_0), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_0.x), ~vec2<u32>(4294967295u, 4294967295u) << (abs(arg_0) % vec2<u32>(32u)))), ~0u, vec4<i32>(_wgslsmith_sub_i32(1i, u_input.b.x), -_wgslsmith_clamp_i32(-1i, reverseBits(u_input.b.x), i32(-1i) * -14064i), abs(_wgslsmith_mult_i32(firstTrailingBit(u_input.a), u_input.b.x)), u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c & 32925u, 31u)], -208f, -534f, -673f) - vec4<f32>(-905f, 584f, -451f, _wgslsmith_f_op_f32(342f + arg_1.a))))));
    var var_2 = var_0.c.x;
    var_0 = Struct_1(vec2<u32>(global3.x, ~4294967295u >> (var_0.a.x % 32u)) << (~arg_0 % vec2<u32>(32u)), global3.x, var_0.c);
    let var_3 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, var_0.b), var_0.a, vec2<bool>(true, true)), reverseBits(~vec2<u32>(66571u, 4294967295u))), ~arg_0.x), _wgslsmith_mult_u32(~(u_input.c & 0u), 15910u) & 86797u, ~(~vec4<i32>(-31669i, -1i, u_input.a, u_input.a) >> ((~vec4<u32>(17903u, arg_0.x, 4294967295u, 19494u) >> ((vec4<u32>(1u, 40864u, arg_0.x, global3.x) | vec4<u32>(var_0.b, u_input.c, global3.x, 87724u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return var_0.a;
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = !vec2<bool>(true, !(true | all(vec4<bool>(arg_0, arg_0, arg_0, false))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1686f, 598f)))) * vec2<f32>(-1353f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 31u)] + global2[_wgslsmith_index_u32(4294967295u, 31u)]))) + vec2<f32>(global2[_wgslsmith_index_u32(87747u, 31u)], -263f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], 1183f) + vec2<f32>(-1674f, global2[_wgslsmith_index_u32(54451u, 31u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-195f, 274f) + vec2<f32>(global2[_wgslsmith_index_u32(45636u, 31u)], -415f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1785f, 629f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(70735u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)]))))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 31u)] * var_2.x))), global2[_wgslsmith_index_u32(45914u, 31u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-520f))));
    let var_4 = countOneBits(_wgslsmith_add_vec2_u32(func_3(vec2<u32>(~4294967295u, u_input.c), Struct_2(-162f)), vec2<u32>(_wgslsmith_add_u32(1u, ~29615u), global3.x ^ ~u_input.c)));
    return ((var_4 ^ abs(~vec2<u32>(global3.x, u_input.c))) >> (reverseBits(var_4) % vec2<u32>(32u))) & ~var_4;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstTrailingBit(~arg_0.b), 31u)] + global2[_wgslsmith_index_u32(func_3(arg_0.a, Struct_2(global2[_wgslsmith_index_u32(527u, 31u)])).x, 31u)]))));
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    let var_0 = func_4(Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(global3.x, u_input.c) >> (func_2(false) % vec2<u32>(32u)), ~select(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, u_input.c), true)), 75023u, ~vec4<i32>(25954i, ~1i, arg_0.x, _wgslsmith_add_i32(u_input.b.x, -2147483647i))));
    let var_1 = global3.x | 1u;
    let var_2 = Struct_1(~(~vec2<u32>(1u, 4294967295u >> (u_input.c % 32u))), u_input.c, vec4<i32>(-1i, countOneBits(1i), ~((-39520i ^ arg_0.x) & u_input.b.x), 20105i >> (min(firstTrailingBit(4294967295u), _wgslsmith_add_u32(global3.x, global3.x)) % 32u)));
    var var_3 = (all(vec4<bool>(true, true, true, true)) != false) & (any(vec4<bool>(true, true, true, true)) || !(!select(true, false, true)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 31u)] + 890f), -1845f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-717f, -1034f))))))))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.x, 31u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 31u)])))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a, 259f), _wgslsmith_f_op_f32(-var_0.a)))))));
    var var_2 = Struct_1(~(~(func_1(vec3<i32>(u_input.b.x, u_input.a, 2147483647i)) & vec2<u32>(global3.x, 23636u))), global3.x, firstLeadingBit(-vec4<i32>(-u_input.b.x, -5864i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, -30126i, u_input.a), vec4<i32>(75459i, 27596i, -2147483647i, u_input.b.x)), -1i ^ u_input.a)));
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(u_input.c, 31u)]);
    var var_4 = -(~(-1i));
    let var_5 = vec3<u32>(func_2(true).x, global3.x >> (0u % 32u), ~27112u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(_wgslsmith_mod_i32(u_input.b.x, 1i)), countOneBits(1i), _wgslsmith_dot_vec4_i32(~var_2.c, var_2.c)), firstTrailingBit(-select(~var_2.c.x, 34431i ^ u_input.a, false)), (abs(vec3<u32>(u_input.c, 26302u, global3.x)) ^ abs(~vec3<u32>(1u, 10161u, var_5.x))) ^ ~abs(vec3<u32>(u_input.c, 0u, 4294967295u)));
}

