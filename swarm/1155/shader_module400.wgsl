struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

var<private> global2: Struct_2;

var<private> global3: array<f32, 9> = array<f32, 9>(-691f, 1080f, -614f, -400f, -1491f, 164f, 1212f, 698f, 376f);

var<private> global4: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_5) -> bool {
    let var_0 = vec3<bool>(global4.a.x, global4.a.x, true);
    global2 = Struct_2(1325f);
    global2 = Struct_2(-2681f);
    return all(global4.a);
}

fn func_2() -> Struct_2 {
    global4 = Struct_4(vec4<bool>(true, false, false, (!global4.a.x || true) == func_3(Struct_2(global3[_wgslsmith_index_u32(1u, 9u)]), Struct_2(146f), Struct_5(Struct_1(global4.d.a, u_input.a.x, global4.a.x, -30916i), Struct_4(vec4<bool>(false, global4.a.x, false, false), global4.b, vec2<f32>(-853f, 594f), Struct_3(global0.a, global4.d.b), global4.e), vec3<i32>(9490i, global0.a, -7833i)))), abs(global4.b), global4.c, Struct_3(select(_wgslsmith_dot_vec3_i32(global4.b, vec3<i32>(0i, 27610i, global4.b.x)), ~(-34999i), 36536u < u_input.a.x), _wgslsmith_f_op_f32(-global4.e.a)), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * global4.c.x) - -282f)))));
    var var_0 = global4.a.x;
    let var_1 = vec4<u32>(u_input.a.x, 50807u, ~(~70771u) | u_input.a.x, 22971u);
    global4 = Struct_4(!global4.a, -_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, global4.d.a, 43141i), ~(~global4.b)), _wgslsmith_f_op_vec2_f32(-global4.c), Struct_3(abs(_wgslsmith_add_i32(global0.a << (var_1.x % 32u), _wgslsmith_mod_i32(global0.a, 1i))), _wgslsmith_f_op_f32(floor(global0.b))), global4.e);
    var var_2 = -vec4<i32>(countOneBits(1i), global4.b.x, abs(_wgslsmith_add_i32(global0.a, global4.d.a) | 0i), -21689i);
    return global4.e;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_5 {
    global2 = func_2();
    global1 = false;
    let var_0 = _wgslsmith_clamp_vec4_i32(max(vec4<i32>(global0.a | global0.a, min(_wgslsmith_mod_i32(34655i, arg_0.x), 1i), _wgslsmith_sub_i32(reverseBits(0i), -67013i), ~1i), max(arg_0, arg_0 ^ vec4<i32>(0i, global4.d.a, 2147483647i, 15875i)) ^ vec4<i32>(-20244i, arg_0.x & -1i, abs(global0.a), max(global4.d.a, -27488i))), vec4<i32>(~2147483647i, ~abs(~(-38358i)), abs(-6158i), _wgslsmith_div_i32(17986i, global0.a)), -firstLeadingBit(~arg_0));
    let var_1 = Struct_1(65316i, _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), ~(~u_input.a.x), u_input.a.x), u_input.a), global4.a.x, ~(~global4.d.a));
    let var_2 = Struct_3(var_1.a, 780f);
    return Struct_5(Struct_1(1i, 25326u, true, _wgslsmith_sub_i32(firstLeadingBit(var_0.x), _wgslsmith_div_i32(2147483647i, countOneBits(-1i)))), Struct_4(!vec4<bool>(any(arg_1.yx), true, false, global0.a <= 7456i), min(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-853i, -1721i, var_1.d), vec3<i32>(var_2.a, 14255i, arg_0.x), ~vec3<i32>(var_1.a, var_2.a, global4.d.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(global4.b.x, -2147483647i, -41381i), vec3<i32>(-1i, global0.a, 27976i))), global4.c, global4.d, func_2()), ~firstLeadingBit(max(max(var_0.wzy, vec3<i32>(-2147483647i, var_0.x, -61899i)), vec3<i32>(var_2.a, -2147483647i, 44307i))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_5, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = Struct_1(-(~(~(20186i << (u_input.a.x % 32u)))), arg_2.a.b, global4.a.x, select(global0.a, -71877i, arg_2.b.a.x));
    let var_1 = _wgslsmith_clamp_u32(var_0.b, arg_2.a.b, ~arg_2.a.b);
    var_0 = arg_2.a;
    var var_2 = u_input.a.yz;
    var var_3 = Struct_3(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b.e.a, arg_2.b.d.b, !var_0.c)) - _wgslsmith_f_op_f32(floor(308f))));
    return !arg_2.b.a.wy;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_4 {
    global3 = array<f32, 9>();
    global3 = array<f32, 9>();
    global3 = array<f32, 9>();
    return func_1(abs((select(vec4<i32>(global4.b.x, global0.a, global0.a, -19182i), vec4<i32>(2147483647i, global0.a, global4.b.x, global0.a), false) | -vec4<i32>(global4.d.a, global0.a, global0.a, -1i)) & vec4<i32>(0i, -49877i, ~40260i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.d.a, -13742i, 94869i, -1i), vec4<i32>(global0.a, -50989i, -3333i, 0i)))), !(!global4.a.zwy)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(select(global4.a.yw, func_4(global0.a, 2147483647i, func_1(vec4<i32>(global4.b.x, 25889i, 2147483647i, -1i), vec3<bool>(global4.a.x, true, false)), Struct_3(global4.b.x, 1516f)), !global4.a.wy), !global4.a.wy, 287f > _wgslsmith_f_op_f32(abs(func_1(vec4<i32>(10187i, 44233i, global4.b.x, -15488i), global4.a.wxz).b.d.b))), global4.a.wwx);
    let var_1 = var_0.e;
    var var_2 = vec2<f32>(-511f, var_0.d.b);
    global2 = global4.e;
    global4 = func_5(func_4(-8938i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-476i, 0i, -2708i, global4.b.x)), -vec4<i32>(-2147483647i, global0.a, global0.a, -8811i)), abs(select(vec4<i32>(global0.a, global4.b.x, global0.a, -2147483647i), vec4<i32>(global0.a, global4.b.x, 56479i, 49204i), true))), Struct_5(func_1(reverseBits(vec4<i32>(var_0.d.a, 11714i, 28099i, global0.a)), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)).a, Struct_4(func_5(var_0.a.wx, global4.a.yyw).a, var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1788f, 1000f)), var_0.d, func_5(vec2<bool>(false, var_0.a.x), var_0.a.yxy).e), var_0.b), global4.d), vec3<bool>(false, global4.a.x, true));
    global0 = var_0.d;
    let var_3 = func_5(var_0.a.yz, !select(func_5(vec2<bool>(global4.a.x, true), vec3<bool>(var_0.a.x, global4.a.x, global4.a.x)).a.yxx, func_1(select(vec4<i32>(28138i, -46077i, 61505i, -2147483647i), vec4<i32>(38709i, -33646i, var_0.d.a, 51268i), true), global4.a.xxy).b.a.xzy, false)).e;
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_clamp_vec3_i32(global4.b, func_1(~vec4<i32>(-2147483647i, 9252i, 0i, 2147483647i), var_0.a.xwz).c << (~vec3<u32>(4294967295u, 6049u, u_input.a.x) % vec3<u32>(32u)), ~(-firstTrailingBit(vec3<i32>(0i, global4.b.x, -49827i)))), 0u);
}

