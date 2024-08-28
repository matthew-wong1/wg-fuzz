struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<u32, 27> = array<u32, 27>(11531u, 23924u, 1u, 46078u, 17800u, 1u, 48075u, 64243u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 1u, 1u, 0u, 7769u, 0u, 8357u, 0u, 21679u, 4895u, 1u, 5180u, 4294967295u, 1u, 1u, 1u);

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec4<u32>(1558u, 4294967295u, 0u, 22584u), Struct_2(Struct_1(true, vec2<bool>(false, false), vec4<u32>(1u, 75600u, 0u, 4294967295u)), vec3<f32>(151f, -2434f, 333f), vec3<f32>(-1377f, -1000f, -261f), Struct_1(false, vec2<bool>(false, false), vec4<u32>(20418u, 0u, 0u, 19455u)), vec2<u32>(32014u, 4294967295u)), vec4<i32>(1i, 43525i, 7427i, 14645i), -45055i), Struct_3(vec4<u32>(0u, 1u, 1u, 1u), Struct_2(Struct_1(true, vec2<bool>(false, false), vec4<u32>(66542u, 19131u, 48639u, 42737u)), vec3<f32>(-528f, -360f, 944f), vec3<f32>(792f, -154f, -1000f), Struct_1(true, vec2<bool>(true, false), vec4<u32>(4294967295u, 12023u, 76904u, 4294967295u)), vec2<u32>(5612u, 0u)), vec4<i32>(84164i, -35093i, 1i, 45687i), -1i), Struct_3(vec4<u32>(113513u, 97956u, 51624u, 36259u), Struct_2(Struct_1(true, vec2<bool>(false, true), vec4<u32>(4294967295u, 1u, 0u, 97947u)), vec3<f32>(360f, -572f, -1080f), vec3<f32>(829f, -404f, -940f), Struct_1(false, vec2<bool>(true, false), vec4<u32>(13707u, 1u, 57615u, 14112u)), vec2<u32>(0u, 78649u)), vec4<i32>(-1i, 0i, i32(-2147483648), -1i), -8677i), Struct_3(vec4<u32>(37871u, 13571u, 1u, 2627u), Struct_2(Struct_1(true, vec2<bool>(true, true), vec4<u32>(92100u, 0u, 4294967295u, 112580u)), vec3<f32>(-1694f, 153f, 1730f), vec3<f32>(-584f, -446f, 252f), Struct_1(true, vec2<bool>(true, true), vec4<u32>(13787u, 4294967295u, 4294967295u, 38371u)), vec2<u32>(25297u, 4294967295u)), vec4<i32>(1i, -1i, 2147483647i, i32(-2147483648)), 0i), Struct_3(vec4<u32>(78681u, 0u, 16570u, 1u), Struct_2(Struct_1(true, vec2<bool>(false, true), vec4<u32>(28478u, 61442u, 289u, 21762u)), vec3<f32>(124f, -625f, 136f), vec3<f32>(1000f, 1488f, -589f), Struct_1(true, vec2<bool>(true, true), vec4<u32>(54504u, 0u, 607u, 1u)), vec2<u32>(42896u, 4294967295u)), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 1i), -11429i), Struct_3(vec4<u32>(21660u, 1u, 1u, 68374u), Struct_2(Struct_1(false, vec2<bool>(true, false), vec4<u32>(0u, 33813u, 10891u, 75879u)), vec3<f32>(-145f, -869f, -371f), vec3<f32>(-1142f, 1000f, -579f), Struct_1(true, vec2<bool>(true, false), vec4<u32>(4294967295u, 41978u, 82013u, 42902u)), vec2<u32>(0u, 12229u)), vec4<i32>(64170i, 2147483647i, i32(-2147483648), 2147483647i), i32(-2147483648)), Struct_3(vec4<u32>(1u, 4294967295u, 1u, 21960u), Struct_2(Struct_1(true, vec2<bool>(false, false), vec4<u32>(95559u, 1u, 109901u, 89638u)), vec3<f32>(-1417f, 364f, 248f), vec3<f32>(283f, 379f, 799f), Struct_1(false, vec2<bool>(true, false), vec4<u32>(54911u, 89520u, 69150u, 4294967295u)), vec2<u32>(0u, 1u)), vec4<i32>(i32(-2147483648), 69619i, -63500i, 0i), 61788i), Struct_3(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), Struct_2(Struct_1(true, vec2<bool>(false, true), vec4<u32>(66749u, 83796u, 27179u, 51211u)), vec3<f32>(952f, 1058f, 1574f), vec3<f32>(1000f, -3047f, -554f), Struct_1(false, vec2<bool>(false, false), vec4<u32>(25171u, 27236u, 0u, 14579u)), vec2<u32>(4294967295u, 0u)), vec4<i32>(54145i, 12603i, 0i, i32(-2147483648)), 0i), Struct_3(vec4<u32>(5168u, 13546u, 0u, 1u), Struct_2(Struct_1(false, vec2<bool>(true, true), vec4<u32>(0u, 16672u, 4294967295u, 43522u)), vec3<f32>(860f, 445f, 815f), vec3<f32>(-1000f, -314f, -1388f), Struct_1(false, vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), vec2<u32>(7463u, 4294967295u)), vec4<i32>(33380i, 2147483647i, -1i, 1i), 1i), Struct_3(vec4<u32>(0u, 64318u, 403u, 4294967295u), Struct_2(Struct_1(false, vec2<bool>(false, false), vec4<u32>(0u, 33163u, 4294967295u, 0u)), vec3<f32>(-1506f, -1813f, -576f), vec3<f32>(1422f, 490f, 1144f), Struct_1(false, vec2<bool>(true, true), vec4<u32>(4294967295u, 1u, 15143u, 1u)), vec2<u32>(24769u, 12606u)), vec4<i32>(2147483647i, 2147483647i, 1i, 64380i), -11404i), Struct_3(vec4<u32>(46250u, 4294967295u, 4294967295u, 0u), Struct_2(Struct_1(true, vec2<bool>(true, true), vec4<u32>(1488u, 86954u, 24159u, 4294967295u)), vec3<f32>(369f, 1000f, 443f), vec3<f32>(-137f, 455f, 559f), Struct_1(true, vec2<bool>(false, true), vec4<u32>(95150u, 0u, 4294967295u, 1u)), vec2<u32>(29477u, 1u)), vec4<i32>(0i, -12873i, 18315i, 1i), 21983i), Struct_3(vec4<u32>(0u, 6861u, 1u, 43064u), Struct_2(Struct_1(false, vec2<bool>(true, false), vec4<u32>(44500u, 4294967295u, 0u, 42705u)), vec3<f32>(-260f, 807f, 286f), vec3<f32>(-1415f, 176f, -2276f), Struct_1(true, vec2<bool>(true, false), vec4<u32>(17169u, 13641u, 64258u, 0u)), vec2<u32>(4294967295u, 4294967295u)), vec4<i32>(-13425i, 0i, 0i, -1i), -57571i), Struct_3(vec4<u32>(1u, 1u, 1u, 30227u), Struct_2(Struct_1(false, vec2<bool>(true, true), vec4<u32>(10783u, 0u, 1u, 38112u)), vec3<f32>(-1986f, 154f, -647f), vec3<f32>(511f, -1627f, 556f), Struct_1(false, vec2<bool>(false, false), vec4<u32>(4294967295u, 77236u, 0u, 41857u)), vec2<u32>(0u, 2721u)), vec4<i32>(24714i, 2147483647i, i32(-2147483648), 26372i), i32(-2147483648)), Struct_3(vec4<u32>(18090u, 0u, 37397u, 1u), Struct_2(Struct_1(false, vec2<bool>(false, false), vec4<u32>(0u, 34210u, 0u, 1u)), vec3<f32>(-975f, 1324f, -418f), vec3<f32>(-303f, -109f, 1674f), Struct_1(false, vec2<bool>(true, false), vec4<u32>(0u, 89021u, 62567u, 16543u)), vec2<u32>(0u, 4294967295u)), vec4<i32>(2147483647i, i32(-2147483648), 21643i, 51064i), -46536i));

