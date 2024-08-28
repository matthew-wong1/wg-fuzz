struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<u32> {
    let var_0 = firstLeadingBit(global0.b);
    var var_1 = global0.a.x;
    global0 = Struct_5(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(47769u, global0.c.x), global0.c.yy), 67804u, select(85977u, 27467u, true), 4294967295u), u_input.c) << (vec4<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(31319u, 27811u, 1u, u_input.c.x), vec4<u32>(96600u, 4294967295u, 0u, 0u)), global0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(61220u, u_input.c.x, global0.c.x, u_input.e.x), u_input.c), u_input.e.x, 15648u) % vec4<u32>(32u)), -global0.b, select(abs(_wgslsmith_mult_vec4_u32(global0.a, _wgslsmith_add_vec4_u32(global0.a, u_input.c))), ~global0.c, any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false)))));
    var var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.e.x, 28017u, ~global0.c.x | (23928u >> (0u % 32u)), firstLeadingBit(~10101u)), vec4<u32>(28381u, global0.c.x, u_input.c.x, ~global0.c.x & (global0.c.x << (u_input.c.x % 32u)))), vec4<u32>(u_input.c.x, _wgslsmith_mod_u32(global0.a.x, u_input.c.x), abs(u_input.e.x), 1u));
    let var_3 = !select(vec4<bool>(true, select(true, true, true), true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), false), true);
    return ~(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.c, vec4<u32>(global0.a.x, u_input.c.x, 0u, 22381u)), vec4<u32>(~u_input.c.x, 0u & u_input.c.x, global0.a.x, _wgslsmith_div_u32(4294967295u, 9841u))) | vec4<u32>(_wgslsmith_clamp_u32(78009u, _wgslsmith_clamp_u32(var_2.x, u_input.c.x, u_input.e.x), countOneBits(1u)), ~56059u, _wgslsmith_mult_u32(var_2.x, 50779u), _wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(var_2.x, 56165u)) ^ global0.a.x));
}

fn func_2() -> Struct_3 {
    var var_0 = !vec3<bool>(true, true, any(vec3<bool>(true, false, true)));
    var var_1 = !var_0.x;
    global0 = Struct_5(func_3(), select(global0.b >> (global0.c % vec4<u32>(32u)), vec4<i32>(-1i) * -global0.b, select(vec4<bool>(all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), true, false, false), select(vec4<bool>(var_0.x, true, var_0.x, false), select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, true, var_0.x, var_0.x)), var_0.x), vec4<bool>(!var_0.x, false, var_0.x, any(vec3<bool>(var_0.x, var_0.x, var_0.x))))), min(u_input.c, vec4<u32>(_wgslsmith_sub_u32(0u, u_input.c.x) << (~55139u % 32u), 4294967295u >> (global0.a.x % 32u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 1u, global0.c.x), select(global0.a, u_input.c, vec4<bool>(var_0.x, true, var_0.x, true))))));
    let var_2 = Struct_4(select(_wgslsmith_sub_vec3_i32(max(global0.b.wwy, vec3<i32>(global0.b.x, 0i, u_input.d)), global0.b.wyx | global0.b.zxz), firstLeadingBit(global0.b.xyw), 2147483647i < ~u_input.d) << (select(abs(vec3<u32>(1u, global0.c.x, 1u)), u_input.e, vec3<bool>(any(vec3<bool>(true, var_0.x, var_0.x)), -2147483647i != global0.b.x, var_0.x)) % vec3<u32>(32u)));
    var var_3 = select(select(vec3<bool>(var_0.x, true, true), select(!select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, false)), select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x))), var_0.x), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_0.x, false)), vec3<bool>(true, !var_0.x, all(vec3<bool>(true, true, var_0.x))), true)), select(!vec3<bool>(all(var_0.xx), true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(true, false, true), !var_0.x), select(!(!vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(true, any(vec4<bool>(var_0.x, true, false, false)), true), all(select(vec2<bool>(true, true), var_0.xx, false)))), var_0.x);
    return Struct_3(Struct_1(vec3<bool>(var_0.x, var_0.x, var_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2716f, 1551f, -997f), vec3<f32>(512f, -358f, 196f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-606f, 692f, 453f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1323f, -1253f, -1000f))))), vec3<f32>(2810f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1440f, 306f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -263f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(382f - 1082f))), true), ~_wgslsmith_div_vec4_i32(-countOneBits(vec4<i32>(2147483647i, 1i, 0i, global0.b.x)), vec4<i32>(global0.b.x, u_input.d, _wgslsmith_dot_vec2_i32(global0.b.xy, var_2.a.zz), i32(-1i) * -1i)), Struct_2(Struct_1(!(!vec3<bool>(var_3.x, var_3.x, var_3.x)), vec3<f32>(-1299f, -1000f, -745f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1151f, -1101f, -619f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, 1222f) + vec3<f32>(-910f, -400f, -1771f))), 1i > _wgslsmith_dot_vec3_i32(global0.b.xzz, var_2.a))));
}

