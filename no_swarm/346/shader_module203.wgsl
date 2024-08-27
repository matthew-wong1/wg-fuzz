struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<bool, 28> = array<bool, 28>(true, true, true, true, true, true, false, false, true, true, true, true, false, true, false, false, false, true, false, false, false, false, false, true, false, true, false, false);

var<private> global2: Struct_3;

var<private> global3: Struct_2;

var<private> global4: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec4<i32>) -> f32 {
    let var_0 = !vec3<bool>(global3.a, all(!select(vec2<bool>(false, true), vec2<bool>(global3.a, true), vec2<bool>(global3.a, true))), !any(vec2<bool>(global1[_wgslsmith_index_u32(11776u, 28u)], global1[_wgslsmith_index_u32(86634u, 28u)])));
    var var_1 = !global1[_wgslsmith_index_u32(4294967295u, 28u)];
    var var_2 = ~min(_wgslsmith_div_u32(~58182u, firstTrailingBit(69246u)) & global0.x, global0.x);
    global3 = Struct_2(any(select(select(!var_0, !var_0, select(var_0, vec3<bool>(true, var_0.x, true), var_0)), select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(78660u, 28u)]), var_0, !var_0), select(select(vec3<bool>(true, false, var_0.x), vec3<bool>(global3.a, global1[_wgslsmith_index_u32(global0.x, 28u)], true), false), var_0, true))));
    var_1 = any(!vec2<bool>(!all(var_0), all(vec4<bool>(var_0.x, false, false, false)) && true));
    return -473f;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1285f, _wgslsmith_f_op_f32(max(812f, _wgslsmith_div_f32(global4.a, _wgslsmith_f_op_f32(-global2.a)))), arg_0.x), vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.x), global4.a));
    var var_1 = Struct_2(select(true, !(60621u <= _wgslsmith_sub_u32(global4.b, 51027u)), false));
    let var_2 = Struct_3(-127f, 24452u, global4.c);
    let var_3 = !(1f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(~var_2.c.b.zxy, vec2<f32>(global4.a, var_2.a), var_2, var_2.c.b)))));
    var var_4 = true;
    return global4.b;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> i32 {
    global1 = array<bool, 28>();
    let var_0 = !(!all(vec2<bool>(global1[_wgslsmith_index_u32(32389u, 28u)], false))) | any(select(vec4<bool>(global2.c.b.x < global4.c.b.x, false, true, all(vec4<bool>(false, global3.a, global3.a, global1[_wgslsmith_index_u32(global4.b, 28u)]))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(72514u, 28u)], global3.a), vec4<bool>(global3.a, global3.a, global3.a, true), arg_2.a), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))));
    global0 = vec4<u32>(func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1071f, _wgslsmith_f_op_f32(global2.a - global4.a))))), reverseBits(1u) ^ global4.b, ~select(firstTrailingBit(arg_0), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 43052u), _wgslsmith_div_u32(arg_0, 27127u)), arg_2.a), global2.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a)) * _wgslsmith_f_op_f32(2809f + 1313f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.a, arg_3) - 1659f)))));
    var var_2 = false;
    return -21705i;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_4(u_input.a, ~abs(global2.c.b.x));
    global3 = Struct_2(!select(any(select(vec3<bool>(global3.a, arg_0.x, global3.a), vec3<bool>(global3.a, arg_0.x, global1[_wgslsmith_index_u32(60124u, 28u)]), global1[_wgslsmith_index_u32(13325u, 28u)])), any(vec4<bool>(arg_0.x, false, false, global1[_wgslsmith_index_u32(40586u, 28u)])), any(vec4<bool>(arg_0.x, false, false, false))));
    global1 = array<bool, 28>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(153f, global4.a))), global4.a)) * _wgslsmith_f_op_f32(-1067f - global4.a)), global4.a);
    var var_2 = abs(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.b, _wgslsmith_div_u32(global2.b, 6283u)), firstLeadingBit(vec2<u32>(global0.x, global0.x)))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-826f - global4.a))))), global4.b, global4.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(!vec2<bool>(any(vec3<bool>(global3.a, true, false)), all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(global4.b, 28u)]))), _wgslsmith_add_i32(33114i, func_1(firstTrailingBit(~4294967295u), _wgslsmith_mult_i32(-14051i, firstLeadingBit(global4.c.b.x)), Struct_2(true), -751f)), Struct_1(global2.c.b.xy, global4.c.b));
    let var_0 = global4.c;
    var var_1 = Struct_5(_wgslsmith_div_vec2_u32(vec2<u32>(1u, ~1u ^ global0.x), ~(~reverseBits(global0.zw))), vec2<u32>(_wgslsmith_mult_u32(0u, global0.x), _wgslsmith_mult_u32(max(45834u, abs(global0.x)), global0.x)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, 3366i, var_0.a.x, global4.c.b.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(3888u, global2.b, global2.b, 4294967295u), vec4<u32>(1u, global4.b, 116623u, global2.b)) % vec4<u32>(32u)), vec4<i32>(global2.c.a.x, 1i, global4.c.b.x ^ 0i, global2.c.b.x)) << ((abs(max(vec4<u32>(0u, 25170u, 4294967295u, 55859u), vec4<u32>(global2.b, global0.x, global2.b, 4294967295u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 81162u, 1579u, global0.x), vec4<u32>(52616u, 0u, 58565u, 12550u), vec4<u32>(global0.x, 50687u, global0.x, global0.x) >> (vec4<u32>(global4.b, 4294967295u, global0.x, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)), Struct_2(true & global3.a), ~vec4<u32>(1u, ~firstTrailingBit(global0.x), ~(global2.b & global0.x), 122705u));
    global4 = Struct_3(649f, 1u, Struct_1(firstLeadingBit(-var_0.a), ~(~vec4<i32>(var_1.c.x, var_1.c.x, -1i, var_1.c.x) >> (var_1.e % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-227f, global4.a), vec2<f32>(656f, -224f))) - vec2<f32>(global2.a, 182f)))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a, -1747f) * vec2<f32>(global4.a, global2.a)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4.a, -394f), vec2<f32>(265f, global2.a)))) - vec2<f32>(661f, _wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1176f, global4.a)))))));
    var var_3 = global4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-214f)), _wgslsmith_f_op_f32(-global2.a), -1000f, _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a, 0i, -1i), vec2<f32>(global2.a, -1482f), Struct_3(var_2.x, var_1.a.x, Struct_1(vec2<i32>(2147483647i, u_input.a), vec4<i32>(-1i, global2.c.b.x, u_input.a, 1i))), vec4<i32>(21378i, 0i, u_input.a, var_1.c.x)))))));
}

