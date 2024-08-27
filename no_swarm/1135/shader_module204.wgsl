struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(-1i, 1i), true, vec4<u32>(1u, 1u, 3886u, 14130u), vec2<i32>(37787i, 1i), -1i);

var<private> global1: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: array<bool, 31> = array<bool, 31>(false, false, false, true, false, true, false, true, false, true, false, true, true, true, false, true, false, false, false, false, true, false, false, true, false, false, true, true, false, false, false);

var<private> global3: vec3<i32> = vec3<i32>(-1831i, 7769i, 32117i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<f32>) -> f32 {
    let var_0 = Struct_3(Struct_1(arg_3.xz, true), arg_2.b, firstTrailingBit(arg_2.c));
    var var_1 = select(_wgslsmith_clamp_i32(global0.d.x, max(1i, arg_2.c.x) ^ _wgslsmith_div_i32(u_input.c.x, -2147483647i), ~(-1i & global0.d.x)), 0i, true) != firstTrailingBit(-_wgslsmith_mod_i32(max(32558i, 32236i), -u_input.d.x));
    let var_2 = Struct_4(Struct_2(vec2<i32>((i32(-1i) * -2147483647i) & global0.d.x, arg_2.b.a.x), any(vec4<bool>(arg_1.b, all(vec2<bool>(true, arg_1.b)), true, select(true, var_0.b.b, true))), min(~vec4<u32>(16939u, arg_2.b.c.x, arg_2.b.c.x, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(3416u, global0.c.x, 44143u, global0.c.x), global0.c, global0.c)) ^ ~abs(arg_2.b.c), abs(_wgslsmith_add_vec2_i32(select(vec2<i32>(2147483647i, u_input.d.x), arg_2.c.yx, vec2<bool>(true, false)), ~vec2<i32>(0i, global0.a.x))), arg_2.b.a.x), arg_2.c, !select(!vec4<bool>(arg_2.b.b, var_0.a.b, var_0.a.b, false), !select(vec4<bool>(var_0.a.b, false, arg_2.b.b, global2[_wgslsmith_index_u32(var_0.b.c.x, 31u)]), vec4<bool>(false, false, false, true), global0.b), false), arg_1);
    let var_3 = max(var_0.c.x, _wgslsmith_div_i32(-15304i, -1i)) & _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(global3.x, 0i), abs(vec2<i32>(u_input.d.x, -9895i))), vec2<i32>(1i, countOneBits(arg_2.c.x))), _wgslsmith_dot_vec2_i32(firstTrailingBit(global0.a), ~vec2<i32>(48081i, -1i)), var_2.b.x | _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_2.b.x, global0.e), ~arg_2.b.a.x, _wgslsmith_mod_i32(-1i, arg_2.b.d.x)));
    global2 = array<bool, 31>();
    return -2060f;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> bool {
    global2 = array<bool, 31>();
    let var_0 = false;
    var var_1 = _wgslsmith_mod_u32(reverseBits(u_input.a.x), 46414u);
    global2 = array<bool, 31>();
    let var_2 = Struct_5(arg_0.x >> (4294967295u % 32u), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.zy, arg_2.zx) - _wgslsmith_f_op_vec2_f32(arg_2.yz * vec2<f32>(-532f, -1075f))), !select(true, false, false)), Struct_2(vec2<i32>(i32(-1i) * -38106i, 503i), _wgslsmith_f_op_f32(func_3(arg_2.x, Struct_1(arg_2.xz, global2[_wgslsmith_index_u32(global0.c.x, 31u)]), Struct_3(Struct_1(arg_2.zz, global0.b), Struct_2(vec2<i32>(-50686i, arg_3.x), true, vec4<u32>(1u, 1u, 0u, global0.c.x), arg_0, 532i), vec3<i32>(22443i, arg_0.x, 32946i)), vec3<f32>(1729f, arg_2.x, 880f))) < arg_2.x, ~countOneBits(vec4<u32>(global0.c.x, u_input.b.x, 4294967295u, 0u)), u_input.c.xz, -(~(-15328i))), max(abs(select(vec3<i32>(global3.x, arg_0.x, 90295i), vec3<i32>(global3.x, 1129i, u_input.d.x), true)), ~arg_3)), ~14018u, any(arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -1425f) * vec4<f32>(1008f, arg_2.x, arg_2.x, arg_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -500f, 354f, 410f) * vec4<f32>(-767f, arg_2.x, -2101f, -1086f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.x, 333f, arg_2.x, 1045f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, -2372f, arg_2.x, arg_2.x))), select(vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(var_0, global0.b, false, var_0), global0.b))), vec4<bool>(!var_0, !arg_1.x, !var_0, all(vec4<bool>(false, var_0, true, global0.b)))))));
    return true;
}

