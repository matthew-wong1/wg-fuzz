struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: f32 = -321f;

var<private> global2: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false));

var<private> global3: vec4<i32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = array<u32, 17>();
    let var_0 = Struct_1(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(-20938i, 2147483647i), firstTrailingBit(_wgslsmith_add_i32(arg_3.x, arg_2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b) + _wgslsmith_f_op_vec4_f32(-arg_2.b)))), ~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 17u)], 1u), min(0u, arg_0.c))));
    var var_1 = Struct_1(~global3.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(-558f, -196f, 235f, var_0.b.x)))), vec4<f32>(arg_0.b.x, 522f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.b.x))), 1226f))), select(firstTrailingBit(~(~u_input.a)), 0u, false));
    var var_2 = var_0;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -715f)), _wgslsmith_f_op_f32(min(180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1171f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-226f, var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(876f * -1000f) + -767f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-621f, _wgslsmith_f_op_f32(max(-670f, _wgslsmith_div_f32(410f, var_2.b.x)))))));
    return select(!(!(!vec2<bool>(arg_1, arg_1))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-247f, var_2.b.x, false)) * _wgslsmith_div_f32(334f, 922f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(-1617f * var_3.x)), !all(vec2<bool>(arg_1, arg_1))), vec2<bool>(!(_wgslsmith_div_i32(-1i, u_input.d.x) > _wgslsmith_clamp_i32(5908i, var_1.a, global3.x)), any(!vec3<bool>(true, arg_1, arg_1))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = var_0;
    global3 = max(u_input.d, -(~vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, -2147483647i), -var_1.a, global3.x | 2147483647i, -25845i)));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1534f - arg_0.b.x)), 1000f), 689f));
    return select(!(!func_3(var_2, true, Struct_1(var_0.a, var_1.b, 4897u), u_input.d)), vec2<bool>(true, select(true, any(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, var_2.c), 24u)]), arg_1)), !vec2<bool>(all(vec2<bool>(true, true)), arg_2.x == _wgslsmith_f_op_f32(813f + 495f)));
}

