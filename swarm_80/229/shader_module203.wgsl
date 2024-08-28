struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(vec2<bool>(true, true), vec2<i32>(2007i, -68092i), vec2<bool>(true, false), vec3<i32>(0i, -13131i, i32(-2147483648))), Struct_4(vec2<bool>(false, true), vec2<i32>(35422i, 0i), vec2<bool>(true, true), vec3<i32>(-1i, 0i, i32(-2147483648))), Struct_4(vec2<bool>(false, false), vec2<i32>(-4104i, 18249i), vec2<bool>(true, true), vec3<i32>(0i, 2147483647i, 52122i)), Struct_4(vec2<bool>(false, false), vec2<i32>(0i, 1i), vec2<bool>(false, true), vec3<i32>(-1622i, 6767i, -515i)), Struct_4(vec2<bool>(true, true), vec2<i32>(7055i, -1i), vec2<bool>(true, true), vec3<i32>(15662i, 0i, -9216i)), Struct_4(vec2<bool>(false, true), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(true, true), vec3<i32>(2147483647i, 1i, -24681i)), Struct_4(vec2<bool>(false, false), vec2<i32>(-30366i, 1i), vec2<bool>(false, true), vec3<i32>(1i, 0i, -1i)), Struct_4(vec2<bool>(false, false), vec2<i32>(1131i, -1i), vec2<bool>(false, true), vec3<i32>(-45158i, 0i, 1i)), Struct_4(vec2<bool>(true, false), vec2<i32>(10353i, 3146i), vec2<bool>(false, true), vec3<i32>(-1i, 26853i, -64127i)), Struct_4(vec2<bool>(false, false), vec2<i32>(1i, 20220i), vec2<bool>(true, false), vec3<i32>(-1i, 25651i, 2147483647i)), Struct_4(vec2<bool>(false, false), vec2<i32>(-8435i, -29059i), vec2<bool>(true, true), vec3<i32>(i32(-2147483648), -5557i, -1i)), Struct_4(vec2<bool>(false, false), vec2<i32>(-1i, i32(-2147483648)), vec2<bool>(false, false), vec3<i32>(-21328i, -6177i, -1i)));

var<private> global1: u32;

