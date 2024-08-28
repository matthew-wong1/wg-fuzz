struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 0i);

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(0u, 1000f, -527f, vec4<i32>(50849i, 2147483647i, 2147483647i, 66913i));

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(70378u, -1794f, 1000f, vec4<i32>(1i, -1i, 1i, 0i)), Struct_1(49472u, 884f, 1140f, vec4<i32>(-3133i, 0i, -7855i, 13139i)), 1u, -14894i, vec4<i32>(43394i, -61782i, 9672i, 0i)), Struct_2(Struct_1(0u, 183f, 2685f, vec4<i32>(0i, -29196i, -39752i, -12898i)), Struct_1(31207u, 1000f, -1509f, vec4<i32>(2147483647i, -43855i, -1i, -1i)), 0u, 0i, vec4<i32>(0i, 0i, -77361i, 2147483647i)), Struct_2(Struct_1(12989u, -613f, 674f, vec4<i32>(2435i, 2785i, 1i, 3059i)), Struct_1(70029u, 454f, -104f, vec4<i32>(-63809i, 1i, 2147483647i, -813i)), 16221u, i32(-2147483648), vec4<i32>(652i, 21135i, i32(-2147483648), 1i)), Struct_2(Struct_1(4294967295u, 609f, 949f, vec4<i32>(0i, i32(-2147483648), 1i, 50237i)), Struct_1(93040u, 1160f, 1917f, vec4<i32>(0i, i32(-2147483648), 21125i, -49514i)), 22196u, 2147483647i, vec4<i32>(59103i, 2147483647i, 25853i, 0i)), Struct_2(Struct_1(1u, -1000f, 1414f, vec4<i32>(-53474i, -4234i, -8524i, i32(-2147483648))), Struct_1(10034u, 1000f, -199f, vec4<i32>(13809i, 4840i, 1i, -53389i)), 4294967295u, 0i, vec4<i32>(0i, 17440i, 2147483647i, 62134i)), Struct_2(Struct_1(0u, -185f, 238f, vec4<i32>(-1i, -1i, -48161i, 1i)), Struct_1(15534u, 1510f, -108f, vec4<i32>(0i, -33257i, 1i, 1i)), 4294967295u, 0i, vec4<i32>(-2518i, 42734i, -23321i, 44282i)), Struct_2(Struct_1(4294967295u, -1497f, 426f, vec4<i32>(-1i, i32(-2147483648), -7807i, 2147483647i)), Struct_1(4294967295u, 703f, 1421f, vec4<i32>(6387i, 7965i, 1i, -1i)), 0u, -45526i, vec4<i32>(-1i, -16893i, 2147483647i, 35600i)), Struct_2(Struct_1(0u, 970f, -502f, vec4<i32>(53200i, i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_1(0u, 107f, -162f, vec4<i32>(i32(-2147483648), 0i, 0i, 45911i)), 4294967295u, -36523i, vec4<i32>(-70969i, -1649i, i32(-2147483648), -1i)), Struct_2(Struct_1(4294967295u, 1392f, -648f, vec4<i32>(64102i, 1i, -84654i, 2147483647i)), Struct_1(0u, -565f, 1000f, vec4<i32>(1549i, i32(-2147483648), 36122i, -46474i)), 92144u, 7032i, vec4<i32>(-17180i, i32(-2147483648), i32(-2147483648), 982i)), Struct_2(Struct_1(0u, 210f, 121f, vec4<i32>(33681i, -29283i, -1i, -14749i)), Struct_1(0u, 475f, -1427f, vec4<i32>(1i, 22339i, 27193i, -45631i)), 115607u, 30638i, vec4<i32>(0i, i32(-2147483648), 0i, 14048i)), Struct_2(Struct_1(4294967295u, -955f, -1990f, vec4<i32>(0i, 0i, 2147483647i, 3332i)), Struct_1(5218u, 1634f, 634f, vec4<i32>(-27798i, -46240i, 34834i, 0i)), 1u, -15546i, vec4<i32>(0i, 1i, 5668i, 2147483647i)), Struct_2(Struct_1(1u, 983f, -1572f, vec4<i32>(-1i, 36639i, -1i, 0i)), Struct_1(0u, 1483f, 127f, vec4<i32>(56423i, -48286i, i32(-2147483648), -1i)), 1u, -1i, vec4<i32>(25373i, -22999i, 1i, -45595i)), Struct_2(Struct_1(4294967295u, 2461f, 285f, vec4<i32>(-1i, -1i, -1i, 41275i)), Struct_1(4294967295u, 1579f, 948f, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -2502i)), 1u, -2678i, vec4<i32>(0i, 0i, i32(-2147483648), 1i)), Struct_2(Struct_1(0u, -798f, -801f, vec4<i32>(0i, -1i, 21466i, 0i)), Struct_1(4294967295u, -746f, -987f, vec4<i32>(29095i, -6921i, i32(-2147483648), i32(-2147483648))), 1u, 29744i, vec4<i32>(-31116i, -22485i, 1i, 1i)), Struct_2(Struct_1(38182u, 1000f, -376f, vec4<i32>(0i, 0i, i32(-2147483648), -2040i)), Struct_1(1u, 410f, 812f, vec4<i32>(2147483647i, 56243i, 2147483647i, -42280i)), 8809u, 13583i, vec4<i32>(51465i, -24325i, i32(-2147483648), 2725i)), Struct_2(Struct_1(1u, 1245f, 362f, vec4<i32>(59679i, -33256i, -42664i, -16795i)), Struct_1(8243u, -254f, 321f, vec4<i32>(1i, 35375i, -4251i, -1i)), 13048u, -1i, vec4<i32>(0i, -1i, -1i, 54662i)), Struct_2(Struct_1(29109u, 290f, -1777f, vec4<i32>(-1i, 23165i, 1i, -2185i)), Struct_1(63622u, 962f, 614f, vec4<i32>(-11791i, i32(-2147483648), 0i, -24741i)), 39348u, 37623i, vec4<i32>(-95197i, -8468i, -17775i, -8835i)), Struct_2(Struct_1(18746u, -501f, 562f, vec4<i32>(-19239i, 272i, 2147483647i, -22332i)), Struct_1(12510u, -1804f, 423f, vec4<i32>(-1i, -1i, 2147483647i, i32(-2147483648))), 4294967295u, 29732i, vec4<i32>(1i, i32(-2147483648), 18911i, 0i)), Struct_2(Struct_1(34042u, 215f, 401f, vec4<i32>(i32(-2147483648), -36298i, 1i, -24081i)), Struct_1(37021u, -1312f, 547f, vec4<i32>(1i, 2147483647i, i32(-2147483648), 26679i)), 4294967295u, i32(-2147483648), vec4<i32>(2147483647i, 28780i, -1i, -14027i)), Struct_2(Struct_1(4294967295u, -1167f, 399f, vec4<i32>(i32(-2147483648), i32(-2147483648), -13993i, -1i)), Struct_1(44102u, 384f, -2074f, vec4<i32>(-48231i, -13283i, -7895i, 2147483647i)), 4294967295u, -76048i, vec4<i32>(-10034i, -4054i, 1i, 1i)), Struct_2(Struct_1(68558u, 290f, 181f, vec4<i32>(-65188i, -26214i, -325i, -36105i)), Struct_1(25287u, -641f, -1000f, vec4<i32>(7193i, -18207i, -1i, 29314i)), 1u, i32(-2147483648), vec4<i32>(15496i, 35116i, 23967i, 0i)), Struct_2(Struct_1(1u, 1923f, -1092f, vec4<i32>(1i, -49895i, 51178i, 2147483647i)), Struct_1(0u, 254f, 526f, vec4<i32>(2147483647i, 1i, 2249i, 2147483647i)), 0u, -12367i, vec4<i32>(1i, 29071i, 5889i, 2147483647i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    let var_0 = u_input.a.yz;
    global2 = arg_1.b;
    return false;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = !select(!select(!vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, true), arg_2.x), select(select(arg_2, arg_2, true), select(vec3<bool>(false, false, arg_2.x), arg_2, false), global2.d.x == _wgslsmith_dot_vec4_i32(global1.d, vec4<i32>(2147483647i, global0.x, global2.d.x, global0.x))), true);
    var_0 = vec3<bool>(all(vec2<bool>(!var_0.x, any(vec3<bool>(var_0.x, arg_0, true)) & false)), false, false);
    var_0 = vec3<bool>(all(vec3<bool>(arg_0, arg_2.x, func_3(vec4<f32>(arg_1.x, 1501f, arg_1.x, -198f), Struct_2(Struct_1(u_input.a.x, -1131f, -1000f, vec4<i32>(global0.x, global1.d.x, global2.d.x, -52778i)), Struct_1(9794u, global2.c, 292f, vec4<i32>(-50817i, global0.x, -1i, global1.d.x)), global2.a, global0.x, global2.d)) || true)), arg_0, select(false, var_0.x, true));
    let var_1 = ~_wgslsmith_add_u32(57797u, u_input.a.x) == 14014u;
    global2 = Struct_1(~46207u, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1388f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, arg_1.x) + _wgslsmith_f_op_f32(1383f * 1005f)))), global2.d << (vec4<u32>(53777u, 0u, min(0u, 1u), ~(~385u)) % vec4<u32>(32u)));
    return Struct_3(global0.x, _wgslsmith_f_op_f32(max(arg_1.x, 1013f)), Struct_2(Struct_1(abs(1u), 1000f, -109f, vec4<i32>(~29307i, 2147483647i, _wgslsmith_div_i32(-3915i, global0.x), -41304i)), Struct_1(28155u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(global2.c * -2595f)), arg_1.x, max(vec4<i32>(global1.d.x, -2147483647i, global0.x, 6595i), abs(vec4<i32>(19468i, global1.d.x, -14718i, -2147483647i)))), ~(u_input.a.x & 0u), 12164i, -reverseBits(firstTrailingBit(global2.d))), vec3<u32>(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.a.x, global1.a, global2.a)), vec4<u32>(u_input.a.x, global2.a, u_input.a.x, 9929u)), ~u_input.a.x, ~reverseBits(_wgslsmith_mod_u32(123944u, 24160u))), Struct_1(0u, -706f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-755f)) - arg_1.x)), vec4<i32>(~(-53439i), -countOneBits(36211i), abs(_wgslsmith_div_i32(1i, -30882i)), global0.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    global1 = Struct_1(1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1719f, func_2(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(311f, arg_0.c.b.b, global1.c)), vec3<bool>(true, true, false)).c.b.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, 1467f)), arg_1.b), vec4<i32>(0i, ~global1.d.x, abs(firstTrailingBit(arg_1.d.x)), global0.x));
    var var_0 = _wgslsmith_clamp_u32(arg_0.c.b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~u_input.a.x, ~global2.a), u_input.a.x, (global2.a & global2.a) ^ ~0u), ~max(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a, 1u, 0u), u_input.a, u_input.a), u_input.a)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(global2.a), 43178u), 1u));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1063f * global2.b), _wgslsmith_f_op_f32(round(-645f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.c - 1053f)))) + vec2<f32>(_wgslsmith_div_f32(-330f, -1484f), _wgslsmith_f_op_f32(arg_0.e.c - _wgslsmith_f_op_f32(f32(-1f) * -1275f))));
    global2 = Struct_1(u_input.a.x, -651f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-526f)) * _wgslsmith_div_f32(func_2(true, vec3<f32>(-188f, arg_1.c, var_1.x), vec3<bool>(true, true, true)).e.b, _wgslsmith_div_f32(-1117f, _wgslsmith_f_op_f32(-var_1.x)))), min(arg_1.d, -arg_1.d));
    let var_2 = func_2(all(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-402f, arg_1.c, -1154f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1141f, var_1.x) - vec3<f32>(global1.c, global1.c, -750f)))))), vec3<bool>(true, true, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1325f, global1.b, var_1.x, -2904f) + vec4<f32>(-687f, arg_0.c.a.c, global1.c, -164f))), Struct_2(Struct_1(4294967295u, var_1.x, arg_0.e.b, arg_0.c.e), arg_0.c.a, 99497u, select(global1.d.x, global0.x, true), ~global2.d)))).c;
    return func_2(false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-153f, global1.c, var_2.b.b))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.b, -846f, global2.c), vec3<f32>(global2.c, -1000f, -259f))) + vec3<f32>(_wgslsmith_f_op_f32(global1.b + 341f), -651f, arg_1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-479f, -665f, global1.c)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(523f, arg_0.e.b, 2585f) + vec3<f32>(515f, -178f, global2.b))))), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, false)))), vec3<bool>(true, all(vec2<bool>(true, true)), true), -global0.x >= _wgslsmith_dot_vec3_i32(global1.d.ywy & vec3<i32>(var_2.d, 27231i, var_2.e.x), ~vec3<i32>(arg_0.e.d.x, 2147483647i, arg_0.a))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = max(max(_wgslsmith_mult_u32(~4294967295u, ~arg_1.a), abs(u_input.a.x)), func_4(func_4(arg_0, func_4(arg_0, Struct_1(4294967295u, arg_0.b, 1010f, arg_0.e.d)).c.b), func_2(all(vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.b, arg_1.b, arg_1.c))), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)).e).e.a) << (0u % 32u);
    var_0 = reverseBits(~arg_1.a);
    global3 = array<Struct_2, 22>();
    var var_1 = max(i32(-1i) * -23109i, -global1.d.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(arg_0.d, arg_0.d), _wgslsmith_mod_u32(53620u, arg_0.c.a.a), 1u | global2.a), vec4<u32>(u_input.a.x, global2.a, arg_3.x, abs(global2.a))) % 32u));
    let var_2 = func_2(any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global2.c, global2.c, false)), _wgslsmith_f_op_f32(ceil(-929f)), all(vec4<bool>(false, false, false, false)))), 1741f, -657f)), select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, false)), vec3<bool>(func_3(vec4<f32>(global1.c, 1302f, -577f, 162f), Struct_2(arg_1, arg_1, arg_0.e.a, -51533i, vec4<i32>(-2147483647i, -2147483647i, global2.d.x, global0.x))), all(vec3<bool>(false, true, false)), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), select(vec3<bool>(true, true, global1.d.x == global1.d.x), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(48599u, 34051u), max(37386u, 4294967295u), ~arg_3.x) <= arg_1.a));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), global1.a <= global1.a), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false)), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, all(vec3<bool>(false, false, true)))), vec3<bool>(true, true, true), !vec3<bool>(true, !(0i >= arg_1.d.x), false));
    let var_1 = var_0;
    global2 = arg_0;
    let var_2 = func_4(func_2(any(!vec4<bool>(false, false, true, var_0.x)) && func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.c, arg_1.b, 175f, 865f))), global3[_wgslsmith_index_u32(u_input.a.x, 22u)]), _wgslsmith_f_op_vec3_f32(-arg_2.xzx), vec3<bool>(true, any(var_1.zz), true)), func_4(func_2(all(!var_1.xy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.yyw + arg_2.xwz) * vec3<f32>(255f, 693f, global2.b)), vec3<bool>(var_0.x && var_1.x, var_0.x, var_0.x | var_0.x)), Struct_1(global1.a, func_5(func_4(Struct_3(arg_1.d.x, -483f, Struct_2(arg_1, Struct_1(arg_1.a, 1000f, arg_1.c, global1.d), 30064u, 46469i, global2.d), u_input.a, Struct_1(arg_1.a, -164f, global2.b, vec4<i32>(global1.d.x, arg_0.d.x, global1.d.x, global0.x))), arg_1), func_5(Struct_3(68459i, -318f, Struct_2(arg_0, arg_1, arg_1.a, -1i, arg_0.d), vec3<u32>(arg_1.a, u_input.a.x, arg_0.a), arg_1), Struct_1(4220u, global2.c, arg_2.x, vec4<i32>(0i, arg_1.d.x, global2.d.x, 2147483647i)), arg_2.yww, u_input.a.xy), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1317f, -1236f, global1.b), arg_2.xxx)), u_input.a.xy).b, _wgslsmith_f_op_f32(abs(arg_0.b)), ~func_2(true, arg_2.wzw, vec3<bool>(var_0.x, var_1.x, true)).c.b.d)).e).e;
    var var_3 = var_2;
    return Struct_3(~firstLeadingBit(reverseBits(-1i) >> (global2.a % 32u)), arg_2.x, func_4(func_4(Struct_3(2147483647i, -2221f, global3[_wgslsmith_index_u32(global2.a << (global1.a % 32u), 22u)], vec3<u32>(15927u, 4294967295u, arg_1.a) & vec3<u32>(u_input.a.x, arg_0.a, var_2.a), Struct_1(arg_1.a, var_2.c, arg_0.c, var_3.d)), Struct_1(global2.a, -1070f, _wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, arg_1.d.x, arg_1.d.x), vec4<i32>(global2.d.x, -31365i, var_2.d.x, -19132i)))), Struct_1(~3751u, _wgslsmith_f_op_f32(-1081f + -597f), arg_2.x, -_wgslsmith_clamp_vec4_i32(global1.d, vec4<i32>(var_2.d.x, var_2.d.x, global0.x, 26010i), arg_1.d))).c, ~u_input.a, arg_0);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> vec4<i32> {
    var var_0 = func_6(Struct_1(47129u, 471f, global2.c, vec4<i32>(-18952i, max(-5948i, abs(2147483647i)), global1.d.x, -(~4408i))), func_5(func_4(func_2(any(vec2<bool>(false, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, global1.c, 1247f)), select(vec3<bool>(false, false, true), vec3<bool>(true, arg_1, false), false)), func_2(any(vec4<bool>(false, true, arg_1, false)), vec3<f32>(-1000f, global2.b, global2.b), vec3<bool>(true, true, true)).e), func_2(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.b, -1741f, 704f), vec3<f32>(global2.c, global1.b, global1.c)))), select(select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, false, false), vec3<bool>(true, true, arg_1)), select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false)), !vec3<bool>(true, arg_1, arg_1))).c.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.b, -1006f) + vec3<f32>(-779f, 150f, global2.b)), vec3<f32>(327f, global2.c, global1.b))), vec3<f32>(-541f, _wgslsmith_f_op_f32(-global1.b), global1.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(firstTrailingBit(global2.a), ~global2.a), select(_wgslsmith_mod_vec2_u32(vec2<u32>(45672u, 8566u), u_input.a.zy), u_input.a.zz, all(vec2<bool>(arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-823f, 1828f, global2.c, global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-396f, global1.b, -225f, 281f))))));
    let var_1 = max(min(reverseBits(~vec4<u32>(4294967295u, 4294967295u, 1u, var_0.c.a.a)), select(vec4<u32>(1u, var_0.e.a, arg_0.x, 1u), ~vec4<u32>(var_0.c.a.a, 57752u, 5333u, 0u), !vec4<bool>(arg_1, true, arg_1, true))) | vec4<u32>(_wgslsmith_add_u32(u_input.a.x << (global1.a % 32u), var_0.d.x), var_0.c.a.a, abs(1u), ~16966u), _wgslsmith_clamp_vec4_u32(vec4<u32>(~global2.a, global2.a | firstLeadingBit(u_input.a.x), u_input.a.x, 4294967295u), firstLeadingBit(select(vec4<u32>(u_input.a.x, var_0.e.a, 1u, 34117u), select(vec4<u32>(14350u, 1u, 1u, var_0.d.x), vec4<u32>(35078u, 14009u, 7567u, var_0.c.a.a), vec4<bool>(true, false, arg_1, false)), var_0.e.c == var_0.e.b)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, global1.a, arg_0.x, 13987u), ~vec4<u32>(global2.a, 1u, u_input.a.x, 1u))));
    let var_2 = vec2<i32>(firstLeadingBit(1i), global0.x);
    var var_3 = _wgslsmith_mod_vec4_i32(select(global2.d, vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(var_2.x, 1i)), -(var_2.x ^ global2.d.x), -2147483647i, var_0.e.d.x), vec4<bool>(all(vec3<bool>(false, arg_1, false)), countOneBits(0u) >= global1.a, func_3(vec4<f32>(var_0.b, var_0.c.b.c, 519f, var_0.e.b), Struct_2(Struct_1(global2.a, var_0.e.b, global1.b, vec4<i32>(var_0.e.d.x, -2147483647i, 39384i, var_0.e.d.x)), var_0.c.a, var_1.x, 1i, global2.d)), func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1617f, -920f, var_0.b, global1.b), vec4<f32>(global2.c, global1.c, var_0.e.c, var_0.c.b.b))), global3[_wgslsmith_index_u32(firstTrailingBit(19379u), 22u)]))), abs(global2.d));
    var var_4 = arg_1;
    return _wgslsmith_div_vec4_i32(vec4<i32>(~(~2147483647i), ~_wgslsmith_mult_i32(~(-2147483647i), 1i), abs(~global0.x), 5688i), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(firstLeadingBit(var_2.x), max(var_3.x, 0i)), ~func_2(true, vec3<f32>(165f, global1.b, global2.b), vec3<bool>(arg_1, arg_1, true)).a), 25300i, var_0.c.e.x, ~select(_wgslsmith_div_i32(global2.d.x, -1126i), var_0.e.d.x, -9781i != global0.x)));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_mod_u32(arg_2.d.x, _wgslsmith_mult_u32(global2.a, ~9212u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.b * _wgslsmith_f_op_f32(global1.b + 454f))), global2.c, vec4<i32>(-2147483647i, ~abs(3766i), abs(arg_1.e.d.x), _wgslsmith_mult_i32(min(countOneBits(global1.d.x), _wgslsmith_div_i32(arg_3, global0.x)), arg_0.d.x)));
    let var_0 = global3[_wgslsmith_index_u32(~4294967295u, 22u)];
    return arg_1.c.a;
}

