struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 565f;

var<private> global1: vec2<bool>;

var<private> global2: array<f32, 4>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_5(select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(false, global1.x, global1.x, true))), vec4<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, global1.x)) & true, global1.x, global1.x, any(select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x)))), any(!(!vec2<bool>(global1.x, global1.x)))), u_input.d.x, Struct_4(vec3<bool>((global1.x == false) & true, 2050f != _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.c.x, 4u)], global2[_wgslsmith_index_u32(u_input.c.x, 4u)])), false)));
    var_0 = Struct_5(var_0.a, abs(-1i), Struct_4(select(vec3<bool>(var_0.c.a.x, true, true), vec3<bool>(all(vec2<bool>(false, false)), !global1.x, u_input.d.x <= var_0.b), false)));
    var var_1 = Struct_5(var_0.a, u_input.d.x, var_0.c);
    var_0 = Struct_5(select(!(!select(var_0.a, vec4<bool>(true, true, var_1.a.x, global1.x), vec4<bool>(true, var_0.a.x, true, var_1.a.x))), !var_1.a, !select(vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, true, var_1.c.a.x, var_0.c.a.x), var_1.a)), -_wgslsmith_mult_i32(28272i, _wgslsmith_sub_i32(i32(-1i) * -22704i, _wgslsmith_mod_i32(46375i, var_1.b))), var_1.c);
    let var_2 = global2[_wgslsmith_index_u32(1u, 4u)];
    return reverseBits(_wgslsmith_mod_vec4_i32(u_input.d, abs(u_input.d)));
}

fn func_2() -> Struct_3 {
    let var_0 = !select(vec2<bool>(true, true), !(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true), global1.x)), min(_wgslsmith_dot_vec3_i32(u_input.a, u_input.d.yzz), u_input.d.x) == ~(-u_input.a.x));
    let var_1 = any(select(select(vec3<bool>(var_0.x, true, global1.x), select(vec3<bool>(true, global1.x, var_0.x), vec3<bool>(var_0.x, false, global1.x), vec3<bool>(true, global1.x, global1.x)), select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, true, false), vec3<bool>(false, global1.x, var_0.x))), vec3<bool>(all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true, 0i == u_input.d.x), !vec3<bool>(global1.x, var_0.x, var_0.x))) && !any(select(!vec2<bool>(false, var_0.x), !var_0, !var_0.x));
    var var_2 = Struct_2(firstTrailingBit(-((i32(-1i) * -88810i) ^ u_input.d.x)));
    let var_3 = Struct_2(_wgslsmith_add_i32(firstLeadingBit(u_input.d.x), _wgslsmith_div_i32(~(-var_2.a), _wgslsmith_dot_vec4_i32(func_3(), func_3()))));
    var var_4 = Struct_5(vec4<bool>(var_0.x, !(reverseBits(u_input.b.x) == ~u_input.c.x), false, true), -(32772i << (abs(u_input.b.x) % 32u)), Struct_4(select(!(!vec3<bool>(var_1, var_0.x, true)), vec3<bool>(global1.x, select(global1.x, global1.x, global1.x), all(var_0)), select(select(vec3<bool>(true, var_1, global1.x), vec3<bool>(global1.x, global1.x, global1.x), true), vec3<bool>(true, true, true), var_1))));
    return Struct_3(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-39021i, 1i), var_4.b), ~reverseBits(11442u));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(vec3<bool>(!global1.x, ~arg_1.a != ~_wgslsmith_mod_i32(arg_1.a, 1i), !all(!vec2<bool>(global1.x, global1.x))), ~(u_input.c.x | ~4294967295u), vec4<bool>(global1.x, false, any(!(!vec4<bool>(true, false, false, global1.x))), global1.x));
    var var_1 = select(var_0.c, vec4<bool>(true, !select(true, var_0.c.x, !var_0.a.x), !((arg_2.a < arg_2.a) != false), select(var_0.a.x, global1.x, !global1.x)), all(vec2<bool>(true, all(var_0.c) & global1.x)));
    var var_2 = arg_1;
    var_2 = arg_1;
    var var_3 = Struct_1(select(select(vec3<bool>(global1.x, false, global1.x), select(select(var_1.wxy, var_0.c.zzz, false), vec3<bool>(true, true, var_0.a.x), global1.x), all(!vec2<bool>(false, var_0.c.x))), select(!vec3<bool>(true, true, global1.x), !var_0.c.zyw, true), var_1.x), ~77332u, select(select(!select(var_0.c, var_0.c, var_0.c), select(vec4<bool>(var_0.c.x, false, var_1.x, var_1.x), var_0.c, select(var_0.c, vec4<bool>(var_0.a.x, var_0.c.x, var_0.a.x, true), true)), var_0.c.x), !(!vec4<bool>(true, false, false, global1.x)), !vec4<bool>(!global1.x, any(var_0.a), !global1.x, var_0.a.x)));
    return arg_1.b >= (~1u >> (firstLeadingBit(4294967295u) % 32u));
}

