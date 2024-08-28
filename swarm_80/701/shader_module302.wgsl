struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_3(1u, 1000f, Struct_2(vec2<f32>(633f, -144f), Struct_1(true, 1i, true, -6086i), vec4<u32>(25099u, 4294967295u, 70127u, 1u), Struct_1(false, i32(-2147483648), false, -13563i), vec3<i32>(1i, -38752i, -30213i)), Struct_2(vec2<f32>(834f, -683f), Struct_1(true, 8888i, true, i32(-2147483648)), vec4<u32>(1u, 13863u, 80278u, 123686u), Struct_1(true, 0i, false, 0i), vec3<i32>(-11280i, 0i, -82697i)), -1436f), vec2<u32>(31300u, 4294967295u), vec2<f32>(-1173f, -997f)), Struct_4(Struct_3(35849u, 1000f, Struct_2(vec2<f32>(-1910f, -1353f), Struct_1(true, i32(-2147483648), false, 69059i), vec4<u32>(1u, 72822u, 6004u, 0u), Struct_1(false, -23312i, false, i32(-2147483648)), vec3<i32>(-36660i, i32(-2147483648), 0i)), Struct_2(vec2<f32>(1353f, 1294f), Struct_1(false, -7600i, false, 52085i), vec4<u32>(1u, 43672u, 22634u, 69044u), Struct_1(true, -39930i, true, 8788i), vec3<i32>(44254i, 2147483647i, -1i)), -1000f), vec2<u32>(15962u, 1u), vec2<f32>(465f, 333f)), Struct_4(Struct_3(4294967295u, 361f, Struct_2(vec2<f32>(-374f, 821f), Struct_1(true, 58573i, true, -40713i), vec4<u32>(4294967295u, 0u, 79257u, 68134u), Struct_1(true, 2147483647i, false, i32(-2147483648)), vec3<i32>(2147483647i, -34295i, 1i)), Struct_2(vec2<f32>(-1000f, 490f), Struct_1(false, 16764i, false, i32(-2147483648)), vec4<u32>(4294967295u, 13813u, 50217u, 0u), Struct_1(true, 0i, false, -7989i), vec3<i32>(-33130i, 8059i, -1i)), 1848f), vec2<u32>(20229u, 4294967295u), vec2<f32>(-1830f, -1275f)), Struct_4(Struct_3(0u, -1000f, Struct_2(vec2<f32>(2249f, 540f), Struct_1(true, 2147483647i, false, 1i), vec4<u32>(31900u, 1u, 41556u, 0u), Struct_1(false, 2147483647i, false, 2147483647i), vec3<i32>(-3446i, -13444i, 1i)), Struct_2(vec2<f32>(1892f, 1621f), Struct_1(false, -1i, false, -23364i), vec4<u32>(56827u, 6347u, 1u, 0u), Struct_1(false, i32(-2147483648), false, 1i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648))), -196f), vec2<u32>(1u, 4294967295u), vec2<f32>(-1460f, 195f)), Struct_4(Struct_3(3868u, 865f, Struct_2(vec2<f32>(1000f, -218f), Struct_1(false, -12211i, true, 13546i), vec4<u32>(1u, 18136u, 0u, 1u), Struct_1(true, i32(-2147483648), true, i32(-2147483648)), vec3<i32>(40343i, 12375i, 2147483647i)), Struct_2(vec2<f32>(479f, -1066f), Struct_1(false, -43860i, true, 2147483647i), vec4<u32>(42723u, 4294967295u, 4294967295u, 21951u), Struct_1(true, 0i, false, 13111i), vec3<i32>(-1i, -11242i, -26179i)), -1513f), vec2<u32>(10853u, 1u), vec2<f32>(726f, 534f)), Struct_4(Struct_3(13273u, -958f, Struct_2(vec2<f32>(-169f, -864f), Struct_1(false, 14888i, true, 31098i), vec4<u32>(1u, 1023u, 94371u, 19136u), Struct_1(false, 1i, false, i32(-2147483648)), vec3<i32>(47475i, 1i, 0i)), Struct_2(vec2<f32>(1000f, 546f), Struct_1(false, 49289i, false, 8160i), vec4<u32>(8653u, 84998u, 1u, 63057u), Struct_1(true, 2147483647i, true, 1i), vec3<i32>(8171i, 5525i, -13439i)), 130f), vec2<u32>(0u, 1u), vec2<f32>(197f, -898f)), Struct_4(Struct_3(20469u, 1000f, Struct_2(vec2<f32>(-514f, -995f), Struct_1(true, -1i, true, -8658i), vec4<u32>(25789u, 0u, 4294967295u, 25755u), Struct_1(true, -34929i, true, -32902i), vec3<i32>(0i, 11831i, i32(-2147483648))), Struct_2(vec2<f32>(798f, -730f), Struct_1(true, 7083i, false, -1i), vec4<u32>(102683u, 68684u, 0u, 1u), Struct_1(true, 1i, false, i32(-2147483648)), vec3<i32>(-1i, 1i, 1i)), 129f), vec2<u32>(17980u, 0u), vec2<f32>(1354f, -486f)), Struct_4(Struct_3(23774u, -1909f, Struct_2(vec2<f32>(373f, -464f), Struct_1(true, 0i, true, -11977i), vec4<u32>(98812u, 1u, 70655u, 62198u), Struct_1(false, 23753i, true, 0i), vec3<i32>(-1i, 0i, 2147483647i)), Struct_2(vec2<f32>(-655f, 1324f), Struct_1(false, 0i, false, 0i), vec4<u32>(4294967295u, 1u, 32440u, 11603u), Struct_1(false, 1007i, false, 1i), vec3<i32>(10833i, 1i, 48914i)), -323f), vec2<u32>(1u, 33899u), vec2<f32>(-687f, 207f)), Struct_4(Struct_3(1u, 367f, Struct_2(vec2<f32>(-1000f, 808f), Struct_1(true, 0i, true, 0i), vec4<u32>(46389u, 8378u, 36313u, 35002u), Struct_1(false, -18478i, true, -27209i), vec3<i32>(-1i, 1i, 1i)), Struct_2(vec2<f32>(1275f, 829f), Struct_1(false, 12490i, true, 0i), vec4<u32>(4294967295u, 1u, 23246u, 19260u), Struct_1(true, 24422i, true, i32(-2147483648)), vec3<i32>(6904i, 0i, -25194i)), 344f), vec2<u32>(41190u, 45459u), vec2<f32>(-721f, -1000f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> vec2<f32> {
    var var_0 = global1[_wgslsmith_index_u32(1u, 9u)];
    let var_1 = Struct_2(var_0.c, var_0.a.c.b, vec4<u32>(abs(565u), 36567u, 75802u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(65015u, 4294967295u)) << (41774u % 32u))), Struct_1(var_0.a.d.d.c, 1i, select(var_0.a.c.d.c != true, true, true) | !var_0.a.d.d.a, 1i), vec3<i32>(7515i & _wgslsmith_mod_i32(var_0.a.d.e.x, var_0.a.c.b.d), arg_2, firstTrailingBit(_wgslsmith_dot_vec3_i32(var_0.a.c.e, vec3<i32>(661i, 0i, -31725i)) >> (var_0.a.a % 32u))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_add_i32(min(-1i, reverseBits(18123i) >> (1u % 32u)), -var_0.a.d.d.b), arg_2);
    global1 = array<Struct_4, 9>();
    let var_3 = ~firstLeadingBit(firstTrailingBit(i32(-1i) * -2147483647i));
    return var_0.c;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(215f, 1000f) + _wgslsmith_div_vec2_f32(vec2<f32>(-666f, 1000f), vec2<f32>(821f, -774f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, -295f, -1286f, -2019f) * vec4<f32>(260f, -263f, 397f, -1040f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 120f, 704f, -264f), vec4<f32>(-805f, -260f, 2199f, -103f)))), -16161i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-226f + -779f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(330f, -896f) * vec2<f32>(244f, -482f))) + vec2<f32>(-1444f, _wgslsmith_f_op_f32(f32(-1f) * -192f)))), Struct_1(any(!select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, false, false))), countOneBits(~(-18632i >> (0u % 32u))), !(!(!arg_0.x)), u_input.a.x), ~vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c, u_input.c, 0u, 80458u)), ~vec4<u32>(global0[_wgslsmith_index_u32(1u, 29u)], u_input.c, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 29u)])), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 49551u, u_input.c, 33528u), vec4<u32>(u_input.c, u_input.c, u_input.c, 1u)), 1u, ~countOneBits(global0[_wgslsmith_index_u32(75077u, 29u)])), Struct_1(false, ~(-67430i), true, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -10879i));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, _wgslsmith_f_op_f32(round(var_0.a.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -375f, 1011f, var_0.a.x) * vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-796f + -1375f), _wgslsmith_f_op_f32(-1236f * var_0.a.x), _wgslsmith_f_op_vec2_f32(func_3(var_0.a, vec4<f32>(-399f, -843f, 1667f, var_0.a.x), 2147483647i, 1068f)).x, _wgslsmith_f_op_f32(f32(-1f) * -486f)))), 45485i, 1885f)), var_0.d, var_0.c, var_0.b, firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.a.x, 1i, u_input.a.x))));
    var var_2 = abs(_wgslsmith_div_i32(select(_wgslsmith_add_i32(min(8155i, -52524i), ~(-24359i)), u_input.b, !arg_0.x), -var_1.b.b));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1764f, var_1.a.x) - vec2<f32>(var_1.a.x, -346f)) - _wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, var_1.a.x), vec2<f32>(var_1.a.x, -110f)))))), Struct_1(!select(var_0.b.a, arg_0.x, var_0.c.x >= 46234u), _wgslsmith_dot_vec2_i32(~vec2<i32>(-6961i, -2147483647i), _wgslsmith_clamp_vec2_i32(var_0.e.yz, vec2<i32>(var_0.b.d, 0i), vec2<i32>(-41594i, 52892i)) | ~u_input.a), var_1.d.c, select(firstLeadingBit(~15614i), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.d.b, var_0.e.x), var_0.e.x), any(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), ~_wgslsmith_mult_vec4_u32(var_1.c, vec4<u32>(reverseBits(11448u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(var_0.c.x, 29u)], 4294967295u), _wgslsmith_sub_u32(54256u, 0u), 4294967295u)), var_0.b, vec3<i32>(min(2724i ^ -u_input.b, var_0.d.b), -(~var_0.d.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.x, var_1.b.b, var_0.d.d, var_1.d.d), vec4<i32>(u_input.a.x, u_input.b, 33859i, -2147483647i)) | -(~var_0.b.b)));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -893f), 1156f), var_0.a));
    return Struct_1(true | arg_0.x, u_input.b, var_0.d.a || true, u_input.a.x);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(func_2(vec2<bool>(all(select(vec2<bool>(arg_1.a.c.d.c, false), vec2<bool>(arg_0, arg_1.a.c.d.a), vec2<bool>(false, arg_2.a))), arg_1.a.c.b.c)).a, 3913i, all(!vec3<bool>(!arg_0, true, !arg_0)), -reverseBits(max(arg_2.d, 1i)));
    let var_1 = Struct_4(arg_1.a, arg_1.b, _wgslsmith_f_op_vec2_f32(-arg_1.a.c.a));
    let var_2 = vec2<u32>(15904u, 4294967295u);
    return u_input.c;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_4(Struct_3(func_4(false, global1[_wgslsmith_index_u32(u_input.c, 9u)], func_2(vec2<bool>(true, false))) ^ 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) * -899f)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1885f), -927f), func_2(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), max(vec4<u32>(u_input.c, 1u, 1u, 15147u), max(vec4<u32>(1u, u_input.c, u_input.c, 5457u), vec4<u32>(67288u, 4294967295u, 1u, u_input.c))), Struct_1(true, 39404i, u_input.c == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], -15615i), -select(vec3<i32>(u_input.b, 472i, 2147483647i), vec3<i32>(-2147483647i, 1i, u_input.a.x), true)), Struct_2(vec2<f32>(1f, 1412f), Struct_1(true, _wgslsmith_div_i32(-2147483647i, u_input.b), func_2(vec2<bool>(true, false)).c, u_input.b), max(~vec4<u32>(1u, 80915u, 0u, 5079u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], global0[_wgslsmith_index_u32(u_input.c, 29u)], 4294967295u, u_input.c)), Struct_1(u_input.c != 26126u, arg_0, true, arg_0), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 1i, 0i), vec3<i32>(0i, arg_0, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2956f - -162f))))), ~(abs(vec2<u32>(u_input.c, 1u)) | vec2<u32>(~u_input.c, ~global0[_wgslsmith_index_u32(u_input.c, 29u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1274f - 1000f), 680f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(854f, 240f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1980f, 899f)))))));
    var var_1 = var_0.a;
    var_1 = Struct_3(_wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, 1u) & select(firstLeadingBit(1u), _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(var_1.c.c.x, 29u)]), var_1.c.a.x < var_0.c.x), _wgslsmith_mod_u32(~u_input.c, 21358u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.e))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.a)), func_2(vec2<bool>(var_0.a.d.b.c, false == var_0.a.d.d.a)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.c.c.x, global0[_wgslsmith_index_u32(29786u, 29u)]), var_0.a.c.c.wyw), var_0.b.x, _wgslsmith_dot_vec3_u32(var_0.a.c.c.zyz, vec3<u32>(global0[_wgslsmith_index_u32(0u, 29u)], 1u, 4294967295u)), var_0.a.a), Struct_1(var_1.c.a.x == var_0.c.x, u_input.a.x, true, -arg_0), -vec3<i32>(arg_0, var_0.a.c.b.b, select(60086i, -2147483647i, var_0.a.c.d.a))), Struct_2(vec2<f32>(var_1.e, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.e - -740f)))), func_2(select(select(vec2<bool>(false, false), vec2<bool>(var_1.d.b.c, var_0.a.d.d.a), vec2<bool>(false, var_1.c.b.a)), vec2<bool>(true, false), vec2<bool>(false, var_0.a.d.b.c))), vec4<u32>(_wgslsmith_div_u32(u_input.c, 49079u), select(_wgslsmith_add_u32(5818u, u_input.c), var_1.d.c.x | var_1.a, all(vec3<bool>(false, var_0.a.d.b.a, var_1.c.d.c))), (u_input.c & var_0.a.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, var_0.b.x, var_1.a), vec3<u32>(var_0.b.x, var_0.a.c.c.x, 0u)) % 32u), _wgslsmith_dot_vec2_u32(~var_0.a.c.c.zw, var_1.c.c.yz)), Struct_1(!var_0.a.c.b.a, -21944i, !any(vec4<bool>(var_0.a.c.d.c, var_1.c.b.c, var_0.a.c.b.c, var_1.d.d.c)), _wgslsmith_clamp_i32(u_input.a.x, var_1.c.d.b, var_1.d.d.d) & 0i), select(countOneBits(var_1.d.e ^ vec3<i32>(1i, -38123i, 2147483647i)), vec3<i32>(-u_input.b, arg_0 << (0u % 32u), _wgslsmith_mult_i32(70946i, 24936i)), vec3<bool>(all(vec3<bool>(false, var_1.c.d.a, true)), var_0.a.c.e.x <= var_1.d.b.d, true))), -167f);
    let var_2 = var_1.c;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-179f)), _wgslsmith_f_op_f32(var_1.d.a.x * _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, -724f), vec2<f32>(1210f, var_2.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.e, var_0.c.x, 3090f, var_2.a.x), vec4<f32>(var_1.c.a.x, var_0.c.x, var_2.a.x, 274f)), min(39934i, var_2.b.d), 503f)).x)))));
    return var_1.d;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> Struct_4 {
    global0 = array<u32, 29>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1258f, 399f, arg_0.a.x, arg_0.a.x)))))), vec4<f32>(245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) - _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1083f, 1000f), arg_0.a.x) + -448f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -406f))));
    global0 = array<u32, 29>();
    var var_1 = Struct_3(_wgslsmith_add_u32(arg_0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, firstLeadingBit(u_input.c)), ~vec2<u32>(arg_2.x, 4294967295u))), _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), Struct_2(vec2<f32>(-470f, _wgslsmith_f_op_f32(1081f - _wgslsmith_f_op_f32(var_0.x - var_0.x))), func_2(vec2<bool>(true, true)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 36893u, 0u, 1u), arg_0.c), func_2(select(vec2<bool>(false, arg_0.b.c), vec2<bool>(true, false), !arg_1)), vec3<i32>(arg_0.d.d, 0i, firstTrailingBit(-31791i))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f)))));
    var var_2 = -abs(~((var_1.d.e.x | -17872i) | countOneBits(-2147483647i)));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(arg_0.c.xyy, vec3<u32>(~arg_2.x, global0[_wgslsmith_index_u32(~65227u, 29u)], arg_2.x), var_1.c.c.zyw), ~firstLeadingBit(firstLeadingBit(func_1(arg_0.e.x).c.yxy))), 9u)];
}

