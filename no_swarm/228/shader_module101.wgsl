struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 12> = array<f32, 12>(1602f, 641f, 377f, 1018f, -1000f, 552f, -1984f, -1077f, -1155f, -769f, -1000f, 1662f);

var<private> global2: array<f32, 30>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> vec2<i32> {
    global0 = vec4<bool>(!(!((global0.x | false) || true)), global0.x || true, true, arg_0.c.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(712f + _wgslsmith_f_op_f32(-169f - 262f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(249f * global1[_wgslsmith_index_u32(arg_1, 12u)])))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(1487f + -920f), true && global0.x)))), _wgslsmith_f_op_f32(select(1694f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(0u, 30u)])), 190f), true)), _wgslsmith_f_op_f32(582f * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1, 30u)] * 529f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-767f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) * _wgslsmith_f_op_f32(-322f * -194f)))));
    let var_1 = ~arg_0.a;
    var var_2 = ~arg_0.a;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, arg_2.x, abs(~65111u)), 30u)], var_0.x, _wgslsmith_f_op_f32(688f * global2[_wgslsmith_index_u32(1u, 30u)]), 1000f));
    return vec2<i32>(countOneBits(_wgslsmith_mult_i32(u_input.d, min(u_input.b, -1i) ^ (var_2.x | u_input.d))), u_input.b);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_2(4294967295u, _wgslsmith_sub_i32(4612i, 0i), Struct_1(vec4<i32>(-12350i & firstTrailingBit(u_input.d), u_input.b, _wgslsmith_add_i32(u_input.b, min(5791i, u_input.d)), abs(-27984i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 30u)] + _wgslsmith_f_op_f32(round(-1128f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-427f * -408f), 432f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(622f, global1[_wgslsmith_index_u32(u_input.e, 12u)]), vec2<f32>(-778f, -1135f), vec2<bool>(true, false))))), abs(~(vec3<u32>(12247u, u_input.c, 4294967295u) >> (vec3<u32>(u_input.e, u_input.e, u_input.c) % vec3<u32>(32u)))), vec3<i32>(0i, _wgslsmith_dot_vec2_i32(func_3(Struct_1(vec4<i32>(-2147483647i, u_input.b, -6686i, 1i), -803f, vec2<f32>(-273f, 1666f), vec3<u32>(4294967295u, 1u, 0u), vec3<i32>(u_input.d, u_input.d, u_input.b)), 1u, u_input.a.yyw), -vec2<i32>(u_input.b, 0i)), ~(-u_input.d))), arg_0, true);
    global2 = array<f32, 30>();
    global0 = !select(!select(select(vec4<bool>(arg_1, true, false, arg_2.x), vec4<bool>(global0.x, global0.x, arg_2.x, arg_1), true), select(vec4<bool>(false, global0.x, arg_0, arg_1), vec4<bool>(true, false, false, var_0.e), arg_1), !vec4<bool>(arg_1, true, arg_2.x, var_0.e)), select(!(!vec4<bool>(arg_1, true, arg_0, arg_0)), vec4<bool>(true, -399f < global2[_wgslsmith_index_u32(1u, 30u)], true, any(vec3<bool>(true, true, arg_1))), arg_2.x), arg_1);
    return select(vec3<bool>(-1661f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(17891u, 12u)]), _wgslsmith_f_op_f32(round(234f)))), any(!(!vec2<bool>(arg_2.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(var_0.c.d.x, 12u)])) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1430f - 523f))), vec3<bool>(var_0.d != true, true, any(vec4<bool>(var_0.d, true, false, false))), var_0.e && !arg_2.x);
}

fn func_4(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(min(66349u, 6639u), u_input.d, Struct_1(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.d, u_input.b, -2147483647i, u_input.d), -vec4<i32>(u_input.d, u_input.b, 11526i, -70282i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 30u)])), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(0u, 30u)], -944f), vec2<f32>(-1000f, global2[_wgslsmith_index_u32(58321u, 30u)]), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -664f)))), abs(vec3<u32>(1u, u_input.e, 0u)) >> (firstTrailingBit(vec3<u32>(9886u, u_input.e, u_input.e)) % vec3<u32>(32u)), -abs(vec3<i32>(u_input.b, -6638i, 2147483647i))), all(vec4<bool>(false, global0.x, global0.x, false)) != !(!global0.x), true), 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1992f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -136f))))));
    let var_2 = vec4<u32>(4294967295u, ~countOneBits(min(min(var_0.b, 45819u), select(var_0.a.a, 52597u, true))), firstTrailingBit(~u_input.a.x), select(1u, countOneBits(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), true));
    var var_3 = Struct_2(~var_2.x & ~var_0.b, -countOneBits(u_input.d), var_0.a.c, arg_0.x || ((_wgslsmith_mult_i32(u_input.d, u_input.b) > _wgslsmith_dot_vec2_i32(var_0.a.c.e.xy, var_0.a.c.a.wy)) & all(!vec4<bool>(global0.x, var_0.a.d, global0.x, global0.x))), !(firstTrailingBit(func_3(Struct_1(vec4<i32>(var_0.a.b, var_0.a.c.e.x, var_0.a.c.e.x, var_0.a.b), -971f, var_0.a.c.c, vec3<u32>(4294967295u, 34487u, var_0.b), var_0.a.c.a.xyw), 4294967295u, vec3<u32>(9234u, u_input.c, 4294967295u)).x) >= _wgslsmith_div_i32(i32(-1i) * -2147483647i, 11978i)));
    global1 = array<f32, 12>();
    return Struct_3(var_0.a, ~1u);
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_div_u32(50448u, ~34688u);
    global2 = array<f32, 30>();
    var var_1 = true;
    var var_2 = func_4(select(select(global0.yzx, !global0.wzx, vec3<bool>(true, true, false)), func_2((u_input.e <= 4294967295u) | true, true, !global0.zxx), global0.x));
    let var_3 = var_2.b << (~1u % 32u);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.c.b, global1[_wgslsmith_index_u32(44144u, 12u)], -475f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2[_wgslsmith_index_u32(var_2.b, 30u)], -112f, -1824f), vec3<f32>(var_2.a.c.c.x, 2254f, var_2.a.c.b)))), vec3<f32>(_wgslsmith_f_op_f32(-973f * -261f), var_2.a.c.c.x, _wgslsmith_f_op_f32(-619f + global1[_wgslsmith_index_u32(95833u, 12u)])), !func_2(false, true, vec3<bool>(false, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

