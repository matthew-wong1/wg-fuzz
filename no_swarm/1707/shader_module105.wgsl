struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = -vec4<i32>(5860i, arg_2.a.b | arg_2.a.b, reverseBits(-2147483647i), 0i) ^ vec4<i32>(global1.a.b, arg_1.b, global1.a.b & -1i, abs(-(arg_1.b & -11208i)));
    let var_1 = arg_3;
    global1 = var_1;
    let var_2 = ~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(min(vec4<i32>(-4461i, global1.a.b, 12519i, 30166i), vec4<i32>(53962i, var_1.a.b, 72109i, var_1.a.b)), var_0) & var_0, var_0);
    global0 = !(!vec2<bool>(global0.x, true));
    return 352f;
}

fn func_2() -> f32 {
    let var_0 = min(~((-1i << (_wgslsmith_sub_u32(global1.c, global1.b) % 32u)) << ((global1.d.x & global1.c) % 32u)), abs(u_input.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b.x, 1u, 37072u) << (global1.a.c % vec3<u32>(32u)), global1.a, Struct_2(global1.a, u_input.b.x, u_input.b.x, vec3<u32>(0u, global1.b, 0u)), Struct_2(Struct_1(global1.a.a, var_0, global1.a.c), 0u, u_input.b.x, global1.a.c)))) + -277f));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(683f * _wgslsmith_f_op_f32(min(-1342f, _wgslsmith_f_op_f32(select(379f, -783f, true))))) - _wgslsmith_f_op_f32(step(-484f, _wgslsmith_f_op_f32(f32(-1f) * -1541f)))));
    global0 = !arg_0.yz;
    let var_1 = Struct_2(global1.a, ~(select(~u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 50931u), arg_0.x) & u_input.b.x), ~(~(~0u)), vec3<u32>(~firstLeadingBit(_wgslsmith_sub_u32(1u, 0u)), ~(~13810u), 46767u));
    let var_2 = ~vec4<i32>(u_input.a.x, ~(~global1.a.b), ~(u_input.a.x << (0u % 32u)), firstTrailingBit(~(-41134i))) ^ vec4<i32>(abs(-1i), global1.a.b, 1i, -36653i);
    var var_3 = u_input.a;
    return ~(var_1.a.c.x >> (select(select(_wgslsmith_div_u32(global1.d.x, 70155u), _wgslsmith_mult_u32(0u, 4294967295u), true), 4294967295u, true) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(u_input.a.x << (func_1(!vec4<bool>(true, global1.a.a.x, global1.a.a.x, true)) % 32u), global1.a.b), -52089i | -min(1i, _wgslsmith_mod_i32(u_input.a.x, 11501i)));
    global1 = Struct_2(Struct_1(!vec2<bool>(global0.x || true, !global0.x), u_input.a.x >> (_wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(24609u, global1.a.c.x)) % 32u), global1.a.c), ~0u | _wgslsmith_div_u32(u_input.b.x, ~global1.d.x), u_input.b.x, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(global1.a.c, ~vec3<u32>(u_input.b.x, 4294967295u, global1.b), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 43615u, u_input.b.x), select(global1.d, global1.d, true))), select(vec3<u32>(reverseBits(global1.b), func_1(vec4<bool>(global1.a.a.x, global1.a.a.x, global1.a.a.x, true)), ~78002u), vec3<u32>(func_1(vec4<bool>(global1.a.a.x, true, global0.x, true)), ~0u, firstLeadingBit(22073u)), 1f != _wgslsmith_f_op_f32(ceil(-1334f)))));
    global1 = Struct_2(global1.a, 0u, _wgslsmith_mod_u32(global1.a.c.x, max(38971u, ~u_input.b.x & u_input.b.x)), max(vec3<u32>(countOneBits(14528u), global1.d.x, ~(global1.d.x | u_input.b.x)), ~(global1.d << (vec3<u32>(30660u, global1.b, 0u) % vec3<u32>(32u)))));
    let var_1 = 645i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.a.c, Struct_1(vec2<bool>(!global0.x, !global1.a.a.x), 45752i, global1.d), Struct_2(Struct_1(vec2<bool>(global0.x, global0.x), select(var_1, var_0.x, true), global1.a.c), ~1u, ~(u_input.b.x & 4294967295u), vec3<u32>(countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.c.x, 0u, 1u, 30726u), vec4<u32>(20432u, 51391u, global1.b, global1.d.x)), min(43916u, u_input.b.x))), Struct_2(global1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, u_input.b.x, 888u), global1.d), 23595u, _wgslsmith_mod_vec3_u32(global1.a.c, vec3<u32>(global1.d.x, 0u, 0u)) | reverseBits(vec3<u32>(global1.c, global1.d.x, u_input.b.x))))));
    let var_3 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_sub_i32(abs(var_0.x), 1i), var_0.x, firstLeadingBit(var_1));
    var var_4 = _wgslsmith_clamp_vec2_i32(-firstLeadingBit(-vec2<i32>(var_3.x, var_0.x)) >> (~select(vec2<u32>(4294967295u, 16003u), global1.a.c.yy, global1.a.a.x) % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(abs(_wgslsmith_add_i32(var_0.x, var_0.x))), -35244i), vec2<i32>(50101i, 1i));
    var var_5 = _wgslsmith_clamp_u32(1u, u_input.b.x, global1.a.c.x);
    global1 = Struct_2(Struct_1(vec2<bool>(global0.x, global1.a.a.x), ~(~_wgslsmith_add_i32(u_input.a.x, 54316i)), vec3<u32>(u_input.b.x, ~0u, global1.a.c.x)), ~27792u, ~u_input.b.x & global1.d.x, global1.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-890f, 1000f, -2883f, -547f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(674f, 424f, -1514f, -994f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-486f, -1091f, 221f, -1436f), vec4<f32>(-1000f, 136f, 500f, 1197f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, -1000f, 756f, -588f)))));
}

