struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<i32>, 26>;

var<private> global2: bool;

var<private> global3: u32 = 11909u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global2 = false;
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.d.x | 54671u, abs(_wgslsmith_mult_u32(u_input.a.x, 1u))), ~u_input.d.xx), u_input.d.x, u_input.e.yx, (u_input.a.x > 1u) | all(vec3<bool>(true, true, true)));
    let var_1 = any(!vec4<bool>(any(vec4<bool>(var_0.d, false, var_0.d, var_0.d)), _wgslsmith_f_op_f32(trunc(-2944f)) == 1f, true, var_0.d));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, -380f, 1461f, -2307f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-665f, -813f, -436f, 104f) - vec4<f32>(113f, 706f, -2004f, 881f)), _wgslsmith_div_vec4_f32(vec4<f32>(-344f, -1000f, -937f, 1262f), vec4<f32>(547f, 595f, -888f, -495f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-147f, 554f, -836f, 710f))))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(199f - _wgslsmith_f_op_f32(484f + -435f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-418f - -428f)), -342f, _wgslsmith_f_op_f32(f32(-1f) * -1756f)))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x - -1301f), _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f - var_2.x) * _wgslsmith_f_op_f32(f32(-1f) * -849f)), var_0.d)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-958f - var_2.x), var_2.x)));
    return select(true, !all(select(!vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), vec4<bool>(var_1, true, var_0.d, true), var_2.x < var_2.x)), var_0.d);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = min(_wgslsmith_mod_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_2.b, 1u), 18655u, _wgslsmith_dot_vec3_u32(u_input.a.yyy, u_input.a.yyw), ~12094u), ~u_input.a)), max(vec4<u32>(~arg_2.a, ~arg_2.a, u_input.a.x, 4294967295u), vec4<u32>(~u_input.a.x, arg_2.a, ~arg_2.b, firstTrailingBit(4294967295u)) & vec4<u32>(arg_2.b, ~arg_2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, 0u, 0u), vec3<u32>(u_input.c, u_input.c, arg_2.a)), max(7431u, arg_2.a))));
    var var_1 = vec4<bool>(arg_3, select(select(any(vec4<bool>(false, arg_2.d, arg_0, true)), (true || arg_2.d) & arg_3, any(vec2<bool>(true, arg_0))), !(!arg_2.d), all(select(select(vec2<bool>(arg_2.d, false), vec2<bool>(true, false), vec2<bool>(arg_3, arg_2.d)), !vec2<bool>(arg_2.d, arg_0), arg_3))), select(false, true, arg_3), any(vec3<bool>(arg_3, arg_2.d, any(vec2<bool>(true, true)))));
    global1 = array<vec4<i32>, 26>();
    global0 = func_3(~countOneBits(u_input.e));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-776f - 1000f) * _wgslsmith_f_op_f32(ceil(-676f))), _wgslsmith_f_op_f32(trunc(-1028f))))));
    return Struct_1(max(_wgslsmith_div_u32(4294967295u, u_input.a.x), ~30727u), arg_2.a, vec2<i32>(-38634i, select(13696i, arg_1.x, !(arg_3 == arg_3))), false);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(!all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), -max(vec4<i32>(countOneBits(u_input.e.x), 0i, u_input.e.x, 21356i), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, select(u_input.d.x, 15533u, true)), 26u)]), Struct_1(~u_input.a.x, u_input.d.x, _wgslsmith_mult_vec2_i32(vec2<i32>(abs(u_input.e.x), -2147483647i | u_input.e.x), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2147483647i), _wgslsmith_mult_vec2_i32(u_input.e.xy, u_input.e.xy))), false), ~(~u_input.e.x | min(-10968i, u_input.e.x)) == 1i);
    var var_1 = Struct_2(Struct_1(u_input.d.x, ~var_0.a << (var_0.a % 32u), vec2<i32>(var_0.c.x, ~2147483647i), false), func_2(!all(vec3<bool>(var_0.d, var_0.d, var_0.d)) == select(true, all(vec2<bool>(true, false)), var_0.b > u_input.a.x), _wgslsmith_mod_vec4_i32((vec4<i32>(var_0.c.x, var_0.c.x, 49680i, u_input.e.x) | global1[_wgslsmith_index_u32(1u, 26u)]) ^ global1[_wgslsmith_index_u32(~var_0.a, 26u)], vec4<i32>(-57671i, u_input.e.x, _wgslsmith_div_i32(u_input.e.x, 54087i), -13798i)), Struct_1(79695u, u_input.c, firstTrailingBit(reverseBits(u_input.e.zy)), !select(var_0.d, false, var_0.d)), !(!all(vec3<bool>(false, var_0.d, var_0.d)))).b);
    var var_2 = Struct_3(622f, !select(!(!vec4<bool>(true, var_1.a.d, var_0.d, true)), select(select(vec4<bool>(true, var_1.a.d, false, true), vec4<bool>(var_1.a.d, true, var_0.d, false), var_0.d), !vec4<bool>(true, true, var_1.a.d, true), vec4<bool>(var_0.d, var_1.a.d, var_1.a.d, var_1.a.d)), true));
    var var_3 = 4294967295u;
    var var_4 = ~81431u < abs(_wgslsmith_add_u32(0u, firstLeadingBit(reverseBits(var_0.b))));
    return Struct_2(func_2(true, abs(reverseBits(global1[_wgslsmith_index_u32(reverseBits(25413u), 26u)])), var_1.a, ((var_2.a > var_2.a) || true) & var_0.d), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(12425u, _wgslsmith_add_u32(1u, u_input.c)), ~var_0.a), var_0.a, firstLeadingBit(_wgslsmith_mod_u32(8219u | var_0.a, 0u))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_2(func_2(any(select(select(vec4<bool>(false, arg_0.a.d, arg_0.a.d, false), vec4<bool>(true, false, arg_0.a.d, false), vec4<bool>(arg_0.a.d, false, arg_0.a.d, false)), !vec4<bool>(arg_0.a.d, arg_0.a.d, arg_0.a.d, false), arg_0.a.d)), -_wgslsmith_add_vec4_i32(-vec4<i32>(arg_2.x, u_input.e.x, arg_2.x, u_input.e.x), vec4<i32>(u_input.e.x, -2147483647i, -2147483647i, arg_0.a.c.x)), arg_0.a, true), 94763u);
    let var_1 = func_1();
    global0 = all(select(vec3<bool>(true, all(vec4<bool>(var_0.a.d, true, arg_0.a.d, false)), true), vec3<bool>(var_0.a.d, true, !all(vec4<bool>(false, arg_0.a.d, false, var_0.a.d))), !vec3<bool>(arg_0.a.d, var_1.a.d, true)));
    global3 = arg_3;
    let var_2 = Struct_1(firstLeadingBit(arg_3), arg_0.b, var_1.a.c, arg_0.a.d);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), -1033f, vec4<i32>(-2147483647i, max(select(u_input.e.x, u_input.e.x, true), 2147483647i), _wgslsmith_add_i32(u_input.e.x, firstLeadingBit(u_input.e.x & -50030i)), -34445i), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.d.x), u_input.a), 1u), _wgslsmith_mod_u32(24094u, u_input.a.x) >> (abs(func_1().a.a) % 32u)));
    let var_1 = func_1().a;
    global1 = array<vec4<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-188f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1453f, -1000f)), _wgslsmith_f_op_f32(-1000f - 1000f))))))));
}

