struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 9>;

var<private> global2: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true));

var<private> global3: array<vec4<i32>, 23>;

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(2341u, -1i), Struct_1(27953u, 18270i), Struct_1(10697u, i32(-2147483648)), Struct_1(4294967295u, 1i), Struct_1(4294967295u, 1i), Struct_1(0u, 1i), Struct_1(0u, 0i), Struct_1(83388u, 1i), Struct_1(129472u, -58304i), Struct_1(4294967295u, 1i), Struct_1(1u, -1854i), Struct_1(21543u, -10825i), Struct_1(0u, -83141i), Struct_1(4294967295u, 0i), Struct_1(0u, 48058i), Struct_1(37447u, i32(-2147483648)), Struct_1(0u, 29853i), Struct_1(17853u, -20148i), Struct_1(4294967295u, -33732i), Struct_1(62925u, -6601i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    global1 = array<vec2<u32>, 9>();
    var var_0 = vec4<i32>(max(16061i, ~(global0.b >> (arg_1.a % 32u))), arg_1.b, -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(global0.b, global0.b) & vec2<i32>(global0.b, global0.b)), -(~vec2<i32>(10385i, 1i))), -_wgslsmith_div_i32(1i, _wgslsmith_add_i32(-2147483647i, arg_1.b)) | arg_1.b);
    var var_1 = _wgslsmith_add_vec4_u32(firstLeadingBit(select(~vec4<u32>(u_input.b.x, 0u, u_input.a.x, global0.a), ~vec4<u32>(u_input.b.x, global0.a, 1u, u_input.b.x), !vec4<bool>(arg_0, true, arg_0, arg_0)) ^ ~(vec4<u32>(u_input.b.x, 0u, u_input.a.x, u_input.a.x) << (vec4<u32>(4294967295u, 46803u, arg_1.a, 65428u) % vec4<u32>(32u)))), firstTrailingBit(~countOneBits(vec4<u32>(60162u, global0.a, 0u, 34521u))) << (select(max(abs(vec4<u32>(arg_1.a, 4294967295u, 1u, global0.a)), select(vec4<u32>(21230u, 96138u, 21206u, global0.a), vec4<u32>(arg_1.a, arg_1.a, 73021u, 130103u), true)), vec4<u32>(~4294967295u, max(1u, 33431u), _wgslsmith_mult_u32(arg_1.a, global0.a), _wgslsmith_clamp_u32(4294967295u, global0.a, 4294967295u)), any(global2[_wgslsmith_index_u32(u_input.a.x, 12u)]) && true) % vec4<u32>(32u)));
    var var_2 = Struct_1(firstLeadingBit(83404u), -7903i);
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -366f, -830f, arg_2.x)), vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), any(vec2<bool>(arg_0, false))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(768f, -1351f, arg_2.x, arg_2.x) * vec4<f32>(867f, -1000f, arg_2.x, -572f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, -276f, arg_2.x, -1375f), vec4<f32>(arg_2.x, -1705f, arg_2.x, arg_2.x)))))))));
    return select(_wgslsmith_clamp_u32(86381u, 4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 0u, global0.a) | vec3<u32>(global0.a, arg_1.a, 4294967295u), _wgslsmith_mult_vec3_u32(var_1.xwz, var_1.xww)), ~global0.a)), arg_1.a, true | !(_wgslsmith_f_op_f32(var_3.x + arg_2.x) < var_3.x));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_add_u32(func_3(true, Struct_1(~4294967295u, _wgslsmith_sub_i32(global0.b, 2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, -1039f, 168f))), select(firstLeadingBit(3208u), global0.a, any(select(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false))))), _wgslsmith_dot_vec2_i32(-vec2<i32>(61312i, 29912i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -49051i), _wgslsmith_div_vec2_i32(vec2<i32>(global0.b, global0.b), vec2<i32>(3226i, global0.b)))) >> (_wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(84113u, global0.a)) % 32u));
    var var_1 = global4[_wgslsmith_index_u32(~(~(~(~u_input.a.x) | ~var_0.a)), 20u)];
    let var_2 = Struct_1(var_0.a, -var_1.b);
    let var_3 = var_2.b;
    let var_4 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(min(reverseBits(126748u), 95862u), _wgslsmith_div_u32(abs(var_2.a), global0.a)), 20u)];
    return -1000f;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(u_input.b.x ^ 1u, arg_0.b);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2())));
    var var_2 = ~min((vec3<i32>(1i, -2147483647i, var_0.b) | countOneBits(vec3<i32>(20515i, arg_0.b, arg_0.b))) >> (select(reverseBits(vec3<u32>(4294967295u, u_input.a.x, 33774u)), vec3<u32>(24372u, var_0.a, 4294967295u), vec3<bool>(false, false, true)) % vec3<u32>(32u)), vec3<i32>(global0.b, 1i, _wgslsmith_clamp_i32(~arg_0.b, 20798i, global0.b)));
    let var_3 = ~(-32480i);
    var var_4 = ~vec3<u32>(~0u, 0u << (abs(arg_0.a & global0.a) % 32u), func_3(true | (13705u < u_input.b.x), Struct_1(_wgslsmith_div_u32(u_input.a.x, 13372u), _wgslsmith_clamp_i32(var_2.x, 0i, -9644i)), vec3<f32>(_wgslsmith_div_f32(-172f, -246f), _wgslsmith_f_op_f32(f32(-1f) * -1447f), _wgslsmith_f_op_f32(min(-1000f, 347f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1385f - -990f) - _wgslsmith_f_op_f32(f32(-1f) * -506f)), _wgslsmith_f_op_f32(f32(-1f) * -282f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 12>();
    let var_0 = 1i;
    var var_1 = firstLeadingBit(~vec3<u32>(20247u, (13294u << (global0.a % 32u)) ^ ~global0.a, ~_wgslsmith_clamp_u32(global0.a, global0.a, u_input.a.x)));
    let var_2 = vec3<f32>(1270f, _wgslsmith_f_op_f32(func_1(Struct_1(global0.a, ~global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))));
    let var_3 = _wgslsmith_mult_vec2_i32(-(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -22078i), vec2<i32>(53662i, global0.b))) & ~firstLeadingBit(vec2<i32>(-1i, 1i))), vec2<i32>(-30918i, -abs(global0.b) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), u_input.b), ~u_input.a.x) % 32u)));
    let var_4 = global4[_wgslsmith_index_u32(1u, 20u)];
    var var_5 = Struct_1(u_input.b.x, 16617i);
    var_1 = max(min(~countOneBits(vec3<u32>(u_input.a.x, var_5.a, global0.a)) >> (abs(firstLeadingBit(vec3<u32>(global0.a, var_4.a, global0.a))) % vec3<u32>(32u)), ~vec3<u32>(var_4.a, 2712u, 1u) | ~vec3<u32>(4294967295u, 4294967295u, 10457u)), ~vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_4.a, 6885u), vec3<u32>(var_4.a, var_1.x, 1u)), var_4.a & global0.a) >> (countOneBits((vec3<u32>(var_4.a, 4294967295u, 7328u) >> (vec3<u32>(1u, 0u, 9015u) % vec3<u32>(32u))) ^ (vec3<u32>(var_1.x, 1u, 46178u) | vec3<u32>(1u, var_5.a, 20825u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(~4294967295u), var_4.a & global0.a, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(var_4.a, var_1.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.a, 50352u, 0u, 1u), vec4<u32>(1u, var_4.a, var_1.x, var_1.x))) >> (_wgslsmith_mod_vec4_u32(abs(abs(vec4<u32>(4294967295u, var_4.a, 0u, 4294967295u))), ~vec4<u32>(u_input.b.x, var_4.a, u_input.b.x, global0.a)) % vec4<u32>(32u)), vec2<i32>(~_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], global3[_wgslsmith_index_u32(global0.a, 23u)]) >> (var_4.a % 32u), -1i), ~0i);
}

