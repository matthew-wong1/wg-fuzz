struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> i32 {
    return -abs(-1i);
}

fn func_2() -> vec4<bool> {
    global0 = _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(~u_input.a, func_3(Struct_1(4294967295u, vec4<bool>(true, true, true, false), vec3<i32>(-47397i, u_input.a, 1i), -1i, vec4<bool>(true, false, false, false))))), _wgslsmith_clamp_vec2_i32(~(vec2<i32>(u_input.a, 2147483647i) << (vec2<u32>(u_input.d, u_input.c) % vec2<u32>(32u))), vec2<i32>(-2147483647i, global0.x), _wgslsmith_div_vec2_i32(select(vec2<i32>(7301i, 2147483647i), vec2<i32>(10110i, u_input.a), true), vec2<i32>(-1i, 9226i) | vec2<i32>(12423i, global0.x))) | _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a), _wgslsmith_mod_vec2_i32(~vec2<i32>(1i, global0.x), vec2<i32>(0i, u_input.a) | vec2<i32>(-2147483647i, 2147483647i))));
    var var_0 = vec4<bool>(false, true, (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c, 80297u)), vec2<u32>(u_input.d, 0u)) | ~select(u_input.c, 0u, true)) < 52159u, !(abs(_wgslsmith_div_u32(u_input.d, 53124u)) < ~1u));
    var_0 = select(!vec4<bool>(var_0.x, var_0.x, !var_0.x, var_0.x), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), true), all(var_0.zzw))), !(!(!select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), var_0.x))));
    var_0 = select(!select(vec4<bool>(true, true, var_0.x, true), !(!vec4<bool>(false, var_0.x, false, false)), select(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(true, var_0.x, var_0.x, false), var_0.x), true)), select(vec4<bool>(true, u_input.c == u_input.c, false, var_0.x), !(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, true), false)), var_0.x != true), !vec4<bool>(max(u_input.b, u_input.d) == abs(u_input.d), !var_0.x, !(!var_0.x), !any(vec4<bool>(false, true, false, true))));
    var var_1 = !(!var_0.xxw);
    return select(!vec4<bool>(var_1.x, all(select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_1.x), var_0.x)), !var_1.x, (var_1.x || var_0.x) && false), !(!vec4<bool>(true, !var_0.x, select(var_1.x, true, false), var_1.x)), vec4<bool>(u_input.a > 1i, !var_1.x, var_0.x, var_0.x));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(~u_input.b, vec4<bool>(!(arg_1.x && false) | any(!vec2<bool>(arg_1.x, arg_1.x)), arg_1.x, true, _wgslsmith_mult_u32(u_input.d, max(75831u, 4402u)) > u_input.b), firstLeadingBit(vec3<i32>(-2147483647i, ~80699i, global0.x)), -_wgslsmith_add_i32(22530i, min(18312i, arg_2) & -2147483647i), !(!func_2()));
    let var_1 = vec3<u32>(~u_input.c, ~4294967295u, ~(~u_input.b)) | (select(vec3<u32>(21632u, var_0.a, 0u) >> (vec3<u32>(0u, u_input.d, u_input.b) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 104874u, u_input.b), vec3<u32>(u_input.b, 1u, 84272u))), !var_0.b.x) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(11519u, var_0.a, 40401u), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, var_0.a)))) % vec3<u32>(32u)));
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(~(-17788i), global0.x), -_wgslsmith_clamp_vec2_i32(var_0.c.zz, countOneBits(vec2<i32>(arg_2, 16686i)) << (var_1.xx % vec2<u32>(32u)), var_0.c.zz));
    global0 = -var_0.c.yx;
    global0 = (vec2<i32>(-1i) * -(~select(var_0.c.yx, var_0.c.yy, arg_1.x))) & _wgslsmith_mod_vec2_i32(vec2<i32>(select(20140i, global0.x, false) << (_wgslsmith_clamp_u32(u_input.d, 19699u, 0u) % 32u), u_input.a), var_0.c.xz);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(min(global0.x, 43893i), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), min(-_wgslsmith_sub_i32(~global0.x, _wgslsmith_mult_i32(8952i, 26323i)), global0.x));
    let var_1 = func_1(35662i, var_0.b.yyz, 1i);
    let var_2 = vec4<i32>(-2147483647i, firstLeadingBit(-26533i), 0i, _wgslsmith_mult_i32(1i, var_0.c.x));
    global0 = select(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_0.d) | (var_2.xx << (abs(vec2<u32>(35900u, var_1.a)) % vec2<u32>(32u))), reverseBits(var_1.c.xy)), max(vec2<i32>(26962i, func_1(-61826i, vec3<bool>(true, false, true), u_input.a).c.x) ^ -var_1.c.yy, var_0.c.zy & ~abs(vec2<i32>(var_2.x, -24086i))), !(any(var_1.b.zxy) | !(var_1.b.x | var_0.e.x)));
    let var_3 = select(vec3<bool>(all(func_1(_wgslsmith_sub_i32(u_input.a, var_1.c.x), vec3<bool>(false, var_0.e.x, var_1.b.x), _wgslsmith_mult_i32(6592i, var_2.x)).b.zxy), false, var_1.e.x), var_0.e.yxy, true);
    var var_4 = var_1;
    var_4 = var_1;
    let var_5 = func_1(countOneBits(-1i), var_0.b.zzx, _wgslsmith_mod_i32(-select(_wgslsmith_div_i32(-10657i, -3682i), 0i, true), -global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1495f, -734f, 1000f, 482f), vec4<f32>(950f, -1000f, 653f, 424f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-753f, 206f, 1000f, -1542f), vec4<f32>(-1000f, -322f, -1161f, 523f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(714f, -893f, 680f, 1358f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(742f, -530f, -290f, -1883f))))), vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-326f + _wgslsmith_f_op_f32(sign(1466f)))), -152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-754f, _wgslsmith_div_f32(-570f, -197f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(214f)), -1115f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-357f, 822f)) - -1270f) * _wgslsmith_f_op_f32(max(338f, _wgslsmith_f_op_f32(sign(795f)))))));
}

