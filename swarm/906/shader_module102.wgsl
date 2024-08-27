struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-13780i), Struct_2(-48567i), Struct_2(14011i), Struct_2(0i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(-8748i), Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(-60828i), Struct_2(13481i), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(0i), Struct_2(76736i), Struct_2(0i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(-8983i));

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<bool>(false, true), true, vec4<u32>(4294967295u, 0u, 48014u, 0u), vec4<i32>(2147483647i, 24896i, 0i, 0i)), Struct_1(vec2<bool>(true, false), false, vec4<u32>(0u, 23714u, 4294967295u, 0u), vec4<i32>(0i, 44245i, i32(-2147483648), -16139i)), Struct_1(vec2<bool>(true, true), false, vec4<u32>(4294967295u, 24460u, 26548u, 0u), vec4<i32>(4436i, -591i, 1i, -1916i)), Struct_1(vec2<bool>(false, false), false, vec4<u32>(1u, 4294967295u, 33478u, 2259u), vec4<i32>(2147483647i, 1i, -1i, 0i)), Struct_1(vec2<bool>(false, false), false, vec4<u32>(70958u, 39929u, 1u, 16958u), vec4<i32>(2147483647i, i32(-2147483648), -18201i, 12617i)), Struct_1(vec2<bool>(true, false), false, vec4<u32>(71373u, 60516u, 0u, 1u), vec4<i32>(-37765i, 40715i, -16247i, -68926i)), Struct_1(vec2<bool>(true, false), false, vec4<u32>(0u, 4294967295u, 15029u, 717u), vec4<i32>(1i, -45730i, 24264i, -1i)), Struct_1(vec2<bool>(true, false), true, vec4<u32>(1u, 48081u, 0u, 1u), vec4<i32>(1i, -31424i, 4671i, -1i)), Struct_1(vec2<bool>(false, true), false, vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<i32>(34984i, 23315i, -33173i, -1i)), Struct_1(vec2<bool>(false, false), true, vec4<u32>(4294967295u, 4294967295u, 0u, 8665u), vec4<i32>(1i, -6549i, -37598i, 1i)), Struct_1(vec2<bool>(false, false), true, vec4<u32>(55285u, 4294967295u, 79390u, 1u), vec4<i32>(11888i, -22218i, 23510i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), false, vec4<u32>(1u, 34097u, 48753u, 23012u), vec4<i32>(i32(-2147483648), 1i, -28480i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), true, vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<i32>(-1i, 1i, i32(-2147483648), 1i)), Struct_1(vec2<bool>(true, false), false, vec4<u32>(19604u, 1u, 19822u, 22271u), vec4<i32>(-27874i, 25568i, i32(-2147483648), 1i)), Struct_1(vec2<bool>(true, true), true, vec4<u32>(0u, 1u, 70569u, 4294967295u), vec4<i32>(-28696i, -2139i, -8550i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), false, vec4<u32>(4294967295u, 21643u, 4294967295u, 40712u), vec4<i32>(19745i, 0i, 26239i, 2147483647i)), Struct_1(vec2<bool>(true, true), true, vec4<u32>(4294967295u, 10210u, 0u, 26922u), vec4<i32>(i32(-2147483648), -26788i, 1i, 1i)), Struct_1(vec2<bool>(false, true), false, vec4<u32>(56422u, 10115u, 4294967295u, 1u), vec4<i32>(0i, 0i, 2147483647i, 36200i)), Struct_1(vec2<bool>(true, false), false, vec4<u32>(7084u, 39196u, 0u, 4294967295u), vec4<i32>(i32(-2147483648), 2147483647i, 0i, -12942i)), Struct_1(vec2<bool>(false, false), false, vec4<u32>(4294967295u, 31088u, 0u, 4294967295u), vec4<i32>(-57140i, 1i, i32(-2147483648), 62708i)), Struct_1(vec2<bool>(false, false), true, vec4<u32>(58799u, 0u, 57109u, 1u), vec4<i32>(1i, -1i, 64430i, -64325i)), Struct_1(vec2<bool>(false, false), false, vec4<u32>(12085u, 83409u, 1u, 50537u), vec4<i32>(72874i, 0i, 1i, 1i)), Struct_1(vec2<bool>(true, true), true, vec4<u32>(2568u, 1u, 10391u, 48310u), vec4<i32>(36112i, -24774i, 33065i, -1i)), Struct_1(vec2<bool>(true, false), false, vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<i32>(i32(-2147483648), 11799i, i32(-2147483648), 37733i)), Struct_1(vec2<bool>(true, true), true, vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<i32>(-2180i, -1i, i32(-2147483648), -1i)), Struct_1(vec2<bool>(true, true), true, vec4<u32>(41995u, 19075u, 5412u, 1u), vec4<i32>(2683i, -10454i, -13795i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), false, vec4<u32>(4294967295u, 13456u, 20892u, 4294967295u), vec4<i32>(-36901i, 70567i, i32(-2147483648), 20098i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1000f)) * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(83488u, 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b.x), 29u)] - _wgslsmith_div_f32(arg_1.x, 1288f))), any(vec2<bool>(true, !global3.x)))));
    global0 = array<f32, 29>();
    var var_1 = global2[_wgslsmith_index_u32(0u, 21u)];
    global4 = array<Struct_1, 27>();
    global2 = array<Struct_2, 21>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.b.x, 29u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_1.x)))));
}

