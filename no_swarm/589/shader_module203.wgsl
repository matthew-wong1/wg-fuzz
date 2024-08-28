struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<u32>(0u, 82015u, 1u, 58360u), 0i, vec2<u32>(79320u, 19267u), vec2<f32>(709f, -753f)), Struct_1(vec4<u32>(4294967295u, 24840u, 62172u, 1u), -32958i, vec2<u32>(1u, 0u), vec2<f32>(-1266f, 728f)), Struct_1(vec4<u32>(1u, 46205u, 0u, 1u), -1i, vec2<u32>(4294967295u, 1u), vec2<f32>(-268f, 566f)), Struct_1(vec4<u32>(0u, 30930u, 12240u, 4294967295u), 84656i, vec2<u32>(4294967295u, 29552u), vec2<f32>(-1835f, -839f)), Struct_1(vec4<u32>(98594u, 30675u, 0u, 13442u), 0i, vec2<u32>(13581u, 29433u), vec2<f32>(-1146f, -1841f)), Struct_1(vec4<u32>(1u, 11418u, 41266u, 36717u), 1i, vec2<u32>(0u, 1u), vec2<f32>(-1136f, -1727f)), Struct_1(vec4<u32>(23881u, 20147u, 14658u, 54351u), i32(-2147483648), vec2<u32>(32999u, 91213u), vec2<f32>(643f, 1076f)), Struct_1(vec4<u32>(19000u, 18952u, 0u, 36265u), -17226i, vec2<u32>(4294967295u, 11719u), vec2<f32>(-987f, 372f)));

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 49808u);

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<u32>(0u, 26503u, 20413u, 37840u), -8381i, vec2<u32>(0u, 1u), vec2<f32>(324f, -133f)), Struct_1(vec4<u32>(79827u, 4294967295u, 1u, 74766u), -16280i, vec2<u32>(0u, 4294967295u), vec2<f32>(-1921f, 802f)), Struct_1(vec4<u32>(0u, 0u, 23631u, 34678u), i32(-2147483648), vec2<u32>(21863u, 43225u), vec2<f32>(-1456f, 1000f)), Struct_1(vec4<u32>(47099u, 67657u, 45742u, 0u), 1i, vec2<u32>(4294967295u, 50298u), vec2<f32>(2348f, -835f)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 43676u), -32788i, vec2<u32>(17104u, 1u), vec2<f32>(757f, -352f)), Struct_1(vec4<u32>(4294967295u, 744u, 66063u, 37557u), -44999i, vec2<u32>(4294967295u, 32416u), vec2<f32>(-300f, -1288f)), Struct_1(vec4<u32>(16398u, 119975u, 27443u, 53354u), -1i, vec2<u32>(1347u, 4294967295u), vec2<f32>(-206f, -429f)), Struct_1(vec4<u32>(1u, 21685u, 0u, 30326u), 2147483647i, vec2<u32>(34643u, 31668u), vec2<f32>(-536f, 215f)), Struct_1(vec4<u32>(0u, 0u, 0u, 14342u), 28398i, vec2<u32>(41650u, 4294967295u), vec2<f32>(-1222f, 1143f)), Struct_1(vec4<u32>(16167u, 70863u, 57189u, 16909u), 28492i, vec2<u32>(1u, 4294967295u), vec2<f32>(1203f, 1146f)), Struct_1(vec4<u32>(10690u, 1u, 0u, 50730u), -32860i, vec2<u32>(6729u, 2883u), vec2<f32>(731f, -410f)), Struct_1(vec4<u32>(62250u, 4294967295u, 1u, 0u), -5649i, vec2<u32>(0u, 77921u), vec2<f32>(1221f, 506f)), Struct_1(vec4<u32>(34690u, 54287u, 94902u, 24504u), -6956i, vec2<u32>(4294967295u, 3401u), vec2<f32>(-2168f, -1327f)));

