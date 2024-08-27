struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_5 = Struct_5(false, 1979f, 5172i, vec2<bool>(false, false));

var<private> global2: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<u32>(47511u, 67212u, 0u), 4831u, true, 1u, vec2<u32>(0u, 69980u)), false), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<u32>(9868u, 74992u, 0u), 18194u, true, 0u, vec2<u32>(64616u, 70423u)), true), 30438u), Struct_4(Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4203u), 4294967295u, false, 52923u, vec2<u32>(2293u, 40558u)), true), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(32233u, 15098u, 8435u), 1u, true, 77566u, vec2<u32>(607u, 68449u)), false), 0u), Struct_4(Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), 62088u, true, 4294967295u, vec2<u32>(898u, 9929u)), true), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<u32>(85436u, 35477u, 4294967295u), 4294967295u, false, 4294967295u, vec2<u32>(34289u, 0u)), false), 67548u), Struct_4(Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(28171u, 4294967295u, 0u), 5927u, false, 4294967295u, vec2<u32>(11930u, 4294967295u)), true), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<u32>(26601u, 24708u, 4294967295u), 11600u, true, 0u, vec2<u32>(41128u, 4294967295u)), false), 5721u), Struct_4(Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(0u, 12150u, 0u), 19495u, false, 4294967295u, vec2<u32>(0u, 0u)), false), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<u32>(33618u, 40230u, 4294967295u), 4294967295u, true, 16235u, vec2<u32>(4294967295u, 16066u)), false), 24777u), Struct_4(Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<u32>(4294967295u, 4294967295u, 229u), 21383u, false, 53833u, vec2<u32>(0u, 0u)), true), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(0u, 0u, 4294967295u), 44340u, false, 0u, vec2<u32>(4294967295u, 42427u)), false), 43883u), Struct_4(Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(72416u, 26662u, 0u), 4294967295u, false, 25708u, vec2<u32>(4294967295u, 0u)), true), Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<u32>(1u, 3397u, 4294967295u), 0u, true, 22289u, vec2<u32>(4294967295u, 60553u)), true), 55630u), Struct_4(Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(23930u, 4294967295u, 1u), 0u, true, 0u, vec2<u32>(1u, 4294967295u)), false), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<u32>(1u, 67963u, 1u), 34270u, false, 31133u, vec2<u32>(4294967295u, 4294967295u)), false), 1u), Struct_4(Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<u32>(4294967295u, 1u, 1030u), 28083u, false, 0u, vec2<u32>(106236u, 2022u)), true), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(26524u, 4294967295u, 4294967295u), 58783u, false, 4013u, vec2<u32>(0u, 4294967295u)), true), 7658u), Struct_4(Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(21982u, 0u, 74304u), 4294967295u, false, 4294967295u, vec2<u32>(0u, 59937u)), false), Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<u32>(18549u, 4294967295u, 4294967295u), 63093u, false, 53556u, vec2<u32>(33379u, 40830u)), true), 38213u), Struct_4(Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(4294967295u, 37099u, 4652u), 48475u, false, 0u, vec2<u32>(12283u, 4294967295u)), true), Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<u32>(1u, 33292u, 41662u), 1u, true, 4294967295u, vec2<u32>(0u, 4294967295u)), false), 1u), Struct_4(Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(44770u, 72988u, 108507u), 10396u, false, 21151u, vec2<u32>(0u, 4294967295u)), true), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(0u, 11599u, 39148u), 4294967295u, true, 1u, vec2<u32>(4294967295u, 1u)), false), 4294967295u), Struct_4(Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(23555u, 16312u, 4294967295u), 1u, true, 10714u, vec2<u32>(64861u, 66927u)), true), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(0u, 4294967295u, 32800u), 33407u, false, 42553u, vec2<u32>(22738u, 1u)), false), 1u), Struct_4(Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(16674u, 1u, 4294967295u), 0u, false, 1u, vec2<u32>(60787u, 4294967295u)), true), Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<u32>(4294967295u, 0u, 1u), 0u, true, 18818u, vec2<u32>(1u, 1u)), false), 5782u), Struct_4(Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(80031u, 20584u, 43314u), 5930u, true, 44253u, vec2<u32>(1u, 34781u)), false), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(17826u, 1u, 0u), 0u, true, 17414u, vec2<u32>(1u, 1u)), false), 28457u), Struct_4(Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(126783u, 54303u, 82878u), 1u, true, 13836u, vec2<u32>(18485u, 26150u)), true), Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(30546u, 4294967295u, 0u), 1u, false, 4294967295u, vec2<u32>(61008u, 32745u)), true), 4294967295u), Struct_4(Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<u32>(81718u, 0u, 0u), 28015u, false, 4294967295u, vec2<u32>(24936u, 78970u)), false), Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<u32>(53448u, 0u, 98454u), 4294967295u, true, 4294967295u, vec2<u32>(1u, 37074u)), false), 56419u), Struct_4(Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(4294967295u, 114695u, 0u), 22497u, true, 44004u, vec2<u32>(22356u, 1u)), true), Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(37186u, 1u, 24115u), 17860u, true, 63991u, vec2<u32>(4294967295u, 9819u)), true), 15037u), Struct_4(Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<u32>(42110u, 4294967295u, 40237u), 27542u, true, 39841u, vec2<u32>(36216u, 92794u)), false), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(0u, 4294967295u, 15777u), 61124u, false, 1u, vec2<u32>(30121u, 2947u)), false), 13726u), Struct_4(Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(1u, 12563u, 4294967295u), 16115u, false, 66247u, vec2<u32>(13385u, 1u)), true), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(4294967295u, 1u, 46079u), 18533u, true, 14779u, vec2<u32>(4294967295u, 7418u)), true), 4294967295u), Struct_4(Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<u32>(0u, 45263u, 60592u), 28676u, true, 4294967295u, vec2<u32>(1u, 9633u)), false), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<u32>(52393u, 25888u, 52070u), 50116u, false, 13570u, vec2<u32>(69870u, 1u)), true), 1u), Struct_4(Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<u32>(31237u, 11790u, 1u), 4294967295u, true, 35706u, vec2<u32>(86000u, 56927u)), true), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<u32>(4294967295u, 6119u, 4294967295u), 15956u, true, 65810u, vec2<u32>(58202u, 73636u)), true), 54891u), Struct_4(Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<u32>(31166u, 0u, 3020u), 4294967295u, false, 9278u, vec2<u32>(4294967295u, 9007u)), true), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<u32>(1u, 1u, 62002u), 4294967295u, false, 0u, vec2<u32>(82371u, 1u)), true), 4294967295u), Struct_4(Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<u32>(24288u, 0u, 1u), 4294967295u, true, 47672u, vec2<u32>(90216u, 13843u)), true), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<u32>(0u, 20429u, 0u), 4294967295u, true, 1u, vec2<u32>(0u, 75447u)), false), 31415u), Struct_4(Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<u32>(0u, 1u, 57058u), 1u, true, 14148u, vec2<u32>(37344u, 3560u)), false), Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<u32>(0u, 42181u, 1u), 44155u, true, 5541u, vec2<u32>(0u, 1u)), false), 0u));