fn func_1(arg_0: bool, arg_1: bool) -> bool {
    global1 = select(vec2<bool>(true, true), vec2<bool>(global1.x | any(vec3<bool>(true, arg_0, arg_0)), any(!(!vec3<bool>(false, false, arg_0)))), !vec2<bool>(func_4(179f, func_2(), Struct_2(u_input.a.x)), all(vec4<bool>(false, arg_0, global1.x, true))));
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x >> (max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x))) % 32u), 4u)] - _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 4u)]))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-374f - global2[_wgslsmith_index_u32(u_input.c.x, 4u)]) * global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 4u)])), global2[_wgslsmith_index_u32(u_input.c.x, 4u)])));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-305f, var_2.x)), var_2);
    return !arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!select(vec2<bool>(false, func_1(true, global1.x)), vec2<bool>(global1.x, global1.x), !global1.x), !(!vec2<bool>(true == global1.x, global1.x)), true);
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.c.x), 4u)];
    global2 = array<f32, 4>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.c.x, 4u)])) - global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.b.x), 4u)]) + -1574f)));
    let var_1 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(u_input.b, reverseBits(u_input.b))), vec3<u32>(~(~(~0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(50199u, u_input.c.x), u_input.b.zx), ~52478u), ~min(vec3<u32>(u_input.c.x, countOneBits(u_input.c.x), u_input.c.x), vec3<u32>(_wgslsmith_mult_u32(24207u, u_input.c.x), firstLeadingBit(4294967295u), 0u)));
    var var_2 = Struct_1(select(select(select(!vec3<bool>(false, global1.x, global1.x), !vec3<bool>(global1.x, true, false), !vec3<bool>(false, global1.x, global1.x)), select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, true, true), !vec3<bool>(true, global1.x, false)), false), select(vec3<bool>(true, u_input.d.x >= u_input.a.x, global1.x), !(!vec3<bool>(global1.x, false, global1.x)), !(!vec3<bool>(true, global1.x, true))), !any(!vec4<bool>(true, global1.x, global1.x, false))), 1u, !vec4<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.c.x, u_input.b.x), vec3<u32>(u_input.c.x, 24477u, 1u)), 4u)] >= _wgslsmith_f_op_f32(sign(1032f)), !global1.x, true));
    var var_3 = Struct_5(!vec4<bool>(false, true, var_1.x != abs(var_1.x), !var_2.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-9511i, i32(-1i) * -2147483647i, u_input.d.x, -u_input.a.x) | vec4<i32>(u_input.a.x, i32(-1i) * -2147483647i, u_input.d.x, 1i), vec4<i32>(0i, u_input.a.x, u_input.d.x, _wgslsmith_add_i32(-u_input.a.x, -11865i))), Struct_4(select(select(vec3<bool>(var_2.c.x, true, global1.x), vec3<bool>(global1.x, true, global1.x), all(var_2.a.xx)), vec3<bool>(any(var_2.c.yxx), func_1(var_2.a.x, global1.x), -1234f > global2[_wgslsmith_index_u32(0u, 4u)]), true)));
    global1 = !var_3.c.a.xy;
    var_2 = Struct_1(vec3<bool>((all(vec4<bool>(global1.x, false, global1.x, true)) | any(var_2.c)) & (_wgslsmith_div_f32(1697f, -871f) > _wgslsmith_f_op_f32(-227f + global2[_wgslsmith_index_u32(var_1.x, 4u)])), var_3.a.x, true), ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(14095u, u_input.b.x, u_input.b.x, var_1.x) | u_input.c, vec4<u32>(var_1.x, var_1.x, 4294967295u, 0u) & vec4<u32>(1u, var_2.b, var_1.x, var_1.x)), _wgslsmith_div_u32(reverseBits(4294967295u), min(var_2.b, u_input.b.x))), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, ~u_input.d.x, 0i, ~(~u_input.d.x));
}

