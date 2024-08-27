struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false));

var<private> global1: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> vec3<i32> {
    var var_0 = -min(u_input.a, vec2<i32>(2147483647i, firstLeadingBit(u_input.a.x)) & firstLeadingBit(~vec2<i32>(u_input.a.x, -2147483647i)));
    global1 = _wgslsmith_dot_vec4_u32(select(~vec4<u32>(6380u, ~arg_1.a.a.x, ~95134u, 1u), ~(~vec4<u32>(0u, 0u, 3661u, 39487u) & _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_1.a.a.x, arg_1.a.a.x, 4294967295u), vec4<u32>(1u, arg_1.a.a.x, 8661u, arg_1.a.a.x))), global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<u32>(~max(0u, arg_1.a.a.x), firstTrailingBit(1u), arg_1.a.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.a.x, arg_1.a.a.x, 1u, 0u) | vec4<u32>(0u, arg_1.a.a.x, 53367u, 28763u), vec4<u32>(arg_1.a.a.x, 12095u, 1u, 0u)), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.a.a, vec3<u32>(0u, arg_1.a.a.x, 1u)), _wgslsmith_add_u32(arg_1.a.a.x, 10272u), arg_1.a.a.x, 20603u))));
    var var_1 = 2147483647i;
    var var_2 = arg_1.a.e;
    global0 = array<vec4<bool>, 32>();
    return -_wgslsmith_mod_vec3_i32(min(-(vec3<i32>(u_input.a.x, -46367i, -2147483647i) | vec3<i32>(var_0.x, 1i, var_0.x)), select(~vec3<i32>(var_0.x, u_input.a.x, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_0.x, 4193i), vec3<i32>(-54889i, -2147483647i, u_input.a.x)), vec3<bool>(arg_1.a.c, arg_0.x, true))), ~((vec3<i32>(u_input.a.x, var_0.x, -49643i) | vec3<i32>(-2147483647i, u_input.a.x, -2869i)) << (countOneBits(vec3<u32>(6937u, arg_1.a.a.x, 60573u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = arg_2.a.a.x;
    let var_1 = abs(abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.a.x, -2147483647i)), _wgslsmith_dot_vec2_i32(arg_1.zy, vec2<i32>(325i, arg_1.x))) & func_3(!vec2<bool>(arg_2.a.c, true), arg_2).xx));
    global0 = array<vec4<bool>, 32>();
    var var_2 = _wgslsmith_f_op_f32(trunc(arg_0));
    global1 = arg_2.a.a.x;
    return select(select(!select(vec3<bool>(arg_2.a.c, true, arg_2.a.c), !vec3<bool>(arg_2.a.c, false, true), !vec3<bool>(arg_2.a.c, arg_2.a.c, true)), vec3<bool>(arg_2.a.c, !(!arg_2.a.c), all(select(vec2<bool>(arg_2.a.c, arg_2.a.c), vec2<bool>(arg_2.a.c, arg_2.a.c), vec2<bool>(false, arg_2.a.c)))), vec3<bool>(true, !(arg_2.a.c != true), true)), select(vec3<bool>(true, false, true), select(vec3<bool>(true & arg_2.a.c, !arg_2.a.c, all(global0[_wgslsmith_index_u32(arg_2.a.a.x, 32u)])), !select(vec3<bool>(arg_2.a.c, arg_2.a.c, arg_2.a.c), vec3<bool>(false, true, arg_2.a.c), false), false), !(!select(vec3<bool>(arg_2.a.c, false, false), vec3<bool>(false, arg_2.a.c, false), arg_2.a.c))), !(!(!(!vec3<bool>(arg_2.a.c, false, arg_2.a.c)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: u32) -> bool {
    let var_0 = func_4(arg_0.a.b, ~(select(func_3(vec2<bool>(arg_0.a.c, false), Struct_3(arg_0.a)), vec3<i32>(-1i, 0i, u_input.a.x), select(vec3<bool>(arg_0.a.c, true, true), vec3<bool>(arg_0.a.c, true, true), arg_0.a.c)) << (arg_0.a.a % vec3<u32>(32u))), arg_0);
    global0 = array<vec4<bool>, 32>();
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(max(-(~u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, u_input.a.x), -u_input.a.x)), u_input.a.x), _wgslsmith_add_i32(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, abs(2147483647i), -13453i << (arg_1.x % 32u)), -2147483647i) ^ _wgslsmith_sub_i32(0i | u_input.a.x, max(~4026i, reverseBits(-45387i))), min(-2088i, 2147483647i), ~select(i32(-1i) * -2147483647i, abs(u_input.a.x), !var_0.x));
    var var_2 = -1198i;
    let var_3 = select(_wgslsmith_mult_i32(firstLeadingBit(min(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -16773i), vec2<i32>(2147483647i, -26534i)), u_input.a.x)), -15496i), var_1.x, false);
    return arg_0.a.c;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_1.a.a.zy;
    global0 = array<vec4<bool>, 32>();
    var var_1 = func_2(Struct_3(Struct_1(_wgslsmith_sub_vec3_u32(firstTrailingBit(arg_3.a), _wgslsmith_clamp_vec3_u32(arg_3.a, arg_1.a.a, vec3<u32>(arg_3.a.x, arg_1.a.a.x, 1u))), arg_3.d.x, true | !arg_3.c, vec3<f32>(arg_1.a.d.x, 1f, _wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) - _wgslsmith_f_op_f32(step(arg_1.a.e, -801f))))), _wgslsmith_mult_vec2_u32(~min(arg_1.a.a.xx, vec2<u32>(67393u, 0u)) & arg_1.a.a.yz, vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, arg_0), vec4<u32>(4294967295u, arg_3.a.x, arg_3.a.x, 12629u)), _wgslsmith_mult_u32(1u, 82285u), ~4294967295u), arg_1.a.a.x)), arg_1.a.a.x);
    let var_2 = countOneBits(select(vec4<u32>(select(110551u, firstLeadingBit(4294967295u), all(vec4<bool>(true, true, true, true))), reverseBits(~0u), _wgslsmith_div_u32(var_0.x & var_0.x, 70801u), _wgslsmith_dot_vec2_u32(arg_3.a.zx, ~arg_1.a.a.xx)), vec4<u32>(0u, arg_1.a.a.x ^ var_0.x, ~arg_1.a.a.x, 1u << (abs(1u) % 32u)), select(arg_3.a.x < 0u, arg_2.x, arg_3.c)));
    let var_3 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-183f * 627f), arg_1.a.b))));
}

