struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

var<private> global1: array<Struct_5, 21>;

var<private> global2: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(0u, 110124u, 0u, 43146u), vec4<u32>(4294967295u, 1u, 55662u, 0u), vec4<u32>(28689u, 1u, 3817u, 1u), vec4<u32>(98429u, 12151u, 0u, 42826u), vec4<u32>(1u, 47044u, 23281u, 60939u), vec4<u32>(8607u, 48872u, 24185u, 0u), vec4<u32>(1u, 19497u, 0u, 0u), vec4<u32>(1u, 281u, 1u, 4294967295u), vec4<u32>(1u, 49677u, 1u, 1u), vec4<u32>(58500u, 41470u, 4294967295u, 26595u), vec4<u32>(29377u, 0u, 24225u, 1u), vec4<u32>(43862u, 42712u, 101100u, 1u), vec4<u32>(4294967295u, 49269u, 77419u, 77402u), vec4<u32>(23916u, 20368u, 30982u, 25096u), vec4<u32>(30362u, 1u, 4294967295u, 4294967295u), vec4<u32>(67004u, 0u, 7772u, 17366u), vec4<u32>(24915u, 1u, 4294967295u, 32910u), vec4<u32>(4294967295u, 0u, 1u, 15344u), vec4<u32>(33818u, 97045u, 4294967295u, 83890u), vec4<u32>(1u, 7288u, 35224u, 0u), vec4<u32>(20871u, 4294967295u, 45716u, 2261u), vec4<u32>(0u, 20981u, 55357u, 13437u), vec4<u32>(40770u, 32196u, 1u, 4294967295u), vec4<u32>(1310u, 57336u, 0u, 4214u), vec4<u32>(4294967295u, 55667u, 13836u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 90791u, 8039u, 7576u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(16340u, 89252u, 66001u, 0u), vec4<u32>(4294967295u, 1u, 95522u, 1u), vec4<u32>(0u, 4294967295u, 0u, 1u));

var<private> global3: array<i32, 19>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<u32> {
    global2 = array<vec4<u32>, 31>();
    global3 = array<i32, 19>();
    var var_0 = Struct_4(true, Struct_1(~reverseBits(vec3<u32>(1u, 1u, 1u)), firstLeadingBit(abs(vec3<i32>(-6202i, global3[_wgslsmith_index_u32(13536u, 19u)], global3[_wgslsmith_index_u32(1u, 19u)]))) & vec3<i32>(_wgslsmith_div_i32(39874i, global3[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(global3[_wgslsmith_index_u32(0u, 19u)], -1i)), u_input.a.x)), true, Struct_1(select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u), true), select(abs(firstLeadingBit(vec3<i32>(-1i, u_input.a.x, 0i))), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(-1838i, global3[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a.x)), all(select(global0[_wgslsmith_index_u32(60754u, 20u)], vec3<bool>(true, false, false), vec3<bool>(false, true, false))))), Struct_1(reverseBits(~vec3<u32>(0u, 91u, 44007u)) >> ((vec3<u32>(1u, 4294967295u, 4294967295u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(44083u, 30618u, 5007u), vec3<u32>(1u, 43693u, 4294967295u), vec3<u32>(25787u, 30898u, 0u))) % vec3<u32>(32u)), vec3<i32>(global3[_wgslsmith_index_u32(~min(32469u, 0u), 19u)], u_input.a.x | ~global3[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a.x)));
    var var_1 = -735f;
    let var_2 = select(vec2<bool>(true, true), !vec2<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(var_0.a, false, var_0.c))), !var_0.a);
    return var_0.e.a;
}