fn func_6(arg_0: Struct_4, arg_1: vec2<i32>) -> StorageBuffer {
    var var_0 = arg_0.a.d.b;
    global0 = array<u32, 29>();
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.b.x, 29u)], 55105u, 656u, ~(~(~0u))), ~vec4<u32>(1u, arg_0.b.x, ~(~28403u), 17903u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), arg_0.a.c.c.yx), global0[_wgslsmith_index_u32(abs(4294967295u), 29u)], 1u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(arg_0.a.c.c.x, 29u)], 4294967295u)), vec4<u32>(countOneBits(26566u), 1u, ~1u, global0[_wgslsmith_index_u32(~4294967295u, 29u)])), u_input.c, _wgslsmith_sub_u32(u_input.c, firstLeadingBit(_wgslsmith_mult_u32(1u, 1u))), u_input.c));
    var_0 = arg_0.a.c.b;
    var var_2 = ~vec4<u32>(~(u_input.c & ~arg_0.b.x), arg_0.b.x | (1u << (global0[_wgslsmith_index_u32(var_1.x, 29u)] % 32u)), u_input.c, 1u);
    return StorageBuffer(u_input.c, ~func_4(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(var_2.xxw), _wgslsmith_clamp_vec3_u32(var_1.yxy, arg_0.a.d.c.xyx, arg_0.a.d.c.xxz)), 9u)], Struct_1(var_0.a, 45824i, var_0.c & var_0.a, ~(-6485i))), firstTrailingBit(arg_0.a.c.e >> ((vec3<u32>(1u, arg_0.b.x, 1u) << (arg_0.a.c.c.wzx % vec3<u32>(32u))) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = u_input.c;
    var var_2 = !select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, true)) | true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true));
    global0 = array<u32, 29>();
    let var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(-u_input.a, abs(~(u_input.a | vec2<i32>(1i, u_input.a.x)))), u_input.b);
    let x = u_input.a;
    s_output = func_6(func_5(func_1(~(var_3.x & var_3.x)), all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)] <= global0[_wgslsmith_index_u32(4294967295u, 29u)], var_3.x <= -187i, var_2.x)), vec2<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(69667u, 29u)]), 1u) << (~abs(vec2<u32>(u_input.c, 1758u)) % vec2<u32>(32u))), countOneBits(vec2<i32>(1i ^ var_3.x, -_wgslsmith_sub_i32(2147483647i, var_3.x))));
}

