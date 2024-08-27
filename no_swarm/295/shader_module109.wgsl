struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(any(vec2<bool>(true, true)), true);
    var var_1 = Struct_1(abs(-(~(i32(-1i) * -1i))), firstLeadingBit(~vec4<i32>(509i, 0i, 9339i, 0i) ^ select(~vec4<i32>(1i, -147i, -2147483647i, -30572i), abs(vec4<i32>(-12339i, -2147483647i, -18521i, 2147483647i)), select(vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(var_0.a, var_0.a, var_0.b, true), var_0.b))));
    let var_2 = Struct_2(select(any(vec2<bool>(var_0.a, false)), !var_0.a, any(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false), true))), var_0.a);
    let var_3 = Struct_1(var_1.a, _wgslsmith_sub_vec4_i32(select(_wgslsmith_mult_vec4_i32(var_1.b, vec4<i32>(var_1.b.x, 1i, -2147483647i, -2147483647i)), ~var_1.b, var_0.a | false) | var_1.b, firstLeadingBit(max(vec4<i32>(var_1.a, var_1.b.x, 50991i, var_1.b.x), vec4<i32>(var_1.a, 1i, 42373i, -12773i) << (vec4<u32>(u_input.a, 1u, 28981u, u_input.a) % vec4<u32>(32u))))));
    var var_4 = vec3<u32>(u_input.a, u_input.a, 50373u);
    return var_2;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = false;
    var var_0 = func_2();
    var_0 = func_2();
    global0 = true;
    var_0 = arg_1;
    return Struct_1(-(1i | min(-2147483647i, select(-20208i, 1i, false))), vec4<i32>(max(1i, 10094i), (i32(-1i) * -1i) & (8163i << (u_input.a % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -2147483647i, 62528i), vec4<i32>(0i, -27977i, -2147483647i, -33361i)) | -2147483647i, 69269i) >> (~firstLeadingBit(vec4<u32>(4294967295u, 17445u, 1u, 1u) << (vec4<u32>(u_input.a, u_input.a, 1u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1() -> vec4<u32> {
    global0 = any(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), false), !select(true, true, true))) || true;
    let var_0 = func_3(func_2(), func_2());
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1069f + -1000f))), 1287f, 1111f));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) + -292f)))));
    return _wgslsmith_div_vec4_u32(vec4<u32>(~(~u_input.a), 4294967295u, reverseBits(3025u), _wgslsmith_dot_vec3_u32(~vec3<u32>(47988u, var_1, var_1), ~abs(vec3<u32>(var_1, u_input.a, u_input.a)))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, 113330u), select(0u, u_input.a, false)) >> (1u % 32u), ~var_1, ~var_1 ^ ~(~var_1), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(-vec3<i32>(1i, ~53653i, _wgslsmith_sub_i32(-1i, -52507i))));
    let var_1 = 1u;
    global0 = false;
    let var_2 = var_1;
    global0 = !(!(-1i > _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x), _wgslsmith_div_i32(var_0.x, -2147483647i))));
    var_0 = vec3<i32>(firstTrailingBit(var_0.x | (_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 0i, var_0.x, var_0.x), vec4<i32>(2147483647i, -1i, 1i, var_0.x)) & _wgslsmith_div_i32(var_0.x, -42916i))), 41526i, ~(var_0.x | -1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(23767u, 4294967295u, var_1, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(28715u, 33624u, var_1, 4294967295u), vec4<u32>(1u, u_input.a, var_1, var_1)))) >> (_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(75842u, var_2, 4294967295u, var_1)), reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, var_1, 10422u)))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(firstTrailingBit(~(~vec4<u32>(53342u, 4294967295u, 70617u, u_input.a))), abs(~func_1())));
}