var<private> global3: array<Struct_3, 19>;

var<private> global4: vec2<u32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_4(u_input.a, vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(1i, u_input.a.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) & vec2<i32>(-40648i, -52674i), u_input.a.xx)), firstTrailingBit(u_input.a.x), countOneBits(firstTrailingBit(-42947i)), _wgslsmith_add_i32(i32(-1i) * -u_input.a.x, -(~u_input.a.x))), select(select(select(!vec3<bool>(true, global0.x, true), !vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(true, global0.x, global0.x)), select(vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, global0.x)), true), any(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, false), false))), vec3<bool>(true, global0.x, all(vec4<bool>(true, true, true, true))), !(!(!vec3<bool>(global0.x, global0.x, global0.x)))), u_input.a.x, Struct_2(Struct_1(any(vec4<bool>(true, true, false, global0.x)), vec2<bool>(!global0.x, global1[_wgslsmith_index_u32(global4.x, 27u)] >= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 27u)], 27u)]), ~vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(22345u, 27u)], 0u, 4294967295u) >> (vec4<u32>(u_input.b, 28008u, 0u, 4294967295u) % vec4<u32>(32u))), vec3<f32>(1051f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(112f, -290f))), _wgslsmith_f_op_f32(round(-1188f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, -555f, -1796f)), Struct_1(!any(vec2<bool>(global0.x, global0.x)), select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(true, global0.x)), u_input.a.x != u_input.a.x), countOneBits(~vec4<u32>(1u, 19972u, 67523u, 36418u))), vec2<u32>(max(~16752u, global1[_wgslsmith_index_u32(40010u, 27u)]), 1u)));
    global0 = select(select(select(var_0.e.d.b, var_0.c.yy, !select(vec2<bool>(false, global0.x), vec2<bool>(var_0.c.x, global0.x), vec2<bool>(var_0.c.x, var_0.e.d.a))), !(!var_0.e.a.b), var_0.e.d.b), select(var_0.c.xy, vec2<bool>(!all(vec4<bool>(false, global0.x, var_0.e.d.b.x, var_0.c.x)), false), var_0.e.a.b), !var_0.e.a.b);
    global4 = var_0.e.d.c.yw;
    global3 = array<Struct_3, 19>();
    let var_1 = !vec3<bool>(all(!(!vec3<bool>(global0.x, var_0.e.d.a, var_0.c.x))), true, global0.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.e.b.xx + var_0.e.c.yy), _wgslsmith_f_op_vec2_f32(vec2<f32>(1256f, var_0.e.b.x) * var_0.e.c.xz), true))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = -countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 27213i, u_input.a.x, u_input.a.x), vec4<i32>(-352i, u_input.a.x, u_input.a.x, 48454i) << (vec4<u32>(u_input.b, 15278u, 1u, 0u) % vec4<u32>(32u))), countOneBits(1i)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1647f), _wgslsmith_f_op_f32(490f * var_1.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1, vec3<f32>(arg_0.x, var_1.x, arg_0.x))), vec3<f32>(-624f, -875f, -1927f))))));
    var var_3 = Struct_5(Struct_4(~(~_wgslsmith_add_vec3_i32(u_input.a, u_input.a)), -vec4<i32>(-21161i, -43468i, u_input.a.x, -21580i) << (vec4<u32>(49691u, 1u, ~1u, 66055u) % vec4<u32>(32u)), select(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, false, false)), vec3<bool>(true, any(vec2<bool>(global0.x, global0.x)), false), !select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, global0.x))), ~u_input.a.x, Struct_2(Struct_1(true, select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), vec2<bool>(false, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(12067u, u_input.b, global4.x, u_input.b), vec4<u32>(global4.x, u_input.b, global4.x, 48967u))), _wgslsmith_f_op_vec3_f32(sign(arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, var_2.x, 1841f)) * var_1), Struct_1(false, vec2<bool>(true, false), vec4<u32>(u_input.b, u_input.b, 1u, 47882u)), select(abs(vec2<u32>(0u, global1[_wgslsmith_index_u32(53548u, 27u)])), ~vec2<u32>(global4.x, global1[_wgslsmith_index_u32(4294967295u, 27u)]), true))), Struct_1(global0.x, vec2<bool>(select(global4.x, global4.x, global0.x) == ~global1[_wgslsmith_index_u32(u_input.b, 27u)], true), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, global4.x, 27729u, 42049u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(global4.x, 27u)], 21627u, 1u, global1[_wgslsmith_index_u32(4294967295u, 27u)])), firstLeadingBit(vec4<u32>(108285u, 4631u, 4294967295u, 0u))))), vec2<bool>(u_input.b > 1u, all(!vec2<bool>(false, global0.x))));
    var var_4 = u_input.a;
    return var_3.a.c;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = Struct_4(~firstTrailingBit(-u_input.a), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, select(u_input.a.x, 24848i, false)), 0i), _wgslsmith_div_i32(_wgslsmith_div_i32(-21335i, select(u_input.a.x, -4995i, true)), -11468i), select(39709i, -21908i >> (_wgslsmith_add_u32(global4.x, global4.x) % 32u), !(!arg_1.x)), min(max(firstLeadingBit(1i), u_input.a.x & -29290i), ~_wgslsmith_clamp_i32(1i, 0i, 2147483647i))), !(!func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-931f, -130f, arg_0.x)), vec2<f32>(arg_0.x, 1754f))), ~(-47589i) ^ u_input.a.x, Struct_2(Struct_1(true, !(!vec2<bool>(global0.x, global0.x)), ~vec4<u32>(global4.x, 1u, global4.x, u_input.b)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -336f), -1998f, _wgslsmith_f_op_f32(abs(arg_0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-603f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-436f - 356f)) + vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), -1550f, -166f)), Struct_1(true, select(vec2<bool>(arg_1.x, true), !vec2<bool>(global0.x, global0.x), all(arg_1)), _wgslsmith_mod_vec4_u32(vec4<u32>(59111u, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<u32>(global4.x, 39879u, 21132u, 0u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(31087u, u_input.b, global1[_wgslsmith_index_u32(u_input.b, 27u)], 0u), vec4<u32>(u_input.b, 50052u, 0u, 28670u))), vec2<u32>(23295u, 1u)));
    var var_1 = Struct_5(Struct_4(_wgslsmith_mult_vec3_i32(-vec3<i32>(-27759i, u_input.a.x, -4560i), vec3<i32>(~var_0.a.x, select(var_0.b.x, u_input.a.x, arg_1.x), u_input.a.x)), vec4<i32>(u_input.a.x, firstLeadingBit(var_0.d) << (4294967295u % 32u), -2639i, -1i), var_0.c, countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(12816i, 0i, -2147483647i, 0i), abs(var_0.b))), Struct_2(var_0.e.d, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.e.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.e.c) + var_0.e.b), Struct_1(var_0.c.x, arg_1.xx, var_0.e.a.c), var_0.e.e)), Struct_1(arg_1.x, var_0.e.a.b, ~var_0.e.a.c), !arg_1.xx);
    global1 = array<u32, 27>();
    var var_2 = false;
    global4 = vec2<u32>(0u, ~1u);
    return vec4<bool>(var_0.e.d.b.x, false, var_1.b.b.x && (_wgslsmith_f_op_f32(-249f * var_0.e.c.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(var_0.e.b.x + var_0.e.b.x))), global0.x);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<u32>) -> vec3<f32> {
    global3 = array<Struct_3, 19>();
    global2 = array<Struct_3, 14>();
    global1 = array<u32, 27>();
    let var_0 = select(!func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(603f, -1100f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(806f, -696f) * vec2<f32>(515f, -1309f)), true)), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(172f, -564f, -130f)), _wgslsmith_f_op_vec2_f32(func_3()))), select(!select(vec4<bool>(true, arg_1, global0.x, arg_1), vec4<bool>(global0.x, true, arg_1, false), !vec4<bool>(arg_1, global0.x, global0.x, true)), select(select(!vec4<bool>(global0.x, arg_1, arg_1, true), vec4<bool>(true, global0.x, true, false), vec4<bool>(true, arg_1, true, true)), select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, arg_1, global0.x, true)), vec4<bool>(func_4(vec3<f32>(-1826f, 1346f, 1713f), vec2<f32>(-824f, -888f)).x, false, arg_1 || true, global0.x)), false), false);
    global0 = var_0.zz;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -722f))), _wgslsmith_f_op_f32(step(1272f, -156f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1118f)))));
}

