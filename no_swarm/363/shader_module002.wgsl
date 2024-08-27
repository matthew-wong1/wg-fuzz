struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1520f, -390f);

var<private> global1: array<u32, 29>;

var<private> global2: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(37319i, 10914i), vec2<i32>(-1i, 24571i), vec2<i32>(21548i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 17573i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-4398i, 2147483647i), vec2<i32>(19543i, i32(-2147483648)), vec2<i32>(-1424i, 38986i), vec2<i32>(78398i, 0i), vec2<i32>(-5680i, 0i), vec2<i32>(-37876i, -10566i), vec2<i32>(i32(-2147483648), 44850i), vec2<i32>(0i, 39654i), vec2<i32>(28191i, 1i), vec2<i32>(i32(-2147483648), 5429i), vec2<i32>(-21408i, -24435i), vec2<i32>(2147483647i, 0i), vec2<i32>(14486i, -49078i), vec2<i32>(35941i, 2147483647i), vec2<i32>(0i, 40903i));

var<private> global3: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(1000f, -417f, 216f, -2756f), vec4<f32>(346f, -1191f, 998f, -1713f), vec4<f32>(616f, 1348f, 204f, 1064f), vec4<f32>(-1641f, 769f, -207f, 404f), vec4<f32>(-760f, -1382f, -664f, 810f), vec4<f32>(1223f, -1395f, -710f, 130f), vec4<f32>(1186f, -576f, -1837f, 120f), vec4<f32>(633f, 1695f, 733f, 409f), vec4<f32>(-1505f, 1581f, 1660f, -1000f), vec4<f32>(-612f, -555f, 734f, 1061f), vec4<f32>(872f, -1619f, 235f, 520f), vec4<f32>(1732f, 503f, -392f, 664f), vec4<f32>(348f, -483f, 613f, 1458f), vec4<f32>(-671f, 232f, -805f, -416f), vec4<f32>(1111f, -873f, 1000f, 1860f), vec4<f32>(132f, 1000f, -478f, -1289f));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x));
    global3 = array<vec4<f32>, 16>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-911f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 144f) - _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(max(global0.x, 136f))) * vec3<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), -235f, _wgslsmith_f_op_f32(f32(-1f) * -919f)));
    let var_1 = ~u_input.a;
    var var_2 = arg_0.x;
    return -(i32(-1i) * -2147483647i);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1427f, -798f)) * _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(step(-983f, global0.x)))) * _wgslsmith_f_op_f32(global0.x - global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(927f * global0.x)))));
    let var_1 = select(true, true, func_3(max(global2[_wgslsmith_index_u32(u_input.a, 22u)], vec2<i32>(2147483647i, -2147483647i)), vec4<bool>(true, true, true, true), min(vec3<u32>(4294967295u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 29u)], 29u)]), vec3<u32>(u_input.a, 0u, global1[_wgslsmith_index_u32(4294967295u, 29u)])), global1[_wgslsmith_index_u32(19886u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)]) >= -(~(-68125i))) || ((-2147483647i >> (abs(countOneBits(u_input.a)) % 32u)) > _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-22509i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, 0i, -9703i)), 1i));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(u_input.a, 29u)], 0u, global0.x > _wgslsmith_f_op_f32(-var_0)), 22u)], vec2<i32>(~countOneBits(81174i), -55680i)), _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(20104i, -61210i, 38181i), ~vec3<i32>(1i, 29087i, -1i))) ^ (1i << (global1[_wgslsmith_index_u32(0u, 29u)] % 32u)), -31568i, -30807i);
    var var_3 = firstTrailingBit(var_2.x);
    global1 = array<u32, 29>();
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(1155f + -1109f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), -667f), arg_0.c)), any(vec3<bool>(true, true, true)))));
    var var_0 = ~(firstLeadingBit(vec4<i32>(-2147483647i, 19407i, reverseBits(-2147483647i), 1i)) ^ ~firstTrailingBit(vec4<i32>(1i, 0i, -19444i, 2147483647i)));
    var var_1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(28572u, _wgslsmith_sub_u32(arg_0.a, global1[_wgslsmith_index_u32(1u, 29u)]), (u_input.a | 26645u) ^ firstLeadingBit(33108u)), vec3<u32>(0u, firstTrailingBit(arg_0.a), ~(~global1[_wgslsmith_index_u32(84509u, 29u)])), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 29u)], u_input.a ^ _wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(1u, 29u)], u_input.a)) ^ vec3<u32>(global1[_wgslsmith_index_u32(18261u, 29u)], _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_0.a), ~vec2<u32>(4294967295u, arg_0.a)), ~61446u));
    var var_2 = arg_0;
    var_0 = abs(vec4<i32>(-(~4210i), var_0.x, var_0.x, _wgslsmith_mod_i32(select(var_0.x, -var_0.x, true), var_0.x)));
    return arg_0;
}

fn func_1() -> Struct_1 {
    global2 = array<vec2<i32>, 22>();
    let var_0 = func_4(Struct_1(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f)), _wgslsmith_f_op_f32(393f - _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(f32(-1f) * -1823f)));
    var var_1 = vec3<bool>(all(!vec3<bool>(any(vec3<bool>(false, false, true)), var_0.b <= var_0.c, true)), any(vec2<bool>(true, true)), -616f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) + -862f), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -428f))));
    let var_2 = var_0.b;
    var var_3 = vec3<u32>(_wgslsmith_add_u32(~var_0.a, ~global1[_wgslsmith_index_u32(var_0.a, 29u)]), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 13424u, var_0.a, global1[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 44794u), vec4<u32>(1u, global1[_wgslsmith_index_u32(var_0.a, 29u)], var_0.a, 36405u))), var_0.a) << (firstTrailingBit(~(~u_input.a)) % 32u), u_input.a);
    return Struct_1(reverseBits(var_3.x) ^ var_0.a, _wgslsmith_f_op_f32(global0.x * var_2), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(220f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-1340f, -1698f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(global0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * 1770f)));
    var var_1 = func_1();
    let var_2 = _wgslsmith_mult_u32(~u_input.a, var_1.a);
    global1 = array<u32, 29>();
    let var_3 = Struct_1(_wgslsmith_mult_u32(var_2, 39490u), _wgslsmith_f_op_f32(select(-1020f, _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), false)), -1890f);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, vec3<f32>(_wgslsmith_f_op_f32(-787f - var_1.c), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-430f - var_4.b)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 242f) * -410f))), ~abs(select(~vec2<u32>(var_4.a, var_4.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~var_1.a, 16u)])))));
}

