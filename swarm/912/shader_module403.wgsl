struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_3;

var<private> global2: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global3: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(1u, 2624u, 1u), vec3<u32>(0u, 1u, 20650u), vec3<u32>(25329u, 32544u, 3965u), vec3<u32>(19635u, 40758u, 1u), vec3<u32>(78082u, 17044u, 19932u), vec3<u32>(118257u, 27943u, 7049u), vec3<u32>(8172u, 50719u, 38340u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 0u, 100604u), vec3<u32>(20108u, 26371u, 9719u), vec3<u32>(7580u, 43794u, 19261u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 1004u, 0u), vec3<u32>(17166u, 1u, 13766u), vec3<u32>(4294967295u, 4294967295u, 27463u), vec3<u32>(4294967295u, 22229u, 8010u), vec3<u32>(32442u, 0u, 21771u), vec3<u32>(985u, 4294967295u, 46356u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 95592u, 1u), vec3<u32>(22912u, 45951u, 4240u), vec3<u32>(0u, 65442u, 4294967295u), vec3<u32>(0u, 4294967295u, 14173u), vec3<u32>(61763u, 34465u, 31103u), vec3<u32>(8891u, 1u, 34662u), vec3<u32>(1543u, 4294967295u, 73939u), vec3<u32>(65511u, 16362u, 55204u), vec3<u32>(1u, 4294967295u, 33853u), vec3<u32>(0u, 112028u, 0u), vec3<u32>(27949u, 4294967295u, 1u), vec3<u32>(7641u, 7834u, 0u), vec3<u32>(18683u, 27109u, 15586u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = abs(~_wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(4676u), ~global0.x, global0.x, ~63515u), ~_wgslsmith_div_vec4_u32(global1.a.e, vec4<u32>(1u, 62758u, 4294967295u, 20005u))));
    let var_1 = Struct_3(Struct_2(vec3<bool>(true, _wgslsmith_add_i32(11146i, global1.a.c.x) <= (global1.a.c.x & global1.a.c.x), true), ~_wgslsmith_mod_i32(-2147483647i, global1.a.c.x) > 1i, vec3<i32>(-global1.a.c.x | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1.a.c.x, global1.a.c.x, -9067i), vec4<i32>(8064i, global1.a.c.x, global1.a.c.x, -82831i)), global1.a.c.x, global1.a.c.x), global1.b, _wgslsmith_mod_vec4_u32(global1.a.d.a | vec4<u32>(var_0.x, 1u, u_input.a, global0.x), ~(~global1.a.e))), Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(95967u, var_0.x)), 28260u, firstTrailingBit(19654u), ~u_input.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global1.a.d.b)) * _wgslsmith_f_op_vec2_f32(abs(global1.b.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global1.a.d.b)) * _wgslsmith_f_op_vec2_f32(select(global1.b.b, vec2<f32>(global1.a.d.b.x, 1000f), false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b.b.x))))));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(abs(min(0u, global1.b.a.x)), u_input.a, ~var_1.b.a.x, abs(firstTrailingBit(u_input.a))), select(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 1u, var_1.a.d.a.x, 0u), var_0 >> (global1.b.a % vec4<u32>(32u))), var_0, any(!global1.a.a.zz))) | ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, 43772u, 70304u, 44494u), min(vec4<u32>(var_1.b.a.x, 4294967295u, var_1.b.a.x, 4294967295u), vec4<u32>(1u, 1u, global1.b.a.x, 15169u))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    global3 = array<vec3<u32>, 32>();
    let var_0 = Struct_3(Struct_2(!(!(!global1.a.a)), true, vec3<i32>(38493i, ~_wgslsmith_clamp_i32(arg_0.c.x, -7795i, arg_1), _wgslsmith_mod_i32(abs(arg_0.c.x), max(-1i, arg_0.c.x))), Struct_1(arg_0.e, arg_2.b), vec4<u32>(16545u, 30145u, countOneBits(22933u), min(arg_0.d.a.x, global0.x))), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)));
    let var_1 = arg_0.d;
    let var_2 = reverseBits(global1.a.c.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(790f, 683f));
    return Struct_3(var_0.a, Struct_1(func_3(), _wgslsmith_f_op_vec2_f32(-var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-352f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-199f, -385f))))) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.c)), _wgslsmith_f_op_f32(min(1901f, global1.b.b.x))), arg_2.b.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    let var_0 = ~_wgslsmith_div_i32(global1.a.c.x, _wgslsmith_div_i32(~(-50494i), ~min(arg_1.c.x, arg_1.c.x)));
    let var_1 = !vec3<bool>(global1.a.a.x, select(true, false, !(arg_1.d.b.x <= arg_0.c)), global1.a.a.x);
    let var_2 = -313f;
    let var_3 = global1.a.d.a;
    var var_4 = arg_0;
    return arg_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec4<f32>) -> f32 {
    var var_0 = arg_2.a.b;
    global3 = array<vec3<u32>, 32>();
    return -1058f;
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(global0.zz ^ vec2<u32>(46523u, ~18931u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1395f, _wgslsmith_f_op_f32(-global1.c), global1.b.b.x)), func_4(func_2(global1.a, ~global1.a.c.x, global1.b), func_2(func_2(global1.a, -16216i, Struct_1(global1.b.a, vec2<f32>(global1.b.b.x, global1.c))).a, global1.a.c.x & 2147483647i, Struct_1(vec4<u32>(1u, 15264u, 1u, global1.b.a.x), vec2<f32>(447f, -258f))).a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(630f, global1.b.b.x, 1753f, 1000f), vec4<f32>(910f, global1.b.b.x, global1.c, global1.b.b.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.b.b.x, global1.b.b.x, global1.a.d.b.x, global1.c)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(258f, global1.c, global1.c, global1.b.b.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(798f, 678f, global1.c, 1645f)))))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1000f)))));
    let var_1 = -firstLeadingBit(-13872i);
    return global1.a.a.zx;
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.d.b.x + _wgslsmith_f_op_f32(1405f + 1785f)), _wgslsmith_div_f32(-2434f, _wgslsmith_f_op_f32(-arg_0.x)));
    global1 = func_2(func_2(func_2(Struct_2(arg_2.a, true, vec3<i32>(arg_2.c.x, -2147483647i, global1.a.c.x), func_4(Struct_3(global1.a, Struct_1(vec4<u32>(1u, global1.a.d.a.x, 4294967295u, arg_3), vec2<f32>(910f, global1.a.d.b.x)), 1352f), global1.a).b, arg_2.e), 1i, Struct_1(global1.a.d.a, _wgslsmith_div_vec2_f32(arg_2.d.b, vec2<f32>(arg_0.x, -311f)))).a, (_wgslsmith_mod_i32(arg_2.c.x, 1i) << (34323u % 32u)) | (i32(-1i) * -2147483647i), global1.b).a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(36890i, 2147483647i), firstTrailingBit(2147483647i), -5779i, _wgslsmith_sub_i32(arg_2.c.x, global1.a.c.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_2.c.x, global1.a.c.x, global1.a.c.x, 20196i), firstLeadingBit(vec4<i32>(-37154i, 0i, -6342i, -5548i)))), (vec4<i32>(16957i, arg_2.c.x, global1.a.c.x, global1.a.c.x) << (~arg_2.e % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(33436u, 42579u, 43308u, arg_2.e.x), arg_2.e) % vec4<u32>(32u))), func_4(Struct_3(Struct_2(vec3<bool>(false, false, global1.a.b), arg_2.a.x, -vec3<i32>(-1i, 2147483647i, 3780i), Struct_1(arg_2.d.a, vec2<f32>(arg_0.x, arg_0.x)), global1.a.d.a), Struct_1(vec4<u32>(3749u, u_input.a, 36262u, arg_3) ^ vec4<u32>(78848u, arg_3, 1u, arg_2.d.a.x), vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_f32(615f + _wgslsmith_f_op_f32(-global1.c))), Struct_2(!global1.a.a, !(var_0.x > arg_2.d.b.x), _wgslsmith_clamp_vec3_i32(arg_2.c, arg_2.c, vec3<i32>(arg_2.c.x, global1.a.c.x, 63952i)) ^ max(vec3<i32>(7577i, global1.a.c.x, -4263i), vec3<i32>(-3198i, -24048i, arg_2.c.x)), global1.a.d, global1.a.e)).b);
    var var_1 = firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(global1.a.c.x, -1i), global1.a.c.x, 21359i)) ^ global1.a.c;
    let var_2 = ~(~(~28088u));
    let var_3 = Struct_3(func_2(Struct_2(vec3<bool>(true, true, !arg_1.x), arg_1.x, select(firstLeadingBit(arg_2.c), countOneBits(vec3<i32>(1589i, 1i, var_1.x)), arg_1.x), func_4(func_2(arg_2, 21288i, global1.b), Struct_2(vec3<bool>(global1.a.b, true, arg_2.b), global1.a.b, arg_2.c, Struct_1(global1.a.d.a, vec2<f32>(-403f, 139f)), global1.a.d.a)).b, _wgslsmith_div_vec4_u32(vec4<u32>(81874u, global1.b.a.x, 2543u, 4294967295u), reverseBits(vec4<u32>(global0.x, var_2, arg_3, arg_3)))), _wgslsmith_dot_vec2_i32(~(vec2<i32>(-41574i, -1i) ^ vec2<i32>(global1.a.c.x, global1.a.c.x)), arg_2.c.zy), arg_2.d).a, Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3, arg_3), vec2<u32>(1u, 1u)), abs(var_2 | global1.b.a.x), abs(abs(global1.b.a.x)), ~global1.b.a.x), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(1f)))), 473f);
    return Struct_3(Struct_2(select(global2[_wgslsmith_index_u32(~(var_3.b.a.x << (global0.x % 32u)), 10u)], vec3<bool>(global1.a.a.x, var_3.a.a.x, true), arg_2.a), !(var_1.x != var_1.x) & !arg_2.b, vec3<i32>(countOneBits(global1.a.c.x), -1i, ~reverseBits(15430i)), func_4(func_2(func_4(var_3, Struct_2(vec3<bool>(true, true, true), true, var_3.a.c, Struct_1(vec4<u32>(global1.a.e.x, 4294967295u, var_2, arg_3), vec2<f32>(141f, -780f)), global1.b.a)).a, 18046i, func_2(Struct_2(vec3<bool>(arg_1.x, false, global1.a.b), true, var_3.a.c, arg_2.d, global1.a.d.a), -28991i, Struct_1(vec4<u32>(64423u, var_2, arg_3, 1u), vec2<f32>(arg_2.d.b.x, 620f))).b), func_4(func_2(arg_2, -2147483647i, global1.b), func_4(var_3, arg_2).a).a).a.d, global1.b.a), func_2(arg_2, _wgslsmith_div_i32(-var_1.x, -2147483647i) << (_wgslsmith_add_u32(_wgslsmith_mult_u32(global1.a.d.a.x, u_input.a), global1.a.e.x) % 32u), arg_2.d).a.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.c)))), -1000f)));
}

