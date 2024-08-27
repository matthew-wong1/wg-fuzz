struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 4>;

var<private> global3: vec4<f32> = vec4<f32>(1060f, -963f, -1495f, -104f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    return 352f;
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_4(Struct_3(~reverseBits(arg_0.a.a | vec4<u32>(arg_1, 4294967295u, arg_3.b.a.b.x, arg_0.d.b.x)), arg_0.c.b), any(!select(vec4<bool>(arg_0.c.b.a.a.x, true, arg_3.b.a.a.x, arg_0.b), !vec4<bool>(arg_3.b.a.a.x, arg_3.b.a.a.x, false, false), arg_3.b.a.a.x)), Struct_3(~arg_3.b.a.b, arg_0.a.b), arg_3.b.a);
    let var_1 = Struct_2(arg_0.d);
    global2 = array<i32, 4>();
    let var_2 = arg_0.a;
    var var_3 = ~firstLeadingBit(0u);
    return _wgslsmith_f_op_f32(func_1(arg_3.b, Struct_3(~vec4<u32>(reverseBits(52303u), 1u, 1u, var_1.a.b.x), var_1)));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, any(vec2<bool>(true, false))), arg_0, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.x, arg_0.x, 4294967295u), reverseBits(arg_0.xxx)), arg_0.zyw), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 530f, global1.x, 1156f), vec4<f32>(global1.x, global3.x, 346f, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, global1.x, global3.x, global3.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(787f, global1.x, global3.x, global1.x))))))));
    var var_1 = ~11137i;
    let var_2 = Struct_1(var_0.a.a, (~(~arg_0) & ~arg_0) & var_0.a.b, 0u, vec4<f32>(_wgslsmith_f_op_f32(global3.x * global3.x), global3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - -1238f), -822f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(vec4<u32>(29099u, 24013u, 36312u, 0u), var_0), true, Struct_3(var_0.a.b, var_0), var_0.a), arg_0.x, vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, false), Struct_3(vec4<u32>(0u, arg_0.x, arg_0.x, 24322u), Struct_2(Struct_1(var_0.a.a, vec4<u32>(1u, 88836u, 31228u, 23768u), 1u, vec4<f32>(var_0.a.d.x, var_0.a.d.x, global1.x, global1.x)))))))));
    var var_3 = vec3<f32>(1813f, -1544f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -584f))) - 1087f) + _wgslsmith_f_op_f32(-1f)));
    global2 = array<i32, 4>();
    return var_0;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = func_2(~select(arg_2.a.b, arg_2.a.b, !arg_0 | false), -global2[_wgslsmith_index_u32(arg_2.a.c, 4u)]).a.d.yx;
    global1 = arg_2.a.d;
    global1 = _wgslsmith_f_op_vec4_f32(arg_2.a.d * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.a.d.x, -590f, var_0.x, -318f))) + _wgslsmith_f_op_vec4_f32(-arg_2.a.d)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3, 626f, -296f, global3.x), vec4<f32>(-159f, 149f, arg_2.a.d.x, var_0.x))), _wgslsmith_f_op_vec4_f32(sign(arg_2.a.d))))));
    global0 = vec3<i32>(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 7100i, global2[_wgslsmith_index_u32(4076u, 4u)], -11199i), ~vec4<i32>(38157i, -65486i, 26326i, global0.x))), max(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(65265u, 4u)]), vec4<i32>(-27422i, -27979i, u_input.a.x, 0i), vec4<i32>(-9105i, 1i, 12724i, global0.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -36560i, -12755i, -65262i), vec4<i32>(1i, 0i, -38682i, global0.x)), ~vec4<i32>(-1i, 2147483647i, u_input.a.x, -1i)))), ~(-global0.x), ~global2[_wgslsmith_index_u32(~max(1u, ~arg_1), 4u)]);
    global2 = array<i32, 4>();
    return arg_2;
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global2 = array<i32, 4>();
    let var_0 = arg_3.a.b.wwx;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_3.a.a.x, 0u, arg_3, arg_0.x).a.d.x * _wgslsmith_f_op_f32(f32(-1f) * -1579f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)))) - -1018f));
    var_1 = 1381f;
    global0 = u_input.a;
    return Struct_1(!select(!select(arg_3.a.a, arg_3.a.a, arg_3.a.a), vec2<bool>(any(arg_3.a.a), true), !arg_3.a.a), vec4<u32>(arg_3.a.b.x, 27977u, var_0.x, countOneBits(1u)), 1u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + _wgslsmith_f_op_f32(max(409f, -1619f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(global3.zw, _wgslsmith_div_vec2_f32(global3.zx, global1.wz))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(529f, -2346f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.d.x)))))), -1267f));
    var var_1 = Struct_4(arg_1.c, arg_1.a.b.a.a.x, arg_1.a, arg_0);
    let var_2 = arg_1;
    var var_3 = 622f;
    var var_4 = !select(vec4<bool>(_wgslsmith_dot_vec2_i32(u_input.a.zx, global0.xy) > 41334i, arg_1.d.a.x, !var_1.b & false, arg_1.b), vec4<bool>(true, !var_2.d.a.x, true, true), arg_1.c.b.a.a.x);
    return Struct_3(func_2(firstLeadingBit(select(vec4<u32>(var_2.c.b.a.b.x, 4294967295u, var_2.c.a.x, var_2.c.a.x) ^ arg_1.d.b, vec4<u32>(arg_1.c.b.a.b.x, 110635u, 26388u, 0u), false)), u_input.a.x).a.b, func_4(true, ~1u, Struct_2(var_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_2.a.b, var_2.c)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f), 216f))));
}

