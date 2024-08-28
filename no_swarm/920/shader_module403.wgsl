struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_1(vec3<f32>(-1000f, -1531f, 1000f), 0u, vec2<bool>(false, false)), false), Struct_4(Struct_1(vec3<f32>(-256f, 144f, -232f), 50988u, vec2<bool>(false, true)), false), Struct_4(Struct_1(vec3<f32>(-507f, 100f, 1428f), 4294967295u, vec2<bool>(false, false)), false), Struct_4(Struct_1(vec3<f32>(1190f, 323f, 162f), 4294967295u, vec2<bool>(false, false)), false), Struct_4(Struct_1(vec3<f32>(-1413f, 1000f, -391f), 4294967295u, vec2<bool>(true, false)), false), Struct_4(Struct_1(vec3<f32>(-202f, -863f, 1000f), 19968u, vec2<bool>(false, true)), true), Struct_4(Struct_1(vec3<f32>(721f, -784f, -327f), 10932u, vec2<bool>(true, true)), false), Struct_4(Struct_1(vec3<f32>(794f, -934f, 644f), 23820u, vec2<bool>(true, false)), false), Struct_4(Struct_1(vec3<f32>(345f, 479f, -1100f), 50951u, vec2<bool>(true, true)), true), Struct_4(Struct_1(vec3<f32>(880f, 1000f, 208f), 8935u, vec2<bool>(false, false)), false), Struct_4(Struct_1(vec3<f32>(2013f, -1436f, -1000f), 37079u, vec2<bool>(false, false)), false), Struct_4(Struct_1(vec3<f32>(-459f, 373f, 119f), 33203u, vec2<bool>(true, true)), true), Struct_4(Struct_1(vec3<f32>(1000f, 981f, -1041f), 4294967295u, vec2<bool>(false, true)), false), Struct_4(Struct_1(vec3<f32>(175f, -178f, 322f), 158958u, vec2<bool>(true, false)), false), Struct_4(Struct_1(vec3<f32>(-1117f, 564f, -324f), 1u, vec2<bool>(true, false)), true), Struct_4(Struct_1(vec3<f32>(-675f, 1988f, 2984f), 4603u, vec2<bool>(true, true)), false), Struct_4(Struct_1(vec3<f32>(-1363f, 1165f, 1790f), 0u, vec2<bool>(true, true)), true), Struct_4(Struct_1(vec3<f32>(-2192f, -417f, -585f), 98815u, vec2<bool>(false, false)), false), Struct_4(Struct_1(vec3<f32>(-681f, 280f, -835f), 4294967295u, vec2<bool>(true, true)), true), Struct_4(Struct_1(vec3<f32>(289f, 243f, 635f), 0u, vec2<bool>(false, true)), false), Struct_4(Struct_1(vec3<f32>(775f, 1000f, -1000f), 32544u, vec2<bool>(true, true)), false), Struct_4(Struct_1(vec3<f32>(344f, -241f, 222f), 80445u, vec2<bool>(false, false)), true), Struct_4(Struct_1(vec3<f32>(1331f, 577f, -1060f), 63983u, vec2<bool>(true, true)), true), Struct_4(Struct_1(vec3<f32>(1386f, -3109f, 202f), 9220u, vec2<bool>(true, true)), false));

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec3<i32>(-29227i, -39365i, 2147483647i), Struct_1(vec3<f32>(694f, 1145f, -153f), 4294967295u, vec2<bool>(false, true)), true, 2147483647i), Struct_3(vec3<i32>(-27270i, i32(-2147483648), 0i), Struct_1(vec3<f32>(335f, 986f, 618f), 8725u, vec2<bool>(false, false)), false, 23538i), Struct_3(vec3<i32>(1i, i32(-2147483648), -25004i), Struct_1(vec3<f32>(214f, -304f, -1715f), 0u, vec2<bool>(true, false)), false, -1i), Struct_3(vec3<i32>(0i, -35871i, -1i), Struct_1(vec3<f32>(-1494f, -1889f, -1713f), 142256u, vec2<bool>(false, true)), false, 0i), Struct_3(vec3<i32>(1i, i32(-2147483648), -33016i), Struct_1(vec3<f32>(-2635f, -1000f, -369f), 0u, vec2<bool>(false, true)), true, -28194i), Struct_3(vec3<i32>(18607i, 0i, i32(-2147483648)), Struct_1(vec3<f32>(-412f, 1000f, 859f), 20275u, vec2<bool>(false, true)), true, -17633i), Struct_3(vec3<i32>(20420i, i32(-2147483648), 2147483647i), Struct_1(vec3<f32>(514f, 688f, 966f), 4629u, vec2<bool>(false, true)), true, i32(-2147483648)), Struct_3(vec3<i32>(-36040i, -6674i, -65480i), Struct_1(vec3<f32>(1815f, -133f, 2112f), 0u, vec2<bool>(true, false)), false, -43368i), Struct_3(vec3<i32>(i32(-2147483648), 2147483647i, -12641i), Struct_1(vec3<f32>(-738f, 906f, 426f), 1u, vec2<bool>(true, false)), true, 1i), Struct_3(vec3<i32>(0i, 0i, 2147483647i), Struct_1(vec3<f32>(-861f, 180f, 182f), 16437u, vec2<bool>(true, false)), false, 1i), Struct_3(vec3<i32>(-29911i, 0i, -1i), Struct_1(vec3<f32>(-1311f, -1201f, 158f), 0u, vec2<bool>(false, false)), false, 51275i));

