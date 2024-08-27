struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-53459i, 2147483647i, 2147483647i, -1i), i32(-2147483648), vec3<i32>(0i, 6697i, i32(-2147483648)), true, -1i);

var<private> global2: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global3: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), -5565i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 1i));

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(12596i, -1i, 0i, -1i), 12089i, vec3<i32>(-78248i, 48969i, -18812i), false, 37728i), Struct_1(vec4<i32>(21037i, 0i, 0i, 37309i), -77086i, vec3<i32>(i32(-2147483648), 2147483647i, -53313i), true, -6873i), Struct_1(vec4<i32>(1i, i32(-2147483648), -4388i, 1i), 0i, vec3<i32>(-2854i, 1i, 26159i), true, -65054i), Struct_1(vec4<i32>(0i, 11666i, -7336i, 0i), i32(-2147483648), vec3<i32>(1i, -32301i, i32(-2147483648)), true, -20438i), Struct_1(vec4<i32>(2147483647i, 0i, 2147483647i, 30394i), 0i, vec3<i32>(58579i, i32(-2147483648), 34149i), false, 0i), Struct_1(vec4<i32>(-23725i, -17741i, 9992i, -21960i), i32(-2147483648), vec3<i32>(-18822i, -1i, -73774i), false, 9524i), Struct_1(vec4<i32>(72535i, 7785i, 2147483647i, 2147483647i), -1i, vec3<i32>(1450i, 1i, 27967i), false, -3131i), Struct_1(vec4<i32>(21577i, -45362i, 835i, -1i), 15493i, vec3<i32>(-1i, -73379i, 2147483647i), true, 8970i), Struct_1(vec4<i32>(41709i, 2147483647i, -1i, -1i), 1i, vec3<i32>(-1i, i32(-2147483648), 10157i), false, -1i), Struct_1(vec4<i32>(3431i, 1i, -2618i, i32(-2147483648)), i32(-2147483648), vec3<i32>(-11787i, -12592i, 1i), false, 1i), Struct_1(vec4<i32>(-1i, -9434i, -1i, 12722i), 1i, vec3<i32>(0i, -1i, -5263i), true, -72948i), Struct_1(vec4<i32>(2147483647i, -45295i, 1i, i32(-2147483648)), 0i, vec3<i32>(-28848i, 0i, 1i), true, -1i), Struct_1(vec4<i32>(i32(-2147483648), -35365i, -1i, -11461i), 0i, vec3<i32>(-43299i, 75463i, i32(-2147483648)), false, 14994i), Struct_1(vec4<i32>(2147483647i, 0i, -11959i, 44570i), -34630i, vec3<i32>(-34476i, 2147483647i, -27004i), true, -22057i), Struct_1(vec4<i32>(30262i, 30306i, i32(-2147483648), 1868i), 2147483647i, vec3<i32>(2147483647i, 2147483647i, 5799i), true, 1i), Struct_1(vec4<i32>(-1i, i32(-2147483648), 1i, i32(-2147483648)), -10534i, vec3<i32>(13104i, -7454i, 2147483647i), false, 36580i), Struct_1(vec4<i32>(15557i, -7358i, -27334i, i32(-2147483648)), 1i, vec3<i32>(-53373i, -4481i, -62995i), true, i32(-2147483648)), Struct_1(vec4<i32>(-3970i, i32(-2147483648), 12855i, 41760i), 1i, vec3<i32>(33576i, -61837i, -9085i), true, -1i), Struct_1(vec4<i32>(28803i, i32(-2147483648), 0i, 0i), 0i, vec3<i32>(-47693i, 33590i, 43710i), true, i32(-2147483648)), Struct_1(vec4<i32>(-44210i, 0i, 2147483647i, -1i), 1556i, vec3<i32>(0i, 2147483647i, -16963i), false, -5405i), Struct_1(vec4<i32>(i32(-2147483648), 0i, -5405i, 2147483647i), 2147483647i, vec3<i32>(-23849i, -38398i, i32(-2147483648)), false, 2147483647i), Struct_1(vec4<i32>(-1i, 25805i, -55165i, 2147483647i), 20819i, vec3<i32>(i32(-2147483648), 55268i, 19947i), false, i32(-2147483648)), Struct_1(vec4<i32>(1i, -1i, 17636i, -22504i), -31406i, vec3<i32>(0i, 6001i, 1i), false, 1i), Struct_1(vec4<i32>(0i, 58536i, 15670i, 0i), 2147483647i, vec3<i32>(-45119i, 2147483647i, -17700i), true, 33466i), Struct_1(vec4<i32>(-1i, -1i, 17012i, i32(-2147483648)), -41420i, vec3<i32>(i32(-2147483648), 1i, 2147483647i), false, 2147483647i), Struct_1(vec4<i32>(-12808i, 0i, 7503i, -22649i), 1i, vec3<i32>(2147483647i, 1i, 1i), true, 22203i), Struct_1(vec4<i32>(i32(-2147483648), -1i, 20088i, -1i), -31883i, vec3<i32>(-3501i, 62677i, 0i), true, 0i));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.c.x, _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-18790i, global1.a.x, u_input.c.x, global1.a.x)), u_input.c)), firstTrailingBit(~_wgslsmith_mult_i32(8719i, global1.b) | _wgslsmith_mult_i32(~u_input.c.x, ~global1.a.x)), 2147483647i);
    var var_1 = 1237f;
    global1 = Struct_1(u_input.c, var_0.x, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, 9332i), firstLeadingBit(1i), i32(-1i) * -2147483647i), firstTrailingBit(-(vec3<i32>(global1.a.x, -2147483647i, -2147483647i) << (vec3<u32>(u_input.d.x, u_input.d.x, u_input.a.x) % vec3<u32>(32u))))), false, var_0.x);
    var var_2 = vec4<u32>(max(6694u, 1u), _wgslsmith_add_u32(u_input.b, (~u_input.a.x & _wgslsmith_mult_u32(1u, 0u)) & 0u), _wgslsmith_mod_u32(u_input.d.x & ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 40798u), 115759u);
    let var_3 = global4[_wgslsmith_index_u32(select(_wgslsmith_add_u32(max(abs(u_input.d.x), 0u), ~(u_input.d.x | ~u_input.b)), abs(u_input.a.x), global1.d), 27u)];
    return u_input.a.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    let var_0 = vec2<bool>(true, false);
    let var_1 = vec3<bool>(!any(vec4<bool>(arg_2, all(var_0), !global1.d, 35267u < u_input.a.x)), !global1.d, false);
    var var_2 = Struct_1(vec4<i32>(~(global1.b | 16080i), -34089i, -1i, global1.a.x), -65896i, vec3<i32>(1i, _wgslsmith_div_i32(-1i << (abs(u_input.b) % 32u), 1i), ~(~39010i | global1.a.x)), any(!vec2<bool>(global1.d, true)) || global1.d, global1.c.x);
    var var_3 = Struct_1(var_2.a, abs(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(16505i, 0i, -21997i), u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c.xyw, global1.c))), _wgslsmith_sub_vec3_i32(global1.a.wzx, ~max(global0[_wgslsmith_index_u32(u_input.b ^ 4294967295u, 20u)], ~vec3<i32>(-1i, var_2.e, -896i))), all(select(vec4<bool>(global1.d, true, !arg_2, true), select(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, false, false, var_2.d), vec4<bool>(var_0.x, true, arg_2, false)), !vec4<bool>(var_2.d, false, false, var_2.d), !vec4<bool>(true, global1.d, var_1.x, true)), vec4<bool>(var_2.d, false, all(vec4<bool>(false, var_1.x, true, var_0.x)), var_0.x))), ~(-min(30478i, var_2.e) & var_2.a.x));
    global0 = array<vec3<i32>, 20>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) - _wgslsmith_f_op_f32(-258f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))))) + -1243f);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = any(!(!select(vec2<bool>(true, false), select(vec2<bool>(false, arg_0.d), vec2<bool>(false, arg_0.d), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, global1.d), vec2<bool>(false, false)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-402f, -187f, -572f, -276f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(123f, 131f, -1502f, -289f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1384f, 1000f, -830f, 804f), vec4<f32>(390f, 1145f, -750f, 273f), vec4<bool>(var_0, var_0, arg_0.d, global1.d))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-165f, -1739f) * vec2<f32>(-770f, -205f))) - vec2<f32>(_wgslsmith_f_op_f32(394f - -940f), _wgslsmith_f_op_f32(-345f - -213f))), (select(global1.c.x, global1.a.x, false) >> (func_3(vec3<f32>(-349f, 227f, 286f)) % 32u)) != (reverseBits(-30802i) << (firstTrailingBit(u_input.b) % 32u))))));
    var var_2 = Struct_1(vec4<i32>(1641i, select(1i, arg_0.b, false), global1.b, arg_0.a.x) | min(vec4<i32>(-2147483647i, min(26561i, -2147483647i), firstLeadingBit(u_input.c.x), abs(2147483647i)), u_input.c), _wgslsmith_mod_i32(select(i32(-1i) * -2147483647i, 1250i >> (~u_input.a.x % 32u), all(!vec2<bool>(global1.d, true))), firstTrailingBit(2147483647i)), vec3<i32>(global1.a.x, global1.a.x, firstTrailingBit(arg_0.e)), ~(~u_input.a.x) != u_input.a.x, -5218i | countOneBits(firstLeadingBit(u_input.c.x) & 1i));
    global2 = array<vec3<bool>, 28>();
    global2 = array<vec3<bool>, 28>();
    return vec2<bool>(any(select(global2[_wgslsmith_index_u32(min(u_input.b, u_input.d.x), 28u)], !select(global2[_wgslsmith_index_u32(746u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)], true), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, arg_0.d))))), all(select(select(!vec4<bool>(var_2.d, var_2.d, arg_0.d, false), !vec4<bool>(true, arg_0.d, var_2.d, var_2.d), !vec4<bool>(arg_0.d, global1.d, false, global1.d)), vec4<bool>(-350f >= var_1, false, true, true), !select(vec4<bool>(arg_0.d, true, var_0, true), vec4<bool>(true, true, var_0, arg_0.d), vec4<bool>(false, global1.d, false, true)))));
}

