struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<f32, 13> = array<f32, 13>(-698f, -733f, 754f, 1000f, 906f, 168f, 927f, 2719f, 1491f, -542f, 236f, -293f, -307f);

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<u32>(1u, 79463u), vec2<f32>(-564f, -168f), vec2<bool>(false, false)), Struct_1(vec2<u32>(0u, 29940u), vec2<f32>(1000f, -638f), vec2<bool>(false, true)));

var<private> global3: array<f32, 8> = array<f32, 8>(1472f, 617f, -1407f, 1415f, 349f, 286f, -1000f, 1287f);

var<private> global4: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<u32>(67985u, 54459u), vec4<bool>(false, true, false, false), Struct_1(vec2<u32>(0u, 51287u), vec2<f32>(-322f, -360f), vec2<bool>(false, true)), Struct_1(vec2<u32>(37285u, 10443u), vec2<f32>(1000f, 211f), vec2<bool>(true, false)), Struct_1(vec2<u32>(42297u, 4294967295u), vec2<f32>(1000f, -1000f), vec2<bool>(false, true))), Struct_2(vec2<u32>(40893u, 4294967295u), vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(4294967295u, 8990u), vec2<f32>(2321f, -651f), vec2<bool>(true, true)), Struct_1(vec2<u32>(10261u, 0u), vec2<f32>(-844f, -971f), vec2<bool>(false, false)), Struct_1(vec2<u32>(0u, 18345u), vec2<f32>(-216f, 681f), vec2<bool>(false, true))), Struct_2(vec2<u32>(4294967295u, 22586u), vec4<bool>(true, false, false, true), Struct_1(vec2<u32>(22516u, 102608u), vec2<f32>(672f, -513f), vec2<bool>(true, false)), Struct_1(vec2<u32>(4294967295u, 69121u), vec2<f32>(848f, 677f), vec2<bool>(false, true)), Struct_1(vec2<u32>(0u, 11437u), vec2<f32>(-605f, -1843f), vec2<bool>(true, false))), Struct_2(vec2<u32>(1u, 32175u), vec4<bool>(false, true, true, true), Struct_1(vec2<u32>(0u, 17722u), vec2<f32>(-1580f, -2486f), vec2<bool>(true, false)), Struct_1(vec2<u32>(4294967295u, 1u), vec2<f32>(277f, -798f), vec2<bool>(true, true)), Struct_1(vec2<u32>(4294967295u, 432u), vec2<f32>(-1006f, -301f), vec2<bool>(true, false))), Struct_2(vec2<u32>(23641u, 39201u), vec4<bool>(false, true, false, true), Struct_1(vec2<u32>(43195u, 44853u), vec2<f32>(-390f, 1946f), vec2<bool>(true, true)), Struct_1(vec2<u32>(4294967295u, 18995u), vec2<f32>(555f, 762f), vec2<bool>(true, false)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(786f, -1055f), vec2<bool>(true, true))), Struct_2(vec2<u32>(1848u, 1u), vec4<bool>(true, true, false, false), Struct_1(vec2<u32>(4294967295u, 25660u), vec2<f32>(-274f, 1085f), vec2<bool>(true, false)), Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(-810f, -935f), vec2<bool>(true, true)), Struct_1(vec2<u32>(41704u, 49826u), vec2<f32>(-1371f, -1291f), vec2<bool>(true, true))), Struct_2(vec2<u32>(0u, 4294967295u), vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(52369u, 83466u), vec2<f32>(146f, -485f), vec2<bool>(false, true)), Struct_1(vec2<u32>(18104u, 0u), vec2<f32>(236f, 1058f), vec2<bool>(false, true)), Struct_1(vec2<u32>(77094u, 4294967295u), vec2<f32>(461f, -890f), vec2<bool>(true, true))), Struct_2(vec2<u32>(4294967295u, 10019u), vec4<bool>(false, false, true, false), Struct_1(vec2<u32>(45373u, 0u), vec2<f32>(-712f, 1000f), vec2<bool>(true, false)), Struct_1(vec2<u32>(4294967295u, 0u), vec2<f32>(1000f, 666f), vec2<bool>(false, false)), Struct_1(vec2<u32>(75959u, 26516u), vec2<f32>(-1196f, 1000f), vec2<bool>(true, false))), Struct_2(vec2<u32>(4294967295u, 66815u), vec4<bool>(false, false, true, true), Struct_1(vec2<u32>(0u, 40516u), vec2<f32>(843f, 296f), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, 20768u), vec2<f32>(-287f, -1547f), vec2<bool>(true, false)), Struct_1(vec2<u32>(6539u, 4294967295u), vec2<f32>(-245f, 389f), vec2<bool>(true, true))), Struct_2(vec2<u32>(0u, 25577u), vec4<bool>(true, false, false, true), Struct_1(vec2<u32>(4294967295u, 46103u), vec2<f32>(2441f, -1159f), vec2<bool>(true, true)), Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(-390f, -2461f), vec2<bool>(false, true)), Struct_1(vec2<u32>(0u, 13188u), vec2<f32>(-1407f, -456f), vec2<bool>(true, true))), Struct_2(vec2<u32>(1u, 0u), vec4<bool>(false, false, true, false), Struct_1(vec2<u32>(0u, 1u), vec2<f32>(-1000f, -1000f), vec2<bool>(false, true)), Struct_1(vec2<u32>(4294967295u, 0u), vec2<f32>(-338f, 732f), vec2<bool>(true, true)), Struct_1(vec2<u32>(4294967295u, 1u), vec2<f32>(-276f, -629f), vec2<bool>(false, true))), Struct_2(vec2<u32>(27210u, 64732u), vec4<bool>(false, true, true, true), Struct_1(vec2<u32>(4294967295u, 2326u), vec2<f32>(-701f, -1632f), vec2<bool>(false, true)), Struct_1(vec2<u32>(4294967295u, 72178u), vec2<f32>(877f, -1328f), vec2<bool>(false, false)), Struct_1(vec2<u32>(6111u, 4294967295u), vec2<f32>(144f, -399f), vec2<bool>(true, true))), Struct_2(vec2<u32>(54205u, 0u), vec4<bool>(false, true, false, true), Struct_1(vec2<u32>(1u, 5628u), vec2<f32>(-1846f, 234f), vec2<bool>(false, false)), Struct_1(vec2<u32>(35433u, 4294967295u), vec2<f32>(1000f, 127f), vec2<bool>(false, false)), Struct_1(vec2<u32>(4294967295u, 0u), vec2<f32>(-1331f, -564f), vec2<bool>(true, true))), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec4<bool>(true, true, false, false), Struct_1(vec2<u32>(0u, 23208u), vec2<f32>(-354f, 1000f), vec2<bool>(true, false)), Struct_1(vec2<u32>(32845u, 1u), vec2<f32>(-1539f, -153f), vec2<bool>(true, false)), Struct_1(vec2<u32>(25538u, 4294967295u), vec2<f32>(-703f, 1521f), vec2<bool>(true, false))), Struct_2(vec2<u32>(1u, 40470u), vec4<bool>(false, true, false, false), Struct_1(vec2<u32>(0u, 2748u), vec2<f32>(-319f, -755f), vec2<bool>(true, true)), Struct_1(vec2<u32>(97878u, 16467u), vec2<f32>(1000f, -1266f), vec2<bool>(false, true)), Struct_1(vec2<u32>(43607u, 43466u), vec2<f32>(-832f, -1955f), vec2<bool>(true, false))), Struct_2(vec2<u32>(0u, 1u), vec4<bool>(true, true, true, false), Struct_1(vec2<u32>(1u, 0u), vec2<f32>(-1000f, -664f), vec2<bool>(true, false)), Struct_1(vec2<u32>(1u, 4294967295u), vec2<f32>(709f, 109f), vec2<bool>(true, false)), Struct_1(vec2<u32>(4294967295u, 16801u), vec2<f32>(926f, 1255f), vec2<bool>(true, false))), Struct_2(vec2<u32>(1u, 26927u), vec4<bool>(true, false, false, false), Struct_1(vec2<u32>(1u, 1u), vec2<f32>(395f, 314f), vec2<bool>(true, false)), Struct_1(vec2<u32>(70158u, 4294967295u), vec2<f32>(-439f, -753f), vec2<bool>(false, false)), Struct_1(vec2<u32>(37690u, 3345u), vec2<f32>(-196f, 716f), vec2<bool>(false, false))));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = global4[_wgslsmith_index_u32(~max(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 8841u, 4294967295u) << (reverseBits(vec4<u32>(u_input.a, arg_2.a.x, u_input.a, 1u)) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(9346u, arg_2.a.x, arg_2.a.x, u_input.a))), countOneBits(reverseBits(arg_2.a.x >> (50388u % 32u)))), 17u)];
    global2 = array<Struct_1, 2>();
    let var_1 = max(-44829i, 0i);
    let var_2 = ~arg_2.a;
    let var_3 = Struct_1(arg_2.a, arg_2.b, vec2<bool>(all(!vec4<bool>(var_0.c.c.x, false, arg_2.c.x, arg_3.x)), ~var_2.x >= 7170u));
    return var_3.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_1 {
    global1 = !vec2<bool>(any(select(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, arg_0.c.x, arg_0.c.x), vec3<bool>(false, arg_1.d.c.x, arg_0.c.x)), vec3<bool>(false, true, true), arg_1.e.c.x & true)), any(!arg_1.b.yyz));
    var var_0 = Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32((vec4<u32>(1u, 0u, u_input.a, 4294967295u) | vec4<u32>(70730u, 26170u, 27843u, arg_1.d.a.x)) & ~vec4<u32>(arg_2.x, 1u, arg_1.c.a.x, arg_0.a.x), ~(~vec4<u32>(u_input.a, arg_1.e.a.x, 9590u, arg_2.x))), ~firstTrailingBit(arg_1.c.a.x)), select(select(arg_1.b, select(vec4<bool>(false, global1.x, true, arg_0.c.x), select(vec4<bool>(false, true, arg_1.d.c.x, arg_0.c.x), vec4<bool>(global1.x, arg_0.c.x, arg_1.b.x, arg_0.c.x), false), arg_1.d.c.x), arg_0.c.x || true), !select(vec4<bool>(true, true, true, arg_0.c.x), arg_1.b, true), select(arg_1.b, !vec4<bool>(arg_0.c.x, global1.x, arg_1.c.c.x, arg_1.c.c.x), !select(vec4<bool>(arg_0.c.x, false, false, arg_1.d.c.x), vec4<bool>(true, global1.x, arg_0.c.x, global1.x), vec4<bool>(global1.x, false, global1.x, true)))), arg_1.d, arg_0, Struct_1(~(~vec2<u32>(arg_1.e.a.x, arg_1.a.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_vec2_f32(func_2(arg_0.b.x, !global1.x, global2[_wgslsmith_index_u32(arg_0.a.x, 2u)], vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x))).x), !(!(!arg_1.d.c))));
    var var_1 = firstLeadingBit(u_input.a);
    let var_2 = 2147483647i;
    let var_3 = arg_3.x < -1456f;
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> bool {
    let var_0 = func_3(arg_2.e, arg_2, ~arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(-576f, arg_2.b.x, Struct_1(arg_2.a, arg_1.b, arg_2.d.c), arg_2.b.wxy))), arg_1.b)));
    let var_1 = _wgslsmith_f_op_f32(-897f * -1000f);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-655f))), -1000f, _wgslsmith_div_f32(811f, _wgslsmith_f_op_f32(round(-505f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1025f, -313f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.x)) - global3[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(783f, -2082f, global0[_wgslsmith_index_u32(u_input.a, 13u)], -219f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1154f, -1338f)), _wgslsmith_f_op_f32(round(-779f)), var_0.b.x, _wgslsmith_f_op_f32(exp2(arg_1.b.x))))), arg_2.b));
    let var_4 = func_3(func_3(arg_2.c, Struct_2(vec2<u32>(~arg_1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(52355u, arg_2.e.a.x, var_0.a.x), vec3<u32>(arg_2.a.x, 4294967295u, 39697u))), select(arg_2.b, select(arg_2.b, vec4<bool>(arg_0, false, var_0.c.x, arg_0), true), true), func_3(func_3(arg_1, Struct_2(vec2<u32>(4294967295u, 4294967295u), arg_2.b, Struct_1(vec2<u32>(55774u, var_0.a.x), vec2<f32>(global3[_wgslsmith_index_u32(35605u, 8u)], arg_1.b.x), arg_2.e.c), Struct_1(arg_2.c.a, vec2<f32>(-282f, var_3.x), vec2<bool>(true, true)), Struct_1(arg_1.a, var_3.xy, vec2<bool>(arg_1.c.x, false))), arg_2.e.a, var_2.xx), arg_2, _wgslsmith_mod_vec2_u32(arg_1.a, vec2<u32>(arg_2.a.x, 0u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.b.x, 157f))), Struct_1(~vec2<u32>(u_input.a, u_input.a), var_2.zx, !arg_1.c), arg_2.d), arg_2.a | firstTrailingBit(_wgslsmith_mult_vec2_u32(arg_2.e.a, vec2<u32>(47398u, 3887u))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(1343f + var_0.b.x))))), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~_wgslsmith_add_u32(var_0.a.x, arg_1.a.x)), 0u), 17u)], func_3(Struct_1(~vec2<u32>(0u, var_0.a.x) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 15603u), var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(471f, arg_2.d.b.x)))), !vec2<bool>(false, global1.x)), Struct_2(arg_2.d.a, !arg_2.b, Struct_1(vec2<u32>(4294967295u, u_input.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-368f, global3[_wgslsmith_index_u32(arg_1.a.x, 8u)]))), arg_1.c), func_3(func_3(arg_2.e, global4[_wgslsmith_index_u32(u_input.a, 17u)], arg_1.a, vec2<f32>(var_2.x, arg_2.c.b.x)), arg_2, var_0.a, _wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.b, false))), Struct_1(~arg_1.a, arg_1.b, vec2<bool>(var_0.c.x, true))), vec2<u32>(~4294967295u, 78786u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(255f, global0[_wgslsmith_index_u32(arg_1.a.x, 13u)]))))).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_1.a, vec2<f32>(global3[_wgslsmith_index_u32(var_0.a.x, 8u)], global3[_wgslsmith_index_u32(arg_2.d.a.x, 8u)]), var_0.c), Struct_2(vec2<u32>(0u, 0u), arg_2.b, arg_2.e, global2[_wgslsmith_index_u32(8060u, 2u)], arg_2.c), arg_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -1000f))).b - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(var_2.zy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -634f) - vec2<f32>(-473f, -382f)))))));
    return func_3(var_4, Struct_2(vec2<u32>(~arg_1.a.x ^ abs(arg_2.d.a.x), ~arg_1.a.x), select(vec4<bool>(func_3(Struct_1(var_0.a, var_4.b, arg_1.c), arg_2, arg_1.a, vec2<f32>(var_2.x, var_0.b.x)).c.x, u_input.a <= 15223u, arg_2.d.c.x, arg_1.a.x < 29692u), vec4<bool>(arg_0, global1.x, 12833u >= arg_1.a.x, true), !arg_2.c.c.x), Struct_1(countOneBits(vec2<u32>(1u, 4294967295u) & arg_2.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(arg_2.a.x, 8u)], -530f))), select(vec2<bool>(true, true), func_3(Struct_1(var_0.a, var_3.zw, arg_2.b.zx), Struct_2(vec2<u32>(4294967295u, u_input.a), arg_2.b, arg_2.c, Struct_1(vec2<u32>(4294967295u, arg_2.e.a.x), vec2<f32>(global3[_wgslsmith_index_u32(23187u, 8u)], global0[_wgslsmith_index_u32(arg_2.c.a.x, 13u)]), var_4.c), var_4), arg_2.d.a, vec2<f32>(-367f, var_0.b.x)).c, true)), Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(68053u, 75705u), vec2<u32>(var_0.a.x, var_0.a.x) ^ var_4.a), _wgslsmith_f_op_vec2_f32(arg_2.e.b * _wgslsmith_div_vec2_f32(vec2<f32>(1263f, -486f), var_3.ww)), vec2<bool>(false, var_0.c.x)), func_3(Struct_1(var_0.a << (vec2<u32>(arg_1.a.x, 36524u) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(var_3.xw - vec2<f32>(var_1, arg_2.c.b.x)), select(arg_1.c, arg_1.c, vec2<bool>(true, true))), global4[_wgslsmith_index_u32(countOneBits(66391u), 17u)], _wgslsmith_clamp_vec2_u32(arg_1.a, arg_1.a << (var_0.a % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.x, 4294967295u), arg_2.d.a)), arg_1.b)), _wgslsmith_div_vec2_u32(func_3(Struct_1(~var_0.a, _wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(34125u, 8u)], var_4.b.x), var_0.b), select(var_4.c, vec2<bool>(true, false), global1.x)), Struct_2(reverseBits(var_0.a), select(vec4<bool>(var_4.c.x, false, arg_0, true), arg_2.b, true), Struct_1(vec2<u32>(0u, 32410u), arg_1.b, vec2<bool>(false, global1.x)), func_3(var_4, Struct_2(vec2<u32>(55758u, arg_2.c.a.x), vec4<bool>(arg_0, arg_1.c.x, var_4.c.x, false), global2[_wgslsmith_index_u32(27284u, 2u)], Struct_1(arg_2.e.a, var_4.b, var_0.c), arg_2.d), arg_1.a, vec2<f32>(444f, -159f)), Struct_1(var_4.a, vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], var_2.x), arg_1.c)), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, var_4.a.x, 4294967295u), ~arg_1.a.x), vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 8u)], var_4.b.x), 620f)).a, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(var_4.a, vec2<u32>(1u, u_input.a)), ~arg_2.e.a), vec2<u32>(1u, _wgslsmith_sub_u32(12487u, 1u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-368f, 1166f), vec2<f32>(arg_2.d.b.x, var_3.x))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_3.zy * vec2<f32>(-1810f, arg_1.b.x)), vec2<f32>(1760f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_1) - _wgslsmith_f_op_vec2_f32(-var_2.yz)), func_3(Struct_1(arg_2.a, vec2<f32>(var_3.x, var_4.b.x), arg_1.c), Struct_2(vec2<u32>(20473u, arg_2.a.x), arg_2.b, global2[_wgslsmith_index_u32(arg_2.d.a.x, 2u)], var_4, Struct_1(var_0.a, vec2<f32>(-1000f, 3085f), arg_2.e.c)), vec2<u32>(0u, 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(207f, arg_1.b.x))).c)))).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~(~_wgslsmith_add_vec3_u32(vec3<u32>(25685u, 4294967295u, u_input.a) & vec3<u32>(u_input.a, u_input.a, 2318u), vec3<u32>(u_input.a, 10553u, 4294967295u) & vec3<u32>(4294967295u, 62321u, u_input.a))), vec3<u32>(u_input.a, 89718u, 22817u) << (~firstTrailingBit(vec3<u32>(0u, u_input.a, 20651u)) % vec3<u32>(32u)));
    var var_1 = Struct_2(firstLeadingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(47208u, 47819u), ~vec2<u32>(var_0.x, 1u))), !vec4<bool>(true, false, global1.x, all(vec3<bool>(true, true, true))), Struct_1(var_0.yx, vec2<f32>(1f, -1297f), vec2<bool>(!all(vec4<bool>(global1.x, global1.x, global1.x, false)), func_1(global1.x, global2[_wgslsmith_index_u32(1u, 2u)], global4[_wgslsmith_index_u32(0u, 17u)], vec2<i32>(-2147483647i, -2147483647i)) || (global1.x & global1.x))), global2[_wgslsmith_index_u32(countOneBits(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), var_0.yy), func_3(Struct_1(var_0.xx, vec2<f32>(1669f, -251f), vec2<bool>(global1.x, false)), Struct_2(vec2<u32>(var_0.x, u_input.a), vec4<bool>(false, global1.x, false, false), global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], Struct_1(var_0.xz, vec2<f32>(-1094f, global0[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(true, global1.x))), vec2<u32>(41217u, u_input.a), vec2<f32>(global0[_wgslsmith_index_u32(1u, 13u)], -897f)).a.x))), 2u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_0.x, ~95723u), 2u)]);
    global1 = var_1.c.c;
    global2 = array<Struct_1, 2>();
    global4 = array<Struct_2, 17>();
    global2 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_1.e.b.x)));
}

