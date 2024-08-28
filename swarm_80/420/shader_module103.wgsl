struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<u32>(7250u, 1u, 4294967295u, 0u)), Struct_1(vec4<u32>(0u, 7150u, 1u, 4294967295u)), Struct_1(vec4<u32>(85081u, 4294967295u, 3417u, 30208u)), Struct_1(vec4<u32>(70844u, 19844u, 0u, 1u)));

var<private> global1: array<u32, 10> = array<u32, 10>(64168u, 0u, 29063u, 4294967295u, 0u, 4294967295u, 88131u, 8401u, 15415u, 0u);

var<private> global2: array<f32, 2> = array<f32, 2>(-270f, -1008f);

var<private> global3: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<u32> {
    global0 = array<Struct_1, 4>();
    let var_0 = Struct_4(Struct_2(arg_2.c.x, arg_0, vec2<i32>(-1i, -1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.x, ~arg_0.a.x) & global1[_wgslsmith_index_u32(arg_0.a.x, 10u)], 4u)]));
    global1 = array<u32, 10>();
    global2 = array<f32, 2>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 2u)], -818f)))))) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 2u)]));
    return ~(~vec3<u32>(1u, ~4294967295u, _wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.b.a.x, 10u)], 10u)])) << (vec3<u32>(var_0.a.b.a.x, arg_0.a.x, ~1u) % vec3<u32>(32u)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(3238u, 2u)]))) + _wgslsmith_f_op_f32(760f - 786f))) - global2[_wgslsmith_index_u32(~func_1(Struct_1(abs(vec4<u32>(global1[_wgslsmith_index_u32(13707u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 77202u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76455u, 10u)], 10u)]))), true, Struct_2(arg_1.x << (93427u % 32u), Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 0u, global1[_wgslsmith_index_u32(0u, 10u)])), ~vec2<i32>(1i, arg_1.x), Struct_1(vec4<u32>(19607u, 4304u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30334u, 10u)], 10u)], 10u)]))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36690u, 10u)], 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], 1496f) - vec3<f32>(1000f, -1004f, global2[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(909f, global2[_wgslsmith_index_u32(0u, 2u)], -1017f))))).x, 2u)]);
    let var_1 = Struct_2(abs(_wgslsmith_dot_vec2_i32(arg_1.yz, _wgslsmith_mult_vec2_i32(arg_1.xy, arg_1.xz >> (vec2<u32>(0u, 57328u) % vec2<u32>(32u))))), Struct_1(~(~(vec4<u32>(1u, 28400u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)]) >> (vec4<u32>(global1[_wgslsmith_index_u32(47339u, 10u)], 1u, 4294967295u, global1[_wgslsmith_index_u32(0u, 10u)]) % vec4<u32>(32u))))), firstLeadingBit(vec2<i32>(firstTrailingBit(68004i), abs(reverseBits(9668i)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~108330u), ~(~58366u), global1[_wgslsmith_index_u32(0u, 10u)], ~(~1u)), vec4<u32>(~(~0u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)] >> (1u % 32u), 10u)] >> (firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)]) % 32u), ~(~global1[_wgslsmith_index_u32(1u, 10u)]), global1[_wgslsmith_index_u32(~select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(22108u, 10u)], arg_0), 10u)])), 4u)]);
    let var_2 = Struct_2(0i, Struct_1(var_1.b.a), vec2<i32>(-_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(28825i, var_1.a, 1i), vec3<i32>(31211i, -2147483647i, var_1.c.x))), 19i | var_1.a), Struct_1((var_1.b.a >> (~var_1.b.a % vec4<u32>(32u))) & ~(~var_1.b.a)));
    global1 = array<u32, 10>();
    global1 = array<u32, 10>();
    return _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 2u)]);
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    let var_1 = vec3<f32>(-350f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 10u)], 2u)], -103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.a.x, arg_0.x), abs(var_0.a.x)), 10u)], 2u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 2u)]) - _wgslsmith_f_op_f32(round(443f))) + -124f)));
    return Struct_3(vec3<i32>(1i, ~_wgslsmith_mult_i32(u_input.b, -40577i << (global1[_wgslsmith_index_u32(1u, 10u)] % 32u)), -54993i), countOneBits(vec3<i32>(~1i, u_input.a, abs(-36345i))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 10u)], ~func_1(Struct_1(vec4<u32>(58376u, 46284u, arg_0.x, arg_0.x)), false, Struct_2(u_input.b, Struct_1(var_0.a), vec2<i32>(2147483647i, u_input.b), Struct_1(vec4<u32>(arg_0.x, arg_0.x, 1u, 0u))), var_1).x), 1u), 4u)], var_1, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, vec3<i32>(0i, -1i, u_input.a))) + _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(1u, 2u)])))), 257f));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(arg_0.d, _wgslsmith_f_op_vec3_f32(arg_0.d - func_2(reverseBits(~arg_0.c.a.yzw)).d)));
    var var_1 = arg_2.a.d.a.xw;
    let var_2 = vec2<u32>(arg_2.a.d.a.x, var_1.x);
    global0 = array<Struct_1, 4>();
    var var_3 = _wgslsmith_f_op_f32(-func_2(~arg_2.a.b.a.wwz >> (min(~arg_0.c.a.xyz, arg_2.a.d.a.xww | arg_2.a.d.a.zww) % vec3<u32>(32u))).e.x);
    return Struct_3(~arg_0.a, arg_0.a, arg_2.a.b, var_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(arg_0.c.a.x, 2u)]))))), 429f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    let var_0 = func_4(func_2(~max(_wgslsmith_sub_vec3_u32(vec3<u32>(39532u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80117u, 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)])), func_1(Struct_1(vec4<u32>(1u, 1u, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50471u, 10u)], 10u)], 10u)])), false, Struct_2(-14267i, Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(62049u, 10u)], 4294967295u, 4294967295u, 4294967295u)), vec2<i32>(u_input.b, 50294i), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 4u)]), vec3<f32>(global2[_wgslsmith_index_u32(52229u, 2u)], -2077f, 1770f)))), func_2(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43155u, 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(96219u, 10u)], 10u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 1u, 58399u)), select(vec3<u32>(8124u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)]), vec3<u32>(45358u, 69001u, global1[_wgslsmith_index_u32(4294967295u, 10u)]), true)), select(select(vec3<u32>(0u, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51068u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(18703u, 10u)], 9304u), vec3<bool>(true, false, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(30000u, 10u)], 0u), vec3<u32>(29418u, global1[_wgslsmith_index_u32(0u, 10u)], 103177u)), true))).a.x, Struct_4(Struct_2(-(u_input.b << (1u % 32u)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~15547u, 10u)], 4u)], func_2(vec3<u32>(12261u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28559u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)])).a.yy | -vec2<i32>(u_input.b, -1i), func_2(vec3<u32>(37445u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22336u, 10u)], 10u)])).c)), vec4<bool>(true, true, true, !(any(vec3<bool>(false, true, true)) | true)));
    var var_1 = !vec4<bool>(all(vec3<bool>(true, true, true)), true, !any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), all(vec3<bool>(true, true, true)));
    global2 = array<f32, 2>();
    let var_2 = Struct_2(~_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, 8920i, 1i), vec4<i32>(-13169i, -1i, -285i, -50936i))), -(u_input.a ^ var_0.a.x)), func_2(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.c.a.yxy, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60335u, 10u)], 10u)], 45496u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)]), var_0.c.a.yxw) & var_0.c.a.yzw, vec3<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 64038u), global1[_wgslsmith_index_u32(~var_0.c.a.x, 10u)], var_0.c.a.x))).c, select(-func_2(var_0.c.a.yyw).b.xz, var_0.b.yx, var_1.wy), Struct_1(~vec4<u32>(max(1u, 4294967295u), ~11206u, _wgslsmith_mod_u32(var_0.c.a.x, var_0.c.a.x), global1[_wgslsmith_index_u32(4294967295u, 10u)])));
    var var_3 = vec4<u32>(44103u, 0u, var_0.c.a.x, var_2.b.a.x);
    global2 = array<f32, 2>();
    var var_4 = vec3<u32>(func_1(Struct_1(~(~var_2.b.a)), true, var_2, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.e.x)) + _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_2.d.a.x, 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49557u, 10u)], 2u)], var_0.e.x)))).x, var_0.c.a.x, ~(var_3.x >> (global1[_wgslsmith_index_u32(var_3.x, 10u)] % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.wyw, -(func_4(func_2(var_2.d.a.wzz), -25559i, Struct_4(Struct_2(-22311i, Struct_1(var_0.c.a), var_2.c, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63128u, 10u)], 4u)])), !vec4<bool>(false, false, var_1.x, false)).a.xx >> (var_3.yz % vec2<u32>(32u))), vec4<i32>(-_wgslsmith_div_i32(-var_0.a.x, 79079i | var_2.c.x), ~34738i, var_0.b.x, 0i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_2.b.a.x, 2u)] * var_0.e.x), _wgslsmith_f_op_f32(-var_0.d.x), 879f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 2u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-709f, global2[_wgslsmith_index_u32(4294967295u, 2u)], 931f, 448f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_0.c.a.x, 2u)])), -826f, 989f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(76289u, 2u)]))))), ~1u);
}