fn func_6(arg_0: vec3<f32>) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(17689u, global1[_wgslsmith_index_u32(u_input.b, 27u)], global4.x), vec3<u32>(u_input.b, 1u, 20515u), vec3<bool>(true, global0.x, global0.x)), vec3<u32>(0u, global4.x, 0u) ^ vec3<u32>(1u, global4.x, global4.x))), 27u)] << ((_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 63321u) << (~firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b, 27u)]) % 32u)) % 32u)) & ~global4.x, 19u)];
    global1 = array<u32, 27>();
    var var_1 = -2147483647i;
    global4 = firstLeadingBit(var_0.a.wx);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-603f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(984f, arg_0.x) * -191f) + -1295f))));
    return var_2;
}

fn func_1() -> Struct_2 {
    global1 = array<u32, 27>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.a.x, global0.x, vec2<u32>(1u, u_input.b))) * _wgslsmith_f_op_vec3_f32(func_2(1i, true, vec2<u32>(4294967295u, u_input.b))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1009f) * 2315f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1700f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 886f) + _wgslsmith_div_f32(-139f, 841f)), true)))));
    global3 = array<Struct_3, 19>();
    var var_1 = Struct_4(max(_wgslsmith_mod_vec3_i32(u_input.a | abs(u_input.a), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a.x, 17248i, -22383i)), _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -37503i, u_input.a.x)))), ~u_input.a), reverseBits(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)), vec3<bool>(true, 41141u == _wgslsmith_mod_u32(global4.x, ~14440u), global0.x), u_input.a.x, Struct_2(Struct_1(all(!vec2<bool>(global0.x, false)), func_4(_wgslsmith_f_op_vec3_f32(func_2(u_input.a.x, true, vec2<u32>(1u, 33575u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(927f, var_0.x) + vec2<f32>(-398f, var_0.x))).xx, max(max(vec4<u32>(4294967295u, global4.x, u_input.b, 26537u), vec4<u32>(1u, u_input.b, global1[_wgslsmith_index_u32(20596u, 27u)], global1[_wgslsmith_index_u32(u_input.b, 27u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(29826u, 27u)], 33936u, u_input.b), vec4<u32>(global4.x, global4.x, 1u, global1[_wgslsmith_index_u32(global4.x, 27u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), 163f, 752f), Struct_1(true, !vec2<bool>(global0.x, false), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(global4.x, 27u)], 4571u, global1[_wgslsmith_index_u32(u_input.b, 27u)]), vec4<u32>(u_input.b, global4.x, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73336u, 27u)], 27u)]))), _wgslsmith_mod_vec2_u32(vec2<u32>(62901u, u_input.b), vec2<u32>(3820u, 0u)) ^ ~(~vec2<u32>(1u, u_input.b))));
    var var_2 = var_1.c.x;
    return var_1.e;
}

