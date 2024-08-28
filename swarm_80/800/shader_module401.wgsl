struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -776f))));
    let var_0 = firstTrailingBit(~abs(min(vec4<i32>(u_input.a, 1i, global2.x, 0i), vec4<i32>(-2147483647i, -5061i, 1i, -4917i))) >> (max(abs(min(vec4<u32>(0u, u_input.c, 69967u, 0u), vec4<u32>(1u, 8191u, u_input.c, 48072u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.c, 4294967295u), ~vec4<u32>(u_input.c, 0u, u_input.b.x, 22044u))) % vec4<u32>(32u)));
    let var_1 = u_input.c;
    let var_2 = 1u;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.a, global0.a))));
    return ~(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(~1i, ~1i), -abs(u_input.a)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = -(~_wgslsmith_add_i32(-_wgslsmith_mult_i32(38420i, arg_0), ~func_3(vec4<f32>(global0.a, 987f, global0.a, -302f))));
    global0 = Struct_4(286f);
    global2 = arg_2;
    return select(vec2<bool>(all(select(vec3<bool>(arg_3.a, arg_3.a, arg_3.a), vec3<bool>(true, true, true), !vec3<bool>(false, global1.x, true))), true), select(select(global1.xz, global1.xx, vec2<bool>(true, !arg_3.a)), !select(!global1.yz, !global1.yx, vec2<bool>(false, false)), select(select(select(vec2<bool>(global1.x, false), global1.zx, arg_3.a), vec2<bool>(false, true), vec2<bool>(false, arg_3.a)), vec2<bool>(!global1.x, arg_3.a), global1.zy)), select(vec2<bool>(arg_3.a || any(vec3<bool>(true, false, arg_3.a)), 741f < _wgslsmith_f_op_f32(-global0.a)), global1.yz, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: i32) -> vec3<u32> {
    global1 = select(vec3<bool>(arg_0.x, true, !func_2(global2.x, 2147483647i & global2.x, arg_1, Struct_1(global1.x, 1u)).x), vec3<bool>(any(vec4<bool>(global1.x, true, true, false)), any(vec3<bool>(false, all(vec3<bool>(arg_0.x, true, arg_0.x)), arg_0.x)), false), !(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, global1.x, arg_0.x), vec3<bool>(true, arg_0.x, global1.x), true), !vec3<bool>(true, false, arg_0.x))));
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-290f)))) + _wgslsmith_f_op_f32(trunc(1063f))));
    global2 = ~(-vec3<i32>(~u_input.a, ~global2.x & u_input.a, -56447i));
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-758f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(-276f + global0.a)), -535f)))));
    global2 = -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, arg_1.x), arg_1);
    return ~vec3<u32>(~(~0u << (~u_input.b.x % 32u)), 0u, max(~(~u_input.b.x), u_input.c | u_input.c));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1379f)))) * 1f));
    var var_1 = ~(0u & u_input.b.x);
    var var_2 = ~func_4(!func_2(-58181i, global2.x << (1u % 32u), -vec3<i32>(-2147483647i, arg_0.x, arg_0.x), Struct_1(false, u_input.b.x)), vec3<i32>(abs(-2147483647i >> (u_input.b.x % 32u)), firstTrailingBit(_wgslsmith_sub_i32(u_input.a, 35587i)), 1i), Struct_4(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(-1066f)))), arg_0.x);
    let var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(min(countOneBits(-2147483647i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(global2.x, -2492i, u_input.a), -16161i)), -1i), firstTrailingBit(vec2<i32>(i32(-1i) * -6999i, ~u_input.a)) >> (~var_2.xy % vec2<u32>(32u)));
    var var_4 = !select(vec3<bool>(any(select(vec2<bool>(true, global1.x), global1.yx, true)), global1.x, true), !(!(!vec3<bool>(true, global1.x, global1.x))), select(!vec3<bool>(arg_1, false, global1.x), vec3<bool>(true, any(vec2<bool>(arg_1, arg_1)), all(vec3<bool>(true, false, true))), select(select(vec3<bool>(true, arg_1, true), vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, false, false)), !vec3<bool>(arg_1, true, false), vec3<bool>(global1.x, global1.x, global1.x))));
    return Struct_4(-316f);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x)), 597f);
    var_0 = global0.a;
    global2 = max(~(-vec3<i32>(global2.x, reverseBits(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, u_input.a, u_input.a), vec4<i32>(-1i, 0i, u_input.a, -46778i)))), vec3<i32>(~1219i, ~(i32(-1i) * -54134i) & -global2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, global2.x), vec3<i32>(u_input.a, -2147483647i, 11312i)), vec3<i32>(u_input.a, 3209i, -6512i)) | (u_input.a ^ _wgslsmith_dot_vec2_i32(global2.xx, global2.xy))));
    var var_1 = vec2<i32>(1i, 0i);
    let var_2 = global1.yy;
    return Struct_1(arg_3.x, select(~u_input.b.x, u_input.c, !(!(arg_3.x || false))));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = ~((vec2<i32>(abs(-1i), global2.x) ^ -_wgslsmith_add_vec2_i32(global2.xz, arg_0.xz)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(~11222u, ~22681u), ~abs(vec2<u32>(arg_1.b, arg_1.b))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(-func_1(_wgslsmith_mult_vec2_i32(arg_0.zx, vec2<i32>(14466i, 23309i)), true).a)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), global0.a)));
    global2 = arg_0;
    let var_2 = Struct_3(!vec2<bool>(any(select(vec3<bool>(arg_1.a, global1.x, true), vec3<bool>(true, false, arg_2), arg_2)), false), -355f >= _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x), global1.x))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, -1000f, 666f, global0.a), vec4<f32>(1446f, global0.a, -223f, -618f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a, var_1.x, 555f, -1769f)))) * vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 1f, _wgslsmith_f_op_f32(floor(-1393f)), 135f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, var_1.x, -440f, -1098f) - vec4<f32>(var_1.x, 705f, 481f, -230f))))))), vec2<bool>(all(!vec3<bool>(true, arg_1.a, var_2.b)), min(~u_input.c, 51960u) != firstLeadingBit(~arg_1.b)));
    return Struct_1(var_2.b, func_4(func_2(var_0.x | 1i, arg_0.x | min(var_0.x, -19416i), -select(vec3<i32>(-47336i, -1i, -31432i), arg_0, global1.x), arg_1), arg_0, Struct_4(global0.a), min(6768i, arg_0.x)).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_div_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(global2.x, u_input.a, 1i)) >> (min(min(u_input.b, u_input.b), ~vec3<u32>(u_input.c, u_input.b.x, 60795u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647i, -10907i, 20174i)) >> (u_input.b % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, 0i, 1i), vec3<i32>(2147483647i, global2.x, u_input.a)))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(364f, global0.a, 1022f, global0.a) + vec4<f32>(global0.a, 1631f, global0.a, 1000f))), func_1(global2.xy, true != any(vec3<bool>(global1.x, global1.x, global1.x))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, global0.a, -691f)), func_2(~global2.x, max(u_input.a, u_input.a), ~vec3<i32>(-19695i, 31500i, global2.x), Struct_1(global1.x, u_input.c))), select(select(!vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, true, global1.x, global1.x), false), select(select(vec4<bool>(false, global1.x, true, true), vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, true, true, global1.x)), vec4<bool>(global1.x, global1.x, false, true), true), global1.x)), global1.x, countOneBits(vec4<u32>(1199u, ~1u >> (1u % 32u), 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 1u, u_input.b.x), u_input.b))));
    var var_1 = countOneBits(~u_input.b);
    let var_2 = false;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(328f, -924f, 1071f, -1000f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1250f, -615f, -148f, global0.a)))))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a + global0.a))), 1272f, global0.a, 699f)), !vec2<bool>((global1.x & true) & func_6(vec3<i32>(1i, 42104i, 51068i), Struct_1(global1.x, var_0.b), false, vec4<u32>(69453u, var_0.b, 32259u, 0u)).a, any(global1.xz) | !var_2));
    global0 = func_1(vec2<i32>(2147483647i, max((12262i | u_input.a) & firstTrailingBit(-2147483647i), _wgslsmith_div_i32(~0i, u_input.a))), select(var_0.a, !global1.x, 34097u >= _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(68594u, var_1.x), vec2<u32>(u_input.b.x, u_input.b.x)), firstTrailingBit(32662u))));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-868f - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -599f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.a.x)), var_3.a.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a * var_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-516f))), 418f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1614f)), 2119f, _wgslsmith_f_op_f32(-var_3.a.x)) - vec3<f32>(_wgslsmith_div_f32(1000f, -540f), 1804f, _wgslsmith_f_op_f32(floor(600f)))), !select(select(vec3<bool>(false, true, global1.x), vec3<bool>(false, false, var_0.a), vec3<bool>(var_0.a, false, true)), vec3<bool>(var_0.a, false, false), vec3<bool>(global1.x, true, var_3.b.x)))));
    var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(var_3.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-232f, var_3.a.x, 1626f, global0.a) - var_3.a))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(var_3.a, var_3.a)))))), vec2<bool>(any(select(!vec3<bool>(true, true, var_2), select(vec3<bool>(var_0.a, true, var_3.b.x), vec3<bool>(false, false, false), vec3<bool>(var_0.a, var_0.a, var_2)), vec3<bool>(var_3.b.x, false, var_2))), true));
    var_1 = vec3<u32>(firstLeadingBit(u_input.b.x), min(_wgslsmith_mod_u32(2339u, abs(1u)), func_6(~(-vec3<i32>(global2.x, 24968i, 18027i)), Struct_1(var_0.a, ~u_input.b.x), var_3.b.x, firstLeadingBit(max(vec4<u32>(var_0.b, 32248u, 4294967295u, var_1.x), vec4<u32>(4294967295u, var_1.x, 83363u, var_1.x)))).b), u_input.c);
    var var_5 = func_1(global2.zx | -(~global2.zx), all(select(vec4<bool>(!var_3.b.x, any(vec3<bool>(false, var_3.b.x, global1.x)), false, true), vec4<bool>(func_5(var_3.a, Struct_4(global0.a), Struct_2(var_3.a, var_3.b), vec4<bool>(var_2, var_3.b.x, false, true)).a, true, all(vec4<bool>(false, var_2, var_0.a, global1.x)), true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(global2.x, u_input.a), firstTrailingBit(u_input.a), _wgslsmith_sub_i32(u_input.a, max(-1i, -8263i)) & ~u_input.a), _wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, u_input.a, u_input.a) ^ vec3<i32>(-52170i, 2147483647i, firstLeadingBit(-1i)), select(vec3<i32>(~(-54350i), reverseBits(0i), global2.x), countOneBits(-vec3<i32>(-35009i, u_input.a, global2.x)), !(var_2 | false))), vec3<i32>(u_input.a, u_input.a | 16347i, _wgslsmith_dot_vec4_i32(min(firstLeadingBit(vec4<i32>(2147483647i, 33209i, u_input.a, global2.x)), vec4<i32>(u_input.a, 2147483647i, u_input.a, 15894i)), vec4<i32>(_wgslsmith_mod_i32(38007i, u_input.a), select(u_input.a, 24062i, true), firstTrailingBit(9740i), global2.x))));
}

