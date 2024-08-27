struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -297f))))), arg_1.b.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x))) + global1.a.a.wx));
    let var_1 = ~(-2147483647i);
    global1 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a.x - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(689f + global1.a.b.c.x), -715f)), -1310f), arg_1.b), _wgslsmith_mod_vec3_i32(vec3<i32>(abs(36816i), abs(arg_1.b.a), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1, u_input.b), _wgslsmith_div_i32(var_1, arg_0.a.b.a))), min(_wgslsmith_mult_vec3_i32(global1.b, u_input.c), u_input.c)));
    global0 = _wgslsmith_f_op_f32(max(global1.a.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x - _wgslsmith_div_f32(-1057f, -1000f)))));
    var var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f + arg_0.a.a.x));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.b.c.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec4<f32>(1360f, global1.a.a.x, global1.a.a.x, 1574f), global1.a.b), u_input.c), Struct_2(vec4<f32>(global1.a.b.c.x, 1171f, global1.a.b.c.x, global1.a.a.x), Struct_1(u_input.b, true, global1.a.a, u_input.e.zxw))))))))));
    var var_0 = -vec4<i32>(arg_0, _wgslsmith_add_i32(38106i, countOneBits(23542i)), global1.a.b.a, _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0, arg_0) << (_wgslsmith_mod_u32(u_input.a, global1.a.b.d.x) % 32u), arg_0));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-global1.a.a), Struct_1(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-65196i, 0i, 27492i, u_input.b)), vec4<i32>(17812i, -14765i, -2147483647i, 2147483647i)), global1.a.b.b && (global1.a.b.c.x != global1.a.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.a)), global1.a.b.d)), u_input.c);
    let var_2 = Struct_4(any(!(!select(vec4<bool>(var_1.a.b.b, false, true, var_1.a.b.b), vec4<bool>(global1.a.b.b, false, var_1.a.b.b, true), vec4<bool>(false, var_1.a.b.b, true, true)))));
    var_0 = abs(min(~(_wgslsmith_div_vec4_i32(vec4<i32>(global1.a.b.a, 27835i, -1i, var_0.x), vec4<i32>(var_0.x, 27229i, -2147483647i, var_1.a.b.a)) << (firstTrailingBit(vec4<u32>(34590u, var_1.a.b.d.x, 4294967295u, var_1.a.b.d.x)) % vec4<u32>(32u))), vec4<i32>(-10725i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.b.x, -14965i, 2147483647i), global1.b), min(var_1.b, vec3<i32>(var_1.a.b.a, 7651i, u_input.b))), -arg_0, -1i)));
    return var_1.a.b;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global1.a.b.c, global1.a.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1752f * _wgslsmith_f_op_f32(-global1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.c.x - -768f)), 1240f, -167f) + vec4<f32>(global1.a.a.x, global1.a.a.x, _wgslsmith_f_op_f32(1605f * _wgslsmith_f_op_f32(round(1892f))), arg_0)));
    var var_1 = func_2(-19912i);
    global0 = -1679f;
    var var_2 = global1.a.b;
    return arg_0;
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    global1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b.c.x, arg_1, 127f, _wgslsmith_f_op_f32(-global1.a.b.c.x))), func_2(func_2(~global1.b.x).a)), vec3<i32>(global1.b.x, u_input.c.x, abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, -2147483647i), u_input.c))));
    return global1.a.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = ~countOneBits(_wgslsmith_div_vec3_i32(~vec3<i32>(3912i, -73739i, global1.b.x), global1.b) << (reverseBits(vec3<u32>(0u, arg_0.d.x, arg_0.d.x)) % vec3<u32>(32u)));
    global1 = Struct_3(global1.a, vec3<i32>(-1i) * -countOneBits(vec3<i32>(2147483647i, arg_0.a, -34333i)));
    global0 = arg_0.c.x;
    global0 = _wgslsmith_f_op_f32(-arg_0.c.x);
    var var_1 = true;
    return Struct_2(global1.a.a, global1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    global0 = -1668f;
    var var_1 = vec2<i32>(global1.b.x ^ abs(23405i), 39230i);
    var var_2 = func_5(func_4(Struct_4(true), _wgslsmith_f_op_f32(func_1(-454f, ~min(global1.a.b.d.xy, u_input.e.wz))), u_input.a, func_2(abs(var_0.b.a >> (u_input.a % 32u)))), vec2<i32>(1i, _wgslsmith_mod_i32(global1.a.b.a, abs(_wgslsmith_mult_i32(global1.a.b.a, var_1.x)))), u_input.c, Struct_4(true));
    global0 = _wgslsmith_f_op_f32(-868f - _wgslsmith_f_op_f32(select(655f, -319f, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(~23239i, max(~0i, -2147483647i)), u_input.c.x, abs(-1i), func_2((global1.a.b.a >> (u_input.a % 32u)) | _wgslsmith_add_i32(-22282i, global1.b.x)).a), _wgslsmith_div_vec3_f32(func_4(Struct_4(var_2.b.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.a.x, global1.a.b.c.x)), 965f)), ~func_4(Struct_4(true), -481f, 28245u, global1.a.b).d.x, func_5(func_2(2147483647i), ~vec2<i32>(2147483647i, 1340i), _wgslsmith_mult_vec3_i32(global1.b, global1.b), Struct_4(true)).b).c.xwy, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 773f) + var_2.b.c.x), _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(-var_2.a.x))))), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x << (0u % 32u), 0u), abs(global1.a.b.d.zx)), select(vec2<u32>(var_2.b.d.x, var_0.b.d.x), vec2<u32>(4294967295u, 22561u), vec2<bool>(true, var_2.b.b)) ^ _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(global1.a.b.d.xz, vec2<u32>(4294967295u, 13591u)), ~vec2<u32>(var_2.b.d.x, var_2.b.d.x))));
}

