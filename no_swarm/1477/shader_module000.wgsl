struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(i32(-2147483648), 205f, vec4<u32>(63854u, 4294967295u, 77847u, 4294967295u)));

var<private> global1: u32 = 39751u;

var<private> global2: array<i32, 20> = array<i32, 20>(i32(-2147483648), 3763i, -55803i, 57259i, 47687i, -1i, -1i, 1i, 2147483647i, i32(-2147483648), 1i, 0i, 2147483647i, 1i, -1935i, 1i, 0i, -1i, 1i, -19380i);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(~firstLeadingBit(47386u)), 4175u), 20u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.b))), -326f), u_input.b.x < select(_wgslsmith_dot_vec3_u32(global3.c.zxx, vec3<u32>(1u, 1u, 4294967295u)), u_input.b.x, all(vec2<bool>(arg_0.x, arg_0.x))))), vec4<u32>(~u_input.b.x, u_input.c, ~34915u, ~(global0.a.c.x >> (global3.c.x % 32u))));
    global0 = Struct_2(global0.a);
    global3 = Struct_1(arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f * _wgslsmith_f_op_f32(step(global3.b, -312f)))), -156f)), ~(_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_0.c.x, global3.c.x, global3.c.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.c.x, 4294967295u, u_input.c, var_0.c.x), global3.c)) << (var_0.c % vec4<u32>(32u))));
    let var_1 = Struct_1(global0.a.a, 1000f, _wgslsmith_mult_vec4_u32(vec4<u32>(~firstTrailingBit(32041u), 4294967295u, _wgslsmith_div_u32(select(7545u, 1u, false), u_input.b.x), _wgslsmith_clamp_u32(51003u, 4294967295u >> (1u % 32u), global3.c.x ^ 1u)), _wgslsmith_mod_vec4_u32(global0.a.c, vec4<u32>(global3.c.x, ~u_input.b.x, global3.c.x, 22016u))));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(select(countOneBits(arg_1), vec4<i32>(global2[_wgslsmith_index_u32(global3.c.x, 20u)], global3.a, global3.a, global3.a) | arg_1, arg_0.x)), min(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -6428i), vec2<i32>(-10590i, var_0.a)), 0i, max(var_0.a, 1i)), vec4<i32>(firstLeadingBit(2147483647i), select(global0.a.a, global2[_wgslsmith_index_u32(var_1.c.x, 20u)], arg_0.x), 1i, var_0.a))), arg_1.x);
    return _wgslsmith_mod_u32(firstLeadingBit(4294967295u), firstLeadingBit(_wgslsmith_mod_u32(~(var_1.c.x & 4294967295u), abs(_wgslsmith_sub_u32(global3.c.x, global0.a.c.x)))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_5 {
    let var_0 = func_3(vec2<bool>(false, true), -max(firstTrailingBit(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 20u)], global3.a, -1i, -9957i)), -vec4<i32>(global0.a.a, -2147483647i, global2[_wgslsmith_index_u32(global3.c.x, 20u)], -1i) | vec4<i32>(-2147483647i, 1i, -1i, -2147483647i)));
    var var_1 = ~1u;
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(0u, ~var_0 & ~1u), ~1u, global3.c.x), global3.c.zyx);
    var var_3 = -847f;
    let var_4 = !(!(global3.b != _wgslsmith_f_op_f32(-arg_1))) == (arg_0 <= countOneBits(~(-9378i)));
    return Struct_5(~vec2<i32>(countOneBits(abs(-2147483647i)), global3.a), Struct_1(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f)), vec4<u32>(var_2.x, abs(41636u), _wgslsmith_div_u32(var_2.x, 0u), 17600u)));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_5) -> f32 {
    let var_0 = Struct_3(global0.a.b);
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_i32(select(-1348i, global0.a.a, arg_0), ~global2[_wgslsmith_index_u32(arg_1.b.c.x, 20u)]) >> (15913u % 32u), var_0.a, ~_wgslsmith_mult_vec4_u32(arg_2.b.c, arg_1.b.c)));
    var var_2 = Struct_4(firstLeadingBit(firstLeadingBit(vec4<i32>(global3.a, -1i, arg_2.a.x, -14128i) >> (global3.c % vec4<u32>(32u))) >> (vec4<u32>(54112u, arg_1.b.c.x, arg_2.b.c.x, ~arg_2.b.c.x) % vec4<u32>(32u))), reverseBits(vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(select(var_1.a.c.x, var_1.a.c.x, false), u_input.c << (0u % 32u)), 20u)], -_wgslsmith_sub_i32(global0.a.a, global0.a.a))));
    var var_3 = ~vec4<u32>(abs(var_1.a.c.x), u_input.c, arg_2.b.c.x >> (abs(global0.a.c.x) % 32u), ~_wgslsmith_mult_u32(var_1.a.c.x, u_input.c << (arg_2.b.c.x % 32u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_div_f32(global3.b, 1524f)), var_0.a, 360f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b.b))), _wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.b, -868f)) - -953f))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.b * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1662f, 385f)))))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4, arg_3: vec3<f32>) -> i32 {
    global0 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(global0.a.c.x, 20u)], _wgslsmith_f_op_f32(-arg_0.a), vec4<u32>(u_input.b.x, global3.c.x, max(abs(50861u), ~global3.c.x), 1u)));
    var var_0 = global0.a.a;
    var var_1 = vec4<f32>(-372f, _wgslsmith_f_op_f32(func_4(true, Struct_5(-(arg_2.b | vec2<i32>(global3.a, arg_2.a.x)), Struct_1(select(1i, 0i, true), global3.b, max(global3.c, vec4<u32>(u_input.b.x, 14194u, 0u, global3.c.x)))), func_2(_wgslsmith_div_i32(1i << (global3.c.x % 32u), 37981i), 616f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1, arg_0.a), _wgslsmith_f_op_f32(max(global3.b, global3.b))))))), 256f, _wgslsmith_f_op_f32(sign(arg_1)));
    var_0 = -1i;
    global1 = _wgslsmith_sub_u32(u_input.a, ~40486u);
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(i32(-1i) * -select(2147483647i, global3.a, false), -20911i), global2[_wgslsmith_index_u32(4294967295u >> (1u % 32u), 20u)] | global0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(-vec2<i32>(global0.a.a, func_1(Struct_3(501f), -1000f, Struct_4(vec4<i32>(global2[_wgslsmith_index_u32(0u, 20u)], -1i, 0i, -6119i), vec2<i32>(global0.a.a, 1i)), vec3<f32>(164f, -996f, 603f)))));
    let var_1 = Struct_1(i32(-1i) * -3595i, _wgslsmith_f_op_f32(f32(-1f) * -1000f), countOneBits(vec4<u32>(_wgslsmith_div_u32(u_input.a, 2073u), 1u, _wgslsmith_mod_u32(global0.a.c.x, 25685u), 83837u & u_input.a)) >> (_wgslsmith_sub_vec4_u32(global3.c, min(global3.c, vec4<u32>(global0.a.c.x, 4294967295u, global0.a.c.x, u_input.a))) % vec4<u32>(32u)));
    let var_2 = ~(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.x, -1i, 1i), vec4<i32>(var_0.x, global0.a.a, 1i, global2[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec4<i32>(global0.a.a, 1i, global0.a.a, global3.a)), vec4<i32>(global3.a, 2147483647i, global3.a, var_0.x)) << (~var_1.c % vec4<u32>(32u))) | ~(vec4<i32>(-1i) * -select(vec4<i32>(-32347i, var_0.x, -2147483647i, global0.a.a), vec4<i32>(0i, -64460i, 0i, var_0.x), vec4<bool>(false, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2 & select(vec4<i32>(44766i, 31196i, global2[_wgslsmith_index_u32(u_input.a, 20u)], 2392i), var_2, false)) ^ _wgslsmith_div_vec4_i32(abs(vec4<i32>(global2[_wgslsmith_index_u32(1u, 20u)], -2147483647i, -17715i, 1i)), vec4<i32>(-1i, global3.a, -var_0.x, -2147483647i)), min(func_2(-var_0.x << (~global3.c.x % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1985f)) - _wgslsmith_f_op_f32(step(-711f, global3.b))), -605f).a, reverseBits(firstTrailingBit(var_0) >> (_wgslsmith_sub_vec2_u32(global0.a.c.ww, u_input.b.zx) % vec2<u32>(32u)))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(func_2(var_2.x, 3014f, 334f).b.c.x, ~1u, var_1.c.x), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.c.x, 4294967295u, 0u), u_input.b.xxz, u_input.b.zyx)), ~abs(var_2.wy));
}