var<private> global2: vec4<f32> = vec4<f32>(2169f, 840f, -589f, -569f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1080f - global2.x)) * _wgslsmith_div_f32(global2.x, 883f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(585f, -264f)) * global2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(692f + global2.x))), _wgslsmith_f_op_f32(751f * _wgslsmith_f_op_f32(floor(541f))))))));
    var var_0 = Struct_2(vec4<bool>(select(select(true, true, false), true, true), true, false, any(vec2<bool>(false, true))), Struct_1(true, 1177f, select(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 4294967295u), vec4<u32>(u_input.e, 52870u, u_input.d, u_input.b) | (u_input.a ^ u_input.a), vec4<bool>(global2.x <= global2.x, true, true, any(vec3<bool>(true, false, false)))), u_input.e, global2.xy), u_input.a.x);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(global2.x)), countOneBits(u_input.c));
    let var_2 = abs(~vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.b.c.yy, max(vec2<u32>(32185u, u_input.e), vec2<u32>(57408u, 86388u))), _wgslsmith_mod_u32(var_0.b.d, 72549u)));
    var var_3 = u_input.a.zwx;
    return var_1.a;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * global2.x))), _wgslsmith_sub_i32(-2329i, -68773i));
    global2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(f32(-1f) * -600f)), 1000f), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(var_0.a - arg_2)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-684f + -336f), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -352f)))))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, 1f))));
    var var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -450f))), _wgslsmith_f_op_f32(min(-796f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1058f + arg_2)))))), vec4<f32>(661f, _wgslsmith_f_op_f32(func_3()), 834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), ~firstTrailingBit(~arg_1.x), select(vec2<bool>(all(vec2<bool>(true, true)), !(var_0.b <= arg_0)), select(vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(all(vec4<bool>(false, false, true, false)), select(false, false, true)), vec2<bool>(true, true)), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec2<bool>(false, true)))), Struct_1(true, _wgslsmith_f_op_f32(func_3()), ~(~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), 715u, vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) * _wgslsmith_f_op_f32(427f + arg_2)))));
    let var_2 = Struct_2(!(!select(vec4<bool>(false, false, var_1.e.a, true), select(vec4<bool>(false, var_1.e.a, var_1.d.x, var_1.d.x), vec4<bool>(true, true, var_1.e.a, false), true), select(vec4<bool>(var_1.e.a, var_1.d.x, var_1.e.a, false), vec4<bool>(var_1.e.a, var_1.d.x, var_1.e.a, true), vec4<bool>(var_1.e.a, false, var_1.d.x, true)))), var_1.e, ~firstTrailingBit(57899u));
    var var_3 = global0[_wgslsmith_index_u32(1u, 12u)];
    return select(!var_2.a, select(!(!select(var_2.a, vec4<bool>(var_3.a.x, true, var_2.b.a, false), true)), var_2.a, !all(var_2.a)), !var_2.a);
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = u_input.a.yw;
    let var_1 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.a);
    let var_2 = !(!select(select(select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, false, true, false)), func_2(-3837i, u_input.a.wzz, 693f, vec4<i32>(2147483647i, u_input.c, 16978i, -2464i)), !vec4<bool>(false, arg_0, arg_0, arg_0)), select(select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), false), !vec4<bool>(true, false, arg_0, false), arg_0), vec4<bool>(any(vec3<bool>(arg_0, false, true)), any(vec3<bool>(true, false, false)), arg_0, true)));
    var var_3 = ~(~(~countOneBits(u_input.a))) & firstTrailingBit(u_input.a);
    var var_4 = Struct_2(!(!vec4<bool>(false, all(vec3<bool>(arg_0, true, var_2.x)), false, var_0.x > u_input.a.x)), Struct_1(_wgslsmith_div_f32(1281f, _wgslsmith_f_op_f32(round(-251f))) != _wgslsmith_f_op_f32(abs(-327f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x)))), min(min(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), ~u_input.a), u_input.a), ~(var_3.x << (u_input.a.x % 32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.yy)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(699f, -1000f)))), _wgslsmith_f_op_vec2_f32(abs(global2.wy)), select(!vec2<bool>(false, arg_0), var_2.yy, !var_2.xx)))), ~(~(~4294967295u)));
    return _wgslsmith_f_op_f32(-471f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.b.e.x)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec4<bool>(global2.x < global2.x, true, true, 43944u != u_input.d)));
    global0 = array<Struct_4, 12>();
    global2 = vec4<f32>(653f, _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -1090f)), _wgslsmith_f_op_f32(func_1(true)), false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2.x)), -982f)), global2.x));
    let var_1 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.yx) - _wgslsmith_f_op_vec2_f32(global2.zy + vec2<f32>(global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + -1000f), global2.x, _wgslsmith_f_op_f32(step(global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-810f, 248f, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -562f, global2.x, 1000f))))))), 277u, vec2<bool>(!all(!var_0.zx), all(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), true), var_0, u_input.d <= u_input.e))), Struct_1(any(var_0.xwz), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(-938f + global2.x))))), select(vec4<u32>(u_input.d, 64645u, ~u_input.d, u_input.d), vec4<u32>(u_input.e, _wgslsmith_clamp_u32(0u, u_input.e, 0u), u_input.a.x, u_input.d), var_0), reverseBits((u_input.d & u_input.a.x) ^ (u_input.b ^ u_input.a.x)), global2.zx));
    global1 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(18806u, var_1.c, u_input.a.x)) & ~u_input.a.wxx, vec3<u32>(u_input.e, var_1.c, countOneBits(u_input.d))), 54729u);
    global1 = _wgslsmith_add_u32(u_input.d, 105121u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.c.wz, global2.xwx, 1u, -1724f);
}

