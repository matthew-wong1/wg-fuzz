struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 12> = array<i32, 12>(19403i, 0i, -1i, -1i, 0i, 2147483647i, 2147483647i, -72445i, 0i, -16006i, 0i, 47415i);

var<private> global2: array<vec2<i32>, 21>;

var<private> global3: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = global0.a.xx;
    global3 = Struct_2(~global3.a);
    var var_1 = global0.a.zy;
    var var_2 = ~vec4<i32>(_wgslsmith_div_i32(53417i, abs(67713i) | ~u_input.e), arg_3.d.x, 1i << (~u_input.d % 32u), global3.a & _wgslsmith_div_i32(_wgslsmith_div_i32(-12934i, u_input.e), max(global1[_wgslsmith_index_u32(1u, 12u)], arg_3.d.x)));
    var var_3 = Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(10772i, global0.d.x, global3.a, 1i), vec4<i32>(arg_3.d.x, global1[_wgslsmith_index_u32(global0.b.x, 12u)], arg_3.d.x, var_2.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 11886i, global0.d.x, global3.a), vec4<i32>(2147483647i, global0.d.x, global3.a, global3.a)), ~vec4<i32>(var_2.x, 7318i, -1i, 20583i), vec4<i32>(395i, 416i, 13826i, -14695i)))));
    return ~1i;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_mod_i32(~(~1i), func_3((global0.c.x && true) | global0.c.x, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, global0.a.x, arg_1.x, global0.a.x), vec4<f32>(120f, 894f, arg_1.x, 733f))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(994f, global0.a.x, 567f))), vec3<u32>(0u, global0.b.x, 43054u) | global0.b, vec4<bool>(true, global0.c.x, false, global0.c.x), select(u_input.b.xz, vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(global0.b.x, 12u)]), global0.c.x)))));
    let var_1 = -17504i;
    var var_2 = 23076u;
    global3 = Struct_2(_wgslsmith_add_i32(-379i, abs(global3.a)) ^ 0i);
    var var_3 = any(vec3<bool>(all(select(global0.c.yzw, vec3<bool>(global0.c.x, false, false), global0.c.xwx)), true, -1000f == _wgslsmith_f_op_f32(trunc(global0.a.x)))) && !any(global0.c.yyy);
    return 55666u;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - -377f)), -929f), _wgslsmith_f_op_vec2_f32(-global0.a.xz)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(f32(-1f) * -240f), -1135f) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1123f), _wgslsmith_f_op_f32(1066f + var_0.x))) * vec3<f32>(-965f, _wgslsmith_f_op_f32(max(var_0.x, 1678f)), _wgslsmith_f_op_f32(var_0.x * -971f))), vec3<u32>((32196u << ((1u | global0.b.x) % 32u)) & ~58621u, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(global0.b.x, 66684u)), ~(~20662u)), func_2(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1293f, 852f))), 44725i, firstLeadingBit(vec3<i32>(55941i, -2147483647i, u_input.e)))), global0.c, vec2<i32>(global3.a, global1[_wgslsmith_index_u32(1u, 12u)]) & reverseBits(~abs(vec2<i32>(u_input.b.x, -2147483647i))));
    let var_2 = var_1;
    var var_3 = select(firstLeadingBit(var_2.b.xy), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 64855u), var_1.b.zx)) << ((min(_wgslsmith_sub_vec2_u32(u_input.c, global0.b.xz), ~u_input.c) << (vec2<u32>(~19225u, 21004u) % vec2<u32>(32u))) % vec2<u32>(32u)), var_1.c.xx);
    let var_4 = true;
    return var_2;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_3 {
    return Struct_3(Struct_2(~firstTrailingBit(73953i) | 11205i));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    let var_0 = u_input.c.x;
    let var_1 = vec3<u32>(1u, var_0 >> (126967u % 32u), countOneBits(103574u));
    let var_2 = max(~countOneBits(~vec3<u32>(arg_1, arg_1, 4294967295u)) | (~_wgslsmith_sub_vec3_u32(vec3<u32>(36013u, var_1.x, u_input.d), global0.b) ^ ~var_1), vec3<u32>(u_input.d, ~(~u_input.c.x), ~72696u));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 12>();
    let var_0 = -max(abs(~(-global0.d)), abs(global2[_wgslsmith_index_u32(56293u, 21u)]));
    let var_1 = Struct_3(func_5(global0.a.x, ~_wgslsmith_sub_u32(u_input.c.x << (22969u % 32u), _wgslsmith_div_u32(global0.b.x, global0.b.x)), func_4(-(~vec4<i32>(u_input.b.x, -1i, 9205i, u_input.e)), func_1(!global0.c)), func_4(min(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], -92479i, var_0.x, u_input.b.x) | vec4<i32>(global3.a, -4723i, 0i, -2147483647i), vec4<i32>(0i, global3.a, global3.a, 65302i)), Struct_1(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(-159f, global0.a.x, 2824f)), vec3<u32>(global0.b.x, u_input.d, global0.b.x), global0.c, global0.d))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(188f, 1033f, 578f, global0.a.x), vec4<f32>(global0.a.x, -1059f, global0.a.x, global0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.a.x, global0.a.x, global0.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 782f, 1496f, global0.a.x) - vec4<f32>(global0.a.x, global0.a.x, -100f, global0.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, global0.a.x, 821f, global0.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(floor(global0.a.x)), _wgslsmith_f_op_f32(round(global0.a.x)), 650f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * global0.a.x) - _wgslsmith_div_f32(global0.a.x, 1690f)), global0.a.x, _wgslsmith_f_op_f32(global0.a.x + -884f)))));
    global0 = func_1(global0.c);
    let var_3 = 40389i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(global0.b.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(~61727u, u_input.a), global0.b.yy)), ~countOneBits(2147483647i), abs(firstLeadingBit(abs(~u_input.c))), u_input.c.x, 4246i);
}

