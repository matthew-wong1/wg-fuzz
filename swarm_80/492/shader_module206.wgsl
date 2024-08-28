struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<i32>;

var<private> global2: vec3<u32>;

var<private> global3: vec3<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    global1 = u_input.d;
    global0 = Struct_4(_wgslsmith_add_u32(countOneBits(~_wgslsmith_mod_u32(9745u, 58891u)), 20478u));
    let var_0 = Struct_4(~(~global2.x));
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, -select(u_input.a, 0i, all(vec4<bool>(false, true, false, true))), -firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -43255i, 0i, 8957i), vec4<i32>(u_input.a, u_input.a, -8134i, 35718i)))), -u_input.a, _wgslsmith_mult_i32(u_input.a, firstTrailingBit(u_input.a)), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(_wgslsmith_div_i32(~(-33888i), -51957i << (global2.x % 32u)), max(u_input.d.x, -global1.x), max(2147483647i, firstTrailingBit(u_input.a)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, 1000f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, global3.x, 458f, global3.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -810f, -1656f) * vec4<f32>(global3.x, -1077f, -198f, -419f)))))), vec4<bool>(all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, true)), true))));
    return select(vec2<bool>(true, any(vec4<bool>(any(vec3<bool>(false, false, true)), 1i >= var_1.x, true, select(false, true, false)))), !vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), !any(vec4<bool>(true, true, true, true)) | true);
}

fn func_2() -> vec4<bool> {
    var var_0 = global3.x;
    var var_1 = !select(vec2<bool>(false, all(func_3())), !vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(all(vec4<bool>(true, true, false, false)) & false, false));
    var var_2 = Struct_4(1u);
    let var_3 = Struct_3(vec4<i32>(global1.x, global1.x, global1.x, 28207i), !select(vec3<bool>(var_1.x, true, !var_1.x), !select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false)), !(!vec3<bool>(var_1.x, var_1.x, true))), true, Struct_1(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(2137f * -195f)), var_1.x));
    let var_4 = var_3.d;
    return select(select(vec4<bool>(select(var_3.a.x >= 30824i, var_1.x, !var_4.b), true, ~global0.a > global0.a, -1178f > _wgslsmith_f_op_f32(-var_4.a)), vec4<bool>(var_3.b.x, true, false, var_2.a > 1u), vec4<bool>(select(var_3.c, !var_1.x, true), var_2.a != _wgslsmith_add_u32(global2.x, var_2.a), var_1.x, true)), vec4<bool>(func_3().x, !var_1.x, !var_1.x, all(vec3<bool>(var_4.b, var_3.d.b, !var_3.c))), vec4<bool>(!all(!vec4<bool>(var_1.x, var_4.b, var_1.x, false)), false | any(vec2<bool>(var_3.b.x, var_4.b)), !all(var_3.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - global3.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(809f - -873f) + _wgslsmith_div_f32(-774f, -437f))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, -2531f, func_3().x))), true);
    return Struct_4(global0.a);
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = true;
    global1 = u_input.d;
    let var_1 = func_4(!select(select(vec4<bool>(var_0, false, false, true), vec4<bool>(false, false, false, var_0), !vec4<bool>(var_0, true, var_0, true)), !vec4<bool>(var_0, true, false, var_0), !select(vec4<bool>(true, false, true, var_0), vec4<bool>(true, var_0, true, true), vec4<bool>(true, var_0, true, false))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -470f), var_0 | any(func_2())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, -897f, global3.x), vec3<f32>(1000f, global3.x, 261f))))))));
    global2 = ~select(select(max(abs(vec3<u32>(0u, var_1.a, 64677u)), arg_0), arg_0, select(select(vec3<bool>(true, false, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, true)), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, true), vec3<bool>(true, var_0, var_0)), !vec3<bool>(false, var_0, false))), _wgslsmith_sub_vec3_u32(abs(arg_0), ~(~vec3<u32>(arg_0.x, 1u, 0u))), any(vec2<bool>(all(vec2<bool>(var_0, var_0)), any(vec4<bool>(false, var_0, true, var_0)))));
    var var_2 = global3.x;
    return 4294967295u;
}

fn func_5(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = 1u;
    global1 = _wgslsmith_mult_vec3_i32(u_input.d, ~vec3<i32>(-1i, _wgslsmith_add_i32(reverseBits(-57401i), global1.x), -(~global1.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, 1586f, global3.x), vec4<f32>(global3.x, -481f, global3.x, global3.x), vec4<bool>(true, false, false, false)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, global3.x, global3.x, -471f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 1183f, -1146f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -646f, 904f, -627f))))), _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(abs(global3.x))), -368f, _wgslsmith_f_op_f32(global3.x * global3.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -559f, -919f, -558f)))))), true));
    var var_2 = -1594f;
    let var_3 = !any(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))));
    return StorageBuffer(u_input.a, global2.zx >> (~_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(global0.a, arg_0.x)), ~vec2<u32>(global0.a, 1u), global2.xz >> (u_input.e.yy % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<i32>(-9032i, ~(u_input.a & 1i), _wgslsmith_clamp_i32(~max(-1i, 0i), min(-17992i, -18392i), ~(-u_input.d.x)), u_input.d.x), u_input.d.zy, ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(vec3<u32>(0u, func_1(vec3<u32>(u_input.b, ~u_input.b, global2.x)), u_input.c));
}

