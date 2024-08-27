struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: f32 = 1347f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = vec3<bool>(global0.x, true, (arg_2 | _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_2, arg_2), vec3<i32>(arg_2, -16758i, arg_2)), _wgslsmith_dot_vec4_i32(vec4<i32>(56649i, arg_2, 0i, arg_2), vec4<i32>(18044i, arg_2, -2147483647i, 1i)))) == arg_2);
    var var_1 = 664f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(590f + _wgslsmith_f_op_f32(round(arg_0))) + _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(595f - arg_0)))));
    var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, arg_0, 673f, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1000f, arg_0, arg_0) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))))), arg_2);
    return !(!global0.x);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = false;
    var_0 = !any(vec4<bool>(global0.x, select(true, global0.x | true, true), func_3(811f, 1u, _wgslsmith_div_i32(-14951i, -64358i)), !any(global0.zz)));
    let var_1 = arg_1.xy;
    var var_2 = 4294967295u;
    var var_3 = Struct_4(~_wgslsmith_mult_i32(-firstLeadingBit(1i), countOneBits(-40891i)), global0.zw, Struct_2(~arg_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-154f, 904f, -1287f, 2089f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(48371i, 1i, 36133i), vec3<i32>(0i, -34498i, 1i)) ^ 0i), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 1683f, arg_0, -1134f), vec4<f32>(arg_0, arg_0, arg_0, -1582f))))), countOneBits(_wgslsmith_clamp_i32(0i, 42623i, 1i)))));
    return Struct_2(_wgslsmith_mult_u32(~(~var_1.x), _wgslsmith_div_u32(20117u, arg_1.x)), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.c.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1483f), var_3.c.c.a.x, arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_3.c.c.a)) * _wgslsmith_f_op_vec4_f32(var_3.c.b.a + vec4<f32>(-804f, 1078f, var_3.c.b.a.x, var_3.c.c.a.x)))), _wgslsmith_div_i32(var_3.c.b.b, var_3.c.c.b)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.c.a.x, -720f, -2073f, var_3.c.b.a.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -1320f, var_3.c.c.a.x, arg_0))), _wgslsmith_f_op_vec4_f32(max(var_3.c.b.a, var_3.c.c.a)), true))), 2147483647i ^ (~var_3.c.b.b << (4294967295u % 32u))));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = func_2(arg_2.x, ~_wgslsmith_add_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x);
    global1 = var_0.c.a.x;
    var var_1 = _wgslsmith_clamp_i32(~(-59516i << (~var_0.a % 32u)), _wgslsmith_sub_i32(arg_1.x, 84268i), -21976i);
    var var_2 = Struct_4(-(~select(-1i, -863i, 1i != arg_1.x)), select(vec2<bool>(!global0.x, any(!global0.yy)), vec2<bool>(_wgslsmith_f_op_f32(step(var_0.c.a.x, arg_2.x)) != 1376f, func_3(-402f, _wgslsmith_mod_u32(u_input.a.x, 34383u), firstTrailingBit(-1i))), !select(global0.zw, vec2<bool>(global0.x, arg_0), global0.x & arg_0)), func_2(259f, abs(~vec3<u32>(1u, u_input.a.x, var_0.a)), ~min(0u, 51642u ^ var_0.a)));
    var var_3 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-406f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(var_0.b.a.x + -302f)))), _wgslsmith_f_op_f32(var_2.c.c.a.x * -1554f))), u_input.a, reverseBits(~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a, var_2.c.a, 40636u), vec4<u32>(1u, var_2.c.a, u_input.a.x, 1u)) | ~42061u)));
    return Struct_1(var_3.c.a, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(var_2.c.c.b), 1i), vec2<i32>(reverseBits(var_2.a), var_0.c.b)) & -2147483647i);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3.a;
    let var_1 = ~vec3<i32>(select(-77925i << (arg_3.a % 32u), ~(-23495i), false), abs(22273i), _wgslsmith_sub_i32(1i, -1i));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(arg_3.b.a.wyy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(100f, arg_1.a.x, arg_3.b.a.x)))))));
    let var_4 = ~vec3<i32>(reverseBits(-arg_1.b) >> (max(1u, ~arg_0.x) % 32u), var_1.x, -2147483647i);
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1312f) * _wgslsmith_f_op_f32(round(-651f)))));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2177f + _wgslsmith_f_op_f32(-947f * -944f))))));
    var var_1 = vec4<f32>(-860f, 1449f, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(vec2<u32>(1u, u_input.a.x) << (u_input.a.xx % vec2<u32>(32u)), func_1(true, vec4<i32>(2147483647i, -2147483647i, -2147483647i, -1i), vec2<f32>(var_0, -1215f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(528f, var_0, var_0, var_0))), Struct_2(u_input.a.x, Struct_1(vec4<f32>(-1705f, -1120f, var_0, 977f), -4497i), Struct_1(vec4<f32>(var_0, var_0, 289f, -1000f), 0i)))))) + 278f));
    global1 = var_0;
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(2147483647i, firstTrailingBit(1i)), abs(-2147483647i), firstTrailingBit(min(abs(vec3<i32>(1869i, 16854i, 27508i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))), abs(abs(vec3<i32>(2147483647i, 2147483647i, -1i))))), -_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 1i, 1i), select(-vec3<i32>(-1i, 24873i, 1i), ~vec3<i32>(27937i, -20704i, -4174i), true)), -2147483647i);
}

