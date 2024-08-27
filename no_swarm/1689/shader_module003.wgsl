struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(-27925i, vec3<bool>(true, true, true), vec3<u32>(23685u, 22471u, 84980u));

var<private> global2: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> i32 {
    global1 = Struct_1(max(_wgslsmith_add_i32(abs(arg_2.x), abs(-58872i)), -((22512i ^ global1.a) | 1i)), global1.b, reverseBits(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(4294967295u, global1.c.x, 60923u)), ~(~global1.c))));
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<i32>(45465i, -29937i, global1.a, ~_wgslsmith_add_i32(global1.a, u_input.b));
    var_0 = reverseBits(vec4<i32>(global1.a, func_3(-1000f, true, -vec3<i32>(9581i, global1.a, 6919i)), 8142i, var_0.x)) & reverseBits(vec4<i32>(var_0.x, 2147483647i, var_0.x, ~27551i));
    var var_1 = u_input.a;
    var var_2 = !vec2<bool>(true, global1.b.x);
    var_0 = firstLeadingBit(firstTrailingBit(vec4<i32>(~(-32174i), abs(-var_0.x), -2147483647i, var_0.x)));
    return Struct_1(-32078i, vec3<bool>(false, true, all(!global1.b.zy)), ~vec3<u32>(min(27797u << (global1.c.x % 32u), 1u ^ global1.c.x), ~u_input.d, _wgslsmith_div_u32(u_input.d, 0u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec2<bool> {
    let var_0 = ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~global1.c, global1.c >> (vec3<u32>(4294967295u, arg_3, u_input.d) % vec3<u32>(32u)), vec3<u32>(u_input.d, 0u, 1u)), countOneBits(countOneBits(arg_1.c))));
    var var_1 = u_input.d;
    let var_2 = Struct_1(countOneBits(_wgslsmith_sub_i32(~abs(arg_1.a), arg_1.a)), select(arg_1.b, vec3<bool>(true, true, arg_1.b.x), true), global1.c);
    let var_3 = true;
    var var_4 = var_2;
    return func_2().b.yz;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<bool>) -> Struct_1 {
    return Struct_1(global1.a, global1.b, global1.c);
}

