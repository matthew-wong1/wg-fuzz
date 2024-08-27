struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-782i, -32206i, 1i), vec3<i32>(-20305i, 11603i, -6638i), vec3<i32>(1i, 6656i, -88563i), vec3<i32>(12173i, -12782i, 14770i), vec3<i32>(-37152i, i32(-2147483648), -69971i), vec3<i32>(-27917i, -23658i, 1i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -30175i), vec3<i32>(i32(-2147483648), 0i, -14822i), vec3<i32>(-216i, 17727i, 2147483647i), vec3<i32>(23674i, 60484i, 1i), vec3<i32>(-22023i, 21240i, 1i), vec3<i32>(i32(-2147483648), -1i, 27947i), vec3<i32>(i32(-2147483648), -79789i, -46394i), vec3<i32>(46078i, -76372i, -13610i), vec3<i32>(11333i, 2147483647i, 0i), vec3<i32>(16922i, 2147483647i, 1i), vec3<i32>(-16910i, 1i, 2147483647i), vec3<i32>(-1i, 36669i, -6293i), vec3<i32>(22205i, 0i, 0i), vec3<i32>(0i, 0i, -3709i), vec3<i32>(-1i, -36013i, 2147483647i), vec3<i32>(2147483647i, -23027i, 2883i), vec3<i32>(1380i, -54042i, 64389i), vec3<i32>(0i, i32(-2147483648), -8671i), vec3<i32>(23416i, i32(-2147483648), -1i), vec3<i32>(38557i, -23707i, 44819i));

var<private> global1: array<u32, 13>;

var<private> global2: array<vec4<f32>, 20>;

var<private> global3: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: u32) -> i32 {
    global0 = array<vec3<i32>, 27>();
    let var_0 = !(!(_wgslsmith_div_i32(-arg_0, _wgslsmith_mult_i32(arg_1.b, 20377i)) < arg_1.a));
    global0 = array<vec3<i32>, 27>();
    var var_1 = arg_1.c.b.c.a;
    var_1 = arg_1.c.b.d.a;
    return -arg_1.b;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1562f))))), _wgslsmith_f_op_f32(-1562f * _wgslsmith_f_op_f32(select(-1265f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1148f, -172f)), false))));
    var var_1 = vec4<i32>(_wgslsmith_div_i32(2147483647i, ~u_input.a), select(0i, -2147483647i, true), 1i, 2147483647i) ^ max(vec4<i32>(~1i, func_3(~2147483647i, Struct_5(u_input.a, u_input.a, Struct_3(76012u, Struct_2(vec2<bool>(true, true), global1[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)))), 39898u, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58875u, 13u)], 13u)], 69864u, 1u)), ~1u), -_wgslsmith_mod_i32(17608i, u_input.a), u_input.a), vec4<i32>(-6879i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 27u)], vec3<i32>(u_input.a, 11188i, 10007i)), 1i), -1i, u_input.a));
    let var_2 = Struct_5(var_1.x, max(var_1.x, select(-31575i, countOneBits(reverseBits(-53162i)), all(vec3<bool>(true, true, true)))), Struct_3(select(1u, abs(16547u), false), Struct_2(vec2<bool>(true, true), max(abs(global1[_wgslsmith_index_u32(2897u, 13u)]), _wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21410u, 13u)], 13u)])), Struct_1(vec3<bool>(true, false, true)), Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)))), _wgslsmith_sub_u32(~(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)])), reverseBits(abs(~4294967295u))), ~(~min(vec3<u32>(4294967295u, 102195u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2148u, 13u)], 13u)]) & vec3<u32>(50122u, global1[_wgslsmith_index_u32(93230u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), firstTrailingBit(vec3<u32>(4798u, 0u, global1[_wgslsmith_index_u32(47798u, 13u)])))));
    var_1 = vec4<i32>(_wgslsmith_add_i32(-17241i, _wgslsmith_add_i32(~34052i, -u_input.a)), var_1.x, -var_2.b, reverseBits(firstTrailingBit(~(-2147483647i))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1898f * -422f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-970f - -577f), -844f)))) - -1334f);
    return ~var_2.e.x & firstTrailingBit(26473u);
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> vec4<i32> {
    global0 = array<vec3<i32>, 27>();
    var var_0 = vec4<f32>(arg_1.x, -317f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f), 843f), _wgslsmith_f_op_f32(sign(arg_1.x)));
    let var_1 = func_2();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-412f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) * _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_f32(round(-815f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), 975f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-327f)) * 507f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1410f * arg_1.x) - 433f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -342f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_div_f32(-1000f, 1143f))), var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, 1000f)), 1624f), _wgslsmith_div_f32(arg_1.x, var_2.x));
    return vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.a), max(u_input.a, _wgslsmith_mult_i32(max(u_input.a, u_input.a ^ u_input.a), -4394i)), 1i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 20>();
    let var_0 = select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, any(vec4<bool>(true, true, false, false)), false), -46458i != u_input.a);
    var var_1 = _wgslsmith_dot_vec4_i32(func_1(~(~(~1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 2314f, 354f), vec3<f32>(1577f, 1000f, 678f), var_0.xww)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(441f, -433f, -496f) + vec3<f32>(446f, 478f, 1639f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1065f, 1000f, -478f) * vec3<f32>(-1000f, -196f, 1178f)))))), vec4<i32>(_wgslsmith_div_i32(-u_input.a, u_input.a << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(865u, 13u)], 13u)] % 32u)) >> (global1[_wgslsmith_index_u32(abs(29567u), 13u)] % 32u), u_input.a, 1i, select(_wgslsmith_mod_i32(min(u_input.a, -71776i), 1i), u_input.a, !var_0.x | true)));
    var var_2 = Struct_2(select(vec2<bool>(any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0, false)), !var_0.x), var_0.wz, var_0.x & true), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(72263u, global1[_wgslsmith_index_u32(4294967295u, 13u)])), 13u)], 13u)], 13u)], 13u)], 13u)]), Struct_1(select(select(select(var_0.yyx, vec3<bool>(false, var_0.x, var_0.x), false), var_0.wyw, !var_0.x), !var_0.www, false)), Struct_1(var_0.yxz));
    var_2 = Struct_2(vec2<bool>(var_2.b > ~(~global1[_wgslsmith_index_u32(var_2.b, 13u)]), select(!(!var_0.x), select(true, true, var_0.x), var_2.d.a.x)), 1u, Struct_1(vec3<bool>(var_2.d.a.x, any(select(vec2<bool>(var_0.x, false), var_2.d.a.zx, false)), !var_2.d.a.x)), Struct_1(vec3<bool>(var_0.x, true, var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i ^ select(_wgslsmith_add_i32(u_input.a, -55868i), u_input.a, select(true, false, true)), u_input.a, -_wgslsmith_mod_i32(-u_input.a, u_input.a), u_input.a));
}

