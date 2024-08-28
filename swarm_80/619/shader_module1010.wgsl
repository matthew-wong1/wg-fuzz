struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(1u, vec3<bool>(false, true, true), Struct_3(35733i, Struct_2(20111u, Struct_1(vec3<i32>(0i, -436i, i32(-2147483648)), false), -501f, 4294967295u), vec2<f32>(-265f, -1000f))), Struct_4(0u, vec3<bool>(true, true, true), Struct_3(i32(-2147483648), Struct_2(4294967295u, Struct_1(vec3<i32>(0i, 5516i, i32(-2147483648)), false), 631f, 30813u), vec2<f32>(-1708f, -1792f))), Struct_4(4294967295u, vec3<bool>(false, true, false), Struct_3(23952i, Struct_2(53586u, Struct_1(vec3<i32>(-26063i, 10287i, -1i), false), 568f, 28713u), vec2<f32>(201f, 1000f))), Struct_4(0u, vec3<bool>(true, false, true), Struct_3(2147483647i, Struct_2(79494u, Struct_1(vec3<i32>(i32(-2147483648), 22519i, 2147483647i), false), -1230f, 4294967295u), vec2<f32>(-849f, -1266f))), Struct_4(4294967295u, vec3<bool>(true, false, false), Struct_3(i32(-2147483648), Struct_2(4294967295u, Struct_1(vec3<i32>(-77958i, i32(-2147483648), -46067i), true), 557f, 25838u), vec2<f32>(-180f, 351f))), Struct_4(1u, vec3<bool>(false, false, true), Struct_3(928i, Struct_2(1u, Struct_1(vec3<i32>(-16459i, 16659i, 0i), true), 756f, 4563u), vec2<f32>(-1081f, -1473f))), Struct_4(35850u, vec3<bool>(true, true, true), Struct_3(-2409i, Struct_2(4294967295u, Struct_1(vec3<i32>(0i, -14363i, -11149i), true), 858f, 81850u), vec2<f32>(1128f, 1329f))), Struct_4(102962u, vec3<bool>(true, false, true), Struct_3(0i, Struct_2(4294967295u, Struct_1(vec3<i32>(10681i, -1i, 0i), false), -830f, 56964u), vec2<f32>(896f, -342f))), Struct_4(4294967295u, vec3<bool>(false, true, false), Struct_3(1i, Struct_2(1u, Struct_1(vec3<i32>(2147483647i, 1i, 2147483647i), false), -281f, 4294967295u), vec2<f32>(238f, -1085f))), Struct_4(0u, vec3<bool>(false, false, true), Struct_3(11762i, Struct_2(4294967295u, Struct_1(vec3<i32>(-1i, 1i, 1i), true), 201f, 8930u), vec2<f32>(-908f, -1203f))), Struct_4(1u, vec3<bool>(true, true, false), Struct_3(-11458i, Struct_2(17433u, Struct_1(vec3<i32>(-1i, 6486i, 54912i), true), -1000f, 1u), vec2<f32>(-1474f, -1481f))), Struct_4(8207u, vec3<bool>(true, false, false), Struct_3(2147483647i, Struct_2(98221u, Struct_1(vec3<i32>(-16450i, 55396i, 1i), true), 534f, 101171u), vec2<f32>(-375f, -238f))), Struct_4(27742u, vec3<bool>(false, true, false), Struct_3(-1i, Struct_2(0u, Struct_1(vec3<i32>(0i, i32(-2147483648), -38859i), true), -2526f, 28464u), vec2<f32>(227f, -1027f))), Struct_4(38841u, vec3<bool>(true, true, true), Struct_3(-28145i, Struct_2(22578u, Struct_1(vec3<i32>(9436i, 0i, 11574i), true), 1545f, 65722u), vec2<f32>(115f, 1059f))), Struct_4(64877u, vec3<bool>(false, false, true), Struct_3(0i, Struct_2(4773u, Struct_1(vec3<i32>(1431i, 0i, 54101i), false), -589f, 0u), vec2<f32>(1000f, -844f))));

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(-44403i, i32(-2147483648), 43834i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(0i, 50657i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, -18329i), vec3<i32>(14079i, 33735i, 0i), vec3<i32>(10168i, 0i, -6277i), vec3<i32>(46138i, 1i, 63507i), vec3<i32>(-20476i, 2147483647i, 1i), vec3<i32>(0i, 5847i, 1i), vec3<i32>(-32584i, 10220i, 56924i), vec3<i32>(-10592i, 39266i, -7240i), vec3<i32>(-1i, -18613i, -30061i), vec3<i32>(15537i, i32(-2147483648), 48998i), vec3<i32>(-9868i, 0i, i32(-2147483648)), vec3<i32>(0i, 0i, 8170i), vec3<i32>(17643i, -11897i, 0i), vec3<i32>(-76305i, i32(-2147483648), -19379i), vec3<i32>(1i, -83342i, 0i), vec3<i32>(-12775i, 0i, -22241i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), -6889i, -28049i), vec3<i32>(-22312i, 2147483647i, 33834i), vec3<i32>(-28750i, 1i, i32(-2147483648)), vec3<i32>(22508i, -38761i, 20067i), vec3<i32>(35808i, 1i, 1i), vec3<i32>(0i, 2147483647i, 2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    return Struct_1(min(vec3<i32>(u_input.a, 2147483647i, 1i), _wgslsmith_div_vec3_i32(-select(vec3<i32>(u_input.a, u_input.a, 70396i), vec3<i32>(u_input.a, 2147483647i, 0i), false), ~vec3<i32>(-16563i, u_input.a, 2147483647i))), false);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> u32 {
    let var_0 = min(0u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, 1u) >> (u_input.b % 32u), _wgslsmith_mod_u32(4294967295u, 4294967295u)), u_input.b));
    global2 = array<vec3<i32>, 28>();
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    var var_1 = true;
    return 39061u;
}

