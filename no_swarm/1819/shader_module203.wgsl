struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<i32>(-16584i, -37128i, 25051i), vec4<u32>(10554u, 40802u, 5342u, 0u), vec2<i32>(-614i, 2147483647i), false, 162153u), Struct_1(vec3<i32>(-57942i, 1i, 1i), vec4<u32>(99275u, 6467u, 1u, 6692u), vec2<i32>(0i, 13916i), false, 4294967295u), Struct_1(vec3<i32>(9787i, -8108i, -25373i), vec4<u32>(29191u, 0u, 50889u, 1u), vec2<i32>(1i, 2147483647i), true, 1u), Struct_1(vec3<i32>(0i, 2147483647i, -1i), vec4<u32>(42866u, 37324u, 57444u, 1u), vec2<i32>(-1i, 52256i), false, 1801u), Struct_1(vec3<i32>(42174i, -39005i, -8230i), vec4<u32>(17113u, 1u, 46417u, 29285u), vec2<i32>(42285i, i32(-2147483648)), true, 44557u), Struct_1(vec3<i32>(-10643i, 22079i, -11701i), vec4<u32>(0u, 0u, 8301u, 647u), vec2<i32>(2147483647i, 75008i), false, 4294967295u), Struct_1(vec3<i32>(36220i, -15354i, -64128i), vec4<u32>(33801u, 4294967295u, 0u, 29375u), vec2<i32>(-37482i, -6979i), false, 4294967295u), Struct_1(vec3<i32>(-34038i, 1i, 1i), vec4<u32>(30799u, 40146u, 12401u, 17263u), vec2<i32>(13595i, i32(-2147483648)), true, 0u), Struct_1(vec3<i32>(2147483647i, -5285i, 2147483647i), vec4<u32>(4294967295u, 0u, 1u, 14069u), vec2<i32>(13400i, 0i), false, 1u), Struct_1(vec3<i32>(7573i, i32(-2147483648), -1i), vec4<u32>(113724u, 0u, 5002u, 74443u), vec2<i32>(38193i, 2147483647i), true, 62747u), Struct_1(vec3<i32>(11311i, 0i, 0i), vec4<u32>(1u, 1u, 0u, 28606u), vec2<i32>(-1i, 13598i), false, 76496u), Struct_1(vec3<i32>(1i, -1i, -33891i), vec4<u32>(4294967295u, 4294967295u, 0u, 18153u), vec2<i32>(2147483647i, -23427i), true, 286u), Struct_1(vec3<i32>(-21202i, -1i, -1i), vec4<u32>(4294967295u, 29866u, 86777u, 425u), vec2<i32>(2147483647i, -1i), true, 4294967295u), Struct_1(vec3<i32>(21255i, 1i, -20561i), vec4<u32>(59885u, 1u, 66278u, 4294967295u), vec2<i32>(-1i, 0i), true, 4294967295u), Struct_1(vec3<i32>(-22952i, -1i, i32(-2147483648)), vec4<u32>(1u, 0u, 79500u, 1u), vec2<i32>(-31042i, 2147483647i), false, 60855u), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 21547i), vec4<u32>(27219u, 41677u, 22296u, 1u), vec2<i32>(-19363i, -30543i), true, 0u), Struct_1(vec3<i32>(5203i, -32157i, -2883i), vec4<u32>(60841u, 4294967295u, 43744u, 1u), vec2<i32>(-34923i, 38400i), false, 6534u), Struct_1(vec3<i32>(-42150i, i32(-2147483648), 0i), vec4<u32>(0u, 47992u, 4294967295u, 71119u), vec2<i32>(1i, 0i), true, 1u), Struct_1(vec3<i32>(51888i, -1i, 48870i), vec4<u32>(51306u, 5288u, 31102u, 1u), vec2<i32>(-15336i, -11979i), true, 9420u), Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), vec4<u32>(90807u, 33524u, 25453u, 41422u), vec2<i32>(1i, -1i), true, 4294967295u), Struct_1(vec3<i32>(1i, 24907i, 11239i), vec4<u32>(40896u, 30515u, 0u, 1u), vec2<i32>(22168i, i32(-2147483648)), true, 0u), Struct_1(vec3<i32>(5407i, i32(-2147483648), -64079i), vec4<u32>(4294967295u, 14252u, 1u, 34254u), vec2<i32>(-1i, i32(-2147483648)), true, 93775u), Struct_1(vec3<i32>(2147483647i, 0i, -1i), vec4<u32>(48764u, 17919u, 46662u, 73188u), vec2<i32>(1i, -39479i), true, 1u), Struct_1(vec3<i32>(-20954i, 27377i, 2147483647i), vec4<u32>(25832u, 18431u, 18354u, 32657u), vec2<i32>(1i, -2071i), true, 1u));

