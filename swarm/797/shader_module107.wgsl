struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(76229u, 1u, 0u), vec4<bool>(false, false, true, true), vec3<u32>(1u, 0u, 69644u), 1u, 1u);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(24111u, 52296u, 4294967295u), vec4<bool>(true, false, false, false), vec3<u32>(36405u, 0u, 0u), 36642u, 1u);

var<private> global3: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = 4367u;
    let var_1 = Struct_1(abs(arg_1.a), vec4<bool>(all(arg_0.b.zwy), !global3.x, false, global1.b.x), global1.a, 15110u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(20222u, 1u, u_input.b), arg_3.c), _wgslsmith_add_u32((33770u ^ arg_1.c.x) >> (_wgslsmith_add_u32(arg_0.d, 46359u) % 32u), 73304u)));
    let var_2 = 1u;
    let var_3 = 1071f;
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(679f, _wgslsmith_f_op_f32(round(var_3)), _wgslsmith_div_f32(869f, -192f), arg_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-565f - -1598f), arg_2.x, -1667f, _wgslsmith_f_op_f32(max(1049f, arg_2.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1544f, 387f, var_3, arg_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, var_3, -896f, var_3)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-567f, -231f, 539f, 148f) - vec4<f32>(-1075f, 1040f, var_3, var_3)) * vec4<f32>(arg_2.x, -1000f, var_3, arg_2.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, 1213f, -353f, var_3), vec4<f32>(220f, arg_2.x, var_3, 527f), false)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1470f, -1383f, var_3, arg_2.x)))))));
    return 4294967295u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: f32) -> Struct_1 {
    global3 = vec4<bool>(true, !(func_3(Struct_1(global2.c, vec4<bool>(true, global1.b.x, false, global2.b.x), global1.a, 0u, global2.d), Struct_1(vec3<u32>(u_input.b, global1.a.x, global2.d), global1.b, vec3<u32>(4035u, 29295u, u_input.b), global1.c.x, 19833u), vec3<f32>(261f, 1000f, arg_2), Struct_1(vec3<u32>(global2.a.x, global1.a.x, 4294967295u), global1.b, vec3<u32>(global1.a.x, global1.e, 63529u), 1u, global1.d)) >= 53222u), global3.x, global3.x);
    let var_0 = -u_input.a.x;
    return Struct_1(abs(~global1.a), select(global2.b, vec4<bool>(all(vec2<bool>(false, global2.b.x)) && global2.b.x, false, true, global2.b.x), true), global1.a >> (~_wgslsmith_mult_vec3_u32(global2.a << (vec3<u32>(5916u, 4294967295u, global1.c.x) % vec3<u32>(32u)), vec3<u32>(global2.d, u_input.b, 1u)) % vec3<u32>(32u)), ~4294967295u, min(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, global1.c.x), ~14667u), 1u));
}

fn func_1() -> Struct_1 {
    global1 = func_2(countOneBits(_wgslsmith_mult_vec2_i32(abs(countOneBits(vec2<i32>(-2147483647i, u_input.a.x))), vec2<i32>(~u_input.a.x, -1i))), -u_input.a, -1663f);
    var var_0 = vec2<i32>(~(-10044i >> (global1.d % 32u)), -1i >> (0u % 32u));
    global2 = func_2(vec2<i32>(var_0.x, firstTrailingBit(-13784i) << (_wgslsmith_mult_u32(~global1.e, _wgslsmith_clamp_u32(global1.a.x, u_input.b, global2.c.x)) % 32u)), ~reverseBits(vec3<i32>(254i, 0i, u_input.a.x) >> (max(global2.c, global2.c) % vec3<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -489f))));
    let var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -342f) * _wgslsmith_f_op_f32(max(447f, -1384f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)))));
    var var_2 = global3.xz;
    return Struct_1(vec3<u32>(select(abs(global2.e >> (28031u % 32u)), ~(~u_input.b), global3.x), _wgslsmith_mod_u32(~global2.c.x, 30622u), 1u), !global2.b, ~(~(~global1.c)), min(func_3(Struct_1(global2.a, select(global2.b, vec4<bool>(true, false, global2.b.x, false), global1.b.x), global2.c, 1u, 38983u & global1.a.x), func_2(vec2<i32>(u_input.a.x, var_0.x) | u_input.a.zy, ~vec3<i32>(-1i, -77609i, 1i), _wgslsmith_f_op_f32(round(var_1.x))), vec3<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1816f)), Struct_1(~global1.a, global1.b, max(vec3<u32>(72968u, 1u, 50521u), global1.a), u_input.b, ~1u)), global1.e), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(false & (global3.x && global2.b.x)));
    global1 = func_1();
    var var_1 = Struct_1(global2.a, select(!global1.b, !(!vec4<bool>(false, true, global1.b.x, global2.b.x)), global3.x), select(abs(~vec3<u32>(1u, 1u, u_input.b)) & global2.c, _wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, u_input.b, u_input.b)), vec3<u32>(global2.c.x, 65217u, global1.a.x) ^ ~global1.c), vec3<bool>(any(vec2<bool>(true, true)), global1.b.x, !all(vec3<bool>(global1.b.x, global2.b.x, global1.b.x)))), 14731u, ~(~max(reverseBits(1u), ~42421u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-514f, 1540f, 474f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1094f, -200f, -452f), vec3<f32>(-2088f, -1000f, 351f)))) + vec3<f32>(_wgslsmith_f_op_f32(-970f - -266f), -485f, _wgslsmith_f_op_f32(-1140f - 1685f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 166f, -473f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1000f, -929f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(891f)), _wgslsmith_f_op_f32(-276f * 568f), 382f))));
    global1 = func_1();
    global0 = global2.e;
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(541i, _wgslsmith_add_i32(11536i, abs(u_input.a.x)), 0i, ~(-2147483647i)), select(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -23497i, u_input.a.x)), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(24270i, 15575i, -77i, -1i)), abs(vec4<i32>(-31372i, -2147483647i, u_input.a.x, 10287i)), true), vec4<i32>(-u_input.a.x, _wgslsmith_mult_i32(u_input.a.x | u_input.a.x, _wgslsmith_mod_i32(-2147483647i, 16326i)), -(~u_input.a.x), -1i << (~global2.c.x % 32u))) | _wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, i32(-1i) * -2147483647i, 1i, ~(-43161i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -21497i, u_input.a.x, 43537i), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -5833i), vec4<i32>(-11821i, 0i, u_input.a.x, -11492i)))));
    var var_4 = ~abs(-var_3.zx);
    var var_5 = _wgslsmith_div_f32(var_2.x, -2133f);
    let x = u_input.a;
    s_output = StorageBuffer(global2.e & ~1u, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -516f), 192f), _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(global2.e, firstTrailingBit(var_1.c.x))) << ((u_input.b | abs(u_input.b)) % 32u));
}