var<private> global3: Struct_3;

var<private> global4: array<Struct_2, 15>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = firstTrailingBit(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(21570u, 4294967295u, global0.b.b.a.x, global3.b.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.b.e.x, global0.a.b.d, 4294967295u, 36349u), _wgslsmith_clamp_vec4_u32(vec4<u32>(55365u, global0.c, 36103u, 49228u), vec4<u32>(46454u, global0.a.b.e.x, 4294967295u, 5517u), vec4<u32>(4294967295u, 32895u, global0.a.b.e.x, global0.c)), ~vec4<u32>(global0.b.b.b, 50268u, global0.c, global3.b.d)))));
    var var_1 = 1i;
    global3 = Struct_3(true, global0.b.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, global1.b, global1.b, global1.b) + vec4<f32>(global1.b, global1.b, global1.b, 260f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, 988f, -269f, global1.b) * vec4<f32>(-1308f, global1.b, 874f, global1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-739f, -236f, -203f, -398f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b, global1.b, global1.b, global1.b), vec4<f32>(-623f, global1.b, 1952f, 159f), false)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global1.b)) + _wgslsmith_f_op_f32(f32(-1f) * -382f)), _wgslsmith_f_op_f32(153f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.b, global1.b))))), 1486f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + -380f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global1.b) + _wgslsmith_f_op_f32(862f - -575f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(1445f - _wgslsmith_f_op_f32(global1.b + 1664f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(-var_2.x), !global0.a.c)))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec4<u32> {
    global2 = array<Struct_4, 25>();
    global1 = Struct_5(global3.a, 594f, max(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, -24136i, u_input.a.x), arg_1) ^ -1i, firstTrailingBit(-arg_1.x)) >> (~_wgslsmith_div_u32(_wgslsmith_div_u32(1u, global0.b.b.b), min(0u, 4294967295u)) % 32u), vec2<bool>(!(false | !global3.a), arg_0.x));
    global1 = Struct_5(global0.b.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), ~(i32(-1i) * -u_input.a.x), select(vec2<bool>(any(vec4<bool>(global3.b.c, false, true, true)), !(!global0.a.b.c)), vec2<bool>(false || !global1.a, false), !select(select(vec2<bool>(true, false), global0.b.a.zy, vec2<bool>(false, global0.b.a.x)), !vec2<bool>(global1.d.x, true), vec2<bool>(global3.a, global0.a.c))));
    var var_0 = vec3<i32>(~_wgslsmith_div_i32(-2147483647i, ~global1.c), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(0i, u_input.a.x, global1.c, u_input.a.x), vec4<i32>(global1.c, arg_1.x, -42855i, -640i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, global1.c, u_input.a.x, 42198i), vec4<i32>(-11038i, u_input.a.x, u_input.b, global1.c)), -vec4<i32>(-1i, u_input.a.x, -4585i, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 67202i, -1i, u_input.b) ^ vec4<i32>(-1i, 2147483647i, -1i, 2147483647i), select(vec4<i32>(global1.c, u_input.a.x, arg_1.x, 51591i), vec4<i32>(arg_1.x, 1i, 6103i, global1.c), global0.b.b.c))), global1.c) >> (global3.b.a % vec3<u32>(32u));
    let var_1 = max(~vec2<u32>(~global3.b.d, global0.a.b.b) & countOneBits(global0.a.b.e), global0.b.b.e);
    return max(firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 0u, global3.b.a.x, global3.b.d), ~vec4<u32>(24458u, global0.a.b.e.x, 5501u, var_1.x))) >> (firstTrailingBit(~(~vec4<u32>(0u, 1u, global3.b.a.x, global3.b.a.x))) % vec4<u32>(32u)), vec4<u32>(~(~var_1.x), 31283u, 4294967295u, global0.a.b.e.x));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = arg_3.b.b;
    global2 = array<Struct_4, 25>();
    let var_1 = 493f;
    let var_2 = ~countOneBits(-1i);
    var var_3 = func_4(vec2<bool>(func_3(true), !arg_3.a != select(true, global3.a, true)), select(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global1.c, var_2), global1.c, 22903i), _wgslsmith_sub_vec3_i32(vec3<i32>(5966i, u_input.b, var_2) ^ vec3<i32>(u_input.a.x, -6941i, global1.c), u_input.a)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-21324i, 9196i, 2147483647i), -u_input.a, vec3<i32>(-7598i, global1.c, -1i)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(-2036i, global1.c)), min(-1i, -1i), 34564i >> (arg_3.b.e.x % 32u))), global0.b.a));
    return arg_2.a.a;
}

