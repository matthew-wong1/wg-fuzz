struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), -9886i), vec2<i32>(0i, 0i), vec2<i32>(40385i, 16826i), vec2<i32>(-7759i, i32(-2147483648)), vec2<i32>(32624i, 1i), vec2<i32>(-15407i, 17422i), vec2<i32>(-1619i, 15291i), vec2<i32>(-681i, -96064i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, -19767i), vec2<i32>(0i, 45796i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 38466i), vec2<i32>(39981i, -1i));

var<private> global2: vec3<bool>;

var<private> global3: array<u32, 16> = array<u32, 16>(4294967295u, 1u, 9691u, 1u, 19569u, 4294967295u, 1u, 22436u, 1u, 51541u, 27231u, 4294967295u, 4294967295u, 62744u, 4294967295u, 4294967295u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global3 = array<u32, 16>();
    let var_0 = 1344f;
    let var_1 = Struct_3(u_input.b, global0.b, global0.c, global0.d, arg_0);
    global3 = array<u32, 16>();
    let var_2 = min(_wgslsmith_clamp_u32(global0.e.c, global0.b.c, 1u), 4294967295u | ~(~_wgslsmith_mod_u32(global0.e.b, 0u)));
    return -1767f;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_4) -> u32 {
    var var_0 = vec2<f32>(-290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.b))));
    global0 = Struct_3(0u, global0.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-458f, 416f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-474f, global0.d), _wgslsmith_f_op_f32(-global0.d))))), _wgslsmith_f_op_f32(trunc(global0.d)), Struct_1(global0.e.a, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.a, _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(81943u, 34530u))), u_input.a << (~u_input.a % vec2<u32>(32u))), 46322u));
    var var_1 = Struct_2(Struct_1(global0.e.a, ~global0.a, 119107u), Struct_1(select(min(~vec3<i32>(-1i, 0i, 1i), global0.e.a), arg_2.a.a, _wgslsmith_f_op_f32(global0.d + var_0.x) != _wgslsmith_f_op_f32(-var_0.x)), global0.b.b, 4294967295u), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.a.a.x, firstLeadingBit(arg_2.a.a.x), arg_2.b.b.a.x >> (global3[_wgslsmith_index_u32(0u, 16u)] % 32u)), _wgslsmith_div_vec3_i32(select(global0.e.a, arg_2.a.a, vec3<bool>(false, true, false)) ^ vec3<i32>(30375i, 1i, u_input.c), vec3<i32>(-1i) * -vec3<i32>(global0.b.a.x, 61924i, 1i))), _wgslsmith_sub_u32(4294967295u, ~arg_2.b.e.b), arg_2.a);
    var var_2 = ~countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(9672i, u_input.c, -2147483647i, -12373i) | vec4<i32>(global0.b.a.x, u_input.c, -37275i, arg_2.b.e.a.x), vec4<i32>(arg_2.d.a.x, -2856i, var_1.c.x, 2147483647i))) ^ countOneBits(_wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, u_input.d.x, u_input.c, u_input.c), vec4<i32>(-1i, global0.b.a.x, u_input.d.x, var_1.b.a.x), true) << (~vec4<u32>(0u, 103609u, global0.b.b, 62710u) % vec4<u32>(32u)), vec4<i32>(firstTrailingBit(2147483647i), u_input.d.x, 1i, 0i)));
    global0 = Struct_3(_wgslsmith_sub_u32(firstLeadingBit(0u), ~var_1.d), Struct_1(vec3<i32>(countOneBits(-u_input.c), 39698i, -(~var_2.x)), global0.a, 1u), _wgslsmith_f_op_vec3_f32(global0.c - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -243f), -770f)), 1000f, arg_2.d);
    return _wgslsmith_dot_vec4_u32(reverseBits(abs(~(~vec4<u32>(4256u, 1u, 22183u, 2488u)))), ~select(vec4<u32>(81048u, _wgslsmith_div_u32(arg_2.b.b.c, 9820u), firstLeadingBit(var_1.a.c), ~u_input.a.x), vec4<u32>(u_input.a.x >> (var_1.a.c % 32u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~arg_2.a.c, u_input.b), global2.x));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = 0i;
    global0 = Struct_3(abs(0u ^ func_2(select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, true, false), vec3<bool>(true, global2.x, global2.x)), !vec3<bool>(true, global2.x, global2.x), Struct_4(global0.e, Struct_2(global0.e, global0.e, global0.e.a, global3[_wgslsmith_index_u32(u_input.b, 16u)], Struct_1(vec3<i32>(u_input.c, global0.e.a.x, global0.b.a.x), 12625u, u_input.b)), false, global0.b))), Struct_1(-vec3<i32>(17449i, countOneBits(-39233i), -23131i), ~(~global3[_wgslsmith_index_u32(~86362u, 16u)]), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 85080u, global3[_wgslsmith_index_u32(59716u, 16u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(867u, 16u)], 16u)])), _wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.e.c, 16u)], 16u)], global3[_wgslsmith_index_u32(u_input.a.x, 16u)], global0.e.b, global0.a), vec4<u32>(1u, 72581u, global0.b.c, 12099u), vec4<u32>(u_input.a.x, 4516u, global0.a, 25533u)) ^ ~vec4<u32>(global3[_wgslsmith_index_u32(35425u, 16u)], u_input.a.x, 54030u, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1524f, -1565f, -1555f), vec3<f32>(238f, 799f, 1000f), vec3<bool>(false, true, global2.x))) - _wgslsmith_f_op_vec3_f32(global0.c + vec3<f32>(-555f, 595f, arg_0))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(global0.b)))), global0.b);
    let var_1 = vec3<bool>(3208u == (global0.a >> (_wgslsmith_clamp_u32(global0.b.b, func_2(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, false, true), Struct_4(global0.b, Struct_2(Struct_1(vec3<i32>(34785i, global0.e.a.x, u_input.d.x), global0.a, global0.a), global0.b, global0.b.a, global0.e.c, Struct_1(global0.e.a, global0.e.b, 4294967295u)), global2.x, global0.b)), min(global0.e.b, 3189u)) % 32u)), !global2.x, !(_wgslsmith_div_u32(abs(global0.b.c), global3[_wgslsmith_index_u32(17199u, 16u)]) <= global3[_wgslsmith_index_u32(~24035u | _wgslsmith_div_u32(u_input.a.x, 34818u), 16u)]));
    global1 = array<vec2<i32>, 16>();
    let var_2 = vec4<i32>(~min(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, -12992i, u_input.d.x), vec4<i32>(global0.e.a.x, -39875i, 26689i, global0.e.a.x))), u_input.c), global0.e.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(-11580i, _wgslsmith_sub_i32(-3675i, -global0.e.a.x)), global0.e.a.x), u_input.c);
    return Struct_1(-(vec3<i32>(var_2.x, min(3006i, -32444i), global0.e.a.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(111944u, 6812u, u_input.b) ^ vec3<u32>(0u, 27596u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 16u)], global0.a, u_input.a.x), vec3<u32>(global0.b.c, u_input.a.x, u_input.a.x))) % vec3<u32>(32u))), u_input.b, ~(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(1u, 16u)]), 0u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]) ^ (_wgslsmith_sub_u32(19896u, 1u) << (~global0.e.c % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = vec2<i32>(19927i, -48841i);
    var_0 = ~global3[_wgslsmith_index_u32(global0.e.b, 16u)];
    let var_2 = Struct_2(global0.b, func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1905f, 139f)))), global0.d))), abs(-min(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, 1i, -2147483647i), global0.b.a), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -58015i, u_input.d.x), global0.b.a))), 0u, global0.e);
    let var_3 = Struct_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-168f)))), var_2, any(select(vec4<bool>(global2.x, true, global2.x, global2.x != true), vec4<bool>(false, true, true, var_2.c.x == -2147483647i), !vec4<bool>(false, false, global2.x, global2.x))), var_2.a);
    let var_4 = Struct_3(firstLeadingBit(_wgslsmith_mod_u32(9120u, 80121u >> (u_input.b % 32u))), Struct_1(~abs(vec3<i32>(-16438i, u_input.c, u_input.d.x)), u_input.a.x, firstLeadingBit(33096u << (u_input.a.x % 32u)) << (var_2.a.c % 32u)), global0.c, _wgslsmith_f_op_f32(sign(-216f)), Struct_1(-(var_2.e.a ^ var_3.d.a), 1u, _wgslsmith_mod_u32(u_input.a.x, ~select(68537u, 29848u, var_3.c))));
    let var_5 = Struct_2(Struct_1(max(firstLeadingBit(~vec3<i32>(global0.b.a.x, var_2.a.a.x, u_input.c)), ~(-var_3.d.a)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(13284u, 16u)], 1u, u_input.a.x), vec3<u32>(var_4.e.b, var_4.b.c, global3[_wgslsmith_index_u32(var_3.a.b, 16u)])), global3[_wgslsmith_index_u32(u_input.b, 16u)], ~1u), 0u), var_2.a, ~_wgslsmith_mult_vec3_i32(vec3<i32>(~var_4.e.a.x, _wgslsmith_dot_vec2_i32(var_4.e.a.yy, vec2<i32>(-1i, 11237i)), -u_input.d.x), vec3<i32>(var_3.d.a.x, _wgslsmith_mult_i32(1i, 0i), 0i)), 36174u, func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -970f)))));
    global2 = select(!(!vec3<bool>(all(vec3<bool>(var_3.c, var_3.c, false)), all(vec3<bool>(false, true, global2.x)), false)), select(select(select(!vec3<bool>(var_3.c, true, global2.x), vec3<bool>(global2.x, false, var_3.c), !vec3<bool>(false, global2.x, global2.x)), !(!vec3<bool>(false, true, var_3.c)), select(!vec3<bool>(global2.x, var_3.c, true), !vec3<bool>(var_3.c, var_3.c, true), vec3<bool>(global2.x, global2.x, false))), select(select(select(vec3<bool>(true, false, global2.x), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, global2.x, global2.x), true), !global2.x), select(select(vec3<bool>(global2.x, false, false), vec3<bool>(true, false, global2.x), true), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, false, var_3.c), vec3<bool>(global2.x, false, var_3.c)), vec3<bool>(true, true, true)), !all(vec4<bool>(var_3.c, global2.x, true, global2.x))), select(vec3<bool>(select(global2.x, global2.x, false), true, var_3.c), !select(vec3<bool>(var_3.c, false, true), vec3<bool>(true, global2.x, true), vec3<bool>(false, var_3.c, true)), 23744u <= ~var_3.d.c)), !select(vec3<bool>(var_3.c, any(vec3<bool>(false, var_3.c, global2.x)), true), !select(vec3<bool>(global2.x, false, true), vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, var_3.c, false)), !(var_2.a.b != 4294967295u)));
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a.a, var_4.d);
}

