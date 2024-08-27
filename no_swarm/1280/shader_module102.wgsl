struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(64621u, 46903u, 32522u), vec3<u32>(1u, 68042u, 0u), vec3<u32>(4294967295u, 1u, 41024u), vec3<u32>(20307u, 1u, 46846u), vec3<u32>(4166u, 0u, 1009u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(28557u, 34083u, 7005u), vec3<u32>(4294967295u, 43853u, 56560u), vec3<u32>(55132u, 7557u, 0u), vec3<u32>(60312u, 6119u, 45889u), vec3<u32>(132322u, 24469u, 1u), vec3<u32>(0u, 77808u, 4125u), vec3<u32>(8196u, 32339u, 1u), vec3<u32>(7569u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 31519u, 57867u), vec3<u32>(35202u, 9499u, 60041u), vec3<u32>(38212u, 10706u, 1u), vec3<u32>(4294967295u, 4294967295u, 34539u), vec3<u32>(48519u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 93836u), vec3<u32>(29245u, 4294967295u, 0u), vec3<u32>(7474u, 0u, 0u), vec3<u32>(0u, 1u, 4493u));

var<private> global1: vec2<f32> = vec2<f32>(2348f, 775f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec3<u32>, 24>();
    var var_0 = u_input.a.x;
    var var_1 = arg_0.x;
    var_1 = arg_0.x;
    global1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(global1.x, 701f)) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(394f, arg_3.d.x)))), _wgslsmith_div_vec2_f32(arg_3.d.zx, vec2<f32>(-1508f, global1.x))));
    return Struct_1(~u_input.b, max(~max(arg_3.c.d ^ vec4<u32>(arg_3.c.d.x, 30037u, arg_2.x, arg_2.x), vec4<u32>(u_input.b, 1u, 32680u, 4294967295u)), abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.c.d.x, 18184u, arg_1, arg_3.c.a), arg_3.c.d, vec4<u32>(arg_3.c.b.x, 31271u, 9470u, arg_1)))), reverseBits(_wgslsmith_div_i32(arg_3.a.x, ~u_input.a.x) | -(arg_3.c.c >> (29732u % 32u))), arg_3.c.d);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = all(select(vec2<bool>(any(vec3<bool>(arg_1, true, arg_1)), false), vec2<bool>(all(vec4<bool>(true, arg_1, arg_1, arg_1)), _wgslsmith_f_op_f32(464f - global1.x) != _wgslsmith_f_op_f32(sign(global1.x))), vec2<bool>(_wgslsmith_dot_vec3_u32(arg_2.b.wzw, vec3<u32>(27266u, 0u, 4835u)) == 24442u, arg_1)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f - global1.x))));
    var var_2 = vec2<i32>(arg_2.c, ~1i);
    global1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), -152f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a)) + _wgslsmith_f_op_f32(-1306f - 1000f)), 353f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1166f, 644f))) * vec2<f32>(-752f, _wgslsmith_f_op_f32(ceil(1196f)))))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1291f, var_1.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-481f, var_1.a, var_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-507f, var_1.a, 222f) * vec3<f32>(-623f, global1.x, global1.x)), vec3<bool>(false, true, true))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 429f) - vec3<f32>(var_1.a, -1334f, global1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-535f, var_1.a, -1003f)))))));
    return vec4<u32>(_wgslsmith_mult_u32(11269u, u_input.b), ~arg_2.b.x, func_2(vec2<bool>(any(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), arg_1)), arg_1), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, 1u) & (1u ^ u_input.b), ~1916u), firstTrailingBit(_wgslsmith_add_vec3_u32(func_2(vec2<bool>(arg_1, false), u_input.b, vec3<u32>(4294967295u, 4294967295u, 45818u), Struct_2(vec2<i32>(-43560i, 2147483647i), vec4<bool>(arg_1, false, arg_1, arg_1), Struct_1(arg_2.d.x, vec4<u32>(87715u, 1u, u_input.b, arg_2.a), arg_0.x, vec4<u32>(9543u, u_input.b, u_input.b, 17785u)), vec4<f32>(var_1.a, -2171f, global1.x, -1576f))).d.wzz, arg_2.d.xwy)), Struct_2(select(~u_input.c.wy, ~u_input.a, all(vec4<bool>(true, false, arg_1, false))), vec4<bool>(false, !arg_1, false || arg_1, var_1.a > global1.x), func_2(!vec2<bool>(arg_1, true), max(u_input.b, 4294967295u), _wgslsmith_sub_vec3_u32(arg_2.d.xyx, vec3<u32>(arg_2.a, u_input.b, 80725u)), Struct_2(vec2<i32>(-26224i, 17686i), vec4<bool>(arg_1, true, arg_1, arg_1), arg_2, vec4<f32>(263f, 979f, global1.x, 1558f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2150f, -1573f, 432f, -259f)))).d.x, _wgslsmith_div_u32(~(~u_input.b), u_input.b));
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1u, 62065u), vec4<u32>(0u, 9304u, arg_0.x, 194u)), u_input.b ^ arg_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), ~0u, abs(54148u), u_input.b) ^ func_2(vec2<bool>(true, true), select(u_input.b, u_input.b, true), vec3<u32>(arg_0.x, 4294967295u, u_input.b) & vec3<u32>(4294967295u, arg_0.x, arg_0.x), Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, false), Struct_1(1u, vec4<u32>(95615u, 1u, 43029u, u_input.b), -9599i, vec4<u32>(arg_0.x, u_input.b, 6695u, 4294967295u)), vec4<f32>(global1.x, 381f, 494f, global1.x))).d, vec4<u32>(max(max(arg_0.x, arg_0.x), _wgslsmith_div_u32(42148u, arg_0.x)), ~0u, _wgslsmith_dot_vec2_u32(func_3(vec3<i32>(41135i, 18322i, 0i), false, Struct_1(1u, vec4<u32>(0u, 1u, 1u, u_input.b), u_input.a.x, vec4<u32>(u_input.b, 31210u, 72948u, u_input.b))).zy, firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), func_2(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(arg_0.x, 8462u, false), reverseBits(vec3<u32>(arg_0.x, 4301u, 1u)), Struct_2(u_input.a, vec4<bool>(true, false, true, false), Struct_1(arg_0.x, arg_0, -2147483647i, vec4<u32>(u_input.b, 1u, arg_0.x, u_input.b)), vec4<f32>(862f, -497f, global1.x, global1.x))).d.x)), u_input.a.x, abs(vec4<u32>(_wgslsmith_add_u32(4519u, arg_0.x), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b, u_input.b, arg_0.x)), vec3<u32>(34198u, 4294967295u, 4294967295u) & arg_0.zyw), 63539u, ~(~u_input.b))));
    global0 = array<vec3<u32>, 24>();
    let var_1 = Struct_4(global1.x);
    var var_2 = Struct_2(vec2<i32>(-1i, 38856i) >> (select(_wgslsmith_add_vec2_u32(var_0.b.zz, vec2<u32>(var_0.a, arg_0.x)) << (firstTrailingBit(vec2<u32>(u_input.b, 87862u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(arg_0.wx, ~var_0.b.yx, arg_0.ww), ~u_input.b <= var_0.b.x) % vec2<u32>(32u)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false)), vec4<bool>(true, any(vec3<bool>(true, false, false)), true, true)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, _wgslsmith_div_u32(arg_0.x, 56737u) >= (arg_0.x & var_0.d.x), false, any(vec2<bool>(true, false)) | true)), Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.x, 32875u, var_0.b.x, 12319u)), vec4<u32>(1u, ~4294967295u, 4092u, abs(arg_0.x))), ~_wgslsmith_div_vec4_u32(abs(var_0.b), ~var_0.d), u_input.c.x, _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_0.a, arg_0.x, var_0.d.x, var_0.a)), var_0.b) ^ _wgslsmith_div_vec4_u32(arg_0 ^ var_0.d, var_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(374f)), var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), global1.x, -1445f)));
    var var_3 = Struct_2(_wgslsmith_div_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c, -28029i), select(vec2<i32>(var_0.c, var_2.a.x), vec2<i32>(var_2.c.c, var_0.c), false), -var_2.a), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-55313i, var_0.c), var_2.a), -vec2<i32>(var_2.a.x, 34194i)), !(false || var_2.b.x)), firstLeadingBit(abs(u_input.a) | vec2<i32>(-2147483647i, 2147483647i))), select(var_2.b, var_2.b, var_2.b.x), func_2(vec2<bool>(false, var_2.b.x == all(var_2.b)), 17189u, ~(~reverseBits(vec3<u32>(var_2.c.d.x, 0u, 88180u))), Struct_2(reverseBits(vec2<i32>(u_input.a.x, var_2.a.x)), var_2.b, func_2(select(vec2<bool>(var_2.b.x, false), vec2<bool>(false, var_2.b.x), var_2.b.x), arg_0.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, 124920u, 47803u), vec3<u32>(1u, u_input.b, var_2.c.d.x), global0[_wgslsmith_index_u32(0u, 24u)]), Struct_2(vec2<i32>(1i, var_2.a.x), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x), Struct_1(133379u, vec4<u32>(80470u, var_2.c.a, 4294967295u, 4294967295u), 2147483647i, var_2.c.b), vec4<f32>(var_1.a, var_1.a, var_2.d.x, var_1.a))), vec4<f32>(-386f, -553f, _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(min(474f, -1926f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -1196f, 535f, -166f), var_2.d, var_2.b)))))));
    return Struct_2(_wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(var_3.c.c, 18561i), 0i), u_input.c.ww), !(!(!var_3.b)), var_3.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-518f, global1.x, _wgslsmith_f_op_f32(max(-203f, 1463f)), 1100f) + vec4<f32>(_wgslsmith_f_op_f32(min(var_3.d.x, var_1.a)), _wgslsmith_f_op_f32(var_2.d.x * var_3.d.x), _wgslsmith_f_op_f32(abs(var_3.d.x)), _wgslsmith_f_op_f32(var_2.d.x * -720f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_2.d - var_2.d), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(645f, var_3.d.x, -721f, 1551f))))))));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = func_4(select(func_3(u_input.c.xxz, true, func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), ~4294967295u, abs(arg_1), Struct_2(u_input.a, vec4<bool>(true, false, false, true), Struct_1(arg_1.x, vec4<u32>(arg_0, 1u, u_input.b, 1u), 1i, vec4<u32>(27941u, u_input.b, arg_1.x, 3128u)), vec4<f32>(1769f, global1.x, 872f, -477f)))), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 1u, 41005u, arg_0) << (vec4<u32>(u_input.b, 11086u, arg_1.x, arg_1.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0, arg_0, 8577u), vec4<u32>(arg_0, arg_0, 1u, u_input.b))) >> (vec4<u32>(~1850u, u_input.b, ~14157u, u_input.b << (u_input.b % 32u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, global1.x)) + -580f) > -324f));
    var var_1 = arg_2.xw;
    let var_2 = Struct_5(vec3<u32>(func_4(countOneBits(var_0.c.d)).c.b.x, 0u, ~(~arg_0) >> (_wgslsmith_add_u32(3091u, arg_0) % 32u)), 1u, vec3<bool>(true, var_0.b.x, true), ~(vec2<u32>(var_0.c.a, 4294967295u) >> (~(vec2<u32>(arg_1.x, var_0.c.d.x) >> (var_0.c.d.yy % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_sub_vec3_i32(u_input.c.xyw, abs(~select(arg_2.zzy, vec3<i32>(-30990i, 2147483647i, 2147483647i), var_0.b.wyz))));
    global1 = var_0.d.wx;
    var var_3 = vec2<i32>(var_0.c.c, var_1.x);
    return abs(~arg_1.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (vec2<i32>(u_input.a.x, u_input.c.x) >> (~(~(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, 4294967295u))) % vec2<u32>(32u))) >> (select(~(~vec2<u32>(26432u, u_input.b)), vec2<u32>(1u, ~(~57668u)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), false), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false))) % vec2<u32>(32u));
    let var_1 = any(vec4<bool>(false, true, !any(vec3<bool>(true, false, true)) & true, !(countOneBits(4294967295u) < firstLeadingBit(u_input.b))));
    var var_2 = Struct_5(vec3<u32>(1u, abs(u_input.b), u_input.b), 1u, vec3<bool>(var_1, var_1, var_1), func_1(reverseBits(24168u >> (u_input.b % 32u)) & _wgslsmith_mod_u32(~4294967295u, 4294967295u), vec3<u32>(~_wgslsmith_div_u32(u_input.b, 0u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b, 1u), reverseBits(~0u)), vec4<i32>(-(u_input.c.x ^ 1i), var_0.x, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, 1i << (u_input.b % 32u)), var_0.x)), vec3<i32>(var_0.x, u_input.a.x, ~2147483647i));
    let var_3 = reverseBits(func_3(-abs(vec3<i32>(var_2.e.x, var_0.x, 5892i)), var_1, func_2(!select(var_2.c.yy, var_2.c.yz, var_2.c.zx), abs(func_1(u_input.b, vec3<u32>(4294967295u, 31795u, var_2.a.x), u_input.c).x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.d.x, 15956u, 2018u) | vec3<u32>(var_2.d.x, u_input.b, u_input.b), ~vec3<u32>(1u, 1u, var_2.a.x), vec3<u32>(8502u, u_input.b, 35099u) ^ vec3<u32>(1u, 4294967295u, 9384u)), Struct_2(abs(var_2.e.zy), select(vec4<bool>(var_1, true, var_2.c.x, true), vec4<bool>(var_1, false, var_2.c.x, var_2.c.x), vec4<bool>(false, var_2.c.x, false, true)), func_4(vec4<u32>(var_2.d.x, u_input.b, var_2.a.x, var_2.b)).c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -444f, -1591f, global1.x)))))).yx);
    let var_4 = Struct_1(1u, vec4<u32>(~func_3(u_input.c.zzw, var_2.c.x, Struct_1(var_3.x, vec4<u32>(var_3.x, u_input.b, 4294967295u, u_input.b), u_input.a.x, vec4<u32>(var_2.b, 74715u, var_3.x, 1u))).x, _wgslsmith_sub_u32(~4294967295u, var_2.a.x), var_2.d.x ^ u_input.b, 27362u) << (vec4<u32>(_wgslsmith_dot_vec2_u32(func_1(var_3.x, vec3<u32>(var_2.b, 0u, 58777u), u_input.c), min(vec2<u32>(var_2.d.x, u_input.b), var_3)), ~_wgslsmith_add_u32(u_input.b, u_input.b), ~func_1(0u, var_2.a, u_input.c).x, u_input.b) % vec4<u32>(32u)), u_input.a.x, ~(~(vec4<u32>(u_input.b, var_2.d.x, 75711u, 27420u) | ~vec4<u32>(u_input.b, 15726u, 57238u, 0u))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1339f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-941f, global1.x)) - _wgslsmith_f_op_f32(-1000f + -662f))))) * vec2<f32>(_wgslsmith_div_f32(-661f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(trunc(1339f))));
    global0 = array<vec3<u32>, 24>();
    let var_5 = vec2<u32>(var_4.d.x, select(0u, u_input.b, var_2.c.x) | countOneBits(u_input.b));
    global0 = array<vec3<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~var_4.d), _wgslsmith_dot_vec3_i32(u_input.c.zxw, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(0i, var_0.x), select(1641i, var_4.c, var_2.c.x), u_input.a.x), select(-vec3<i32>(-65767i, var_0.x, -1i), min(vec3<i32>(2147483647i, var_2.e.x, var_4.c), var_2.e), var_2.c), _wgslsmith_mult_vec3_i32(var_2.e | u_input.c.xxz, vec3<i32>(var_4.c, 2147483647i, -2147483647i) >> (vec3<u32>(var_5.x, var_3.x, var_4.d.x) % vec3<u32>(32u))))));
}

