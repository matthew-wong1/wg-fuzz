struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-54885i, 0i, 0i);

var<private> global1: vec3<f32> = vec3<f32>(-827f, 2047f, -115f);

var<private> global2: u32;

var<private> global3: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = arg_1.b;
    var var_1 = arg_0 >> (0u % 32u);
    let var_2 = arg_1;
    global2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(~(4294967295u & u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(72500u, u_input.a, var_2.c.x, 12528u), vec4<u32>(105896u, 51034u, u_input.d, arg_1.c.x)) << (1u % 32u)), firstTrailingBit(~(~var_2.c.x))) << ((0u ^ arg_1.c.x) % 32u);
    global1 = vec3<f32>(_wgslsmith_div_f32(global1.x, 999f), _wgslsmith_f_op_f32(-global1.x), 1019f);
    return var_2.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_2(true, arg_0.b >= arg_0.b, abs(_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.d, u_input.d, 51161u, 0u)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_0.b), vec2<u32>(70591u, u_input.a)), 1u, ~30528u))));
    var var_1 = Struct_2(var_0.b, all(!vec3<bool>(true, false, 23936u == u_input.a)), ~(countOneBits(func_3(arg_0.a.x, Struct_2(var_0.b, false, vec4<u32>(4294967295u, 0u, 13664u, var_0.c.x)))) | vec4<u32>(countOneBits(arg_0.b), countOneBits(var_0.c.x), var_0.c.x, _wgslsmith_div_u32(4294967295u, var_0.c.x))));
    global0 = firstTrailingBit(-vec3<i32>(-2147483647i, -17327i, firstTrailingBit(-1309i)) >> (vec3<u32>(~4294967295u, _wgslsmith_mod_u32(var_1.c.x >> (30338u % 32u), select(0u, 0u, var_0.b)), max(var_0.c.x ^ var_0.c.x, arg_0.b)) % vec3<u32>(32u)));
    let var_2 = select(!select(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_1.b, false, true, arg_3.x), true), !select(vec4<bool>(true, arg_3.x, true, false), vec4<bool>(false, false, var_0.b, var_1.a), vec4<bool>(true, true, true, true)), !arg_3.x), vec4<bool>(true, any(vec2<bool>(select(var_0.a, false, var_0.a), var_0.b)), _wgslsmith_f_op_f32(trunc(-1383f)) >= _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(ceil(global1.x))), var_1.b), vec4<bool>(any(vec4<bool>(false, global1.x >= -173f, var_1.b, false)), !(!var_1.a) & arg_3.x, var_1.a, arg_1.x));
    let var_3 = arg_2.x;
    return false;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = -45142i;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~select(u_input.a, 43896u, true), _wgslsmith_mult_u32(arg_0.c.x, 4294967295u), 18318u, ~var_1.c.x) | ~abs(~vec4<u32>(arg_0.c.x, 4294967295u, arg_0.c.x, var_1.c.x)), abs(_wgslsmith_clamp_vec4_u32(abs(~arg_0.c), arg_0.c, func_3(-2147483647i, Struct_2(arg_0.b, false, vec4<u32>(var_1.c.x, arg_0.c.x, 66704u, u_input.a))) >> (arg_0.c % vec4<u32>(32u)))));
    var var_3 = -global0.x ^ ~u_input.b.x;
    let var_4 = arg_0;
    return Struct_1(~abs(_wgslsmith_clamp_vec2_i32(u_input.b.yx, vec2<i32>(global0.x, global0.x), vec2<i32>(-2147483647i, -56802i))) << (arg_0.c.zy % vec2<u32>(32u)), reverseBits(4294967295u));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-763f, 910f, -1508f, _wgslsmith_f_op_f32(f32(-1f) * -1266f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-170f, global1.x, -926f, 187f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -683f, global1.x, global1.x), vec4<f32>(1251f, -543f, global1.x, global1.x)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, global1.x, true))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 1710f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-457f * global1.x), _wgslsmith_f_op_f32(global1.x + 175f))))));
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x)))))), _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = func_4(Struct_2(all(vec3<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, true)), func_2(Struct_1(vec2<i32>(u_input.e, global0.x), 0u), vec3<bool>(false, false, false), vec4<i32>(u_input.c, global0.x, u_input.e, 2147483647i), vec3<bool>(false, false, false)))), false, ~(~vec4<u32>(83424u, u_input.a, u_input.a, 4294967295u)) ^ ~(~vec4<u32>(31346u, 4294967295u, 4294967295u, u_input.d))));
    var var_3 = var_0.xw;
    return StorageBuffer(66253u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-891f)), 1525f))), vec3<f32>(_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_div_f32(var_0.x, var_1.x), any(vec2<bool>(true, false)))), 726f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-309f, _wgslsmith_f_op_f32(trunc(-1774f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 24427u;
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, _wgslsmith_f_op_f32(1275f + 223f), global1.x));
    let x = u_input.a;
    s_output = func_1();
}

