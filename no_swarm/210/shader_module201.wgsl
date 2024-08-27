struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15>;

var<private> global1: Struct_3;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(96842i, -1i), 32953i, vec2<i32>(1i, i32(-2147483648)), -1603f));

var<private> global3: Struct_3 = Struct_3(true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    global3 = Struct_3(true);
    var var_0 = Struct_3(false);
    global2 = Struct_2(Struct_1(~select(vec2<u32>(u_input.b, u_input.d), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a.a.x, u_input.d), arg_3.a.a), vec2<bool>(false, false)), arg_1.yy, -42851i, _wgslsmith_sub_vec2_i32(global2.a.d, countOneBits(arg_1.xy | arg_1.yy)), arg_3.a.e));
    var var_1 = arg_1;
    let var_2 = Struct_2(Struct_1(select(vec2<u32>(abs(14161u), u_input.d), ~vec2<u32>(14168u, 84613u), select(select(vec2<bool>(false, true), vec2<bool>(arg_0.a, global3.a), vec2<bool>(false, arg_0.a)), select(vec2<bool>(true, true), vec2<bool>(true, var_0.a), vec2<bool>(false, arg_0.a)), vec2<bool>(global3.a, true))), ~(~vec2<i32>(0i, 13247i)), ~(-6102i), vec2<i32>(select(reverseBits(global2.a.d.x), var_1.x, true), abs(global2.a.b.x)), arg_3.a.e));
    return -1887f;
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(global2.a.a, (-vec2<i32>(-2147483647i, 0i) | ~arg_0.d) ^ select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.x, global2.a.c), vec2<i32>(14377i, u_input.a)), arg_0.b, global3.a | global1.a), 16720i, _wgslsmith_sub_vec2_i32(abs(arg_0.d), arg_0.b >> (_wgslsmith_add_vec2_u32(vec2<u32>(global2.a.a.x, 1u), vec2<u32>(global2.a.a.x, arg_0.a.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f + global2.a.e)))));
    let var_1 = var_0.a.e;
    let var_2 = Struct_1(abs(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.a.a) & _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.a.x, u_input.b) | var_0.a.a, vec2<u32>(8989u, u_input.d))), _wgslsmith_mod_vec2_i32(vec2<i32>(-16756i, _wgslsmith_sub_i32(var_0.a.b.x, select(2147483647i, var_0.a.c, false))), firstTrailingBit(global2.a.d)), -62020i, var_0.a.d, -457f);
    var var_3 = Struct_2(Struct_1(~(~vec2<u32>(u_input.d, 60173u)), select(vec2<i32>(~var_2.b.x, arg_0.c & 1i), vec2<i32>(global2.a.c, -6672i), !(global1.a | true)), arg_0.d.x, firstTrailingBit(~global2.a.d), arg_0.e));
    let var_4 = 2147483647i;
    return select(vec3<bool>(global3.a, ~(var_3.a.a.x ^ 0u) > abs(~68399u), !global1.a), select(!vec3<bool>(global1.a, all(vec2<bool>(global1.a, true)), !global1.a), vec3<bool>(true, all(select(vec3<bool>(false, false, global1.a), vec3<bool>(true, true, global1.a), global3.a)), global1.a), true), !(!vec3<bool>(true, global1.a, true)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    var var_0 = vec2<u32>(max(0u, ~(~0u)), _wgslsmith_div_u32(u_input.b, u_input.d));
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(global2.a.e, arg_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f))));
    let var_3 = select(!func_4(Struct_1(~global2.a.a, vec2<i32>(1i, u_input.a), -arg_0.d.x, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_1.x), arg_0.d), _wgslsmith_f_op_f32(func_3(Struct_3(true), vec3<i32>(-1i, -2147483647i, 11270i), Struct_3(global1.a), Struct_2(global2.a))))), func_4(Struct_1(~arg_0.a, max(select(arg_0.d, vec2<i32>(0i, arg_0.c), vec2<bool>(false, global3.a)), global2.a.d), reverseBits(abs(arg_1.x)), vec2<i32>(arg_0.b.x, ~arg_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)))), vec3<bool>(!func_4(Struct_1(vec2<u32>(26128u, global2.a.a.x), vec2<i32>(-2147483647i, arg_0.d.x), global2.a.c, arg_1.xx, var_2.x)).x, global1.a, true));
    var_0 = arg_0.a;
    return 1u;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<i32> {
    global1 = Struct_3(false);
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(countOneBits(global2.a.b.x) >> (func_2(Struct_1(vec2<u32>(0u, arg_1.a.x), arg_1.b, arg_1.d.x, arg_1.d, arg_1.e), vec3<i32>(global2.a.d.x, 1i, global2.a.d.x)) % 32u), u_input.c), _wgslsmith_mult_i32(_wgslsmith_div_i32(reverseBits(-1i), max(12605i, global2.a.b.x)), u_input.c)), ~_wgslsmith_mod_vec2_i32(arg_1.b, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(global2.a.d, vec2<i32>(global2.a.b.x, -26886i)), ~arg_1.d, firstLeadingBit(global2.a.d))));
    var var_1 = vec3<bool>(false, global3.a, all(vec2<bool>(global3.a, any(!vec3<bool>(true, global3.a, true)))));
    global1 = Struct_3(global3.a);
    let var_2 = Struct_1(vec2<u32>(abs(arg_1.a.x), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(global2.a.a.x, u_input.b, 1u)))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global2.a.b.x, 2147483647i), vec3<i32>(14781i, -1i, u_input.c)) >> (~12030u % 32u), u_input.c), min(reverseBits(vec2<i32>(global2.a.c, 2147483647i)), ~(~arg_1.d))), 0i, vec2<i32>(_wgslsmith_clamp_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.d.x, 2147483647i, 43095i), vec4<i32>(1i, 2147483647i, -19225i, u_input.a)), -2147483647i), abs(var_0), abs(i32(-1i) * -40793i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-arg_1.b.x, abs(arg_1.d.x), -u_input.c), ~vec3<i32>(arg_1.c, arg_1.c, -2147483647i))), arg_1.e);
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = Struct_2(Struct_1(global2.a.a, firstTrailingBit(-global2.a.b), 28373i, -func_1(global0[_wgslsmith_index_u32(0u, 15u)] << (global0[_wgslsmith_index_u32(0u, 15u)] % vec3<u32>(32u)), global2.a), _wgslsmith_f_op_f32(-global2.a.e)));
    let var_1 = Struct_3(true != global1.a);
    var var_2 = -537f;
    let var_3 = !global3.a;
    let var_4 = !select(select(select(select(vec2<bool>(var_3, global1.a), vec2<bool>(global1.a, false), var_1.a), func_4(Struct_1(global2.a.a, vec2<i32>(-22537i, global2.a.b.x), -2147483647i, global2.a.b, -431f)).zx, any(vec2<bool>(global3.a, true))), select(select(vec2<bool>(var_0, false), vec2<bool>(true, var_3), vec2<bool>(false, global3.a)), func_4(global2.a).zz, vec2<bool>(global1.a, false)), false), func_4(global2.a).xz, vec2<bool>(global3.a, var_3));
    var var_5 = ~vec3<u32>(18078u, global2.a.a.x, 0u);
    let var_6 = vec3<i32>(global2.a.b.x, -12025i, select(_wgslsmith_add_i32(20790i, _wgslsmith_clamp_i32(2147483647i, -55487i, min(-1i, -15626i))), 2147483647i, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a.e))) - _wgslsmith_div_f32(global2.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.e + global2.a.e)))), -reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 17188i, u_input.a), select(var_6, var_6, global3.a))), vec4<u32>(19081u, u_input.b, ~(~(~var_5.x)), _wgslsmith_mult_u32(_wgslsmith_div_u32(64891u, ~u_input.d), ~1u | (var_5.x ^ var_5.x))), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(921f, global2.a.e, -1464f, global2.a.e) - vec4<f32>(1455f, 396f, 1189f, 136f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-988f, 1811f, global2.a.e, global2.a.e)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.e, -222f, global2.a.e, -162f))) * vec4<f32>(_wgslsmith_f_op_f32(global2.a.e + global2.a.e), _wgslsmith_f_op_f32(sign(global2.a.e)), _wgslsmith_f_op_f32(-457f * 550f), global2.a.e))));
}

