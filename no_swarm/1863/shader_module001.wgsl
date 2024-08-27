struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: vec4<u32>;

var<private> global2: vec3<i32> = vec3<i32>(27812i, 9161i, -17223i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    var var_0 = select(vec4<bool>(true, true, true, true), !vec4<bool>((global1.x != global1.x) | all(vec4<bool>(true, false, false, false)), false, all(vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), vec4<bool>(true, all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, false), true)), abs(32980u) != _wgslsmith_sub_u32(max(20045u, 1u), u_input.b.x), true));
    let var_1 = select(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), ~vec4<u32>(0u, 10620u, global1.x, 56135u)), vec4<u32>(global1.x, 4294967295u, ~43120u, ~13787u)), min(countOneBits(_wgslsmith_sub_vec4_u32(select(vec4<u32>(47797u, 1218u, global1.x, u_input.b.x), vec4<u32>(global1.x, 1u, u_input.b.x, u_input.b.x), var_0.x), ~vec4<u32>(global1.x, 1u, u_input.b.x, u_input.b.x))), vec4<u32>(u_input.b.x, ~1u >> (global1.x % 32u), ~reverseBits(16636u), _wgslsmith_add_u32(1u, countOneBits(global1.x)))), !(!any(!vec3<bool>(var_0.x, true, var_0.x))));
    var_0 = select(!vec4<bool>(var_0.x, all(!vec4<bool>(false, var_0.x, var_0.x, true)), !var_0.x, all(select(var_0.yw, var_0.wy, vec2<bool>(true, true)))), !(!vec4<bool>(true | var_0.x, var_0.x, true, select(var_0.x, false, var_0.x))), !(!select(select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, false, var_0.x, false)), true)));
    let var_2 = Struct_1(~1u);
    var var_3 = min(~firstTrailingBit(_wgslsmith_mod_u32(var_1.x, var_1.x ^ var_2.a)), u_input.b.x);
    return select(!(!(!(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), !vec4<bool>(true, any(vec3<bool>(true, var_0.x, false)) & !var_0.x, select(true, var_0.x, true || var_0.x), var_0.x), all(vec4<bool>(-2147483647i > global2.x, var_0.x, u_input.b.x > 1u, any(var_0.xwy))) | (true | any(select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true)))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_3) -> u32 {
    global1 = ~firstLeadingBit(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global1.x, 2440u, u_input.b.x, 90719u)), _wgslsmith_mult_vec4_u32(vec4<u32>(84322u, global1.x, 1u, 4294967295u), vec4<u32>(1u, 1u, global1.x, 1u)))) & ~vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x)), ~global1.yy), 4294967295u, firstTrailingBit(global1.x), ~_wgslsmith_clamp_u32(global1.x, u_input.b.x, global1.x));
    let var_0 = !(!(!all(select(vec3<bool>(false, false, false), arg_1.wxw, arg_1.xzy))));
    let var_1 = Struct_1(0u);
    global2 = -(vec3<i32>(~(~12114i), _wgslsmith_add_i32(u_input.a, 0i), abs(-34673i)) << (global1.zxy % vec3<u32>(32u)));
    global0 = array<vec4<i32>, 11>();
    return global1.x;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 11>();
    global2 = -(~firstLeadingBit(-vec3<i32>(u_input.a, 0i, 28555i)));
    global2 = vec3<i32>(max(0i, abs(global2.x)), ~(select(global2.x, -2147483647i, arg_1) << (abs(global1.x) % 32u)), u_input.a);
    var var_0 = vec4<bool>(!select(select(arg_1, !arg_1, all(vec3<bool>(arg_1, true, arg_1))), !(!arg_1), (arg_1 & arg_1) || all(vec4<bool>(arg_1, arg_1, arg_1, true))), 4294967295u < ~(~max(arg_2.a, arg_2.a)), any(vec2<bool>(!any(vec3<bool>(false, false, true)), !arg_1)), all(vec4<bool>(arg_1, false, !(u_input.a <= global2.x), 1661f <= arg_0)));
    var var_1 = reverseBits(88352u) >> (_wgslsmith_mod_u32(1u, func_4(false, select(func_3(), select(vec4<bool>(arg_1, var_0.x, false, false), vec4<bool>(false, false, true, arg_1), vec4<bool>(true, false, arg_1, arg_1)), false), Struct_3(699f))) % 32u);
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_3.c);
    let var_1 = Struct_1(1u);
    global2 = vec3<i32>(global2.x, 0i, arg_3.d.x) & vec3<i32>(-1i, 89111i, 0i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-853f * -1218f) - 698f))))));
    global2 = _wgslsmith_add_vec3_i32(-vec3<i32>(i32(-1i) * -u_input.a, 1i, -reverseBits(-1i)), vec3<i32>(arg_3.d.x, arg_3.d.x, ((arg_3.d.x << (0u % 32u)) | firstTrailingBit(arg_2)) ^ ~(-arg_2)));
    return ~abs(1u);
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: u32) -> i32 {
    let var_0 = Struct_2(~(~(~u_input.b.x)), func_2(_wgslsmith_f_op_f32(abs(-907f)), !func_3().x, func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(832f)))), true, func_2(846f, true, func_2(arg_1.x, true, Struct_1(81539u))))), _wgslsmith_f_op_f32(exp2(arg_0.x)), reverseBits(vec3<i32>(1i, 0i, global2.x)), arg_2 & 0u);
    global0 = array<vec4<i32>, 11>();
    let var_1 = !any(func_3());
    var var_2 = _wgslsmith_clamp_vec2_i32(abs(_wgslsmith_div_vec2_i32(~(vec2<i32>(2147483647i, -40960i) ^ vec2<i32>(-10158i, global2.x)), -global2.yx)), max(~(_wgslsmith_div_vec2_i32(var_0.d.zz, var_0.d.xx) & var_0.d.xx), _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, abs(-33189i)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(var_0.d.yx), global2.xx ^ var_0.d.zy, global2.xx))), var_0.d.yy);
    var var_3 = vec3<bool>(var_1 == true, ~(-5870i) > _wgslsmith_add_i32(var_0.d.x, -22170i), false);
    return var_2.x;
}

