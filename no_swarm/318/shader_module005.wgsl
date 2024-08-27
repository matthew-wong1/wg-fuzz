struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(-749f, 4294967295u, vec4<u32>(4920u, 37343u, 0u, 20456u)), Struct_1(-967f, 75048u, vec4<u32>(8121u, 28152u, 1u, 0u))), Struct_3(Struct_1(1522f, 4294967295u, vec4<u32>(52948u, 89930u, 1u, 12939u)), Struct_1(-217f, 43234u, vec4<u32>(1u, 50816u, 4294967295u, 17454u))), Struct_3(Struct_1(104f, 4331u, vec4<u32>(2641u, 33940u, 0u, 0u)), Struct_1(-431f, 54205u, vec4<u32>(4294967295u, 1u, 26870u, 107610u))), Struct_3(Struct_1(703f, 4294967295u, vec4<u32>(1u, 70534u, 1u, 5955u)), Struct_1(-1804f, 65301u, vec4<u32>(19185u, 99430u, 0u, 5083u))), Struct_3(Struct_1(-1001f, 35124u, vec4<u32>(44445u, 110506u, 16112u, 0u)), Struct_1(-983f, 0u, vec4<u32>(69589u, 50537u, 1u, 1u))), Struct_3(Struct_1(-1360f, 4294967295u, vec4<u32>(32173u, 42568u, 98804u, 1u)), Struct_1(-1485f, 0u, vec4<u32>(83103u, 1u, 29784u, 0u))), Struct_3(Struct_1(807f, 4294967295u, vec4<u32>(24766u, 18350u, 4294967295u, 14915u)), Struct_1(-872f, 4294967295u, vec4<u32>(24359u, 0u, 12103u, 16383u))), Struct_3(Struct_1(-727f, 1u, vec4<u32>(20842u, 65944u, 4294967295u, 27672u)), Struct_1(-1695f, 30821u, vec4<u32>(4294967295u, 1u, 1u, 17633u))), Struct_3(Struct_1(1029f, 1u, vec4<u32>(10088u, 1u, 119806u, 1u)), Struct_1(1877f, 73105u, vec4<u32>(1u, 14946u, 0u, 12898u))), Struct_3(Struct_1(-1000f, 11257u, vec4<u32>(6793u, 1u, 43902u, 1u)), Struct_1(1618f, 4294967295u, vec4<u32>(4294967295u, 0u, 0u, 0u))), Struct_3(Struct_1(-884f, 80008u, vec4<u32>(1u, 12330u, 26284u, 54363u)), Struct_1(-146f, 29660u, vec4<u32>(21749u, 0u, 4294967295u, 1240u))), Struct_3(Struct_1(-797f, 4294967295u, vec4<u32>(0u, 0u, 59451u, 9940u)), Struct_1(-1000f, 0u, vec4<u32>(0u, 1u, 4294967295u, 100080u))), Struct_3(Struct_1(1000f, 4294967295u, vec4<u32>(68640u, 8274u, 1u, 0u)), Struct_1(1238f, 4294967295u, vec4<u32>(39271u, 31337u, 4294967295u, 35369u))), Struct_3(Struct_1(-962f, 55983u, vec4<u32>(18275u, 0u, 15739u, 92595u)), Struct_1(483f, 27489u, vec4<u32>(1u, 4294967295u, 0u, 1167u))), Struct_3(Struct_1(1112f, 4294967295u, vec4<u32>(4294967295u, 0u, 129918u, 32056u)), Struct_1(1234f, 0u, vec4<u32>(2084u, 0u, 18267u, 4294967295u))), Struct_3(Struct_1(956f, 4294967295u, vec4<u32>(4294967295u, 52204u, 16576u, 4294967295u)), Struct_1(-2081f, 0u, vec4<u32>(22195u, 47208u, 14024u, 3757u))), Struct_3(Struct_1(-257f, 70183u, vec4<u32>(216u, 0u, 28211u, 4294967295u)), Struct_1(523f, 7388u, vec4<u32>(74313u, 1u, 10735u, 0u))), Struct_3(Struct_1(-369f, 4294967295u, vec4<u32>(1u, 0u, 86982u, 0u)), Struct_1(1000f, 1u, vec4<u32>(1u, 22865u, 4294967295u, 11242u))), Struct_3(Struct_1(923f, 0u, vec4<u32>(1u, 42069u, 4294967295u, 57423u)), Struct_1(100f, 7374u, vec4<u32>(40821u, 20148u, 6572u, 16568u))), Struct_3(Struct_1(460f, 1u, vec4<u32>(0u, 13620u, 34542u, 30947u)), Struct_1(-327f, 4294967295u, vec4<u32>(0u, 1u, 35241u, 4294967295u))));

var<private> global3: array<vec4<i32>, 4>;

