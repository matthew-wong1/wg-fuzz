struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: vec2<bool>;

var<private> global1: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    global1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-593f, global1.x, global1.x, 732f) - vec4<f32>(global1.x, global1.x, -757f, 146f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.x, global1.x, 665f) - vec4<f32>(-2472f, global1.x, global1.x, 224f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-680f, global1.x, 1199f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1000f, global1.x))))) - vec4<f32>(421f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global1.x)), global1.x, _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-global1.x), true))))));
    let var_0 = vec2<u32>(abs(~16722u), u_input.b);
    global0 = !(!select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), true), select(!vec2<bool>(true, global0.x), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, global0.x)), global0.x | global0.x), select(vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, global0.x)))));
    global0 = select(vec2<bool>(global0.x, true), !(!vec2<bool>(arg_0.a <= arg_0.a, global0.x | global0.x)), vec2<bool>(global0.x, !(!(!global0.x))));
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, ~(~arg_0.b), ~(~16242u)) | (firstTrailingBit(u_input.c) >> (~countOneBits(u_input.c) % vec3<u32>(32u))), vec3<u32>(51207u, _wgslsmith_div_u32(u_input.c.x, 123955u << (firstTrailingBit(4294967295u) % 32u)), u_input.c.x ^ 1u));
    return vec4<i32>(~(i32(-1i) * -arg_0.a), arg_0.a, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, -73313i, arg_0.a), max(vec3<i32>(18850i, arg_0.a, 8261i), vec3<i32>(arg_0.a, arg_0.a, arg_0.a))), vec3<i32>(0i, select(1i, arg_0.a, global0.x), select(arg_0.a, -43501i, false))), vec3<i32>(reverseBits(arg_0.a), arg_0.a, abs(_wgslsmith_mod_i32(arg_0.a, 1i)))), _wgslsmith_clamp_i32(6899i, ~(12274i & arg_0.a) ^ arg_0.a, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, arg_0.a), -vec2<i32>(arg_0.a, 2147483647i)), 43723i)));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<f32>) -> u32 {
    global1 = vec4<f32>(-248f, _wgslsmith_f_op_f32(-1750f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(261f - -2613f)))), 823f, _wgslsmith_f_op_f32(f32(-1f) * -212f));
    global0 = vec2<bool>(false, all(!select(select(vec4<bool>(arg_0, true, global0.x, false), vec4<bool>(false, arg_0, global0.x, arg_0), vec4<bool>(false, true, true, true)), !vec4<bool>(arg_0, false, true, global0.x), select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, true, global0.x, arg_0), vec4<bool>(true, true, true, arg_0)))));
    global0 = select(!vec2<bool>(false, all(!vec3<bool>(false, false, arg_0))), !vec2<bool>(all(!vec3<bool>(false, global0.x, false)), all(!vec2<bool>(false, arg_0))), vec2<bool>(false, false));
    global0 = !select(!select(select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(global0.x, false)), !vec2<bool>(global0.x, false), !global0.x), vec2<bool>(global0.x, true), vec2<bool>(!all(vec4<bool>(arg_0, arg_0, false, arg_0)), true));
    global0 = vec2<bool>(true, true);
    return 47103u;
}

fn func_2() -> bool {
    var var_0 = Struct_2(~(~0u), Struct_1(1i, ~max(u_input.b, 1u)), max(_wgslsmith_div_vec2_u32(~u_input.c.zy, u_input.c.yz), _wgslsmith_mod_vec2_u32(u_input.c.yx & vec2<u32>(u_input.b, u_input.c.x), u_input.c.xy)), Struct_1(-1i, ~0u));
    var var_1 = Struct_2(1u, var_0.b, ~(~vec2<u32>(0u, 38598u) << ((vec2<u32>(4294967295u, u_input.b) | var_0.c) % vec2<u32>(32u))) << (u_input.c.zz % vec2<u32>(32u)), Struct_1(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~(-35513i), var_0.b.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.a, 2147483647i, var_0.d.a), vec3<i32>(var_0.d.a, var_0.d.a, var_0.d.a))), ~1i), var_0.a));
    var var_2 = 1563u >> (min(var_0.a, 38978u) % 32u);
    var_2 = var_1.c.x;
    var_1 = Struct_2(func_4(global0.x, func_3(Struct_1(11860i, var_1.b.b)) | abs(vec4<i32>(var_1.d.a, var_0.d.a, 0i, 21747i) ^ vec4<i32>(-2147483647i, 35217i, 15949i, var_0.b.a)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global1.zzx + vec3<f32>(-1000f, 1120f, -595f))))), Struct_1(_wgslsmith_div_i32(var_0.d.a, 4058i), func_4(all(vec2<bool>(false, true)), vec4<i32>(-9219i, 0i, var_1.b.a, var_1.d.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 324f, -1618f))))), vec2<u32>(firstLeadingBit(min(1u, _wgslsmith_mod_u32(var_1.a, u_input.b))), ~4294967295u), var_0.d);
    return all(!(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, false, false, global0.x), global0.x)));
}

fn func_1() -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, 1951f, global1.x), vec4<f32>(211f, global1.x, -921f, -1647f), vec4<bool>(false, global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -1090f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(select(global1.x, 232f, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(451f, 1189f, global1.x, global1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 101f) + vec4<f32>(global1.x, 538f, global1.x, 1000f))))))));
    global1 = vec4<f32>(-826f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1785f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) + 1728f), -1366f), _wgslsmith_f_op_f32(floor(global1.x)));
    let var_0 = u_input.c;
    global0 = select(!(!select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), false), select(vec2<bool>(true, false), vec2<bool>(global0.x, true), true), true)), vec2<bool>(true, all(vec4<bool>(global0.x, true, global0.x, true))), func_2());
    var var_1 = global1.x;
    return Struct_2(_wgslsmith_div_u32(~78474u, ~_wgslsmith_sub_u32(69944u, firstTrailingBit(4294967295u))), Struct_1(~((i32(-1i) * -2147483647i) >> (u_input.b % 32u)), 0u), abs(vec2<u32>(u_input.a, u_input.b)), Struct_1(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-36283i, 46346i, 26175i, -26118i), vec4<i32>(-2168i, -10473i, -44953i, -35475i), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), -vec4<i32>(-2020i, -16926i, -2147483647i, 2147483647i))), reverseBits(1u) & func_4(true, countOneBits(vec4<i32>(2147483647i, 13688i, 22507i, 17188i)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, -188f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec2<u32>(33823u, u_input.b ^ var_0.c.x);
    var var_2 = vec3<i32>(_wgslsmith_div_i32(min(max(-35877i, max(var_0.b.a, var_0.b.a)), ~(-38025i)), 17973i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-4541i, var_0.d.a), firstLeadingBit(var_0.b.a), ~2147483647i), abs(vec3<i32>(-2147483647i, var_0.d.a, -5068i))), vec3<i32>(-1i) * -(~vec3<i32>(var_0.b.a, var_0.d.a, var_0.d.a))), -20383i);
    let var_3 = func_1();
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), global1.x, global1.x));
}