var<private> global1: array<Struct_3, 2>;

var<private> global2: array<i32, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32) -> vec2<f32> {
    var var_0 = firstLeadingBit(vec3<u32>(u_input.b, firstTrailingBit(~(~u_input.b)), ~abs(reverseBits(u_input.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1136f, arg_0, 846f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, 368f)))))))));
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    global1 = array<Struct_3, 2>();
    return var_1.xx;
}

fn func_2() -> bool {
    global2 = array<i32, 4>();
    let var_0 = 67331i << (~(~1u) % 32u);
    global0 = array<Struct_1, 24>();
    let var_1 = Struct_2(vec3<bool>(_wgslsmith_mod_u32(1u, firstLeadingBit(u_input.b)) >= u_input.b, true, false), Struct_1(vec3<i32>(-1i, -2147483647i, _wgslsmith_mod_i32(9887i, var_0)), abs(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) << (vec4<u32>(37788u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), vec2<i32>(global2[_wgslsmith_index_u32(select(u_input.b, 33108u, false), 4u)] >> (max(98436u, 1u) % 32u), ~(-var_0)), ((63248i << (u_input.b % 32u)) | -var_0) < -(~(-2147483647i)), 33454u), global0[_wgslsmith_index_u32(~43088u, 24u)], false);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1183f), _wgslsmith_mult_i32(2385i, 40926i))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(345f, -344f))))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(847f, 631f) + vec2<f32>(-155f, 1190f)), vec2<f32>(111f, -501f), vec2<bool>(false, var_1.a.x))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1166f)), !(!vec2<bool>(var_1.b.d, true)))))));
    return select(true & var_1.b.d, any(vec3<bool>(true, var_1.d, var_1.b.d)), true | !(!(144f <= var_2.x)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    let var_0 = vec3<u32>(arg_2.b.b.x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.b.x, u_input.b, arg_2.c.b.x) >> (arg_2.c.b.zww % vec3<u32>(32u)), arg_2.c.b.ywx), 1u), 1u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + -2761f))), 1f);
    global1 = array<Struct_3, 2>();
    let var_2 = countOneBits(arg_2.b.a.zz);
    global0 = array<Struct_1, 24>();
    return u_input.b;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1036f * -347f), 353f)), -400f, Struct_2(!vec3<bool>(false, func_2(), arg_1), Struct_1(vec3<i32>(arg_2.a.x, -30264i, arg_2.a.x), firstLeadingBit(arg_2.b), vec2<i32>(arg_3.x, i32(-1i) * -1i), all(vec3<bool>(arg_2.d, arg_1, false)), ~34081u), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, arg_2.b.x), arg_2.b.yy & arg_2.b.yw), 24u)], false), global1[_wgslsmith_index_u32(4294967295u << (~_wgslsmith_add_u32(arg_2.e, _wgslsmith_div_u32(u_input.b, arg_0)) % 32u), 2u)]);
    global0 = array<Struct_1, 24>();
    global1 = array<Struct_3, 2>();
    global2 = array<i32, 4>();
    var var_1 = Struct_2(vec3<bool>(arg_1, any(!(!vec4<bool>(arg_1, true, arg_2.d, false))), !all(select(vec4<bool>(true, arg_1, arg_2.d, true), vec4<bool>(arg_1, false, true, false), true))), global0[_wgslsmith_index_u32(4294967295u, 24u)], Struct_1(_wgslsmith_clamp_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(73533u, 4u)], 0i, arg_2.c.x), vec3<i32>(-97760i, arg_3.x, i32(-1i) * -2147483647i), select(vec3<i32>(0i, -1i, 0i) ^ vec3<i32>(global2[_wgslsmith_index_u32(82793u, 4u)], arg_2.a.x, global2[_wgslsmith_index_u32(0u, 4u)]), vec3<i32>(arg_3.x, u_input.a, 31007i), !vec3<bool>(arg_1, true, false))), vec4<u32>(1u, 8450u, 49822u, 1u), vec2<i32>(max(_wgslsmith_dot_vec2_i32(arg_3, vec2<i32>(u_input.a, -2147483647i)), ~(-34714i)), -_wgslsmith_add_i32(-2147483647i, 2147483647i)), true, _wgslsmith_add_u32(func_4(-292f, _wgslsmith_f_op_f32(-170f + -1278f), Struct_2(vec3<bool>(false, arg_1, arg_2.d), Struct_1(arg_2.a, vec4<u32>(15910u, 9490u, 41431u, 0u), vec2<i32>(-23529i, arg_3.x), arg_1, u_input.b), global0[_wgslsmith_index_u32(1u, 24u)], arg_2.d), global1[_wgslsmith_index_u32(26365u, 2u)]), 1u)), false);
    return var_0 >> ((_wgslsmith_dot_vec4_u32(~select(arg_2.b, vec4<u32>(56290u, arg_0, 1u, 8948u), vec4<bool>(arg_1, false, arg_2.d, arg_2.d)), ~var_1.c.b) ^ u_input.b) % 32u);
}

