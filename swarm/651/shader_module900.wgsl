struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(1000f, 567f, 406f, -1196f), vec4<f32>(-187f, 1157f, 522f, -1836f), vec4<f32>(495f, -1000f, 1000f, 588f), vec4<f32>(-187f, -274f, -408f, -1000f), vec4<f32>(-1940f, -1093f, 727f, -508f), vec4<f32>(332f, -1157f, -1355f, 448f), vec4<f32>(-1000f, 1000f, 922f, -581f), vec4<f32>(1076f, -930f, -798f, 1582f), vec4<f32>(-319f, 946f, 1257f, -320f), vec4<f32>(-715f, 951f, 637f, 633f), vec4<f32>(-455f, 1273f, 1030f, -135f), vec4<f32>(1058f, 202f, -450f, -509f), vec4<f32>(863f, -2782f, 763f, 249f), vec4<f32>(-1000f, -1513f, -723f, 1040f), vec4<f32>(758f, 1000f, -329f, -663f), vec4<f32>(293f, 1983f, -186f, -1105f), vec4<f32>(1122f, -1145f, -231f, -409f), vec4<f32>(-1000f, 2178f, 1857f, -171f), vec4<f32>(343f, 355f, -106f, -1748f), vec4<f32>(-969f, 334f, 193f, 895f), vec4<f32>(533f, -555f, -816f, 252f), vec4<f32>(-1082f, 887f, 371f, 1859f), vec4<f32>(-472f, 407f, 1000f, -839f), vec4<f32>(-548f, 868f, 567f, 1395f), vec4<f32>(-270f, -693f, -743f, 1501f), vec4<f32>(-1775f, 110f, -852f, 704f), vec4<f32>(1234f, 102f, -1266f, -1560f), vec4<f32>(1000f, -1798f, -471f, 1222f), vec4<f32>(-1418f, 1256f, -739f, 186f), vec4<f32>(1183f, 854f, -1029f, 1000f), vec4<f32>(-1818f, -1439f, -326f, -2146f));

var<private> global1: array<u32, 17> = array<u32, 17>(34900u, 61854u, 0u, 1u, 0u, 71163u, 4294967295u, 39255u, 4294967295u, 0u, 12008u, 0u, 1u, 18664u, 4294967295u, 4294967295u, 13106u);

var<private> global2: array<i32, 32>;

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<f32>(894f, -1578f, -327f, 170f))), Struct_2(vec3<bool>(true, true, false), Struct_1(vec4<f32>(122f, 2170f, 743f, 143f))), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<f32>(-1176f, 861f, 610f, 234f))), Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<f32>(-1594f, 956f, 666f, 231f))), Struct_2(vec3<bool>(true, false, false), Struct_1(vec4<f32>(-1154f, 406f, -683f, 215f))), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<f32>(1000f, 1629f, 1068f, 1242f))), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<f32>(-1000f, 1000f, -1213f, -1234f))), Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<f32>(733f, -1856f, 2378f, -1373f))), Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<f32>(-962f, -592f, 1480f, 2063f))), Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<f32>(431f, 2326f, 1540f, -1873f))));

