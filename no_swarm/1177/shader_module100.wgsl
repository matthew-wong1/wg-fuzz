struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    let var_0 = !(!select(select(vec3<bool>(true, arg_3.x, true), select(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(true, arg_3.x, arg_3.x), false), select(vec3<bool>(false, false, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), true)), !(!vec3<bool>(arg_3.x, arg_3.x, true)), select(!vec3<bool>(true, arg_3.x, false), !vec3<bool>(true, arg_3.x, true), arg_3)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1361f, -436f, 1224f, -184f)))));
    return !(!(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.x)))) >= var_1.x));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = !select(vec2<bool>(!func_3(57413u, vec3<u32>(37510u, u_input.a.x, u_input.b), Struct_1(32883i), vec3<bool>(false, true, true)), true), vec2<bool>(any(vec2<bool>(true, true)), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)));
    var_0 = any(select(!(!vec4<bool>(var_1.x, true, var_1.x, var_1.x)), !vec4<bool>(false, all(vec2<bool>(true, var_1.x)), !var_1.x, func_3(u_input.b, vec3<u32>(4294967295u, 0u, u_input.b), Struct_1(36917i), vec3<bool>(true, true, true))), true));
    let var_2 = Struct_1(-1i);
    var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(false, func_3(1u, u_input.a.wzx, var_2, vec3<bool>(false, false, var_1.x))), select(select(vec2<bool>(true, var_1.x), vec2<bool>(false, true), var_1.x), vec2<bool>(false, true), vec2<bool>(var_1.x, false))), select(select(!vec2<bool>(var_1.x, false), select(vec2<bool>(false, true), vec2<bool>(var_1.x, true), true), any(vec3<bool>(true, var_1.x, var_1.x))), select(select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(false, true)), !vec2<bool>(var_1.x, var_1.x), var_1.x), false), all(vec2<bool>(true, true))), !select(vec2<bool>(true, true), !(!vec2<bool>(true, var_1.x)), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x), vec2<bool>(true, true), var_1.x)), any(vec4<bool>(all(!vec4<bool>(var_1.x, var_1.x, true, true)), firstTrailingBit(-29915i) < ~(-2147483647i), var_1.x == var_1.x, var_1.x || (var_2.a <= var_2.a))));
    return Struct_1(var_2.a);
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = func_2();
    let var_1 = 2357u <= _wgslsmith_add_u32(select(13581u, _wgslsmith_clamp_u32(u_input.a.x, ~80280u, 62120u), true), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 8618u, u_input.b), u_input.a | u_input.a), max(~vec4<u32>(43541u, u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 63585u, u_input.a.x, u_input.b), u_input.a))));
    return var_0.a;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> vec3<i32> {
    var var_0 = arg_3;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -451f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1690f)), 719f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f + 1000f)))), arg_2.c)), -1261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-149f, -638f), _wgslsmith_f_op_f32(f32(-1f) * -607f)))));
    return abs(arg_2.a.yxw) ^ -(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, -6980i, 2147483647i), arg_2.d) << (~select(u_input.a.wzz, vec3<u32>(u_input.b, u_input.b, 80366u), false) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_4(any(vec3<bool>(true, true, true)), vec2<i32>(firstTrailingBit(func_1(false)), _wgslsmith_mult_i32(firstTrailingBit(1i), abs(-26860i))), Struct_2(~abs(vec4<i32>(-2147483647i, 4885i, -17021i, 0i)), func_2(), true, vec3<i32>(1i, 1i, 1i), any(vec2<bool>(true, true))), min(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-18589i, -1i, 0i), 1i), _wgslsmith_clamp_i32(1i, 15587i, 1i))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1368f, -238f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(240f + -118f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1093f, -1233f, 826f)))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1698f - -342f), _wgslsmith_f_op_f32(floor(2220f))), 765f, _wgslsmith_f_op_f32(floor(-378f)))));
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_add_vec2_u32(firstLeadingBit(u_input.a.yy), ~(_wgslsmith_div_vec2_u32(u_input.a.wz, u_input.a.zw ^ vec2<u32>(u_input.b, 4294967295u)) << (u_input.a.xx % vec2<u32>(32u))));
    var var_4 = Struct_2(~select(countOneBits(max(vec4<i32>(var_0.x, 1i, 53926i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<i32>(-var_0.x, _wgslsmith_mod_i32(0i, 2147483647i), var_0.x, var_0.x), any(vec4<bool>(true, true, true, true))), Struct_1(-2147483647i), !(!select(true, true, true)) & true, vec3<i32>(var_0.x, ~abs(-10404i | var_0.x), -func_2().a), func_3(var_3.x, ~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 63305u, u_input.b), select(vec3<u32>(4294967295u, var_3.x, 1u), u_input.a.wxy, true)), Struct_1(func_2().a >> (select(43556u, 1u, false) % 32u)), vec3<bool>(true, true, true)));
    let var_5 = var_4.c;
    var_2 = ~var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 23324i, -(~(var_0 >> (u_input.a.xxx % vec3<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1162f))), var_1.x, 654f), _wgslsmith_mod_i32(8387i, (-var_4.b.a ^ func_1(true)) >> (max(u_input.b, abs(1u)) % 32u)));
}

