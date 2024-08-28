struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: array<i32, 26> = array<i32, 26>(-39896i, -1i, -1i, 1i, 25130i, 1i, 1i, 1i, -20304i, 0i, -28202i, 35287i, 11381i, -1i, -64471i, -60323i, -26992i, 1i, 19367i, -4173i, 1i, i32(-2147483648), 2147483647i, i32(-2147483648), 10001i, 2147483647i);

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 1i);

var<private> global2: vec3<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = reverseBits(-_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(select(arg_1.b.d.xz, vec2<i32>(-19115i, global1.x), arg_1.a.a), _wgslsmith_clamp_vec2_i32(arg_1.b.d.xx, vec2<i32>(53001i, -37506i), arg_1.b.d.yy)), reverseBits(arg_0.d.yx) ^ select(arg_1.a.d.xy, arg_1.b.d.xz, vec2<bool>(arg_0.a, false))));
    var var_1 = global1.x;
    var var_2 = ~min(~firstTrailingBit(vec3<u32>(u_input.b.x, 0u, u_input.a) & vec3<u32>(1u, 1u, arg_1.b.c)), ~vec3<u32>(_wgslsmith_clamp_u32(1u, 53179u, u_input.a), ~4294967295u, _wgslsmith_clamp_u32(global2.x, arg_1.b.c, u_input.a)));
    var var_3 = vec2<bool>(arg_1.b.a, any(!select(select(vec4<bool>(arg_0.a, arg_1.b.a, arg_1.a.a, arg_0.a), vec4<bool>(true, arg_1.b.a, arg_1.b.a, arg_1.b.a), arg_0.a), select(vec4<bool>(arg_0.a, true, false, arg_0.a), vec4<bool>(true, true, true, arg_0.a), vec4<bool>(arg_1.b.a, true, true, false)), false | arg_0.a)));
    var var_4 = countOneBits(_wgslsmith_dot_vec2_i32(select(select(-arg_0.d.yx, ~arg_0.d.zx, any(vec2<bool>(true, arg_0.a))), vec2<i32>(var_0.x, ~(-2147483647i)), vec2<bool>(false, all(vec4<bool>(arg_0.a, arg_0.a, false, false)))), arg_1.b.d.zx));
    return abs(-10072i);
}

