struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = vec3<bool>(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-931f, -873f, false)), _wgslsmith_f_op_f32(step(global1.a, global1.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a))) <= 2237f);
    let var_1 = ~(~(~reverseBits(max(u_input.c.x, 18432u))));
    var var_2 = arg_2;
    let var_3 = arg_0;
    let var_4 = Struct_1(!any(!vec3<bool>(var_3.a, var_0.x, arg_0.a)));
    return u_input.b.x;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> i32 {
    let var_0 = arg_1.d;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f)), _wgslsmith_f_op_f32(445f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f), arg_2.a) - -1129f)), global1.a);
    global1 = arg_1;
    global0 = vec4<u32>(min(arg_3.x, _wgslsmith_mult_u32(abs(global0.x), arg_3.x & 15771u)) | 28448u, u_input.a, _wgslsmith_mod_u32(4294967295u, abs(countOneBits(1u))), ~(~_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 36511u), 1u)));
    let var_2 = vec2<bool>(var_0.a || all(select(select(vec4<bool>(global1.c.x, var_0.a, arg_1.d.a, true), vec4<bool>(var_0.a, arg_1.d.a, arg_2.c.x, true), arg_2.b), vec4<bool>(global1.c.x, arg_1.b, true, false), arg_1.d.a)), (u_input.c.x | countOneBits(arg_3.x)) > 0u);
    return -1i;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_mult_vec4_i32((vec4<i32>(-1i) * -countOneBits(vec4<i32>(10261i, -2147483647i, u_input.b.x, -47710i))) & (select(~vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 11979i, 1i, u_input.b.x) >> (vec4<u32>(1u, u_input.c.x, global0.x, global0.x) % vec4<u32>(32u)), any(vec4<bool>(global1.d.a, global1.c.x, false, false))) >> (~(~vec4<u32>(118271u, 1u, 4294967295u, global0.x)) % vec4<u32>(32u))), countOneBits(vec4<i32>(u_input.b.x, firstLeadingBit(7084i), countOneBits(func_2(global1.d, vec3<bool>(global1.b, global1.d.a, false), global1.d)), 28430i)));
    var var_1 = false;
    var_1 = any(!global1.c.yy);
    global0 = ~vec4<u32>(abs(global0.x), max(~(1u >> (1u % 32u)), global0.x), _wgslsmith_div_u32(_wgslsmith_div_u32(global0.x, 0u) >> (15932u % 32u), global0.x), ~firstLeadingBit(u_input.c.x));
    let var_2 = reverseBits(vec3<i32>(0i, 25725i, max(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(u_input.b.x ^ u_input.b.x, func_3(u_input.b.x, Struct_2(global1.a, global1.c.x, global1.c, Struct_1(false)), Struct_2(global1.a, false, global1.c, global1.d), vec3<u32>(u_input.c.x, 0u, u_input.a))))));
    return ~min(u_input.a, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = firstTrailingBit(_wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.d, u_input.b.x, u_input.d, -1i)), reverseBits(vec4<i32>(u_input.b.x, -8132i, 0i, 4878i)))), -vec4<i32>(min(-7653i, u_input.b.x), u_input.d, -44842i, u_input.b.x)));
    global1 = Struct_2(-505f, false, !vec3<bool>(true, false, global1.d.a), global1.d);
    var var_2 = global1.d.a;
    var_0 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(min(global1.a, global1.a))), global1.a)), max(vec2<u32>(~1u, global0.x), _wgslsmith_sub_vec2_u32(u_input.c, u_input.c) & ~(~vec2<u32>(u_input.c.x, 64121u))), _wgslsmith_mult_vec2_u32(vec2<u32>(39878u, 1u), ~vec2<u32>(~25968u, 1u | global0.x)), _wgslsmith_div_u32(~_wgslsmith_mult_u32(func_1(), global0.x), func_1()), var_1);
}