fn func_1() -> vec3<i32> {
    let var_0 = select(vec3<bool>(all(vec4<bool>(true, !global2[_wgslsmith_index_u32(24509u, 31u)], func_2(vec2<i32>(global0.d.x, global0.a.x), vec2<bool>(global0.b, global2[_wgslsmith_index_u32(global0.c.x, 31u)]), vec3<f32>(381f, -1000f, -1000f), vec3<i32>(7177i, -24555i, -1i)), true)), global0.b, true), select(vec3<bool>(false, true, !global0.b), !select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], global2[_wgslsmith_index_u32(12384u, 31u)], global0.b), select(vec3<bool>(global2[_wgslsmith_index_u32(90725u, 31u)], global0.b, global0.b), vec3<bool>(global0.b, global0.b, global2[_wgslsmith_index_u32(53153u, 31u)]), vec3<bool>(global0.b, false, false)), all(vec3<bool>(true, global0.b, true))), select(vec3<bool>(false, true, all(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(u_input.b.x, 31u)], false))), select(vec3<bool>(global0.b, true, true), vec3<bool>(global0.b, true, false), select(vec3<bool>(global2[_wgslsmith_index_u32(global0.c.x, 31u)], false, global0.b), vec3<bool>(true, true, false), vec3<bool>(global2[_wgslsmith_index_u32(42208u, 31u)], true, false))), !select(vec3<bool>(global0.b, true, global2[_wgslsmith_index_u32(global0.c.x, 31u)]), vec3<bool>(global2[_wgslsmith_index_u32(global0.c.x, 31u)], global0.b, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec3<bool>(global2[_wgslsmith_index_u32(global0.c.x, 31u)], true, global2[_wgslsmith_index_u32(global0.c.x, 31u)])))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -783f) * -487f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-227f, 779f)))));
    let var_1 = 2147483647i;
    global3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(-26502i), 38850i, firstLeadingBit(var_1)) >> (_wgslsmith_add_vec3_u32(u_input.b.xzy, vec3<u32>(16164u, u_input.b.x, 1u)) % vec3<u32>(32u)), u_input.c.xwz), reverseBits(~vec3<i32>(1i, 29645i, 12060i)) >> (firstTrailingBit(~(~vec3<u32>(0u, 105630u, global0.c.x))) % vec3<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1939f, 1910f)), -970f))), all(var_0));
    var var_3 = 80966u;
    return u_input.c.yyx;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = vec4<bool>(global0.b, !(!all(select(arg_0, arg_0, global0.b))), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(~firstTrailingBit(global0.c.x), firstTrailingBit(arg_1.x))), 31u)], countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, arg_1.x), vec3<u32>(1u, 27456u, global0.c.x))) > select(~abs(17933u), max(~global0.c.x, ~u_input.b.x), true));
    let var_1 = vec2<bool>(arg_0.x, global0.b);
    let var_2 = !var_1.x;
    let var_3 = _wgslsmith_dot_vec2_i32(firstTrailingBit(select(vec2<i32>(countOneBits(global3.x), 1i), arg_2.yz, global1[_wgslsmith_index_u32(reverseBits(64232u), 16u)])), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(u_input.c.x, -2147483647i)), global0.d), vec2<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.a.x, global0.a.x), vec3<i32>(global3.x, -24723i, 19802i)))));
    var var_4 = Struct_4(Struct_2(abs(arg_2.yx), !(global0.d.x != 2147483647i), vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(u_input.b.x), u_input.b.x), ~(1u >> (0u % 32u)), ~firstTrailingBit(arg_1.x), u_input.a.x & _wgslsmith_dot_vec3_u32(global0.c.xzw, vec3<u32>(arg_1.x, u_input.a.x, global0.c.x))), abs(vec2<i32>(arg_2.x, 22298i)) | vec2<i32>(global0.a.x | 1i, 1i), 48467i), abs(abs(_wgslsmith_div_vec3_i32(arg_2, vec3<i32>(-26353i, u_input.d.x, arg_2.x))) << (abs(countOneBits(u_input.b.www)) % vec3<u32>(32u))), vec4<bool>(any(select(select(var_0.yxz, vec3<bool>(true, global0.b, true), false), select(var_0.xzy, var_0.zww, global0.b), select(vec3<bool>(global0.b, false, false), vec3<bool>(global2[_wgslsmith_index_u32(global0.c.x, 31u)], arg_0.x, arg_0.x), vec3<bool>(false, global0.b, global2[_wgslsmith_index_u32(4294967295u, 31u)])))), global2[_wgslsmith_index_u32(u_input.b.x, 31u)], all(select(vec2<bool>(global0.b, var_2), select(vec2<bool>(global2[_wgslsmith_index_u32(global0.c.x, 31u)], false), vec2<bool>(var_1.x, arg_0.x), vec2<bool>(true, false)), var_1.x & var_0.x)), func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(49555i, u_input.d.x), vec2<i32>(-4093i, 20464i) & arg_2.zx), var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(776f, -344f, -2356f) - vec3<f32>(1f, 1f, 1f)), u_input.c.zyx)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1299f), _wgslsmith_f_op_f32(step(-687f, 1152f)))), true));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.d.a)), ~var_4.a.c.x == 1u), var_4.a, select(~(~vec3<i32>(-1i, global3.x, var_4.a.d.x)) << (_wgslsmith_sub_vec3_u32(global0.c.wxw ^ vec3<u32>(u_input.b.x, 1u, 1u), ~vec3<u32>(0u, 32198u, 0u)) % vec3<u32>(32u)), vec3<i32>(min(var_4.a.e, 1i), _wgslsmith_mod_i32(arg_2.x >> (22755u % 32u), var_4.a.a.x), min(max(-34141i, global0.a.x), 1i)), var_0.wwy));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.a.a.x);
    var var_1 = arg_0.b;
    global0 = Struct_2(arg_3.a, true, select(~(countOneBits(u_input.b) & arg_0.b.c), _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(arg_3.c, vec4<u32>(36224u, arg_2.x, 41715u, global0.c.x)), min(~vec4<u32>(arg_3.c.x, 4294967295u, var_1.c.x, arg_3.c.x), ~vec4<u32>(arg_2.x, 4294967295u, u_input.a.x, 62919u))), true), _wgslsmith_mult_vec2_i32(vec2<i32>(74i, _wgslsmith_sub_i32(arg_3.d.x, arg_0.c.x)), func_4(vec2<bool>(any(vec3<bool>(var_1.b, var_1.b, false)), true), arg_2 & arg_2, _wgslsmith_sub_vec3_i32(arg_0.c, vec3<i32>(-13285i, global0.e, global3.x)) & u_input.c.xxz).c.zx), abs(0i));
    global3 = arg_0.c;
    var var_2 = firstTrailingBit(~_wgslsmith_mod_u32(arg_2.x, min(4294967295u, 1u))) & firstTrailingBit(countOneBits(~arg_2.x));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(func_5(func_4(vec2<bool>(global0.b, global0.b), u_input.a.zy, func_1()), vec2<bool>(func_2(global3.xz, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], vec3<f32>(-1177f, 648f, 376f), vec3<i32>(global0.e, 16070i, 6299i)), false), reverseBits(vec2<u32>(36549u, global0.c.x)), Struct_2(global3.yx << (vec2<u32>(64288u, u_input.a.x) % vec2<u32>(32u)), !global2[_wgslsmith_index_u32(global0.c.x, 31u)], global0.c, func_1().xx, -55215i)), true, 53593u != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 13609u, 0u, global0.c.x), select(u_input.b, u_input.b, vec4<bool>(false, true, global2[_wgslsmith_index_u32(35608u, 31u)], global0.b))));
    var var_1 = abs(vec4<u32>(_wgslsmith_dot_vec3_u32(~global0.c.zxx, vec3<u32>(58043u, global0.c.x, global0.c.x)), _wgslsmith_mult_u32(~global0.c.x, u_input.b.x), u_input.a.x, _wgslsmith_div_u32(~u_input.b.x, min(global0.c.x, global0.c.x))) | (_wgslsmith_clamp_vec4_u32(~u_input.b, vec4<u32>(22369u, 82343u, 28953u, u_input.a.x) & vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.b.x), vec4<u32>(8518u, 4294967295u, u_input.b.x, 37642u)) | ~select(u_input.b, global0.c, global2[_wgslsmith_index_u32(62201u, 31u)])));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-647f, 992f) + _wgslsmith_f_op_f32(abs(-659f))), _wgslsmith_f_op_f32(max(-2392f, _wgslsmith_f_op_f32(-1000f * -320f))), _wgslsmith_f_op_f32(select(-208f, _wgslsmith_f_op_f32(-464f * 1000f), any(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(116804u, 31u)]))))))));
    let var_3 = ~4294967295u;
    var_1 = u_input.b >> (~(~(global0.c ^ vec4<u32>(global0.c.x, 0u, 4294967295u, 41013u))) % vec4<u32>(32u));
    var_1 = select(u_input.b, vec4<u32>(global0.c.x, func_4(select(var_0.xy, select(vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.x, 31u)]), var_0.yy, true), !var_0.x), abs(vec2<u32>(var_3, 0u)), -u_input.c.zwy).b.c.x, 1u, 1u), var_0.x);
    var var_4 = Struct_4(Struct_2(~abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, global3.x), global0.d)), true, _wgslsmith_mult_vec4_u32(~u_input.b, ~max(vec4<u32>(var_1.x, 28241u, global0.c.x, u_input.a.x), vec4<u32>(12102u, 4294967295u, global0.c.x, global0.c.x))), vec2<i32>(abs(_wgslsmith_dot_vec2_i32(global0.a, vec2<i32>(-71428i, global3.x))), -2147483647i), func_4(!global1[_wgslsmith_index_u32(0u << (var_3 % 32u), 16u)], vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), global0.c.zw), ~var_1.x), vec3<i32>(global0.d.x, global3.x, min(-2147483647i, u_input.d.x))).b.e), ~(vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.c.x, u_input.c.x)), select(select(!vec4<bool>(true, global0.b, true, global0.b), !select(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.b.x, 31u)]), vec4<bool>(var_0.x, global0.b, global0.b, var_0.x), global2[_wgslsmith_index_u32(var_3, 31u)]), any(select(vec2<bool>(var_0.x, var_0.x), var_0.xz, true))), !select(!vec4<bool>(false, var_0.x, true, true), vec4<bool>(global0.b, true, global2[_wgslsmith_index_u32(8406u, 31u)], global2[_wgslsmith_index_u32(global0.c.x, 31u)]), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 31u)], false, true, global0.b)), true), func_4(select(!select(var_0.xx, vec2<bool>(global0.b, false), var_0.yx), vec2<bool>(true, false), select(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 31u)], false), vec2<bool>(true, global0.b), vec2<bool>(true, var_0.x)), select(vec2<bool>(var_0.x, true), var_0.zz, true), var_0.xy)), global0.c.xw, u_input.c.zxz).a);
    let var_5 = Struct_2(u_input.d, any(select(var_4.c.wzw, vec3<bool>(true, true, var_4.a.b), true)), global0.c, reverseBits(-(vec2<i32>(-1i) * -vec2<i32>(-14598i, global0.e))), firstLeadingBit(firstLeadingBit(-37569i)));
    let var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(695f, _wgslsmith_f_op_f32(func_3(791f, func_4(!global1[_wgslsmith_index_u32(4294967295u, 16u)], vec2<u32>(global0.c.x, 34590u), _wgslsmith_add_vec3_i32(var_4.b, vec3<i32>(0i, -1i, var_4.b.x))).a, func_4(var_4.c.ww, vec2<u32>(global0.c.x, 50177u), var_4.b), var_2)), _wgslsmith_f_op_f32(func_3(-1138f, var_4.d, Struct_3(func_4(global1[_wgslsmith_index_u32(74921u, 16u)], vec2<u32>(0u, var_4.a.c.x), vec3<i32>(39608i, 31222i, var_4.a.e)).a, var_5, vec3<i32>(var_4.b.x, -4440i, -8928i)), var_2)), var_2.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -915f, _wgslsmith_f_op_f32(trunc(973f)), var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_2 - var_6.xzz));
}

