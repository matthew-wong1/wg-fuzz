struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(0u, 101955u, 1u, 992u, 13274u, 24812u, 3082u, 1u, 0u, 0u, 1u, 31091u, 1u, 11519u, 1u, 4294967295u, 43048u, 0u, 9461u, 84772u, 4294967295u);

var<private> global1: array<f32, 28> = array<f32, 28>(-182f, -576f, 355f, -1131f, 2037f, -659f, -1479f, 595f, -752f, 1902f, -966f, -361f, 860f, -935f, -1591f, 1382f, 1000f, 1004f, -1000f, 821f, -280f, 591f, -1008f, 126f, 209f, 239f, -1000f, 1000f);

var<private> global2: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(38399i, 0i, 2147483647i), vec3<i32>(-22407i, i32(-2147483648), 8973i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(0i, 0i, -11277i), vec3<i32>(21384i, 401i, 1i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(54105i, -67526i, 42148i), vec3<i32>(i32(-2147483648), -743i, -39894i), vec3<i32>(79295i, i32(-2147483648), -44463i), vec3<i32>(-1i, 2400i, 1143i), vec3<i32>(-65801i, 28014i, -32532i), vec3<i32>(-9680i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, 18221i, -1i), vec3<i32>(54171i, i32(-2147483648), -41577i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 21717i, 2147483647i), vec3<i32>(-1i, -663i, 1335i), vec3<i32>(2147483647i, 0i, -55992i), vec3<i32>(-17116i, -1i, 0i), vec3<i32>(2147483647i, 4005i, -5679i), vec3<i32>(-46523i, 35863i, 2147483647i), vec3<i32>(-33178i, -16008i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 13922i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-46514i, 0i, 1i), vec3<i32>(2147483647i, 0i, -29174i), vec3<i32>(-99760i, -14824i, 1i));

var<private> global3: bool;

var<private> global4: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(8328u, 4294967295u), vec2<u32>(13561u, 0u), vec2<u32>(1u, 17906u), vec2<u32>(112066u, 1u), vec2<u32>(4294967295u, 39835u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    var var_0 = Struct_1(vec2<i32>(0i >> (firstTrailingBit(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 21u)])) % 32u), -23043i));
    var var_1 = true;
    global1 = array<f32, 28>();
    global1 = array<f32, 28>();
    return global1[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c, u_input.c), 21u)], _wgslsmith_add_u32(u_input.c, 7600u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 28u)]))))) == global1[_wgslsmith_index_u32(firstLeadingBit(47984u), 28u)]), 28u)];
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: u32) -> vec2<bool> {
    global4 = array<vec2<u32>, 5>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(927f - 1158f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(18392u, 28u)], _wgslsmith_f_op_f32(-464f * global1[_wgslsmith_index_u32(arg_0.x, 28u)])) - 177f))));
    var var_1 = u_input.a.x;
    var var_2 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(select(1i, 28848i, false) << (_wgslsmith_sub_u32(arg_0.x, 5631u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 10669i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i)) & 2147483647i), _wgslsmith_sub_vec2_i32(u_input.a.zz, _wgslsmith_mult_vec2_i32(u_input.a.yy & u_input.a.yz, u_input.a.xx))));
    var var_3 = _wgslsmith_div_u32(~((0u << (arg_0.x % 32u)) | _wgslsmith_clamp_u32(59114u, global0[_wgslsmith_index_u32(arg_1, 21u)], u_input.c)), max(_wgslsmith_dot_vec3_u32(vec3<u32>(70527u, 0u, 1u), vec3<u32>(10004u, 1u, arg_2)), ~1u) ^ 0u) & 0u;
    return !select(vec2<bool>(true, !all(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) != global1[_wgslsmith_index_u32(~1u, 28u)]);
}

fn func_2() -> vec2<bool> {
    let var_0 = !select(vec2<bool>((0i | u_input.a.x) >= -u_input.a.x, _wgslsmith_f_op_f32(round(418f)) <= _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5388u, 21u)], 28u)]))), !func_3(~vec2<u32>(global0[_wgslsmith_index_u32(8158u, 21u)], 41790u), _wgslsmith_div_u32(u_input.b.x, 42318u), 39484u), func_3((vec2<u32>(52232u, 1u) ^ vec2<u32>(92469u, u_input.c)) | ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)], u_input.c), ~u_input.b.x, firstLeadingBit(0u)));
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(select(1u, u_input.c, true), 28u)], !(any(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)) && true), Struct_1(-u_input.a.yy), vec2<i32>(-_wgslsmith_div_i32(25660i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -1i), vec4<i32>(15531i, 2147483647i, u_input.a.x, u_input.a.x))), _wgslsmith_mod_i32(u_input.a.x, 0i)), Struct_1(select(u_input.a.yz, -vec2<i32>(u_input.a.x, 0i), all(vec2<bool>(false, true)))));
    var var_2 = ~vec4<i32>(2147483647i, var_1.e.a.x, -2147483647i, min(u_input.a.x, var_1.c.a.x) >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(80361u, 21u)], 1u), 0u >> (u_input.b.x % 32u)) % 32u));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(floor(var_1.a)), var_0.x, var_1.e, firstTrailingBit(firstLeadingBit(u_input.a.zy)), Struct_1(-_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -25399i), var_1.e.a), var_2.yx)));
    let var_4 = func_3(~(~_wgslsmith_div_vec2_u32(global4[_wgslsmith_index_u32(u_input.c, 5u)], global4[_wgslsmith_index_u32(0u, 5u)]) | ~global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, global0[_wgslsmith_index_u32(0u, 21u)]), 5u)]), abs(firstLeadingBit(0u & (4294967295u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18701u, 21u)], 21u)] % 32u)))), 1u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)]).x;
    return !(!vec2<bool>(!var_0.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = !(_wgslsmith_f_op_f32(func_1()) < global1[_wgslsmith_index_u32(~max(~global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.c), 28u)]);
    var var_2 = u_input.a.x;
    let var_3 = func_2();
    let var_4 = ~(~abs(~firstLeadingBit(4294967295u)));
    var var_5 = max(vec4<u32>(1u, var_4, reverseBits(u_input.b.x) ^ 1u, global0[_wgslsmith_index_u32(var_4, 21u)]) | vec4<u32>(select(34822u ^ u_input.c, var_4, true), ~global0[_wgslsmith_index_u32(17920u, 21u)], ~1u, 1u), _wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(var_4, 0u, 1u, var_4)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 11157u, u_input.c, var_4), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_4, 21u)], 21u)], 1u, var_4)), vec4<u32>(global0[_wgslsmith_index_u32(1482u, 21u)], 34799u, u_input.c, 4294967295u) & vec4<u32>(u_input.c, var_4, global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.c))) & abs(~(~vec4<u32>(53951u, u_input.c, 122153u, u_input.c))));
    var var_6 = vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(var_5.x), _wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(var_4, 21u)], var_5.x >> (1u % 32u)))), 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 28u)]) - -1000f));
    var var_7 = select(vec3<bool>(!any(vec4<bool>(false, false, false, var_1)), var_3.x, true), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(var_3.x, true, true), vec3<bool>(var_3.x, var_1, false)), vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(true, true, true))), vec3<bool>(!(firstTrailingBit(var_4) == _wgslsmith_div_u32(var_4, global0[_wgslsmith_index_u32(40447u, 21u)])), var_1, false));
    var_2 = _wgslsmith_sub_i32(-(~u_input.a.x), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, ~(~0u), 1601f);
}

