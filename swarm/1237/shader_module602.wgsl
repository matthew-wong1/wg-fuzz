struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-44012i, 0i, i32(-2147483648), -1i), vec4<i32>(-10406i, 2147483647i, -34414i, 9048i), vec4<i32>(2147483647i, 25472i, i32(-2147483648), 0i), vec4<i32>(15259i, -4830i, -1i, -1838i), vec4<i32>(-1i, 1i, 4154i, -22660i), vec4<i32>(32826i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, 0i, -29753i, 13939i), vec4<i32>(i32(-2147483648), 21009i, -1i, i32(-2147483648)), vec4<i32>(-1i, -52570i, -55881i, -40630i), vec4<i32>(19415i, -12703i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 2147483647i, -68304i, 12546i), vec4<i32>(1i, -61931i, -7788i, -49649i), vec4<i32>(-36088i, -50075i, 8790i, -54468i), vec4<i32>(36540i, 0i, 0i, 6836i), vec4<i32>(-15923i, 1i, 0i, 4042i), vec4<i32>(5898i, 2147483647i, 11731i, 22182i), vec4<i32>(1287i, 60483i, 4003i, i32(-2147483648)), vec4<i32>(5310i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(0i, 13658i, -38006i, 30907i), vec4<i32>(2147483647i, -33500i, 24654i, 67998i), vec4<i32>(-1i, 1i, 1i, 1i), vec4<i32>(i32(-2147483648), 1i, 47614i, -12621i), vec4<i32>(-43052i, 0i, -26133i, 37587i), vec4<i32>(-15201i, 37796i, 4462i, -31133i), vec4<i32>(1i, 1i, 17400i, -43067i), vec4<i32>(-41095i, -13853i, 0i, -17436i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = true;
    var var_1 = vec4<u32>(u_input.b, u_input.b | u_input.b, (u_input.b >> ((~u_input.b | _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)) % 32u)) >> (~reverseBits(0u) % 32u), 4294967295u);
    let var_2 = Struct_2(any(select(vec2<bool>(true, true), !select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, false)), vec2<bool>(true, var_0))));
    var var_3 = true;
    global0 = array<vec4<i32>, 26>();
    return !select(vec4<bool>(!(var_2.a && var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -665f) < _wgslsmith_f_op_f32(round(-300f)), !(!var_0), all(vec2<bool>(true, var_2.a)) == false), vec4<bool>(var_2.a, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, var_2.a, var_0, false), var_0)), any(vec4<bool>(var_2.a, var_0, var_2.a, true)), false), any(vec3<bool>(false, var_2.a, true)));
}

fn func_3() -> bool {
    var var_0 = func_2(-(vec4<i32>(-6228i, u_input.a.x, u_input.a.x, 1i) ^ global0[_wgslsmith_index_u32(~(u_input.b << (4294967295u % 32u)), 26u)]), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, -374f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1058f, 327f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(917f, 243f))))))).xzz;
    var var_1 = Struct_2(var_0.x);
    let var_2 = Struct_2(true);
    var var_3 = abs(vec2<u32>(1u, ~(~0u)) << (reverseBits(vec2<u32>(u_input.b, abs(1u))) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-28582i ^ u_input.d.x, u_input.d.x), -_wgslsmith_div_vec2_i32(min(u_input.d.yw, _wgslsmith_mod_vec2_i32(u_input.d.zx, vec2<i32>(-2060i, u_input.c))), u_input.d.yy), firstTrailingBit(-u_input.d.zz));
    return any(select(vec4<bool>(!(false == var_1.a), _wgslsmith_clamp_u32(var_3.x, u_input.b, var_3.x) != ~1u, var_1.a | var_2.a, true), !(!(!vec4<bool>(true, var_1.a, true, false))), !(true || all(vec3<bool>(var_1.a, true, var_0.x)))));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(true);
    let var_1 = select(select(!select(!vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(false, true, var_0.a, false), !var_0.a), select(func_2(-vec4<i32>(1632i, -33884i, u_input.c, 2147483647i), Struct_3(vec2<f32>(-1093f, -2163f))), !select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, true, true), true), select(!vec4<bool>(var_0.a, false, var_0.a, true), select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(true, var_0.a, var_0.a, var_0.a)), any(vec2<bool>(true, false)))), any(select(vec2<bool>(true, true), !vec2<bool>(var_0.a, var_0.a), var_0.a))), func_2(global0[_wgslsmith_index_u32(u_input.b, 26u)], Struct_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-601f, -664f))))), func_3());
    global0 = array<vec4<i32>, 26>();
    let var_2 = ~firstLeadingBit(~reverseBits(~vec2<u32>(u_input.b, 1u)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1855f, -1291f)));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) > _wgslsmith_f_op_f32(f32(-1f) * -1582f), all(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-683f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1477f)))), var_0.x)) * -209f);
    let var_2 = u_input.c;
    var var_3 = _wgslsmith_add_u32(1u, ~u_input.b | _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 33263u), vec2<u32>(u_input.b, u_input.b))));
    var_3 = ~min(~u_input.b, 48676u);
    var_3 = ~(~42113u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<i32>(-1i) * -abs(u_input.d << (vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) % vec4<u32>(32u))), u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, 178f)), var_1)), min(firstTrailingBit(firstLeadingBit(vec3<u32>(18476u, 1u, u_input.b))) & vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(2563u, 39633u, u_input.b, 38123u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u)), ~15255u), abs(abs(select(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, 1u), false)))));
}

