struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(false, true, false, true, false, true, true, true, true, true, false, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(-186f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) - _wgslsmith_f_op_f32(-1114f * _wgslsmith_f_op_f32(trunc(2222f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(-1365f)))), -1000f, true)) * -2393f));
    let var_1 = Struct_2(any(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(13511u, 12u)], false, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 12u)], false), false))), _wgslsmith_mod_u32(reverseBits(_wgslsmith_add_u32(1u, 1u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 16323u, 4294967295u), vec3<u32>(4050u, 1u, 0u)), ~vec3<u32>(4294967295u, 0u, 971u), vec3<u32>(23404u, 48263u, 4294967295u)), vec3<u32>(_wgslsmith_clamp_u32(4658u, 1u, 4294967295u), 4294967295u, ~1u))));
    return max(~3567u, _wgslsmith_clamp_u32(abs(~_wgslsmith_mod_u32(1u, var_1.b)), abs(var_1.b), _wgslsmith_mult_u32(21401u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4625u, var_1.b, 0u, 1u), vec4<u32>(40030u, var_1.b, 1u, 67775u)), vec4<u32>(0u, var_1.b, 4294967295u, var_1.b) & vec4<u32>(1u, var_1.b, 29287u, 4294967295u)))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> bool {
    global0 = array<bool, 12>();
    let var_0 = arg_2;
    var var_1 = arg_2.c.b;
    let var_2 = abs(_wgslsmith_mult_i32(-2147483647i << (_wgslsmith_div_u32(36787u, abs(arg_2.c.a)) % 32u), abs(2147483647i << (func_3() % 32u))));
    global0 = array<bool, 12>();
    return global0[_wgslsmith_index_u32(firstLeadingBit(arg_2.c.a << ((~(4294967295u | var_0.a.b) & select(_wgslsmith_sub_u32(22775u, 2678u), 76830u, var_0.c.b)) % 32u)), 12u)];
}

fn func_1() -> u32 {
    let var_0 = ~vec2<u32>(1u, 1u);
    var var_1 = select(!vec2<bool>(global0[_wgslsmith_index_u32(min(~var_0.x, var_0.x), 12u)], (var_0.x >> (12097u % 32u)) <= 47435u), !vec2<bool>(true, _wgslsmith_sub_i32(u_input.c.x, 3268i) >= 0i), !(!select(!vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 12u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 12u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(17633u, 12u)])), vec2<bool>(true, true))));
    var_1 = select(vec2<bool>(all(select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], true), true), select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 12u)], var_1.x, false), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 12u)], var_1.x, true), false), select(vec3<bool>(true, false, true), vec3<bool>(var_1.x, var_1.x, var_1.x), false))), global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(var_0.x, var_0.x))), 12u)]), select(vec2<bool>(func_2(-1i, _wgslsmith_sub_i32(-2147483647i, u_input.a), Struct_3(Struct_2(global0[_wgslsmith_index_u32(var_0.x, 12u)], var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 12u)], true, var_1.x, global0[_wgslsmith_index_u32(12038u, 12u)]), Struct_1(0u, true), 843f, u_input.c.xxy)), true), vec2<bool>(var_1.x, reverseBits(120u) >= countOneBits(var_0.x)), global0[_wgslsmith_index_u32(~0u, 12u)]), !(!(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(35783u, 12u)]), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var_1 = select(select(select(select(vec2<bool>(var_1.x, true), vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(9554u, 12u)], false)), vec2<bool>(true, !global0[_wgslsmith_index_u32(12956u, 12u)]), !global0[_wgslsmith_index_u32(var_0.x, 12u)]), !select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, false), vec2<bool>(var_1.x, false)), vec2<bool>(var_1.x, var_1.x), true), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 12u)], var_1.x), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 12u)], global0[_wgslsmith_index_u32(var_0.x, 12u)]), var_1.x), !select(vec2<bool>(false, true), vec2<bool>(var_1.x, global0[_wgslsmith_index_u32(1u, 12u)]), false), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 12u)], true)), vec2<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(var_0.x, 12u)]), true))), select(!vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(all(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 12u)])), 24831u >= var_0.x), vec2<bool>(true, true), true), select(vec2<bool>(global0[_wgslsmith_index_u32(40190u, 12u)] | global0[_wgslsmith_index_u32(0u, 12u)], true), vec2<bool>(!var_1.x, all(vec2<bool>(true, false))), true)), (1u == (var_0.x & _wgslsmith_sub_u32(64134u, var_0.x))) | true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)), _wgslsmith_f_op_f32(step(535f, _wgslsmith_f_op_f32(step(649f, -1178f)))))) - _wgslsmith_f_op_f32(-318f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1475f))))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(vec3<u32>(1u, 1u, 1u));
    var var_1 = vec3<u32>((~(~var_0.x) << (var_0.x % 32u)) ^ countOneBits(3475u), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(var_0.x, 37029u)), countOneBits(var_0.x)), ~(~_wgslsmith_clamp_vec2_u32(var_0.xy, vec2<u32>(38132u, var_0.x), vec2<u32>(1u, var_0.x)))), 4330u);
    let var_2 = false | global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(), ~(~var_1.x)), 12u)];
    var_1 = vec3<u32>(34184u, ~(var_0.x >> (1u % 32u)), var_0.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(389f, 1427f, 448f, -1255f)) - vec4<f32>(-621f, 1065f, -183f, -321f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-148f, -1000f, -1430f, -348f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-468f, 239f, 1469f, 1056f) * vec4<f32>(1f, 1f, 1f, 1f)), !vec4<bool>(var_2, false, true, global0[_wgslsmith_index_u32(var_1.x, 12u)])))));
    var var_4 = var_0.x;
    var var_5 = Struct_1(func_3(), false && global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(func_3(), ~var_1.x), 12u)]);
    var_5 = Struct_1(var_5.a, func_2(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -7649i, 0i), vec3<i32>(20348i, u_input.c.x, -94064i) << (var_0 % vec3<u32>(32u))), firstLeadingBit(-1i) & u_input.b, Struct_3(Struct_2(var_2, 1u), select(vec4<bool>(var_2, false, var_2, global0[_wgslsmith_index_u32(var_5.a, 12u)]), vec4<bool>(true, true, var_2, true), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 12u)], false, true, var_5.b)), Struct_1(var_0.x, true), 627f, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -21242i, -21115i), u_input.c.xzw))) || any(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(u_input.b << (1u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.zxz, var_3.yxy)), var_3.wzy, select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(58938u, 12u)], false), vec3<bool>(var_5.b, var_5.b, false), var_5.b), !vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 12u)], var_5.b), var_3.x >= 977f)))), var_0);
}

