struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_mod_i32(u_input.c, 1i);
    let var_1 = ~((~1u & _wgslsmith_sub_u32(u_input.d.x, u_input.b)) << (157325u % 32u)) ^ reverseBits(54143u);
    let var_2 = vec3<u32>(~60565u, 0u, ~0u);
    var var_3 = Struct_1(arg_0.a, vec4<u32>(~_wgslsmith_div_u32(firstTrailingBit(var_2.x), var_1), ~u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1, 44874u) | vec3<u32>(arg_0.b.x, arg_0.b.x, var_1), countOneBits(vec3<u32>(var_1, var_1, u_input.d.x))), arg_0.b.x));
    let var_4 = -(~(-(~vec4<i32>(18714i, u_input.e, 27822i, var_3.a.x))));
    return vec4<f32>(-461f, -574f, 1f, 1266f);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(992f, 1937f, 701f, 267f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-106f, 584f, -1801f, 155f) - vec4<f32>(-1000f, 929f, 578f, 331f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-758f, -606f, 113f, -1107f), vec4<f32>(-792f, 330f, 1240f, -1313f))), _wgslsmith_f_op_vec4_f32(func_3(arg_0))))));
    let var_1 = Struct_3(vec4<bool>(true, var_0.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1111f)), true, (all(vec2<bool>(false, true)) || true) | all(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), Struct_2(~61460u), Struct_1(countOneBits(reverseBits(vec2<i32>(u_input.a, -1i))) | select(arg_0.a, ~vec2<i32>(arg_0.a.x, arg_0.a.x), all(vec3<bool>(false, false, true))), vec4<u32>(~arg_0.b.x, ~2455u, 1u, ~u_input.d.x) & countOneBits(arg_0.b)), Struct_2((~u_input.b >> (u_input.b % 32u)) & ~(~arg_0.b.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-858f - _wgslsmith_f_op_f32(min(var_0.x, var_0.x))));
    var var_3 = var_1;
    let var_4 = ~select(~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -30893i), vec2<i32>(8358i, var_3.d.a.x)), var_3.d.a), vec2<i32>(-(~0i), min(u_input.e, u_input.a) | (u_input.a << (4294967295u % 32u))), select(select(vec2<bool>(true, var_3.a.x), select(vec2<bool>(true, var_1.b.x), vec2<bool>(false, true), vec2<bool>(var_1.b.x, var_3.b.x)), !var_3.a.x), select(vec2<bool>(var_1.b.x, false), vec2<bool>(var_1.b.x, false), !var_3.b.yy), any(vec2<bool>(var_1.b.x, true))));
    return Struct_3(vec4<bool>(var_3.c.a != var_3.d.b.x, true, var_3.a.x, var_1.b.x), vec3<bool>(true, !(true != (false && var_3.a.x)), !select(false, all(var_3.b), any(var_1.a.yw))), Struct_2(79381u), arg_0, Struct_2(1u));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = ~arg_0.d.a;
    let var_1 = Struct_2(24216u);
    let var_2 = firstLeadingBit(arg_1);
    var_0 = select(var_2 & arg_1, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -_wgslsmith_sub_i32(2147483647i, arg_1.x)), -var_2), !vec2<bool>(true, arg_0.b.x & all(arg_0.b.xz)));
    let var_3 = arg_0.a;
    return vec3<bool>(true, any(var_3.xy), true);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = select(!select(vec3<bool>(any(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, true, u_input.c > -6415i), any(vec3<bool>(false, false, false))), !select(vec3<bool>(false, true, u_input.e == 0i), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), func_4(func_2(Struct_1(vec2<i32>(u_input.e, u_input.c), u_input.d)), vec2<i32>(-7345i, u_input.e) & vec2<i32>(u_input.c, -9213i))), select(true, true, !any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    var_1 = !select(vec3<bool>(_wgslsmith_f_op_f32(arg_1.x + -234f) <= _wgslsmith_f_op_f32(-arg_1.x), (var_1.x && var_1.x) || false, _wgslsmith_div_i32(u_input.e, u_input.a) == ~u_input.e), vec3<bool>(var_1.x, ~(-3641i) <= _wgslsmith_mult_i32(u_input.e, u_input.a), any(func_2(Struct_1(vec2<i32>(-19712i, 8968i), vec4<u32>(arg_0, 1u, arg_0, u_input.b))).a)), !func_2(Struct_1(vec2<i32>(u_input.e, u_input.a), u_input.d)).b);
    return func_2(func_2(func_2(func_2(func_2(Struct_1(vec2<i32>(u_input.c, -41636i), vec4<u32>(arg_0, 4294967295u, 0u, 23114u))).d).d).d).d).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1765f, -249f)))));
    let var_1 = func_1(firstTrailingBit(var_0.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(535f, 194f) * vec2<f32>(1736f, 705f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1561f, -826f) - vec2<f32>(-976f, -1386f))))));
    var_0 = func_2(var_1).d;
    let var_2 = var_1;
    var_0 = var_2;
    var_0 = Struct_1(~reverseBits((vec2<i32>(var_0.a.x, var_0.a.x) << (var_1.b.yy % vec2<u32>(32u))) << ((u_input.d.ww << (var_1.b.xz % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, 55796u, _wgslsmith_mult_vec3_i32(~vec3<i32>(abs(u_input.a), firstTrailingBit(0i), var_0.a.x), ~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a.x, var_1.a.x, u_input.c), vec3<i32>(var_2.a.x, var_2.a.x, 1i)), vec3<i32>(u_input.e, -3607i, -2017i))));
}

