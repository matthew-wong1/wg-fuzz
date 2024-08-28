struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1 = Struct_1(11632i, 18198i, 1u, vec3<f32>(-1000f, 844f, -1000f), -218f);

var<private> global2: vec2<u32> = vec2<u32>(15426u, 0u);

var<private> global3: vec4<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(global3.yy, vec2<i32>(max(_wgslsmith_mod_i32(global0.x, u_input.c.x), -1i), reverseBits(arg_0.a))), global0.x, global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-398f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) + -501f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.e)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-544f)) - global1.e));
    let var_0 = select(select(vec2<bool>(true, all(vec4<bool>(false, false, true, false))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true)), vec2<bool>(true, true), true);
    let var_1 = Struct_1(arg_0.a, -12886i, ~u_input.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(834f, arg_0.e, arg_0.d.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(639f, 159f, -162f))))), _wgslsmith_f_op_f32(-global1.e));
    let var_2 = Struct_1(min(-3490i, -(~(-68505i))) ^ (firstTrailingBit(i32(-1i) * -2147483647i) >> (firstLeadingBit(_wgslsmith_div_u32(var_1.c, u_input.a)) % 32u)), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), min(1u, 0u), vec3<f32>(-897f, _wgslsmith_f_op_f32(1000f * -771f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e + 334f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x * global1.e)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-632f - _wgslsmith_f_op_f32(-arg_0.e)));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: u32) -> vec3<f32> {
    let var_0 = Struct_1(~1i, _wgslsmith_mult_i32(select(global0.x, _wgslsmith_mult_i32(-20799i, _wgslsmith_mod_i32(global1.a, 0i)), arg_0), global3.x), _wgslsmith_dot_vec2_u32(~((arg_1.yy >> (arg_1.yz % vec2<u32>(32u))) << (vec2<u32>(arg_2, 4294967295u) % vec2<u32>(32u))), ~countOneBits(firstTrailingBit(vec2<u32>(1u, global2.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2021f, 172f), _wgslsmith_f_op_f32(477f - 966f), arg_0 | arg_0))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_3(Struct_1(2147483647i, u_input.c.x, 0u, _wgslsmith_f_op_vec3_f32(global1.d - global1.d), _wgslsmith_f_op_f32(-394f * global1.d.x))))), global1.e);
    var var_1 = vec2<u32>(var_0.c, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, _wgslsmith_add_u32(global1.c, 4294967295u)), vec2<u32>(61898u, _wgslsmith_clamp_u32(0u, global2.x, u_input.b.x))), vec2<u32>(1u, min(_wgslsmith_add_u32(global1.c, 0u), 26439u ^ arg_1.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global1.e, 1142f)))), var_0.d.x))));
    let var_3 = Struct_1(reverseBits(u_input.c.x), u_input.c.x, select(~_wgslsmith_div_u32(4294967295u, 14808u), 68258u, arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(481f, global1.d.x, _wgslsmith_f_op_f32(sign(var_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, var_0.e, 855f)) * vec3<f32>(-605f, -964f, var_0.d.x)), !(!vec3<bool>(arg_0, arg_0, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + 1420f) * var_0.e));
    global2 = select(vec2<u32>(max(max(var_1.x, global1.c), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(65627u, global2.x, arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, var_1.x, 61469u, 1u), vec4<u32>(arg_2, 1u, 1u, global2.x)))), global1.c), max(vec2<u32>(0u, var_0.c), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c, var_0.c), ~vec2<u32>(var_0.c, 0u)) | vec2<u32>(min(var_0.c, 1u), ~4294967295u)), false);
    return var_0.d;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    global1 = Struct_1(-(~global1.a), global3.x, global1.c, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1972f, 946f)) > arg_1.x, reverseBits(~vec3<u32>(u_input.b.x, 88539u, 1u)), 24590u)), 483f);
    global1 = Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(global3.x, 1i), u_input.c.x), -1i, 1u, vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(~global3.x, 0i, _wgslsmith_mult_u32(u_input.a, 0u), vec3<f32>(arg_1.x, 643f, arg_0), arg_0))), 1426f, _wgslsmith_f_op_f32(floor(1172f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-946f, global1.e)) * _wgslsmith_f_op_f32(f32(-1f) * -391f)) + -883f) + _wgslsmith_f_op_f32(1961f + arg_0)));
    var var_0 = u_input.b.x >> (_wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(~vec2<u32>(global1.c, 31224u), _wgslsmith_mod_vec2_u32(u_input.b.yy, vec2<u32>(u_input.a, 1u))), vec2<u32>(_wgslsmith_sub_u32(32349u, 1u), 1u), true), vec2<u32>(u_input.b.x, 1u)) % 32u);
    var var_1 = vec2<i32>(-_wgslsmith_div_i32(countOneBits(1i), 1i), 1i);
    let var_2 = Struct_1(var_1.x, _wgslsmith_add_i32(~select(-1i, -global0.x, true), var_1.x), abs(~_wgslsmith_sub_u32(global1.c | 1u, 37466u)), vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-3040f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1166f, arg_1.x, false))))), arg_1.x);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -292f), global1.d.xz);
    var var_1 = Struct_1(firstLeadingBit(-2147483647i), ~countOneBits(var_0.b), _wgslsmith_mod_u32(69277u, reverseBits(~27671u >> (~global2.x % 32u))), global1.d, _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(f32(-1f) * -1714f)))));
    var var_2 = !vec4<bool>(true, false, true, global3.x >= global3.x);
    global2 = u_input.b.yy;
    let var_3 = select(select(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, 110000u, 0u), _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(15366u, var_1.c, 41057u))), select(u_input.b, u_input.b, var_0.a != global0.x), !vec3<bool>(false, false, var_2.x)) & vec3<u32>(~53241u, max(0u >> (1u % 32u), ~global1.c), 0u), vec3<u32>(~(~(~u_input.b.x)), 4294967295u, 0u), !all(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, false))));
    let var_4 = select(!vec4<bool>(false, true, global3.x <= -1i, var_2.x), vec4<bool>(!(~var_0.c >= _wgslsmith_clamp_u32(4294967295u, var_1.c, 0u)), var_2.x, !any(var_2.wx), _wgslsmith_clamp_u32(var_0.c, var_3.x | 1u, 0u) < ~(var_0.c | global1.c)), select(select(vec4<bool>(var_2.x, all(vec4<bool>(false, false, var_2.x, true)), any(vec4<bool>(false, var_2.x, var_2.x, var_2.x)), global0.x < 1392i), select(!vec4<bool>(true, var_2.x, false, var_2.x), !vec4<bool>(var_2.x, var_2.x, var_2.x, true), true), true), select(!select(vec4<bool>(true, false, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(true, true, true, true)), select(!vec4<bool>(false, var_2.x, var_2.x, var_2.x), select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(false, var_2.x, var_2.x, var_2.x), var_2.x), true), !select(var_2.x, false, true)), vec4<bool>(var_2.x, true, false, false)));
    let var_5 = var_1.d.x;
    let var_6 = -455f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1572f, -239f, -2057f, -613f))))), vec4<f32>(-1000f, var_6, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e, 1000f) - _wgslsmith_f_op_f32(floor(454f))), _wgslsmith_f_op_f32(abs(var_6)))), -139f, ~(vec3<u32>(global1.c, global2.x, countOneBits(10363u)) << (max(abs(var_3), var_3) % vec3<u32>(32u))), 1140f, ~_wgslsmith_div_vec2_u32(~var_3.zx, firstLeadingBit(~var_3.zz)));
}

