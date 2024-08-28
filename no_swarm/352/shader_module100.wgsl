struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, 454f);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: bool) -> vec2<f32> {
    var var_0 = ~abs(23670u);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2003f, -860f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 1277f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -705f))), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1738f, -233f))));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 215f) * vec2<f32>(global0.x, 693f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 920f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(381f, 919f) * vec2<f32>(730f, -1925f)), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mult_i32(-16783i, 59406i), u_input.d.x, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -687f))))));
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f))), -1000f);
    let var_0 = Struct_1(!(!vec4<bool>(true, true, true, -547f < global0.x)), min(_wgslsmith_add_vec3_i32(-reverseBits(vec3<i32>(0i, 13943i, u_input.d.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, 2147483647i), u_input.d.zxy), -1i, -75785i)), firstTrailingBit(select(vec3<i32>(u_input.d.x, u_input.d.x, 1i) << (vec3<u32>(u_input.a, u_input.b.x, 0u) % vec3<u32>(32u)), u_input.d.yyw, vec3<bool>(false, false, false)))), u_input.d.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(1000f * global0.x)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), vec2<bool>(true, true), true), any(vec4<bool>(true, true, true, true))));
    let var_1 = vec2<bool>(true, !all(vec2<bool>(var_0.e.x & var_0.e.x, any(vec3<bool>(true, true, var_0.e.x)))));
    return ~_wgslsmith_mod_vec2_i32(vec2<i32>(0i | u_input.d.x, abs(_wgslsmith_sub_i32(var_0.c, 24588i))), _wgslsmith_add_vec2_i32(vec2<i32>(abs(1i), reverseBits(var_0.b.x)), _wgslsmith_mod_vec2_i32(u_input.d.xz, -vec2<i32>(u_input.d.x, 1i))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = ~abs(func_2(u_input.b.x));
    var var_1 = Struct_2(1000f, Struct_1(arg_2.a, _wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(3236i, u_input.d.x, arg_0), arg_2.b)), countOneBits(min(vec3<i32>(var_0.x, arg_0, var_0.x), arg_2.b)), vec3<i32>(func_2(u_input.c).x, -u_input.d.x, ~(-1i))), -min(-1732i, -26548i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-490f - 457f)))), arg_1));
    let var_2 = var_0.x;
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.d, 568f)))) - _wgslsmith_f_op_f32(-var_1.b.d)), Struct_1(vec4<bool>(true, arg_2.e.x, all(var_1.b.a.xx), !(!arg_2.e.x)), vec3<i32>(-abs(arg_2.c), 13439i, var_1.b.c ^ _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(arg_0, -5267i, -1i, 35217i))), _wgslsmith_mult_i32(_wgslsmith_add_i32(1i | u_input.d.x, max(var_0.x, -2147483647i)), _wgslsmith_div_i32(~arg_2.c, _wgslsmith_add_i32(var_0.x, 1i))), arg_2.d, vec2<bool>(true, true)));
    let var_3 = -reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b.b.x, arg_0 & -20194i, -u_input.d.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-17463i, 9366i, var_0.x) >> (vec3<u32>(u_input.b.x, 4294967295u, 69555u) % vec3<u32>(32u)), vec3<i32>(-51416i, arg_0, var_1.b.c) ^ vec3<i32>(var_1.b.c, 22991i, -33004i)), vec3<i32>(4604i, abs(0i), -15043i)));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(1i, var_3.x, arg_1.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(216f, -1378f)))) - vec2<f32>(global0.x, -1000f))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-124f, _wgslsmith_f_op_f32(-global0.x)));
    let var_0 = u_input.d.wyy;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(var_0.x, vec2<bool>(true, true), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(var_0.x, u_input.d.x, -2147483647i), -12598i, global0.x, vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1623f, global0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-677f))), global0.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -558f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(-1491f, 246f), vec2<bool>(false, false))))))));
    var var_1 = Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.zx, var_0.yy), (var_0.x ^ -1i) >> (u_input.c % 32u)) | vec2<i32>(-54405i, -27962i), Struct_1(!vec4<bool>(any(vec3<bool>(true, false, false)), var_0.x >= var_0.x, true, true), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-49417i, 26830i, var_0.x), var_0) ^ (u_input.d.wwy | u_input.d.xxx), -8564i, global0.x, select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(global0.x < -691f, select(true, false, false)), vec2<bool>(true, all(vec3<bool>(true, false, true))))), _wgslsmith_f_op_f32(f32(-1f) * -603f), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true)), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(-404f, _wgslsmith_mult_i32(min(_wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(var_1.b.b.x, -1i)), 34652i | _wgslsmith_mult_i32(1i, var_0.x)), -10552i), var_1.a.x, _wgslsmith_f_op_f32(-1596f + _wgslsmith_div_f32(1f, var_1.c)));
}