fn func_2(arg_0: f32) -> vec3<f32> {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(exp2(arg_0)), ~10256u, vec3<i32>(firstTrailingBit(min(global0[_wgslsmith_index_u32(4294967295u, 26u)], global1.x) >> (_wgslsmith_mod_u32(global2.x, 122149u) % 32u)), min(0i, firstTrailingBit(abs(21900i))), abs(global0[_wgslsmith_index_u32(~(~4294967295u), 26u)])), countOneBits(-20268i << (u_input.b.x % 32u)));
    let var_1 = Struct_2(Struct_1(false, var_0.b, ~_wgslsmith_add_u32(var_0.c, 0u), var_0.d, global1.x), Struct_1(var_0.a, _wgslsmith_f_op_f32(abs(-2177f)), u_input.a, min(reverseBits(vec3<i32>(-52965i, global0[_wgslsmith_index_u32(u_input.a, 26u)], 385i)) << ((vec3<u32>(var_0.c, global2.x, var_0.c) & vec3<u32>(0u, u_input.b.x, 36015u)) % vec3<u32>(32u)), vec3<i32>(global0[_wgslsmith_index_u32(var_0.c, 26u)], 1i, var_0.e) ^ _wgslsmith_add_vec3_i32(vec3<i32>(0i, 10131i, -1i), vec3<i32>(53549i, global1.x, global1.x))), -select(global1.x, -global1.x, any(vec2<bool>(var_0.a, true)))), 9098u, Struct_1(any(!vec4<bool>(var_0.a, var_0.a, var_0.a, true)), -619f, _wgslsmith_mod_u32(~0u, u_input.b.x) << (30907u % 32u), vec3<i32>(select(global1.x, global1.x, !var_0.a), (global1.x ^ var_0.e) << (var_0.c % 32u), firstTrailingBit(func_3(Struct_1(false, -1000f, var_0.c, var_0.d, -103768i), Struct_3(Struct_1(var_0.a, var_0.b, 4294967295u, var_0.d, -17742i), Struct_1(true, arg_0, u_input.b.x, vec3<i32>(global0[_wgslsmith_index_u32(0u, 26u)], global1.x, -1i), global0[_wgslsmith_index_u32(37569u, 26u)]))))), _wgslsmith_add_i32(max(8266i, _wgslsmith_sub_i32(1i, -1i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.d.x, global1.x), -global1.x))));
    global2 = vec3<u32>(57259u, select(~(~(0u << (global2.x % 32u))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(32242u, 86736u, 86300u), _wgslsmith_mult_vec3_u32(vec3<u32>(78920u, u_input.b.x, u_input.b.x), vec3<u32>(global2.x, u_input.b.x, var_0.c))), true && (global0[_wgslsmith_index_u32(reverseBits(55025u), 26u)] >= (i32(-1i) * -31826i))), 55616u >> (~u_input.b.x % 32u));
    let var_2 = 606f;
    let var_3 = false;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -128f, 730f))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d.b * 628f))), _wgslsmith_f_op_f32(-343f * -191f), -2361f)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<i32>) -> vec2<i32> {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(-1126f - arg_0), arg_0) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -791f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(543f, 1739f, -524f) - vec3<f32>(arg_0, arg_0, 1269f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1370f, var_1.x, 763f)))))));
    let var_3 = Struct_3(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 340f) - var_1.x), _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(global2.x, var_0.x), 1u), ~vec3<i32>(_wgslsmith_clamp_i32(global1.x, -2147483647i, global1.x), ~global1.x, -2147483647i), global1.x), Struct_1(select(true, !any(vec2<bool>(true, false)), false), var_1.x, ~(~0u), vec3<i32>(5339i, i32(-1i) * -5000i, global0[_wgslsmith_index_u32(31584u << (_wgslsmith_clamp_u32(var_0.x, u_input.a, 0u) % 32u), 26u)]), arg_2.x));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1997f, -719f, 318f), vec3<f32>(-457f, 218f, -199f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_3.b.b, var_3.a.b) * vec3<f32>(var_3.a.b, 1000f, var_3.a.b)), vec3<f32>(675f, var_3.a.b, -227f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-920f, -1000f))), _wgslsmith_div_f32(-1116f, -1438f), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(step(var_1.x, arg_0)))).x)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 835f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(487f, -1000f), vec2<f32>(1372f, -804f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -432f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1275f, -1949f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -751f), -1832f)))));
    let var_1 = vec4<bool>(any(vec3<bool>(true, global0[_wgslsmith_index_u32(1684u, 26u)] == global1.x, -24434i <= global1.x)) & (_wgslsmith_mult_i32(global1.x | global1.x, ~8706i) == -1i), false, all(vec3<bool>(true, true, true)), !all(vec4<bool>(true, true, true, true)));
    let var_2 = ~(~_wgslsmith_sub_u32(u_input.a, u_input.a));
    global1 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(func_1(var_0.x, 52384u, vec2<i32>(global0[_wgslsmith_index_u32(0u, 26u)], global1.x)) ^ vec2<i32>(global1.x, 2309i), vec2<i32>(7386i ^ global0[_wgslsmith_index_u32(0u, 26u)], -2147483647i)), _wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 29401i), vec2<i32>(0i, 36075i)), firstTrailingBit(vec2<i32>(global1.x, -40694i) & vec2<i32>(-45269i, global1.x)))) << (~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, var_2), ~global2.zx, global2.yx)) % vec2<u32>(32u));
    global1 = abs(func_1(_wgslsmith_div_f32(1046f, _wgslsmith_f_op_f32(f32(-1f) * -2054f)), firstLeadingBit(56502u), firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(9589u, 26u)], global1.x)))) >> (vec2<u32>(29566u, 0u) % vec2<u32>(32u));
    global1 = _wgslsmith_clamp_vec2_i32(~((_wgslsmith_add_vec2_i32(vec2<i32>(0i, global0[_wgslsmith_index_u32(global2.x, 26u)]), vec2<i32>(-2147483647i, -2147483647i)) | -vec2<i32>(global1.x, global0[_wgslsmith_index_u32(u_input.a, 26u)])) | vec2<i32>(global0[_wgslsmith_index_u32(24786u, 26u)], ~0i)), _wgslsmith_sub_vec2_i32(vec2<i32>(~(-6486i), ~global1.x), ~firstLeadingBit(func_1(1000f, u_input.a, vec2<i32>(global1.x, 16073i)))), vec2<i32>(global1.x, ~1i));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - -863f) - var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(u_input.a ^ u_input.a)), select(4294967295u, 1u, all(var_1.zy)), !(var_1.x || true)));
}

