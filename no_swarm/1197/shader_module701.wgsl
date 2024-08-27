struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(4294967295u), Struct_3(10497u), Struct_3(0u), Struct_3(0u), Struct_3(1u), Struct_3(1u), Struct_3(48617u), Struct_3(54441u), Struct_3(27975u), Struct_3(1u), Struct_3(1u), Struct_3(4934u), Struct_3(95962u), Struct_3(379u), Struct_3(4294967295u), Struct_3(1u), Struct_3(7394u), Struct_3(1u), Struct_3(123403u), Struct_3(62133u));

var<private> global2: Struct_2;

var<private> global3: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(0i, -25233i, -1i, 25355i), vec4<i32>(2147483647i, 1i, -1i, -19830i), vec4<i32>(23349i, 12466i, i32(-2147483648), 0i), vec4<i32>(-1i, 2147483647i, -18024i, i32(-2147483648)), vec4<i32>(-6491i, 2147483647i, 13812i, -26178i), vec4<i32>(0i, 1i, 29760i, -35529i), vec4<i32>(1i, -1i, 2147483647i, 2147483647i), vec4<i32>(-59495i, 5284i, -6850i, 2147483647i), vec4<i32>(12808i, 2666i, 31940i, -103645i), vec4<i32>(-21747i, -10735i, i32(-2147483648), 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.a))))));
    global1 = array<Struct_3, 20>();
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0.b.yy, firstTrailingBit(firstLeadingBit(-arg_0.b.xz))), _wgslsmith_add_vec2_i32(vec2<i32>(23046i, -arg_0.b.x | ~(-20803i)), arg_0.b.zz));
    global1 = array<Struct_3, 20>();
    let var_2 = arg_0.b.zx;
    return -1659f;
}

fn func_2() -> u32 {
    let var_0 = abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a & 13444u, 4294967295u), ~(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) | vec4<u32>(59546u, 1u, u_input.b, u_input.b)), vec4<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), countOneBits(1u), 5913u)));
    global2 = Struct_2(-950f, !(!global2.b));
    var var_1 = 32815u;
    let var_2 = false;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a))))), global2.b);
    return 4294967295u;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: bool) -> i32 {
    let var_0 = countOneBits(vec3<u32>(~u_input.a, ~95203u, min(0u, _wgslsmith_add_u32(u_input.a, 4294967295u)) ^ arg_0.x));
    global1 = array<Struct_3, 20>();
    var var_1 = ~vec4<u32>(arg_0.x, firstTrailingBit(13350u), ~5637u, ~var_0.x);
    let var_2 = firstTrailingBit(-69617i);
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(-global2.a)), global2.a), ~(~arg_1.ywz), -vec2<i32>(var_2, 1i | u_input.c));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + _wgslsmith_f_op_f32(func_1(Struct_4(u_input.c, vec3<i32>(-2147483647i, 2147483647i, -2147483647i), global2.b.x), global2.b, _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 30161u, u_input.b), vec3<u32>(93323u, 1u, 57696u)))))) > _wgslsmith_div_f32(global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1621f), _wgslsmith_f_op_f32(-global2.a)));
    let var_1 = _wgslsmith_mod_u32(32177u, (4294967295u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(13138u, u_input.a, 36225u), vec3<u32>(1u, 74519u, 0u))) ^ _wgslsmith_mod_u32(func_2(), 0u));
    var var_2 = vec3<i32>(-2147483647i, 9213i, func_3(~(vec3<u32>(42367u, 4294967295u, 1u) << (vec3<u32>(18077u, var_1, u_input.b) % vec3<u32>(32u))) | ~vec3<u32>(var_1, 4294967295u, 4294967295u), abs(vec4<u32>(select(21012u, var_1, false), ~u_input.a, _wgslsmith_sub_u32(0u, var_1), _wgslsmith_sub_u32(u_input.a, 4294967295u))), !var_0));
    var var_3 = Struct_4(var_2.x, ~(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(62355i, 5131i), vec2<i32>(2147483647i, var_2.x)), _wgslsmith_sub_i32(var_2.x, 1i), ~0i)), true);
    var var_4 = vec2<u32>(_wgslsmith_mod_u32(var_1, _wgslsmith_mult_u32(var_1, 53288u) >> (0u % 32u)), _wgslsmith_sub_u32(~(~u_input.b), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 43236u), vec3<u32>(23738u, 5001u, var_1)), abs(vec3<u32>(0u, u_input.b, u_input.b))) >> (var_1 % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-32200i));
}