fn func_1() -> Struct_1 {
    var var_0 = select(!(!select(func_2(Struct_1(1i, vec4<f32>(-759f, -3084f, -587f, 385f), 1u), true, vec2<f32>(1000f, -2318f)), vec2<bool>(true, true), true)), !select(vec2<bool>(true, true), func_3(Struct_1(13258i, vec4<f32>(-1511f, 338f, -140f, -2868f), 4294967295u), global3.x > u_input.d.x, Struct_1(31230i, vec4<f32>(-207f, -1826f, -823f, -187f), u_input.a), vec4<i32>(u_input.d.x, -40506i, 26010i, 11351i)), true), select(vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true), vec2<bool>(true, true), true));
    let var_1 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18552u) >> ((abs(vec2<u32>(29414u, u_input.c)) | select(select(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]), vec2<u32>(0u, u_input.e), vec2<bool>(var_0.x, false)), abs(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)])), func_3(Struct_1(u_input.d.x, vec4<f32>(-1000f, 189f, 244f, -279f), 57095u), true, Struct_1(1i, vec4<f32>(-1185f, -1222f, -680f, 149f), u_input.a), vec4<i32>(global3.x, -11973i, 1i, -9834i)))) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(firstTrailingBit(select(vec2<u32>(18834u, 0u), vec2<u32>(u_input.c, u_input.e), var_0.x)), ~vec2<u32>(u_input.e, u_input.c))), 17u)], 17u)];
    var var_2 = vec4<u32>(u_input.e, _wgslsmith_mod_u32(~(u_input.c >> (1u % 32u)), 0u), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(28291u, 19052u, 4294967295u, 4294967295u) << (vec4<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(u_input.e, 17u)], u_input.b) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 52547u, global0[_wgslsmith_index_u32(1u, 17u)], u_input.b)), vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(u_input.c, 17u)], u_input.e) >> (~vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.c, 17u)], 63414u, global0[_wgslsmith_index_u32(5222u, 17u)]) % vec4<u32>(32u)))), u_input.b);
    let var_3 = Struct_1(1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1338f, _wgslsmith_f_op_f32(f32(-1f) * -1126f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-456f, 210f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-750f, -2188f), -1404f, true)), _wgslsmith_f_op_f32(1966f + _wgslsmith_f_op_f32(1588f * 1000f)))), u_input.c);
    global3 = u_input.d;
    return var_3;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    global0 = array<u32, 17>();
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(var_0.b.zwz, vec3<f32>(arg_1.b.x, arg_1.b.x, 1514f), arg_3.x));
    var_1 = var_0.b.xzx;
    var var_2 = vec2<i32>(arg_1.a, 11484i);
    return reverseBits(0i) >> (0u % 32u);
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-170f, -246f, _wgslsmith_f_op_f32(272f * -1147f), 410f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2756f, -664f, -124f, -810f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1154f, 299f, -507f, 1040f) - vec4<f32>(-1000f, 340f, -728f, -440f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(233f, -976f, 1000f, 128f)))))), ~27761u);
    var var_1 = Struct_1(2698i, vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(1u, func_1(), u_input.c, vec3<bool>(true, true, true)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.e, 17u)], u_input.b), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], var_0.c), vec3<u32>(60010u, var_0.c, 1u)), vec3<u32>(global0[_wgslsmith_index_u32(u_input.e, 17u)], global0[_wgslsmith_index_u32(var_0.c, 17u)], 4294967295u)), Struct_1(_wgslsmith_add_i32(-2147483647i, -1i), _wgslsmith_div_vec4_f32(var_0.b, var_0.b), countOneBits(0u)), func_2(Struct_1(global3.x, var_0.b, 0u), true, var_0.b.wz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1221f - -377f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1672f * var_0.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), _wgslsmith_div_f32(1537f, -301f))))), 0u << (global0[_wgslsmith_index_u32(var_0.c, 17u)] % 32u));
    let var_2 = vec4<u32>(var_0.c, firstTrailingBit(var_1.c ^ firstLeadingBit(u_input.c)), select(~(~global0[_wgslsmith_index_u32(var_0.c, 17u)]), ~(~global0[_wgslsmith_index_u32(0u, 17u)]), false), ~_wgslsmith_mult_u32(1u, 1u)) ^ (vec4<u32>(firstLeadingBit(~0u), 94880u, select(min(28015u, var_0.c), var_0.c, var_1.a <= var_0.a), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.c, 0u), var_1.c)) >> (select(~(vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 17u)], 4294967295u, 0u) | vec4<u32>(18236u, var_0.c, 75891u, 94253u)), select(vec4<u32>(36030u, u_input.e, 1166u, var_1.c), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, 98420u, u_input.c, u_input.e), vec4<u32>(4294967295u, u_input.c, var_0.c, 68759u)), 49595u > u_input.c), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)));
    let var_3 = vec3<u32>(abs(36344u), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(28611u, u_input.a), vec2<u32>(1u, 16698u), ~var_2.zw)), _wgslsmith_div_vec2_u32(var_2.wz, var_2.xz >> (vec2<u32>(var_0.c, global0[_wgslsmith_index_u32(22743u, 17u)]) % vec2<u32>(32u))) ^ ~var_2.xz), ~(~(~_wgslsmith_sub_u32(u_input.b, var_2.x))));
    var var_4 = Struct_1(u_input.d.x, vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), -1195f, -199f, -592f), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.x, -629f), _wgslsmith_f_op_f32(-var_4.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.b.x - 1150f), _wgslsmith_f_op_f32(floor(var_4.b.x))), 892f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(280f, var_0.b.x, false)))) - _wgslsmith_f_op_vec4_f32(round(var_0.b))), _wgslsmith_f_op_vec4_f32(var_4.b + vec4<f32>(_wgslsmith_div_f32(-1474f, _wgslsmith_f_op_f32(-350f - var_1.b.x)), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.b.x))), -1123f)));
}

