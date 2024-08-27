struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 9>;

var<private> global2: array<Struct_4, 25>;

var<private> global3: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec4<u32>(1u, 4294967295u, 4963u, 36984u), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), vec3<bool>(false, false, false)), vec4<i32>(0i, 2147483647i, -6923i, 15829i), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), vec3<bool>(false, true, false))), Struct_3(vec4<u32>(57493u, 0u, 1u, 59989u), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec3<bool>(true, false, true)), vec4<i32>(-1i, -39987i, -10817i, 1i), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), vec3<bool>(true, false, false))), Struct_3(vec4<u32>(18031u, 31911u, 28463u, 1u), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec3<bool>(true, true, true)), vec4<i32>(-52829i, 0i, -18017i, i32(-2147483648)), Struct_2(Struct_1(vec4<bool>(true, true, false, false)), vec3<bool>(false, false, false))), Struct_3(vec4<u32>(1u, 10111u, 50244u, 0u), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec3<bool>(true, true, true)), vec4<i32>(-71773i, 15107i, 2147483647i, 29607i), Struct_2(Struct_1(vec4<bool>(true, true, false, false)), vec3<bool>(false, true, false))), Struct_3(vec4<u32>(0u, 29649u, 4294967295u, 0u), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), vec3<bool>(true, false, true)), vec4<i32>(1i, 1i, -19887i, -14i), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec3<bool>(false, true, true))), Struct_3(vec4<u32>(4294967295u, 1u, 5701u, 26945u), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(false, false, true, false)), vec3<bool>(false, true, true)), vec4<i32>(0i, i32(-2147483648), 1i, 39121i), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), vec3<bool>(false, false, false))), Struct_3(vec4<u32>(4294967295u, 0u, 26795u, 24687u), Struct_2(Struct_1(vec4<bool>(true, true, false, false)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), vec3<bool>(true, true, true)), vec4<i32>(i32(-2147483648), 0i, 15872i, 22942i), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec3<bool>(false, false, false))), Struct_3(vec4<u32>(1u, 84570u, 0u, 57981u), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec3<bool>(true, false, true)), vec4<i32>(-32312i, i32(-2147483648), i32(-2147483648), 1i), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec3<bool>(true, true, true))), Struct_3(vec4<u32>(28833u, 0u, 13852u, 0u), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(false, false, true, false)), vec3<bool>(true, true, true)), vec4<i32>(33957i, -1i, 1i, 2147483647i), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), vec3<bool>(false, false, false))), Struct_3(vec4<u32>(10515u, 4294967295u, 20824u, 1u), Struct_2(Struct_1(vec4<bool>(false, false, true, false)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec3<bool>(true, true, false)), vec4<i32>(-1i, 0i, -35022i, 3145i), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), vec3<bool>(false, true, false))), Struct_3(vec4<u32>(4487u, 1u, 4294967295u, 4294967295u), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec3<bool>(true, true, false)), vec4<i32>(-2467i, -4700i, -58655i, -62026i), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), vec3<bool>(false, false, true))), Struct_3(vec4<u32>(5945u, 113688u, 0u, 61005u), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), vec3<bool>(false, false, true)), vec4<i32>(i32(-2147483648), i32(-2147483648), -3057i, 2147483647i), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), vec3<bool>(true, true, false))), Struct_3(vec4<u32>(60941u, 10883u, 1u, 47409u), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), vec3<bool>(true, true, false)), vec4<i32>(-18383i, 0i, -12478i, 0i), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), vec3<bool>(false, true, true))), Struct_3(vec4<u32>(0u, 0u, 4294967295u, 49905u), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec3<bool>(true, false, false)), vec4<i32>(-1i, 10270i, i32(-2147483648), -8179i), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), vec3<bool>(true, true, true))), Struct_3(vec4<u32>(12345u, 1u, 1u, 0u), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), vec3<bool>(true, false, true)), vec4<i32>(19185i, 0i, -1i, -9480i), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), vec3<bool>(false, true, true))), Struct_3(vec4<u32>(2308u, 0u, 4294967295u, 30109u), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), vec3<bool>(false, false, true)), vec4<i32>(38403i, 27656i, 15852i, -1i), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec3<bool>(false, false, false))), Struct_3(vec4<u32>(29362u, 1u, 0u, 5044u), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), vec3<bool>(true, true, true)), vec4<i32>(1i, 65104i, i32(-2147483648), i32(-2147483648)), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), vec3<bool>(true, false, true))), Struct_3(vec4<u32>(4294967295u, 78820u, 62085u, 0u), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), vec3<bool>(false, false, true)), vec4<i32>(2147483647i, 35554i, -22034i, 38932i), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), vec3<bool>(false, true, true))));

