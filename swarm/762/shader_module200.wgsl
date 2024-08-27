struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: Struct_1 = Struct_1(1i);

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    global0 = array<i32, 7>();
    let var_1 = 24237u;
    global2 = array<Struct_1, 16>();
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(0i, -7202i, -1i, ~14176i), u_input.b);
    return Struct_1(u_input.b.x);
}

fn func_3() -> u32 {
    global2 = array<Struct_1, 16>();
    global0 = array<i32, 7>();
    global2 = array<Struct_1, 16>();
    var var_0 = Struct_2(_wgslsmith_dot_vec3_u32(abs(u_input.a & ~vec3<u32>(33336u, 4294967295u, 4414u)), vec3<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(60889u, u_input.a.x, u_input.a.x, 141727u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), ~max(22405u, 0u), 4294967295u)), global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(u_input.a.zx, firstLeadingBit(vec2<u32>(u_input.a.x, 85895u))) | ~29378u), 16u)], _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(63669u, u_input.a.x, 0u, 0u), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, u_input.a.x), ~1u), u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 55309u, 65871u, u_input.a.x), vec4<u32>(61095u, 4294967295u, u_input.a.x, u_input.a.x)), u_input.a.x)));
    let var_1 = select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !(var_0.c.x >= 25628u), 4515u < u_input.a.x), vec4<bool>(true, firstTrailingBit(-2147483647i) != _wgslsmith_sub_i32(43720i, 1i), true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(true, true, false)), abs(global1.a) != abs(u_input.b.x)), true), !(!vec4<bool>(any(vec4<bool>(false, false, false, true)), all(vec2<bool>(false, true)), true, true)));
    return firstLeadingBit(reverseBits(17567u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    global1 = Struct_1(min(-global0[_wgslsmith_index_u32(firstTrailingBit(44629u), 7u)] >> (_wgslsmith_mult_u32(~0u, u_input.a.x) % 32u), ~arg_1.a));
    global2 = array<Struct_1, 16>();
    var var_0 = u_input.b.xyz;
    let var_1 = arg_2;
    global0 = array<i32, 7>();
    return u_input.a.xy;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: u32) -> i32 {
    global1 = global2[_wgslsmith_index_u32(u_input.a.x, 16u)];
    global0 = array<i32, 7>();
    var var_0 = func_2();
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.a.zy, func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(718f, -541f, -1279f), vec3<f32>(-636f, 497f, 198f))), vec3<f32>(1157f, 1f, _wgslsmith_f_op_f32(529f * 1108f)), vec3<bool>(true, true, true))), Struct_1(~(-63612i)), Struct_2(_wgslsmith_sub_u32(func_3(), ~arg_1), Struct_1(arg_2.x << (arg_1 % 32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_3, arg_1, arg_1, 16477u), vec4<u32>(arg_3, 1u, u_input.a.x, arg_3))))), 16u)];
    var var_1 = vec4<i32>(-2147483647i, -reverseBits(arg_2.x), firstLeadingBit(~(_wgslsmith_div_i32(14712i, 25154i) >> (firstLeadingBit(arg_1) % 32u))), 13646i);
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(~(i32(-1i) * -2147483647i), min(global0[_wgslsmith_index_u32(4294967295u, 7u)], arg_2.x), _wgslsmith_sub_i32(var_1.x << (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global1.a), u_input.b.wx))), select(var_1.wxw, -u_input.b.zww, select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, false, false))) >> (select(abs(u_input.a), u_input.a, !(0u >= arg_1)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~abs(u_input.a.x & u_input.a.x), u_input.a.x), 79122u), 16u)];
    var var_1 = 591f;
    let var_2 = Struct_1(func_1(global2[_wgslsmith_index_u32(~(~1u), 16u)], 1u, u_input.b.xz, 15337u));
    let var_3 = vec4<bool>(true, false, true, true);
    let var_4 = i32(-1i) * -26446i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 62682u, countOneBits(1u) << (min(u_input.a.x, u_input.a.x) % 32u), u_input.a.x), reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(84263u, u_input.a.x, 38585u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, 50992u, u_input.a.x)))), func_3(), _wgslsmith_div_vec4_i32(~vec4<i32>(-u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(~u_input.a.x, 7u)], -27358i), vec4<i32>(-1i, 2147483647i, 1i | _wgslsmith_mod_i32(17540i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), -max(15518i, 2147483647i))), vec4<f32>(1f, 1f, 1f, 1f));
}

