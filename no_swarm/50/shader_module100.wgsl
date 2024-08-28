struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global2: bool;

var<private> global3: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    let var_0 = max(u_input.b, ~firstLeadingBit(~select(u_input.b, u_input.b, true)));
    global0 = Struct_3(vec3<bool>((any(vec4<bool>(global0.d.x, global0.b.d.x, true, global0.b.d.x)) && global0.d.x) | global0.d.x, all(select(!vec3<bool>(false, global0.a.x, global0.b.d.x), global0.b.d.wxy, select(vec3<bool>(global0.d.x, global0.b.d.x, false), global0.a, vec3<bool>(global0.b.d.x, false, global0.b.d.x)))), any(select(select(vec2<bool>(true, true), global0.a.yy, vec2<bool>(global0.d.x, global0.d.x)), select(vec2<bool>(global0.d.x, false), vec2<bool>(false, true), global0.a.yz), !global0.b.d.x))), Struct_1(~_wgslsmith_clamp_u32(57472u, 4491u, global0.b.e.x >> (global0.b.e.x % 32u)), _wgslsmith_div_f32(768f, 1154f), _wgslsmith_f_op_vec2_f32(global0.c.yz - _wgslsmith_div_vec2_f32(global0.b.c, _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, -603f), vec2<f32>(606f, global0.c.x)))), global0.b.d, var_0.yz), global0.c, global0.d);
    return _wgslsmith_div_u32(_wgslsmith_mod_u32(~(~88070u), abs(abs(var_0.x))), min(u_input.a, min(abs(30518u), u_input.a))) ^ min(abs(var_0.x), ~max(~global0.b.a, countOneBits(12660u)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = vec4<u32>(func_3(), ~(~(~arg_0)), ~arg_0, arg_0);
    let var_1 = global0.a;
    global0 = Struct_3(global0.d.xww, Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.x, 4294967295u), _wgslsmith_add_u32(var_0.x, global0.b.e.x)) >> (arg_0 % 32u), _wgslsmith_f_op_f32(global0.c.x - 1316f), _wgslsmith_div_vec2_f32(global0.c.zx, global0.c.yx), global0.d, vec2<u32>(1u, 59590u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(502f, -465f)), global0.b.b, global0.b.c.x, global0.b.b)), vec4<bool>(true, true, true, true));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, 1382f) + _wgslsmith_f_op_vec2_f32(global0.b.c + global0.b.c)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c.x, global0.b.b), vec2<f32>(737f, -343f), var_1.x)))))) * _wgslsmith_f_op_vec2_f32(global0.b.c - vec2<f32>(-617f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1612f * 1517f) - _wgslsmith_f_op_f32(step(global0.c.x, global0.c.x))))));
    let var_3 = 0i;
    return Struct_3(vec3<bool>(false, true, global0.b.d.x), Struct_1(~u_input.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1298f, var_2.x, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_2.x, 561f, var_1.x)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.b.c))), vec2<f32>(-604f, 1f))), select(vec4<bool>(var_1.x, any(vec3<bool>(var_1.x, var_1.x, true)), global0.d.x && global0.d.x, true), select(!vec4<bool>(false, true, global0.b.d.x, true), global0.b.d, true), any(var_1.xz) | (var_3 != 45757i)), var_0.zz), vec4<f32>(global0.b.c.x, 125f, -220f, var_2.x), vec4<bool>(!(!all(vec3<bool>(global0.a.x, true, var_1.x))), false, all(select(vec4<bool>(false, true, true, var_1.x), !global0.d, !vec4<bool>(global0.d.x, true, var_1.x, global0.a.x))), any(vec2<bool>(false, true)) | select(select(var_1.x, global0.a.x, var_1.x), false, !global0.d.x)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(1i, global1.a.x & -20364i), global1.a.x);
    var var_1 = func_2(arg_0.x);
    var var_2 = Struct_2(~_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(var_0.x, 0i)), abs(2147483647i)), var_0));
    var var_3 = Struct_3(!(!select(vec3<bool>(true, true, true), func_2(arg_0.x).b.d.xzx, var_1.d.x)), Struct_1(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 94607u), 856f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b.c, vec2<f32>(global0.b.b, global0.b.c.x)), vec2<f32>(-1142f, var_1.c.x))), !vec4<bool>(true, !global0.a.x, true, true), u_input.b.zz), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.c.x, -670f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + var_1.b.c.x)), _wgslsmith_f_op_f32(global0.b.c.x + _wgslsmith_f_op_f32(-var_1.c.x))))), vec4<bool>(var_1.b.d.x, !global0.a.x, global0.b.d.x, -1i < _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.a.x, 2147483647i), vec2<i32>(-2326i, var_0.x)), vec2<i32>(global1.a.x, global1.a.x))));
    var var_4 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-(~vec2<i32>(var_0.x, global1.a.x) >> (global0.b.e % vec2<u32>(32u))), var_0 >> (vec2<u32>(var_1.b.a, 0u) % vec2<u32>(32u))), (vec2<i32>(-2147483647i, var_2.a.x) & ~global1.a) >> ((vec2<u32>(30825u, 4294967295u) << (arg_0.yw % vec2<u32>(32u))) % vec2<u32>(32u)));
    return Struct_2(firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, 1i), -1i), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(vec3<bool>((global0.d.x & global0.a.x) | any(global0.d.xx), global0.d.x, all(!vec4<bool>(false, global0.d.x, global0.d.x, global0.b.d.x))), vec3<bool>(true, global0.a.x, any(global0.b.d.zyy)), global0.d.x), global0.b, global0.c, global0.b.d);
    let var_1 = ~u_input.c.x;
    global1 = func_1(vec4<u32>(_wgslsmith_mult_u32(var_1 ^ var_0.b.e.x, u_input.a & var_0.b.e.x) ^ ~(~5224u), firstLeadingBit(_wgslsmith_sub_u32(u_input.a, 71567u)) >> (firstLeadingBit(1u) % 32u), _wgslsmith_mult_u32(4294967295u, global0.b.a), u_input.c.x));
    global1 = func_1(u_input.c);
    global1 = func_1(~(~firstTrailingBit(vec4<u32>(30709u, u_input.b.x, var_1, var_0.b.e.x))));
    let var_2 = _wgslsmith_div_vec3_i32(max(~firstLeadingBit(vec3<i32>(global1.a.x, global1.a.x, global1.a.x)), -((vec3<i32>(2147483647i, global1.a.x, global1.a.x) << (u_input.b.xwy % vec3<u32>(32u))) >> (abs(u_input.c.xxz) % vec3<u32>(32u)))), ~max(_wgslsmith_add_vec3_i32(vec3<i32>(global1.a.x, 41000i, global1.a.x), vec3<i32>(global1.a.x, global1.a.x, global1.a.x) >> (u_input.b.ywx % vec3<u32>(32u))), vec3<i32>(global1.a.x, global1.a.x, ~(-1i))));
    var var_3 = abs(~(~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 40848u, 92387u), u_input.b) | (u_input.b & vec4<u32>(13884u, var_1, 23239u, var_0.b.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(-990i, firstTrailingBit(-70041i)), ~select(var_2.xy, var_2.xy, false) << ((abs(u_input.c.zz) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, global0.b.e.x), vec2<u32>(85147u, 4294967295u))) % vec2<u32>(32u)), !global0.b.d.wz), firstTrailingBit(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(12467u, global0.b.a), 21392u, u_input.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_f_op_f32(ceil(1006f))), _wgslsmith_f_op_f32(-516f + 440f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b.c.x, var_0.b.b)) - -1260f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, global0.b.c.x, var_0.c.x))))), ~_wgslsmith_mod_i32(~(var_2.x | global1.a.x), ~abs(1i)));
}

