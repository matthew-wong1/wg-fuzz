struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, i32(-2147483648));

var<private> global2: array<Struct_2, 16>;

var<private> global3: i32;

var<private> global4: vec2<i32> = vec2<i32>(45510i, 2096i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: i32) -> vec2<i32> {
    var var_0 = select(vec2<bool>(true, any(vec2<bool>(true, 55179i > arg_2))), vec2<bool>(any(vec4<bool>(true, true, true, true)) & false, false || select(true, all(vec3<bool>(true, false, false)), any(vec4<bool>(false, true, false, false)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_1 = arg_1.wy;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-565f, _wgslsmith_f_op_f32(f32(-1f) * -189f))))), -370f)));
    global3 = _wgslsmith_mult_i32(~(i32(-1i) * -749i), i32(-1i) * -1i);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1371f, var_2, var_2)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 716f, -528f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_2, -1000f) - vec3<f32>(419f, 1200f, 1046f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, 233f))))), var_0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1916f, var_2, var_2))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -202f, var_2) - vec3<f32>(var_2, var_2, var_2)), vec3<f32>(var_2, var_2, 1198f))))));
    return vec2<i32>(select(_wgslsmith_sub_i32(arg_2, arg_0.x), ~(-48106i & arg_2) ^ global1.x, !var_0.x), reverseBits(arg_2));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global4 = ~func_3(u_input.a, arg_0, u_input.a.x);
    let var_0 = vec2<f32>(731f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(672f))));
    global1 = min(_wgslsmith_clamp_vec3_i32(u_input.a.zzw, vec3<i32>(-39049i, _wgslsmith_div_i32(global4.x, -2147483647i), _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global1.x, -42481i, u_input.a.x, global1.x)))), ~(~vec3<i32>(2147483647i, global1.x, u_input.a.x))), u_input.a.yzy);
    global3 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(select(-u_input.a, u_input.a, select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false)), vec4<i32>(i32(-1i) * -2147483647i, i32(-1i) * -30758i, _wgslsmith_sub_i32(1i, 1i), u_input.a.x)), _wgslsmith_mod_i32(~global4.x & global4.x, _wgslsmith_mod_i32(2147483647i >> (1u % 32u), 24134i)), global4.x), reverseBits(vec3<i32>(global1.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-51989i, 2147483647i, -43286i)), reverseBits(u_input.a.wyy)), -1i)));
    global4 = ~(vec2<i32>(_wgslsmith_sub_i32(1i, 1i), u_input.a.x) >> (_wgslsmith_div_vec2_u32((arg_0.yx ^ arg_0.zy) | ~vec2<u32>(arg_0.x, 4294967295u), arg_0.ww) % vec2<u32>(32u)));
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.x << ((arg_0.x >> (31635u % 32u)) % 32u), ~(0u ^ arg_0.x), ~_wgslsmith_mod_u32(4294967295u, 10402u))), reverseBits(countOneBits(arg_0.zxz))), 16u)];
}

fn func_1() -> u32 {
    let var_0 = func_2(~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 23675u, 35764u, 37926u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4984u, 4294967295u, 14677u, 3856u), vec4<u32>(33734u, 4294967295u, 18640u, 1u))));
    var var_1 = Struct_1(var_0.a.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1113f, 160f, -1000f, -1179f) * vec4<f32>(-2220f, 517f, 935f, 499f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1569f, -1000f, 882f, -1495f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, 1000f, -1222f, -787f))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-379f, -916f, 660f, 1138f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-615f, 1011f, -443f, 495f) - vec4<f32>(-187f, -914f, 498f, 1666f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(136f, 1045f, -1463f, 1000f) + vec4<f32>(342f, -285f, -904f, -661f))))));
    var_2 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1465f * 1398f)))), _wgslsmith_f_op_f32(-var_2.x));
    var var_3 = global2[_wgslsmith_index_u32(5783u, 16u)];
    return ~firstTrailingBit(0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 16>();
    var var_0 = true;
    var var_1 = vec2<u32>(func_1(), select(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~4152u, ~9658u, func_1()), vec3<u32>(1u, 1u, 1u)), 1u < func_2(vec4<u32>(1u, 1u, 1u, 1u)).a.a.x));
    let var_2 = select(vec3<bool>(select(true, !(var_1.x == 20732u), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)))), !any(vec3<bool>(true, true, false)), true), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, var_1.x > 68349u)), any(vec4<bool>(false, true, 4294967295u != var_1.x, any(vec2<bool>(false, false))))), 318u < var_1.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(429f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) * 220f), 1010f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1255f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -331f) + _wgslsmith_f_op_f32(max(-146f, 885f)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1375f, 454f, -328f, -1824f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-362f, 1000f, -125f, -816f), vec4<f32>(-426f, -1055f, 1638f, -204f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 240f, -656f, -1000f) * vec4<f32>(698f, 792f, -423f, -352f)), vec4<f32>(-2048f, -680f, -603f, 761f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-205f, -105f, 1670f, -1440f) + vec4<f32>(622f, -827f, -183f, -269f)))), any(vec4<bool>(true, true, any(vec4<bool>(true, var_2.x, var_2.x, false)), true)))));
    var var_4 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(func_2(~vec4<u32>(60988u, 47707u, 8731u, var_1.x)).a.a, ~(~vec4<u32>(1u, 8741u, var_1.x, 8695u)))), ~(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wwy, u_input.a.wwx), -32280i) >> (vec2<u32>(var_1.x, 4294967295u ^ var_1.x) % vec2<u32>(32u))));
    let var_5 = func_2(~vec4<u32>(reverseBits(var_4.a.a.x) | ~0u, 14633u, abs(var_4.a.a.x), ~_wgslsmith_add_u32(1u, 17228u))).a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -1000f);
}