fn func_7(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_3 {
    global2 = array<vec3<bool>, 10>();
    global1 = func_2(func_2(func_4(arg_0, global1.a).a, 5890i, func_2(Struct_2(vec3<bool>(true, true, false), true, arg_0.a.c, Struct_1(arg_0.b.a, arg_0.b.b), _wgslsmith_add_vec4_u32(arg_2.a, arg_2.a)), global1.a.c.x, func_6(vec4<f32>(-1815f, arg_0.c, arg_2.b.x, -1000f), !vec2<bool>(false, global1.a.a.x), global1.a, global0.x & 26155u).a.d).b).a, global1.a.c.x, arg_0.a.d);
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(func_2(Struct_2(!vec3<bool>(true, arg_0.a.a.x, true), global1.a.a.x, -vec3<i32>(arg_0.a.c.x, arg_0.a.c.x, -2147483647i), Struct_1(vec4<u32>(1u, 45259u, 4294967295u, arg_2.a.x), vec2<f32>(arg_2.b.x, arg_0.c)), firstLeadingBit(arg_2.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.c.x, global1.a.c.x, 0i, global1.a.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(42733i, 37474i, -2147483647i, 2147483647i), vec4<i32>(global1.a.c.x, global1.a.c.x, arg_0.a.c.x, -1i))), func_4(Struct_3(arg_0.a, arg_2, arg_0.b.b.x), global1.a).b).a.d.a.x & ~(~global1.a.d.a.x | _wgslsmith_clamp_u32(u_input.a, global0.x, 0u)), 10u)], func_4(arg_0, arg_0.a).a.a.x, min(reverseBits(global1.a.c), arg_0.a.c) >> (~firstTrailingBit(_wgslsmith_mult_vec3_u32(global1.b.a.zyx, arg_0.b.a.xxx)) % vec3<u32>(32u)), func_2(global1.a, ~(~arg_0.a.c.x | _wgslsmith_sub_i32(global1.a.c.x, 2147483647i)), func_2(func_2(Struct_2(vec3<bool>(false, arg_0.a.b, false), true, arg_0.a.c, Struct_1(arg_2.a, arg_0.b.b), arg_2.a), abs(arg_0.a.c.x), Struct_1(vec4<u32>(u_input.a, arg_2.a.x, global0.x, u_input.a), global1.b.b)).a, -2147483647i, func_2(Struct_2(vec3<bool>(arg_0.a.b, false, false), false, arg_0.a.c, arg_0.b, vec4<u32>(arg_2.a.x, arg_2.a.x, global1.b.a.x, arg_1.x)), ~13599i, func_6(vec4<f32>(arg_2.b.x, arg_0.c, -948f, -1008f), vec2<bool>(global1.a.a.x, true), Struct_2(arg_0.a.a, false, arg_0.a.c, arg_0.b, arg_0.b.a), 0u).b).b).b).b, vec4<u32>(~_wgslsmith_mult_u32(max(arg_2.a.x, global0.x), func_2(Struct_2(global2[_wgslsmith_index_u32(94312u, 10u)], arg_0.a.a.x, vec3<i32>(arg_0.a.c.x, 1i, arg_0.a.c.x), arg_2, arg_2.a), 0i, global1.a.d).a.e.x), (u_input.a ^ reverseBits(0u)) & ~4294967295u, u_input.a, ~39945u));
    let var_1 = vec2<bool>(global1.a.a.x, func_6(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1047f)), -370f, _wgslsmith_f_op_f32(ceil(-333f)), _wgslsmith_div_f32(global1.b.b.x, -339f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.b.x, -222f, 991f, 1067f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.d.b.x, 736f, -761f, -174f), vec4<f32>(arg_2.b.x, 349f, 567f, -1000f))))), !vec2<bool>(global1.a.a.x, var_0.b | true), Struct_2(var_0.a, global1.a.b, vec3<i32>(var_0.c.x ^ -2147483647i, i32(-1i) * -29600i, countOneBits(arg_0.a.c.x)), Struct_1(~arg_2.a, vec2<f32>(-1345f, var_0.d.b.x)), arg_0.b.a), ~20169u).a.a.x);
    global0 = ~abs(vec4<u32>(34073u, max(_wgslsmith_sub_u32(arg_0.a.d.a.x, arg_2.a.x), arg_2.a.x), 62421u, ~_wgslsmith_mult_u32(1u, 29868u)));
    return Struct_3(arg_0.a, func_4(arg_0, Struct_2(!(!global1.a.a), false, ~arg_0.a.c, Struct_1(firstLeadingBit(arg_2.a), arg_0.b.b), vec4<u32>(arg_2.a.x, ~arg_1.x, 0u, 4294967295u))).b, arg_0.a.d.b.x);
}