fn func_2() -> f32 {
    global0 = array<vec3<bool>, 20>();
    let var_0 = Struct_2(true, Struct_1(~min(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 1u, 32211u)) ^ (func_3() << (~vec3<u32>(11262u, 37328u, 5924u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(19570u, 19u)]), vec3<i32>(global3[_wgslsmith_index_u32(7347u, 19u)], 0i, 35440i)), vec3<i32>(global3[_wgslsmith_index_u32(1u, 19u)] & global3[_wgslsmith_index_u32(4294967295u, 19u)], 2147483647i, u_input.a.x))));
    global2 = array<vec4<u32>, 31>();
    let var_1 = Struct_4(select(any(select(select(global0[_wgslsmith_index_u32(var_0.b.a.x, 20u)], vec3<bool>(true, false, true), vec3<bool>(false, var_0.a, var_0.a)), vec3<bool>(var_0.a, var_0.a, false), !global0[_wgslsmith_index_u32(var_0.b.a.x, 20u)])), any(select(!vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, var_0.a), var_0.a)), all(vec4<bool>(1i >= var_0.b.b.x, false, var_0.a, true))), Struct_1(vec3<u32>(~1u, 1u & firstLeadingBit(var_0.b.a.x), 44500u), vec3<i32>(var_0.b.b.x, abs(20578i), countOneBits(-u_input.a.x))), true, Struct_1(vec3<u32>(_wgslsmith_div_u32(27302u, func_3().x), ~19245u, var_0.b.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(var_0.b.a.x, 19u)] >> (4294967295u % 32u), -16756i, -2147483647i), var_0.b.b)), var_0.b);
    let var_2 = func_3();
    return _wgslsmith_f_op_f32(round(-1000f));
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<bool>(true, false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(~1u, 1u, 1u)), select(_wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, u_input.a.x), ~firstLeadingBit(vec3<i32>(-8025i, -2147483647i, u_input.a.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(34585i, -2147483647i, _wgslsmith_mod_i32(-1i, 9064i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(17334i, 2779i, 0i), vec3<i32>(-26220i, -23864i, u_input.a.x))), !var_0.x));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(select(max(0u, var_2.a.x), ~var_2.a.x, !var_0.x), 0u), ~(~vec2<u32>(var_2.a.x, var_2.a.x))), select(vec2<u32>(max(var_2.a.x << (var_2.a.x % 32u), _wgslsmith_mod_u32(0u, 33548u)), 4294967295u), vec2<u32>(var_2.a.x, 1u), var_0.x)), 21u)];
    var var_4 = _wgslsmith_clamp_vec4_u32(select(~_wgslsmith_mod_vec4_u32(countOneBits(global2[_wgslsmith_index_u32(4294967295u, 31u)]), global2[_wgslsmith_index_u32(var_2.a.x, 31u)]), global2[_wgslsmith_index_u32(16392u, 31u)], u_input.a.x < -(~var_3.a)), select(~vec4<u32>(var_2.a.x, ~37748u, var_2.a.x, 6245u), vec4<u32>(var_2.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 59385u, 1u), vec3<u32>(var_2.a.x, 28444u, var_2.a.x)), 76327u >> ((var_2.a.x | 49229u) % 32u), var_2.a.x), !(false || var_0.x) & (select(4294967295u, var_2.a.x, false) <= 0u)), global2[_wgslsmith_index_u32(1u, 31u)]);
    return Struct_2(var_0.x, var_2);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = (vec3<i32>(_wgslsmith_div_i32(max(0i, 25115i), -35408i), 22230i, firstTrailingBit(-global3[_wgslsmith_index_u32(4294967295u, 19u)])) << (vec3<u32>(arg_0.a.x, ~arg_0.a.x, _wgslsmith_sub_u32(~arg_3.b.a.x, arg_0.d.b.a.x)) % vec3<u32>(32u))) >> (arg_2.b.a % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + _wgslsmith_f_op_f32(1572f + 560f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(862f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c)))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(1280f, -368f))) - 279f) < _wgslsmith_f_op_f32(-465f + _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(527f * var_1.x))), arg_3.b, -1000f == arg_1, arg_3.b, arg_3.b);
    global1 = array<Struct_5, 21>();
    var var_3 = 322f;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), arg_1, -1472f, _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, var_1.x, var_1.x, 617f)) + vec4<f32>(1000f, -1034f, 1265f, 2138f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2560f, 212f, arg_1, var_1.x)), vec4<f32>(1252f, arg_1, arg_0.c, -425f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec2<u32>(8364u, 50819u), true, -1091f, Struct_2(true, Struct_1(vec3<u32>(0u, 1u, 0u), vec3<i32>(44255i, -21422i, global3[_wgslsmith_index_u32(0u, 19u)]))), u_input.a.x), _wgslsmith_f_op_f32(896f + 410f), func_1(), Struct_2(false, Struct_1(vec3<u32>(73609u, 1u, 1u), vec3<i32>(-1i, -14369i, u_input.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1522f, 453f, 194f, 839f), vec4<f32>(1104f, 871f, -282f, -259f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-491f, var_0.x, -760f, var_0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -1824f))))))));
    global0 = array<vec3<bool>, 20>();
    var var_1 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), all(vec4<bool>(true, true, false, true))), select(vec2<bool>(all(vec2<bool>(true, false)), false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(637f - _wgslsmith_f_op_f32(-var_0.x))), -305f))));
    global3 = array<i32, 19>();
    var var_3 = (vec4<i32>(-1i) * -vec4<i32>(1i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 15528u, 4294967295u), vec3<u32>(33344u, 1u, 0u)), 19u)], u_input.a.x, func_1().b.b.x)) | vec4<i32>(firstTrailingBit(global3[_wgslsmith_index_u32(19294u, 19u)]), max(~func_1().b.b.x, func_1().b.b.x), global3[_wgslsmith_index_u32(~(~1u), 19u)], select(1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -1i, u_input.a.x), vec4<i32>(-1i, 2147483647i, u_input.a.x, 0i)), 13260i, 1i), any(vec2<bool>(var_1.x, var_1.x))));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3.zy, vec2<i32>(_wgslsmith_div_i32(var_4.b.b.x, 2147483647i), -35528i)) ^ func_1().b.b.yx, var_0.zw);
}

