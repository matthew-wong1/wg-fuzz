struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = any(!select(vec4<bool>(all(vec3<bool>(false, global1.x, arg_1)), all(vec3<bool>(global1.x, true, arg_1)), !global1.x, arg_2.b.a), !(!vec4<bool>(false, global1.x, true, global2.x)), !select(vec4<bool>(global2.x, arg_2.b.a, true, arg_1), vec4<bool>(global2.x, global1.x, true, false), vec4<bool>(arg_2.b.a, arg_1, true, arg_2.c.a))));
    global2 = select(vec2<bool>(arg_1, all(select(select(vec4<bool>(false, false, true, arg_1), vec4<bool>(false, false, true, true), vec4<bool>(arg_1, var_0, true, false)), select(vec4<bool>(true, var_0, false, global1.x), vec4<bool>(false, false, false, global1.x), arg_1), global2.x))), select(!vec2<bool>(true, arg_2.d.x < 93721u), !select(!vec2<bool>(true, global2.x), !vec2<bool>(true, var_0), any(vec4<bool>(global2.x, arg_2.c.a, arg_1, arg_1))), select(vec2<bool>(any(vec3<bool>(arg_2.b.a, arg_2.b.a, false)), all(vec4<bool>(global2.x, true, arg_1, true))), !select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), false), vec2<bool>(any(vec4<bool>(arg_2.b.a, false, false, arg_1)), true))), !(!select(vec2<bool>(false, false), !vec2<bool>(arg_2.c.a, false), arg_2.b.a || var_0)));
    var var_1 = arg_1;
    var var_2 = !vec3<bool>(!(1u == arg_0), any(select(!vec4<bool>(arg_2.c.a, true, true, true), select(vec4<bool>(true, var_0, arg_1, arg_2.c.a), vec4<bool>(false, false, true, global1.x), false), true)), arg_1 & true);
    return true;
}

fn func_2(arg_0: bool, arg_1: f32) -> i32 {
    global2 = select(!vec2<bool>(true, func_3(~47036u, true, Struct_2(vec2<i32>(u_input.a, u_input.a), Struct_1(global2.x), Struct_1(false), vec2<u32>(u_input.b, 465u)), arg_1)), select(select(!(!vec2<bool>(false, global1.x)), vec2<bool>(-26710i != u_input.a, true), !(!vec2<bool>(arg_0, global1.x))), vec2<bool>(any(vec2<bool>(global2.x, arg_0)) != global1.x, arg_0), true), !(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, 24067i, u_input.a), u_input.a) == 1i));
    let var_0 = u_input.a;
    var var_1 = vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(17661u, u_input.b)), 66440u ^ (u_input.b ^ 30860u));
    let var_2 = select(~(vec4<i32>(2147483647i, u_input.a, var_0, u_input.a) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-6788i, 2147483647i, u_input.a, u_input.a), vec4<i32>(var_0, -23382i, var_0, var_0))) & vec4<i32>(var_0, u_input.a, u_input.a, _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0, u_input.a), ~41283i)), max(~vec4<i32>(23602i, -var_0, 40975i, -1i), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(35983i, -1i, var_0, -3636i), vec4<i32>(var_0, -16219i, var_0, 67193i), vec4<i32>(-1i, u_input.a, 2147483647i, 2341i))) & ~(vec4<i32>(var_0, 20279i, 0i, 22320i) >> (vec4<u32>(4294967295u, 79365u, 0u, var_1.x) % vec4<u32>(32u)))), vec4<bool>(true, all(select(!vec3<bool>(global2.x, arg_0, false), !vec3<bool>(global1.x, arg_0, arg_0), false)), arg_0, var_0 < -1i));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1027f - _wgslsmith_f_op_f32(-1074f * -361f))), 114f);
    return -(abs(u_input.a) << (firstLeadingBit(reverseBits(1u)) % 32u));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(vec2<i32>(-func_2(any(vec4<bool>(true, global2.x, global2.x, true)), -1000f), 2147483647i << (u_input.b % 32u)), Struct_1(false), Struct_1(!all(vec3<bool>(global1.x, global1.x, false))), reverseBits(vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b), 1u) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 0u), ~vec2<u32>(u_input.b, u_input.b), abs(vec2<u32>(u_input.b, u_input.b)))));
    let var_1 = var_0.a;
    let var_2 = countOneBits(vec4<u32>(~(u_input.b | var_0.d.x), var_0.d.x, 1u, reverseBits(33666u)));
    let var_3 = vec3<f32>(1341f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1529f)) - _wgslsmith_f_op_f32(746f + 1000f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1186f + -1023f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1596f, -341f, true)) - _wgslsmith_div_f32(766f, -1177f)))), _wgslsmith_f_op_f32(f32(-1f) * -588f));
    var var_4 = ~var_1.x;
    return Struct_4(~(u_input.b ^ _wgslsmith_mult_u32(var_2.x, var_0.d.x ^ 16528u)), var_0.c, Struct_3(vec2<u32>(26004u, 0u >> (var_0.d.x % 32u)) << (vec2<u32>(u_input.b >> (var_2.x % 32u), abs(49747u)) % vec2<u32>(32u))), 42264i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global2 = vec2<bool>(all(!(!vec4<bool>(true, global1.x, true, false))), true & all(vec2<bool>(true, true)));
    let var_1 = ~vec4<i32>(~firstLeadingBit(2147483647i), min(-(~u_input.a), ~(~u_input.a)), -76325i, u_input.a);
    let var_2 = func_1();
    global1 = !select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, global1.x), vec2<bool>(var_2.b.a, true), false), select(vec2<bool>(true, true), vec2<bool>(global1.x, false), vec2<bool>(var_2.b.a, global1.x)), vec2<bool>(false, global2.x)), vec2<bool>(global2.x, 4294967295u <= u_input.b), vec2<bool>(global2.x, global1.x)), select(!(!vec2<bool>(global1.x, global1.x)), vec2<bool>(true, false), any(!vec2<bool>(false, var_2.b.a))));
    var var_3 = 911f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~vec2<u32>(~1u, u_input.b), vec2<u32>(~0u, countOneBits(u_input.b))), _wgslsmith_div_u32(1u, (~1u & var_2.a) << (0u % 32u)));
}