fn func_7(arg_0: Struct_3) -> Struct_4 {
    var var_0 = firstLeadingBit(abs(vec4<i32>(abs(u_input.a.x), -_wgslsmith_clamp_i32(7735i, 25806i, global2[_wgslsmith_index_u32(63365u, 4u)]), global0.x, -2147483647i)));
    let var_1 = arg_0;
    let var_2 = -2147483647i;
    let var_3 = func_6(func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, arg_0.b.a.d.x, global3.x))) * func_5(vec3<f32>(-1470f, global1.x, global3.x), false, 21368u, Struct_2(Struct_1(arg_0.b.a.a, vec4<u32>(arg_0.a.x, 60194u, 4294967295u, var_1.b.a.c), 16882u, var_1.b.a.d))).d.zyz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -107f, arg_0.b.a.d.x)) * _wgslsmith_f_op_vec3_f32(-global3.xxy)))), true, arg_0.a.x, var_1.b), Struct_4(var_1, var_1.b.a.a.x, func_6(var_1.b.a, Struct_4(Struct_3(vec4<u32>(1u, var_1.a.x, 4294967295u, var_1.a.x), Struct_2(Struct_1(arg_0.b.a.a, vec4<u32>(var_1.a.x, var_1.b.a.c, 4294967295u, var_1.b.a.c), 32418u, arg_0.b.a.d))), false, func_6(var_1.b.a, Struct_4(arg_0, false, var_1, Struct_1(arg_0.b.a.a, vec4<u32>(var_1.b.a.c, var_1.a.x, var_1.a.x, arg_0.a.x), 0u, arg_0.b.a.d)), 8641u, global1.x), var_1.b.a), 67176u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-518f + arg_0.b.a.d.x))), func_2(vec4<u32>(_wgslsmith_add_u32(65709u, 1u), 4294967295u, _wgslsmith_sub_u32(var_1.a.x, 0u), ~4294967295u), -var_2 ^ ~(-12397i)).a), _wgslsmith_dot_vec3_u32(select(vec3<u32>(max(arg_0.b.a.c, var_1.a.x), ~1u, ~4132u), arg_0.a.xzy, func_2(arg_0.b.a.b, var_0.x ^ u_input.a.x).a.a.x), vec3<u32>((var_1.a.x & var_1.a.x) >> ((var_1.a.x << (arg_0.b.a.c % 32u)) % 32u), _wgslsmith_dot_vec3_u32(var_1.a.wxw, vec3<u32>(var_1.a.x, arg_0.b.a.c, 14302u)), arg_0.a.x)), global1.x).b.a.d.x;
    global1 = _wgslsmith_f_op_vec4_f32(-var_1.b.a.d);
    return Struct_4(Struct_3(~(arg_0.a | vec4<u32>(var_1.b.a.b.x, 4294967295u, var_1.b.a.c, arg_0.b.a.c)) & ~(~vec4<u32>(arg_0.b.a.b.x, 11174u, 1404u, 103914u)), func_2(_wgslsmith_mult_vec4_u32(var_1.b.a.b & vec4<u32>(var_1.b.a.b.x, 10921u, arg_0.b.a.b.x, 0u), _wgslsmith_sub_vec4_u32(var_1.b.a.b, vec4<u32>(var_1.a.x, var_1.b.a.c, arg_0.b.a.b.x, arg_0.a.x))), select(-30296i, reverseBits(1557i), true))), arg_0.b.a.a.x, func_6(func_6(func_2(select(vec4<u32>(68546u, var_1.b.a.c, 9307u, 1u), arg_0.b.a.b, arg_0.b.a.a.x), -26654i).a, Struct_4(Struct_3(vec4<u32>(66968u, 4294967295u, 4294967295u, arg_0.a.x), Struct_2(Struct_1(vec2<bool>(arg_0.b.a.a.x, false), var_1.a, arg_0.b.a.b.x, vec4<f32>(var_1.b.a.d.x, -845f, global3.x, arg_0.b.a.d.x)))), arg_0.b.a.a.x, func_6(arg_0.b.a, Struct_4(Struct_3(arg_0.a, Struct_2(var_1.b.a)), false, Struct_3(vec4<u32>(var_1.a.x, 60975u, 0u, var_1.b.a.b.x), arg_0.b), var_1.b.a), 0u, -440f), Struct_1(var_1.b.a.a, vec4<u32>(31116u, 66976u, var_1.a.x, 4294967295u), var_1.a.x, vec4<f32>(-441f, 2074f, var_3, var_1.b.a.d.x))), 0u, func_6(arg_0.b.a, Struct_4(Struct_3(vec4<u32>(70787u, 0u, 35261u, 16137u), Struct_2(arg_0.b.a)), arg_0.b.a.a.x, var_1, Struct_1(arg_0.b.a.a, vec4<u32>(var_1.b.a.c, 62886u, 57744u, var_1.b.a.b.x), arg_0.a.x, arg_0.b.a.d)), select(4294967295u, 74754u, true), _wgslsmith_f_op_f32(var_1.b.a.d.x + -1215f)).b.a.d.x).b.a, Struct_4(Struct_3(vec4<u32>(arg_0.b.a.b.x, var_1.b.a.b.x, var_1.b.a.c, var_1.a.x), Struct_2(arg_0.b.a)), false, Struct_3(~vec4<u32>(var_1.b.a.b.x, arg_0.a.x, var_1.b.a.b.x, 15173u), Struct_2(var_1.b.a)), var_1.b.a), 5172u, _wgslsmith_f_op_f32(-global3.x)), arg_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global1.yxy - vec3<f32>(1000f, global3.x, global3.x)))), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 9397u, 32035u), 84336u, vec4<f32>(global1.x, -1338f, 729f, global1.x))), Struct_3(vec4<u32>(3101u, 17404u, 6556u, 0u), Struct_2(Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 73077u, 0u, 1u), 0u, vec4<f32>(global1.x, global3.x, global3.x, -654f)))))) != -175f, ~abs(4294967295u), func_4(true, ~1u, func_2(vec4<u32>(81357u, 38992u, 23738u, 27716u), global2[_wgslsmith_index_u32(42639u, 4u)]), _wgslsmith_f_op_f32(global3.x * 187f))), Struct_4(Struct_3(func_5(global1.xyx, false, 0u, Struct_2(Struct_1(vec2<bool>(true, true), vec4<u32>(33538u, 0u, 44287u, 45158u), 1u, vec4<f32>(global1.x, global1.x, global3.x, global3.x)))).b, Struct_2(Struct_1(vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 51183u, 0u), 0u, vec4<f32>(202f, 715f, 475f, global1.x)))), true, Struct_3(max(vec4<u32>(81014u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 25014u, 1u, 1u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<u32>(985u, 48321u, 1u, 25765u), 1794u, vec4<f32>(914f, global1.x, -826f, global3.x)))), func_2(vec4<u32>(1u, 1u, 1u, 1u), abs(u_input.a.x)).a), select(7555u, _wgslsmith_mult_u32(1u, 15940u), true) | 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1238f))));
    let var_1 = Struct_2(func_6(Struct_1(vec2<bool>(func_5(var_0.d.d.wzw, false, 11734u, Struct_2(Struct_1(var_0.a.b.a.a, vec4<u32>(var_0.d.b.x, var_0.a.b.a.b.x, 17793u, 34053u), 0u, var_0.d.d))).a.x, 0u >= var_0.c.b.a.c), vec4<u32>(reverseBits(var_0.c.b.a.c), var_0.d.c, ~1u, _wgslsmith_div_u32(var_0.a.a.x, 86076u)), 81079u, _wgslsmith_f_op_vec4_f32(var_0.a.b.a.d + _wgslsmith_div_vec4_f32(var_0.a.b.a.d, vec4<f32>(-1459f, 1833f, global1.x, 318f)))), func_7(var_0.c), (~var_0.c.b.a.b.x ^ (var_0.c.a.x & var_0.a.a.x)) | (var_0.c.b.a.c & 4294967295u), global1.x).b.a);
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.d))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1174f, -738f)), _wgslsmith_f_op_f32(step(-338f, global1.x)), -607f, -930f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.d * var_0.a.b.a.d), var_0.d.d)))));
    global0 = vec3<i32>(global0.x, global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(func_6(func_7(var_0.a).d, func_7(var_0.c), _wgslsmith_dot_vec3_u32(var_1.a.b.xzz, var_1.a.b.www), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec2<bool>(var_1.a.a.x, true), vec4<u32>(4294967295u, 36404u, 1u, 0u), 94843u, vec4<f32>(global1.x, var_0.d.d.x, -464f, -2105f))), var_0.c))).a.x, 66738u)), 4u)], ~abs(global2[_wgslsmith_index_u32(max(1u, 0u), 4u)]));
    let var_2 = var_0.c.b.a.d;
    var_0 = Struct_4(func_6(var_0.d, Struct_4(Struct_3(var_1.a.b & var_0.c.a, func_6(var_0.c.b.a, Struct_4(Struct_3(vec4<u32>(0u, 1244u, 50267u, var_1.a.b.x), var_0.c.b), false, Struct_3(vec4<u32>(4294967295u, 34357u, 0u, var_0.a.a.x), var_0.a.b), Struct_1(vec2<bool>(var_1.a.a.x, true), vec4<u32>(var_0.d.b.x, var_0.d.c, var_0.c.b.a.c, 1u), var_0.c.b.a.b.x, vec4<f32>(global3.x, var_1.a.d.x, -333f, global1.x))), var_1.a.b.x, var_1.a.d.x).b), var_0.d.a.x, var_0.a, func_4(var_1.a.a.x, firstTrailingBit(122760u), var_0.c.b, _wgslsmith_f_op_f32(-var_2.x)).a), ~1u, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -1928f))), !(!(true && !var_0.a.b.a.a.x)), var_0.a, func_7(var_0.a).a.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(~((_wgslsmith_div_u32(3126u, 4294967295u) | var_0.c.a.x) ^ var_0.c.b.a.b.x));
}