fn func_7(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_4(abs(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(arg_3.c.zyy, -u_input.a), firstLeadingBit(vec3<i32>(1i, 0i, u_input.a.x)))), arg_3.c, !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(arg_3.b.d.b.x, false, false), true), !vec3<bool>(global0.x, arg_3.b.a.b.x, global0.x), vec3<bool>(true, false, false)), global0.x), select(arg_2.d, -64429i, arg_0), func_1());
    let var_1 = (_wgslsmith_f_op_vec3_f32(func_2(abs(-2147483647i), all(!vec4<bool>(false, arg_2.b.a.a, global0.x, true)), var_0.e.d.c.zz)).x >= _wgslsmith_f_op_f32(-1444f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.b.c.x, arg_3.b.c.x))))) && var_0.c.x;
    let var_2 = vec3<bool>(!var_0.e.d.a & var_0.c.x, arg_3.b.a.a, any(vec3<bool>(false, arg_0, func_4(arg_2.b.c, vec2<f32>(1427f, 207f)).x)));
    let var_3 = var_0.d;
    global2 = array<Struct_3, 14>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 19>();
    let var_0 = vec4<u32>(func_7(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-493f - _wgslsmith_div_f32(700f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(251f + 1073f) + _wgslsmith_f_op_f32(f32(-1f) * -1293f)))), Struct_3(vec4<u32>(1u, 9294u, 0u, 0u) ^ ~vec4<u32>(global4.x, 4506u, 5758u, 0u), func_1(), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 2403i), _wgslsmith_dot_vec2_i32(vec2<i32>(34205i, u_input.a.x), vec2<i32>(u_input.a.x, 2147483647i)), -u_input.a.x, 39612i & u_input.a.x), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, -2147483647i), ~u_input.a.x, u_input.a.x)), global2[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 0u), 27u)] << (global4.x % 32u)), 14u)]), ~abs(global4.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.x, ~_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(0u, 27u)]), vec2<u32>(1u, 4294967295u)))), 27u)], global4.x);
    global0 = !(!vec2<bool>(global0.x, false | global0.x));
    global3 = array<Struct_3, 19>();
    let var_1 = Struct_5(Struct_4(u_input.a, select(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x)), -vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x) ^ (vec4<i32>(u_input.a.x, u_input.a.x, 95428i, 7304i) & vec4<i32>(u_input.a.x, 4444i, u_input.a.x, -1i)), func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(1189f, 226f) * vec2<f32>(213f, 200f)), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, false, false)))), vec3<bool>(true, global0.x, global0.x), 34367i, Struct_2(Struct_1(false, !vec2<bool>(global0.x, global0.x), vec4<u32>(24822u, global1[_wgslsmith_index_u32(0u, 27u)], global4.x, 1u) ^ var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(748f, 441f, -1325f) * vec3<f32>(139f, 520f, 222f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1012f, -1466f, -513f)))), func_1().a, vec2<u32>(~4294967295u, 4294967295u))), func_1().d, !func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(285f, -826f))), !select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(false, false, true))).zw);
    let var_2 = _wgslsmith_f_op_f32(-var_1.a.e.b.x);
    var var_3 = Struct_5(Struct_4(-vec3<i32>(var_1.a.a.x >> (8649u % 32u), _wgslsmith_clamp_i32(var_1.a.a.x, 25872i, 0i), u_input.a.x), vec4<i32>(-u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(-43760i, -6722i), var_1.a.b.x), !vec3<bool>(true, global0.x, true), (-u_input.a.x ^ firstLeadingBit(914i)) << (~_wgslsmith_sub_u32(0u, global1[_wgslsmith_index_u32(63958u, 27u)]) % 32u), var_1.a.e), func_1().d, !var_1.b.b);
    var var_4 = -949f;
    global4 = var_3.a.e.d.c.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1598f, var_1.a.e.b.x, -728f), _wgslsmith_f_op_vec3_f32(-var_3.a.e.b)) * _wgslsmith_f_op_vec3_f32(-func_1().b))), firstTrailingBit(_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_3.b.c.x, var_0.x), var_3.a.e.e ^ vec2<u32>(var_0.x, var_1.b.c.x), vec2<bool>(true, true)), abs(var_0.ww))));
}

