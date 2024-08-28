struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(4294967295u, -549f);

var<private> global1: u32 = 54447u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> u32 {
    var var_0 = -(0i >> (global0.a % 32u));
    let var_1 = u_input.a;
    global1 = 0u;
    global1 = _wgslsmith_sub_u32(1u, ~_wgslsmith_mod_u32(u_input.b, 1u) << (global0.a % 32u));
    let var_2 = Struct_4(-2147483647i, ~abs((vec4<u32>(66404u, u_input.b, 1u, 1u) >> (vec4<u32>(u_input.b, var_1, 50682u, 1u) % vec4<u32>(32u))) | (vec4<u32>(19021u, 66598u, 1u, 1u) << (vec4<u32>(global0.a, global0.a, var_1, u_input.b) % vec4<u32>(32u)))), Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-14434i, -2147483647i, 3125i, 13196i)), ~vec4<i32>(55631i, 2147483647i, 1418i, 0i)), abs(~1i)), false, abs(max(select(0u, var_1, false), 4294967295u))), Struct_2(-12745i), Struct_2(~(-1i)));
    return var_2.b.x;
}

fn func_3() -> vec2<bool> {
    global0 = Struct_5(global0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(trunc(-1068f))))));
    var var_0 = 1062f;
    var var_1 = false;
    var var_2 = -2147483647i;
    return !(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    global0 = arg_1;
    global1 = 33430u;
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b * arg_1.b), arg_1.b, 385f))) + vec3<f32>(global0.b, arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(827f * -571f), _wgslsmith_f_op_f32(step(global0.b, -260f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1000f)), var_0.x, 426f)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * -959f), _wgslsmith_f_op_f32(arg_1.b * -690f)) * global0.b), global0.b, 584f));
    let var_1 = u_input.b;
    return reverseBits(arg_3.a.x);
}

fn func_1() -> bool {
    let var_0 = Struct_4(~1i, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(20864u, global0.a, 4294967295u | global0.a, func_2(false, vec4<bool>(true, false, false, false))), select(vec4<u32>(u_input.a, global0.a, global0.a, u_input.a), vec4<u32>(25293u, global0.a, 0u, u_input.a), true) ^ vec4<u32>(global0.a, u_input.b, 4294967295u, u_input.b)), vec4<u32>(firstLeadingBit(~u_input.b), _wgslsmith_mod_u32(global0.a, global0.a ^ u_input.b), ~58886u, u_input.b)), Struct_1(vec2<i32>(func_4(19173u, Struct_5(u_input.b, 2234f), func_3(), Struct_1(vec2<i32>(1i, 2147483647i), false, global0.a)), i32(-1i) * -22793i), false, ~(~select(6602u, 0u, true))), Struct_2(_wgslsmith_div_i32(-8543i, _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, 1i), -5643i << (u_input.b % 32u)))), Struct_2(1i));
    let var_1 = all(select(!vec3<bool>(!var_0.c.b, !var_0.c.b, true), vec3<bool>(all(!vec4<bool>(true, var_0.c.b, false, true)), _wgslsmith_mod_i32(var_0.e.a, 17328i) > 2147483647i, all(select(vec4<bool>(var_0.c.b, var_0.c.b, var_0.c.b, var_0.c.b), vec4<bool>(false, true, var_0.c.b, var_0.c.b), vec4<bool>(var_0.c.b, true, var_0.c.b, var_0.c.b)))), any(select(select(vec4<bool>(var_0.c.b, true, true, true), vec4<bool>(var_0.c.b, false, var_0.c.b, var_0.c.b), true), !vec4<bool>(var_0.c.b, false, false, true), var_0.c.b))));
    var var_2 = global0.b;
    let var_3 = select(!(!(!func_3())), vec2<bool>(var_0.c.b, 296f == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1525f, -251f, var_0.c.b)), 1359f))), true);
    var_2 = -643f;
    return func_3().x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(3638u, 24352u, func_1());
    var var_0 = Struct_1(vec2<i32>(43379i, 1005i), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), 1i == _wgslsmith_dot_vec2_i32(vec2<i32>(4775i, 2147483647i), vec2<i32>(-1i, 45234i)))), min(~(~1u), 27269u));
    let var_1 = _wgslsmith_f_op_f32(-586f * global0.b);
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 60668i), -vec3<i32>(13524i, var_0.a.x, var_0.a.x)), var_0.a.x, -71992i, -1i), ~select(vec4<i32>(~var_0.a.x, 12182i, var_0.a.x & var_0.a.x, -2147483647i), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.a, var_0.a), ~(-2147483647i), var_0.a.x << (75206u % 32u), max(42809i, -2147483647i)), func_1()));
    let var_3 = Struct_5(abs(global0.a), var_1);
    global0 = var_3;
    global1 = global0.a;
    let var_4 = firstLeadingBit(countOneBits(vec3<u32>(~var_0.c, ~var_3.a, u_input.a & 4606u)) >> (~(~reverseBits(vec3<u32>(global0.a, u_input.a, var_3.a))) % vec3<u32>(32u)));
    global1 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, reverseBits(-(max(vec3<i32>(var_0.a.x, var_2.x, -11701i), var_2.zzz) | min(var_2.zyz, vec3<i32>(var_0.a.x, var_2.x, var_2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -150f), -1i, vec2<u32>(~(firstLeadingBit(var_0.c) >> (global0.a % 32u)), ~(~var_3.a)));
}

