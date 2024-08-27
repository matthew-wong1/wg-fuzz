struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = -1958i;

var<private> global2: array<i32, 13>;

var<private> global3: array<i32, 9> = array<i32, 9>(31488i, -2475i, i32(-2147483648), -12068i, 1i, 2147483647i, 0i, 1i, 1287i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> vec3<bool> {
    global1 = select(~arg_0.c.x, 2147483647i, all(vec3<bool>(!arg_2, !select(false, false, arg_2), any(select(vec4<bool>(false, false, arg_2, false), vec4<bool>(arg_0.d, true, true, false), false)))));
    let var_0 = arg_2;
    let var_1 = arg_0;
    return !(!(!vec3<bool>(all(vec2<bool>(false, false)), false & var_1.d, true)));
}

fn func_2() -> bool {
    let var_0 = select(!func_3(Struct_1(abs(u_input.a), vec4<u32>(u_input.d, u_input.d, 1u, 1u), u_input.a, true, countOneBits(u_input.d)), vec4<u32>(~u_input.d, u_input.d, 0u, u_input.d), true == all(vec4<bool>(false, true, true, false))), select(vec3<bool>(true, _wgslsmith_f_op_f32(select(-1015f, 1000f, false)) < _wgslsmith_f_op_f32(330f * 383f), true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, true))), vec3<bool>(all(vec2<bool>(false, false)), false, false), vec3<bool>(false, true, false)), func_3(Struct_1(max(u_input.a, u_input.a), max(vec4<u32>(13709u, 64555u, 64061u, u_input.d), vec4<u32>(42967u, 0u, 4294967295u, u_input.d)), min(u_input.a, u_input.a), true, _wgslsmith_add_u32(u_input.d, u_input.d)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(42688u, u_input.d, u_input.d, 57529u), vec4<u32>(u_input.d, u_input.d, u_input.d, 1u)), u_input.d, ~19829u, reverseBits(4294967295u)), !all(vec2<bool>(false, true)))), func_3(Struct_1(select(~vec3<i32>(global3[_wgslsmith_index_u32(u_input.d, 9u)], 17433i, 2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(0u, 9u)], 66080i, u_input.a.x), global2[_wgslsmith_index_u32(0u, 13u)] != -32620i), vec4<u32>(u_input.d, u_input.d, 1u, u_input.d), vec3<i32>(-27945i ^ global2[_wgslsmith_index_u32(u_input.d, 13u)], -u_input.b, ~(-1i)), any(vec4<bool>(true, true, true, true)) | all(vec3<bool>(false, true, false)), _wgslsmith_clamp_u32(10035u, select(0u, 1u, true), 4294967295u)), abs(min(vec4<u32>(50507u, u_input.d, 28799u, 0u) & vec4<u32>(15393u, u_input.d, u_input.d, u_input.d), ~vec4<u32>(u_input.d, 4294967295u, 0u, 45233u))), true).x);
    let var_1 = var_0;
    let var_2 = select(!(!(!var_0.xx)), func_3(Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(u_input.d, 13u)], 55982i) & u_input.a, vec4<u32>(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 0u, u_input.d), vec4<u32>(0u, u_input.d, 1u, 42187u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(0u, 0u)), ~0u), select(select(vec3<i32>(global2[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(15091u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)]), u_input.a, var_0), u_input.a ^ u_input.a, var_0.x || var_0.x), !func_3(Struct_1(u_input.a, vec4<u32>(24550u, u_input.d, 1u, 20947u), u_input.a, false, u_input.d), vec4<u32>(u_input.d, 32229u, u_input.d, 126727u), true).x, 35525u), vec4<u32>(_wgslsmith_add_u32(u_input.d, u_input.d), 0u, u_input.d, (u_input.d & 0u) >> (4294967295u % 32u)), false).xx, func_3(Struct_1(u_input.a, ~min(vec4<u32>(u_input.d, u_input.d, 14262u, u_input.d), vec4<u32>(1583u, 44740u, 85129u, u_input.d)), -vec3<i32>(50174i, 2147483647i, global3[_wgslsmith_index_u32(18141u, 9u)]), !var_1.x || all(var_1.xy), u_input.d & 8057u), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), ~select(vec4<u32>(u_input.d, 1u, u_input.d, 24036u), vec4<u32>(4294967295u, u_input.d, 4294967295u, 25568u), vec4<bool>(true, false, var_1.x, var_0.x))), var_1.x).zy);
    let var_3 = Struct_4(vec2<bool>(-2147483647i >= _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.d, 13u)], -1i, abs(global2[_wgslsmith_index_u32(0u, 13u)])), !var_2.x));
    global2 = array<i32, 13>();
    return false;
}

fn func_1() -> vec2<bool> {
    var var_0 = vec3<bool>(false, !(!func_2()), !all(vec3<bool>(true, true, true)));
    let var_1 = Struct_4(vec2<bool>(true, !any(vec3<bool>(var_0.x, true, var_0.x)) != true));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-600f))));
    let var_2 = _wgslsmith_clamp_vec2_u32(max(~(~vec2<u32>(u_input.d, u_input.d)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.d, u_input.d)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, u_input.d), vec2<u32>(47214u, u_input.d))) % vec2<u32>(32u)), (min(vec2<u32>(47843u, 45715u), vec2<u32>(u_input.d, u_input.d)) ^ ~vec2<u32>(u_input.d, u_input.d)) << (~(~vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~u_input.d), ~(~vec2<u32>(0u, 4294967295u))), countOneBits(~vec2<u32>(~1u, u_input.d)));
    var var_3 = abs(vec4<i32>(u_input.a.x, u_input.c, -(~2147483647i) >> (select(~var_2.x, u_input.d, var_0.x) % 32u), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, 14885u >> (var_2.x % 32u)) ^ var_2.x, 9u)]));
    return vec2<bool>(true, true | all(select(vec3<bool>(false, true, var_0.x), !vec3<bool>(false, var_1.a.x, true), vec3<bool>(true, var_1.a.x, true))));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_4 {
    var var_0 = Struct_2(false);
    let var_1 = ~u_input.c;
    let var_2 = !((i32(-1i) * -2147483647i) > -(~u_input.b)) && ((var_0.a || !var_0.a) || false);
    let var_3 = Struct_2(true);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1353f), 879f);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c;
    let var_0 = func_4(1u, Struct_4(!func_1()));
    let var_1 = true;
    global0 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = u_input.d ^ _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, u_input.d, 39923u, 4294967295u) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 48218u, u_input.d, 68202u), vec4<u32>(0u, u_input.d, u_input.d, u_input.d))), vec4<u32>(u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(1u, u_input.d)), ~vec2<u32>(u_input.d, u_input.d)), ~_wgslsmith_mod_u32(u_input.d, u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(60575u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, -_wgslsmith_dot_vec4_i32(-vec4<i32>(18457i, u_input.b, global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(u_input.d, 9u)]), vec4<i32>(-1i, global2[_wgslsmith_index_u32(22689u, 13u)], u_input.a.x, global2[_wgslsmith_index_u32(u_input.d, 13u)])), 1i, global3[_wgslsmith_index_u32(u_input.d, 9u)]), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~25214u, firstTrailingBit(_wgslsmith_add_u32(1u, ~u_input.d))), 9u)]);
}

