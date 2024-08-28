struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false));

var<private> global1: Struct_1;

var<private> global2: array<i32, 9>;

var<private> global3: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec3<i32> {
    return vec3<i32>(~35154i << (_wgslsmith_sub_u32(reverseBits(countOneBits(global1.d.x)), max(47536u, 1u)) % 32u), select(1i, ~(-9562i), true), _wgslsmith_dot_vec2_i32(firstLeadingBit(reverseBits(min(global1.b.yz, arg_1.d.yx))), vec2<i32>(~_wgslsmith_dot_vec3_i32(arg_1.b, arg_1.d), -global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.d, global1.d), 9u)])));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.b;
    let var_1 = ~1u;
    var var_2 = arg_0.a;
    var var_3 = arg_1;
    let var_4 = vec3<u32>(abs(~(1u << (abs(1u) % 32u))), var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(6719u, 0u, 75565u) & (arg_0.d.x ^ 0u), 1u, 39137u, ~_wgslsmith_mult_u32(var_3.c.d.x, 0u)), firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 22287u, var_3.c.d.x, arg_0.d.x), vec4<u32>(arg_1.a.d.x, 35585u, arg_1.c.d.x, 0u)), ~16667u, 72459u, 1u))));
    return _wgslsmith_f_op_f32(-900f + _wgslsmith_f_op_f32(-2292f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a * arg_1.c.a))), 758f)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_3 {
    global3 = global1.a;
    let var_0 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(global1.b ^ vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(global1.d.x, 9u)], -45522i), arg_1 | global1.b, select(vec3<i32>(global2[_wgslsmith_index_u32(arg_0, 9u)], u_input.a.x, global1.b.x), global1.b, true)) << (select(_wgslsmith_mod_vec3_u32(vec3<u32>(1278u, 0u, global1.d.x), vec3<u32>(54826u, arg_0, 0u)), abs(vec3<u32>(global1.d.x, 1u, 46899u)), vec3<bool>(false, true, false)) % vec3<u32>(32u)), vec3<i32>(32682i, global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global1.d.x, 1u), 9u)]), global1.b);
    global3 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(abs(729f)), ~func_3(Struct_2(vec3<bool>(true, true, true)), Struct_4(vec3<f32>(-153f, 1329f, global1.a), arg_1, vec3<u32>(global1.d.x, arg_0, global1.d.x), vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(global1.d.x, 9u)], 6135i), global2[_wgslsmith_index_u32(21697u, 9u)])), global2[_wgslsmith_index_u32(arg_0, 9u)], countOneBits(reverseBits(global1.d))), Struct_3(Struct_1(-703f, -global1.b, ~(~(-35125i)), ~vec2<u32>(12498u, 4294967295u)), Struct_2(vec3<bool>(true, false, true)), Struct_1(1000f, -min(arg_1, var_0), -select(20798i, 1i, true), global1.d))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), reverseBits(var_0), 594i << (reverseBits(_wgslsmith_sub_u32(arg_0, 0u)) % 32u), global1.d), Struct_2(vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), !select(true, false, false), false)), Struct_1(-224f, arg_1, -26225i, ~(~global1.d)));
    let var_2 = arg_0 & var_1.c.d.x;
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    var var_0 = arg_1.a.a;
    var var_1 = _wgslsmith_f_op_f32(select(-763f, arg_0.a, arg_1.b.a.x && true));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.a, 275f, arg_1.b.a.x)), arg_1.a.a, _wgslsmith_f_op_f32(-global1.a))) - vec3<f32>(1f, _wgslsmith_div_f32(arg_1.c.a, arg_0.a), -562f)));
    global3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a)));
    var var_3 = arg_0;
    return func_2(min(_wgslsmith_mod_u32(~(~1u), abs(arg_1.c.d.x)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_3.d.x, 20524u)), abs(select(vec2<u32>(33262u, 30826u), var_3.d, true)))), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.b, _wgslsmith_add_vec3_i32(vec3<i32>(58564i, var_3.c, arg_0.c), arg_1.a.b)), arg_0.b));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    global1 = arg_1.a;
    var var_0 = arg_1.b.a.x;
    var var_1 = select(_wgslsmith_clamp_vec2_u32(global1.d, reverseBits(~(~vec2<u32>(7652u, 12283u))), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.d.x, 4294967295u, arg_1.c.d.x), vec3<u32>(0u, 0u, 4294967295u)), abs(arg_2.d.x >> (26533u % 32u)))), countOneBits(~arg_2.d) ^ arg_2.d, !vec2<bool>(func_2(~arg_2.d.x, arg_2.b >> (vec3<u32>(arg_1.a.d.x, 0u, 118749u) % vec3<u32>(32u))).b.a.x, arg_1.b.a.x));
    global0 = array<vec4<bool>, 3>();
    var_1 = arg_1.a.d;
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.d.x, 4294967295u), vec2<u32>(global1.d.x, reverseBits(arg_2.d.x))), (reverseBits(arg_1.a.d) << (global1.d % vec2<u32>(32u))) >> (abs(arg_1.c.d) % vec2<u32>(32u))), 0u);
}

