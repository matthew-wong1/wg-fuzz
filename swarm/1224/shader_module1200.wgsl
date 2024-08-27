struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global2 = array<vec2<u32>, 2>();
    global2 = array<vec2<u32>, 2>();
    var var_0 = Struct_3(true);
    global2 = array<vec2<u32>, 2>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(713f)) * _wgslsmith_f_op_f32(select(116f, -1586f, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1374f)))))))));
    return 44861u;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = 1280f;
    let var_1 = ~(u_input.a >> (func_3() % 32u)) | 0u;
    let var_2 = -673f;
    global0 = var_2;
    var var_3 = Struct_1(!select(select(!vec4<bool>(arg_0.x, true, false, false), vec4<bool>(false, arg_0.x, true, true), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, true, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), vec4<bool>(arg_0.x, arg_0.x, !arg_0.x, arg_0.x), !arg_0.x == true));
    return Struct_1(vec4<bool>(true, false, false, false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    global1 = ~(~(~(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 16093u), 2u)])));
    global1 = ~(~(vec2<u32>(~u_input.a, reverseBits(u_input.a)) >> ((~global2[_wgslsmith_index_u32(108604u, 2u)] >> (vec2<u32>(1u, global1.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_0 = ~firstTrailingBit(~46586u);
    var var_1 = Struct_2(select(~vec2<u32>(firstTrailingBit(23526u), global1.x), abs(~global2[_wgslsmith_index_u32(u_input.a | 10758u, 2u)]), arg_0.a.x));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1055f);
    return arg_1.a.zxw;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -606f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(1769f, 146f, true))))) * 347f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1030f - _wgslsmith_f_op_f32(f32(-1f) * -486f))))), 477f);
    let var_1 = !select(vec3<bool>(true, true, true), func_4(func_2(vec3<bool>(true, true, true)), func_2(vec3<bool>(true, true, true)), min(u_input.b >> (arg_1.x % 32u), countOneBits(1i))), vec3<bool>(true, any(vec3<bool>(false, false, true)) && true, true));
    let var_2 = Struct_1(select(vec4<bool>(!var_1.x, true | any(vec3<bool>(true, true, false)), !var_1.x & var_1.x, any(func_2(vec3<bool>(false, var_1.x, false)).a.yzy)), vec4<bool>(var_1.x, true, true, true), func_2(func_4(Struct_1(vec4<bool>(true, false, var_1.x, false)), Struct_1(vec4<bool>(var_1.x, var_1.x, var_1.x, false)), reverseBits(1i))).a));
    global0 = -956f;
    let var_3 = vec4<i32>(1i | (-22640i & -u_input.b), -2147483647i, _wgslsmith_div_i32(u_input.b << (~48242u % 32u), firstLeadingBit(u_input.b)), ~(-min(36039i, -2147483647i))) << ((vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_clamp_u32(global1.x, 0u, u_input.a)), ~global1.x, min(global1.x | 4294967295u, ~4294967295u), firstTrailingBit(max(74239u, 1u))) ^ vec4<u32>(37128u, 4294967295u, 6373u, (4294967295u >> (arg_1.x % 32u)) & firstLeadingBit(global1.x))) % vec4<u32>(32u));
    return var_1.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_5) -> Struct_3 {
    global1 = ~reverseBits(vec2<u32>(firstLeadingBit(4294967295u), reverseBits(abs(arg_1.d))));
    let var_0 = countOneBits(2147483647i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1706f * -930f));
    let var_2 = ~select(1u, firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-340f - -492f))) < -2492f);
    let var_3 = Struct_3(any(func_4(func_2(arg_0.ywz), func_2(vec3<bool>(true, arg_0.x, true)), -u_input.b).zx) == all(arg_1.a.a.yzx));
    return var_3;
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(13748u, firstLeadingBit(1u));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1526f);
    var var_1 = true;
    let var_2 = vec2<u32>(global1.x, 4294967295u);
    var var_3 = vec3<bool>(func_2(func_2(vec3<bool>(arg_0.a, !arg_0.a, true)).a.wwx).a.x, select(func_5(vec4<bool>(!arg_0.a, any(vec2<bool>(false, arg_0.a)), any(vec2<bool>(false, arg_0.a)), true), Struct_5(func_2(vec3<bool>(true, arg_0.a, arg_0.a)), Struct_2(vec2<u32>(24083u, 1262u)), Struct_2(vec2<u32>(var_2.x, 68891u)), _wgslsmith_dot_vec3_u32(vec3<u32>(24238u, 10921u, var_0), vec3<u32>(var_2.x, var_0, 0u)))).a, true, arg_0.a), select(select(!(arg_0.a || false), true, true), !arg_0.a, func_4(func_2(vec3<bool>(true, false, true)), func_2(!vec3<bool>(false, arg_0.a, false)), _wgslsmith_mult_i32(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-24145i, u_input.b, -2147483647i), vec3<i32>(-17981i, u_input.b, -35308i)))).x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(vec4<bool>(true || all(vec2<bool>(false, true)), !any(vec2<bool>(false, true)), func_1(Struct_2(vec2<u32>(u_input.a, 4294967295u)), vec3<u32>(49177u, global1.x, u_input.a)) || false, !all(vec2<bool>(true, false))), Struct_5(func_2(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), Struct_2(global2[_wgslsmith_index_u32(~u_input.a, 2u)]), Struct_2(vec2<u32>(0u, 60250u) << (global2[_wgslsmith_index_u32(u_input.a, 2u)] % vec2<u32>(32u))), 29161u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-u_input.b, _wgslsmith_mod_i32(min(-11897i, u_input.b), _wgslsmith_mult_i32(0i, u_input.b))) >> ((53728u | _wgslsmith_mod_u32(9654u, global1.x)) % 32u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-728f, -537f, -150f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-544f, 679f, 990f), vec3<f32>(-2000f, 160f, 1146f), vec3<bool>(true, var_0.a, var_0.a))))))), _wgslsmith_f_op_f32(-1f));
}

