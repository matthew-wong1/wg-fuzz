struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 787f;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: vec3<u32> = vec3<u32>(36024u, 54051u, 4294967295u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec2<u32>) -> bool {
    let var_0 = ~_wgslsmith_add_vec3_i32(~vec3<i32>(-74531i, arg_1.c.a >> (arg_3.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-29214i, 2147483647i), vec2<i32>(u_input.a, arg_0.a.a))), vec3<i32>(abs(arg_1.c.a), u_input.a, -_wgslsmith_sub_i32(arg_0.c.a, -53601i)));
    global2 = vec3<u32>(global2.x, 1u & ~reverseBits(_wgslsmith_mult_u32(0u, arg_3.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(2698u, _wgslsmith_add_u32(1u, ~4294967295u), ~_wgslsmith_div_u32(4294967295u, arg_3.x)), ~(~select(vec3<u32>(arg_3.x, 1u, global2.x), vec3<u32>(arg_3.x, 1u, global2.x), global1.x))));
    return 1238f <= _wgslsmith_f_op_f32(-arg_0.d.b);
}

fn func_2(arg_0: vec2<f32>) -> bool {
    var var_0 = global1.x && !(!any(vec4<bool>(global1.x, false, global1.x, global1.x)));
    let var_1 = Struct_3(!select(vec3<bool>(true, any(vec3<bool>(global1.x, false, global1.x)), true), vec3<bool>(func_3(Struct_2(Struct_1(u_input.a, arg_0.x), -915f, Struct_1(u_input.a, -424f), Struct_1(u_input.a, arg_0.x), Struct_1(5917i, -307f)), Struct_2(Struct_1(u_input.a, arg_0.x), -2261f, Struct_1(u_input.a, -525f), Struct_1(-43200i, 965f), Struct_1(49993i, arg_0.x)), -1i, vec2<u32>(51119u, 0u)), true, all(vec3<bool>(global1.x, global1.x, false))), !(!vec3<bool>(global1.x, global1.x, false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1305f, arg_0.x, 1295f) * vec3<f32>(-571f, 1000f, 1336f)) * vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(arg_0.x)))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 1f), arg_0.x, _wgslsmith_f_op_f32(1012f * arg_0.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) + arg_0.x), arg_0.x, arg_0.x) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -615f), arg_0.x, _wgslsmith_f_op_f32(min(-993f, arg_0.x)))));
    let var_3 = var_2.zz;
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_2.x, -274f), vec3<f32>(var_2.x, -542f, 666f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-902f, 1000f, arg_0.x))))))));
    return all(select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(true, global1.x, var_1.a.x, var_1.a.x), vec4<bool>(global1.x, var_1.a.x, false, global1.x)), !vec4<bool>(global1.x, global1.x, var_1.a.x, global1.x), false), select(vec4<bool>(true, any(vec4<bool>(true, var_1.a.x, true, true)), true, u_input.a == -1i), vec4<bool>(!global1.x, select(false, false, global1.x), any(vec4<bool>(false, global1.x, var_1.a.x, global1.x)), var_1.a.x | false), !var_1.a.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -607f) + -665f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-851f, 1794f)) + _wgslsmith_f_op_f32(f32(-1f) * -629f))));
    global1 = !vec3<bool>(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, 2430f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1295f, -414f), vec2<f32>(-686f, var_0))))), (_wgslsmith_f_op_f32(var_0 * var_0) < _wgslsmith_f_op_f32(-var_0)) | true, all(!vec4<bool>(false, true, arg_1.x, global1.x)));
    let var_1 = !arg_1.wxx;
    let var_2 = vec2<i32>(-36794i, i32(-1i) * -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), arg_0), _wgslsmith_mult_vec3_i32(arg_0, arg_0)));
    var var_3 = Struct_1(-2147483647i, -106f);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(1980f, _wgslsmith_f_op_f32(ceil(-1426f)));
    let var_0 = firstLeadingBit(u_input.a);
    global1 = select(!select(vec3<bool>(global1.x, global1.x, func_1(vec3<i32>(2147483647i, u_input.a, u_input.a), vec4<bool>(true, true, global1.x, true), -2147483647i)), vec3<bool>(global1.x, true, global1.x), vec3<bool>(global2.x == 5098u, true, false)), select(vec3<bool>(global1.x, select(select(true, global1.x, global1.x), true, func_3(Struct_2(Struct_1(-24108i, 1125f), -1333f, Struct_1(u_input.a, -718f), Struct_1(6985i, 718f), Struct_1(35824i, -1311f)), Struct_2(Struct_1(-1794i, 1499f), -299f, Struct_1(u_input.a, 1130f), Struct_1(2147483647i, -1000f), Struct_1(u_input.a, 1000f)), 11474i, vec2<u32>(global2.x, 18384u))), !(u_input.a != u_input.a)), select(select(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, false, false), global1.x), vec3<bool>(global1.x, false, true), !vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(true, global1.x, global1.x | true), global1.x | (var_0 > u_input.a)), vec3<bool>(true, all(!vec3<bool>(global1.x, global1.x, global1.x)), true)), select(!select(select(vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), global1.x), select(vec3<bool>(false, global1.x, true), vec3<bool>(false, global1.x, true), global1.x), true), vec3<bool>(!global1.x, global1.x, global1.x), !(!global1.x) & (_wgslsmith_clamp_i32(u_input.a, -1i, 1i) <= var_0)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-305f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1271f))), _wgslsmith_f_op_f32(max(-586f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1250f, 677f), _wgslsmith_f_op_f32(f32(-1f) * -943f))))), any(vec2<bool>(!global1.x, all(vec4<bool>(true, false, global1.x, global1.x))))))));
    var var_2 = false;
    var_1 = -797f;
    var_2 = any(!vec3<bool>(all(!vec4<bool>(false, global1.x, global1.x, true)), false, true && global1.x));
    let var_3 = Struct_1(11446i, -1375f);
    var var_4 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, -1028f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, var_3.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-165f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-323f)))))), vec2<u32>(4294967295u, min(0u, min(~4294967295u, 45624u << (global2.x % 32u)))), abs(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, 84772u, global2.x), vec3<u32>(global2.x, 1u, 0u)), vec3<u32>(global2.x, global2.x, 4294967295u))));
}