fn func_8(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    global2 = array<vec3<bool>, 10>();
    global0 = arg_1.a;
    let var_0 = Struct_1(~(_wgslsmith_add_vec4_u32(arg_3.b.a, func_2(global1.a, 2147483647i, Struct_1(vec4<u32>(1u, arg_1.a.x, 13773u, global0.x), vec2<f32>(-324f, 568f))).a.e) >> (global1.b.a % vec4<u32>(32u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global1.b.b - vec2<f32>(global1.b.b.x, arg_3.b.b.x)), vec2<f32>(arg_1.b.x, 526f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-744f, -1049f) + _wgslsmith_f_op_vec2_f32(arg_1.b + arg_3.a.d.b))))));
    global2 = array<vec3<bool>, 10>();
    var var_1 = min(countOneBits(_wgslsmith_add_vec4_i32(-vec4<i32>(-29399i, arg_3.a.c.x, global1.a.c.x, 33354i), -vec4<i32>(global1.a.c.x, 29034i, arg_3.a.c.x, 25819i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_2, arg_3.a.c.x, 10629i), vec4<i32>(global1.a.c.x, global1.a.c.x, -1i, 34458i) | vec4<i32>(arg_2, arg_3.a.c.x, arg_2, arg_3.a.c.x), -vec4<i32>(arg_3.a.c.x, -2147483647i, -1i, arg_3.a.c.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(6818i, -16016i, global1.a.c.x, ~global1.a.c.x), min(vec4<i32>(~arg_2, 2147483647i, 0i, 11387i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, arg_2, -36728i), vec4<i32>(-1i, 0i, -1i, 2147483647i)))));
    return Struct_1(global1.b.a, _wgslsmith_f_op_vec2_f32(arg_3.a.d.b + _wgslsmith_div_vec2_f32(arg_1.b, vec2<f32>(_wgslsmith_f_op_f32(floor(674f)), -1210f))));
}

