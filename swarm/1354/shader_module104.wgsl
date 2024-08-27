struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<i32>(72096i, 2147483647i), vec3<i32>(1i, -1i, -7574i)), Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(0i, 5831i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, -30598i), vec3<i32>(-64633i, 0i, -55041i)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(50745i, 0i, -12369i)), Struct_1(vec2<i32>(1i, -17052i), vec3<i32>(0i, -10374i, 2147483647i)), Struct_1(vec2<i32>(-36446i, 18094i), vec3<i32>(-10135i, -1i, -11778i)), Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(2147483647i, 54753i, -83761i)), Struct_1(vec2<i32>(-43628i, 2147483647i), vec3<i32>(-55647i, 2147483647i, -25997i)), Struct_1(vec2<i32>(24247i, -11954i), vec3<i32>(-1i, 34425i, 1i)), Struct_1(vec2<i32>(-11938i, -1i), vec3<i32>(2147483647i, 2147483647i, -1i)), Struct_1(vec2<i32>(-26802i, -20305i), vec3<i32>(1i, -1i, -21744i)), Struct_1(vec2<i32>(1i, 1i), vec3<i32>(66446i, 2147483647i, -1i)), Struct_1(vec2<i32>(-7318i, -16878i), vec3<i32>(-17332i, 1i, -13238i)), Struct_1(vec2<i32>(i32(-2147483648), -13771i), vec3<i32>(23568i, 0i, 0i)), Struct_1(vec2<i32>(-8101i, -41065i), vec3<i32>(1i, -9588i, 13413i)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(12803i, 1i, -10836i)), Struct_1(vec2<i32>(7395i, i32(-2147483648)), vec3<i32>(0i, -1i, 17057i)), Struct_1(vec2<i32>(2209i, 64780i), vec3<i32>(0i, 67582i, 25325i)), Struct_1(vec2<i32>(-5884i, -1i), vec3<i32>(13490i, -44084i, 59009i)), Struct_1(vec2<i32>(45318i, 0i), vec3<i32>(1i, 1i, 5531i)));

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(15343i, 5186i), vec2<i32>(-23981i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, 17392i), vec2<i32>(2147483647i, -4621i), vec2<i32>(-1i, -55690i), vec2<i32>(1i, -1i), vec2<i32>(0i, 23118i), vec2<i32>(0i, 21835i), vec2<i32>(2147483647i, -68075i), vec2<i32>(-1i, 2147483647i), vec2<i32>(34146i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(0i, 1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-16218i, 1i), vec2<i32>(-48232i, 8838i), vec2<i32>(1i, 2147483647i), vec2<i32>(-72133i, -14355i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<i32> {
    let var_0 = Struct_1(~vec2<i32>(abs(abs(-53391i)), -1i), select(vec3<i32>(_wgslsmith_div_i32(arg_0.d.a.x, 37170i), firstTrailingBit(i32(-1i) * -2147483647i), _wgslsmith_add_i32(~arg_0.b.b.x, u_input.a.x)), select(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(arg_2.x, 24130i, arg_2.x), !(!arg_1.a.x)), !global0[_wgslsmith_index_u32(~abs(4294967295u), 16u)]));
    let var_1 = ~1u >> (reverseBits(_wgslsmith_add_u32(abs(abs(51269u)), ~firstTrailingBit(1u))) % 32u);
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.a, vec2<i32>(1i, arg_2.x)), -vec2<i32>(var_0.a.x, 14671i)) >> (~(vec2<u32>(var_1, var_1) >> (vec2<u32>(26534u, var_1) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(u_input.a.x >> (var_1 % 32u), _wgslsmith_dot_vec3_i32(arg_0.d.b, vec3<i32>(arg_1.d.a.x, -1i, 2147483647i)))), ~arg_1.b.b);
    var var_3 = !all(arg_0.a);
    global2 = array<vec2<i32>, 20>();
    return arg_1.d.b & ~(~_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, arg_0.b.a.x, u_input.a.x), -arg_1.d.b));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = Struct_2(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), global1[_wgslsmith_index_u32(~4294967295u | (~_wgslsmith_mult_u32(6782u, 5621u) << (max(~17983u, arg_0) % 32u)), 20u)], vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1748f))), 470f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f * 1f))), Struct_1(u_input.a.yy, _wgslsmith_add_vec3_i32(func_2(Struct_2(vec2<bool>(true, true), global1[_wgslsmith_index_u32(arg_0, 20u)], vec3<f32>(-333f, 776f, 1326f), Struct_1(global2[_wgslsmith_index_u32(arg_0, 20u)], u_input.b.wyz)), Struct_2(vec2<bool>(false, false), global1[_wgslsmith_index_u32(arg_0, 20u)], vec3<f32>(737f, -1042f, -186f), Struct_1(vec2<i32>(u_input.b.x, -1i), vec3<i32>(330i, 16838i, u_input.a.x))), ~u_input.b.yww), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(u_input.b.x, 0i), -u_input.a.x))));
    let var_1 = 472f;
    var var_2 = firstLeadingBit(firstTrailingBit(12130u));
    return arg_0;
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_2(!vec2<bool>(!all(vec4<bool>(false, true, false, true)), select(u_input.b.x, u_input.b.x, true) < -26716i), global1[_wgslsmith_index_u32((~(arg_0 >> (arg_0 % 32u)) & 4294967295u) & arg_0, 20u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1199f, 1000f, -960f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(485f, -1000f, 1306f) * vec3<f32>(733f, 1348f, 372f)), all(vec3<bool>(true, true, false))))) - vec3<f32>(183f, -1896f, _wgslsmith_f_op_f32(ceil(1000f)))), global1[_wgslsmith_index_u32(arg_0 << (max(arg_0, arg_0) % 32u), 20u)]);
    let var_1 = 1u;
    let var_2 = var_0.c.x;
    global0 = array<vec3<bool>, 16>();
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c, var_0.c)))), _wgslsmith_f_op_vec3_f32(step(var_0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-726f, _wgslsmith_f_op_f32(max(var_0.c.x, -330f)), 1433f) - vec3<f32>(_wgslsmith_f_op_f32(403f * -1008f), -601f, -1000f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1699f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-2147483647i) << (_wgslsmith_sub_u32(func_1(reverseBits(1u)), 1u) % 32u);
    global1 = array<Struct_1, 20>();
    var var_1 = Struct_2(vec2<bool>(36173u < abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 39490u), vec4<u32>(33198u, 56808u, 4294967295u, 18877u))), true), global1[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(874f, -1114f, -551f), vec3<f32>(-614f, 101f, 1671f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-390f, 1000f, -107f), vec3<f32>(-187f, -313f, -1432f)))), vec3<f32>(_wgslsmith_f_op_f32(func_3(1u)), -120f, _wgslsmith_f_op_f32(select(762f, 527f, true))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(553f, 796f, -1000f), vec3<f32>(1499f, 1031f, -117f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1383f, -811f, -1000f), vec3<f32>(-1943f, -1051f, -838f), false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1438f, 1000f, -1174f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-848f, 997f, 287f), vec3<f32>(1676f, 110f, -1000f), vec3<bool>(true, false, true)))))), global1[_wgslsmith_index_u32(0u, 20u)]);
    var var_2 = Struct_2(var_1.a, Struct_1(vec2<i32>(var_1.d.a.x, -29852i), var_1.b.b), var_1.c, Struct_1(vec2<i32>((var_0 | -2147483647i) << (~56358u % 32u), func_2(Struct_2(vec2<bool>(false, var_1.a.x), global1[_wgslsmith_index_u32(1u, 20u)], vec3<f32>(-600f, var_1.c.x, var_1.c.x), Struct_1(var_1.d.a, vec3<i32>(11683i, var_0, 40210i))), Struct_2(var_1.a, global1[_wgslsmith_index_u32(38644u, 20u)], vec3<f32>(276f, 382f, var_1.c.x), Struct_1(u_input.b.yx, vec3<i32>(16225i, var_1.b.a.x, var_1.d.b.x))), u_input.b.yzw).x | -20139i), ~(~u_input.a)));
    let var_3 = Struct_2(var_1.a, Struct_1(~max(-vec2<i32>(2147483647i, 0i), global2[_wgslsmith_index_u32(51304u, 20u)]), vec3<i32>(-1i, var_0, var_2.b.a.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2.c, var_1.c, true)), var_2.c))), Struct_1(vec2<i32>(~(~u_input.a.x), countOneBits(-5545i)), var_2.b.b));
    global2 = array<vec2<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-745f + -1395f), (_wgslsmith_mult_vec4_u32(~vec4<u32>(19204u, 39053u, 44416u, 3554u), firstTrailingBit(vec4<u32>(50331u, 0u, 0u, 63162u))) & _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 45502u, 59906u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) & vec4<u32>(max(~13244u, 1u), 0u, 4294967295u, ~_wgslsmith_mod_u32(0u, 1u)), ~(min(~vec4<u32>(43046u, 31615u, 0u, 36283u), vec4<u32>(20863u, 1u, 58967u, 4294967295u)) << (select(vec4<u32>(66112u, 66356u, 12079u, 16754u), vec4<u32>(1u, 103845u, 54325u, 4294967295u), any(vec2<bool>(var_2.a.x, false))) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c.x, var_3.c.x, var_2.c.x), var_2.c)))), select(var_3.d.b.zx, func_2(var_3, Struct_2(vec2<bool>(true, false), Struct_1(u_input.b.zy, vec3<i32>(-2147483647i, 1i, 67648i)), _wgslsmith_f_op_vec3_f32(exp2(var_3.c)), Struct_1(u_input.a.yx, var_3.d.b)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.b.x, var_1.d.b.x), vec3<i32>(40831i, var_3.b.b.x, u_input.b.x)), 2147483647i, reverseBits(-13582i))).xz, !var_1.a.x));
}

