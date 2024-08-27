struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 13793i;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(22752i), Struct_1(3856i), Struct_1(-1i), Struct_1(-15996i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(1i), Struct_1(-22013i), Struct_1(28233i), Struct_1(0i), Struct_1(9547i), Struct_1(24845i), Struct_1(-34260i), Struct_1(-8259i), Struct_1(-1i), Struct_1(2457i), Struct_1(1i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(22662i));

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-32680i), Struct_1(-1i), Struct_1(0i), Struct_1(1i), Struct_1(2147483647i), Struct_1(1i), Struct_1(2147483647i), Struct_1(0i), Struct_1(-1i), Struct_1(-1i), Struct_1(-71955i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(19546i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(49673i), Struct_1(-1i), Struct_1(22712i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)));

var<private> global3: vec3<bool>;

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_mult_vec3_u32(select(u_input.d, ~(vec3<u32>(arg_0, u_input.c.x, u_input.d.x) << (vec3<u32>(4294967295u, u_input.d.x, 0u) % vec3<u32>(32u))), select(vec3<bool>(global3.x || true, u_input.a.x >= u_input.a.x, all(vec3<bool>(true, global3.x, global3.x))), select(vec3<bool>(true, global3.x, global3.x), !vec3<bool>(global3.x, global3.x, false), true), true)), vec3<u32>(~u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.d.yz), firstLeadingBit(17265u)));
    global1 = array<Struct_1, 26>();
    var var_1 = Struct_1(-min(_wgslsmith_sub_i32(countOneBits(2147483647i), ~u_input.a.x), _wgslsmith_mod_i32(1i, 5399i >> (var_0.x % 32u))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~(~(~52461u)), _wgslsmith_sub_u32(abs(var_0.x), u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(48919u), 1u, _wgslsmith_mult_u32(60891u, var_0.x), _wgslsmith_mod_u32(1u, arg_0)), select(~vec4<u32>(arg_0, 0u, 1490u, 19839u), firstTrailingBit(vec4<u32>(20317u, arg_0, 0u, 42497u)), select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(false, true, true, false), true)))), ~abs(~vec4<u32>(53312u, 1u, u_input.e.x, 14196u) | _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, arg_0, 4294967295u, 3651u), vec4<u32>(arg_0, arg_0, u_input.d.x, u_input.c.x)))), 22u)];
    global4 = ~min(countOneBits(~(var_0.x & 16885u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 4294967295u, arg_0) & vec4<u32>(arg_0, 0u, 1u, 0u), firstTrailingBit(vec4<u32>(0u, u_input.b.x, u_input.d.x, 4294967295u))) >> (var_0.x % 32u));
    return 955f;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1))) * _wgslsmith_div_f32(-1183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-297f - 634f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-591f)), _wgslsmith_f_op_f32(round(493f))))));
    let var_1 = firstLeadingBit(~(~(~vec3<u32>(arg_1, arg_1, 79534u))) | _wgslsmith_add_vec3_u32(u_input.d, u_input.e));
    let var_2 = arg_2;
    global2 = array<Struct_1, 22>();
    global2 = array<Struct_1, 22>();
    return Struct_1(u_input.a.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(u_input.a.x);
    var var_1 = global3.yz;
    var var_2 = vec4<u32>(~abs(1u), _wgslsmith_sub_u32(~7283u, _wgslsmith_div_u32(59157u, 49607u) >> ((0u >> (1u % 32u)) % 32u)), _wgslsmith_add_u32(~max(arg_2, 1u), u_input.e.x | ~1u), 1u) >> (select(vec4<u32>(0u, ~(~4905u), u_input.c.x, arg_2 << (26531u % 32u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, 25967u)), vec4<u32>(24179u, u_input.d.x, 0u & u_input.b.x, _wgslsmith_add_u32(u_input.d.x, 18886u)), ~(vec4<u32>(u_input.e.x, 22091u, 1u, 45340u) | vec4<u32>(1882u, 4294967295u, 22945u, 4294967295u))), select(arg_0, vec4<bool>(all(arg_0), var_1.x, true, true), any(arg_0))) % vec4<u32>(32u));
    let var_3 = arg_0;
    let var_4 = var_3.x;
    return ~arg_2 ^ min(countOneBits(arg_2), ~1u);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    global1 = array<Struct_1, 26>();
    let var_0 = Struct_1(~(-_wgslsmith_mult_i32(1i, -10597i)));
    var var_1 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(_wgslsmith_add_u32(1u, 68538u), _wgslsmith_clamp_u32(u_input.c.x, 12626u, u_input.b.x), ~1u)), u_input.e, u_input.d);
    let var_2 = global3.zy;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3307f) + 387f);
    return func_4(select(select(!select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, false, true, true), vec4<bool>(var_2.x, var_2.x, true, global3.x)), !(!vec4<bool>(false, true, var_2.x, var_2.x)), var_2.x), vec4<bool>(global3.x, false, false, false), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, -1137f, -1576f, 944f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 2388f, 664f, -1811f)))))), var_1.x, func_2(false, var_1.x, arg_0, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = max(_wgslsmith_mult_u32(max(~u_input.c.x, 1u), 65464u), _wgslsmith_mult_u32(_wgslsmith_div_u32(select(1u, u_input.e.x, true), abs(~u_input.d.x)), firstLeadingBit(4294967295u)));
    let var_0 = ~select(firstTrailingBit(vec4<u32>(u_input.d.x >> (u_input.c.x % 32u), 40179u ^ u_input.b.x, 1u, 1u)), min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(32603u, 57857u, u_input.e.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 1u, 13966u), vec4<u32>(u_input.c.x, u_input.e.x, 10766u, 1u)), vec4<u32>(u_input.c.x, 42794u, ~0u, ~u_input.b.x)), true);
    global0 = min(~_wgslsmith_sub_i32(2147483647i, u_input.a.x), (i32(-1i) * -u_input.a.x) ^ (i32(-1i) * -11770i));
    let var_1 = func_1(Struct_1(u_input.a.x), abs(_wgslsmith_sub_i32(_wgslsmith_mult_i32(56338i, u_input.a.x >> (56666u % 32u)), u_input.a.x)));
    let var_2 = func_2(false, firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, 27037u) ^ 4595u, 1557u)), global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 4074u, 1u), var_0) | ~1u, _wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.yzw), u_input.e)), false || !any(vec4<bool>(false, global3.x, global3.x, false))), 26u)], func_2(any(select(vec4<bool>(true, global3.x, false, false), select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(true, false, false, global3.x), global3.x), !global3.x)), _wgslsmith_mult_u32(27021u, u_input.d.x), global1[_wgslsmith_index_u32(0u, 26u)], Struct_1(-12254i)));
    global3 = select(select(!(!select(vec3<bool>(global3.x, true, false), vec3<bool>(false, false, true), false)), vec3<bool>(true, !all(vec4<bool>(false, global3.x, false, global3.x)), true), vec3<bool>(all(select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(true, global3.x, global3.x))), all(vec2<bool>(true, global3.x)), 4225u == ~var_0.x)), vec3<bool>(select(true, !global3.x, true), !global3.x, !(global3.x && false) & (127763u == func_1(global2[_wgslsmith_index_u32(60432u, 22u)], u_input.a.x))), select(select(!(!vec3<bool>(false, global3.x, global3.x)), vec3<bool>(all(vec2<bool>(global3.x, global3.x)), any(vec2<bool>(true, true)), true), vec3<bool>(global3.x, global3.x, true)), vec3<bool>(true && global3.x, global3.x, global3.x), !all(vec2<bool>(global3.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, -9152i, abs(-u_input.a.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1085f, -1044f)), -1046f, _wgslsmith_f_op_f32(f32(-1f) * -1458f), _wgslsmith_f_op_f32(min(-539f, -1649f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-304f, 183f, 348f, 632f) + vec4<f32>(-553f, 157f, -1190f, -2507f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, -1000f, 142f)))))), ~(~(~abs(vec4<i32>(u_input.a.x, var_2.a, -30253i, u_input.a.x)))));
}

