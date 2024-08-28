struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, true, false, false, true, true, true, true, false, true, true, true, false, false);

var<private> global2: f32 = -410f;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = vec2<i32>(~u_input.c.x ^ select(u_input.c.x, -(111169i << (u_input.a % 32u)), global0.c), _wgslsmith_dot_vec4_i32(-(~max(vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, 15009i), u_input.c)), vec4<i32>(global0.b.x, _wgslsmith_mod_i32(global0.b.x, global0.b.x) | global0.a.x, 2147483647i, ~(-2147483647i))));
    let var_1 = Struct_2(vec2<bool>(true, true), ~((_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(36543u, u_input.b)) >> (u_input.b % 32u)) & countOneBits(countOneBits(29610u))), 51080u | _wgslsmith_clamp_u32(abs(0u), u_input.d.x, firstLeadingBit(firstTrailingBit(u_input.b))));
    var var_2 = var_1;
    let var_3 = !(!select(select(select(global0.d.xz, vec2<bool>(false, true), global0.d.xx), select(vec2<bool>(true, false), var_1.a, global0.d.x), var_1.a), select(select(vec2<bool>(var_2.a.x, global0.c), vec2<bool>(global0.c, false), var_1.a.x), vec2<bool>(false, global0.c), true), all(vec3<bool>(var_1.a.x, var_2.a.x, global0.d.x))));
    var var_4 = firstLeadingBit(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.x), u_input.c.wy) << (4294967295u % 32u), 0i, 13467i, global0.b.x ^ ((2147483647i | var_0.x) >> (_wgslsmith_mult_u32(var_2.b, 0u) % 32u))));
    return 15655u;
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = vec4<u32>(select(_wgslsmith_mod_u32(countOneBits(u_input.a | arg_0.x), 62709u), ~u_input.a, global0.c), 9104u, max(arg_0.x, func_3()), ~arg_0.x);
    var var_1 = Struct_2(global0.d.wy, u_input.b, ~15813u);
    let var_2 = global0.a.x;
    var var_3 = global0.a;
    var var_4 = Struct_1(vec3<i32>(u_input.c.x, countOneBits(-19735i) >> (abs(arg_0.x) % 32u), firstLeadingBit(1i)), vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, min(69129i, var_3.x) << (_wgslsmith_sub_u32(1065u, u_input.b) % 32u)), global0.b.x), true, vec4<bool>(global1[_wgslsmith_index_u32(22528u, 15u)], any(vec2<bool>(true, global0.c)), var_1.a.x, true | any(!global0.d)));
    return Struct_2(vec2<bool>(global0.d.x | global1[_wgslsmith_index_u32(var_1.c ^ ~96133u, 15u)], _wgslsmith_mult_i32(~(-2147483647i), 1i) == var_3.x), _wgslsmith_dot_vec4_u32(abs(~var_0), _wgslsmith_add_vec4_u32(var_0, _wgslsmith_div_vec4_u32(var_0, ~var_0))), 21593u);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> bool {
    global0 = Struct_1(u_input.c.zxy, global0.a.yy, false, select(select(global0.d, select(global0.d, vec4<bool>(false, false, false, false), u_input.a != arg_1.b), select(!global0.d, global0.d, vec4<bool>(global0.d.x, false, true, arg_1.a.x))), !(!global0.d), !global0.d.x));
    var var_0 = _wgslsmith_div_i32(-39082i, 24951i);
    let var_1 = u_input.d.x;
    let var_2 = 765f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_2)))), -1093f, global1[_wgslsmith_index_u32(firstLeadingBit(abs(var_1)), 15u)])) - -1000f));
    return true;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<u32>) -> u32 {
    var var_0 = any(select(select(select(!vec3<bool>(global0.c, arg_1, arg_1), !global0.d.zyy, all(vec4<bool>(global1[_wgslsmith_index_u32(32653u, 15u)], arg_1, false, arg_1))), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], false, false), any(!global0.d)), global0.d.yzy, vec3<bool>(func_4(i32(-1i) * -31166i, func_2(arg_3), 401f, firstTrailingBit(global0.a.x)), true & all(global0.d), false)));
    let var_1 = arg_0;
    global1 = array<bool, 15>();
    let var_2 = vec3<f32>(-377f, _wgslsmith_f_op_f32(select(var_1, 1001f, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 - arg_0))) + -311f) - _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(1450f, arg_0)))));
    let var_3 = global0.d;
    return ~_wgslsmith_clamp_u32(0u, abs(536u), 0u);
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    global1 = array<bool, 15>();
    var var_0 = ~arg_1.x;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1017f);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) - -1000f);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.wz, vec2<i32>(arg_0, 29361i)), min(~arg_0, arg_0), i32(-1i) * -((54081i & global0.b.x) | _wgslsmith_mult_i32(u_input.c.x, 5275i)));
    return Struct_1(-_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c.x, arg_0, -7769i), u_input.c.yyx << (u_input.d % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(global0.a.x, arg_0), reverseBits(arg_0), _wgslsmith_sub_i32(2147483647i, 5668i))), max(vec2<i32>(u_input.c.x, i32(-1i) * -2147483647i), vec2<i32>(1i, u_input.c.x) & (global0.a.xx | vec2<i32>(29417i, global0.a.x))) >> ((countOneBits(reverseBits(arg_1)) >> (firstLeadingBit(vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)), global0.d.x, !(!(!global0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 932f;
    var var_0 = func_5(global0.b.x >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d.x, u_input.d.x, 49206u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.d.x, u_input.a), vec4<u32>(69289u, u_input.b, u_input.b, u_input.a))) % 32u), max(vec2<u32>(u_input.a, ~(~21168u)), _wgslsmith_sub_vec2_u32(vec2<u32>(func_1(-1000f, global0.d.x, vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 15u)]), vec2<u32>(1u, 114153u)), ~37584u), ~(~vec2<u32>(19559u, 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-282f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1132f, 273f)) + _wgslsmith_f_op_f32(f32(-1f) * -1115f))))), u_input.d.x);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1888f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(595f, -774f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1269f)), 515f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f + 2661f)))), -959f);
    var var_1 = Struct_2(func_2(vec2<u32>(~(~24541u), countOneBits(_wgslsmith_mod_u32(52886u, 17301u)))).a, 1u ^ u_input.d.x, abs(u_input.d.x & u_input.b));
    var var_2 = all(global0.d.yy);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -422f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-239f))) - _wgslsmith_f_op_f32(trunc(158f))))));
}