fn func_1() -> Struct_1 {
    let var_0 = global1.c.zz;
    global2 = (((global1.b.x | false) && global1.b.x) || true) | global1.b.x;
    var var_1 = -(u_input.a.x >> (~4294967295u % 32u));
    var var_2 = _wgslsmith_add_u32(u_input.d, 4294967295u);
    global2 = false;
    return func_5(!(true || global1.b.x), _wgslsmith_sub_u32(62083u, _wgslsmith_mod_u32(46573u, ~66216u)), vec2<u32>(10226u, 1u & _wgslsmith_mod_u32(~14612u, u_input.d)), func_4(global1.b, func_2(), -u_input.a.x, _wgslsmith_mod_u32(abs(1u), _wgslsmith_mult_u32(0u, u_input.d)) | ~_wgslsmith_clamp_u32(global1.c.x, var_0.x, global1.c.x)));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~select(vec4<i32>(11744i, _wgslsmith_sub_i32(global1.a, arg_0.a), 2147483647i, _wgslsmith_clamp_i32(global1.a, arg_0.a, 1i)), -(~vec4<i32>(-13020i, global1.a, 24966i, arg_0.a)), !select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, false), vec4<bool>(global1.b.x, arg_0.b.x, true, false), global1.b.x)) >> (firstTrailingBit(reverseBits(~(~vec4<u32>(global1.c.x, arg_0.c.x, global1.c.x, 36951u)))) % vec4<u32>(32u));
    let var_1 = arg_0.c.x;
    let var_2 = func_2();
    var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>((~var_0.x << (firstTrailingBit(u_input.d) % 32u)) | -var_2.a, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(65208i, u_input.e.x, global1.a, u_input.b)), vec4<i32>(-1i) * -vec4<i32>(arg_0.a, var_2.a, global1.a, u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global1.a, 24175i, arg_0.a, global1.a), _wgslsmith_add_vec4_i32(~vec4<i32>(-56581i, 2147483647i, 2147483647i, u_input.b), vec4<i32>(arg_0.a, var_0.x, global1.a, var_2.a))), u_input.a.x), vec4<i32>(_wgslsmith_mult_i32(arg_0.a, _wgslsmith_add_i32(-arg_0.a, arg_0.a)), func_2().a, _wgslsmith_add_i32(-u_input.e.x, ~(-12452i)), -6145i), _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.e.x, _wgslsmith_sub_i32(global1.a << (20690u % 32u), var_0.x), 0i, func_2().a), vec4<i32>(-(i32(-1i) * -2147483647i), arg_0.a, 2147483647i, _wgslsmith_add_i32(-1i, 15434i) >> (func_2().c.x % 32u))));
    var var_3 = func_1();
    return func_2();
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = func_2().b.yy;
    global2 = !all(select(select(select(vec4<bool>(arg_0.b.x, global1.b.x, true, false), vec4<bool>(false, global1.b.x, var_0.x, false), var_0.x), vec4<bool>(var_0.x, arg_1.b.x, false, var_0.x), !vec4<bool>(true, arg_0.b.x, arg_0.b.x, true)), select(select(vec4<bool>(false, arg_0.b.x, true, true), vec4<bool>(arg_1.b.x, arg_1.b.x, true, false), vec4<bool>(false, global1.b.x, false, true)), vec4<bool>(global1.b.x, false, true, false), select(vec4<bool>(arg_0.b.x, var_0.x, false, arg_1.b.x), vec4<bool>(false, global1.b.x, true, arg_1.b.x), false)), var_0.x));
    var var_1 = _wgslsmith_div_vec2_u32(arg_0.c.yx << (~(_wgslsmith_div_vec2_u32(arg_0.c.zx, arg_1.c.zy) & abs(vec2<u32>(global1.c.x, arg_0.c.x))) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(~u_input.d), ((0u ^ global1.c.x) << (~50103u % 32u)) | ~arg_1.c.x));
    let var_2 = arg_0;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(784f + _wgslsmith_f_op_f32(ceil(-773f))) * -528f)), 279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-551f, 125f) - -481f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f * _wgslsmith_div_f32(-597f, -1081f)))));
    return func_6(Struct_1(2147483647i, select(arg_1.b, func_6(func_5(false, 35202u, vec2<u32>(0u, 31701u), vec2<bool>(false, var_2.b.x))).b, arg_1.b), ~(~vec3<u32>(85198u, global1.c.x, 4294967295u)) >> (vec3<u32>(70658u, arg_1.c.x & var_1.x, global1.c.x) % vec3<u32>(32u)))).c;
}

fn func_8(arg_0: vec3<u32>) -> StorageBuffer {
    global0 = i32(-1i) * -u_input.a.x;
    global0 = ~(i32(-1i) * -61569i);
    let var_0 = func_5(global1.b.x && global1.b.x, 1u << (u_input.d % 32u), ~abs(reverseBits(_wgslsmith_add_vec2_u32(arg_0.zx, vec2<u32>(13167u, 1u)))), func_6(Struct_1(39487i, vec3<bool>(global1.b.x, true, global1.b.x), func_5(select(global1.b.x, true, global1.b.x), func_5(false, 4553u, global1.c.yz, global1.b.yy).c.x, ~vec2<u32>(u_input.d, u_input.d), global1.b.xx).c)).b.zx);
    global2 = var_0.b.x | true;
    let var_1 = arg_0.x;
    return StorageBuffer(vec3<u32>(~(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(5435u, countOneBits(global1.c.x), var_0.c.x, ~26417u), _wgslsmith_add_vec4_u32(~vec4<u32>(9004u, 0u, 0u, var_0.c.x), ~vec4<u32>(1u, u_input.d, var_1, 0u))), ~(_wgslsmith_mod_u32(arg_0.x, global1.c.x) << (0u % 32u))), reverseBits(vec2<u32>(arg_0.x, 4294967295u) ^ _wgslsmith_mult_vec2_u32(var_0.c.xz, vec2<u32>(var_0.c.x, 1u))) >> (~firstTrailingBit(var_0.c.xz) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1601f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(firstLeadingBit(func_7(Struct_1(-1i, select(global1.b, global1.b, false), ~global1.c), func_6(func_1()))));
}