var<private> global4: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(reverseBits(abs(u_input.a)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 29296u), 17u)]), arg_2);
    let var_1 = !vec4<bool>(false, all(!vec2<bool>(global4.a, false)), all(vec4<bool>(true, true, true, true)), any(select(select(global4.d, global4.d, vec4<bool>(true, false, global4.d.x, true)), vec4<bool>(arg_3.a.x, global4.d.x, false, arg_3.a.x), false)));
    var var_2 = firstTrailingBit(vec2<i32>(30762i, 2147483647i & _wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(40511i, global4.b.a))));
    global4 = Struct_4(global4.a, Struct_3(14314i, -1i, Struct_2(select(vec3<bool>(false, arg_3.a.x, false), !arg_3.a, global4.b.c.a), global4.b.c.b)), vec2<bool>(!(~var_0 >= _wgslsmith_add_u32(arg_1, arg_1)), true), global4.d);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.a.x) - _wgslsmith_div_f32(-1000f, -2964f));
    return global2[_wgslsmith_index_u32(~arg_1, 32u)] < firstTrailingBit(arg_0.x ^ global4.b.b);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_3(-65469i, -_wgslsmith_add_i32(-arg_0.x, i32(-1i) * -arg_0.x), Struct_2(global4.b.c.a, global4.b.c.b));
    let var_1 = any(var_0.c.a);
    let var_2 = global4.b.c.b.a.x;
    var var_3 = firstTrailingBit(~(~u_input.a)) | firstTrailingBit(23513u);
    var var_4 = select(u_input.a, _wgslsmith_div_u32(u_input.a >> (u_input.a % 32u), 1u), func_3(select(~vec4<i32>(var_0.a, 0i, 2147483647i, arg_0.x), vec4<i32>(-64201i, global2[_wgslsmith_index_u32(1u, 32u)], 0i, global4.b.a), global4.d) & vec4<i32>(13007i >> (1u % 32u), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(73891u, 17u)], 0u), 32u)], global4.b.a, var_0.a), u_input.a, u_input.a, Struct_2(vec3<bool>(any(vec4<bool>(true, var_1, global4.d.x, var_1)), global4.d.x, global4.a), global4.b.c.b)));
    return ~global1[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec2_u32(~vec2<u32>(59412u, 1u), vec2<u32>(global1[_wgslsmith_index_u32(0u, 17u)], 0u))), 17u)];
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(594f, arg_2.x, 1035f, 1321f))) * global0[_wgslsmith_index_u32(5618u, 31u)]) * vec4<f32>(_wgslsmith_f_op_f32(global4.b.c.b.a.x - _wgslsmith_f_op_f32(703f + 104f)), _wgslsmith_div_f32(-1819f, _wgslsmith_f_op_f32(min(-443f, arg_2.x))), 178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, _wgslsmith_f_op_f32(-690f * arg_1.x), _wgslsmith_div_f32(-636f, 300f), _wgslsmith_f_op_f32(f32(-1f) * -1349f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), -344f, -1550f, _wgslsmith_f_op_f32(min(-1367f, global4.b.c.b.a.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(30348u, 31u)]))), global4.b.c.a.x))));
    let var_1 = true;
    let var_2 = Struct_2(select(!select(global4.d.wwy, !vec3<bool>(true, false, var_1), var_1), vec3<bool>(149f > var_0.x, _wgslsmith_mult_i32(1i, global2[_wgslsmith_index_u32(arg_0.x, 32u)]) == ~(-1i), all(!global4.b.c.a)), vec3<bool>(all(select(vec3<bool>(true, false, false), global4.b.c.a, var_1)), true, !var_1)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_0.x, 31u)])))));
    global4 = Struct_4(!var_1, global4.b, !select(select(select(vec2<bool>(global4.a, true), var_2.a.xy, vec2<bool>(var_2.a.x, true)), vec2<bool>(var_1, var_2.a.x), !var_2.a.yy), select(select(vec2<bool>(var_2.a.x, var_2.a.x), var_2.a.yx, var_1), vec2<bool>(true, true), true), select(global4.d.xy, var_2.a.yz, var_2.a.yz)), global4.d);
    var var_3 = ~(arg_0 & _wgslsmith_mod_vec2_u32(~(~arg_0), ~firstLeadingBit(vec2<u32>(21668u, global1[_wgslsmith_index_u32(37038u, 17u)]))));
    return Struct_4(!(any(!global4.d.ww) | any(vec4<bool>(false, false, var_2.a.x, false))), global4.b, var_2.a.zx, global4.d);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32) -> vec4<u32> {
    var var_0 = global4.b.c;
    let var_1 = global4.a;
    let var_2 = func_4(vec2<u32>(35257u & func_2(select(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(53340u, 32u)], 0i), vec3<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a, 32u)], -32331i), false)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~arg_0, u_input.a, 4294967295u), ~reverseBits(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], global1[_wgslsmith_index_u32(1u, 17u)], 0u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.a.xxz))), var_0.b.a.ww);
    var var_3 = Struct_4(!(!all(global4.d)), global4.b, !var_0.a.yx, var_2.d);
    let var_4 = -max(-2147483647i, _wgslsmith_mult_i32(-21242i, ~1i));
    return ~vec4<u32>(max(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, global1[_wgslsmith_index_u32(arg_0, 17u)]))), 1u >> (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u)), arg_0 ^ ~(~31718u), arg_0, _wgslsmith_add_u32(23551u, u_input.a));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = global4.d.wx;
    let var_1 = arg_0.xzw;
    var var_2 = Struct_2(func_4(vec2<u32>(43977u, _wgslsmith_add_u32(~arg_3.x, 16656u)), _wgslsmith_f_op_vec3_f32(-arg_2.c.b.a.yxw), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(299f, -1270f) - vec2<f32>(arg_2.c.b.a.x, 1000f)), _wgslsmith_div_vec2_f32(arg_2.c.b.a.wz, arg_2.c.b.a.wx), func_4(vec2<u32>(1u, arg_0.x), vec3<f32>(1075f, arg_1.x, arg_2.c.b.a.x), global4.b.c.b.a.zw).d.zx)), select(global4.b.c.a.zz, select(vec2<bool>(true, global4.d.x), arg_2.c.a.zx, vec2<bool>(global4.a, true)), vec2<bool>(true, global4.a))))).b.c.a, Struct_1(arg_2.c.b.a));
    let var_3 = max(-11366i, 0i);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c.b.a.x), arg_1.x, var_2.b.a.x, _wgslsmith_f_op_f32(-233f + arg_1.x))));
    return func_4(vec2<u32>(func_2(vec3<i32>(-1i, -43538i, var_3)), 46856u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), var_2.b.a.x, _wgslsmith_f_op_f32(min(1513f, global4.b.c.b.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_4(arg_3, arg_2.c.b.a.wxy, var_2.b.a.zz).b.c.b.a.wyx) * arg_1), var_2.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_4.a.yz, var_2.b.a.ww, vec2<bool>(true, global4.d.x))), _wgslsmith_f_op_vec2_f32(-var_4.a.xz))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 907f)))).b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(~func_1(~u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -885f), 1i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-257f - global4.b.c.b.a.x), _wgslsmith_f_op_f32(global4.b.c.b.a.x + 1359f), 782f) + global4.b.c.b.a.wwx), global4.b.c.b.a.xzw), global4.b, vec2<u32>(max(0u, 0u), ~2630u));
    let var_1 = vec3<i32>(abs(global2[_wgslsmith_index_u32(~4294967295u, 32u)]), -16135i, ~_wgslsmith_mod_i32(global4.b.b, global4.b.a << (1u % 32u))) ^ ~_wgslsmith_add_vec3_i32(select(~vec3<i32>(global4.b.a, global4.b.a, global4.b.b), _wgslsmith_mod_vec3_i32(vec3<i32>(22188i, 2147483647i, 1i), vec3<i32>(global2[_wgslsmith_index_u32(21459u, 32u)], -1i, global2[_wgslsmith_index_u32(u_input.a, 32u)])), false), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 32u)], i32(-1i) * -1i, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 32u)]));
    let var_2 = _wgslsmith_add_vec2_u32(func_1(abs(_wgslsmith_mult_u32(0u, 4294967295u)), _wgslsmith_div_f32(-2003f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.c.b.a.x + 177f) - global4.b.c.b.a.x)), -2147483647i).xz, abs(vec2<u32>(79221u & u_input.a, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])) >> (vec2<u32>(_wgslsmith_mod_u32(u_input.a, 38616u), 1u) % vec2<u32>(32u))));
    global4 = Struct_4(false, func_4(var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.a.xwz))), global4.b.c.b.a.wx).b, func_5(_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, 1u, global1[_wgslsmith_index_u32(1u, 17u)], u_input.a) ^ vec4<u32>(29462u, var_2.x, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(6145u, 17u)]), ~vec4<u32>(var_2.x, u_input.a, var_2.x, global1[_wgslsmith_index_u32(u_input.a, 17u)])), _wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 17u)], 4294967295u, 19845u, var_2.x) & vec4<u32>(0u, 1u, global1[_wgslsmith_index_u32(u_input.a, 17u)], 0u), min(vec4<u32>(0u, 12630u, 0u, 31925u), vec4<u32>(4294967295u, 18629u, global1[_wgslsmith_index_u32(0u, 17u)], var_2.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1368f, var_0.b.a.x, var_0.b.a.x)))), Struct_3(select(-5954i, max(10987i, global2[_wgslsmith_index_u32(4294967295u, 32u)]), true), _wgslsmith_mod_i32(_wgslsmith_mod_i32(global4.b.a, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 32u)]), -14035i), func_5(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(var_2.x, 17u)], 1u, 1u), _wgslsmith_div_vec3_f32(vec3<f32>(global4.b.c.b.a.x, global4.b.c.b.a.x, var_0.b.a.x), global4.b.c.b.a.zzz), func_4(var_2, vec3<f32>(global4.b.c.b.a.x, global4.b.c.b.a.x, -406f), var_0.b.a.xy).b, var_2)), ~vec2<u32>(49176u, global1[_wgslsmith_index_u32(0u, 17u)]) ^ (select(vec2<u32>(4294967295u, var_2.x), var_2, var_0.a.x) & vec2<u32>(u_input.a, u_input.a))).a.xz, select(select(func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 8364u), var_2, var_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(301f, var_0.b.a.x, -922f) - vec3<f32>(var_0.b.a.x, 210f, var_0.b.a.x)), global4.b.c.b.a.yx).d, select(!global4.d, global4.d, var_0.a.x), !select(vec4<bool>(var_0.a.x, false, true, false), global4.d, global4.a)), select(select(vec4<bool>(var_0.a.x, true, false, var_0.a.x), select(vec4<bool>(false, global4.c.x, global4.b.c.a.x, global4.b.c.a.x), global4.d, global4.b.c.a.x), var_0.a.x != false), !vec4<bool>(true, var_0.a.x, global4.a, global4.b.c.a.x), var_0.a.x), global4.d));
    let var_3 = ~vec3<u32>(~abs(1u), 156u, select(u_input.a, var_2.x & _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(67193u, 17u)], 0u), false));
    global3 = array<Struct_2, 10>();
    global3 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~18170u, ~global1[_wgslsmith_index_u32(u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.x, 17u)], 17u)], u_input.a, global1[_wgslsmith_index_u32(1u, 17u)], var_3.x), vec4<u32>(0u, 0u, 0u, 4294967295u)) % 32u), 17u)]), vec4<u32>(var_2.x & ~_wgslsmith_clamp_u32(var_3.x, u_input.a, var_3.x), func_1(~0u, -686f, _wgslsmith_mod_i32(2147483647i, -1i)).x & _wgslsmith_mod_u32(var_2.x, 11989u), 19422u, 1u));
}

