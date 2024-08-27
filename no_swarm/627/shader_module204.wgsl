struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, vec2<f32>(-705f, 337f), true, 40883u, vec3<f32>(1000f, 656f, 2618f)), Struct_1(true, vec2<f32>(-1224f, 170f), false, 0u, vec3<f32>(676f, 1103f, 399f)), Struct_1(false, vec2<f32>(770f, 873f), true, 4294967295u, vec3<f32>(-327f, 316f, -2401f)), Struct_1(true, vec2<f32>(-765f, -778f), false, 55474u, vec3<f32>(-144f, 106f, -1132f)), Struct_1(true, vec2<f32>(806f, 475f), false, 41756u, vec3<f32>(-1308f, 131f, -1813f)), Struct_1(false, vec2<f32>(286f, 2819f), false, 2617u, vec3<f32>(338f, -222f, -361f)), Struct_1(true, vec2<f32>(1000f, -929f), false, 20368u, vec3<f32>(-376f, 1000f, 1839f)), Struct_1(false, vec2<f32>(1174f, 1997f), true, 12988u, vec3<f32>(571f, 147f, -1270f)), Struct_1(false, vec2<f32>(406f, 392f), false, 44223u, vec3<f32>(1018f, -535f, 528f)), Struct_1(true, vec2<f32>(581f, 2241f), true, 24411u, vec3<f32>(-339f, 1022f, -650f)), Struct_1(true, vec2<f32>(1942f, 170f), true, 4294967295u, vec3<f32>(-1000f, -386f, -521f)), Struct_1(true, vec2<f32>(320f, 345f), false, 0u, vec3<f32>(-526f, 151f, -1540f)), Struct_1(true, vec2<f32>(476f, -998f), true, 100977u, vec3<f32>(-515f, -540f, -175f)), Struct_1(true, vec2<f32>(1105f, -802f), true, 4294967295u, vec3<f32>(-432f, 402f, 944f)), Struct_1(false, vec2<f32>(733f, 618f), false, 119203u, vec3<f32>(-945f, -497f, 1770f)), Struct_1(true, vec2<f32>(-196f, -1000f), false, 1u, vec3<f32>(-2351f, 1173f, -336f)), Struct_1(false, vec2<f32>(661f, 1195f), true, 4294967295u, vec3<f32>(-650f, 511f, -402f)), Struct_1(false, vec2<f32>(-216f, -288f), false, 20505u, vec3<f32>(-1006f, -1229f, -176f)), Struct_1(true, vec2<f32>(-1030f, 1744f), true, 0u, vec3<f32>(-547f, 1175f, 357f)), Struct_1(true, vec2<f32>(-2589f, 503f), false, 15718u, vec3<f32>(-1237f, 1000f, -1320f)), Struct_1(false, vec2<f32>(-774f, -1152f), false, 1u, vec3<f32>(197f, -1132f, -1000f)), Struct_1(false, vec2<f32>(-2142f, -1159f), true, 52864u, vec3<f32>(-491f, -824f, 1416f)), Struct_1(false, vec2<f32>(859f, 742f), true, 38710u, vec3<f32>(1286f, -1275f, 1711f)), Struct_1(true, vec2<f32>(775f, 641f), false, 4294967295u, vec3<f32>(728f, -1104f, 465f)), Struct_1(true, vec2<f32>(187f, -730f), false, 2611u, vec3<f32>(-800f, -1903f, 1967f)), Struct_1(true, vec2<f32>(450f, -815f), true, 10368u, vec3<f32>(628f, -770f, 1095f)), Struct_1(true, vec2<f32>(-1000f, 771f), false, 1u, vec3<f32>(-293f, 261f, 1000f)));

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: array<bool, 26>;

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(30601u, vec3<u32>(1u, 51779u, 4294967295u), -1000f, vec4<bool>(true, true, true, false)), Struct_2(4294967295u, vec3<u32>(1u, 34280u, 57368u), 1000f, vec4<bool>(false, false, false, false)), Struct_2(66360u, vec3<u32>(38624u, 30690u, 1u), 1039f, vec4<bool>(false, false, true, true)), Struct_2(14891u, vec3<u32>(51287u, 1u, 0u), 755f, vec4<bool>(true, false, true, true)), Struct_2(27852u, vec3<u32>(14634u, 0u, 1u), -361f, vec4<bool>(true, true, false, true)), Struct_2(1u, vec3<u32>(1u, 64460u, 15149u), 269f, vec4<bool>(false, true, true, false)), Struct_2(18183u, vec3<u32>(1u, 4294967295u, 0u), 359f, vec4<bool>(true, false, false, false)), Struct_2(39719u, vec3<u32>(70898u, 26284u, 12639u), -1208f, vec4<bool>(false, true, true, true)), Struct_2(4294967295u, vec3<u32>(1u, 80513u, 21759u), 991f, vec4<bool>(true, true, false, false)), Struct_2(44535u, vec3<u32>(15503u, 21050u, 4294967295u), -959f, vec4<bool>(true, true, false, true)), Struct_2(1u, vec3<u32>(62072u, 53287u, 1u), -725f, vec4<bool>(false, true, true, true)), Struct_2(0u, vec3<u32>(16222u, 4294967295u, 85906u), 307f, vec4<bool>(true, true, true, true)), Struct_2(0u, vec3<u32>(1u, 2323u, 104619u), -134f, vec4<bool>(true, false, true, true)), Struct_2(0u, vec3<u32>(1u, 4294967295u, 1u), -1000f, vec4<bool>(false, false, true, true)), Struct_2(36989u, vec3<u32>(4294967295u, 36u, 1u), -709f, vec4<bool>(false, true, true, true)), Struct_2(0u, vec3<u32>(36419u, 0u, 36558u), -1733f, vec4<bool>(true, true, false, true)), Struct_2(31700u, vec3<u32>(119082u, 113712u, 1u), -1536f, vec4<bool>(false, true, true, true)), Struct_2(0u, vec3<u32>(17685u, 4294967295u, 4294967295u), 1000f, vec4<bool>(false, false, false, false)), Struct_2(1u, vec3<u32>(0u, 4294967295u, 35734u), -2266f, vec4<bool>(false, false, false, true)), Struct_2(108210u, vec3<u32>(67617u, 131820u, 0u), -925f, vec4<bool>(false, false, true, false)), Struct_2(50080u, vec3<u32>(49811u, 58517u, 49444u), 194f, vec4<bool>(true, true, true, true)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    global1 = array<vec4<f32>, 8>();
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-499f, _wgslsmith_f_op_f32(floor(-1011f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(128f)), -286f)))), all(vec3<bool>(!(!global2[_wgslsmith_index_u32(u_input.a, 26u)]), _wgslsmith_clamp_u32(u_input.a, 4294967295u, 0u) < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 47831u), vec4<u32>(u_input.a, u_input.a, 17071u, 116228u)), arg_0.x)), ~(u_input.a >> (1u % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(744f, -991f, 1000f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))));
    let var_1 = global0[_wgslsmith_index_u32(~var_0.d, 27u)];
    var var_2 = arg_0.x;
    return -34169i;
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = Struct_3(Struct_1(any(select(select(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(arg_0.x, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(30751u, 26u)], false, global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(76145u, 26u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(76797u, 26u)])), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(77751u, 26u)]), false)), vec2<f32>(1372f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -676f)))), false, _wgslsmith_add_u32(reverseBits(4294967295u), arg_0.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(max(-368f, 180f)))))));
    var var_1 = -vec4<i32>(_wgslsmith_mod_i32(~0i, func_3(vec2<bool>(true, true))), abs(_wgslsmith_sub_i32(-1i, 10874i)), 1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -13216i, 24835i, 41575i), select(vec4<i32>(4857i, 2147483647i, -23450i, 14097i), vec4<i32>(0i, -54733i, 8199i, 24450i), var_0.a.c))) ^ firstLeadingBit(vec4<i32>(2147483647i, ~max(-2147483647i, -20517i), 1i, -1i));
    global2 = array<bool, 26>();
    var_0 = Struct_3(Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.b) * var_0.a.e.xx)), var_0.a.a, _wgslsmith_div_u32(~u_input.a & ~1u, ~4294967295u), vec3<f32>(_wgslsmith_f_op_f32(-897f * _wgslsmith_div_f32(var_0.a.e.x, 480f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.b.x, var_0.a.b.x), _wgslsmith_f_op_f32(-var_0.a.e.x)), var_0.a.b.x)));
    let var_2 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(1561f, var_0.a.e.x)));
    return i32(-1i) * -2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = Struct_1(true, vec2<f32>(1762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-728f, -1693f)))))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) ^ firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec4<u32>(u_input.a, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 37478u), ~4294967295u, abs(20418u & u_input.a))), 26u)], _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(7909u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 33731u, 8770u, 45463u)) % vec4<u32>(32u)), ~(~countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(537f * -2468f), _wgslsmith_f_op_f32(trunc(789f)), _wgslsmith_f_op_f32(f32(-1f) * -595f)) - vec3<f32>(_wgslsmith_f_op_f32(select(-398f, 886f, global2[_wgslsmith_index_u32(u_input.a, 26u)])), _wgslsmith_f_op_f32(1160f * -1914f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = array<vec4<f32>, 8>();
    global3 = array<Struct_2, 21>();
    var var_1 = Struct_1(true | (_wgslsmith_dot_vec2_i32(arg_1.wy << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), select(arg_0, arg_1.zz, vec2<bool>(false, true))) > arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(586f, var_0.b.x), var_0.e.xy))))) - var_0.b), true, 39032u, vec3<f32>(var_0.e.x, var_0.b.x, -1543f));
    var var_2 = min(max(abs(-(-1i << (u_input.a % 32u))), -arg_1.x), -9157i);
    return _wgslsmith_clamp_vec4_u32(firstLeadingBit(~vec4<u32>(~var_1.d, ~var_1.d, _wgslsmith_div_u32(var_1.d, u_input.a), ~41529u)), _wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(var_1.d, var_0.d, var_0.d, 1u)), vec4<u32>(4294967295u, var_1.d, ~var_0.d | 1u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, var_1.d, var_0.d, 0u), vec4<u32>(var_0.d, 0u, 3114u, 1u))))), ~abs(vec4<u32>(var_1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), 23835u, u_input.a ^ var_0.d)));
}

