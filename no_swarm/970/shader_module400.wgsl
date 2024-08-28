struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(49539u, 1u);

var<private> global1: f32 = -268f;

var<private> global2: array<vec3<i32>, 3>;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_1, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = !arg_1;
    global0 = arg_0.d.yx;
    let var_1 = -157f;
    let var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f + arg_0.c.x)), _wgslsmith_f_op_f32(round(arg_0.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.c.x, arg_0.c.x)))), 1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(ceil(arg_0.c.x)), -1532f, _wgslsmith_f_op_f32(min(arg_0.c.x, 158f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c.x, arg_0.c.x, -1000f, 1268f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1082f, 1250f, arg_0.c.x, arg_0.c.x) - vec4<f32>(arg_0.c.x, var_1, -1000f, arg_0.c.x))))));
    return _wgslsmith_mult_u32(var_2, _wgslsmith_sub_u32(firstLeadingBit(23343u), firstLeadingBit(~global0.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    global4 = array<Struct_1, 27>();
    var var_0 = -arg_1.b;
    global0 = u_input.c.xz;
    let var_1 = Struct_3(!(!select(!vec3<bool>(global3.x, arg_1.c, true), select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(arg_1.c, global3.x, global3.x), vec3<bool>(global3.x, arg_1.c, arg_1.c)), true)), ~func_3(Struct_3(!vec3<bool>(global3.x, false, global3.x), 1u, vec2<f32>(arg_0.x, arg_0.x), _wgslsmith_mult_vec3_u32(u_input.c, u_input.c), Struct_1(48950u, -3674i, false)), true), arg_0, u_input.c, arg_1);
    var_0 = max(-2147483647i, arg_1.b);
    return false;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(~u_input.c, _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(35869u, 4294967295u, u_input.c.x), u_input.c), vec3<u32>(global0.x, 4294967295u, u_input.c.x)), ~(~vec3<u32>(87880u, 4294967295u, 13868u)), ~u_input.c ^ u_input.c), ~firstTrailingBit(abs(u_input.c))), abs(u_input.c));
    global3 = select(vec2<bool>(any(vec2<bool>(true, true)), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(1221f, -301f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(594f, 2712f), vec2<f32>(1142f, 708f)))), Struct_1(_wgslsmith_dot_vec3_u32(var_0, u_input.c), select(arg_1.x, 39959i, true), global3.x | arg_0))), select(select(select(vec2<bool>(global3.x, true), !vec2<bool>(arg_0, arg_0), !arg_0), select(vec2<bool>(true, true), vec2<bool>(arg_0, global3.x), false), !global3.x), !select(!vec2<bool>(true, global3.x), vec2<bool>(arg_0, true), !vec2<bool>(arg_0, false)), false), true);
    let var_1 = false;
    let var_2 = Struct_2(vec4<bool>(arg_0, false, arg_0, true));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f) * -662f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1838f, -1073f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(574f, 587f, 619f) - vec3<f32>(1049f, -1638f, -203f)) + vec3<f32>(1000f, 504f, 311f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-565f, -1510f, 181f) * vec3<f32>(1632f, 1924f, 632f))) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-394f)), _wgslsmith_f_op_f32(abs(256f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f + 747f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))));
    return -532f;
}

fn func_1(arg_0: u32) -> f32 {
    global4 = array<Struct_1, 27>();
    global2 = array<vec3<i32>, 3>();
    global0 = u_input.c.xz;
    var var_0 = u_input.c;
    let var_1 = countOneBits(_wgslsmith_clamp_vec4_i32((vec4<i32>(-49877i, 0i, 3989i, u_input.b) >> (vec4<u32>(22443u, var_0.x, 0u, 4294967295u) % vec4<u32>(32u))) & ~vec4<i32>(u_input.b, 47198i, u_input.a, 25741i), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 12345i, -43284i, u_input.b), vec4<i32>(1i, -7051i, u_input.a, u_input.b)), vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a) >> (vec4<u32>(global0.x, u_input.c.x, u_input.c.x, arg_0) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b))), ~(-vec4<i32>(u_input.b, u_input.b, -1i, -30278i))) | -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, 0i), vec4<i32>(-34671i, -1i, 7173i, u_input.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -557f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1303f - -472f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-380f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(vec2<f32>(473f, -1000f), global4[_wgslsmith_index_u32(global0.x, 27u)]), vec3<i32>(var_1.x, 20012i, 10872i)))), all(select(vec4<bool>(true, false, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x), global3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<bool>(global3.x, !(global0.x >= 1u), (u_input.a != u_input.b) & true), 5055u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2051f, -2204f)), _wgslsmith_f_op_f32(sign(1050f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c.x)))), vec2<f32>(1f, 1f))), vec3<u32>(u_input.c.x, reverseBits(global0.x << (~u_input.c.x % 32u)), ~(~(91991u << (u_input.c.x % 32u)))), Struct_1(~(~global0.x), (i32(-1i) * -u_input.b) | _wgslsmith_mod_i32(-30107i, i32(-1i) * -2147483647i), false));
    let var_1 = Struct_2(vec4<bool>(true, var_0.e.c != false, select(false, false & var_0.a.x, func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(311f, -208f))), var_0.e)), !var_0.e.c | any(select(vec4<bool>(global3.x, global3.x, var_0.a.x, true), vec4<bool>(var_0.a.x, false, false, global3.x), vec4<bool>(true, global3.x, global3.x, false)))));
    let var_2 = var_1;
    var var_3 = var_1;
    global4 = array<Struct_1, 27>();
    let var_4 = Struct_3(!select(!vec3<bool>(false, var_2.a.x, var_1.a.x), !(!vec3<bool>(false, var_0.e.c, var_3.a.x)), var_0.e.c), var_0.e.a, vec2<f32>(var_0.c.x, var_0.c.x), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, ~(~60614u), 24115u), var_0.d ^ u_input.c), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~(~(-21903i)), min(u_input.a, countOneBits(-var_4.e.b))), (abs(vec4<u32>(global0.x, u_input.c.x, 15155u, 1u)) << (_wgslsmith_sub_vec4_u32(select(vec4<u32>(var_4.b, u_input.c.x, var_4.b, var_4.b), vec4<u32>(0u, 167009u, 0u, 67628u), true), vec4<u32>(1u, var_4.d.x, 0u, 98137u)) % vec4<u32>(32u))) ^ (min(vec4<u32>(4294967295u, 15134u, 49293u, 1u), vec4<u32>(var_4.b, 0u, u_input.c.x, 4294967295u) | vec4<u32>(var_0.e.a, 22577u, 108888u, 40539u)) ^ ~vec4<u32>(u_input.c.x, 0u, global0.x, 91874u)), vec3<u32>(var_0.d.x & ~(~global0.x), ~1u, firstTrailingBit(_wgslsmith_div_u32(17034u, 11859u))), select(u_input.c, vec3<u32>(~(~var_0.d.x), global0.x, 4870u), all(!select(var_4.a.xz, vec2<bool>(true, var_4.e.c), true))), _wgslsmith_add_vec2_i32(vec2<i32>(~var_4.e.b, -1i), (-vec2<i32>(51737i, var_4.e.b) << (~var_4.d.xy % vec2<u32>(32u))) & abs(vec2<i32>(var_4.e.b, var_4.e.b) >> (vec2<u32>(43628u, global0.x) % vec2<u32>(32u)))));
}

