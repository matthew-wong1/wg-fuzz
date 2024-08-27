struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0i, vec3<bool>(false, false, true), vec2<u32>(0u, 107084u));

var<private> global1: Struct_3 = Struct_3(13812u, vec3<f32>(-1296f, -1007f, 242f));

var<private> global2: array<f32, 30>;

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<bool>(false, true), vec3<i32>(8334i, -1i, -26886i)), Struct_1(vec2<bool>(true, true), vec3<i32>(3325i, -1i, -20216i)), Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, -1i, 31790i)), Struct_1(vec2<bool>(true, true), vec3<i32>(39593i, -1i, 1i)), Struct_1(vec2<bool>(true, true), vec3<i32>(-10468i, 0i, -1i)), Struct_1(vec2<bool>(true, true), vec3<i32>(441i, 34707i, 1i)), Struct_1(vec2<bool>(false, false), vec3<i32>(37843i, -8041i, 8716i)), Struct_1(vec2<bool>(false, false), vec3<i32>(26797i, 23963i, 1i)), Struct_1(vec2<bool>(true, false), vec3<i32>(55558i, 74052i, 1i)), Struct_1(vec2<bool>(true, true), vec3<i32>(2147483647i, -5584i, 0i)), Struct_1(vec2<bool>(true, false), vec3<i32>(1i, i32(-2147483648), 0i)), Struct_1(vec2<bool>(false, false), vec3<i32>(38386i, 10031i, -20390i)), Struct_1(vec2<bool>(true, false), vec3<i32>(-1i, 57175i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 17745i, -43740i)), Struct_1(vec2<bool>(false, false), vec3<i32>(25253i, 0i, -25572i)), Struct_1(vec2<bool>(false, false), vec3<i32>(2147483647i, -44756i, -1i)), Struct_1(vec2<bool>(true, false), vec3<i32>(7662i, 0i, 2147483647i)), Struct_1(vec2<bool>(true, false), vec3<i32>(2147483647i, 0i, -1721i)), Struct_1(vec2<bool>(true, true), vec3<i32>(-1i, -1i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), vec3<i32>(-4432i, -23242i, 1i)), Struct_1(vec2<bool>(true, true), vec3<i32>(54581i, -49025i, 1i)));

