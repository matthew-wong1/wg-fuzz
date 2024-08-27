struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_1;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    return select(!select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(all(vec3<bool>(false, false, false)), select(true, true, true), true), !select(false, true, false)), !select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), true);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec3<bool> {
    global0 = array<Struct_1, 1>();
    var var_0 = !select(select(vec3<bool>(arg_0.x, !arg_0.x, true), vec3<bool>(true, arg_0.x, arg_0.x & true), !func_3(global0[_wgslsmith_index_u32(global1.b, 1u)], 0i, global0[_wgslsmith_index_u32(32290u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)])), !vec3<bool>(true, arg_0.x, global1.b == 55320u), vec3<bool>(arg_0.x, all(vec3<bool>(false, false, arg_0.x)), true));
    global1 = global0[_wgslsmith_index_u32(~countOneBits(firstTrailingBit(~arg_1.x)), 1u)];
    global0 = array<Struct_1, 1>();
    let var_1 = arg_0.x;
    return !vec3<bool>(all(select(vec4<bool>(true, true, var_1, false), !vec4<bool>(var_0.x, arg_0.x, true, var_0.x), true)), var_0.x, var_1);
}

fn func_1(arg_0: vec2<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_i32(~(~global1.a.x), _wgslsmith_sub_i32(global1.a.x, -1i)) != 21037i;
    global0 = array<Struct_1, 1>();
    var var_1 = !all(!func_2(vec2<bool>(var_0, var_0), vec4<u32>(global1.b, 4294967295u, arg_0.x, global1.b))) || func_2(vec2<bool>(true, var_0), abs(_wgslsmith_add_vec4_u32(vec4<u32>(global1.b, u_input.b.x, 11606u, u_input.b.x), ~vec4<u32>(1u, global1.b, arg_0.x, 0u)))).x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(1f, 1f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(419f, -1155f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1633f, -1294f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1230f * _wgslsmith_f_op_f32(var_2.x * -282f)), _wgslsmith_f_op_f32(-1f))))));
    return vec3<u32>(1u, _wgslsmith_dot_vec3_u32(countOneBits(~(~vec3<u32>(u_input.a, u_input.b.x, 63055u))), vec3<u32>(~(~59204u), ~4294967295u, global1.b)), ~(_wgslsmith_sub_u32(u_input.a, global1.b) | global1.b) | _wgslsmith_mod_u32(0u, ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_u32(firstTrailingBit(~abs(vec3<u32>(global1.b, u_input.b.x, u_input.b.x))), vec3<u32>(global1.b, ~min(0u, u_input.a), global1.b)) & _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(func_1(vec2<u32>(502u, global1.b)) >> (select(vec3<u32>(0u, u_input.b.x, global1.b), vec3<u32>(41936u, global1.b, 1u), vec3<bool>(false, false, true)) % vec3<u32>(32u)), max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 56567u, 4294967295u), vec3<u32>(1u, global1.b, 36888u)), vec3<u32>(u_input.a, 0u, global1.b))), select(~vec3<u32>(1u, 45041u, global1.b), ~_wgslsmith_sub_vec3_u32(vec3<u32>(26069u, global1.b, u_input.b.x), vec3<u32>(u_input.b.x, global1.b, 1u)), vec3<bool>(true, true, true)));
    var_0 = ~vec3<u32>(u_input.a, _wgslsmith_mult_u32(1u ^ (global1.b | 1u), ~_wgslsmith_add_u32(12849u, u_input.a)), 91281u);
    let var_1 = select(vec2<bool>(var_0.x >= u_input.a, all(vec4<bool>(false, func_2(vec2<bool>(true, true), vec4<u32>(global1.b, 22087u, u_input.b.x, global1.b)).x, true, func_3(Struct_1(global1.a, global1.b), 29660i, Struct_1(vec3<i32>(global1.a.x, global1.a.x, 2147483647i), 20488u), global0[_wgslsmith_index_u32(0u, 1u)]).x))), !(!vec2<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, false)))), false);
    global0 = array<Struct_1, 1>();
    global1 = Struct_1(vec3<i32>(global1.a.x, 0i, _wgslsmith_mod_i32(-max(global1.a.x, global1.a.x), global1.a.x)), 1u);
    let var_2 = select(~(abs(max(vec4<u32>(global1.b, 15837u, var_0.x, u_input.b.x), vec4<u32>(var_0.x, 0u, global1.b, u_input.a))) & ~(~vec4<u32>(global1.b, 81730u, 1u, 4294967295u))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, u_input.b.x, 40964u), vec4<u32>(var_0.x, global1.b, u_input.b.x, 41469u))) << (~((vec4<u32>(0u, var_0.x, var_0.x, var_0.x) & vec4<u32>(u_input.b.x, var_0.x, 25546u, u_input.b.x)) >> (~vec4<u32>(0u, 50857u, 4294967295u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), var_1.x);
    let var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.x, 19790i, 17924i, 1i), vec4<i32>(-24547i, 1i, global1.a.x, global1.a.x)), select(vec4<i32>(global1.a.x, -1i, global1.a.x, 12452i), vec4<i32>(global1.a.x, global1.a.x, -1i, global1.a.x), var_1.x)), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 1i, global1.a.x), vec4<i32>(9368i, 8359i, -1i, -29157i)), 1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.a.x, 2147483647i, -1i, global1.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(27272i, global1.a.x, global1.a.x, -17202i), vec4<i32>(-13655i, 16172i, 37998i, -1615i))), -global1.a.x)), -vec4<i32>(-4294i >> (1u % 32u), _wgslsmith_clamp_i32(70074i, -global1.a.x, -11615i), 1i, ~global1.a.x));
    let var_4 = Struct_1(var_3.wyx >> (_wgslsmith_add_vec3_u32(vec3<u32>(0u << (0u % 32u), var_2.x, 17254u), vec3<u32>(reverseBits(global1.b), var_0.x, _wgslsmith_add_u32(var_0.x, global1.b))) % vec3<u32>(32u)), ~(~0u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.wzw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -612f)) * 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1241f, -2196f)))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -427f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-104f, -709f) * vec2<f32>(212f, -1390f)))))), 475f);
}

