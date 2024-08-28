struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, true, false, true, true, false, true, true, false, true, true, true, true, true, false, true, false, false, false, true, false, false, false, true, true, false, true, false, true);

var<private> global1: Struct_1;

var<private> global2: vec2<f32>;

var<private> global3: bool;

var<private> global4: array<vec4<f32>, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_add_i32(~2147483647i, firstTrailingBit(17639i)), firstLeadingBit(u_input.b << (u_input.a % 32u)) | 15958i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(266f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1796f + 1288f))) - _wgslsmith_f_op_f32(trunc(-250f))));
    global3 = false;
    let var_1 = Struct_1(vec2<i32>(1i, abs(-1i & u_input.b) >> (select(reverseBits(0u), ~1u, all(vec2<bool>(global0[_wgslsmith_index_u32(14612u, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)]))) % 32u)), var_0.b);
    global1 = var_1;
    let var_2 = var_0.b;
    return 0u;
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = vec3<u32>(abs(~arg_0.x), 1u, func_3(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 49251u), vec4<u32>(arg_0.x, 47616u, 4111u, u_input.a)) >> (arg_0.x % 32u)), _wgslsmith_sub_i32(select(global1.a.x, 2147483647i, true), -1i)));
    let var_1 = !select(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)])), vec2<bool>(!global0[_wgslsmith_index_u32(0u, 30u)], !global0[_wgslsmith_index_u32(72507u, 30u)]), any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 30u)], global0[_wgslsmith_index_u32(21731u, 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)]), global0[_wgslsmith_index_u32(arg_0.x, 30u)]))), !vec2<bool>(global0[_wgslsmith_index_u32(abs(1u), 30u)], all(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(4294967295u, 30u)]))), true);
    let var_2 = (!(!any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], var_1.x))) & (all(vec3<bool>(true, var_1.x, global0[_wgslsmith_index_u32(var_0.x, 30u)])) | true)) && !select(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 30u)], (-1685f > global2.x) != any(vec3<bool>(var_1.x, global0[_wgslsmith_index_u32(arg_0.x, 30u)], true)), any(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 30u)])));
    global3 = var_1.x;
    global3 = var_2;
    return u_input.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<u32> {
    global4 = array<vec4<f32>, 4>();
    global1 = arg_1;
    var var_0 = arg_1;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -147f));
    let var_1 = arg_1;
    return vec4<u32>(_wgslsmith_mult_u32(~4294967295u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 4294967295u), vec4<u32>(18156u, 1u, u_input.a, 4051u)), ~u_input.a)) ^ ~_wgslsmith_dot_vec3_u32(~vec3<u32>(3951u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), abs(u_input.a), 55387u, reverseBits(~52559u));
}

fn func_1() -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(540f, global2.x)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global1.b)))))))));
    let var_0 = !vec4<bool>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, u_input.a), ~1u) == u_input.a, !global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], global2.x != 866f);
    let var_1 = true;
    var var_2 = max(func_4(countOneBits(vec3<i32>(global1.a.x, u_input.b, func_2(vec3<u32>(92357u, 0u, 17526u)))), Struct_1(vec2<i32>(u_input.b, 4853i), global1.b)), vec4<u32>(reverseBits(~(~1u)), func_3(~4294967295u, u_input.b), 4294967295u, u_input.a));
    global2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -1694f), vec2<f32>(global2.x, 2124f)) - vec2<f32>(-614f, 1221f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(421f, global1.b)) - vec2<f32>(-1080f, global1.b)), vec2<bool>(true, any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], var_1))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1013f) + vec2<f32>(-958f, global1.b)))))))));
    return Struct_1(global1.a, -408f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, 1u, 0u), vec3<u32>(76643u, 4294967295u, 33355u))) << (~_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.a, 28474u), vec3<u32>(1u, u_input.a, 394u)) % vec3<u32>(32u)));
    var var_1 = vec4<f32>(global2.x, global2.x, global2.x, global2.x);
    let var_2 = Struct_1(select(reverseBits(_wgslsmith_mod_vec2_i32(global1.a, -vec2<i32>(u_input.b, u_input.b))), ~vec2<i32>(-2147483647i & u_input.b, ~u_input.b), !(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 30u)]), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)), 1159f));
    global1 = func_1();
    var var_3 = -9861i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, global1.a, vec4<f32>(global2.x, -1956f, 830f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1().b), var_1.x)));
}

