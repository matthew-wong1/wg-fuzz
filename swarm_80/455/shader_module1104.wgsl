struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(59129u, 86122u, 0u);

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(47986i, Struct_1(1066f, 4294967295u)), Struct_4(1i, Struct_1(-1472f, 24712u)), Struct_4(-44913i, Struct_1(1410f, 41202u)), Struct_4(-6792i, Struct_1(-1088f, 4294967295u)), Struct_4(2147483647i, Struct_1(456f, 0u)), Struct_4(i32(-2147483648), Struct_1(948f, 4294967295u)), Struct_4(74221i, Struct_1(-1792f, 1u)), Struct_4(-27729i, Struct_1(-1029f, 0u)), Struct_4(30140i, Struct_1(210f, 4294967295u)), Struct_4(-1i, Struct_1(909f, 4294967295u)), Struct_4(66959i, Struct_1(-1049f, 61764u)), Struct_4(17881i, Struct_1(565f, 13812u)), Struct_4(-3263i, Struct_1(149f, 70822u)), Struct_4(18879i, Struct_1(264f, 4294967295u)));

var<private> global2: array<f32, 18>;

var<private> global3: array<f32, 7>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = array<Struct_4, 14>();
    var var_0 = min(_wgslsmith_mult_i32(~(~u_input.d.x), -(~17344i) << (~(~arg_0.a.b) % 32u)), firstTrailingBit(u_input.a.x) & _wgslsmith_mult_i32(23162i, countOneBits(reverseBits(u_input.d.x))));
    let var_1 = 73175u;
    global0 = vec3<u32>(_wgslsmith_div_u32(0u, 17768u), 18794u, arg_0.a.b);
    var_0 = u_input.e.x;
    return _wgslsmith_sub_u32(~(~u_input.b.x | u_input.b.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(global0.x, 4294967295u), vec2<u32>(0u, global0.x), vec2<bool>(false, false)), abs(vec2<u32>(49902u, arg_0.a.b)), vec2<u32>(24248u, var_1)), select(vec2<u32>(~arg_0.a.b, _wgslsmith_div_u32(u_input.c.x, 0u)), ~(~u_input.b.zw), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)))));
}

fn func_2(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.x, 7u)]), ~9610u)), vec3<f32>(-500f, global3[_wgslsmith_index_u32(global0.x, 7u)], _wgslsmith_f_op_f32(f32(-1f) * -527f)), Struct_2(Struct_1(global3[_wgslsmith_index_u32(~(~74905u), 7u)], 1u)), Struct_2(Struct_1(global2[_wgslsmith_index_u32(22390u, 18u)], ~(~global0.x))));
    global0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(0u, u_input.c.x, 46306u)) >> (~u_input.b.zzx % vec3<u32>(32u)), select(~min(vec3<u32>(17570u, 0u, 8278u), u_input.c.yyz), u_input.c.yxz, arg_0.x)), ~vec3<u32>(func_3(Struct_2(var_0.c.a)), _wgslsmith_mult_u32(u_input.c.x, 86551u) << ((u_input.c.x ^ 1u) % 32u), 1u ^ _wgslsmith_sub_u32(u_input.c.x, u_input.b.x)));
    return min(reverseBits(u_input.e), u_input.e);
}

fn func_1(arg_0: i32, arg_1: i32) -> StorageBuffer {
    global1 = array<Struct_4, 14>();
    var var_0 = func_2(select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, u_input.e.x <= -2147483647i, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), !(911f == global3[_wgslsmith_index_u32(u_input.b.x, 7u)]))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(1715f)), firstTrailingBit(_wgslsmith_clamp_u32(1u, 62263u, u_input.b.x))));
    let var_2 = var_1.a;
    var var_3 = u_input.b | vec4<u32>(1u, 1u, var_2.b, ~1u);
    return StorageBuffer(vec4<i32>(abs(~var_0.x) ^ (select(var_0.x, -1i, true) ^ countOneBits(var_0.x)), -select(_wgslsmith_clamp_i32(arg_1, var_0.x, -8558i), _wgslsmith_dot_vec3_i32(var_0.wyx, var_0.xzw), false), arg_0, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~u_input.b.x));
    let x = u_input.a;
    s_output = func_1(u_input.e.x, u_input.e.x);
}