fn func_9(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> StorageBuffer {
    global3 = array<vec3<u32>, 32>();
    let var_0 = global3[_wgslsmith_index_u32(20228u, 32u)] << (_wgslsmith_sub_vec3_u32(arg_1.a.ywx, _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(47649u), 26879u, func_3().x), ~min(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(global1.a.d.a.x, global1.a.d.a.x, global0.x)))) % vec3<u32>(32u));
    let var_1 = global1.b.b;
    global0 = _wgslsmith_div_vec4_u32(global1.b.a >> (arg_1.a % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(arg_1.a.x, abs(arg_1.a.x)), _wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(27877u, global1.b.a.x), var_0.zx)), ~arg_1.a.x, 4294967295u) ^ func_4(func_4(Struct_3(global1.a, global1.b, arg_1.b.x), global1.a), global1.a).a.e);
    return StorageBuffer(~var_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.a.d.b.x * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-func_8(true, global1.a.d, 2147483647i, Struct_3(global1.a, Struct_1(vec4<u32>(56566u, arg_1.a.x, 0u, global0.x), global1.a.d.b), 323f)).b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-726f * var_1.x) - _wgslsmith_f_op_f32(arg_1.b.x - arg_0)))), abs(func_2(Struct_2(!vec3<bool>(false, false, global1.a.a.x), global1.a.b, vec3<i32>(1i, arg_2, -21603i), global1.b, vec4<u32>(arg_1.a.x, 0u, 0u, var_0.x) >> (vec4<u32>(global1.b.a.x, arg_1.a.x, 880u, 66565u) % vec4<u32>(32u))), 5700i, global1.a.d).a.c.yx), vec4<f32>(854f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b.b.x, global1.a.d.b.x)) - _wgslsmith_f_op_f32(-arg_0)), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_div_f32(-467f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 957f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = false;
    let var_2 = global1.a.a.yz;
    let var_3 = _wgslsmith_f_op_f32(-global1.b.b.x);
    var var_4 = 25580i;
    global3 = array<vec3<u32>, 32>();
    let x = u_input.a;
    s_output = func_9(var_3, func_8(true, global1.a.d, _wgslsmith_mult_i32(i32(-1i) * -1i, global1.a.c.x), func_7(func_6(vec4<f32>(global1.a.d.b.x, -1294f, global1.b.b.x, global1.c), func_1(), Struct_2(global1.a.a, global1.a.a.x, vec3<i32>(global1.a.c.x, global1.a.c.x, global1.a.c.x), Struct_1(global1.a.e, global1.a.d.b), vec4<u32>(4294967295u, global0.x, 111545u, 4294967295u)), 10854u), func_4(Struct_3(global1.a, global1.a.d, global1.b.b.x), Struct_2(vec3<bool>(false, var_2.x, true), false, global1.a.c, global1.a.d, vec4<u32>(41298u, 1u, var_0, global1.a.e.x))).b.a.xzz, func_2(global1.a, -global1.a.c.x, global1.b).b)), countOneBits(-_wgslsmith_sub_i32(2147483647i, 0i)));
}

