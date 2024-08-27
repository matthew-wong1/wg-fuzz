struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(740f, vec4<bool>(false, true, false, false), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-1517f, -2020f, 1000f), vec4<i32>(-11017i, -39300i, 2147483647i, 19651i)), Struct_1(1872f, vec4<bool>(false, true, false, true), vec3<u32>(0u, 4294967295u, 37525u), vec3<f32>(1126f, -1067f, -902f), vec4<i32>(-31588i, i32(-2147483648), i32(-2147483648), 3881i)), Struct_1(304f, vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<f32>(-103f, 1000f, 1043f), vec4<i32>(-15942i, -1i, 0i, i32(-2147483648))), Struct_1(-198f, vec4<bool>(false, false, false, true), vec3<u32>(0u, 10914u, 24764u), vec3<f32>(-1380f, 1129f, 411f), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i)), Struct_1(485f, vec4<bool>(false, true, true, true), vec3<u32>(1u, 4294967295u, 1u), vec3<f32>(1648f, 544f, 232f), vec4<i32>(35934i, 2147483647i, -2762i, 1i)), Struct_1(915f, vec4<bool>(true, false, true, false), vec3<u32>(1u, 4294967295u, 37093u), vec3<f32>(-1348f, 911f, 2232f), vec4<i32>(-25333i, -25474i, -62513i, 1i)), Struct_1(304f, vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 0u, 27633u), vec3<f32>(-473f, 1000f, 1000f), vec4<i32>(-59202i, -18931i, -16967i, i32(-2147483648))), Struct_1(-364f, vec4<bool>(true, true, false, true), vec3<u32>(98642u, 15674u, 1u), vec3<f32>(-604f, -1000f, -318f), vec4<i32>(-1i, -41872i, 2147483647i, -1773i)), Struct_1(-691f, vec4<bool>(true, true, true, true), vec3<u32>(1u, 1u, 23997u), vec3<f32>(1017f, -1522f, 1305f), vec4<i32>(-10959i, 39568i, 27897i, -4939i)), Struct_1(-1446f, vec4<bool>(true, true, false, false), vec3<u32>(33279u, 76164u, 47522u), vec3<f32>(1503f, 403f, -1000f), vec4<i32>(23616i, 2147483647i, i32(-2147483648), 1i)));

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<f32>, 3>;

var<private> global3: vec3<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = arg_1.d;
    var var_1 = _wgslsmith_dot_vec4_u32(countOneBits(u_input.c), u_input.c);
    var var_2 = arg_1;
    return _wgslsmith_dot_vec4_i32(abs(~arg_1.e), vec4<i32>(arg_1.e.x, ~_wgslsmith_dot_vec4_i32(arg_1.e, abs(vec4<i32>(var_2.e.x, var_2.e.x, 0i, arg_1.e.x))), -_wgslsmith_dot_vec3_i32(arg_1.e.xww, _wgslsmith_sub_vec3_i32(arg_1.e.zwx, vec3<i32>(-2147483647i, -7665i, var_2.e.x))), abs(-var_2.e.x)));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = -(~func_3(arg_0.b.x, arg_0, _wgslsmith_f_op_f32(-global3.x), global0[_wgslsmith_index_u32(u_input.c.x, 10u)]));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.a), 10u)];
    global3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_1.d, _wgslsmith_f_op_vec3_f32(-global1.yzz), false & arg_0.b.x)))))));
    global0 = array<Struct_1, 10>();
    var var_2 = firstTrailingBit(~max(u_input.c.wyz, u_input.c.zyy) & ~(~var_1.c)) >> (vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.c.x, var_1.c.x), var_1.c.x), ~0u, 4294967295u) % vec3<u32>(32u));
    return u_input.c.xwx;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(global1.x, arg_0.b, func_2(arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_0.a, -226f))))), arg_0.e);
    var var_1 = global0[_wgslsmith_index_u32(74195u, 10u)];
    let var_2 = select(vec3<bool>(any(var_1.b), any(!vec2<bool>(var_0.b.x, arg_0.b.x)), !any(!vec3<bool>(var_1.b.x, true, false))), var_0.b.yxw, select(select(var_0.b.yzy, vec3<bool>(arg_0.b.x, false, true), vec3<bool>(true, var_1.b.x, true)), vec3<bool>(var_1.b.x & any(vec2<bool>(var_0.b.x, var_1.b.x)), var_0.b.x, any(vec3<bool>(false, var_0.b.x, var_1.b.x))), true));
    let var_3 = max(~vec3<u32>(arg_0.c.x | arg_0.c.x, min(29436u, 1u), var_1.c.x | arg_0.c.x), vec3<u32>(~(4294967295u >> (0u % 32u)), 31648u, var_1.c.x)) >> (firstLeadingBit(~vec3<u32>(var_0.c.x, arg_0.c.x, 0u) | var_0.c) % vec3<u32>(32u));
    var var_4 = var_2;
    return ~(~countOneBits(var_1.c));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> StorageBuffer {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1385f, 1214f, -1813f)), vec4<f32>(global3.x, arg_1.d.x, global3.x, arg_1.a), !vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x))))))));
    var var_0 = min(-1i, 1i & u_input.b.x);
    let var_1 = arg_1.b.x;
    let var_2 = -1i;
    let var_3 = arg_0;
    return StorageBuffer(arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 3>();
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -445f);
    var var_1 = true;
    let var_2 = 2147483647i;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.a, 3u)] * global2[_wgslsmith_index_u32(58353u, 3u)]) + vec4<f32>(1285f, global1.x, global1.x, global1.x)))), Struct_1(1600f, !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false)), vec3<u32>(u_input.a, u_input.a >> (4294967295u % 32u), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(22559u, u_input.a, 45686u, 28347u))) ^ func_1(global0[_wgslsmith_index_u32(u_input.a, 10u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -492f, _wgslsmith_f_op_f32(-global3.x))), ~select(u_input.b >> (u_input.c % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 7824i, -2147483647i, u_input.b.x), vec4<i32>(-9040i, u_input.b.x, var_2, u_input.b.x)), vec4<bool>(true, true, true, true))));
}

