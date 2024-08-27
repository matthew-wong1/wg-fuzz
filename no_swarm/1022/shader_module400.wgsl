struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(i32(-2147483648), -699f, false, vec2<i32>(i32(-2147483648), -1i), -2017i), vec4<f32>(216f, -338f, -446f, -714f), Struct_1(1i, 1112f, false, vec2<i32>(25111i, -30609i), -1i), Struct_1(8536i, 872f, false, vec2<i32>(-6874i, -6453i), -28935i));

var<private> global1: vec3<bool>;

var<private> global2: u32 = 27415u;

var<private> global3: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> bool {
    return u_input.c.x != ~(~u_input.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> bool {
    var var_0 = true;
    var var_1 = arg_2.x;
    var var_2 = global0.a.b;
    let var_3 = ~reverseBits(u_input.d.x) << (_wgslsmith_sub_u32(~(u_input.d.x ^ 4294967295u), ~u_input.d.x) % 32u);
    let var_4 = func_2(false, global1.yx);
    return false;
}

fn func_3(arg_0: Struct_1) -> StorageBuffer {
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(-global0.b), Struct_1(firstLeadingBit(1i), _wgslsmith_f_op_f32(-995f + _wgslsmith_f_op_f32(abs(-505f))), false, ~(-(~vec2<i32>(18890i, global0.a.a))), -(~1i)), arg_0);
    var var_0 = Struct_2(global0.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1173f)) + _wgslsmith_f_op_f32(-global0.b.x))), 416f, global0.a.b, _wgslsmith_f_op_f32(max(global0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1263f)) - _wgslsmith_f_op_f32(max(arg_0.b, global0.b.x)))))), global0.d, Struct_1(-14189i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), !any(vec4<bool>(true, true, global1.x, global1.x)), select(u_input.c, -_wgslsmith_mod_vec2_i32(vec2<i32>(1959i, arg_0.d.x), vec2<i32>(29804i, global0.d.d.x)), any(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, global0.c.c))), 16111i));
    var_0 = Struct_2(var_0.c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1471f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1173f), _wgslsmith_f_op_f32(1000f + 1099f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.b)) + _wgslsmith_f_op_vec4_f32(-global0.b)))), var_0.b)), Struct_1(firstLeadingBit(arg_0.a & _wgslsmith_mult_i32(10969i, 8861i)), 1485f, func_1(var_0.c, func_1(Struct_1(-53558i, global0.c.b, var_0.c.c, vec2<i32>(u_input.c.x, -3439i), 2147483647i), 252f >= global0.c.b, vec2<i32>(global0.c.e, 22342i)), var_0.a.d), u_input.c | ~(-vec2<i32>(1i, 2147483647i)), _wgslsmith_sub_i32(-var_0.d.e, ~select(1i, global0.c.e, var_0.c.c))), var_0.a);
    let var_1 = Struct_4(var_0.b, vec3<bool>(false | (func_1(Struct_1(-64192i, var_0.d.b, arg_0.c, u_input.c, 2406i), arg_0.c, arg_0.d) & (global0.d.c | true)), all(vec4<bool>(var_0.d.c, !var_0.c.c, true, !global1.x)), true));
    let var_2 = abs(42811u & ~select(u_input.a, 4294967295u, true));
    return StorageBuffer(var_2, ~firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.d.d.x, arg_0.e, u_input.c.x, 1i), vec4<i32>(4530i, -1i, 1i, arg_0.a)), -vec4<i32>(2799i, -2147483647i, global0.a.e, var_0.c.d.x))), abs(~u_input.d.xz), global0.a.e, min(firstTrailingBit(reverseBits(u_input.d.yyw)), vec3<u32>(~min(52090u, u_input.a), _wgslsmith_add_u32(~0u, ~4294967295u), var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-max(vec3<i32>(u_input.c.x ^ 0i, u_input.c.x, 2147483647i), ~vec3<i32>(u_input.c.x, u_input.c.x, global0.c.e) & vec3<i32>(-2147483647i, 7630i, 33669i)));
    let x = u_input.a;
    s_output = func_3(Struct_1(-23258i, global0.d.b, func_1(global0.c, false && global0.d.c, vec2<i32>(var_0.x, global0.c.e)), _wgslsmith_mult_vec2_i32(vec2<i32>(max(global0.a.e, 0i), abs(var_0.x)), _wgslsmith_mult_vec2_i32(min(u_input.c, u_input.c), ~vec2<i32>(-2147483647i, u_input.c.x))), global0.c.e));
}