fn func_1() -> vec3<i32> {
    let var_0 = select(vec2<bool>(false, false), select(select(select(vec2<bool>(true, true), !vec2<bool>(false, global1.d), vec2<bool>(true, true)), !vec2<bool>(global1.d, true), true), vec2<bool>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x) != u_input.c.x, true), !(!select(vec2<bool>(global1.d, false), vec2<bool>(global1.d, true), vec2<bool>(global1.d, false)))), !func_2(Struct_1(firstLeadingBit(vec4<i32>(-80388i, global1.e, 32049i, -1i)), -1i, -global0[_wgslsmith_index_u32(4294967295u, 20u)], !global1.d, _wgslsmith_sub_i32(-2147483647i, global1.b))));
    let var_1 = vec3<u32>(u_input.a.x, 0u << (_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(819f, 149f, -362f), vec3<f32>(601f, -374f, 325f), global2[_wgslsmith_index_u32(1u, 28u)])))) % 32u), (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 89215u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.b, 48135u)) & u_input.a.x) | _wgslsmith_sub_u32(func_3(vec3<f32>(339f, 1882f, -649f)), ~_wgslsmith_div_u32(1u, u_input.a.x)));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 1u, 0u, 42927u), vec4<u32>(u_input.a.x, 27555u, u_input.b, 1u))), min(reverseBits(~vec4<u32>(29710u, 1u, 22771u, var_1.x)), vec4<u32>(~68034u, ~u_input.d.x, ~0u, _wgslsmith_div_u32(u_input.b, var_1.x)))), ~1u ^ u_input.a.x);
    var var_3 = _wgslsmith_mult_vec4_i32(u_input.c, (select(~vec4<i32>(u_input.c.x, global1.a.x, u_input.c.x, 1i), _wgslsmith_mult_vec4_i32(global1.a, vec4<i32>(-1i, global1.b, global1.a.x, global1.c.x)), global1.d) >> ((firstTrailingBit(vec4<u32>(18346u, 1u, 52180u, 1u)) ^ reverseBits(vec4<u32>(var_1.x, var_1.x, 4294967295u, var_1.x))) % vec4<u32>(32u))) | ~u_input.c);
    global4 = array<Struct_1, 27>();
    return var_3.zxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(global1.a.x, 0i, -_wgslsmith_dot_vec2_i32(min(global3[_wgslsmith_index_u32(40047u, 5u)], vec2<i32>(2147483647i, u_input.c.x)), ~vec2<i32>(global1.e, -1i)), ~(-4103i)), i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), 2147483647i), -global0[_wgslsmith_index_u32(u_input.b, 20u)], !(!(!(!global1.d))), ~(~(-(-1i & u_input.c.x))));
    global4 = array<Struct_1, 27>();
    var var_1 = -507f;
    let var_2 = func_1();
    var var_3 = Struct_1(vec4<i32>(func_1().x, firstTrailingBit(_wgslsmith_add_i32(global1.b, 64544i)), -u_input.c.x, global1.e) << (~(firstTrailingBit(vec4<u32>(23316u, 1925u, 33839u, u_input.d.x)) | vec4<u32>(1u, 1u, 32614u, u_input.d.x)) % vec4<u32>(32u)), _wgslsmith_mod_i32(~4476i, min(37677i, _wgslsmith_mult_i32(global1.b, 44315i))), ~max(var_0.c, _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_0.b, var_0.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 20u)])) | func_1(), any(select(select(!vec3<bool>(true, global1.d, false), vec3<bool>(true, false, false), any(vec4<bool>(false, true, global1.d, true))), global2[_wgslsmith_index_u32(4294967295u, 28u)], var_0.d)), -((i32(-1i) * -29004i) | u_input.c.x));
    var var_4 = vec2<u32>(1u, u_input.b);
    let var_5 = _wgslsmith_add_vec2_u32(countOneBits(u_input.a >> (vec2<u32>(~var_4.x, var_4.x) % vec2<u32>(32u))), abs(~u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(20053u, 16957u, 0u), (select(reverseBits(vec2<u32>(var_5.x, 28939u)), _wgslsmith_mult_vec2_u32(u_input.a, u_input.d), vec2<bool>(true, true)) << (((vec2<u32>(58774u, var_5.x) & var_5) | (var_5 >> (u_input.a % vec2<u32>(32u)))) % vec2<u32>(32u))) >> ((~(vec2<u32>(31438u, var_5.x) >> (u_input.a % vec2<u32>(32u))) & ~(vec2<u32>(0u, 24617u) ^ u_input.d)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-201f, 1191f), 1f, -597f, _wgslsmith_f_op_f32(1000f - -119f)))), reverseBits(global1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -185f) - 827f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(trunc(-1454f)), global1.d)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1172f, -1000f)), _wgslsmith_div_f32(272f, -1736f))))));
}