fn func_6(arg_0: vec4<bool>, arg_1: u32, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = func_1(func_1(Struct_1(_wgslsmith_f_op_f32(min(114f, -2716f)), abs(vec3<i32>(global2[_wgslsmith_index_u32(global1.d.x, 9u)], global1.c, u_input.b)), _wgslsmith_add_i32(_wgslsmith_mod_i32(global1.b.x, global2[_wgslsmith_index_u32(2581u, 9u)]), -1i | arg_2), vec2<u32>(arg_1 >> (4294967295u % 32u), 49028u)), func_2(~global1.d.x << ((global1.d.x | global1.d.x) % 32u), ~global1.b)).a, func_1(func_2(abs(global1.d.x), global1.b).c, func_2(63073u << (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, arg_1, 0u, arg_1), vec4<u32>(1u, global1.d.x, 16798u, arg_1)) % 32u), (global1.b | global1.b) << (~vec3<u32>(1u, global1.d.x, arg_1) % vec3<u32>(32u))))).a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a)));
    global3 = 491f;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-954f, -256f))), global1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(434f, global1.a, var_0.a) * vec3<f32>(-393f, var_1, -502f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1490f, -1591f, -1000f), vec3<f32>(-1000f, var_1, 280f)), false)))))));
    let var_3 = vec4<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) * global1.a), _wgslsmith_f_op_f32(316f + var_2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_2.x))))))));
    return func_2(125939u, vec3<i32>(arg_2, -20673i, func_2(_wgslsmith_div_u32(var_0.d.x, global1.d.x), -vec3<i32>(u_input.b, 80613i, 22574i)).c.c ^ max(_wgslsmith_dot_vec3_i32(vec3<i32>(-6635i, -56191i, global1.c), vec3<i32>(var_0.b.x, 2147483647i, var_0.c)), ~(-8244i)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(global0[_wgslsmith_index_u32(global1.d.x, 3u)], firstLeadingBit(max(_wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(0u, 17208u)), func_5(-490f, func_1(Struct_1(global1.a, vec3<i32>(global1.b.x, u_input.b, global1.c), global1.c, vec2<u32>(global1.d.x, global1.d.x)), Struct_3(Struct_1(global1.a, vec3<i32>(u_input.b, global1.b.x, 0i), global2[_wgslsmith_index_u32(global1.d.x, 9u)], vec2<u32>(global1.d.x, global1.d.x)), Struct_2(vec3<bool>(true, true, true)), Struct_1(global1.a, vec3<i32>(1i, global1.b.x, 0i), global2[_wgslsmith_index_u32(5928u, 9u)], vec2<u32>(16484u, 29318u)))), Struct_1(global1.a, global1.b, 2147483647i, vec2<u32>(45564u, 1u))))), -u_input.b, true);
    global1 = var_0;
    let var_1 = Struct_1(var_0.a, var_0.b >> (~vec3<u32>(func_2(var_0.d.x, vec3<i32>(-1i, -31784i, u_input.a.x)).a.d.x, var_0.d.x, ~var_0.d.x) % vec3<u32>(32u)), var_0.c, vec2<u32>(28527u, func_6(select(select(vec4<bool>(true, true, false, true), global0[_wgslsmith_index_u32(31098u, 3u)], true), vec4<bool>(true, true, true, true), !global0[_wgslsmith_index_u32(var_0.d.x, 3u)]), _wgslsmith_sub_u32(1u, global1.d.x) << (10873u % 32u), 1i, func_1(var_0, func_1(var_0, Struct_3(var_0, Struct_2(vec3<bool>(true, true, false)), var_0))).b.a.x).d.x));
    let var_2 = func_2(49999u, vec3<i32>(var_0.c, ~global2[_wgslsmith_index_u32(58648u, 9u)], ~abs(u_input.a.x))).c.a;
    let var_3 = var_1.d.x;
    var var_4 = ~var_1.b.zz;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(vec2<u32>(1u, 1u))), -123f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(897f, 2580f)), vec2<f32>(global1.a, var_2))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a, 1076f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1445f, 705f)))))))), _wgslsmith_mod_u32(58270u, _wgslsmith_div_u32(_wgslsmith_mult_u32(10307u, func_2(0u, var_1.b).a.d.x), var_3)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1047f, -179f, var_0.a), vec3<f32>(global1.a, global1.a, 1133f), vec3<bool>(true, true, false))))))));
}

