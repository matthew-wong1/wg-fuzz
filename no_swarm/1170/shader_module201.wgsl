struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
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

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -35210i, 0i, -1i);

var<private> global1: f32 = 1000f;

var<private> global2: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(~(~(~vec2<u32>(21185u, 1u))) ^ select(vec2<u32>(u_input.d.x, 1u), u_input.d, 4294967295u == ~u_input.a.x), ~vec2<i32>(reverseBits(-1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b, global0.x), global0.zxz), u_input.b)), -58808i, -_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, 39690i), select(global0.zx, vec2<i32>(-1i, u_input.b), any(vec4<bool>(false, true, true, true)))), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, false, false, true)), true)), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, global0.x >= -108i), select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    let var_1 = Struct_2(false);
    let var_2 = var_0.a;
    global0 = -_wgslsmith_mod_vec4_i32(~(~vec4<i32>(global0.x, global0.x, 22852i, -2147483647i)) << (~(vec4<u32>(var_0.a.x, 13821u, 17960u, var_0.a.x) & vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 0u)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0.c, -1i, -2147483647i), vec4<i32>(-1i, u_input.b, 0i, -12991i)), reverseBits(vec4<i32>(global0.x, global0.x, 2147483647i, -16601i))));
    let var_3 = select(!vec4<bool>(true, var_1.a, true, false), select(select(select(vec4<bool>(true, var_1.a, var_0.e.x, var_1.a), vec4<bool>(var_0.e.x, var_0.e.x, var_1.a, var_1.a), !vec4<bool>(true, var_0.e.x, false, var_0.e.x)), select(vec4<bool>(true, true, var_1.a, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, var_1.a, true), vec4<bool>(false, var_1.a, var_1.a, true)), true), !vec4<bool>(var_1.a, var_1.a, true, var_1.a)), !select(!vec4<bool>(var_1.a, var_0.e.x, false, var_0.e.x), vec4<bool>(false, var_1.a, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(var_0.e.x, all(vec3<bool>(false, var_0.e.x, true)), var_0.e.x, var_1.a)), var_0.e.x);
    return _wgslsmith_mult_i32(u_input.c, 1i);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<i32>) -> vec2<i32> {
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-150f, arg_2.x)))) - 1136f)));
    let var_0 = Struct_3(Struct_1(vec2<u32>(abs(~u_input.a.x), u_input.e), abs(vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(arg_3, vec2<i32>(u_input.b, global0.x)))), func_3(), _wgslsmith_sub_vec2_i32(vec2<i32>(-35482i, 0i) >> (_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(3695u, 27551u)) % vec2<u32>(32u)), arg_0.yx), vec2<bool>(all(vec3<bool>(true, true, true)), true)), 0u);
    global0 = arg_0;
    let var_1 = Struct_2(true && select(all(select(vec2<bool>(var_0.a.e.x, true), var_0.a.e, var_0.a.e.x)), !(!var_0.a.e.x), true));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -838f);
    return _wgslsmith_clamp_vec2_i32(max(abs(_wgslsmith_mod_vec2_i32(arg_0.yy, vec2<i32>(-1i, 12401i))), _wgslsmith_mod_vec2_i32(~(~vec2<i32>(0i, -12904i)), reverseBits(_wgslsmith_div_vec2_i32(global0.yy, arg_3)))), min(_wgslsmith_mult_vec2_i32(vec2<i32>(53633i, u_input.b), reverseBits(arg_3)) & vec2<i32>(~arg_3.x, countOneBits(arg_0.x)), _wgslsmith_add_vec2_i32(-vec2<i32>(arg_1, 2147483647i), vec2<i32>(countOneBits(21315i), ~15798i))), vec2<i32>(-1i, arg_3.x & (min(global0.x, 1i) & 5548i)));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = !vec4<bool>(true, any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_1.x, true, arg_1.x, arg_0)), vec4<bool>(true, arg_2.e.x, true, true), true)), true, all(vec2<bool>(true, arg_2.e.x)));
    global1 = _wgslsmith_f_op_f32(max(260f, _wgslsmith_f_op_f32(-698f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-195f - -1276f)))))));
    var var_1 = Struct_4(~36712u ^ ((1u & u_input.e) & _wgslsmith_div_u32(u_input.e, ~1u)));
    var_1 = Struct_4(abs(_wgslsmith_mod_u32(max(0u, u_input.d.x), var_1.a)) & var_1.a);
    var var_2 = arg_2.b;
    return Struct_4(~(_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, 121497u, var_1.a), vec4<u32>(0u, 10321u, 0u, 44240u)), _wgslsmith_dot_vec2_u32(arg_2.a, vec2<u32>(u_input.e, u_input.a.x))) & ~_wgslsmith_mod_u32(u_input.e, var_1.a)));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = func_4(!(reverseBits(countOneBits(-2147483647i)) > u_input.c), !vec3<bool>(arg_0 & arg_0, all(vec2<bool>(arg_0, arg_0)), arg_0), Struct_1(~u_input.d << (_wgslsmith_mult_vec2_u32(select(u_input.d, u_input.d, false), vec2<u32>(u_input.a.x, 12081u)) % vec2<u32>(32u)), -(~(-global0.wx)), abs(1i), firstLeadingBit(-vec2<i32>(global0.x, u_input.c)), select(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), true), !select(vec2<bool>(false, arg_0), vec2<bool>(true, false), false), true)), func_2(vec4<i32>(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), global0.zx), ~global0.x, -global0.x), global0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1467f, 587f, -806f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-652f, 2125f, 336f), vec3<f32>(-615f, -760f, -134f)))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, global0.x) ^ global0.zw, vec2<i32>(global0.x, 0i), firstLeadingBit(global0.zy))));
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(563f, -1284f)) + 2153f), _wgslsmith_f_op_f32(select(-1000f, 319f, 0u != var_0.a)), arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-411f, _wgslsmith_f_op_f32(sign(-256f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-519f + 1224f) * _wgslsmith_f_op_f32(abs(-2014f))))), _wgslsmith_f_op_f32(f32(-1f) * -2346f))));
    let var_1 = min(~global0.yzx, -vec3<i32>(func_3(), 0i, global0.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) * 804f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-791f, -602f), -1181f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1431f, 1488f));
    let var_3 = ~7090u;
    return max(vec4<i32>(-8133i, 8573i, global0.x, 1i), vec4<i32>(-_wgslsmith_div_i32(firstTrailingBit(global0.x), -17001i << (1u % 32u)), max(_wgslsmith_mod_i32(global0.x, 4974i), var_1.x), var_1.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.x, global0.x), _wgslsmith_mult_i32(-2147483647i, var_1.x)) & _wgslsmith_mod_i32(min(global0.x, u_input.c), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(48250i, global0.x, 0i, u_input.b)), func_1(true), vec4<i32>(-(~global0.x), _wgslsmith_div_i32(global0.x, -global0.x), u_input.b, global0.x)));
    var var_0 = false;
    var var_1 = _wgslsmith_sub_vec3_u32(~(abs(~vec3<u32>(0u, u_input.d.x, 81922u)) >> (~(vec3<u32>(1u, 1u, 0u) | vec3<u32>(u_input.e, 0u, 0u)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.e, 55916u, 18856u) << (vec3<u32>(u_input.d.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.d.x, 4294967295u), vec3<u32>(8118u, u_input.a.x, 1u), ~vec3<u32>(1u, 73143u, u_input.a.x))) & vec3<u32>(firstTrailingBit(u_input.a.x), 26617u, u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(0u, var_1.x));
}

