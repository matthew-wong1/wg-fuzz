struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(4294967295u, -6248i);

var<private> global2: vec3<f32> = vec3<f32>(371f, -307f, 152f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> f32 {
    let var_0 = false;
    var var_1 = arg_3;
    return 1000f;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> vec4<i32> {
    global0 = arg_0.b;
    global0 = Struct_1(-countOneBits(6432i), true, global0.c, arg_0.b.d, -(vec2<i32>(-1i) * -vec2<i32>(global0.e.x, 0i)));
    let var_0 = -1286f;
    var var_1 = true;
    let var_2 = firstLeadingBit(~vec4<i32>(0i, countOneBits(u_input.e), abs(u_input.e) << (_wgslsmith_mod_u32(80611u, arg_2) % 32u), 1i));
    return var_2;
}

fn func_2() -> Struct_3 {
    var var_0 = func_4(Struct_2(vec4<i32>(global0.e.x, 58556i << (~global1.a % 32u), _wgslsmith_mult_i32(-1i >> (global1.a % 32u), global0.a), -13976i), Struct_1(i32(-1i) * -48362i, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d, global0.e.x, global0.b, Struct_3(global1.a, 0i)))), vec4<bool>(true, global0.b, global1.a > u_input.d.x, true), -max(vec2<i32>(global1.b, global0.a), vec2<i32>(-1i, global1.b)))), true, abs(max(u_input.b, u_input.d.x) >> (14239u % 32u)));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.c, global2.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x - global2.x)))))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))));
    let var_1 = Struct_1(~(~global0.e.x), false, _wgslsmith_f_op_f32(func_3(countOneBits(u_input.d) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, u_input.d.x, 41474u, 1u), u_input.d), var_0.x, !select(true | global0.b, any(global0.d.wx), any(vec3<bool>(false, global0.d.x, false))), Struct_3(u_input.d.x, -_wgslsmith_mult_i32(var_0.x, var_0.x)))), global0.d, reverseBits(-vec2<i32>(var_0.x, -2147483647i)));
    var var_2 = u_input.d;
    global1 = Struct_3(62496u, global0.a);
    return Struct_3((firstTrailingBit(~4294967295u) & _wgslsmith_mod_u32(u_input.d.x | 4294967295u, ~u_input.d.x)) << (4294967295u % 32u), 2147483647i);
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = true;
    global1 = func_2();
    var var_1 = Struct_2(~vec4<i32>(_wgslsmith_add_i32(3867i, global0.e.x), reverseBits(-2518i), func_4(Struct_2(vec4<i32>(0i, u_input.e, u_input.a, -27632i), Struct_1(0i, global0.b, global2.x, vec4<bool>(arg_0.x, true, false, global0.b), global0.e)), global0.b, 42824u).x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global1.b, global0.a, -6774i), vec4<i32>(global1.b, 31889i, global1.b, -43468i))) ^ vec4<i32>(2147483647i, global0.e.x, abs(-56111i), _wgslsmith_mod_i32(global0.e.x, global1.b) ^ global1.b), Struct_1(~global1.b, select(true, global0.b, arg_0.x) & false, _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-858f * -1000f)))), global0.d, ~vec2<i32>(_wgslsmith_mod_i32(global1.b, global1.b), 68034i)));
    let var_2 = vec2<f32>(-267f, 1f);
    let var_3 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, select(~global1.a, 1u, var_1.a.x == var_1.b.e.x), _wgslsmith_mult_u32(~21566u, u_input.d.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1757u, u_input.b, u_input.b), vec4<u32>(45707u, u_input.b, 31984u, u_input.b)), ~u_input.d)), -26971i);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!global0.d.yy);
    let var_1 = !(!global0.b || (var_0.a < 4294967295u));
    var var_2 = 25184u << (0u % 32u);
    var_0 = Struct_3(firstTrailingBit(4294967295u), u_input.a);
    let var_3 = global1.b < u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(15184u, global2.x, ~(~(~u_input.d) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.a, 8994u, var_0.a), vec4<u32>(u_input.d.x, 85651u, global1.a, 0u), u_input.d) % vec4<u32>(32u))), 4294967295u);
}

