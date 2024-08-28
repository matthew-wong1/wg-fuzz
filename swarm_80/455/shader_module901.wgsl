struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_3,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, false, false, true, false, false, true, true, false, false, false, true);

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<Struct_2, 9>;

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = -162f;
    global2 = array<Struct_2, 9>();
    var var_1 = abs(arg_0.d) & _wgslsmith_mod_vec3_u32(min(~(arg_0.d ^ vec3<u32>(arg_0.c.a, 32738u, arg_0.d.x)), arg_0.d), vec3<u32>(1u, ~34166u, ~4294967295u));
    var var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(var_1.x, 1u), var_1.x), abs(arg_0.d.yx)), var_1.x), !arg_0.c.b);
    var_0 = -1134f;
    return _wgslsmith_mod_u32(~(~var_2.a), abs(abs(~(4050u << (var_1.x % 32u)))));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4) -> i32 {
    let var_0 = vec3<u32>(~arg_2.c.b, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(1u), func_2(Struct_5(arg_0.c.a, -1039f, Struct_1(46332u, vec3<bool>(global0[_wgslsmith_index_u32(arg_2.c.b, 12u)], false, false)), vec3<u32>(arg_2.c.b, 4294967295u, 1u), arg_0.c.c.x), vec4<i32>(1i, 0i, 17682i, 1i), vec2<f32>(-197f, arg_2.b.x), arg_2.b.zxz)), abs(~vec2<u32>(4294967295u, 5165u)))), 53067u);
    var var_1 = ~vec4<u32>(~(18622u << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.b, var_0.x, arg_0.c.a, 12350u), vec4<u32>(1u, 0u, 47809u, arg_2.c.b)) % 32u)), _wgslsmith_mod_u32(var_0.x, arg_2.c.b), select(56287u, 4294967295u, arg_0.a.x), (~arg_0.c.b >> (~1u % 32u)) & 4294967295u);
    global1 = array<Struct_2, 29>();
    let var_2 = select(arg_0.a.zz, !select(vec2<bool>(true, true), arg_2.e.a, select(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.c.b, 12u)], true), vec2<bool>(true, true), arg_0.a.x && arg_0.a.x)), any(!arg_2.d.zxx));
    global1 = array<Struct_2, 29>();
    return _wgslsmith_add_i32(~(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.c.x, arg_2.c.c.x, arg_1), vec3<i32>(58499i, 2147483647i, arg_1)))), max(countOneBits(~(~(-30172i))), -8342i));
}

fn func_3() -> f32 {
    let var_0 = i32(-1i) * -66034i;
    global3 = vec4<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1515f, global3.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)), 286f, global3.x);
    global0 = array<bool, 12>();
    var var_1 = ~(~(~_wgslsmith_sub_u32(~0u, 4294967295u)));
    let var_2 = min(var_0, -(2147483647i | _wgslsmith_mult_i32(0i, u_input.d.x)));
    return _wgslsmith_f_op_f32(trunc(-252f));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_5) -> i32 {
    global0 = array<bool, 12>();
    let var_0 = _wgslsmith_clamp_i32(u_input.c.x, firstLeadingBit(u_input.a), countOneBits(~u_input.c.x & _wgslsmith_clamp_i32(-33234i, u_input.a, u_input.d.x)));
    let var_1 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~(vec4<u32>(34611u, arg_2.a, 0u, 0u) | vec4<u32>(arg_2.d.x, 76288u, arg_2.a, 70818u)), vec4<u32>(6386u, 0u, arg_2.c.a, 1u) >> (vec4<u32>(8406u, 4294967295u, 23138u, arg_2.d.x) % vec4<u32>(32u)), ~reverseBits(vec4<u32>(78701u, 4294967295u, arg_2.d.x, 2849u))), firstLeadingBit(vec4<u32>(countOneBits(arg_2.a), arg_2.d.x, 26876u ^ arg_2.c.a, arg_2.c.a)));
    return 8430i >> (_wgslsmith_mod_u32(arg_2.a, max(64061u, arg_2.a)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a, (_wgslsmith_div_i32(0i, func_1(Struct_4(vec3<bool>(false, true, global0[_wgslsmith_index_u32(15786u, 12u)]), vec4<f32>(-729f, global3.x, global3.x, -853f), Struct_3(128593u, 15743u, vec2<i32>(u_input.c.x, 1i), 1574f), vec4<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(63248u, 12u)], global0[_wgslsmith_index_u32(24337u, 12u)], true), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(18317u, 12u)], true))), 65018i, Struct_4(vec3<bool>(false, true, true), vec4<f32>(702f, global3.x, global3.x, -766f), Struct_3(16076u, 40051u, vec2<i32>(11659i, u_input.c.x), global3.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(97540u, 12u)], global0[_wgslsmith_index_u32(72841u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), global2[_wgslsmith_index_u32(14053u, 9u)]))) & ~4700i) & 16069i, func_4(vec3<bool>(true, !any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(24089u, 12u)], global0[_wgslsmith_index_u32(89912u, 12u)])), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), Struct_5(1u, _wgslsmith_f_op_f32(f32(-1f) * -362f), Struct_1(_wgslsmith_mult_u32(1u, 9535u), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)], true, global0[_wgslsmith_index_u32(629u, 12u)])), vec3<u32>(42812u, 1u, 49231u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, u_input.b), -u_input.a))));
    var var_1 = !(!global0[_wgslsmith_index_u32(13593u, 12u)]);
    var var_2 = ~(~abs(vec2<u32>(1u, 62272u)) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14912u, 69472u, 75588u, 102580u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)) << (112666u % 32u), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1316f - global3.x)))), ~max(-2147483647i, var_0.x), _wgslsmith_add_vec3_u32((~vec3<u32>(var_2.x, 1u, 93940u) ^ ~vec3<u32>(61404u, var_2.x, 77449u)) >> (abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, var_2.x, 4294967295u), vec3<u32>(1u, 0u, var_2.x))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(var_2.x, 1u), 1u, ~select(var_2.x, var_2.x, false))));
}

