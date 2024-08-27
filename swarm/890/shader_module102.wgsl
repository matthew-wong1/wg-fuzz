struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(10027i, 2018f), Struct_2(-22597i, -814f), Struct_2(i32(-2147483648), -551f), Struct_2(-25147i, 609f), Struct_2(-21578i, -554f), Struct_2(-14308i, -1182f), Struct_2(36938i, 223f), Struct_2(1i, 190f), Struct_2(16944i, 1834f), Struct_2(1473i, -408f), Struct_2(-74325i, -594f), Struct_2(-59537i, -1687f), Struct_2(1i, 430f), Struct_2(304i, -639f), Struct_2(0i, 1289f), Struct_2(47980i, 307f), Struct_2(-1i, 1014f), Struct_2(i32(-2147483648), -693f), Struct_2(-7394i, 281f), Struct_2(2147483647i, 1071f), Struct_2(1i, -1149f));

var<private> global2: array<vec4<bool>, 11>;

var<private> global3: array<f32, 18>;

var<private> global4: array<vec4<i32>, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec2<bool>) -> vec3<bool> {
    global2 = array<vec4<bool>, 11>();
    global3 = array<f32, 18>();
    let var_0 = arg_1;
    global1 = array<Struct_2, 21>();
    var var_1 = Struct_2(-46597i, arg_1.b.b);
    return !vec3<bool>(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1.b.a, var_1.a), -1i) >= _wgslsmith_sub_i32(1i, -3177i), any(vec2<bool>(arg_2.x, true)), !any(select(vec3<bool>(arg_2.x, false, var_0.c.c), vec3<bool>(arg_1.c.c, arg_1.c.c, true), vec3<bool>(false, false, false))));
}

fn func_2(arg_0: i32, arg_1: f32) -> bool {
    global1 = array<Struct_2, 21>();
    let var_0 = arg_0;
    return any(select(select(!func_3(vec2<u32>(1u, 41782u), Struct_4(1u, Struct_2(0i, -598f), Struct_3(vec2<i32>(arg_0, var_0), Struct_2(45024i, global3[_wgslsmith_index_u32(21088u, 18u)]), true, vec3<i32>(arg_0, arg_0, arg_0))), vec2<bool>(true, true)), vec3<bool>(true, true, false), vec3<bool>(all(global2[_wgslsmith_index_u32(4294967295u, 11u)]), true, func_3(vec2<u32>(35279u, 64228u), Struct_4(0u, Struct_2(var_0, 416f), Struct_3(vec2<i32>(-12743i, 1i), global1[_wgslsmith_index_u32(72870u, 21u)], false, vec3<i32>(var_0, 46084i, 1i))), vec2<bool>(false, true)).x)), vec3<bool>(true, !(2147483647i >= u_input.a), any(vec4<bool>(true, true, false, true))), select(func_3(vec2<u32>(1u, 1u), Struct_4(1331u, global1[_wgslsmith_index_u32(9941u, 21u)], Struct_3(vec2<i32>(u_input.a, u_input.a), global1[_wgslsmith_index_u32(4294967295u, 21u)], true, vec3<i32>(u_input.a, arg_0, u_input.a))), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = true;
    var_0 = true;
    var var_1 = Struct_4(_wgslsmith_sub_u32(4294967295u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 17014u)), ~(~1u)), Struct_2(-1i, -513f), Struct_3(_wgslsmith_mult_vec2_i32(max(vec2<i32>(0i, u_input.a), vec2<i32>(0i, arg_0)), vec2<i32>(1i, arg_0) & vec2<i32>(0i, 21922i)) & _wgslsmith_div_vec2_i32(~vec2<i32>(0i, arg_0), vec2<i32>(2147483647i, 1i)), Struct_2(arg_0, _wgslsmith_f_op_f32(-1500f - 1947f)), any(vec3<bool>(func_2(u_input.a, 232f), true, all(vec3<bool>(true, true, true)))), vec3<i32>(arg_0, -u_input.a, u_input.a) & ~(vec3<i32>(u_input.a, 1i, -5171i) | vec3<i32>(u_input.a, -2147483647i, 1i))));
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(~var_1.a, var_1.a << (51073u % 32u)) & var_1.a, var_1.a), var_1.a);
    var var_3 = ~(~_wgslsmith_mult_vec4_u32(select(~vec4<u32>(var_2.b, 8462u, var_2.b, var_1.a), ~vec4<u32>(var_2.b, var_2.b, 0u, 15032u), func_2(0i, -278f)), vec4<u32>(var_1.a, 34498u | var_2.a.x, ~var_1.a, abs(var_1.a))));
    return ~91430u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3[_wgslsmith_index_u32(48467u, 18u)], 172f, global3[_wgslsmith_index_u32(2479u, 18u)], global3[_wgslsmith_index_u32(77626u, 18u)]))))), vec4<f32>(-999f, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 18u)])), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(14122u, 1u), 18u)], _wgslsmith_f_op_f32(1388f + global3[_wgslsmith_index_u32(0u, 18u)])), !select(global2[_wgslsmith_index_u32(4294967295u, 11u)], vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(0u, 18u)], 1230f, global3[_wgslsmith_index_u32(57604u, 18u)]) - vec4<f32>(1311f, -577f, global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(41622u, 18u)])) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(13076u, 18u)], -1205f, -740f, 498f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(159f, -975f, -1000f, -768f)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~10153u, 18u)] - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-185f)))))) + var_0.x);
    let var_2 = max(select(vec4<u32>(abs(4294967295u), ~75651u, ~55683u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 89326u, 44939u, 124994u), ~vec4<u32>(1u, 0u, 0u, 1u)), vec4<bool>(any(vec3<bool>(false, true, true)), any(global2[_wgslsmith_index_u32(4294967295u, 11u)]), true, true)), ~vec4<u32>(1u, 1u, 1u, 1u)) << (vec4<u32>(47845u, func_1(0i), 6596u, 4294967295u) % vec4<u32>(32u));
    var var_3 = true;
    var_1 = _wgslsmith_f_op_f32(round(714f));
    let var_4 = -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a, 0i, u_input.a, i32(-1i) * -20482i), countOneBits(~vec4<i32>(u_input.a, 2147483647i, 1i, -2147483647i))), u_input.a);
    var var_5 = _wgslsmith_sub_u32(~firstTrailingBit(_wgslsmith_add_u32(~4294967295u, 47743u)), _wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec3_u32(var_2.zzz << (vec3<u32>(var_2.x, var_2.x, var_2.x) % vec3<u32>(32u)), min(vec3<u32>(var_2.x, var_2.x, 14584u), vec3<u32>(var_2.x, 0u, var_2.x)))), reverseBits(4294967295u), 1u));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * global3[_wgslsmith_index_u32(0u, 18u)]), 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 572f)) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_2.x, 18u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f + global3[_wgslsmith_index_u32(11787u, 18u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_0.ywx), var_4, ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~global4[_wgslsmith_index_u32(0u, 20u)], vec4<i32>(u_input.a, 1i, var_4.x, var_4.x) >> (var_2 % vec4<u32>(32u))), vec4<i32>(0i, -20890i, min(-14662i, 2147483647i), ~var_4.x)));
}

