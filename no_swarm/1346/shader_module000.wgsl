struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: Struct_4;

var<private> global2: array<vec3<f32>, 3>;

var<private> global3: array<vec4<i32>, 16>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: bool) -> vec3<bool> {
    return !global1.a.b;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = global1.a;
    var var_1 = arg_2;
    let var_2 = Struct_4(arg_0, _wgslsmith_div_vec2_u32(min(vec2<u32>(1u, select(38626u, 32698u, true)), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.e.a, global1.b.x), global1.b)), vec2<u32>(0u, var_1.e.a)), u_input.a & ~(global1.c << (min(vec4<u32>(1u, 9557u, 1u, var_1.e.a), vec4<u32>(22697u, arg_2.a.a, global1.b.x, 618u)) % vec4<u32>(32u))));
    let var_3 = vec4<bool>(arg_1, !(!(!var_1.b.d.x)), false, all(select(vec2<bool>(all(vec4<bool>(false, true, var_2.a.b.x, false)), false && arg_1), vec2<bool>(false | var_2.a.b.x, true), func_3(var_1.b.b.xz, _wgslsmith_f_op_vec3_f32(arg_2.e.b - vec3<f32>(var_1.b.b.x, arg_2.a.b.x, -871f)), func_3(vec2<f32>(var_1.e.b.x, var_1.d.x), vec3<f32>(var_1.d.x, 1000f, var_1.d.x), var_2.a.b.x).x).zy)));
    var_1 = Struct_3(Struct_2(~firstTrailingBit(1u), var_1.e.b, !var_3.x | false, !(!arg_2.b.d)), arg_2.e, 0i, vec2<f32>(_wgslsmith_f_op_f32(abs(-284f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_2(firstLeadingBit(global1.b.x), arg_2.e.b, select(false, arg_1, true), !select(!var_2.a.b, vec3<bool>(var_3.x, var_0.b.x, false), any(vec2<bool>(true, true)))));
    return abs(vec3<u32>(var_2.b.x, ~(~34774u), _wgslsmith_sub_u32(global1.b.x | 4294967295u, _wgslsmith_sub_u32(global1.b.x, global1.b.x)))) >> (select(vec3<u32>(~(~9938u), var_1.e.a, 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(3771u, var_2.b.x, var_2.b.x), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a.a, var_2.b.x, 0u), vec3<u32>(0u, 4294967295u, 1u))), reverseBits(min(vec3<u32>(var_2.b.x, var_2.b.x, 89279u), vec3<u32>(arg_2.e.a, 1u, var_2.b.x)))), var_0.b.x) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32) -> bool {
    global3 = array<vec4<i32>, 16>();
    global0 = array<vec3<bool>, 23>();
    global0 = array<vec3<bool>, 23>();
    var var_0 = Struct_1(2147483647i, !global1.a.b);
    var var_1 = -48623i;
    return _wgslsmith_dot_vec3_u32(func_4(Struct_1(_wgslsmith_div_i32(-44424i, 17466i), func_3(vec2<f32>(894f, arg_0.b.x), arg_0.b, var_0.b.x)), !arg_0.d.x && var_0.b.x, Struct_3(arg_0, arg_0, global1.a.a, _wgslsmith_f_op_vec2_f32(-arg_0.b.yx), Struct_2(arg_0.a, vec3<f32>(arg_0.b.x, 480f, -1000f), global1.a.b.x, arg_0.d))), countOneBits(abs(vec3<u32>(arg_2, 32858u, 9628u) >> (vec3<u32>(4298u, 84051u, global1.b.x) % vec3<u32>(32u))))) > ~(~arg_1.b.x);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = global1.a;
    let var_1 = true | all(var_0.b.xy);
    return select(vec3<bool>(-1i <= (_wgslsmith_div_i32(global1.c.x, arg_0) | _wgslsmith_mult_i32(global1.c.x, 1i)), arg_1.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(584f, 735f)) * 665f), func_2(Struct_2(26585u, vec3<f32>(arg_1.x, 882f, -1406f), true, global0[_wgslsmith_index_u32(global1.b.x, 23u)]), Struct_4(global1.a, vec2<u32>(global1.b.x, global1.b.x), vec4<i32>(-28491i, -2147483647i, var_0.a, 0i)), global1.b.x) || false), select(global0[_wgslsmith_index_u32(~(~(~global1.b.x)), 23u)], vec3<bool>(true, true, true), var_0.b.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1893f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(924f, 947f) * vec2<f32>(675f, -304f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1370f) + vec2<f32>(1051f, -426f)), select(global1.a.b.xy, vec2<bool>(true, true), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(535f, 566f)))), !global1.a.b.zy)));
    let var_1 = _wgslsmith_f_op_f32(sign(1171f)) >= -801f;
    var var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, 47466i), max(-1i, -reverseBits(u_input.a.x)));
    var_2 = 11203i;
    global2 = array<vec3<f32>, 3>();
    let var_3 = Struct_3(Struct_2(~global1.b.x, _wgslsmith_f_op_vec3_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.b.x, min(global1.b.x, global1.b.x)), 3u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global2[_wgslsmith_index_u32(global1.b.x, 3u)])) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(563f, 237f, var_0.x)))))), true, global1.a.b), Struct_2(global1.b.x, vec3<f32>(_wgslsmith_f_op_f32(516f - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_f_op_f32(abs(-484f)))), true, vec3<bool>(true, true, true)), u_input.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1294f) - _wgslsmith_f_op_f32(min(-892f, -1533f))), var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1365f, var_0.x)))))), Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(global1.b.x, 4294967295u), vec2<u32>(global1.b.x, global1.b.x)), countOneBits(global1.b)), ~firstTrailingBit(0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(global1.b.x, 3u)])) + vec3<f32>(_wgslsmith_f_op_f32(446f + var_0.x), _wgslsmith_f_op_f32(var_0.x * 966f), -468f)), any(select(vec3<bool>(true, true, true), func_1(u_input.a.x, vec2<f32>(var_0.x, var_0.x)), false)), vec3<bool>(~global1.b.x > select(global1.b.x, global1.b.x, false), func_1(_wgslsmith_dot_vec3_i32(u_input.a.wzw, vec3<i32>(-42150i, global1.a.a, global1.c.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, var_0.x), vec2<f32>(1000f, var_0.x)))).x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, min(_wgslsmith_dot_vec2_u32(vec2<u32>(select(var_3.e.a, 0u, var_3.b.d.x), var_3.b.a), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, var_3.b.a), vec2<u32>(55127u, 1u)), var_3.e.a)), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(4294967295u, 49377u, 11627u), 4294967295u)), countOneBits(min(global1.a.a, abs(global1.a.a ^ -2147483647i))));
}

