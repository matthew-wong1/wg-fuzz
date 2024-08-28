struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1u, vec4<u32>(4294967295u, 4294967295u, 34017u, 1u), vec4<i32>(15629i, i32(-2147483648), -19652i, -84729i)), true, Struct_1(41899u, vec4<u32>(1u, 31151u, 4294967295u, 0u), vec4<i32>(0i, -1323i, 10890i, 1i)), vec3<f32>(857f, 470f, 1050f));

var<private> global1: Struct_1;

var<private> global2: u32 = 0u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    global1 = global0.a;
    let var_0 = (~u_input.a.xx ^ (_wgslsmith_add_vec2_u32(global1.b.wy, _wgslsmith_add_vec2_u32(vec2<u32>(global1.b.x, 62780u), global0.c.b.yx)) << (select(vec2<u32>(global0.c.a, 0u), u_input.a.wz, !vec2<bool>(global0.b, true)) % vec2<u32>(32u)))) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, 85856u)), reverseBits(vec2<u32>(4294967295u, global0.c.b.x) | global0.c.b.zx)), vec2<u32>(global0.c.b.x, _wgslsmith_clamp_u32(global1.a, 1u, u_input.c) << (1u % 32u)), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(global1.b.x, 0u) >> (u_input.a.yw % vec2<u32>(32u)), vec2<u32>(59680u, u_input.a.x)), vec2<u32>(global0.c.b.x, 1u)));
    let var_1 = global0.c;
    global2 = abs(firstTrailingBit(reverseBits(u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-global0.d.xy);
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> u32 {
    global2 = global0.c.b.x | 16827u;
    return max(arg_0.b.x, ~(~(global1.a >> (_wgslsmith_mod_u32(arg_0.a, arg_1) % 32u))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(-(~1i), global0.c.c.x), 9769i, min(-1i, 23662i >> ((global1.a >> (20197u % 32u)) % 32u)) << (_wgslsmith_mod_u32(u_input.a.x, func_4(Struct_1(1u, vec4<u32>(global0.c.a, 1u, 6132u, global1.b.x), vec4<i32>(-614i, 1i, arg_0.c.c.x, global1.c.x)), global0.a.b.x, func_3(2147483647i))) % 32u));
    let var_1 = arg_0.c.c.xzx;
    global0 = arg_0;
    global0 = Struct_2(arg_0.a, any(vec3<bool>(any(vec2<bool>(true, true)), arg_0.b, arg_0.b)), arg_0.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, _wgslsmith_f_op_f32(step(global0.d.x, _wgslsmith_f_op_f32(abs(728f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.d.x, global0.d.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.d.x + global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_f_op_f32(arg_0.d.x * -650f)), vec3<f32>(1249f, -967f, arg_0.d.x)), !(1u > global0.c.a) && arg_0.b)));
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -12023i, _wgslsmith_sub_i32(global0.a.c.x, ~(-var_0.x)), firstTrailingBit(var_0.x)), var_1);
    return Struct_2(Struct_1(~abs(1u), arg_0.a.b, vec4<i32>(-global0.c.c.x, -35955i, max(_wgslsmith_clamp_i32(-2147483647i, 12976i, 2147483647i), -1i), var_1.x)), !all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(global0.b, false, true, true), vec4<bool>(global0.b, false, false, arg_0.b), vec4<bool>(false, true, global0.b, true)), !vec4<bool>(global0.b, global0.b, arg_0.b, false))), global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, global0.d.x)), _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(ceil(arg_0.d.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.d.x, global0.d.x, global0.d.x))))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = vec2<i32>(countOneBits(max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c.x, 20735i, -2147483647i, global1.c.x), vec4<i32>(arg_0.a.c.x, global0.c.c.x, -52446i, 1i)) | ~arg_0.c.c.x, abs(-20002i))), 101675i);
    let var_2 = vec3<i32>(-1i) * -max(_wgslsmith_sub_vec3_i32(max(vec3<i32>(arg_0.a.c.x, -2147483647i, 2147483647i), vec3<i32>(2147483647i, -1i, 21960i)), min(arg_0.a.c.yxw, vec3<i32>(-2147483647i, -7336i, 1i))), vec3<i32>(1i, _wgslsmith_mult_i32(-1i, var_0.c.c.x), reverseBits(36534i)));
    let var_3 = arg_0.c;
    return func_2(Struct_2(func_2(func_2(Struct_2(global0.c, true, Struct_1(5290u, vec4<u32>(arg_0.c.a, 0u, var_0.c.b.x, arg_0.a.b.x), vec4<i32>(44799i, 26035i, arg_0.c.c.x, -14704i)), vec3<f32>(var_0.d.x, global0.d.x, var_0.d.x)))).a, false, var_3, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-483f, _wgslsmith_f_op_f32(global0.d.x - var_0.d.x), _wgslsmith_f_op_f32(-arg_0.d.x)))));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> Struct_1 {
    global1 = global0.c;
    var var_0 = Struct_2(global0.a, true, Struct_1(~_wgslsmith_div_u32(_wgslsmith_div_u32(0u, global0.c.b.x), u_input.c), arg_0.a.b, -vec4<i32>(global0.a.c.x, -2147483647i, arg_0.a.c.x ^ global1.c.x, _wgslsmith_sub_i32(-47727i, 20210i))), arg_0.d);
    return func_5(Struct_2(var_0.a, func_2(func_5(func_2(arg_0))).b, func_5(arg_0).c, vec3<f32>(126f, -245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x - global0.d.x) - -523f)))).c;
}

