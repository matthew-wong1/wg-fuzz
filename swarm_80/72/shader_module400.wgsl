struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(0i, 1i, 26741i, -32981i), vec4<i32>(-1i, -1i, -20139i, -10679i), vec4<i32>(-42882i, 7898i, -5637i, 2147483647i), vec4<i32>(i32(-2147483648), 25887i, -12332i, -39268i));

var<private> global2: array<i32, 22> = array<i32, 22>(-30709i, -1i, 11724i, -11072i, 1i, -24777i, -7874i, -55644i, -38962i, 1i, -56465i, 6885i, 0i, 24590i, 42812i, -1i, -49777i, -1i, 1i, 61568i, -34818i, 1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(select(vec3<bool>(false, all(!vec3<bool>(arg_2.c.x, arg_1.c.x, arg_1.c.x)), true), select(select(vec3<bool>(arg_2.c.x, arg_2.c.x, true), vec3<bool>(true, true, true), vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x)), select(vec3<bool>(false, false, true), select(vec3<bool>(arg_2.c.x, arg_2.c.x, arg_1.c.x), vec3<bool>(false, arg_2.c.x, false), vec3<bool>(false, true, arg_2.c.x)), !arg_2.c.x), arg_1.c.x | arg_1.c.x), !select(vec3<bool>(arg_1.c.x, false, true), select(vec3<bool>(true, arg_1.c.x, arg_1.c.x), vec3<bool>(false, arg_1.c.x, false), arg_2.c.x), vec3<bool>(false, false, false))), Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, 420f, 1546f))), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.d, 0i, 18829i), vec3<i32>(arg_2.b.x, global2[_wgslsmith_index_u32(49551u, 22u)], 12282i)), -(~global2[_wgslsmith_index_u32(u_input.b.x, 22u)])), select(select(vec2<bool>(true, arg_1.c.x), select(arg_2.c, arg_2.c, arg_1.c.x), arg_2.c.x), select(select(vec2<bool>(arg_1.c.x, false), vec2<bool>(arg_2.c.x, arg_1.c.x), arg_1.c.x), arg_1.c, false & arg_1.c.x), all(!vec4<bool>(false, arg_1.c.x, true, false))), _wgslsmith_mult_i32(61249i, ~_wgslsmith_div_i32(19019i, 2147483647i))), !vec3<bool>(arg_1.c.x, arg_1.c.x, !(arg_2.d >= -1i)), global1[_wgslsmith_index_u32(47829u, 4u)], any(select(vec3<bool>(global0[_wgslsmith_index_u32(48760u, 32u)] != arg_2.a.x, arg_0 == global0[_wgslsmith_index_u32(u_input.a, 32u)], !arg_2.c.x), vec3<bool>(true, u_input.b.x > u_input.b.x, true), 4294967295u <= u_input.a)));
    let var_1 = var_0.a.xx;
    global1 = array<vec4<i32>, 4>();
    return _wgslsmith_f_op_f32(f32(-1f) * -2509f);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.c, 32u)] + global0[_wgslsmith_index_u32(u_input.a, 32u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 32u)], 1426f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-545f, global0[_wgslsmith_index_u32(0u, 32u)])))), 1u > _wgslsmith_clamp_u32(u_input.a ^ 53132u, ~53580u, 1u))));
    var var_1 = Struct_3(~(~49596u) <= _wgslsmith_add_u32(~firstLeadingBit(u_input.c), u_input.b.x), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(861f, 686f, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 32u)], var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]) * vec3<f32>(-1870f, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])), vec3<bool>(false, false, false))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(func_3(-393f, Struct_1(vec3<f32>(1505f, -278f, 473f), vec2<i32>(arg_0.x, arg_0.x), vec2<bool>(false, true), global2[_wgslsmith_index_u32(39665u, 22u)]), Struct_1(vec3<f32>(var_0.x, -1000f, 2047f), arg_0.zx, vec2<bool>(false, true), 5450i))), 946f)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(33284u, 22u)], global2[_wgslsmith_index_u32(23468u, 22u)])), arg_0.xz), vec2<bool>(false, 1i > arg_0.x), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(min(u_input.c, 6600u), 42834u)), 22u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * global0[_wgslsmith_index_u32(u_input.a, 32u)]) - -626f))), Struct_2(select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 32u)], 223f, global0[_wgslsmith_index_u32(u_input.c, 32u)]))), arg_0.zx, vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(-vec3<i32>(4368i, arg_0.x, arg_0.x), ~arg_0)), vec3<bool>(_wgslsmith_mod_u32(4294967295u, u_input.b.x) == u_input.a, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)), false), ~(-countOneBits(vec4<i32>(-20061i, 17780i, arg_0.x, 22339i))), 528f > _wgslsmith_div_f32(var_0.x, var_0.x)));
    var_1 = Struct_3(!((var_1.b.c.x || (42549i < global2[_wgslsmith_index_u32(u_input.c, 22u)])) == (4294967295u >= _wgslsmith_div_u32(2854u, u_input.c))), var_1.d.b, -615f, Struct_2(select(var_1.d.c, !select(vec3<bool>(false, var_1.b.c.x, var_1.a), vec3<bool>(true, false, true), false), !all(vec4<bool>(false, true, true, var_1.b.c.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(u_input.c, 32u)], -796f), var_1.b.a)), -abs(arg_0.xx), var_1.b.c, global2[_wgslsmith_index_u32(~(u_input.b.x | 1u), 22u)]), select(var_1.d.a, !var_1.d.a, true), global1[_wgslsmith_index_u32(~(~1u) | (u_input.a & abs(u_input.c)), 4u)], !(!var_1.b.c.x)));
    var var_2 = ~(~abs(~vec4<u32>(u_input.a, u_input.b.x, 0u, u_input.c)) ^ select(vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.a), u_input.b.x, u_input.a >> (1u % 32u), 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(3309u, u_input.c, u_input.a, u_input.b.x) | vec4<u32>(u_input.c, u_input.c, 1u, 0u), vec4<u32>(4294967295u, u_input.c, u_input.c, 0u) ^ vec4<u32>(28239u, 44609u, 1u, 38650u)), (var_0.x > -1260f) || var_1.d.b.c.x));
    var var_3 = Struct_2(!var_1.d.c, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1029f + 1007f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(403f, 267f, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.x, 32u)] * global0[_wgslsmith_index_u32(u_input.c, 32u)])))), _wgslsmith_clamp_vec2_i32(arg_0.xx, max(~var_1.d.b.b, _wgslsmith_div_vec2_i32(vec2<i32>(-13724i, -32945i), vec2<i32>(-28433i, -43199i))), vec2<i32>(firstLeadingBit(-19119i), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 8253i))), var_1.b.c, max(-21190i, _wgslsmith_dot_vec4_i32(var_1.d.d, global1[_wgslsmith_index_u32(4294967295u, 4u)]) ^ 2147483647i)), var_1.d.c, _wgslsmith_div_vec4_i32(abs(~_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], vec4<i32>(arg_0.x, global2[_wgslsmith_index_u32(60604u, 22u)], 0i, var_1.b.d))), var_1.d.d), true);
    return var_1.b;
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 32>();
    var var_0 = func_2(select(firstLeadingBit(countOneBits(~vec3<i32>(24250i, global2[_wgslsmith_index_u32(u_input.a, 22u)], -24005i))), reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(8926u, 22u)], global2[_wgslsmith_index_u32(u_input.b.x, 22u)]) & ~vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(u_input.c, 22u)], 12831i)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), false), vec3<bool>(any(vec2<bool>(true, true)), false, all(vec2<bool>(false, false))))));
    var var_1 = -(global1[_wgslsmith_index_u32(u_input.b.x, 4u)] & global1[_wgslsmith_index_u32(~min(~u_input.c, u_input.b.x), 4u)]);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(235f, global0[_wgslsmith_index_u32(4294967295u, 32u)]) - vec2<f32>(189f, var_0.a.x)), vec2<f32>(var_0.a.x, global0[_wgslsmith_index_u32(u_input.c, 32u)]), true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-func_2(var_1.yzw).a.yy), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.a.zy - var_0.a.zy))))))) - vec2<f32>(960f, global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, u_input.a, 4294967295u))), 32u)]));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-194f, -248f)), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(min(992f, 506f))) * var_0.a)), min(-(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_1.x), var_1.yz) & _wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(44462u, 22u)], var_0.d), vec2<i32>(-2147483647i, var_1.x))), var_0.b), vec2<bool>(u_input.b.x < ~_wgslsmith_sub_u32(u_input.a, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(985f, 876f)) * 1698f) > _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(trunc(var_0.a.x)))), 13685i);
    return func_2(vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(65199u) & ~u_input.b.x, _wgslsmith_add_u32(u_input.a ^ 4549u, ~u_input.a)), 22u)], global2[_wgslsmith_index_u32(~(~u_input.c), 22u)], countOneBits(-(-2147483647i | var_1.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> Struct_3 {
    return Struct_3(!arg_0.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-706f, global0[_wgslsmith_index_u32(arg_1.x, 32u)], 738f)) - vec3<f32>(-1485f, 525f, 115f)) - vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14937u, 32u)] - -1000f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(43528u, 32u)]), arg_0.a.x)), -abs(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], arg_0.d) | vec2<i32>(global2[_wgslsmith_index_u32(arg_1.x, 22u)], global2[_wgslsmith_index_u32(u_input.c, 22u)])), vec2<bool>(all(select(vec3<bool>(arg_0.c.x, true, false), vec3<bool>(arg_0.c.x, true, arg_0.c.x), vec3<bool>(arg_0.c.x, true, arg_0.c.x))), arg_0.c.x), _wgslsmith_dot_vec2_i32(arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 32u)])))), Struct_2(select(select(!vec3<bool>(arg_0.c.x, false, arg_0.c.x), select(vec3<bool>(false, arg_0.c.x, false), vec3<bool>(arg_0.c.x, true, false), vec3<bool>(true, false, arg_0.c.x)), arg_0.c.x || arg_0.c.x), select(!vec3<bool>(false, arg_0.c.x, false), !vec3<bool>(arg_0.c.x, arg_0.c.x, false), 2147483647i > global2[_wgslsmith_index_u32(59912u, 22u)]), !vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), arg_0, select(vec3<bool>(false, any(vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_0.c.x)), true), vec3<bool>(arg_0.c.x, true, any(vec2<bool>(arg_0.c.x, false))), !(!vec3<bool>(arg_0.c.x, false, arg_0.c.x))), global1[_wgslsmith_index_u32(0u, 4u)], arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 82782u;
    var var_1 = global2[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(~15232u, _wgslsmith_sub_u32(u_input.a, 16407u) >> (1u % 32u)) >> (11947u % 32u)), 22u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(54774u, 32u)], -491f, global0[_wgslsmith_index_u32(~u_input.a, 32u)])));
    global1 = array<vec4<i32>, 4>();
    var var_3 = func_4(func_1(), u_input.b, _wgslsmith_div_i32(func_1().d | _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], 0i), ~0i) | -2147483647i);
    global1 = array<vec4<i32>, 4>();
    let var_4 = func_4(Struct_1(var_3.d.b.a, _wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(var_3.b.b, var_3.b.b)), countOneBits(var_3.d.b.b)), vec2<bool>(var_3.b.c.x, true), _wgslsmith_dot_vec4_i32(var_3.d.d, _wgslsmith_div_vec4_i32(countOneBits(global1[_wgslsmith_index_u32(u_input.a, 4u)]), var_3.d.d))), ~u_input.b | ~(~(u_input.b >> (vec3<u32>(u_input.b.x, u_input.c, u_input.b.x) % vec3<u32>(32u)))), -3730i >> (~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4690u, u_input.c, 1u), vec4<u32>(u_input.c, 0u, 1u, u_input.a)) & _wgslsmith_div_u32(0u, u_input.a)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, abs(~_wgslsmith_mult_vec2_i32(-vec2<i32>(var_4.b.b.x, 1i), -vec2<i32>(1i, global2[_wgslsmith_index_u32(u_input.a, 22u)]))), ~(countOneBits(vec3<u32>(4294967295u, 1u, u_input.c)) ^ vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 46637u, u_input.b.x, u_input.a), vec4<u32>(4294967295u, u_input.b.x, u_input.c, u_input.c)), ~u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_1().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1497f * -1000f))) - func_1().a.x), ~_wgslsmith_mult_u32(25149u, _wgslsmith_mult_u32(4294967295u, firstTrailingBit(4294967295u))));
}

