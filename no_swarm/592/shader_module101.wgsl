struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
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

var<private> global0: array<vec4<u32>, 3>;

var<private> global1: bool = false;

var<private> global2: vec4<u32>;

var<private> global3: vec2<f32>;

var<private> global4: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-186f, 324f, -652f, -833f), vec4<f32>(-1137f, 431f, -273f, -2307f), vec4<f32>(-516f, 799f, 823f, 237f), vec4<f32>(-218f, 518f, -1693f, 1000f), vec4<f32>(452f, 555f, -487f, -776f), vec4<f32>(-2668f, 417f, 522f, 549f), vec4<f32>(-256f, 1222f, -600f, -1844f), vec4<f32>(-1000f, -583f, -457f, 150f), vec4<f32>(-897f, -1499f, 691f, -1000f), vec4<f32>(662f, -1361f, 2021f, -145f), vec4<f32>(703f, 1051f, 1494f, 684f), vec4<f32>(-392f, 1358f, -354f, -2867f), vec4<f32>(-1035f, -1000f, -345f, -530f), vec4<f32>(-276f, -1263f, -2215f, -174f), vec4<f32>(-1115f, 1000f, -1195f, 1000f), vec4<f32>(913f, -137f, -1055f, -893f), vec4<f32>(806f, -720f, -316f, -1014f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -305f);
    global4 = array<vec4<f32>, 17>();
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x))) + vec2<f32>(_wgslsmith_f_op_f32(-global3.x), -1247f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1478f, var_0), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1583f, -1952f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 1000f))))) * vec2<f32>(global3.x, _wgslsmith_f_op_f32(floor(-210f)))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 3u)];
    global2 = ~abs(vec4<u32>((u_input.b.x ^ 0u) | ~4294967295u, ~var_1.x, abs(17058u), _wgslsmith_mult_u32(77586u, min(0u, 84276u))));
    return 75596u;
}

fn func_2() -> f32 {
    global2 = vec4<u32>(~func_3(), global2.x, abs(reverseBits(firstLeadingBit(3320u))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(17613u, u_input.b.x, 1u, 39855u), vec4<u32>(26630u, 26541u, global2.x, 83686u), vec4<bool>(true, true, true, true)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, global2.x, global2.x, 25033u) >> (u_input.b % vec4<u32>(32u)), global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec4<u32>(~countOneBits(1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global2.yx, vec2<u32>(global2.x, 0u)), vec2<u32>(11368u, u_input.c.x)), firstTrailingBit(~4294967295u), global2.x)));
    let var_0 = _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(35035u, 44041u, u_input.c.x, global2.x)), ~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 12719u, global2.x, global2.x), vec4<u32>(u_input.c.x, global2.x, 39692u, global2.x)) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, global2.x, global2.x, 1u), global0[_wgslsmith_index_u32(u_input.b.x, 3u)]))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, 1046f), vec2<f32>(399f, -1000f)) - vec2<f32>(global3.x, -424f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-299f, 360f)))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, 453f))), global3.x)), global3.x), vec2<bool>(!var_1, !any(select(vec4<bool>(false, false, false, var_1), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, var_1, var_1, false))))));
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-505f * 188f))), Struct_1(var_2.x), _wgslsmith_dot_vec3_u32(~u_input.b.yxy ^ vec3<u32>(global2.x, 0u, var_0), vec3<u32>(u_input.b.x, 44914u, var_0 << (u_input.c.x % 32u)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global3.x)), Struct_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1333f + var_2.x))), _wgslsmith_mult_u32(global2.x, ~(~global2.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1331f, _wgslsmith_f_op_f32(step(var_2.x, 577f))))))), ~(~(~u_input.b.zzw)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) + -256f)))));
    return 2323f;
}

fn func_1() -> vec2<f32> {
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(func_2()) == 265f, false, !any(vec3<bool>(true, true, true)));
    var var_1 = vec3<u32>(global2.x, u_input.b.x, global2.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(382f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -802f))), global3.x, var_0.x))));
    let var_3 = Struct_1(1518f);
    global4 = array<vec4<f32>, 17>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-323f, var_3.a))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.a), 1f))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = vec2<bool>(false, !((-2147483647i <= (-28278i ^ u_input.a.x)) || (_wgslsmith_sub_u32(global2.x, global2.x) != global2.x)));
    var var_1 = ~10696u;
    let var_2 = 12733i;
    var var_3 = select(select(vec4<bool>(!any(vec4<bool>(false, false, var_0.x, var_0.x)), all(vec2<bool>(var_0.x, var_0.x)), all(select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), false)), true), vec4<bool>(_wgslsmith_f_op_f32(global3.x - arg_0.x) < _wgslsmith_f_op_vec2_f32(func_1()).x, var_0.x, var_0.x, any(vec2<bool>(false, var_0.x))), var_0.x), vec4<bool>(true, !any(vec3<bool>(var_0.x, true, false)) & true, var_0.x, all(!vec2<bool>(var_0.x, true))), !vec4<bool>(var_2 != ~u_input.a.x, !var_0.x & true, ~global2.x < ~global2.x, any(select(vec2<bool>(true, var_0.x), vec2<bool>(true, true), vec2<bool>(var_0.x, false)))));
    var var_4 = u_input.a;
    return Struct_1(-837f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -385f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.x, -374f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-913f, -427f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(426f, 614f)))))));
    var var_1 = Struct_2(func_4(vec2<f32>(_wgslsmith_f_op_f32(357f * _wgslsmith_f_op_f32(abs(554f))), _wgslsmith_f_op_f32(-var_0.a))), Struct_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(func_2()))), 140118u);
    var var_2 = max(select(vec4<i32>(u_input.a.x, -firstLeadingBit(u_input.a.x), u_input.a.x, -1i), _wgslsmith_mod_vec4_i32(reverseBits(~vec4<i32>(u_input.a.x, -12518i, -2147483647i, -1i)), vec4<i32>(0i, u_input.a.x, 1i, u_input.a.x)), select(vec4<bool>(any(vec4<bool>(true, false, true, true)), true, u_input.a.x <= 23959i, true), vec4<bool>(true, true, true, true), true)), abs(~(~vec4<i32>(u_input.a.x, u_input.a.x, -3845i, u_input.a.x))) | min(-firstTrailingBit(vec4<i32>(u_input.a.x, -28857i, u_input.a.x, u_input.a.x)), ~(~vec4<i32>(-40342i, u_input.a.x, -2147483647i, -1i))));
    var_1 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, global3.x), vec2<f32>(var_1.b.a, var_0.a)) + vec2<f32>(1922f, var_0.a)))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -1000f) * vec2<f32>(var_0.a, -1242f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, global3.x) * vec2<f32>(var_1.a.a, global3.x))))), 0u);
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-149f, 638f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), -1313f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zz);
}