fn func_2() -> StorageBuffer {
    var var_0 = Struct_3(max(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, u_input.a, u_input.a), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), -29219i), Struct_2(u_input.b, Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(-2147483647i, 1i, u_input.a), vec3<i32>(-1i, 28477i, -1i)) & ~vec3<i32>(20358i, 39949i, 11522i), true), 880f, abs(func_3(~vec4<i32>(2147483647i, 52858i, 35907i, 0i), firstTrailingBit(0i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(336f, -203f))), vec2<f32>(_wgslsmith_f_op_f32(-1383f + 706f), _wgslsmith_f_op_f32(f32(-1f) * -573f)))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))));
    var var_3 = false == (true != select(true | any(vec4<bool>(var_0.b.b.b, false, false, var_0.b.b.b)), false, false));
    let var_4 = ~(firstTrailingBit(48102i >> (1u % 32u)) & 28472i) & _wgslsmith_sub_i32(func_1().a.x, 0i);
    return StorageBuffer(reverseBits(~(-u_input.a) & firstLeadingBit(~2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(645f - 1000f), 473f) - var_0.b.c)), _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(u_input.b, u_input.b))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 60669u), vec2<u32>(var_0.b.a, u_input.b)) ^ ~vec2<u32>(var_0.b.a, 1u), vec2<u32>(4294967295u, u_input.b) ^ countOneBits(vec2<u32>(1u, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(297f, -1687f, 665f, -390f))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)), _wgslsmith_div_f32(-1700f, _wgslsmith_f_op_f32(max(1172f, 1225f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(664f + -361f) + -593f))) + vec4<f32>(-1286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1099f, 1411f, false))))), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_div_f32(727f, 1f)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1694f, 1413f, true)) + _wgslsmith_f_op_f32(select(1979f, var_1.x, false))))), _wgslsmith_div_f32(1790f, var_1.x));
    global2 = array<vec3<i32>, 28>();
    global2 = array<vec3<i32>, 28>();
    let var_3 = func_1();
    var var_4 = var_1.zww;
    let x = u_input.a;
    s_output = func_2();
}

