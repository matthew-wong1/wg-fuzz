struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: array<f32, 5>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 1>;

var<private> global4: vec2<u32> = vec2<u32>(10700u, 0u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, global1[_wgslsmith_index_u32(global4.x, 5u)]) - _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(1357f - 538f));
    var var_1 = Struct_1(~countOneBits(vec3<i32>(firstTrailingBit(2147483647i), -1i, _wgslsmith_mod_i32(2147483647i, u_input.d.x))), -(-u_input.a >> (~(~global4.x) % 32u)), false);
    let var_2 = _wgslsmith_f_op_f32(-635f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x << (33771u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(36815u, u_input.b.x, 0u), u_input.b)), 5u)], _wgslsmith_f_op_f32(-555f + global1[_wgslsmith_index_u32(1u ^ global4.x, 5u)]), !all(vec3<bool>(true, var_1.c, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(351f, global1[_wgslsmith_index_u32(u_input.b.x, 5u)])) - _wgslsmith_f_op_f32(-854f + global1[_wgslsmith_index_u32(64559u, 5u)])) * -1113f), var_1.c & select(true, true, var_1.c))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-617f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))))) + vec2<f32>(_wgslsmith_f_op_f32(step(-475f, -1319f)), -538f));
    var var_4 = global3[_wgslsmith_index_u32(~abs(global4.x), 1u)];
    return var_3.x;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: u32) -> vec4<u32> {
    var var_0 = global3[_wgslsmith_index_u32(arg_3, 1u)];
    let var_1 = vec4<i32>(max(abs(1i), var_0.a.x), arg_0, ~u_input.d.x, ~(~arg_0));
    var var_2 = Struct_1(var_0.a << (~(~u_input.b) % vec3<u32>(32u)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 1i, 0i, u_input.a), vec4<i32>(7891i, 1i, -28027i, var_0.a.x)), select(var_1.x, global0[_wgslsmith_index_u32(global4.x, 8u)], false), any(vec2<bool>(var_0.c, true))), i32(-1i) * -37919i), _wgslsmith_mult_i32(1i, -35633i), ~arg_0), true);
    var var_3 = global3[_wgslsmith_index_u32(~u_input.b.x, 1u)];
    global0 = array<i32, 8>();
    return min(_wgslsmith_mod_vec4_u32(vec4<u32>(32907u, arg_3, _wgslsmith_div_u32(u_input.b.x, ~30075u), reverseBits(15109u)), ~(~min(vec4<u32>(4294967295u, global4.x, 83427u, 0u), vec4<u32>(6212u, arg_3, u_input.b.x, 1887u)))), _wgslsmith_div_vec4_u32(abs(firstTrailingBit(vec4<u32>(28356u, u_input.b.x, 18150u, 4294967295u))) >> (min(~vec4<u32>(global4.x, 4294967295u, arg_3, 20613u), vec4<u32>(8498u, global4.x, 4918u, global4.x)) % vec4<u32>(32u)), min(~vec4<u32>(54739u, global4.x, 4294967295u, 1u), vec4<u32>(43531u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_3), vec2<u32>(8486u, 3966u)), countOneBits(arg_3)))));
}

fn func_2() -> f32 {
    let var_0 = -vec3<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, 1i), select(abs(-2147483647i), ~global0[_wgslsmith_index_u32(32011u, 8u)], select(false, false, true))), min(countOneBits(-global0[_wgslsmith_index_u32(0u, 8u)]), firstLeadingBit(-1i)));
    let var_1 = select(select(~vec2<u32>(0u, max(u_input.b.x, u_input.b.x)), ~_wgslsmith_mult_vec2_u32(~u_input.b.yy, vec2<u32>(1u, global4.x)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), global4.x > 1u), vec2<bool>(true, true))), _wgslsmith_mult_vec2_u32(u_input.b.xy, _wgslsmith_mult_vec2_u32(u_input.b.yz, firstTrailingBit(u_input.b.yz))) >> (select(vec2<u32>(0u | u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b.x, global4.x), vec4<u32>(1u, u_input.b.x, global4.x, 0u))), ~u_input.b.xz, -var_0.x > 1i) % vec2<u32>(32u)), true);
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, var_1.x | global4.x), u_input.b.x, _wgslsmith_clamp_u32(~23867u, _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global4.x, 0u, 32879u), u_input.b), vec3<u32>(0u, u_input.b.x, var_1.x) | vec3<u32>(1u, 1u, var_1.x))), _wgslsmith_dot_vec4_u32(~vec4<u32>(80590u, 75445u, 35919u, var_1.x) & (vec4<u32>(global4.x, 0u, var_1.x, 4294967295u) << (vec4<u32>(var_1.x, 30774u, global4.x, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(global4.x, u_input.b.x, var_1.x, 42149u), ~vec4<u32>(global4.x, var_1.x, 72274u, u_input.b.x)))), reverseBits(u_input.b.x));
    var var_3 = vec2<bool>(!any(vec3<bool>(true, true, true)), !(!(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_2.x, 5u)], 517f, true)) != _wgslsmith_f_op_f32(-1622f * global1[_wgslsmith_index_u32(13296u, 5u)]))));
    var_2 = func_3(reverseBits(~27i), !(!(true || var_3.x)) == var_3.x, true && all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 8u)] > 50982i, any(vec3<bool>(true, var_3.x, true)))), ~((max(global4.x, global4.x) & 45473u) ^ var_1.x));
    return _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~(~global4.x), 1u << (_wgslsmith_div_u32(2351u, ~1u) % 32u)), 1u)];
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, max(countOneBits(36409u), ~(~(~global4.x)))), 1u)];
    let var_1 = var_0.a.zy;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global4.x, 5u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)])))))));
    let var_3 = reverseBits(~firstLeadingBit(~vec4<u32>(global4.x, u_input.b.x, 4294967295u, global4.x)));
    let var_4 = vec3<bool>(!all(!(!vec3<bool>(false, false, var_0.c))), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(abs(global0[_wgslsmith_index_u32(var_3.x, 8u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(-3939i, 0i, 1i, 0i), vec4<i32>(1782i, u_input.d.x, -57664i, -35296i)))), u_input.a));
}