var<private> global4: array<vec3<bool>, 8>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = max(arg_1.d.c.xz, vec2<u32>(arg_0, arg_0) ^ vec2<u32>(~4294967295u, 29439u));
    global0 = var_0.x;
    global1 = array<Struct_1, 10>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.a) * _wgslsmith_f_op_f32(arg_1.e.a + -188f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.d.a, arg_1.b.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2115f - _wgslsmith_f_op_f32(abs(arg_1.d.a))) - _wgslsmith_f_op_f32(abs(137f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.a)))), arg_1.e.a, select(true, arg_2, arg_2))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1146f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.d.a * 494f)))), _wgslsmith_f_op_f32(f32(-1f) * -528f))));
    global1 = array<Struct_1, 10>();
    return true;
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = Struct_2(1u, Struct_1(_wgslsmith_f_op_f32(max(447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1132f, 626f))))), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(8825u, 4294967295u, 21121u)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(~vec4<u32>(4804u, 0u, 20891u, 4294967295u)))), vec4<i32>(-34804i, 18723i, -2147483647i, ~arg_0), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-499f, _wgslsmith_f_op_f32(min(-468f, 106f))), _wgslsmith_f_op_f32(trunc(-2644f)))), abs(~0u), vec4<u32>(1u, 1u, 1u, 1u)), global1[_wgslsmith_index_u32(~1u, 10u)]);
    global4 = array<vec3<bool>, 8>();
    global4 = array<vec3<bool>, 8>();
    var var_1 = Struct_4(var_0.e, Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1458f)) - _wgslsmith_f_op_f32(-var_0.b.a)), var_0.e.c.x, ~var_0.d.c), var_0.d), Struct_2(_wgslsmith_add_u32(~_wgslsmith_div_u32(var_0.a, var_0.e.b), var_0.b.b), global1[_wgslsmith_index_u32(25211u, 10u)], _wgslsmith_add_vec4_i32(var_0.c, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~14774u, ~0u), 4u)]), global1[_wgslsmith_index_u32(~firstTrailingBit(64668u), 10u)], var_0.e), true);
    global3 = array<vec4<i32>, 4>();
    return _wgslsmith_f_op_f32(-var_0.b.a);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool) -> StorageBuffer {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x, 74958u), 10u)], global1[_wgslsmith_index_u32((countOneBits(~arg_1.x) & abs(reverseBits(arg_1.x))) & _wgslsmith_add_u32(arg_1.x, max(arg_1.x, _wgslsmith_mult_u32(1u, 8669u))), 10u)]);
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -772f, _wgslsmith_div_f32(var_1.a, var_1.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(785f + -597f), _wgslsmith_f_op_f32(-var_1.a), -1051f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(819f, 1562f, -699f) + vec3<f32>(var_0.b.a, var_0.b.a, 653f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b.x, 28427i))), var_1.a) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f)))))));
    let var_3 = Struct_4(global1[_wgslsmith_index_u32(var_0.b.c.x, 10u)], Struct_3(Struct_1(1076f, var_0.a.b, var_0.b.c), global1[_wgslsmith_index_u32(~(arg_1.x | var_1.c.x), 10u)]), Struct_2(var_0.b.c.x, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, var_0.a.b, var_1.c.x), vec4<u32>(1u, 1u, 33823u, var_1.b), vec4<u32>(var_1.c.x, 4294967295u, arg_1.x, 4294967295u)), var_1.c), 10u)], countOneBits(-vec4<i32>(4427i, -2147483647i, 0i, -2147483647i)), global1[_wgslsmith_index_u32(1u, 10u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1835f - var_0.a.a) + var_0.b.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(106856u, var_1.b, arg_1.x), var_0.b.c.xzy), vec4<u32>(_wgslsmith_sub_u32(var_0.a.c.x, 43400u), 55570u, arg_1.x, 79380u))), arg_0.x);
    global0 = max(var_0.a.c.x, ~20096u);
    return StorageBuffer(_wgslsmith_div_i32(1i, min(33580i, u_input.b.x)), var_3.c.c.x, (0u ^ firstLeadingBit(var_0.a.b & var_1.b)) >> (~reverseBits(arg_1.x) % 32u), ~vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(var_3.c.c.xzw, vec3<i32>(25283i, 45712i, u_input.a))), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 20>();
    global2 = array<Struct_3, 20>();
    global0 = ~13056u;
    var var_0 = vec2<i32>(~(-47158i), ~(-1334i));
    var var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(97839u), 4u)];
    var_1 = ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~select(abs(vec3<u32>(1u, 0u, 0u)), vec3<u32>(44840u, 4294967295u, 6137u), vec3<bool>(true, true, true)), reverseBits(vec3<u32>(1u, 1u, 1u))), 4u)];
    let x = u_input.a;
    s_output = func_2(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), global4[_wgslsmith_index_u32(284u, 8u)], false), vec3<bool>(true, true, true), true), vec3<bool>(all(vec3<bool>(true, false, false)), true, 1i <= u_input.a)), ~(~vec2<u32>(15996u, 346u)) >> (firstTrailingBit(~(~vec2<u32>(55861u, 14027u))) % vec2<u32>(32u)), all(select(global4[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(74488u, 61638u))), 8u)], vec3<bool>(true, all(vec3<bool>(false, true, false)), select(false, true, false)), func_1(1u, Struct_2(4294967295u, global1[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(72123u, 4u)], Struct_1(419f, 16362u, vec4<u32>(0u, 29626u, 31005u, 4294967295u)), global1[_wgslsmith_index_u32(15411u, 10u)]), true) | true)));
}