fn func_5(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = -20401i;
    var var_1 = select(vec4<bool>(any(vec3<bool>(true, true, true)), false, !all(vec3<bool>(true, true, true)), any(vec2<bool>(u_input.a.x != u_input.a.x, false))), select(!select(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(~1u, 32u)], true), global0[_wgslsmith_index_u32(min(45551u, 19171u), 32u)], true), true);
    var var_2 = -reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 21590i, ~u_input.a.x), select(abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), all(global0[_wgslsmith_index_u32(64802u, 32u)]))));
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~firstLeadingBit(1u), 1u), select(~vec2<u32>(1u, 1u), vec2<u32>(~153588u, ~1u), vec2<bool>(!var_1.x, all(vec2<bool>(true, true))))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(9286u, 0u)) << (firstLeadingBit(select(83613u, 0u, false)) % 32u), max(~_wgslsmith_sub_u32(4294967295u, 0u), 1u)));
    let var_3 = true;
    return ~(~(~select(abs(vec4<u32>(4294967295u, 36628u, 4294967295u, 65026u)), vec4<u32>(0u, 1u, 32818u, 41476u), select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_3, var_1.x), var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-188f + 672f), 2413f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f), _wgslsmith_f_op_f32(func_1(98115u, Struct_2(Struct_1(vec3<u32>(78288u, 4294967295u, 804u), 1000f, false, vec3<f32>(-886f, -150f, -731f), 968f)), vec2<bool>(false, true), Struct_1(vec3<u32>(2073u, 20792u, 32303u), 277f, true, vec3<f32>(690f, 744f, -320f), 1196f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global1 = 1u;
    global0 = array<vec4<bool>, 32>();
    global1 = var_0.x;
    let var_1 = Struct_1(var_0.zzw >> (var_0.yyy % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -735f), !all(vec3<bool>(false, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1734f, 702f, 489f), vec3<f32>(-445f, 724f, 150f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(830f, 1346f, 935f), vec3<f32>(334f, 523f, -525f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(899f, -549f, 2231f), vec3<f32>(-2323f, 151f, -1000f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(203f, -204f, 195f))))))), -1967f);
    global0 = array<vec4<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e, _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.d.x)) * _wgslsmith_f_op_f32(select(153f, var_1.d.x, var_1.c))) + _wgslsmith_div_f32(var_1.e, var_1.b))), abs(~(10859i << (select(1u, var_1.a.x, true) % 32u))));
}

