struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-185f, vec2<bool>(false, false)), Struct_1(-1456f, vec2<bool>(false, false)), Struct_1(-454f, vec2<bool>(false, false)), Struct_1(-274f, vec2<bool>(false, false)), Struct_1(-1190f, vec2<bool>(true, true)), Struct_1(-1000f, vec2<bool>(true, false)), Struct_1(-1000f, vec2<bool>(false, false)), Struct_1(-780f, vec2<bool>(true, true)), Struct_1(-229f, vec2<bool>(true, true)), Struct_1(379f, vec2<bool>(false, false)), Struct_1(-478f, vec2<bool>(false, true)), Struct_1(-627f, vec2<bool>(true, false)), Struct_1(-412f, vec2<bool>(false, false)), Struct_1(747f, vec2<bool>(true, false)));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1492f, vec2<bool>(true, false)), Struct_1(224f, vec2<bool>(true, false)), Struct_1(-213f, vec2<bool>(true, true)), Struct_1(344f, vec2<bool>(true, true)), Struct_1(1725f, vec2<bool>(false, true)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e, _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 119275u, 0u)), u_input.e, max(u_input.e, u_input.e))), vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(0u, u_input.e.x), u_input.a.x)), vec3<u32>(~28642u >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(u_input.e.x, 1u, 34321u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(16825u, 0u, u_input.e.x), vec3<u32>(0u, 4294967295u, u_input.b.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, ~1u, u_input.b.x, reverseBits(u_input.e.x)), countOneBits(vec4<u32>(1u, 38089u, u_input.e.x, 17099u)))), vec3<u32>(~u_input.a.x, u_input.e.x, u_input.e.x) & vec3<u32>(max(72208u, ~1u), 12295u, u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, 548f), vec2<f32>(arg_0, arg_0))))))))));
    return ~1u;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1)), -980f)), arg_1))), global0.b);
    var var_1 = !(!var_0.b.x);
    let var_2 = Struct_2(select(!select(!vec4<bool>(var_0.b.x, var_0.b.x, false, global0.b.x), global0.a, var_0.b.x & global0.a.x), vec4<bool>(global0.b.x, !all(vec3<bool>(false, true, global0.a.x)), all(select(vec2<bool>(global0.a.x, false), var_0.b, global0.a.x)), (global0.b.x || global0.a.x) | var_0.b.x), !all(vec3<bool>(var_0.b.x, true, false))), !vec2<bool>(all(vec2<bool>(true, true)), true));
    let var_3 = select(select(select(!var_2.a.xwx, !var_2.a.zzy, !all(vec4<bool>(var_0.b.x, true, var_2.a.x, false))), var_2.a.zyz, all(vec4<bool>(!global0.a.x, true, arg_1 <= arg_1, true))), select(global0.a.ywz, !var_2.a.yxx, vec3<bool>(select(!global0.a.x, var_0.b.x, false), global0.b.x, any(vec4<bool>(false, false, true, var_2.a.x)) | true)), vec3<bool>(any(var_0.b), var_2.a.x, true));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a)));
    return 419f;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = vec4<i32>(-1i) * -(~vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, 1i), firstTrailingBit(2147483647i), arg_1 | arg_1, i32(-1i) * -2147483647i));
    global2 = array<Struct_1, 5>();
    let var_1 = 0i >= ~var_0.x;
    global1 = array<Struct_1, 14>();
    global1 = array<Struct_1, 14>();
    return max(~_wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.e.x, u_input.a.x), vec4<u32>(0u, u_input.b.x, u_input.a.x, 4294967295u)), (vec4<u32>(8507u, 4294967295u, u_input.a.x, u_input.e.x) & vec4<u32>(2282u, 70762u, 15993u, 50012u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.a.x), vec4<u32>(u_input.a.x, 20475u, u_input.e.x, 20562u), vec4<u32>(4294967295u, 8540u, u_input.a.x, 32227u))), vec4<u32>(~u_input.e.x << ((4294967295u | u_input.a.x) % 32u), reverseBits(max(u_input.b.x, u_input.e.x)), 15564u, ~25880u) & ((~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 26027u) & max(vec4<u32>(u_input.a.x, 0u, 12544u, 21453u), vec4<u32>(0u, u_input.b.x, 9489u, u_input.b.x))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 40891u, 0u, u_input.a.x), firstTrailingBit(vec4<u32>(u_input.e.x, u_input.b.x, u_input.a.x, 5637u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.e.x, 57029u, u_input.e.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 40308u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = min(vec4<u32>(~(~4294967295u) ^ u_input.b.x, _wgslsmith_sub_u32(u_input.e.x, max(~u_input.a.x, func_2(533f))), _wgslsmith_dot_vec2_u32(~select(u_input.a, u_input.e.zy, vec2<bool>(true, false)), vec2<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.e.x, u_input.b.x))), ~abs(u_input.e.x)), reverseBits(func_4(Struct_2(arg_0.a, arg_0.b), -1i, Struct_1(_wgslsmith_f_op_f32(func_3(u_input.b.x, -292f, u_input.e.yx)), arg_0.a.zx))));
    var var_1 = u_input.b.x & 4294967295u;
    let var_2 = Struct_2(vec4<bool>(all(select(!arg_0.a.wy, select(arg_0.a.yy, global0.a.yx, vec2<bool>(false, false)), true)), arg_0.b.x, select(true, arg_0.a.x, true), false && global0.b.x), select(!select(!vec2<bool>(arg_0.b.x, arg_0.b.x), global0.a.yx, !global0.a.x), global0.b, vec2<bool>(false, true)));
    global2 = array<Struct_1, 5>();
    let var_3 = !arg_0.b;
    return arg_0.a;
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    global0 = Struct_2(vec4<bool>(false, select(any(func_1(Struct_2(vec4<bool>(arg_3.b.x, arg_3.a.x, arg_3.a.x, arg_2.a.x), vec2<bool>(arg_2.b.x, global0.a.x))).wy), any(!arg_2.b), arg_2.a.x), (~arg_0 < countOneBits(arg_0)) == !any(vec4<bool>(arg_2.b.x, arg_3.b.x, true, true)), arg_3.a.x), select(func_1(Struct_2(vec4<bool>(true, true, true, true), select(vec2<bool>(true, arg_3.a.x), arg_3.b, true))).zx, !arg_2.a.yy, global0.b.x));
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 5u)];
    var var_1 = ~_wgslsmith_div_i32(_wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(u_input.d.zz, arg_1.yz), reverseBits(-8337i)), arg_1.x);
    let var_2 = -arg_1.wxy;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -233f)))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(-1292f)), _wgslsmith_f_op_f32(-var_0.a))))), vec2<f32>(1668f, -615f));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec2_f32(func_5(u_input.c, u_input.d, Struct_2(select(func_1(Struct_2(vec4<bool>(false, global0.a.x, global0.b.x, global0.b.x), vec2<bool>(true, false))), !vec4<bool>(global0.a.x, true, global0.b.x, global0.a.x), select(vec4<bool>(global0.b.x, true, global0.a.x, false), global0.a, global0.a)), global0.b), Struct_2(vec4<bool>(global0.a.x | false, select(true, global0.a.x, global0.b.x), true, global0.b.x), select(global0.b, !global0.b, func_1(Struct_2(global0.a, global0.a.wz)).yx)))));
}

