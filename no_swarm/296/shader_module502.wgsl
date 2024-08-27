struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<bool>) -> i32 {
    global0 = 1095f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(252f, 909f)), _wgslsmith_f_op_f32(f32(-1f) * -483f)))))) + _wgslsmith_f_op_f32(f32(-1f) * -781f));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(725f)));
    let var_0 = Struct_3(reverseBits(u_input.a), vec2<i32>(-28851i, i32(-1i) * -firstLeadingBit(u_input.c.x)), ~(~(~vec4<u32>(arg_0.x, arg_1.a.x, arg_1.a.x, arg_0.x)) << (vec4<u32>(~arg_1.a.x, ~24969u, arg_0.x | 1u, 10776u ^ arg_0.x) % vec4<u32>(32u))), _wgslsmith_div_vec2_u32(max(vec2<u32>(arg_0.x, u_input.a), vec2<u32>(34435u, 79060u)) ^ arg_1.a, vec2<u32>(arg_1.a.x >> (arg_1.a.x % 32u), abs(arg_1.a.x))) & abs(vec2<u32>(arg_1.a.x, ~u_input.a)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(-279f, -736f, arg_3.x)), _wgslsmith_f_op_f32(-645f - _wgslsmith_f_op_f32(-1541f * 957f))), Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(13821u, arg_0.x, 4294967295u, 19356u), vec4<u32>(6170u, arg_0.x, u_input.a, arg_0.x)), arg_1.a.x)), Struct_1(~arg_0)));
    let var_1 = _wgslsmith_mod_vec4_u32(~var_0.c, var_0.c);
    return -1i;
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-286f)), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f)))));
    let var_0 = Struct_4(-23719i);
    var var_1 = ~firstTrailingBit(0i);
    var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(~66218i, _wgslsmith_clamp_i32(var_0.a, u_input.c.x, -22614i)) | u_input.c.yz, u_input.b);
    global0 = arg_0.x;
    return vec2<bool>(abs(func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 7585u)), Struct_1(vec2<u32>(0u, u_input.a)), var_0, vec3<bool>(true, true, true))) > _wgslsmith_div_i32(abs(i32(-1i) * -41241i), var_0.a), true);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = reverseBits(min(u_input.c, u_input.c));
    var var_1 = select(select(select(vec2<bool>(any(vec2<bool>(true, false)), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), 835f >= arg_1.x), func_2(arg_1), vec2<bool>(u_input.b.x < -22947i, select(false, true, false) | all(vec2<bool>(true, false)))), vec2<bool>(select(u_input.b.x, i32(-1i) * -1i, true) <= 2147483647i, !(_wgslsmith_f_op_f32(f32(-1f) * -999f) >= _wgslsmith_f_op_f32(sign(-507f)))), select(true && any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), false, true));
    let var_2 = all(select(vec3<bool>(!(false && var_1.x), all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, true, var_1.x), var_1.x)), all(!vec3<bool>(var_1.x, true, true))), select(vec3<bool>(!var_1.x, var_1.x, select(var_1.x, true, true)), !vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, var_1.x, true), true), !vec3<bool>(var_1.x, var_1.x, var_1.x), true)));
    global1 = array<Struct_1, 21>();
    var var_3 = vec3<f32>(958f, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(round(-1584f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-773f)), arg_1.x)));
    return _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit((u_input.c.yx & var_0.zx) << (firstLeadingBit(vec2<u32>(61639u, arg_2.x)) % vec2<u32>(32u))), abs(abs(vec2<i32>(var_0.x, 9759i) ^ u_input.b))), abs(abs(abs(vec2<i32>(24110i, 2147483647i) >> (vec2<u32>(arg_2.x, 6874u) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-303f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(651f))))));
    let var_0 = min(~_wgslsmith_mult_vec2_i32(func_1(Struct_1(vec2<u32>(u_input.a, u_input.a)), vec4<f32>(-309f, 1403f, -1809f, -271f), min(vec4<u32>(0u, u_input.a, u_input.a, 39427u), vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a))), select(vec2<i32>(-2147483647i, -3361i), u_input.c.xx, vec2<bool>(true, true))), ~(~vec2<i32>(i32(-1i) * -41327i, i32(-1i) * -16236i)));
    var var_1 = vec2<u32>(u_input.a, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(29041u, 4294967295u)), ~vec2<u32>(u_input.a, 0u))) & select(reverseBits(max(vec2<u32>(4294967295u, 0u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, 0u))), ~(vec2<u32>(0u, u_input.a) >> (vec2<u32>(24755u, u_input.a) % vec2<u32>(32u))), 27108u < max(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(49571u, u_input.a), vec2<u32>(100941u, u_input.a))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-817f, 438f, true))), 1442f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1127f * -1000f) * _wgslsmith_f_op_f32(floor(1282f)))))));
    var var_2 = any(vec4<bool>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d, var_0.x, -37597i, 65285i), abs(vec4<i32>(u_input.d, var_0.x, var_0.x, u_input.d))) > u_input.c.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 0u)) >= ~(~41679u), false, false));
    var var_3 = select(!vec4<bool>(true, true, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)))), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), any(vec3<bool>(false, false, false))), select(true, any(vec3<bool>(true, true, false)), false)), !vec4<bool>(any(vec4<bool>(true, false, false, true)), true, true, true), !(any(vec3<bool>(true, false, false)) != true)));
    let var_4 = Struct_3(4294967295u, -u_input.c.yx, vec4<u32>(var_1.x, ~u_input.a, ~(~62468u), ~4294967295u), ~(~vec2<u32>(_wgslsmith_div_u32(var_1.x, var_1.x), abs(4294967295u))), Struct_2(vec2<f32>(1f, 1f), global1[_wgslsmith_index_u32(var_1.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1304f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-144f + _wgslsmith_f_op_f32(exp2(var_4.e.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(105545u, vec2<f32>(var_4.e.a.x, -2387f), -1i, _wgslsmith_sub_u32(~abs(var_1.x), countOneBits(u_input.a | _wgslsmith_add_u32(var_4.d.x, 1u))));
}