fn func_5(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-403f, 191f, -690f, 330f) * vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -214f), -569f, _wgslsmith_f_op_f32(-154f - -1297f), -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1290f))) * _wgslsmith_f_op_f32(-774f - _wgslsmith_f_op_f32(-978f + -1935f))), 1f, -288f));
    var var_1 = Struct_1(vec3<i32>(countOneBits(_wgslsmith_div_i32(u_input.a, -1651i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(~arg_1, 4u)], 61947i), -arg_2.b.a.x), i32(-1i) * -68856i), _wgslsmith_clamp_vec4_u32(~vec4<u32>(func_1(arg_3, arg_2.a.x, Struct_1(vec3<i32>(-28176i, -45152i, 0i), arg_2.b.b, vec2<i32>(arg_2.c.c.x, u_input.a), false, 19697u), vec2<i32>(arg_2.b.c.x, u_input.a)), 40726u, 85486u << (arg_2.c.b.x % 32u), abs(u_input.b)), arg_2.c.b, ~(~abs(arg_2.b.b))), _wgslsmith_clamp_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(66233u, 4u)], _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.b, 4u)], max(arg_2.b.c.x, -45091i), _wgslsmith_div_i32(arg_2.b.a.x, -5072i))), abs(~(vec2<i32>(arg_2.c.c.x, 57020i) & vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.b, 4u)]))), firstLeadingBit(arg_2.b.c ^ vec2<i32>(-7159i, u_input.a))), !(4294967295u > func_1(firstTrailingBit(60024u), arg_2.c.d, arg_2.b, abs(arg_2.b.a.zz))), ~u_input.b);
    let var_2 = global1[_wgslsmith_index_u32(func_4(var_0.x, -1112f, arg_2, Struct_3(var_0.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1109f) + _wgslsmith_f_op_f32(var_0.x - 449f)), false)), 2u)];
    var_1 = global0[_wgslsmith_index_u32(4294967295u, 24u)];
    global2 = array<i32, 4>();
    return StorageBuffer(vec4<i32>(~0i ^ global2[_wgslsmith_index_u32(0u, 4u)], 21057i, -6692i, -u_input.a | _wgslsmith_add_i32(4071i, var_1.a.x)) << (var_1.b % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(48546u, 24u)];
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    global2 = array<i32, 4>();
    global1 = array<Struct_3, 2>();
    let x = u_input.a;
    s_output = func_5(vec2<bool>(var_0.d, select(!var_0.d, true, true)), _wgslsmith_sub_u32(~func_1(1u, any(vec3<bool>(false, true, false)), Struct_1(var_0.a, vec4<u32>(17450u, u_input.b, var_0.b.x, 39444u), var_0.a.yy, var_0.d, var_0.e), var_0.a.xy), ~_wgslsmith_mult_u32(var_0.b.x, ~var_0.e)), Struct_2(select(select(vec3<bool>(var_0.d, var_0.d, var_0.d), select(vec3<bool>(var_0.d, var_0.d, false), vec3<bool>(var_0.d, var_0.d, false), var_0.d), false), !vec3<bool>(var_0.d, var_0.d, var_0.d), all(!vec4<bool>(var_0.d, false, false, true))), Struct_1(~var_0.a, var_0.b >> (~var_0.b % vec4<u32>(32u)), abs(vec2<i32>(global2[_wgslsmith_index_u32(var_0.b.x, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)])), true, reverseBits(~4294967295u)), Struct_1(vec3<i32>(countOneBits(global2[_wgslsmith_index_u32(4294967295u, 4u)]), -7249i ^ u_input.a, var_0.a.x ^ var_0.a.x), vec4<u32>(~0u, _wgslsmith_div_u32(4294967295u, 1u), ~var_0.b.x, _wgslsmith_mod_u32(u_input.b, var_0.e)), vec2<i32>(-15308i, u_input.a) ^ var_0.a.zx, false, _wgslsmith_mod_u32(7269u, ~0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) < 367f), 34324u);
}