fn func_2(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = Struct_1(global1.a, false, global1.c, -(~vec4<i32>(~(-26081i), -2147483647i, u_input.a.x, u_input.a.x)));
    global2 = array<Struct_2, 21>();
    var var_1 = any(!vec3<bool>(true, global3.x, global3.x)) != (((1u >> (u_input.b.x % 32u)) <= u_input.b.x) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(-589f, -795f, arg_0.x, 1116f), vec3<f32>(-620f, -252f, arg_0.x)))) != 955f));
    let var_2 = vec3<bool>(true, false, true);
    let var_3 = Struct_1(select(!select(select(vec2<bool>(true, global3.x), global1.a, global1.a), select(var_2.xy, var_0.a, vec2<bool>(false, global1.a.x)), !vec2<bool>(global1.b, global3.x)), var_2.xx, any(!var_2.yx)), global1.b, var_0.c, select(~vec4<i32>(0i, -global1.d.x, ~global1.d.x, 2147483647i), global1.d, select(vec4<bool>(!global3.x, true, true, true), select(vec4<bool>(false, true, true, var_2.x), select(vec4<bool>(false, true, var_0.b, var_2.x), vec4<bool>(true, false, global3.x, true), false), select(true, global1.b, false)), any(var_2.yz))));
    return var_3.d.yxz;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_i32(func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 29u)], -213f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1.c.x, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(555f, global0[_wgslsmith_index_u32(4294967295u, 29u)]))), !global3.x)), vec2<bool>(false, global3.x)))), _wgslsmith_add_vec3_i32(-_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, -2147483647i, global1.d.x)), u_input.a.zzy ^ u_input.a.wzy), vec3<i32>(-35804i, global1.d.x, global1.d.x)));
    var var_1 = Struct_2(~_wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, -20767i, -2147483647i), vec3<i32>(0i, -26982i, u_input.c), vec3<bool>(true, global3.x, false)), select(u_input.a.wxy, global1.d.wwz, vec3<bool>(false, global1.a.x, global1.b))) ^ firstTrailingBit(_wgslsmith_sub_i32(min(-1i, global1.d.x), firstLeadingBit(-14379i))));
    global3 = !(!vec2<bool>(global1.b, global1.a.x));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(377f + global0[_wgslsmith_index_u32(~10739u, 29u)]))));
    global3 = !vec2<bool>(global3.x, true);
    return Struct_1(select(vec2<bool>(!global1.b, global1.c.x == arg_1), global1.a, vec2<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, global3.x, global1.a.x, global1.a.x), global3.x)), true)), any(!vec3<bool>(all(vec4<bool>(true, global3.x, false, global1.a.x)), false, true)), arg_0, global1.d);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global4 = array<Struct_1, 27>();
    let var_0 = func_1(vec4<u32>(max(firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, 0u)), _wgslsmith_div_u32(24703u, ~arg_0.c.x)), 1u >> (firstLeadingBit(1u) % 32u), ~(~_wgslsmith_mod_u32(arg_0.c.x, 1u)), 0u), abs(global1.c.x ^ ~_wgslsmith_add_u32(arg_0.c.x, u_input.b.x)));
    global4 = array<Struct_1, 27>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 43447u, 14241u), 29u)] * global0[_wgslsmith_index_u32(firstLeadingBit(1u), 29u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1432f + global0[_wgslsmith_index_u32(32754u, 29u)]) - global0[_wgslsmith_index_u32(global1.c.x, 29u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 29u)], -2325f), global0[_wgslsmith_index_u32(3294u, 29u)])) - _wgslsmith_f_op_f32(sign(-202f)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 29u)])));
    global0 = array<f32, 29>();
    return func_1(countOneBits(~(~(vec4<u32>(52092u, arg_0.c.x, 5743u, 20102u) & var_0.c))), var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(select(false, all(!vec3<bool>(true, global3.x, false)), all(vec4<bool>(true, global1.b, false, true)) != false), global1.a.x), global1.b, vec4<u32>(global1.c.x, ~(~76793u), global1.c.x, 22119u), ~(~vec4<i32>(abs(2147483647i), ~2147483647i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 1i)));
    var var_1 = func_4(func_1(_wgslsmith_mod_vec4_u32(countOneBits(global1.c), reverseBits(vec4<u32>(25668u, 0u, 4294967295u, u_input.b.x))), 0u));
    let var_2 = !(!all(select(select(vec3<bool>(global3.x, var_1.b, var_0.a.x), vec3<bool>(var_1.a.x, global1.b, var_0.a.x), global3.x), vec3<bool>(true, true, true), global3.x)));
    var var_3 = 1f;
    var var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(global1.c.x, min(58534u, 77124u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), u_input.b)) >> (vec3<u32>(func_1(vec4<u32>(var_1.c.x, var_1.c.x, var_0.c.x, var_0.c.x), 93320u).c.x, 1u, select(90703u, 19806u, true)) % vec3<u32>(32u)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.c.x, 0u), vec3<u32>(global1.c.x, 11705u, 1u), vec3<u32>(1u, 0u, 1u)) & _wgslsmith_mod_vec3_u32(u_input.b, var_0.c.xzy)), !var_2), var_1.c);
}

