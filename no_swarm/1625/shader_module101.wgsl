struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(39811u, 1u, 3982u, 2846u);

var<private> global1: vec2<f32> = vec2<f32>(-243f, -417f);

var<private> global2: i32 = -23901i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = u_input.b;
    global1 = arg_0.xx;
    global0 = u_input.d;
    return false != (u_input.b >= 1i);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = !(!all(vec3<bool>(true, any(vec4<bool>(true, false, false, false)), func_3(vec4<f32>(-1000f, -860f, global1.x, arg_0), true, true))));
    let var_1 = Struct_1(firstLeadingBit(~109704u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(-727f - -1670f))));
    let var_2 = Struct_3(Struct_2(var_1.b.x, _wgslsmith_mod_vec2_i32(reverseBits(min(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c)), u_input.c), var_1, var_1), var_1.a, Struct_1(u_input.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(407f, global1.x)))));
    let var_3 = all(!vec3<bool>(true, (u_input.b << (var_1.a % 32u)) < _wgslsmith_mult_i32(u_input.b, 66546i), true));
    var var_4 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(1000f, -701f))))));
    return ~var_1.a & var_2.c.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3) -> u32 {
    global0 = ~(countOneBits(~vec4<u32>(24224u, 0u, global0.x, arg_0.d.a)) | vec4<u32>(~arg_0.c.a, ~global0.x, func_2(-1000f), global0.x));
    let var_0 = min(2147483647i, -1i ^ _wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(firstTrailingBit(arg_0.b.x), -2147483647i ^ u_input.b)));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + -600f), arg_2.c.b.x, arg_1.x, -332f), vec4<f32>(_wgslsmith_f_op_f32(arg_0.a + 325f), -1168f, 186f, _wgslsmith_f_op_f32(step(arg_2.a.d.b.x, arg_1.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-736f * -245f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-428f)) * 819f), _wgslsmith_div_f32(-366f, global1.x), global1.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.c.b.x, _wgslsmith_f_op_f32(min(-112f, var_1.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1711f))), _wgslsmith_f_op_f32(f32(-1f) * -1889f)))));
    var var_3 = arg_0.c;
    return var_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = _wgslsmith_div_vec2_u32(select(firstLeadingBit(vec2<u32>(1u, u_input.d.x)), reverseBits((vec2<u32>(global0.x, global0.x) << (global0.ww % vec2<u32>(32u))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), true), min(~(vec2<u32>(61842u, 4294967295u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, u_input.a), vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u))), ~firstLeadingBit(vec2<u32>(48966u, 4294967295u))));
    global0 = vec4<u32>(firstLeadingBit(4294967295u) >> (max(~min(13337u, 23775u), _wgslsmith_mod_u32(~global0.x, _wgslsmith_mult_u32(7926u, var_1.x))) % 32u), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(func_1(Struct_2(global1.x, vec2<i32>(-2147483647i, 32879i), Struct_1(1u, vec2<f32>(global1.x, global1.x)), Struct_1(41594u, vec2<f32>(global1.x, global1.x))), vec3<f32>(-266f, -281f, -634f), Struct_3(Struct_2(global1.x, vec2<i32>(-1i, -2147483647i), Struct_1(global0.x, vec2<f32>(global1.x, global1.x)), Struct_1(1u, vec2<f32>(global1.x, global1.x))), global0.x, Struct_1(89587u, vec2<f32>(1193f, -2079f)))), ~var_1.x), global0.x << (u_input.d.x % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, ~u_input.e), vec2<u32>(~var_1.x, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.e, global0.x, u_input.d.x, var_1.x)))), 4294967295u);
    global2 = abs(countOneBits(-2147483647i));
    var var_2 = (vec3<u32>(0u, var_1.x, _wgslsmith_div_u32(1u, _wgslsmith_div_u32(15728u, 1u))) >> (_wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.a, var_1.x, u_input.d.x), vec3<u32>(var_1.x, global0.x, 4294967295u)) & (vec3<u32>(var_1.x, 37162u, 1u) | u_input.d.wyz), vec3<u32>(66792u, ~var_1.x, ~var_1.x)) % vec3<u32>(32u))) >> (u_input.d.wyx % vec3<u32>(32u));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-320f + global1.x), -661f, _wgslsmith_f_op_f32(floor(global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-478f, u_input.d.yxz, -115f, ~(-(~countOneBits(u_input.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-201f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x + 447f), var_3.x)))));
}