fn func_5(arg_0: bool) -> Struct_3 {
    global3 = Struct_3(!global0.b.b.c, Struct_1(abs(global0.a.b.a << (vec3<u32>(1u, 1u, global0.b.b.b) % vec3<u32>(32u))) & vec3<u32>(global3.b.d, global3.b.b, 46868u), 1u >> (~countOneBits(global3.b.e.x) % 32u), global1.a && !global1.d.x, 0u, global0.a.b.e));
    let var_0 = global2[_wgslsmith_index_u32(~(~min(~global3.b.e.x, 24874u)), 25u)];
    let var_1 = Struct_3(true, Struct_1(abs(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global0.a.b.d, var_0.c, var_0.a.b.b)), ~vec3<u32>(global3.b.b, global3.b.d, var_0.a.b.b))), 1u, !(670f >= global1.b), abs(~_wgslsmith_mult_u32(37410u, 10020u)), select(vec2<u32>(15145u, global0.c << (13053u % 32u)), vec2<u32>(min(global0.b.b.e.x, 0u), countOneBits(global0.c)), !(!global1.d))));
    global4 = array<Struct_2, 15>();
    var var_2 = Struct_5(!all(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_1.a, false, false, true), select(vec4<bool>(true, global3.b.c, global3.a, var_1.a), vec4<bool>(global1.a, false, var_1.b.c, global1.a), true))), -1910f, _wgslsmith_clamp_i32(u_input.a.x, ~_wgslsmith_add_i32(global1.c, 2147483647i), u_input.b), !vec2<bool>(!(true || var_0.a.b.c), all(vec2<bool>(global1.d.x, global1.d.x))));
    return var_1;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = global1.c;
    var var_1 = global0.a.a;
    global3 = func_5(any(vec2<bool>(true, true)) & select(!(true | arg_0), ~global0.a.b.d > 22148u, any(func_2(false, vec2<f32>(global1.b, global1.b), Struct_4(Struct_2(vec3<bool>(true, var_1.x, var_1.x), global0.b.b, global0.b.a.x), Struct_2(global0.a.a, global0.b.b, true), global3.b.e.x), Struct_3(false, global0.b.b)))));
    global1 = Struct_5(var_1.x, 1f, global1.c, !var_1.zx);
    global1 = Struct_5(!global3.b.c, 1474f, u_input.b, global1.d);
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global0.a, global0.b, global0.c);
    var var_1 = -628f;
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(global0.a.b.e, global3.b.a.zx), ~global3.b.a.yz | reverseBits(vec2<u32>(var_0.b.b.b, global3.b.e.x))), _wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(global3.b.a.x, global3.b.a.x)), global3.b.e)) == ~global3.b.d;
    global4 = array<Struct_2, 15>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b)));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1.b, 261f)))) + _wgslsmith_f_op_f32(279f + _wgslsmith_f_op_f32(func_1(var_0.a.b.c))));
    let var_4 = func_5(false);
    global1 = Struct_5(~func_5(true).b.b >= _wgslsmith_add_u32(23094u, ~global3.b.e.x), -629f, ~u_input.b, func_2(!any(func_2(false, vec2<f32>(244f, global1.b), Struct_4(Struct_2(var_0.b.a, Struct_1(vec3<u32>(30998u, 23970u, 1u), global3.b.b, var_2, 0u, global3.b.a.xx), false), Struct_2(global0.b.a, var_0.b.b, true), 0u), var_4)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) - vec2<f32>(global1.b, -1414f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(547f, 1238f), vec2<f32>(global1.b, global1.b)))), global2[_wgslsmith_index_u32(min(global3.b.b >> ((global3.b.d ^ 1u) % 32u), ~1u), 25u)], func_5(global3.b.c)).zz);
    var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1185f - global1.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1073f - _wgslsmith_f_op_f32(f32(-1f) * -875f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1097f))))));
}