fn func_1() -> vec4<u32> {
    global0 = array<Struct_1, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(-395f, 1000f)) - vec2<f32>(1f, 1f))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x) <= -1000f;
    global1 = array<vec4<f32>, 8>();
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, firstTrailingBit(-18130i), abs(49147i), -21087i) ^ -vec4<i32>(4713i, 14530i, -2147483647i, 1i), ~_wgslsmith_add_vec4_i32(-vec4<i32>(-1i, 2147483647i, 2147483647i, 8041i), -vec4<i32>(1i, 0i, -22116i, -34070i))) != reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-46104i, -2147483647i, 6280i) << (vec3<u32>(0u, 1u, u_input.a) % vec3<u32>(32u)), vec3<i32>(7457i, -65151i, 16407i)), ~(-vec3<i32>(0i, 54773i, 9876i))));
    return ~firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 33795u, 4294967295u, 25902u), abs(vec4<u32>(u_input.a, 36785u, 0u, u_input.a)))) << (~func_4(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-32007i, 8651i), vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), vec4<i32>(func_2(vec2<u32>(u_input.a, 4294967295u)), 1i, _wgslsmith_div_i32(-37525i, -12689i), i32(-1i) * -1i)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 26u)], -4379i != ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 32290i, -1i, 0i), vec4<i32>(51826i, 2147483647i, -20818i, -2147483647i))));
    var var_1 = ~func_1();
    var var_2 = true;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(var_1.x | (var_1.x ^ min(var_1.x, var_1.x))), 0u), 27u)];
    global0 = array<Struct_1, 27>();
    let var_4 = select(select(select(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], true)), select(select(vec4<bool>(var_3.a, global2[_wgslsmith_index_u32(1u, 26u)], true, var_3.c), vec4<bool>(var_3.a, var_3.c, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], false, var_3.a, var_3.c)), vec4<bool>(false, true, global2[_wgslsmith_index_u32(var_3.d, 26u)], global2[_wgslsmith_index_u32(var_1.x, 26u)]), vec4<bool>(var_3.c, true, global2[_wgslsmith_index_u32(0u, 26u)], true)), !select(vec4<bool>(false, false, var_3.a, global2[_wgslsmith_index_u32(var_3.d, 26u)]), vec4<bool>(var_3.a, true, true, false), global2[_wgslsmith_index_u32(u_input.a, 26u)])), select(vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)])), var_1.x <= 96689u, true, true), vec4<bool>(global2[_wgslsmith_index_u32(~u_input.a, 26u)], false, true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, var_3.d), 26u)]), true), var_3.a), select(select(vec4<bool>(true, false, var_3.a, false), !vec4<bool>(var_3.c, true, false, global2[_wgslsmith_index_u32(0u, 26u)]), var_3.c), !select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(2898u, 26u)], global2[_wgslsmith_index_u32(17905u, 26u)], var_3.a), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], var_3.c, true, var_3.c), !vec4<bool>(var_3.a, false, false, global2[_wgslsmith_index_u32(var_3.d, 26u)])), !(!select(vec4<bool>(global2[_wgslsmith_index_u32(var_3.d, 26u)], var_3.c, true, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], true, var_3.c, global2[_wgslsmith_index_u32(16490u, 26u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(var_3.d, 26u)])))), select(select(vec4<bool>(all(vec2<bool>(false, false)), true, var_3.a, true), !(!vec4<bool>(false, var_3.a, false, global2[_wgslsmith_index_u32(var_1.x, 26u)])), vec4<bool>(var_3.a, any(vec4<bool>(false, var_3.c, false, false)), !global2[_wgslsmith_index_u32(var_3.d, 26u)], any(vec4<bool>(false, false, var_3.a, false)))), select(vec4<bool>(var_3.a, global2[_wgslsmith_index_u32(1u, 26u)], true, any(vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], var_3.a))), !(!vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 26u)], false, global2[_wgslsmith_index_u32(4294967295u, 26u)])), !all(vec3<bool>(false, var_3.a, global2[_wgslsmith_index_u32(4375u, 26u)]))), any(select(vec3<bool>(global2[_wgslsmith_index_u32(33286u, 26u)], global2[_wgslsmith_index_u32(var_1.x, 26u)], true), select(vec3<bool>(var_3.c, var_3.a, var_3.c), vec3<bool>(global2[_wgslsmith_index_u32(var_3.d, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], false), var_3.a), false))));
    var_1 = vec4<u32>((func_4(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -22939i), vec2<i32>(24434i, -71780i)), abs(vec4<i32>(-1i, 2147483647i, 2147483647i, -2147483647i))).x | 4294967295u) >> ((u_input.a ^ (~0u ^ firstTrailingBit(48397u))) % 32u), _wgslsmith_add_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, var_1.x))), 1u), u_input.a, ~1u);
    var var_5 = firstTrailingBit(~max(_wgslsmith_sub_u32(select(u_input.a, 35841u, var_4.x), func_4(vec2<i32>(31082i, 0i), vec4<i32>(1i, 3034i, -1i, -8945i)).x), ~select(0u, var_3.d, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.e.x)) - _wgslsmith_div_f32(-1096f, _wgslsmith_f_op_f32(-var_3.e.x)))));
}

