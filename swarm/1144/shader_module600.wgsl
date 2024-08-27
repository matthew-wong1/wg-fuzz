struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(418f, vec3<bool>(true, false, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-305f, -1458f) * _wgslsmith_f_op_f32(step(arg_1.x, global0.a))))), select(global0.b, global0.b, global0.b.x));
    var var_1 = Struct_1(arg_1.x);
    var var_2 = !any(select(global0.b, !vec3<bool>(global0.b.x, global0.b.x, false), !(!arg_2.x)));
    var_2 = false;
    let var_3 = vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 86069u));
    return -1i | _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(0i, -465i))), _wgslsmith_mod_i32(-max(1i, 15099i), ~(~arg_0)));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = max(vec3<i32>(func_3(1i, vec2<f32>(-754f, -1729f), !vec2<bool>(true, arg_0.b.x)) >> (countOneBits(_wgslsmith_mult_u32(u_input.d.x, u_input.c)) % 32u), -abs(i32(-1i) * -2147483647i), firstTrailingBit(u_input.b)), -vec3<i32>(_wgslsmith_sub_i32(u_input.e, u_input.e << (1u % 32u)), u_input.b, _wgslsmith_clamp_i32(-1i, u_input.e, -11664i)));
    let var_1 = -344f;
    return Struct_1(arg_0.a);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec4<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c, 101494u, 45868u), u_input.a), ~u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(20611u, u_input.c, 33149u, 0u) & vec4<u32>(4294967295u, u_input.d.x, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.a.x, 22645u, u_input.d.x))), abs(u_input.c), 0u, 20598u | _wgslsmith_clamp_u32(~min(9537u, u_input.a.x), 1u, 4294967295u));
    global0 = Struct_2(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(trunc(-1591f))), select(select(select(select(global0.b, vec3<bool>(global0.b.x, global0.b.x, global0.b.x), global0.b.x), global0.b, false), !(!vec3<bool>(global0.b.x, global0.b.x, true)), !(!global0.b)), !vec3<bool>(true, u_input.a.x <= 4294967295u, global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-147f + global0.a)) >= _wgslsmith_f_op_f32(-508f - _wgslsmith_f_op_f32(ceil(-108f)))));
    var var_1 = Struct_2(arg_0.a, select(global0.b, select(!select(global0.b, vec3<bool>(true, global0.b.x, true), global0.b.x), vec3<bool>(global0.b.x, any(global0.b.zy), global0.b.x && global0.b.x), any(select(vec4<bool>(false, global0.b.x, false, true), vec4<bool>(false, global0.b.x, true, false), vec4<bool>(false, true, true, global0.b.x)))), !global0.b.x));
    let var_2 = Struct_2(arg_0.a, var_1.b);
    var_1 = var_2;
    return Struct_2(-582f, var_2.b);
}

fn func_1() -> Struct_2 {
    return func_4(func_2(Struct_2(global0.a, global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_4(Struct_1(-142f));
    global0 = func_1();
    global0 = func_4(Struct_1(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2059f * 1286f) + -133f))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.a));
    let var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.b), -vec2<i32>(u_input.b, u_input.b)) >> ((select(u_input.d.yz, u_input.d.zz, false) ^ (vec2<u32>(u_input.c, 6092u) & u_input.a.zy)) % vec2<u32>(32u)), vec2<i32>(-2147483647i, 0i)), select(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, -1i), !func_1().b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 54547i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -61687i), vec3<i32>(u_input.b, u_input.e, var_1.x), vec3<i32>(var_1.x, 2504i, -7777i))) >> (((vec3<u32>(0u, u_input.a.x, 1u) ^ vec3<u32>(u_input.c, 77795u, u_input.a.x)) << (~vec3<u32>(u_input.a.x, 0u, 23248u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(u_input.e, reverseBits(u_input.e), countOneBits(3513i)) | ((vec3<i32>(2147483647i, var_1.x, u_input.e) ^ vec3<i32>(-2147483647i, 0i, -15455i)) >> (u_input.a.xzy % vec3<u32>(32u)))), 183f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global0.a), 532f, -276f, _wgslsmith_f_op_f32(round(-885f))))), u_input.d.xy);
}