fn func_1(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_2(func_6(func_5(func_2(Struct_2(Struct_1(0u, global0.a.b, global0.a.c), global0.b, global0.a, global0.d))), false, select(1u, global0.c.b.x, true)), false, global0.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0.d.x, 1435f)))) * _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(global0.d.x - global0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.x))) + _wgslsmith_f_op_f32(-685f * -1491f)), global0.d.x));
    var var_1 = vec3<bool>(any(vec4<bool>(var_0.b, all(vec2<bool>(global0.b, false)), !var_0.b, ~global1.a == (global0.c.a ^ var_0.a.a))), true, all(vec3<bool>(var_0.b, any(select(vec4<bool>(var_0.b, var_0.b, true, global0.b), vec4<bool>(global0.b, false, false, global0.b), var_0.b)), true)));
    let var_2 = var_0;
    let var_3 = var_0;
    global0 = func_5(func_2(func_2(func_2(var_2))));
    return !(!(!(!vec3<bool>(true, true, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(1491f == global0.d.x, true, false), select(!(!vec3<bool>(global0.b, true, global0.b)), select(func_1(vec2<u32>(global0.a.a, 35268u)), vec3<bool>(false | global0.b, global1.c.x > 74060i, func_2(Struct_2(Struct_1(global0.c.a, vec4<u32>(global1.a, global1.b.x, 51578u, global0.c.a), global0.c.c), global0.b, global0.c, vec3<f32>(global0.d.x, -602f, 923f))).b), !vec3<bool>(false, false, global0.b)), !func_1(vec2<u32>(global1.b.x, 59384u))), _wgslsmith_f_op_f32(step(1f, 941f)) < -277f);
    var_0 = vec3<bool>(true, func_2(func_2(Struct_2(Struct_1(global1.b.x, global0.c.b, vec4<i32>(global1.c.x, 2147483647i, -70300i, 2147483647i)), true, func_5(Struct_2(Struct_1(u_input.c, u_input.a, vec4<i32>(global1.c.x, -2147483647i, -3199i, 2147483647i)), true, global0.c, global0.d)).c, _wgslsmith_f_op_vec3_f32(global0.d - global0.d)))).b, any(select(!vec4<bool>(false, var_0.x, true, false), !vec4<bool>(var_0.x, true, true, global0.b), false)) | true);
    let var_1 = -2075f;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(Struct_2(func_2(Struct_2(Struct_1(1u, global1.b, global0.c.c), var_0.x, global0.c, global0.d)).c, true, global0.c, vec3<f32>(var_1, var_1, 616f))).d.x, var_1, global0.d.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 792f, var_1)) - global0.d)));
    global0 = Struct_2(global0.c, func_6(func_5(Struct_2(global0.c, false, global0.a, global0.d)), !var_0.x, min(u_input.a.x, 37072u)).c.x == _wgslsmith_mult_i32(global0.a.c.x, -30191i), func_5(Struct_2(func_6(func_2(Struct_2(Struct_1(global0.c.a, u_input.a, vec4<i32>(-1i, 0i, global0.c.c.x, global0.a.c.x)), false, global0.c, vec3<f32>(var_2.x, global0.d.x, 735f))), true, _wgslsmith_add_u32(u_input.a.x, 31148u)), var_0.x, func_5(Struct_2(Struct_1(global1.b.x, global0.c.b, vec4<i32>(global1.c.x, -1i, global0.a.c.x, 1i)), var_0.x, global0.c, vec3<f32>(-954f, -1000f, 733f))).c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, var_1, -391f))))).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1072f)), func_2(Struct_2(Struct_1(25155u, global1.b, global0.a.c), false, Struct_1(28177u, vec4<u32>(global0.c.b.x, 23491u, 4294967295u, 1u), vec4<i32>(global0.c.c.x, -20591i, -2147483647i, -2147483647i)), vec3<f32>(-843f, var_1, 1000f))).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)))));
    var var_3 = ~u_input.a;
    global0 = Struct_2(func_2(Struct_2(global0.a, var_0.x, func_5(func_5(Struct_2(global0.a, true, global0.c, global0.d))).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, var_1, -471f)))).c, !all(vec4<bool>(false, any(vec4<bool>(false, false, global0.b, false)), var_0.x, u_input.c < 65320u)), global0.a, global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(global0.d)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.d, vec3<f32>(global0.d.x, global0.d.x, 3830f))) + global0.d))), global1.c.x, 4294967295u);
}