fn func_7(arg_0: i32) -> vec3<i32> {
    var var_0 = abs(~vec3<i32>(-u_input.a, min(u_input.a, arg_0), -1854i)) ^ firstLeadingBit(max(countOneBits(vec3<i32>(-1i, 38103i, 14405i)), ~vec3<i32>(-37097i, -2147483647i, -2147483647i)));
    global1 = countOneBits(max(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 53841u, ~0u, _wgslsmith_mult_u32(global1.x, 1u)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(global1.x, u_input.b.x, u_input.b.x, global1.x), vec4<u32>(4294967295u, global1.x, 9612u, global1.x), false), vec4<u32>(u_input.b.x, global1.x, 43047u, u_input.b.x), ~vec4<u32>(global1.x, global1.x, 38330u, u_input.b.x))), vec4<u32>(~global1.x, ~u_input.b.x, u_input.b.x, 3908u)));
    var_0 = (vec3<i32>(global2.x, var_0.x, 0i) | _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, var_0.x), vec2<i32>(global2.x, u_input.a))), vec3<i32>(-224i, countOneBits(global2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, global2.x, 22854i, u_input.a), vec4<i32>(u_input.a, arg_0, u_input.a, global2.x))))) << (_wgslsmith_mult_vec3_u32(max(global1.zzy, abs(vec3<u32>(global1.x, global1.x, u_input.b.x))), global1.zxz) % vec3<u32>(32u));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-795f, _wgslsmith_f_op_f32(min(1097f, 1000f))) + _wgslsmith_f_op_f32(round(-1501f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2583f, 802f) + _wgslsmith_div_f32(682f, 220f))))));
    global1 = vec4<u32>(global1.x, (1u & func_2(-1000f, true, Struct_1(4294967295u)).a) ^ 69417u, _wgslsmith_div_u32((~13048u ^ global1.x) & ~4294967295u, global1.x), ~(global1.x << (global1.x % 32u)) | ~(~4294967295u | firstTrailingBit(u_input.b.x)));
    return min(vec3<i32>(1i << (u_input.b.x % 32u), global2.x, _wgslsmith_clamp_i32(-var_0.x, var_0.x, _wgslsmith_div_i32(u_input.a, u_input.a))), _wgslsmith_mod_vec3_i32(select(firstTrailingBit(vec3<i32>(arg_0, 2147483647i, var_0.x)), -vec3<i32>(2147483647i, -2147483647i, -8253i), func_3().x), vec3<i32>(arg_0, arg_0, 59926i))) & _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, global2.x, u_input.a ^ var_0.x), ~(vec3<i32>(-1i, 1i, u_input.a) >> (vec3<u32>(1u, u_input.b.x, 28090u) % vec3<u32>(32u))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-874f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f) - _wgslsmith_f_op_f32(971f + -1216f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1096f, 890f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(1594f * 232f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(563f, 1836f) + vec2<f32>(1444f, 1092f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2074f, -981f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f + -829f)) - var_0.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1004f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-400f, 1000f)), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 735f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2007f, var_0.x), vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1648f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1283f, -505f))))));
    var var_1 = -1i;
    global2 = func_7(func_6(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1232f, var_0.x))), -937f, -653f, _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1742f, 1226f) - vec3<f32>(582f, 501f, var_0.x)))))), func_5(func_2(_wgslsmith_f_op_f32(1133f - var_0.x), true, Struct_1(global1.x)), ~(~global1.x), u_input.a >> (~global1.x % 32u), Struct_2(func_2(var_0.x, false, Struct_1(u_input.b.x)).a, func_2(var_0.x, false, Struct_1(0u)), var_0.x, max(vec3<i32>(global2.x, global2.x, -16143i), vec3<i32>(global2.x, global2.x, global2.x)), ~37914u))));
    global2 = max(vec3<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a, 0i << (u_input.b.x % 32u)), firstLeadingBit(global2.zy)), -(~(-1i))), -_wgslsmith_mult_vec3_i32(func_7(global2.x), select(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(0i, u_input.a, 9671i)), select(vec3<i32>(28155i, u_input.a, -10152i), vec3<i32>(global2.x, u_input.a, global2.x), false), vec3<bool>(true, true, true))));
    return func_5(Struct_1(select(27147u, ~(u_input.b.x | global1.x), true)), global1.x, u_input.a, Struct_2(~(abs(31062u) & global1.x), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1393f) * _wgslsmith_f_op_f32(f32(-1f) * -460f)), var_0.x >= var_0.x, func_2(_wgslsmith_f_op_f32(min(-388f, -1104f)), all(vec2<bool>(true, true)), func_2(-233f, true, Struct_1(u_input.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(714f, var_0.x))), var_0.x)), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global2.x, -3366i), vec3<i32>(global2.x, global2.x, -1i))), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 11>();
    global1 = vec4<u32>(func_1() ^ global1.x, global1.x, _wgslsmith_sub_u32(global1.x, _wgslsmith_dot_vec3_u32(~(~global1.zxy), ~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, global1.x, 0u), vec4<u32>(global1.x, u_input.b.x, global1.x, global1.x))), reverseBits(reverseBits(~vec4<u32>(0u, 1u, global1.x, u_input.b.x)))));
    global1 = ~vec4<u32>(global1.x, firstLeadingBit(global1.x), 28954u, abs(global1.x));
    global0 = array<vec4<i32>, 11>();
    global0 = array<vec4<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-154f, 1067f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1448f, 1000f) - vec2<f32>(-1000f, 1267f)))), vec2<f32>(_wgslsmith_f_op_f32(384f - 264f), _wgslsmith_f_op_f32(sign(987f))), any(vec2<bool>(true, true)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(2201f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(563f)) * _wgslsmith_f_op_f32(870f - 880f)))), abs(1i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1146f, _wgslsmith_f_op_f32(f32(-1f) * -1214f), 1306f) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1605f, -1171f, -868f))), vec3<f32>(-1035f, -822f, -292f)))))), global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)))));
}

