struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, vec2<f32>(1216f, 1080f), true, i32(-2147483648));

var<private> global1: Struct_2;

var<private> global2: i32 = 2147483647i;

var<private> global3: i32 = 1i;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(step(arg_2.c, -102f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), arg_2.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(sign(1165f))));
    var var_1 = false;
    let var_2 = Struct_2(!(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.e.d.x, arg_2.e.d.x, 1u), vec3<u32>(arg_2.a.d.x, 4294967295u, arg_1.d.x)) == abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.d.x, arg_2.e.d.x, 1u), vec3<u32>(arg_2.a.d.x, 1u, arg_1.d.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b.x, arg_2.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(694f, -1743f)))))), global0.c, arg_1.a.x);
    var var_3 = Struct_1(~select(_wgslsmith_sub_vec3_i32(arg_2.a.a, vec3<i32>(-1i, u_input.a.x, 17099i)) & vec3<i32>(arg_1.a.x, u_input.a.x, global0.d), countOneBits(vec3<i32>(var_2.d, -11805i, -1i)), select(!vec3<bool>(false, arg_1.c, false), vec3<bool>(arg_1.c, true, arg_1.c), any(vec2<bool>(global1.a, true)))), true, global1.a, countOneBits(~arg_1.d));
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.c, -610f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b))) - _wgslsmith_f_op_vec2_f32(-var_2.b))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-114f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1392f * global1.b.x) + _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_f32(-var_4.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.b.x, -275f))) * var_2.b)));
}

fn func_2(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = Struct_2(!global0.c, _wgslsmith_f_op_vec2_f32(func_3(global1.d, Struct_1(vec3<i32>(1i, select(-35971i, -29429i, true), arg_0.x), _wgslsmith_div_f32(global1.b.x, global1.b.x) >= _wgslsmith_f_op_f32(-global1.b.x), !(!global1.a), vec3<u32>(_wgslsmith_clamp_u32(40554u, 4294967295u, 32986u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(46580u, 75924u, 52495u, 18168u), vec4<u32>(7885u, 82444u, 33459u, 0u)))), Struct_3(Struct_1(vec3<i32>(u_input.a.x, arg_0.x, -2147483647i), false, global0.c, ~vec3<u32>(0u, 0u, 26099u)), all(!vec2<bool>(false, global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), min(34773i, u_input.a.x), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.d, 89269i, 17852i), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(14737i, global0.d, u_input.a.x)), true, global1.a, vec3<u32>(1u, 1u, 1u))))), all(vec4<bool>(false | (false || global0.a), any(!vec4<bool>(false, global1.c, false, global1.a)), !(!global0.c), true)), (-2147483647i | ((global1.d >> (4294967295u % 32u)) >> (1u % 32u))) ^ _wgslsmith_clamp_i32(u_input.a.x, -15991i, _wgslsmith_clamp_i32(arg_0.x, max(9902i, -2147483647i), ~global0.d)));
    let var_1 = vec3<bool>(any(!(!(!vec2<bool>(global0.c, true)))), any(vec2<bool>(true, var_0.c)) & any(!(!vec4<bool>(global1.c, global0.c, false, global1.a))), false);
    var var_2 = ~14286i;
    let var_3 = _wgslsmith_mult_vec3_i32(min(vec3<i32>(-15780i, abs(abs(var_0.d)), var_0.d), (-vec3<i32>(-2147483647i, 2147483647i, 35842i) | (vec3<i32>(-2147483647i, arg_0.x, arg_0.x) & vec3<i32>(var_0.d, -17857i, global0.d))) & vec3<i32>(global0.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.d, -2147483647i), vec3<i32>(u_input.a.x, 59776i, -1i)), 41702i | arg_0.x)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(6612i, global0.d, var_0.d), vec3<i32>(u_input.a.x, -2147483647i, -1i)), -1i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.d, 2147483647i), i32(-1i) * -2147483647i)), 0i | global0.d, countOneBits(arg_0.x)));
    global1 = Struct_2(true, vec2<f32>(_wgslsmith_div_f32(1346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - global0.b.x))), var_0.b.x), global0.a, firstLeadingBit(~global0.d));
    return _wgslsmith_f_op_vec2_f32(-var_0.b);
}

fn func_1() -> bool {
    global0 = Struct_2(!(global0.d > -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, 100f) + _wgslsmith_f_op_vec2_f32(func_2(u_input.a)))), false, 2147483647i);
    var var_0 = _wgslsmith_f_op_f32(abs(global0.b.x));
    let var_1 = select(select(vec3<bool>(global0.c, true, true == global1.c), !vec3<bool>(true, true, false & global1.a), vec3<bool>(!all(vec2<bool>(global1.c, global0.a)), global0.c, all(vec2<bool>(true, true)))), !vec3<bool>(select(global0.a, true, all(vec4<bool>(true, true, false, false))), false, all(select(vec3<bool>(false, true, false), vec3<bool>(global0.c, global1.a, false), false))), true);
    let var_2 = ~(~(~(~vec3<u32>(1u, 1u, 1u))));
    let var_3 = vec2<bool>(global0.b.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-178f * _wgslsmith_f_op_f32(-global1.b.x))), ~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(global1.d, global0.d)) == u_input.a.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(all(vec3<bool>(false, !(global0.c && global0.a), all(!vec3<bool>(global1.c, global1.c, global0.a)))), global0.b, func_1(), _wgslsmith_mult_i32(global1.d, firstLeadingBit(~42344i)));
    let var_0 = Struct_1(vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(global1.d, -1i), vec2<i32>(global0.d, global0.d))), -firstTrailingBit(u_input.a.x), 1i), true, all(select(vec4<bool>(any(vec3<bool>(global0.a, global1.a, false)), false, global0.c, !global0.c), select(!vec4<bool>(global0.c, true, global0.c, global0.a), vec4<bool>(global1.a, true, true, false), global0.a & global1.c), vec4<bool>(true, false, !global1.a, false))), ~(~min(vec3<u32>(4294967295u, 1u, 31942u), ~vec3<u32>(4294967295u, 26777u, 36590u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.x, 980f, global1.b.x), vec3<f32>(global0.b.x, -556f, 1392f), vec3<bool>(false, false, true)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b.x, -112f, global0.b.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.b.x, global0.b.x, 1683f), vec3<f32>(-1000f, global1.b.x, -709f))))))));
    let var_2 = Struct_1(abs(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(select(u_input.a, vec2<i32>(0i, 1i), global0.a), firstLeadingBit(var_0.a.xx)), select(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), false))), all(vec4<bool>(all(select(vec4<bool>(true, true, global0.c, false), vec4<bool>(global1.c, false, true, global0.c), true)), true, false, select(false, global1.c, func_1()))), false, ~(~(~var_0.d)));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -214f, -430f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1291f, global0.b.x, 322f), vec3<f32>(global1.b.x, global0.b.x, -243f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-469f, var_1.x, -275f))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(global1.b.x)), 191f, _wgslsmith_f_op_f32(trunc(global1.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2.d.x & _wgslsmith_add_u32(var_0.d.x, var_0.d.x), firstTrailingBit(4294967295u)) ^ var_0.d.zz);
}

