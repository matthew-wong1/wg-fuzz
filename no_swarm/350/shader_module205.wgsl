struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = 1u;
    let var_1 = global2.b;
    let var_2 = Struct_2(true, global2.c, Struct_1(690f), !(_wgslsmith_f_op_f32(global2.b.a + _wgslsmith_f_op_f32(select(var_1.a, -736f, false))) <= _wgslsmith_f_op_f32(global2.c.a * _wgslsmith_f_op_f32(max(var_1.a, global2.c.a)))));
    global0 = var_0;
    let var_3 = var_2.c;
    return -1599f;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    var var_0 = firstTrailingBit(reverseBits(abs(vec3<i32>(1i, u_input.a.x, -1i)) ^ ~_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(u_input.a.x, -6578i, u_input.a.x))));
    let var_1 = 2147483647i;
    var_0 = vec3<i32>(abs(~u_input.a.x), ~1i, select(_wgslsmith_add_i32(_wgslsmith_sub_i32(-3571i, _wgslsmith_add_i32(-1i, -69854i)), -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(var_0.x), max(0i, -39842i), -1i & var_0.x, select(var_1, u_input.a.x, true)), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -1i), vec4<i32>(arg_1.x, -8885i, arg_1.x, u_input.a.x))), 1668f < _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(func_3(vec2<i32>(1912i, arg_1.x)))))));
    global0 = ~_wgslsmith_mod_u32(~(~(~0u)), 1u);
    var var_2 = Struct_2(!global1.x, Struct_1(arg_0.a), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.c.a)), arg_0.a)), u_input.a.x == abs(countOneBits(_wgslsmith_mod_i32(var_0.x, 26554i))));
    return countOneBits(firstTrailingBit(20610u));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    global1 = !vec3<bool>(all(vec4<bool>(!global1.x, global1.x, false, select(false, global2.a, false))), _wgslsmith_div_u32(1u, ~0u) <= (~1u ^ func_2(global2.b, vec2<i32>(u_input.a.x, u_input.a.x))), true != !(global1.x && true));
    global0 = countOneBits(~0u);
    var var_0 = Struct_2(false == global1.x, Struct_1(arg_1.a), global2.b, true);
    let var_1 = Struct_2(var_0.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c.a)))), Struct_1(var_0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-298f * arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -204f))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global2.c.a, 402f)), -2221f)));
    return vec3<u32>(1u, 1u, 1u) << (vec3<u32>(func_2(Struct_1(_wgslsmith_f_op_f32(555f - var_1.b.a)), select(vec2<i32>(u_input.a.x, 19637i), u_input.a, true) ^ (vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(u_input.a.x, u_input.a.x))), ~1u, firstTrailingBit(_wgslsmith_mod_u32(~19237u, 1u))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~4294967295u;
    let var_0 = ~(~func_1(true, Struct_1(_wgslsmith_f_op_f32(min(1516f, global2.b.a)))));
    global2 = Struct_2(global2.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-989f, -1262f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), !all(select(select(vec3<bool>(false, global1.x, false), vec3<bool>(global2.d, true, global2.a), true), !vec3<bool>(global1.x, global1.x, false), global1.x)));
    let var_1 = ~vec2<i32>(max(0i, 70654i), max(u_input.a.x, 47601i));
    var var_2 = Struct_2(false, global2.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.a - 480f)))), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -39564i, 12939i, var_1.x)), i32(-1i) * -2147483647i), i32(-1i) * -u_input.a.x, ~var_1.x, var_1.x), vec4<i32>(u_input.a.x, min(u_input.a.x, var_1.x) >> (~0u % 32u), firstTrailingBit(min(-35216i, u_input.a.x)), -var_1.x)), ~(select(var_1, vec2<i32>(-58123i, u_input.a.x), var_2.d) & ~u_input.a) << (var_0.zy % vec2<u32>(32u)), select(~21429i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, max(var_1.x, 66722i)), vec3<i32>(0i, -66351i, 1i) | select(vec3<i32>(u_input.a.x, var_1.x, -3209i), vec3<i32>(2147483647i, var_1.x, var_1.x), true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.c.a, global2.c.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a, -339f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-166f, 612f))))))), min(abs(firstLeadingBit(-13723i)), _wgslsmith_div_i32(1i, i32(-1i) * -35948i)) | ~select(_wgslsmith_mult_i32(-9838i, 64665i), -5603i, false));
}