var<private> global4: array<vec2<i32>, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    global3 = array<Struct_3, 18>();
    var var_0 = -vec4<i32>(_wgslsmith_mult_i32(countOneBits(_wgslsmith_mod_i32(53616i, u_input.a)), -2147483647i), 27633i, u_input.a, u_input.a << (u_input.b.x % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-285f + 1006f), _wgslsmith_f_op_f32(237f + 1000f))))));
}

fn func_3() -> bool {
    global1 = array<vec2<i32>, 9>();
    global0 = 15154u;
    var var_0 = abs(_wgslsmith_add_i32(27774i & -u_input.a, u_input.a)) | (-58894i >> (~(~_wgslsmith_mult_u32(4039u, 0u)) % 32u));
    let var_1 = Struct_3(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, 111255u, u_input.b.x, 26960u), ~vec4<u32>(4294967295u, 42818u, 7371u, u_input.b.x)) << (countOneBits(~vec4<u32>(20766u, 1u, 1u, u_input.b.x) & ~vec4<u32>(u_input.b.x, u_input.b.x, 63244u, 0u)) % vec4<u32>(32u)), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_2(Struct_1(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(false, true, false)))), vec3<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, false, true)), !all(vec2<bool>(false, true)))), min(vec4<i32>(2147483647i, u_input.a, 12755i, u_input.a) << (firstLeadingBit(vec4<u32>(22081u, u_input.b.x, 32422u, 73415u)) % vec4<u32>(32u)), ~vec4<i32>(22047i, u_input.a, -2147483647i, u_input.a)) ^ ~vec4<i32>(~0i, 2557i, u_input.a | u_input.a, ~(-2147483647i)), Struct_2(Struct_1(vec4<bool>(all(vec2<bool>(false, true)), true, true, true)), vec3<bool>(any(vec2<bool>(false, false)), true, select(false, u_input.a != u_input.a, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(~vec4<u32>(38132u, u_input.b.x, 10362u, 1u))), _wgslsmith_f_op_f32(2174f + _wgslsmith_f_op_f32(f32(-1f) * -844f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(761f, -749f) * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return true;
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    global2 = array<Struct_4, 25>();
    var var_0 = Struct_2(arg_0, vec3<bool>(arg_0.a.x, true, false));
    global3 = array<Struct_3, 18>();
    let var_1 = Struct_1(var_0.a.a);
    let var_2 = Struct_1(!vec4<bool>(true, !func_3(), var_0.b.x, var_0.b.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(439f, 1000f, -2189f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-827f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -786f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(471f * -1232f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f)), -903f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~34287u << (~(~u_input.b.x) % 32u)), ~0u), 6u)];
    var var_1 = _wgslsmith_div_u32(4294967295u, reverseBits(91884u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, _wgslsmith_f_op_f32(func_1(vec4<u32>(32891u, 5140u, 1u, 4547u))), -1083f), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec4<bool>(true, true, true, true)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1373f) + _wgslsmith_f_op_f32(682f + -737f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-123f - -143f) * 292f), 2198f), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true), vec3<bool>(true, true, true), !func_3()))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1477f, 572f)) * 672f), 2466f)), _wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(459f))) - _wgslsmith_f_op_f32(f32(-1f) * -640f))));
    global3 = array<Struct_3, 18>();
    let var_3 = select(vec2<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true))), all(vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, true))), !(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), false)), func_3() || true);
    let x = u_input.a;
    s_output = StorageBuffer(-886f, _wgslsmith_f_op_f32(select(1279f, 1209f, !select(var_3.x, any(var_3), var_3.x))));
}

