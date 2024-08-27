struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<i32>(0i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, 12331i, 2147483647i), Struct_1(vec3<bool>(false, true, false), -1i, false, vec2<u32>(1u, 0u), false), Struct_1(vec3<bool>(false, false, true), 10827i, true, vec2<u32>(33803u, 16137u), false), Struct_1(vec3<bool>(true, false, true), 1i, true, vec2<u32>(35544u, 103365u), false)), Struct_2(vec3<i32>(48660i, 3318i, i32(-2147483648)), vec4<i32>(49238i, i32(-2147483648), 2147483647i, -15909i), Struct_1(vec3<bool>(true, false, false), -43717i, true, vec2<u32>(0u, 52570u), true), Struct_1(vec3<bool>(false, false, false), 0i, true, vec2<u32>(1u, 71213u), false), Struct_1(vec3<bool>(false, false, true), -1i, true, vec2<u32>(4294967295u, 14841u), false)), Struct_2(vec3<i32>(-1i, i32(-2147483648), 1i), vec4<i32>(-58943i, 33248i, -1i, 38973i), Struct_1(vec3<bool>(false, false, true), -51470i, true, vec2<u32>(1u, 1u), true), Struct_1(vec3<bool>(false, true, true), -55287i, false, vec2<u32>(13245u, 1u), false), Struct_1(vec3<bool>(false, false, false), 57986i, true, vec2<u32>(4294967295u, 63348u), false)), Struct_2(vec3<i32>(0i, i32(-2147483648), 1i), vec4<i32>(22986i, 0i, 6620i, 2147483647i), Struct_1(vec3<bool>(false, false, true), 14048i, true, vec2<u32>(23674u, 23078u), false), Struct_1(vec3<bool>(false, true, true), i32(-2147483648), false, vec2<u32>(66867u, 4294967295u), true), Struct_1(vec3<bool>(true, false, true), 26560i, true, vec2<u32>(1u, 0u), true)), Struct_2(vec3<i32>(65706i, -31233i, 2147483647i), vec4<i32>(52277i, -1i, i32(-2147483648), -18797i), Struct_1(vec3<bool>(false, true, true), 0i, true, vec2<u32>(1u, 4294967295u), false), Struct_1(vec3<bool>(false, true, true), 905i, true, vec2<u32>(0u, 47499u), false), Struct_1(vec3<bool>(true, true, true), 0i, false, vec2<u32>(10521u, 4294967295u), false)), Struct_2(vec3<i32>(1i, 32228i, 0i), vec4<i32>(-9993i, 51443i, 17674i, -11393i), Struct_1(vec3<bool>(false, false, false), -105750i, false, vec2<u32>(49547u, 0u), false), Struct_1(vec3<bool>(true, true, false), -29627i, true, vec2<u32>(36112u, 1u), true), Struct_1(vec3<bool>(true, false, true), 4220i, true, vec2<u32>(12419u, 112901u), true)), Struct_2(vec3<i32>(0i, -1i, 1i), vec4<i32>(23i, i32(-2147483648), i32(-2147483648), 1i), Struct_1(vec3<bool>(true, false, true), -38520i, false, vec2<u32>(1u, 16659u), false), Struct_1(vec3<bool>(true, false, true), 8645i, false, vec2<u32>(18328u, 0u), true), Struct_1(vec3<bool>(true, false, true), -24988i, false, vec2<u32>(1u, 11445u), true)), Struct_2(vec3<i32>(0i, 1i, 13574i), vec4<i32>(-32003i, 2147483647i, 57121i, 22174i), Struct_1(vec3<bool>(false, true, false), -7413i, false, vec2<u32>(1u, 44572u), true), Struct_1(vec3<bool>(true, true, false), 2147483647i, true, vec2<u32>(31414u, 1u), false), Struct_1(vec3<bool>(false, true, false), -1i, false, vec2<u32>(1u, 35004u), true)), Struct_2(vec3<i32>(27208i, -22931i, i32(-2147483648)), vec4<i32>(1i, -1i, -2916i, 1i), Struct_1(vec3<bool>(false, false, false), -14663i, true, vec2<u32>(88605u, 1u), true), Struct_1(vec3<bool>(true, false, false), -1i, false, vec2<u32>(0u, 4294967295u), false), Struct_1(vec3<bool>(true, false, true), 0i, false, vec2<u32>(0u, 0u), false)), Struct_2(vec3<i32>(-1i, -1i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 2147483647i, -32359i), Struct_1(vec3<bool>(true, false, false), 13070i, false, vec2<u32>(15082u, 39247u), true), Struct_1(vec3<bool>(true, false, false), 45858i, true, vec2<u32>(1u, 19949u), false), Struct_1(vec3<bool>(false, true, false), 2147483647i, false, vec2<u32>(0u, 1u), false)), Struct_2(vec3<i32>(1i, 40963i, 0i), vec4<i32>(1i, 58080i, 18042i, 1i), Struct_1(vec3<bool>(false, false, false), 2147483647i, true, vec2<u32>(6407u, 0u), false), Struct_1(vec3<bool>(true, false, false), -2825i, false, vec2<u32>(1u, 1u), true), Struct_1(vec3<bool>(false, true, true), -19333i, true, vec2<u32>(5855u, 63377u), true)), Struct_2(vec3<i32>(4806i, 1i, i32(-2147483648)), vec4<i32>(-1i, 0i, 38641i, -2730i), Struct_1(vec3<bool>(false, false, false), 1i, true, vec2<u32>(33884u, 0u), true), Struct_1(vec3<bool>(false, false, true), -19522i, true, vec2<u32>(25396u, 47658u), false), Struct_1(vec3<bool>(true, false, false), -29031i, true, vec2<u32>(1u, 1u), true)), Struct_2(vec3<i32>(-31078i, -1i, 0i), vec4<i32>(0i, -26709i, 6625i, -25910i), Struct_1(vec3<bool>(true, true, false), 23185i, true, vec2<u32>(14765u, 4294967295u), false), Struct_1(vec3<bool>(false, true, false), 6149i, false, vec2<u32>(0u, 59408u), true), Struct_1(vec3<bool>(false, false, true), -42443i, true, vec2<u32>(18386u, 41889u), true)), Struct_2(vec3<i32>(-27307i, 14714i, 2147483647i), vec4<i32>(134i, -8845i, 0i, 14674i), Struct_1(vec3<bool>(false, false, false), 13488i, true, vec2<u32>(4294967295u, 0u), false), Struct_1(vec3<bool>(true, true, false), i32(-2147483648), false, vec2<u32>(31403u, 6786u), false), Struct_1(vec3<bool>(false, false, false), -25216i, false, vec2<u32>(0u, 10790u), false)), Struct_2(vec3<i32>(-6018i, 2147483647i, 1i), vec4<i32>(-31453i, 49341i, 2147483647i, 1i), Struct_1(vec3<bool>(true, true, false), 0i, true, vec2<u32>(4294967295u, 1u), false), Struct_1(vec3<bool>(false, false, true), -468i, true, vec2<u32>(0u, 2133u), true), Struct_1(vec3<bool>(true, false, false), 7803i, true, vec2<u32>(22469u, 4294967295u), true)), Struct_2(vec3<i32>(4084i, 50398i, 0i), vec4<i32>(2527i, -9070i, 10656i, 0i), Struct_1(vec3<bool>(false, true, false), -21286i, false, vec2<u32>(0u, 6629u), true), Struct_1(vec3<bool>(false, true, true), 0i, false, vec2<u32>(27411u, 4294967295u), false), Struct_1(vec3<bool>(false, true, true), 1i, true, vec2<u32>(43700u, 155u), true)), Struct_2(vec3<i32>(3051i, 1i, -1i), vec4<i32>(i32(-2147483648), 0i, 11776i, 1i), Struct_1(vec3<bool>(true, false, false), i32(-2147483648), true, vec2<u32>(1u, 1u), false), Struct_1(vec3<bool>(true, true, false), 10186i, false, vec2<u32>(4294967295u, 17283u), false), Struct_1(vec3<bool>(false, false, false), -1i, false, vec2<u32>(31000u, 118132u), false)), Struct_2(vec3<i32>(-805i, 55078i, -9648i), vec4<i32>(0i, -1i, 18763i, -967i), Struct_1(vec3<bool>(false, true, false), 1i, false, vec2<u32>(66570u, 1u), false), Struct_1(vec3<bool>(false, true, true), -6883i, false, vec2<u32>(54148u, 52482u), false), Struct_1(vec3<bool>(true, true, false), 0i, false, vec2<u32>(114658u, 1u), false)), Struct_2(vec3<i32>(-21451i, -52655i, -44332i), vec4<i32>(2147483647i, 8891i, -47594i, 10522i), Struct_1(vec3<bool>(false, true, true), i32(-2147483648), true, vec2<u32>(1638u, 56387u), true), Struct_1(vec3<bool>(true, false, true), 65024i, true, vec2<u32>(1u, 1u), false), Struct_1(vec3<bool>(true, false, false), 18433i, false, vec2<u32>(33505u, 48554u), false)), Struct_2(vec3<i32>(2147483647i, 29129i, -1i), vec4<i32>(i32(-2147483648), -22192i, 26982i, -1i), Struct_1(vec3<bool>(false, true, false), -31417i, false, vec2<u32>(1u, 4294967295u), false), Struct_1(vec3<bool>(true, false, true), 34527i, false, vec2<u32>(43742u, 24516u), true), Struct_1(vec3<bool>(true, false, false), i32(-2147483648), true, vec2<u32>(86678u, 14009u), false)), Struct_2(vec3<i32>(1i, -63041i, -1i), vec4<i32>(-20038i, -1i, -23059i, 0i), Struct_1(vec3<bool>(true, true, true), 4407i, true, vec2<u32>(39487u, 4294967295u), true), Struct_1(vec3<bool>(true, true, false), i32(-2147483648), false, vec2<u32>(43002u, 72431u), true), Struct_1(vec3<bool>(false, false, false), 1i, false, vec2<u32>(1u, 0u), true)), Struct_2(vec3<i32>(50897i, i32(-2147483648), -1i), vec4<i32>(-21069i, 0i, 1i, 0i), Struct_1(vec3<bool>(true, false, false), 0i, false, vec2<u32>(4294967295u, 1295u), true), Struct_1(vec3<bool>(false, false, true), 83995i, true, vec2<u32>(0u, 11885u), false), Struct_1(vec3<bool>(true, true, true), 6769i, false, vec2<u32>(69994u, 4294967295u), true)));

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<u32>, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    global0 = array<Struct_2, 22>();
    global1 = _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(select(vec4<i32>(global1.x, -19063i, 50249i, -31320i), vec4<i32>(12414i, global1.x, global1.x, arg_1.a.x), vec4<bool>(false, false, true, true)), -vec4<i32>(1i, 1i, 37524i, global1.x)) | ~(~vec4<i32>(u_input.a, global1.x, arg_1.a.x, 1i)), vec4<i32>(-min(_wgslsmith_dot_vec3_i32(global1.xxy, vec3<i32>(2147483647i, arg_1.a.x, global1.x)), ~1i), -(~27256i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 1u), u_input.c) % 32u)), select(0i, -2147483647i, false), -(~firstTrailingBit(1i))));
    global1 = -(~max(reverseBits(vec4<i32>(global1.x, global1.x, -1i, global1.x) >> (u_input.c % vec4<u32>(32u))), (vec4<i32>(u_input.a, -33940i, arg_1.a.x, arg_1.a.x) | vec4<i32>(arg_1.a.x, global1.x, 19447i, 2147483647i)) << (vec4<u32>(arg_1.b, arg_1.b, 1u, 4294967295u) % vec4<u32>(32u))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(152f, 1842f, -107f)))))) * vec3<f32>(_wgslsmith_f_op_f32(sign(3137f)), arg_0.a, _wgslsmith_f_op_f32(-848f + -553f)));
    let var_1 = arg_1.b;
    return reverseBits(~(~(-(~2147483647i))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> bool {
    global1 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(~(8321i | arg_1), ~arg_1, max(~0i, global1.x), func_3(Struct_4(-1629f), Struct_3(vec3<i32>(arg_0.x, 2147483647i, arg_1), u_input.c.x))), min(vec4<i32>(global1.x, arg_0.x, u_input.b.x, arg_1), firstTrailingBit(vec4<i32>(-9472i, -19052i, arg_1, -1i))) ^ vec4<i32>(abs(arg_0.x), ~0i, arg_1, u_input.b.x));
    let var_0 = vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true, false & (u_input.c.x == ~select(0u, 80005u, false)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), true)));
    global1 = _wgslsmith_div_vec4_i32(~(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -1i, -1i, -2147483647i), vec4<i32>(-50759i, arg_1, arg_0.x, 0i))), -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 78738i, 1i, arg_1), vec4<i32>(-2147483647i, u_input.a, -11348i, arg_0.x)))) | ~(vec4<i32>(32929i, arg_0.x, 1i, global1.x) >> (u_input.c % vec4<u32>(32u)));
    let var_1 = !select(select(!vec4<bool>(false, var_0.x, var_0.x, true), var_0, select(var_0.x && false, true, var_0.x)), !var_0, !(var_0.x || (u_input.c.x != u_input.c.x)));
    global2 = array<vec2<u32>, 5>();
    return all(vec2<bool>(!select(true, var_0.x, var_1.x), select(arg_2 == arg_3.x, select(!var_1.x, var_0.x, var_0.x), var_0.x && var_1.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_vec3_i32((vec3<i32>(u_input.a << (u_input.c.x % 32u), 1i, ~(-14713i)) & _wgslsmith_clamp_vec3_i32(global1.yyy, arg_3.a, global1.yyz)) >> ((select(abs(vec3<u32>(arg_3.d.d.x, u_input.c.x, arg_3.e.d.x)), ~vec3<u32>(32815u, arg_3.d.d.x, u_input.c.x), func_2(arg_3.a, u_input.a, arg_0.x, arg_0.zw)) | select(~vec3<u32>(16432u, 1u, 0u), vec3<u32>(u_input.c.x, arg_3.d.d.x, 20448u), arg_1)) % vec3<u32>(32u)), global1.xxz);
    global0 = array<Struct_2, 22>();
    var var_1 = arg_3.c;
    let var_2 = vec2<i32>(global1.x, _wgslsmith_mod_i32(arg_2, 1i));
    global0 = array<Struct_2, 22>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.x)))))), 327f);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: bool, arg_3: u32) -> Struct_4 {
    var var_0 = vec3<f32>(-786f, -960f, arg_1.a);
    global0 = array<Struct_2, 22>();
    let var_1 = Struct_3(vec3<i32>(u_input.b.x, ~_wgslsmith_mod_i32(u_input.a, countOneBits(u_input.b.x)), _wgslsmith_add_i32(~min(23977i, global1.x), firstLeadingBit(i32(-1i) * -1i))), (1u | u_input.c.x) | reverseBits(33869u));
    var_0 = arg_0;
    global0 = array<Struct_2, 22>();
    return Struct_4(_wgslsmith_f_op_f32(arg_0.x - 1712f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 234f), _wgslsmith_f_op_f32(func_1(vec4<f32>(-200f, -1384f, -2002f, 179f), vec3<bool>(false, true, false), u_input.b.x, Struct_2(vec3<i32>(2147483647i, global1.x, u_input.b.x), vec4<i32>(-441i, global1.x, 0i, -5260i), Struct_1(vec3<bool>(false, true, false), global1.x, true, vec2<u32>(u_input.c.x, u_input.c.x), false), Struct_1(vec3<bool>(true, true, true), 0i, false, vec2<u32>(u_input.c.x, 1u), false), Struct_1(vec3<bool>(true, false, false), u_input.b.x, true, global2[_wgslsmith_index_u32(53599u, 5u)], false))))), -288f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -762f))))), Struct_5(1604f), true, u_input.c.x);
    var var_1 = u_input.b.x;
    let var_2 = Struct_5(var_0.a);
    var var_3 = select(vec3<bool>(true, any(vec2<bool>(func_2(vec3<i32>(34239i, global1.x, global1.x), u_input.b.x, var_2.a, vec2<f32>(-1000f, var_0.a)), true)), true), vec3<bool>(true, true, true), select(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), true, select(true, true, func_2(vec3<i32>(u_input.b.x, global1.x, -6268i), u_input.a, -850f, vec2<f32>(-461f, var_2.a)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), -29813i > global1.x), !((global1.x != u_input.a) && true)));
    let var_4 = Struct_1(select(!(!vec3<bool>(false, true, var_3.x)), !vec3<bool>(true, var_3.x, !var_3.x), vec3<bool>(!any(vec4<bool>(true, var_3.x, var_3.x, true)), -298f < _wgslsmith_f_op_f32(round(var_0.a)), var_3.x)), ~58052i, var_3.x, _wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.c.x | 1u, 1u), ~vec2<u32>(1u, 1u)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.zx, u_input.c.zz) >> ((vec2<u32>(u_input.c.x, u_input.c.x) | vec2<u32>(u_input.c.x, 98427u)) % vec2<u32>(32u)), select(_wgslsmith_clamp_vec2_u32(u_input.c.zx, global2[_wgslsmith_index_u32(0u, 5u)], u_input.c.zx), ~u_input.c.yw, vec2<bool>(var_3.x, var_3.x)))), !var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -vec3<i32>(var_4.b, 1i, -firstTrailingBit(u_input.a)), u_input.b.x, -(abs(22649i >> (var_4.d.x % 32u)) & var_4.b), (~(~vec3<u32>(10035u, 53877u, 25720u)) >> (u_input.c.yxy % vec3<u32>(32u))) << (~u_input.c.yxy % vec3<u32>(32u)));
}