fn func_4(arg_0: Struct_3) -> i32 {
    return -2147483647i;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = vec2<i32>(abs(0i), 2147483647i);
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(abs(1i), func_4(func_2())), ~2147483647i), -var_0.x);
    global0 = Struct_5(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, 4294967295u, arg_0, 12159u), global0.a) >> (max(u_input.c, global0.c) % vec4<u32>(32u)), u_input.c), u_input.c), reverseBits(firstLeadingBit(select(global0.b, global0.b, vec4<bool>(true, false, false, true)))) & -(~vec4<i32>(u_input.b, u_input.d, var_0.x, 0i)), countOneBits(min(min(vec4<u32>(u_input.e.x, 4294967295u, u_input.c.x, 51180u), global0.a), global0.a) >> (vec4<u32>(61023u >> (1u % 32u), global0.a.x, u_input.c.x & arg_0, 3852u) % vec4<u32>(32u))));
    global0 = Struct_5(vec4<u32>(0u, u_input.e.x, ~(~(~1u)), ~(~84461u & _wgslsmith_dot_vec2_u32(global0.c.xw, u_input.c.zx))), global0.b, firstLeadingBit(abs(countOneBits(global0.a))) | global0.a);
    var var_2 = min(u_input.c.ww & vec2<u32>(93018u, 1u), abs(firstTrailingBit(abs(vec2<u32>(global0.a.x, arg_0) << (u_input.e.zz % vec2<u32>(32u))))));
    return Struct_2(Struct_1(!vec3<bool>(all(vec3<bool>(false, false, true)), any(vec2<bool>(true, true)), true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1111f), 466f, _wgslsmith_f_op_f32(abs(2473f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)), 1082f, _wgslsmith_f_op_f32(f32(-1f) * -526f)), !(!all(vec4<bool>(false, true, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -56206i;
    let var_1 = func_1(min(select(reverseBits(1u), 1u, true), ~select(0u, 4294967295u, true)) ^ 21802u);
    let var_2 = Struct_3(Struct_1(func_1(_wgslsmith_sub_u32(~4294967295u, global0.c.x)).a.a, var_1.a.b, var_1.a.b, var_1.a.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), global0.b.yx), 0i, _wgslsmith_mod_i32(u_input.d, global0.b.x), i32(-1i) * -5011i), vec4<i32>(firstTrailingBit(42242i) >> (53234u % 32u), 2147483647i, ~(global0.b.x >> (68876u % 32u)), firstTrailingBit(1i)), global0.b), Struct_2(func_1(global0.a.x & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 34711u, u_input.c.x, 66844u), vec4<u32>(53190u, u_input.c.x, global0.c.x, global0.a.x))).a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(1844f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.a.b.x)), -801f)), var_2.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b.x - _wgslsmith_f_op_f32(select(2092f, -374f, var_1.a.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_1(33096u).a.c.x)) * _wgslsmith_div_f32(var_1.a.c.x, -455f))), var_1.a.b.x, global0.a.x);
}

