struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = -2147483647i;
    var var_1 = ~(~1u | global1.c.x);
    return countOneBits(1765u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f)))), global1.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -420f, -1090f, 582f))))))));
    var var_1 = ~(min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.a.a.a, 38787u, 35554u, arg_1.c.b.a), vec4<u32>(3758u, var_0.b.a, var_0.b.a, 0u) << (vec4<u32>(arg_1.b.b.a, 4294967295u, global1.a.a, 1u) % vec4<u32>(32u)), abs(vec4<u32>(55977u, 18136u, 0u, var_0.b.a))), countOneBits(~vec4<u32>(arg_1.a.c.x, var_0.b.a, var_0.b.a, 100181u))) << (countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.b.a, 42339u, 86663u, arg_0.c.c.x), vec4<u32>(global1.c.x, 25889u, global1.b.a, arg_1.c.c.x), vec4<u32>(arg_1.a.b.a, 25020u, arg_0.b.c.x, arg_1.c.a.a))) % vec4<u32>(32u)));
    var var_2 = vec2<i32>(arg_1.a.b.b.x, var_0.b.b.x ^ ~(~(1i ^ arg_1.c.b.b.x)));
    let var_3 = Struct_3(arg_0.c.a, Struct_1(~var_1.x, _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, arg_0.a.b.b.x, arg_1.c.b.b.x, 9161i) | abs(global1.a.b), global1.a.b), global1.a.c), ~vec2<u32>(~4294967295u, var_1.x));
    var var_4 = var_1.wwz;
    return ~4294967295u;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> Struct_3 {
    global0 = array<Struct_3, 24>();
    var var_0 = arg_2;
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(func_3(Struct_4(global0[_wgslsmith_index_u32(arg_1, 24u)], Struct_3(global1.a, arg_0.a, arg_0.c), global0[_wgslsmith_index_u32(abs(~arg_0.c.x), 24u)]), Struct_4(Struct_3(Struct_1(4294967295u, vec4<i32>(arg_0.a.b.x, arg_0.a.b.x, global1.a.b.x, global1.b.b.x), global1.a.c), Struct_1(27592u, global1.a.b, arg_0.a.c), select(global1.c, global1.c, global1.a.c.x)), Struct_3(global1.b, Struct_1(arg_1, global1.b.b, vec4<bool>(global1.a.c.x, global1.a.c.x, true, global1.b.c.x)), ~arg_0.c), arg_0)), 24u)], global0[_wgslsmith_index_u32(countOneBits(max(abs(global1.a.a), min(arg_0.a.a, select(arg_1, 0u, true)))), 24u)], Struct_3(arg_0.a, Struct_1(~0u, vec4<i32>(abs(0i), ~u_input.b, -2322i ^ global1.a.b.x, 8415i >> (0u % 32u)), global1.b.c), firstTrailingBit(vec2<u32>(global1.c.x, ~1u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 24>();
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~_wgslsmith_add_u32(~global1.b.a, ~66533u), ~(global1.a.a ^ ~global1.b.a)), 24869u), 24u)];
    let var_0 = _wgslsmith_mult_vec2_u32(abs(abs(global1.c)), global1.c >> (global1.c % vec2<u32>(32u)));
    global0 = array<Struct_3, 24>();
    global1 = func_2(global0[_wgslsmith_index_u32(countOneBits(var_0.x), 24u)], _wgslsmith_div_u32(~var_0.x, _wgslsmith_sub_u32(func_1(~vec3<u32>(var_0.x, 1u, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(970f, -1000f)), true, !global1.b.c.yw), abs(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(max(-1100f, 875f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(global1.b.a, global1.b.a), abs(var_0.x)), _wgslsmith_div_u32(1u, reverseBits(var_0.x))), var_0.x), -1i, -239f, ~vec4<u32>(~_wgslsmith_clamp_u32(var_0.x, var_0.x, 1u), 1u, 1u, abs(global1.a.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(721f, -1394f))))))));
}