var<private> global4: Struct_4 = Struct_4(Struct_2(i32(-2147483648), vec3<bool>(false, true, false), vec2<u32>(108088u, 4294967295u)), vec3<u32>(4294967295u, 0u, 1u), true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_4(Struct_2(global0.a, !select(select(global0.b, global0.b, arg_1), select(global4.a.b, vec3<bool>(true, true, true), vec3<bool>(arg_1, false, global4.a.b.x)), select(vec3<bool>(arg_2, arg_1, true), vec3<bool>(false, true, arg_1), global0.b)), global0.c), firstTrailingBit(global4.b), !all(global0.b));
    let var_1 = vec2<i32>(max(countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, var_0.a.a, global0.a, var_0.a.a), vec4<i32>(-20132i, 1i, 17586i, 99720i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a, 49361i, 30183i, -2147483647i), vec4<i32>(36941i, global4.a.a, var_0.a.a, 1i), vec4<i32>(global0.a, global0.a, -1385i, var_0.a.a)))), _wgslsmith_add_i32(1i, min(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 16000i, global0.a, var_0.a.a), vec4<i32>(global0.a, global0.a, 2147483647i, global4.a.a))))), _wgslsmith_dot_vec2_i32(select(-vec2<i32>(global0.a, -1i) | _wgslsmith_mod_vec2_i32(vec2<i32>(global4.a.a, -46218i), vec2<i32>(var_0.a.a, 0i)), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(var_0.a.a, u_input.a)), vec2<i32>(var_0.a.a, 10453i)), select(vec2<bool>(arg_1, false), global0.b.yx, true)), firstTrailingBit(~(-vec2<i32>(1i, -1i)))));
    global2 = array<f32, 30>();
    var_0 = Struct_4(var_0.a, var_0.b, true);
    var var_2 = -var_1.x;
    return select(!select(!select(vec4<bool>(false, true, global0.b.x, true), vec4<bool>(global0.b.x, global4.a.b.x, false, true), vec4<bool>(arg_2, false, global0.b.x, false)), vec4<bool>(!global4.c, false, arg_1, true), false), select(select(vec4<bool>(arg_1, all(vec3<bool>(arg_1, var_0.c, false)), true, arg_2), !(!vec4<bool>(arg_2, var_0.c, false, arg_2)), !vec4<bool>(global4.c, true, var_0.c, global4.a.b.x)), select(vec4<bool>(any(global0.b), select(true, arg_2, true), 607f != arg_0.x, any(global0.b)), select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(true, global0.b.x, true, false), any(vec3<bool>(global0.b.x, true, arg_1))), _wgslsmith_add_u32(0u, global1.a) <= (0u & global0.c.x)), select(!(!vec4<bool>(global4.a.b.x, var_0.a.b.x, true, true)), !vec4<bool>(false, true, arg_2, global0.b.x), select(true, true, true && global0.b.x))), !(global0.a != -(i32(-1i) * -1i)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = vec2<bool>(any(select(func_3(_wgslsmith_f_op_vec2_f32(-global1.b.xx), true, global0.b.x, max(vec2<u32>(global1.a, u_input.b), arg_0.xx)), !func_3(global1.b.yy, global0.b.x, global0.b.x, global4.b.xx), vec4<bool>(all(vec4<bool>(true, global0.b.x, true, global0.b.x)), true, global4.a.b.x, global4.c))), global4.c);
    var var_1 = global4.b.x;
    var var_2 = min(vec2<i32>(-(~(~(-4368i))), 29751i), abs(vec2<i32>(u_input.a, i32(-1i) * -1i)));
    global4 = Struct_4(Struct_2(1i, global0.b, ~(~global4.b.xy)), ~abs(vec3<u32>(4294967295u, u_input.c, u_input.c) ^ firstTrailingBit(arg_0)), false);
    let var_3 = global4.a;
    return global4.a;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> vec4<u32> {
    global0 = func_2(firstLeadingBit(reverseBits(reverseBits(global4.b ^ global4.b))));
    global0 = func_2(~global4.b);
    var var_0 = ~arg_1.yz;
    var var_1 = any(!(!global4.a.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.b, vec3<f32>(-121f, -1785f, -682f)))))));
    return (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(4294967295u, global0.c.x, u_input.b, 4294967295u)), _wgslsmith_add_vec4_u32(~vec4<u32>(61301u, 6306u, 4294967295u, 7119u), vec4<u32>(82923u, global1.a, global4.b.x, var_0.x))) >> (select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 52820u, 84528u), arg_1) << (reverseBits(vec4<u32>(4898u, 847u, 46920u, global0.c.x)) % vec4<u32>(32u)), arg_1, global0.b.x) % vec4<u32>(32u))) | arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~global0.c.x << (~12270u % 32u), _wgslsmith_mod_u32(global4.b.x, 0u), global0.c.x, 84898u);
    let var_1 = vec3<u32>(global4.a.c.x, 67206u, ~1u);
    let var_2 = min(vec4<u32>(max(28943u, global0.c.x ^ u_input.c) | ~(~global0.c.x), ~48851u, u_input.c, ~(global1.a << (reverseBits(0u) % 32u))), _wgslsmith_div_vec4_u32(reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1.a, 18550u, 100451u), vec4<u32>(global1.a, 4294967295u, global4.a.c.x, u_input.b))), func_1(true, vec4<u32>(79869u, global4.b.x >> (4294967295u % 32u), global1.a | 50000u, u_input.b))));
    global1 = Struct_3(~(~1u) & ~func_2(firstTrailingBit(var_1)).c.x, vec3<f32>(-1130f, -1000f, _wgslsmith_f_op_f32(-global1.b.x)));
    var var_3 = Struct_5(global4.a.a != -(~(-2147483647i)), var_0.yzy, Struct_4(Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global4.a.a), vec2<i32>(u_input.a, global0.a)), func_3(vec2<f32>(global1.b.x, global1.b.x), true, all(vec3<bool>(true, global4.a.b.x, global4.c)), ~vec2<u32>(7523u, var_2.x)).zwx, _wgslsmith_div_vec2_u32(vec2<u32>(45103u, 7248u), var_1.yz) & vec2<u32>(global0.c.x, 25402u)), var_0.zxy, global0.b.x));
    let var_4 = var_0.zzy;
    let var_5 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(994f))))))));
    global3 = array<Struct_1, 21>();
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 30u)] + -373f)), _wgslsmith_f_op_f32(min(-1269f, -1195f)), -897f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(var_0.x, 30u)])), _wgslsmith_f_op_f32(abs(-559f)))))));
}