fn func_8(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = abs(arg_2);
    global3 = array<Struct_2, 22>();
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-arg_0.b.b), -1238f))))));
    var var_2 = ~_wgslsmith_mult_i32(~func_6(Struct_1(arg_1.a, 1000f, -156f, vec4<i32>(arg_0.d, global0.x, 1i, -1i)), Struct_1(arg_2, arg_3, arg_0.a.c, vec4<i32>(1i, global2.d.x, arg_1.d.x, global0.x)), vec4<f32>(-692f, global1.b, global2.b, global1.c)).e.d.x, abs(-17123i)) | ~global2.d.x;
    let var_3 = func_2(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.c)))), _wgslsmith_f_op_f32(step(-790f, -1943f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(629f * _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.c)) - -247f))), vec3<bool>(select(select(false, true, false), false, true) & all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), !(_wgslsmith_f_op_f32(-global1.b) < _wgslsmith_f_op_f32(floor(arg_3))), false)).c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.b.b))), 160f)) - -768f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_f32(func_8(Struct_2(Struct_1(_wgslsmith_add_u32(0u, 4294967295u) & u_input.a.x, _wgslsmith_f_op_f32(-131f - global1.c), -576f, abs(global1.d)), func_7(Struct_1(global1.a, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(select(-389f, global2.b, false)), func_1(vec3<u32>(11573u, u_input.a.x, global2.a), true)), Struct_3(global2.d.x, global2.b, global3[_wgslsmith_index_u32(~global2.a, 22u)], u_input.a, Struct_1(global2.a, -328f, 342f, global1.d)), Struct_3(28627i, _wgslsmith_f_op_f32(-global1.c), Struct_2(Struct_1(12673u, 214f, global1.b, vec4<i32>(-35801i, -1i, global0.x, 2147483647i)), Struct_1(global2.a, 232f, 1247f, global1.d), 4294967295u, global2.d.x, vec4<i32>(global2.d.x, 46801i, 6777i, 1i)), u_input.a, Struct_1(0u, -209f, -873f, global2.d)), abs(func_6(Struct_1(18243u, global2.b, global2.c, vec4<i32>(global0.x, -25030i, global0.x, 21239i)), Struct_1(global2.a, global2.c, global1.c, vec4<i32>(-2147483647i, 1i, global1.d.x, global0.x)), vec4<f32>(674f, 685f, -766f, 1910f)).c.e.x)), _wgslsmith_sub_u32(4294967295u, ~32002u), global0.x, -(-vec4<i32>(global1.d.x, global2.d.x, 6920i, global1.d.x) ^ (global2.d ^ global1.d))), Struct_1(4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(exp2(global2.b))))), -1000f, global1.d << (min(~vec4<u32>(u_input.a.x, u_input.a.x, global1.a, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global1.a, global2.a, global1.a), vec4<u32>(global1.a, 4294967295u, global2.a, global2.a))) % vec4<u32>(32u))), 1u, global1.c));
    var var_2 = vec4<bool>(true, !(-(global0.x >> (u_input.a.x % 32u)) != (_wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.x, global0.x, -10618i), global2.d.xyy) >> (4294967295u % 32u))), true, any(select(vec4<bool>(-22183i > global0.x, any(vec2<bool>(true, false)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), true)));
    let var_3 = global2.a;
    global3 = array<Struct_2, 22>();
    let var_4 = var_1;
    var var_5 = abs(_wgslsmith_mod_i32(-13062i, global2.d.x));
    global2 = func_4(Struct_3(func_4(Struct_3(_wgslsmith_div_i32(global0.x, global2.d.x), -1786f, Struct_2(Struct_1(global2.a, var_1, -337f, vec4<i32>(0i, global0.x, 14308i, 9170i)), Struct_1(7699u, var_1, var_4, vec4<i32>(0i, 0i, global1.d.x, 0i)), 0u, -62791i, global2.d), u_input.a, func_7(Struct_1(global1.a, var_4, -1000f, vec4<i32>(24045i, global0.x, global0.x, global2.d.x)), Struct_3(30347i, global2.b, global3[_wgslsmith_index_u32(global2.a, 22u)], vec3<u32>(u_input.a.x, 4294967295u, global1.a), Struct_1(global2.a, -452f, global2.c, global2.d)), Struct_3(46292i, var_1, global3[_wgslsmith_index_u32(47322u, 22u)], vec3<u32>(u_input.a.x, 0u, 28386u), Struct_1(global1.a, 176f, var_1, global2.d)), -1i)), Struct_1(_wgslsmith_mult_u32(51970u, u_input.a.x), -965f, _wgslsmith_f_op_f32(select(-211f, global2.b, var_2.x)), global1.d ^ global1.d)).a, global2.c, func_4(func_4(func_2(var_2.x, vec3<f32>(1342f, -1098f, var_1), vec3<bool>(false, false, true)), Struct_1(global1.a, var_4, global2.b, vec4<i32>(global2.d.x, 29160i, 11791i, -2147483647i))), Struct_1(global2.a & global1.a, _wgslsmith_f_op_f32(-1361f - 1213f), _wgslsmith_f_op_f32(1371f - -1951f), _wgslsmith_add_vec4_i32(vec4<i32>(global2.d.x, global0.x, 1i, 1i), vec4<i32>(51335i, global2.d.x, 19061i, 27934i)))).c, _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(countOneBits(0u), func_4(Struct_3(-28204i, -1441f, Struct_2(Struct_1(global2.a, global1.b, var_4, global1.d), Struct_1(51740u, 404f, -1213f, global1.d), 27332u, global1.d.x, global2.d), u_input.a, Struct_1(u_input.a.x, var_4, -1000f, vec4<i32>(global2.d.x, global2.d.x, global2.d.x, global1.d.x))), Struct_1(global1.a, 463f, -997f, global1.d)).c.a.a, _wgslsmith_add_u32(35949u, global2.a))), Struct_1(~1u, -803f, _wgslsmith_f_op_f32(func_6(Struct_1(1u, global2.b, 379f, vec4<i32>(10425i, global1.d.x, global1.d.x, global1.d.x)), Struct_1(1u, var_1, -659f, vec4<i32>(global0.x, -58984i, -2147483647i, global1.d.x)), vec4<f32>(global1.b, var_4, 1065f, global1.b)).e.b + _wgslsmith_f_op_f32(var_1 * 1207f)), vec4<i32>(global0.x << (4294967295u % 32u), func_6(Struct_1(16777u, 614f, global2.c, global1.d), Struct_1(0u, global1.c, -771f, vec4<i32>(-1i, 1i, -53675i, global0.x)), vec4<f32>(-151f, var_4, global1.c, -171f)).c.e.x, global1.d.x, global0.x))), func_7(func_2(true, vec3<f32>(_wgslsmith_f_op_f32(990f + var_4), _wgslsmith_f_op_f32(global2.b - -608f), var_4), !var_2.wzx).e, func_4(Struct_3(min(global0.x, -13920i), _wgslsmith_f_op_f32(trunc(var_1)), func_2(var_2.x, vec3<f32>(754f, -537f, var_1), var_2.ywx).c, vec3<u32>(global1.a, 14666u, 4294967295u), Struct_1(u_input.a.x, var_4, var_4, global2.d)), func_2(!var_2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1514f, 1074f, var_4) + vec3<f32>(global2.c, 353f, 931f)), vec3<bool>(var_2.x, var_2.x, var_2.x)).e), Struct_3(_wgslsmith_mod_i32(-2147483647i, global2.d.x >> (global1.a % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -519f))), Struct_2(func_4(Struct_3(0i, -1000f, Struct_2(Struct_1(global1.a, var_4, -1614f, global1.d), Struct_1(u_input.a.x, -672f, global2.c, vec4<i32>(-35327i, global0.x, global0.x, global0.x)), global2.a, 1i, global2.d), vec3<u32>(0u, global2.a, u_input.a.x), Struct_1(2206u, global2.b, var_1, vec4<i32>(global1.d.x, 37057i, global0.x, 4070i))), Struct_1(global2.a, global1.b, -1170f, vec4<i32>(global1.d.x, 2147483647i, -1i, global0.x))).e, Struct_1(u_input.a.x, var_1, 517f, vec4<i32>(-2147483647i, 1818i, global2.d.x, 70535i)), firstTrailingBit(u_input.a.x), 1i, global2.d), firstLeadingBit(reverseBits(vec3<u32>(42506u, 0u, 59557u))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22166u, 3145u, 6743u), vec4<u32>(global1.a, 0u, 83737u, 49599u)), _wgslsmith_f_op_f32(max(878f, -105f)), _wgslsmith_f_op_f32(round(1000f)), global1.d)), -firstTrailingBit(global0.x << (13250u % 32u)))).c.b;
    let var_6 = -_wgslsmith_add_vec3_i32(~global1.d.xxw, -vec3<i32>(global1.d.x, func_5(Struct_3(global1.d.x, 335f, Struct_2(Struct_1(39436u, -442f, 953f, vec4<i32>(-50203i, global2.d.x, 0i, -1i)), Struct_1(global2.a, var_1, var_1, vec4<i32>(global2.d.x, -1i, global0.x, 32421i)), global2.a, -13620i, global1.d), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), Struct_1(4294967295u, var_1, 811f, global2.d)), Struct_1(0u, global1.b, var_1, global2.d), vec3<f32>(-1206f, var_4, 100f), u_input.a.zy).d.x, ~global1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(608i), 1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2051f, _wgslsmith_f_op_f32(-global1.b)) - -192f), var_4)));
}

