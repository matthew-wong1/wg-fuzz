struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(1u, 0u), vec2<u32>(30091u, 44050u), vec2<u32>(4294967295u, 15498u), vec2<u32>(811u, 1u), vec2<u32>(4294967295u, 9406u), vec2<u32>(0u, 1u), vec2<u32>(24182u, 66630u), vec2<u32>(38007u, 4294967295u), vec2<u32>(1u, 17464u), vec2<u32>(4294967295u, 52127u), vec2<u32>(67938u, 70357u), vec2<u32>(79213u, 1u), vec2<u32>(32506u, 1u), vec2<u32>(69934u, 32075u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = false;
    var var_1 = 12515u != (arg_2 << (_wgslsmith_mod_u32(~(~14845u), 1u) % 32u));
    let var_2 = _wgslsmith_sub_vec2_i32(select(vec2<i32>(max(~arg_0.x, -arg_0.x), 36925i), vec2<i32>(7922i, abs(~(-1i))), true), arg_0);
    let var_3 = !vec2<bool>(arg_1, any(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1)));
    global1 = array<vec2<u32>, 14>();
    return -890f;
}

fn func_3(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = all(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), false), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true))));
    global0 = array<Struct_1, 22>();
    let var_1 = Struct_3(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1698f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(797f, -413f)))), vec3<f32>(arg_0.x, -599f, -551f));
    var var_2 = Struct_2(var_1.a.x, global0[_wgslsmith_index_u32(4294967295u & (min(69695u, 4294967295u) << ((u_input.e.x << (10434u % 32u)) % 32u)), 22u)], Struct_1(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, u_input.c.x), u_input.c.x), -1077f, _wgslsmith_f_op_vec2_f32(select(var_1.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, arg_0.x))), vec2<bool>(true, true))), ~_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, -6654i, 4420i)), vec3<u32>(15134u, 0u, ~_wgslsmith_mod_u32(u_input.b, u_input.b))));
    var var_3 = Struct_2(-526f, var_2.c, var_2.b);
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f + var_2.a)))), Struct_1(abs(4294967295u), _wgslsmith_f_op_f32(arg_0.x - 2008f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * -1237f), 114f) - var_1.b.yy), vec3<i32>(-5663i, 1i, countOneBits(28421i)), ~reverseBits(var_3.c.e)), Struct_1(~max(1u, 1u), 880f, var_1.b.yx, var_3.c.d, vec3<u32>(66084u, var_3.c.a, ~var_3.c.e.x)));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    global0 = array<Struct_1, 22>();
    var var_0 = func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(vec2<i32>(-1i, 0i), false, ~1u)), 876f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-357f - 485f)))));
    var_0 = func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(162f, var_0.b.c.x, var_0.a)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1861f, -1305f, 1573f), vec3<f32>(1120f, -797f, 1182f), false)))), vec3<f32>(1675f, -642f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f - -165f) + _wgslsmith_f_op_f32(-897f - -1216f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) * var_0.a), 423f) + _wgslsmith_f_op_f32(var_0.c.b + func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 2147f, var_0.b.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, 621f, var_0.c.b)), vec3<bool>(true, true, false)))).b.b));
    global0 = array<Struct_1, 22>();
    return any(select(!vec2<bool>(true, all(vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, false), select(3306u, 34282u, false) <= 50609u), true));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    let var_0 = abs(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_2.x, arg_2.x, arg_2.x, 0i), vec4<i32>(arg_2.x, -1703i, arg_2.x, arg_2.x)) ^ select(min(vec4<i32>(arg_2.x, arg_2.x, -7721i, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -44395i)), vec4<i32>(arg_2.x, arg_2.x, -52877i, arg_2.x) & vec4<i32>(arg_2.x, -2147483647i, arg_2.x, 2147483647i), !vec4<bool>(true, arg_3, false, true)), ~select(vec4<i32>(arg_2.x, -13425i, arg_2.x, arg_2.x) << (arg_0 % vec4<u32>(32u)), -vec4<i32>(-1i, arg_2.x, -19100i, arg_2.x), !vec4<bool>(false, arg_3, arg_3, arg_3))));
    var var_1 = abs(vec2<i32>(var_0.x, var_0.x));
    global1 = array<vec2<u32>, 14>();
    global1 = array<vec2<u32>, 14>();
    global1 = array<vec2<u32>, 14>();
    return -1553f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(~(17933i >> (u_input.b % 32u))) ^ -1i;
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1232f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f - -687f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(u_input.e, true, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_0), vec2<i32>(298i, -40212i)), func_1(vec4<u32>(u_input.a.x, u_input.d, 28405u, u_input.d))))))), 4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_f32(func_4(vec4<u32>(0u, 1u, 1u, u_input.c.x), true, vec2<i32>(22581i, -2147483647i), true)))), -1000f))));
}

