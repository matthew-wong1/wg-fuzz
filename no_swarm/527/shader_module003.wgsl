struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(228f, 454f, -1000f), vec3<f32>(-819f, 160f, -895f), vec3<f32>(-900f, -567f, 2438f), vec3<f32>(-104f, -570f, -664f), vec3<f32>(875f, 1189f, 630f), vec3<f32>(440f, 198f, 904f), vec3<f32>(-291f, 416f, 519f), vec3<f32>(107f, 1402f, -925f), vec3<f32>(-318f, 1648f, -1000f), vec3<f32>(115f, -306f, -406f), vec3<f32>(881f, -503f, -1258f), vec3<f32>(-544f, -583f, -777f), vec3<f32>(1522f, -128f, 2018f), vec3<f32>(-293f, -665f, -478f), vec3<f32>(-2604f, 260f, 1677f), vec3<f32>(-1505f, -864f, -287f), vec3<f32>(-1319f, 721f, -819f), vec3<f32>(-768f, -1998f, -1171f), vec3<f32>(-1488f, -211f, 684f));

var<private> global2: array<f32, 17> = array<f32, 17>(-401f, -1107f, -1000f, -1000f, -1159f, 1325f, -587f, 401f, -425f, 948f, 546f, -356f, -2015f, 577f, 885f, 1240f, -412f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], _wgslsmith_f_op_f32(trunc(-800f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1040f, 160f) + vec2<f32>(-1266f, 156f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.b, 17u)])))))));
    global1 = array<vec3<f32>, 19>();
    let var_1 = global0.zz;
    global1 = array<vec3<f32>, 19>();
    var var_2 = u_input.b;
    return firstTrailingBit(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.b, u_input.c, 95367u), vec4<u32>(u_input.b, u_input.c, 4294967295u, 8763u)))) ^ reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, u_input.a, u_input.c), vec4<u32>(4294967295u, u_input.c, 4294967295u, 0u) ^ vec4<u32>(u_input.a, 56298u, u_input.b, 1u)), ~(vec4<u32>(u_input.b, 24037u, u_input.c, u_input.a) | vec4<u32>(u_input.c, u_input.b, 1u, 3116u))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec4_u32(~abs(vec4<u32>(22041u, ~0u, 0u, firstTrailingBit(11456u))), func_3(select(global0.yx, !(!global0.zx), !(!global0.x))));
    var var_1 = var_0.zz;
    global0 = !select(vec4<bool>(select(global0.x, !global0.x, true), any(global0.zzx), global0.x, true), !(!(!vec4<bool>(false, true, global0.x, global0.x))), global0.x);
    global2 = array<f32, 17>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2, 385f)))))));
    return vec2<u32>(_wgslsmith_sub_u32(min(_wgslsmith_sub_u32(var_1.x, arg_1) | ~arg_0, _wgslsmith_dot_vec3_u32(var_0.wwz >> (var_0.yzw % vec3<u32>(32u)), func_3(vec2<bool>(global0.x, true)).xzz)), arg_1 >> (var_1.x % 32u)), var_1.x);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global1 = array<vec3<f32>, 19>();
    global1 = array<vec3<f32>, 19>();
    var var_0 = Struct_1(~u_input.a);
    var var_1 = ~abs(~vec2<u32>(arg_0.a, 0u) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.b), func_2(4294967295u, arg_0.a, global2[_wgslsmith_index_u32(1u, 17u)])) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.a, 17u)] - _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(min(_wgslsmith_div_u32(~var_0.a, 4294967295u), ~var_1.x), 17u)])));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(5058u, 17u)], -618f), vec2<f32>(global2[_wgslsmith_index_u32(arg_0.a, 17u)], global2[_wgslsmith_index_u32(var_0.a, 17u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(56089u, 17u)], -2337f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1958f, -337f))))))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = arg_2;
    global1 = array<vec3<f32>, 19>();
    global2 = array<f32, 17>();
    let var_1 = vec3<bool>(arg_0 | all(!vec4<bool>(true, false, true, global0.x)), all(vec3<bool>(true, firstTrailingBit(-29388i) < (i32(-1i) * -17417i), any(!global0.xx))), true);
    global1 = array<vec3<f32>, 19>();
    return StorageBuffer(-(~_wgslsmith_clamp_i32(17856i, -43808i, 45500i)) >> (_wgslsmith_sub_u32(~(~4294967295u), 4450u) % 32u), arg_1.a.x, global2[_wgslsmith_index_u32(1u | func_2(max(_wgslsmith_mod_u32(arg_2.a, 40795u), var_0.a), 59983u, 485f).x, 17u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 19>();
    var var_0 = _wgslsmith_div_i32(-max(i32(-1i) * -36156i, ~(-40803i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))) | -(_wgslsmith_add_i32(~18640i, _wgslsmith_clamp_i32(1i, 1611i, 948i)) << (u_input.b % 32u));
    var var_1 = global0.x;
    var var_2 = global0.wx;
    let var_3 = _wgslsmith_add_u32(firstTrailingBit(firstTrailingBit(select(~14783u, 9432u, any(vec4<bool>(global0.x, global0.x, var_2.x, global0.x))))), ~1u);
    var var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_3, 15444u, 139587u << (u_input.c % 32u)), ~vec3<u32>(u_input.a, ~var_3, ~21690u));
    let var_5 = vec3<bool>(~(-75961i) < max(abs(_wgslsmith_clamp_i32(8121i, -55603i, -54460i)), 1i), global0.x, u_input.c > 63296u);
    let x = u_input.a;
    s_output = func_4(any(!vec3<bool>(true, !global0.x, false)), func_1(Struct_1(_wgslsmith_mod_u32(27686u, 15903u) << (u_input.c % 32u))), Struct_1(u_input.a));
}

