struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(26787u, -1826f, 0u);

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(13290u, 788f, 104166u), i32(-2147483648), vec2<f32>(-1251f, 349f), -30533i), Struct_2(Struct_1(11975u, -371f, 0u), -2446i, vec2<f32>(311f, -1277f), 26557i), Struct_2(Struct_1(1u, 1134f, 4294967295u), -1i, vec2<f32>(-968f, -604f), 1i), Struct_2(Struct_1(98741u, -1291f, 4294967295u), 1i, vec2<f32>(689f, -1082f), 21178i), Struct_2(Struct_1(1u, -748f, 1u), -8551i, vec2<f32>(-1481f, 775f), -1i), Struct_2(Struct_1(31742u, 1182f, 14399u), 9282i, vec2<f32>(1183f, 1000f), 2147483647i), Struct_2(Struct_1(4294967295u, -1087f, 0u), 2147483647i, vec2<f32>(-1320f, -661f), -43067i), Struct_2(Struct_1(1u, 566f, 11610u), i32(-2147483648), vec2<f32>(631f, 1049f), 2147483647i), Struct_2(Struct_1(59914u, 1390f, 5146u), i32(-2147483648), vec2<f32>(512f, -1027f), 0i), Struct_2(Struct_1(0u, -282f, 1105u), 0i, vec2<f32>(-281f, 316f), -1i), Struct_2(Struct_1(1u, 1000f, 45240u), 4885i, vec2<f32>(1510f, -554f), 1i), Struct_2(Struct_1(0u, -1752f, 1u), -18599i, vec2<f32>(685f, 553f), 1i), Struct_2(Struct_1(0u, -189f, 54238u), 6310i, vec2<f32>(-1099f, -1000f), 7335i), Struct_2(Struct_1(17742u, -2273f, 17502u), 10015i, vec2<f32>(-415f, -1776f), -34487i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(global1.c, global2.a.c), ~abs(~min(vec2<u32>(global1.a, global2.a.a), vec2<u32>(26607u, global1.a))));
    return vec2<bool>(global0.x, global1.b > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-390f, global1.b), global2.a.b)));
}

fn func_2() -> Struct_1 {
    var var_0 = global2.a;
    let var_1 = 18801i;
    let var_2 = Struct_2(global2.a, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1, 1i, var_1, var_1), _wgslsmith_div_vec4_i32(vec4<i32>(global2.d, 1i, 16043i, -30714i), vec4<i32>(-6694i, 0i, 1i, u_input.a))), u_input.a, -u_input.a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-138f, _wgslsmith_f_op_f32(943f * var_0.b)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, -167f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global2.c), vec2<f32>(_wgslsmith_f_op_f32(-1000f - -803f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_sub_i32(select(2147483647i, ~abs(u_input.a), true), 1i));
    let var_3 = countOneBits(_wgslsmith_div_u32(0u, global1.c) >> (~_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.c, var_2.a.c), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.a, 1u), vec2<u32>(28271u, 45104u))) % 32u));
    var var_4 = var_2.a;
    return Struct_1(30359u, _wgslsmith_f_op_f32(step(-1471f, -543f)), var_3);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global3 = array<Struct_2, 14>();
    global3 = array<Struct_2, 14>();
    var var_0 = _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global2.b, -1i, 11383i)) << (~abs(vec3<u32>(arg_1.a, arg_2, 57755u)) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -1i, 0i)) << (arg_1.a % 32u);
    var var_1 = max(vec3<i32>((_wgslsmith_mod_i32(u_input.a, global2.d) ^ 13466i) | u_input.a, _wgslsmith_add_i32(global2.d, (u_input.a << (arg_0.a % 32u)) ^ firstTrailingBit(0i)), abs(_wgslsmith_mult_i32(2147483647i & global2.d, i32(-1i) * -17840i))), vec3<i32>(-19387i, ~(2147483647i << (0u % 32u)), 2147483647i) << ((~vec3<u32>(35435u, 0u, 4294967295u) | vec3<u32>(1u, ~arg_1.a, arg_1.a)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1509f - _wgslsmith_f_op_f32(round(arg_0.b))) * global2.a.b);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_u32(1u | ((global1.c << (global2.a.a % 32u)) & reverseBits(global2.a.c)), global1.a << (~global2.a.a % 32u)), 303f, _wgslsmith_mod_u32(firstTrailingBit(25263u), ~(~4294967295u)));
    global0 = func_1(924f);
    let var_1 = _wgslsmith_f_op_f32(round(var_0.b));
    var var_2 = func_3(global2.a, func_2(), 14325u);
    let var_3 = vec2<bool>(~_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, 3160i, 19113i), vec4<i32>(u_input.a, global2.b, -13116i, global2.b))) >= global2.b, any(!vec4<bool>(func_1(var_2.b).x, all(vec3<bool>(global0.x, false, true)), global0.x, all(vec2<bool>(global0.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c), vec2<f32>(_wgslsmith_div_f32(global2.c.x, -717f), _wgslsmith_f_op_f32(-var_2.b)))));
}

