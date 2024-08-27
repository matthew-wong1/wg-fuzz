struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: array<Struct_2, 31>;

var<private> global2: array<Struct_2, 1>;

var<private> global3: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global3 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 31u)];
    var var_0 = any(!(!select(select(vec4<bool>(arg_0, true, false, true), vec4<bool>(global3.a, arg_0, false, arg_0), false), select(vec4<bool>(true, global3.a, global3.a, false), vec4<bool>(arg_0, global3.a, false, false), vec4<bool>(arg_1.a, true, true, false)), true)));
    let var_1 = countOneBits(vec3<i32>(abs(1i), select(-2147483647i, -14894i, select(global3.a, true, arg_2.b)), abs(349i))) << (min(vec3<u32>((u_input.a & 0u) | 4294967295u, 1u, 0u), ~vec3<u32>(u_input.a, 1u, 4294967295u >> (u_input.a % 32u))) % vec3<u32>(32u));
    var var_2 = arg_1;
    let var_3 = Struct_1(!(!global3.a), arg_1.a, arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1710f) * arg_1.c));
    return vec4<bool>(arg_1.b, var_2.b, !(!global3.a), true);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    global3 = global1[_wgslsmith_index_u32(1u, 31u)];
    return !all(func_3(arg_1.b, arg_1, Struct_1(arg_1.b, false, global3.b, _wgslsmith_div_f32(224f, arg_1.c))));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = firstTrailingBit(abs(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0, 0i), max(vec3<i32>(-31995i, arg_0, arg_0), vec3<i32>(-35523i, arg_0, arg_0)))));
    var var_1 = !vec2<bool>(any(global0[_wgslsmith_index_u32(~1u, 32u)]), !(!func_2(true, Struct_1(false, arg_1, -663f, global3.b), vec2<i32>(var_0.x, arg_0))));
    var_1 = vec2<bool>(true, !any(vec2<bool>(global3.a, arg_1)));
    let var_2 = _wgslsmith_f_op_f32(round(global3.b));
    var var_3 = ~reverseBits(vec4<u32>(~(~62524u), u_input.a, u_input.a, u_input.a));
    return Struct_1((true && (_wgslsmith_f_op_f32(step(-603f, var_2)) < global3.b)) & arg_1, func_3(!(arg_1 && var_1.x) && (all(vec2<bool>(true, var_1.x)) || (-300f < global3.b)), Struct_1(false || arg_1, global3.a, _wgslsmith_div_f32(-2048f, _wgslsmith_f_op_f32(var_2 * -191f)), -419f), Struct_1(!(!var_1.x), global3.a, -794f, var_2)).x, -762f, -1622f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 1>();
    var var_0 = ~(min(~firstLeadingBit(u_input.a), firstTrailingBit(u_input.a & 4294967295u)) | u_input.a);
    var var_1 = _wgslsmith_mod_u32(1u, u_input.a);
    let var_2 = func_1(~max(_wgslsmith_mult_i32(~0i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 10421i, -2147483647i), vec4<i32>(0i, 2823i, 2147483647i, 2147483647i)) << (~u_input.a % 32u)), countOneBits(max(reverseBits(0i), -11466i)) < (0i >> (u_input.a % 32u)));
    var var_3 = u_input.a;
    let var_4 = Struct_2(!(!(!(!global3.a))), -900f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(u_input.a, countOneBits(min(u_input.a, 1u))), abs(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(2152i, -50193i, -23033i, -1i), vec4<i32>(2147483647i, -1i, 2147483647i, 0i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(56334u, 36787u, 12841u, u_input.a)) % vec4<u32>(32u)), vec4<i32>(max(2147483647i, 3797i), 1i, 2301i, ~0i), select(~vec4<i32>(-7170i, 2147483647i, 11800i, 2147483647i), -vec4<i32>(-1i, -1i, -2147483647i, 9817i), var_4.a))));
}

