struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2() -> vec3<i32> {
    return u_input.a.wyz;
}

fn func_3() -> i32 {
    global0 = Struct_2(vec3<i32>(u_input.a.x >> (u_input.b.x % 32u), abs(71926i), -20352i), func_2().x);
    var var_0 = !(~_wgslsmith_add_u32(u_input.b.x, ~4294967295u) == abs(u_input.b.x));
    var var_1 = vec3<bool>(all(vec2<bool>(false, true)), true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(351f - -1109f) - _wgslsmith_f_op_f32(trunc(1253f))) < _wgslsmith_f_op_f32(round(1397f))));
    let var_2 = Struct_4(u_input.b.x, u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -440f) * _wgslsmith_f_op_f32(f32(-1f) * -239f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2167f - -1436f) * -1070f)), -1318f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1916f * -808f))), 1f), any(select(!vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, var_1.x, !var_1.x), vec3<bool>(true, !var_1.x, var_1.x))));
    var_0 = true;
    return ~2147483647i;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    global0 = Struct_2(vec3<i32>(u_input.a.x & -_wgslsmith_div_i32(-1i, u_input.a.x), max(_wgslsmith_dot_vec3_i32(func_2(), global0.a), global0.b), 2147483647i), abs(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x) | -45370i));
    let var_0 = true;
    let var_1 = arg_0.x;
    global0 = Struct_2(vec3<i32>(func_3(), _wgslsmith_div_i32(global0.b, ~u_input.a.x), global0.a.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, ~0u, u_input.b.x), abs(vec3<u32>(100783u, 0u, u_input.b.x))) % vec3<u32>(32u)), -2147483647i);
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(global0.b), ~u_input.a.x) << ((u_input.b.x ^ abs(u_input.b.x)) % 32u), 34523i, global0.b), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.wy, vec2<i32>(-19211i, i32(-1i) * -3233i)), -2889i));
    return -27818i;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(337f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1726f))))));
    let var_1 = -32795i;
    global0 = Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(arg_3.b.b, -1i, arg_2.a.x)), vec3<i32>(arg_1.x, -33265i, 33024i) ^ countOneBits(global0.a), vec3<i32>(func_3(), 45894i, func_1(vec3<f32>(var_0, 1730f, var_0), arg_3.a.a.x, Struct_1(vec2<bool>(arg_3.a.a.x, false))))), -vec3<i32>(-9138i, 2147483647i, -19586i)), arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -1000f)) + var_0) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1689f + -1000f) * -1792f), -290f), (_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.a, vec3<i32>(arg_2.b, -2147483647i, 41257i), u_input.a.yxw), vec3<i32>(arg_1.x, arg_3.b.b, 10172i) ^ arg_2.a) ^ ~abs(-5359i)) != -arg_3.b.a.x, all(vec4<bool>(false, false, false, !(var_0 >= var_0))));
    return Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(select(reverseBits(vec3<i32>(2147483647i, -1i, -15819i)), vec3<i32>(-1i, var_1, 74795i) ^ vec3<i32>(4959i, 1i, -1i), any(vec3<bool>(var_3.x, true, false))), vec3<i32>(2147483647i, -2147483647i, ~u_input.a.x)), ~_wgslsmith_mult_vec3_i32(min(vec3<i32>(1i, -2147483647i, 41300i), u_input.a.yxz), _wgslsmith_sub_vec3_i32(arg_3.b.a, arg_2.a))), -global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(countOneBits(_wgslsmith_div_u32(reverseBits(u_input.b.x), u_input.b.x)), _wgslsmith_mod_u32(~101594u, 1u)), ~u_input.b.x, ~0u, u_input.b.x);
    global0 = func_4(all(vec4<bool>(true, true, true, true)), vec2<i32>(-func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, -734f, -689f)), any(vec3<bool>(false, false, true)), Struct_1(vec2<bool>(false, true))), 1i ^ u_input.a.x), Struct_2(vec3<i32>(-1i, _wgslsmith_add_i32(abs(30820i), func_3()), 0i), ~min(global0.b, u_input.a.x)), Struct_3(Struct_1(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), Struct_2(-vec3<i32>(-18710i, u_input.a.x, 1i), -1i)));
    let var_1 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    let var_2 = ~(~(~max(1u, u_input.b.x)));
    var var_3 = _wgslsmith_f_op_f32(max(1000f, -1462f));
    let var_4 = vec2<i32>(global0.a.x >> (0u % 32u), ~1i);
    var_0 = ~u_input.b;
    let var_5 = vec3<bool>(var_1.x, !(!(!(!var_1.x))), !(var_1.x || !(2147483647i == var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 6365u), vec3<u32>(0u, 16947u, var_2)), firstTrailingBit(27312u), var_2 << (4294967295u % 32u), u_input.b.x), max(u_input.b, firstLeadingBit(vec4<u32>(var_2, 52796u, 78256u, 4294967295u)))) << (u_input.b % vec4<u32>(32u)), reverseBits(u_input.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-413f, 353f, -856f, -1384f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1382f, -2089f, 2388f, 112f) * vec4<f32>(-192f, -322f, -433f, 1198f)))))));
}

