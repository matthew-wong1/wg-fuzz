struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(59401u, 4294967295u));

var<private> global1: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

var<private> global2: Struct_2 = Struct_2(vec2<u32>(32776u, 21848u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(-_wgslsmith_mult_i32(-13567i, u_input.a.x), -17331i), 1193i));
    global2 = Struct_2(global0.a);
    var_0 = Struct_1(abs(countOneBits(var_0.a)));
    global2 = Struct_2(~global2.a);
    let var_1 = -abs(-8820i);
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec4<i32>(max(1i, ~(~(~2147483647i))), max(-(~arg_0.x), select(min(1i, 1i), 26851i, true)), arg_1.a.x, _wgslsmith_sub_i32(arg_0.x, 2147483647i));
    let var_1 = !vec4<bool>(true, true, true && func_3(), select(true, true & (global0.a.x == global2.a.x), false));
    global2 = Struct_2(_wgslsmith_clamp_vec2_u32(~global2.a, abs(global2.a), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(global2.a.x, global2.a.x), 1u), 118190u)));
    let var_2 = Struct_2(global2.a);
    var var_3 = vec4<bool>(var_1.x, !select(true, false | func_3(), var_1.x), false, any(vec4<bool>(true, var_1.x, false, !any(vec4<bool>(true, false, true, var_1.x)))));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1566f, -272f)), _wgslsmith_f_op_f32(f32(-1f) * -722f), -1368f, -1000f))))));
    var var_2 = Struct_1(vec2<i32>(countOneBits(26748i), arg_1.a.x));
    global1 = array<vec3<bool>, 10>();
    var var_3 = arg_0;
    return Struct_2(~(~(~reverseBits(var_3.a))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    global2 = func_4(func_2(u_input.a.yyy, Struct_1(min(-vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wx)))), Struct_1(vec2<i32>(-11540i, min(u_input.a.x, firstTrailingBit(-2147483647i)))), func_2(_wgslsmith_clamp_vec3_i32(-countOneBits(vec3<i32>(1i, u_input.a.x, u_input.a.x)), min(abs(vec3<i32>(23763i, 53487i, u_input.a.x)), u_input.a.wyz << (arg_0 % vec3<u32>(32u))), abs(u_input.a.zxx | vec3<i32>(7052i, u_input.a.x, -19026i))), Struct_1(~u_input.a.yx)));
    global1 = array<vec3<bool>, 10>();
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-5804i, -u_input.a.x, _wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.a.x)), -vec3<i32>(~countOneBits(-30486i), firstTrailingBit(u_input.a.x), u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-2585f)))));
    let var_2 = func_2(~(~_wgslsmith_mod_vec3_i32(u_input.a.xww, ~var_0)), Struct_1(var_0.xz));
    return -4258i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<i32>(firstLeadingBit(i32(-1i) * -1i), -51128i));
    let var_1 = vec4<i32>(u_input.a.x, firstLeadingBit(u_input.a.x), u_input.a.x, func_1(vec3<u32>(56182u, global0.a.x, global2.a.x), ~1u));
    let var_2 = 2147483647i;
    var var_3 = countOneBits(6646i);
    let var_4 = global1[_wgslsmith_index_u32(~global2.a.x, 10u)];
    var var_5 = _wgslsmith_add_vec3_u32(min(_wgslsmith_sub_vec3_u32(~(vec3<u32>(17389u, global0.a.x, 4294967295u) << (vec3<u32>(global0.a.x, 23690u, global0.a.x) % vec3<u32>(32u))), vec3<u32>(global2.a.x, global0.a.x, 1863u) ^ ~vec3<u32>(global0.a.x, 39062u, 4294967295u)), abs((vec3<u32>(global0.a.x, global0.a.x, 0u) >> (vec3<u32>(global0.a.x, 7832u, global2.a.x) % vec3<u32>(32u))) >> (max(vec3<u32>(1u, global0.a.x, global2.a.x), vec3<u32>(0u, global0.a.x, 34520u)) % vec3<u32>(32u)))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, global0.a.x, 4294967295u), vec3<u32>(global0.a.x, global0.a.x, global2.a.x)) << (global2.a.x % 32u), ~global2.a.x, global0.a.x));
    var_0 = Struct_1(-select(vec2<i32>(-var_1.x, var_1.x), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -38692i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2, var_1.x), u_input.a.wz)), false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zwx, 51472u, 2512f);
}

