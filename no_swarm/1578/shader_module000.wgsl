struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> u32 {
    let var_0 = arg_2.c;
    let var_1 = 10884u;
    var var_2 = 2273f;
    var var_3 = 4294967295u;
    let var_4 = u_input.a.x;
    return arg_2.b.a.x ^ arg_3;
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = ~(~u_input.e.x ^ _wgslsmith_mod_u32(min(1u, ~arg_0.x), 14354u));
    let var_1 = _wgslsmith_f_op_f32(361f + -1954f);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-981f, -525f, -769f, var_1) - vec4<f32>(var_1, var_1, var_1, var_1))))))), -38889i);
    var var_3 = -_wgslsmith_sub_vec2_i32(u_input.a.yx, -(~vec2<i32>(var_2.b, u_input.a.x)));
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(var_2.a, var_2.a, vec4<bool>(true, true, true, true))))), Struct_1(vec3<u32>(func_3(0i, true, Struct_3(var_2.a, Struct_1(vec3<u32>(var_0, 55709u, arg_0.x), true), Struct_2(var_2.a, -2943i), var_2.a.wwx, -2147483647i), var_0), countOneBits(var_0), 4294967295u), false), var_2, var_2.a.yyy, max(-2147483647i, -48894i));
    return var_4.e;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = firstTrailingBit(max((u_input.a.x ^ u_input.a.x) & (_wgslsmith_add_i32(arg_3.c.b, 10715i) & -arg_3.c.b), func_2(abs(arg_1.b.a))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(279f, -2459f, -1099f, arg_1.c.a.x))), arg_3.a)))), arg_3.e);
    var var_2 = ~_wgslsmith_add_vec3_i32(u_input.a, reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c.b, 1i, 6534i), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_1.b, -14193i), u_input.a))));
    let var_3 = ~_wgslsmith_mod_i32(-12549i, arg_3.c.b) >= arg_1.e;
    let var_4 = ~vec3<u32>(u_input.e.x, _wgslsmith_dot_vec2_u32(reverseBits(u_input.c.yw) ^ _wgslsmith_sub_vec2_u32(u_input.c.xy, arg_1.b.a.xy), ~(arg_1.b.a.zx | vec2<u32>(arg_1.b.a.x, arg_3.b.a.x))), reverseBits(~7185u | (27983u ^ u_input.c.x)));
    return var_1.a.yzx;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<f32>) -> i32 {
    let var_0 = firstTrailingBit(u_input.d);
    let var_1 = arg_0.zxx;
    let var_2 = ~(~(-max(vec4<i32>(1i, 0i, u_input.a.x, arg_1), vec4<i32>(arg_1, 61812i, 31600i, u_input.a.x)) | vec4<i32>(arg_1, _wgslsmith_mult_i32(u_input.a.x, 2147483647i), _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(arg_1, -64047i)), u_input.a.x)));
    var var_3 = vec2<u32>(select(u_input.d, _wgslsmith_sub_u32(~(~1u), firstLeadingBit(abs(u_input.b))), false), _wgslsmith_dot_vec4_u32(vec4<u32>(107865u, 15603u, 48609u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(1630u, 4294967295u), u_input.e.xz), reverseBits(25053u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b >> (var_0 % 32u), u_input.c.x, 7510u, countOneBits(var_0)), _wgslsmith_sub_vec4_u32(u_input.c, ~vec4<u32>(var_0, u_input.b, u_input.c.x, 7835u)))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.xx;
    let var_1 = vec2<i32>(max(func_4(vec4<bool>(u_input.a.x <= u_input.a.x, u_input.a.x <= u_input.a.x, false, true), -u_input.a.x & u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1321f, -696f), vec3<f32>(942f, -1000f, -1853f)) + _wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(false, true, true, false), Struct_3(vec4<f32>(-1117f, 1661f, -273f, 608f), Struct_1(vec3<u32>(1u, 0u, var_0.x), false), Struct_2(vec4<f32>(-567f, -1448f, 1227f, -410f), u_input.a.x), vec3<f32>(1550f, 2120f, -1330f), u_input.a.x), vec4<bool>(false, false, true, true), Struct_3(vec4<f32>(130f, -2166f, -2063f, 343f), Struct_1(u_input.c.xxy, true), Struct_2(vec4<f32>(648f, -1042f, 1000f, 1265f), 34473i), vec3<f32>(-615f, -135f, 134f), 0i))))), ~_wgslsmith_sub_i32(i32(-1i) * -16976i, 1i)), 46422i);
    let var_2 = func_3(var_1.x, ((_wgslsmith_dot_vec2_i32(var_1, vec2<i32>(u_input.a.x, 1i)) << (4294967295u % 32u)) >> (_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.e.xxx, vec3<u32>(37038u, 40459u, 1078u))) % 32u)) > countOneBits(_wgslsmith_add_i32(firstLeadingBit(u_input.a.x), var_1.x | 41462i)), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(146f, -192f, -813f, -551f), vec4<f32>(1134f, -826f, -813f, -120f))) + vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(vec3<u32>(10148u, 0u, 1u), true), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1118f, 1000f, -1046f, -1461f)), vec4<f32>(-2051f, -762f, 974f, -777f), false)), -2147483647i), vec3<f32>(1f, 1f, 1f), u_input.a.x), u_input.c.x);
    let var_3 = Struct_1(vec3<u32>(2841u, _wgslsmith_dot_vec3_u32(u_input.c.ywz, ~(~u_input.c.zzz)), _wgslsmith_dot_vec2_u32(~min(u_input.c.xy, vec2<u32>(42851u, 4294967295u)), ~vec2<u32>(u_input.d, 4294967295u) | var_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1173f + -785f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(207f + 1367f), _wgslsmith_f_op_f32(round(2227f)), any(vec3<bool>(false, false, true)))))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1481f + -1116f) * _wgslsmith_f_op_f32(floor(1938f))))));
    var var_4 = vec3<bool>(all(!select(!vec2<bool>(var_3.b, var_3.b), vec2<bool>(true, true), true)), var_3.b, false);
    var_4 = !(!(!vec3<bool>(!var_4.x, true, all(vec2<bool>(var_4.x, var_3.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-840f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1333f - -1131f) + _wgslsmith_f_op_f32(ceil(-590f))))));
}