var<private> global4: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(1573i, -12305i), vec2<i32>(21053i, 69650i), vec2<i32>(-57142i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-6550i, 12943i), vec2<i32>(55979i, 2147483647i), vec2<i32>(1i, 6354i), vec2<i32>(i32(-2147483648), -15449i), vec2<i32>(-9190i, -31769i), vec2<i32>(-29020i, -17286i), vec2<i32>(-70612i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(23186i, 2147483647i), vec2<i32>(33727i, i32(-2147483648)), vec2<i32>(13980i, 40660i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(62652i, -27454i), vec2<i32>(i32(-2147483648), 5636i), vec2<i32>(1i, 10370i), vec2<i32>(0i, 2147483647i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = var_0;
    var var_2 = _wgslsmith_div_i32(arg_0.b, 2147483647i);
    var var_3 = vec4<i32>(-368i, _wgslsmith_mod_i32(arg_2.x, arg_2.x), arg_0.b, -1i);
    var_2 = i32(-1i) * -7386i;
    return Struct_1(reverseBits(vec4<u32>(firstTrailingBit(~1u), ~(~0u), ~(~1u), arg_1.c.x)), u_input.a, ~arg_0.c, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.d.x, arg_0.d.x)) - _wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x)))), _wgslsmith_f_op_f32(step(-882f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f))))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = func_2(func_2(func_2(global1[_wgslsmith_index_u32(arg_2.a.x, 8u)], Struct_1(abs(arg_2.a), u_input.a ^ u_input.a, vec2<u32>(arg_2.c.x, arg_2.c.x), _wgslsmith_f_op_vec2_f32(abs(arg_0.d))), vec4<i32>(1i, select(arg_0.b, -2836i, arg_1), u_input.a, -47874i)), Struct_1(abs(abs(arg_2.a)), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, arg_0.b), arg_2.b), vec2<u32>(global2.x, global2.x) >> (~arg_2.a.xz % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1007f, -1257f) + vec2<f32>(-676f, 420f)))), vec4<i32>(firstLeadingBit(-42084i), 5177i, u_input.a, _wgslsmith_mod_i32(-53467i, arg_0.b)) | (~vec4<i32>(-34445i, u_input.a, -10386i, -23901i) | abs(vec4<i32>(2147483647i, arg_2.b, arg_2.b, -4625i)))), Struct_1(reverseBits(vec4<u32>(global2.x, ~arg_0.a.x, min(arg_0.a.x, 52981u), global2.x ^ 12111u)), -2147483647i, vec2<u32>(~abs(arg_0.a.x), countOneBits(arg_0.c.x)), _wgslsmith_f_op_vec2_f32(exp2(arg_2.d))), ~(-abs(-vec4<i32>(0i, -2147483647i, 0i, arg_2.b))));
    let var_1 = select(select(select(!select(vec3<bool>(true, arg_1, false), vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, true, arg_1)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, all(!vec4<bool>(arg_1, arg_1, arg_1, arg_1))), any(!vec3<bool>(false, arg_1, false))), select(vec3<bool>(true, ~arg_2.a.x >= arg_0.c.x, arg_1), !vec3<bool>(any(vec4<bool>(arg_1, arg_1, false, arg_1)), false, any(vec3<bool>(false, true, true))), false), !all(!vec4<bool>(false, true, arg_1, arg_1)) && any(select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), arg_1)));
    let var_2 = func_2(global1[_wgslsmith_index_u32(1u, 8u)], func_2(global1[_wgslsmith_index_u32(~(~13251u), 8u)], arg_0, -vec4<i32>(2147483647i, arg_2.b, 2147483647i, 24358i) << (firstLeadingBit(arg_2.a) % vec4<u32>(32u))), -_wgslsmith_div_vec4_i32(min(vec4<i32>(-4988i, 88895i, 1i, 0i), vec4<i32>(-28840i, 66500i, u_input.a, arg_2.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.b, -10395i, -27961i), vec4<i32>(arg_0.b, var_0.b, 0i, 2446i))) | ~select(~vec4<i32>(u_input.a, u_input.a, 20567i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a, 2147483647i), vec4<i32>(u_input.a, -2147483647i, var_0.b, 36690i)), arg_1));
    global2 = ~vec3<u32>(arg_2.c.x, 33070u, abs(1u));
    let var_3 = abs(arg_0.a.x);
    return 1u;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_1 {
    global2 = vec3<u32>(~3114u, _wgslsmith_mod_u32(~0u, ~global2.x), ~(~func_3(Struct_1(vec4<u32>(global2.x, 1u, global2.x, global2.x), 1i, global2.yy, arg_1.zy), true, func_2(Struct_1(vec4<u32>(5288u, global2.x, global2.x, 29790u), u_input.a, vec2<u32>(global2.x, 4294967295u), vec2<f32>(1123f, 130f)), Struct_1(vec4<u32>(0u, 0u, 0u, global2.x), 33705i, vec2<u32>(0u, 16329u), arg_1.xz), vec4<i32>(arg_0.x, 2147483647i, arg_0.x, -43126i)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -708f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), -971f), _wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(_wgslsmith_f_op_f32(462f - -470f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -861f))))));
    let var_1 = _wgslsmith_add_vec2_i32(-(~global4[_wgslsmith_index_u32(25106u, 21u)]), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.a, -10426i)), global4[_wgslsmith_index_u32(firstTrailingBit(1574u), 21u)]), vec2<i32>(_wgslsmith_mult_i32(arg_0.x, arg_0.x), 25594i) >> (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u))));
    let var_2 = global1[_wgslsmith_index_u32(global2.x, 8u)];
    global0 = array<Struct_1, 7>();
    return Struct_1(vec4<u32>(_wgslsmith_clamp_u32(global2.x, 15668u, 1u), 4294967295u, abs(_wgslsmith_add_u32(var_2.a.x, 4294967295u)) >> (global2.x % 32u), 1u), firstTrailingBit(var_1.x), ~vec2<u32>(~(21491u & var_2.c.x), ~var_2.c.x), var_2.d);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = ~global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32((global2.x & 0u) >> (global2.x % 32u), ~38268u)), 21u)];
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(30784u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~arg_1.a, func_2(global0[_wgslsmith_index_u32(global2.x, 7u)], Struct_1(arg_1.a, u_input.a, arg_1.a.xz, arg_1.d), vec4<i32>(var_0.x, arg_0, var_0.x, 21044i)).a), ~(~global2.x), func_2(func_1(vec4<i32>(arg_1.b, 42434i, u_input.a, arg_1.b), vec3<f32>(1101f, arg_1.d.x, 1000f)), Struct_1(arg_1.a, arg_1.b, global2.yx, arg_1.d), vec4<i32>(29454i, 2147483647i, -62148i, arg_1.b)).a.x)), 13u)];
    let var_2 = true;
    global2 = _wgslsmith_mod_vec3_u32(var_1.a.zyx, ~vec3<u32>(global2.x << (~21406u % 32u), ~abs(42343u), ~arg_1.c.x));
    global4 = array<vec2<i32>, 21>();
    return ~(~(~arg_1.a.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(round(596f));
    let var_1 = ~arg_3.b;
    let var_2 = func_2(Struct_1(arg_0.a, func_2(global3[_wgslsmith_index_u32(~30570u, 13u)], func_2(Struct_1(vec4<u32>(arg_3.c.x, 4294967295u, 16252u, arg_3.a.x), 35838i, arg_3.c, arg_0.d), func_1(vec4<i32>(25273i, u_input.a, -32717i, arg_0.b), vec3<f32>(577f, arg_3.d.x, 139f)), firstLeadingBit(vec4<i32>(1i, var_1, arg_0.b, 14937i))), vec4<i32>(~var_1, max(-2147483647i, -31021i), arg_3.b >> (4294967295u % 32u), var_1)).b, ~vec2<u32>(arg_3.a.x, arg_3.c.x) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(75176u, global2.x), vec2<u32>(arg_3.c.x, arg_3.a.x), vec2<u32>(1u, 33356u)), func_1(-countOneBits(vec4<i32>(-31849i, -3876i, u_input.a, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.d.x, arg_0.d.x, 278f))))).d), global3[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(select(-2147483647i, -1i, arg_2), -39385i), 1i, u_input.a, -11979i), vec4<i32>(-2147483647i, -1i, max(-34069i, -19917i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, arg_3.b, 2147483647i, -1i), vec4<i32>(var_1, var_1, -48249i, 2147483647i)))));
    var var_3 = arg_0;
    global1 = array<Struct_1, 8>();
    return arg_3.c.x;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = select(vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_div_i32(-11789i, ~arg_1.b) != arg_1.b, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-755f * arg_2.d.x)) <= -253f), vec4<bool>(true, true, true, !(6681i < ~arg_1.b)), !(!vec4<bool>(all(vec4<bool>(true, false, false, true)), true, false, false)));
    let var_1 = false;
    var var_2 = min(vec4<u32>(max(~global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 78600u), _wgslsmith_sub_vec2_u32(arg_2.c, arg_1.a.zy))), global2.x, ~_wgslsmith_mult_u32(3928u, arg_2.a.x), max(~arg_1.a.x | ~0u, ~arg_1.c.x)), ~firstLeadingBit(~vec4<u32>(11282u, arg_0, 69892u, arg_2.a.x)));
    var_2 = func_2(global0[_wgslsmith_index_u32(~(func_4(func_2(global3[_wgslsmith_index_u32(arg_1.a.x, 13u)], Struct_1(vec4<u32>(0u, 4294967295u, 16428u, arg_2.c.x), arg_2.b, arg_1.c, vec2<f32>(arg_1.d.x, arg_2.d.x)), vec4<i32>(2147483647i, 2147483647i, 61471i, 0i)).b, Struct_1(arg_2.a, -66528i, arg_1.a.zw, vec2<f32>(arg_2.d.x, arg_2.d.x))) & var_2.x), 7u)], global0[_wgslsmith_index_u32(~(~firstTrailingBit(var_2.x)), 7u)], ~abs(min(~vec4<i32>(-44737i, 0i, arg_2.b, arg_2.b), vec4<i32>(arg_2.b, arg_1.b, arg_1.b, 13964i)))).a;
    global3 = array<Struct_1, 13>();
    return StorageBuffer(max(abs(arg_1.c), ~(~(~global2.zz))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec3<u32>(4294967295u, 0u, ~_wgslsmith_dot_vec2_u32(global2.xy, _wgslsmith_div_vec2_u32(global2.zz, global2.yx)));
    global0 = array<Struct_1, 7>();
    var var_0 = abs(reverseBits(4622u));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_mod_u32(global2.x, min(global2.x, ~global2.x)), global0[_wgslsmith_index_u32(func_5(global3[_wgslsmith_index_u32(func_4(~0i, func_1(-vec4<i32>(u_input.a, 2147483647i, -19316i, u_input.a), _wgslsmith_div_vec3_f32(vec3<f32>(1197f, -808f, 549f), vec3<f32>(1489f, -465f, 891f)))), 13u)], func_2(func_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, -3158i, 35134i), _wgslsmith_div_vec3_f32(vec3<f32>(-302f, 1901f, -676f), vec3<f32>(-492f, 1407f, -598f))), func_1(-vec4<i32>(u_input.a, u_input.a, -1i, 1i), vec3<f32>(-1274f, 219f, -1398f)), vec4<i32>(0i, abs(-12940i), func_1(vec4<i32>(2147483647i, -13597i, u_input.a, u_input.a), vec3<f32>(-223f, 474f, 319f)).b, _wgslsmith_clamp_i32(u_input.a, -2147483647i, u_input.a))).d, true, global3[_wgslsmith_index_u32(4294967295u, 13u)]), 7u)], func_1(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -6179i, 0i) | vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -47820i, -2147483647i, 16298i), ~vec4<i32>(u_input.a, -2147483647i, u_input.a, 0i)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(653f)), _wgslsmith_f_op_f32(f32(-1f) * -203f), 1f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)))))));
}