var<private> global3: Struct_5 = Struct_5(vec2<i32>(1i, -10328i), Struct_3(vec3<i32>(2147483647i, 1i, 15582i), Struct_1(vec3<f32>(-710f, 544f, -226f), 1u, vec2<bool>(true, false)), true, 0i), Struct_4(Struct_1(vec3<f32>(-618f, 112f, -269f), 29506u, vec2<bool>(true, true)), true), -35122i);

var<private> global4: array<vec3<u32>, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: f32) -> f32 {
    var var_0 = vec4<i32>(19427i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-48215i | u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, 1i), _wgslsmith_mult_i32(27673i, -1i), _wgslsmith_dot_vec2_i32(global3.b.a.zy, vec2<i32>(-46747i, 4570i))), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-19483i, -32957i, global3.d, global3.a.x), vec4<i32>(-28872i, 1i, -2147483647i, global3.d)))), abs(countOneBits(_wgslsmith_dot_vec2_i32(global3.a, ~vec2<i32>(-2147483647i, global3.d)))), u_input.c.x >> (92889u % 32u));
    let var_1 = reverseBits(vec2<u32>(~(~arg_1), ~arg_1 << (3927u % 32u))) << (vec2<u32>(7734u, 1u) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-1867f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(735f + arg_3))), -1466f)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> vec3<bool> {
    global4 = array<vec3<u32>, 21>();
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(global3.b.b.a.x, -242f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0)), _wgslsmith_f_op_vec2_f32(select(global3.b.b.a.zz, global3.b.b.a.xz, vec2<bool>(true, false))), vec2<bool>(arg_1.x, true))) + vec2<f32>(_wgslsmith_f_op_f32(func_3(1u, 28234u, false, -2386f)), _wgslsmith_f_op_f32(step(427f, arg_0))))), _wgslsmith_clamp_u32(~(global3.b.b.b ^ u_input.b.x) >> (~global1.x % 32u), 1u, 1u), global3.c.a);
    let var_1 = vec3<i32>(-6607i, _wgslsmith_add_i32(~(-5402i << (u_input.d.x % 32u)), _wgslsmith_add_i32(~(-1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global3.b.a.x, global3.d), global3.d ^ -26231i))), global3.b.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-242f, -581f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(abs(-1594f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-822f, -372f, -1000f, global3.b.b.a.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1524f, arg_0, arg_0, -878f))), vec4<f32>(1000f, var_0.a.x, _wgslsmith_f_op_f32(-2032f - var_0.a.x), var_0.c.a.x), !vec4<bool>(false, true, false, arg_1.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, _wgslsmith_f_op_f32(f32(-1f) * -373f), global3.c.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -452f))));
    global4 = array<vec3<u32>, 21>();
    return !(!select(vec3<bool>(true, var_0.c.c.x, any(vec3<bool>(true, false, arg_1.x))), !select(vec3<bool>(true, false, true), vec3<bool>(global3.c.b, var_0.c.c.x, true), false), any(vec3<bool>(true, var_0.c.c.x, var_0.c.c.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32) -> Struct_3 {
    global4 = array<vec3<u32>, 21>();
    var var_0 = Struct_5(global3.a, Struct_3(-vec3<i32>(global3.d, -11186i, u_input.a), global3.c.a, true, _wgslsmith_sub_i32(select(u_input.c.x, -34482i, !global3.b.c), ~_wgslsmith_mult_i32(2147483647i, global3.b.a.x))), global3.c, -_wgslsmith_mod_i32(-global3.a.x, u_input.c.x));
    var var_1 = reverseBits(1u >> (~(global3.b.b.b | (u_input.d.x & 1u)) % 32u));
    var var_2 = vec4<bool>(true, !any(select(select(vec4<bool>(var_0.c.a.c.x, false, global3.c.b, true), vec4<bool>(true, false, false, global3.b.c), vec4<bool>(true, var_0.c.a.c.x, global3.c.b, var_0.b.b.c.x)), !vec4<bool>(global3.b.b.c.x, var_0.b.c, true, var_0.b.b.c.x), true)), any(select(select(!vec3<bool>(global3.b.c, var_0.b.c, var_0.b.b.c.x), !vec3<bool>(false, global3.c.a.c.x, false), vec3<bool>(false, var_0.b.b.c.x, true)), !select(vec3<bool>(global3.c.b, global3.c.a.c.x, true), vec3<bool>(global3.b.b.c.x, false, true), global3.b.c), !(!vec3<bool>(true, global3.b.b.c.x, true)))), var_0.b.b.c.x);
    let var_3 = (-1i ^ (max(-37050i, _wgslsmith_mod_i32(21489i, -5320i)) << (global1.x % 32u))) > (i32(-1i) * -14615i);
    return Struct_3(vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(-2147483647i, u_input.a), -u_input.e), Struct_1(arg_0, ~1u, !select(vec2<bool>(var_0.c.a.c.x, false), !var_0.b.b.c, true)), true, u_input.e);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_5 {
    var var_0 = global3.c.a.a.x;
    global2 = array<Struct_3, 11>();
    global1 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(32755u, 1u), _wgslsmith_add_u32(4294967295u, 0u), abs(0u), ~57920u), ~(~vec4<u32>(0u, arg_0.b, 59679u, 9362u)), max(vec4<u32>(global3.b.b.b, global1.x, global3.b.b.b, global3.c.a.b) >> (vec4<u32>(global3.c.a.b, global1.x, u_input.d.x, global1.x) % vec4<u32>(32u)), vec4<u32>(72399u, 1u, 21626u, u_input.d.x) ^ _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(105002u, 31438u, 37810u, 0u)))), max(u_input.d, ~vec4<u32>(_wgslsmith_div_u32(u_input.d.x, u_input.b.x), 48736u, global3.c.a.b, countOneBits(31307u))));
    let var_1 = -u_input.c;
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1197f, global3.b.b.a.x, -1337f)), _wgslsmith_f_op_vec3_f32(arg_0.a + vec3<f32>(-1476f, -867f, -700f)))), arg_0.a, func_2(_wgslsmith_f_op_f32(floor(arg_0.a.x)), arg_0.c))))), _wgslsmith_f_op_f32(-arg_0.a.x));
    return Struct_5(var_2.a.zy, func_4(_wgslsmith_f_op_vec3_f32(global3.c.a.a - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) + _wgslsmith_f_op_vec3_f32(-arg_0.a))), _wgslsmith_f_op_f32(round(var_2.b.a.x))), Struct_4(func_4(var_2.b.a, _wgslsmith_f_op_f32(-arg_0.a.x)).b, u_input.e > (_wgslsmith_mod_i32(-27913i, var_1.x) ^ firstTrailingBit(-1i))), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b;
    global3 = func_1(var_0.b, -u_input.a);
    let var_1 = _wgslsmith_mod_u32(~36884u, global3.c.a.b | 59586u);
    let var_2 = Struct_5(_wgslsmith_mod_vec2_i32(u_input.c, select(-vec2<i32>(global3.b.d, 5278i), var_0.a.zy, var_0.b.c) | vec2<i32>(global3.d | -1i, func_4(global3.b.b.a, var_0.b.a.x).d)), global2[_wgslsmith_index_u32(4294967295u, 11u)], Struct_4(Struct_1(var_0.b.a, ~_wgslsmith_add_u32(var_1, 0u), !(!global3.b.b.c)), true & global3.b.b.c.x), -11741i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f + -295f));
    let var_4 = global2[_wgslsmith_index_u32(21797u, 11u)];
    let var_5 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.a * var_2.b.b.a), var_0.b.a) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-379f, -377f, 1657f), var_2.c.a.a))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.b.b.a.x, var_3))), -1007f);
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.b.b.a.x)) + -987f));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_5.b.a.yy);
}

