struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(-20623i, -22898i, i32(-2147483648), 0i), vec4<i32>(-30742i, 1i, -23774i, -6567i), vec4<i32>(0i, 31876i, -10858i, 18367i), vec4<i32>(5790i, 2147483647i, 70191i, 0i), vec4<i32>(5469i, 2147483647i, -49124i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), 16386i, 3036i), vec4<i32>(-8934i, -25387i, 37023i, -36049i), vec4<i32>(1i, 22743i, 13230i, -24834i), vec4<i32>(-12229i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(5670i, -25627i, 37493i, 0i), vec4<i32>(-1i, 2147483647i, 2147483647i, 15765i), vec4<i32>(5585i, 0i, 0i, -1i), vec4<i32>(-26508i, i32(-2147483648), 0i, 1i), vec4<i32>(-56572i, 1i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), 45712i, -20650i, 2577i), vec4<i32>(24166i, -13916i, 1i, 0i), vec4<i32>(-20372i, -11988i, 11065i, -14294i), vec4<i32>(9460i, 0i, 0i, -1i), vec4<i32>(32792i, 20881i, 16888i, 1i), vec4<i32>(-1i, 1i, -23795i, -1i), vec4<i32>(-1i, 27888i, -13650i, -5970i), vec4<i32>(-1i, -1i, -12538i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 4205i, -1454i, 0i));

var<private> global1: Struct_1 = Struct_1(60749u, -105f, vec3<bool>(true, true, true), -14720i);

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_3, 27>;

var<private> global4: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<bool>) -> i32 {
    let var_0 = global4.d.xz;
    let var_1 = _wgslsmith_div_u32(13457u, _wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(firstTrailingBit(u_input.e), arg_1.d.a)));
    var var_2 = arg_1;
    let var_3 = arg_1;
    let var_4 = Struct_2(_wgslsmith_div_vec4_u32(abs(vec4<u32>(5407u, _wgslsmith_sub_u32(global4.b.a, 26762u), arg_0.a, _wgslsmith_mod_u32(arg_0.a, u_input.e))), _wgslsmith_clamp_vec4_u32(u_input.a, max(u_input.a, vec4<u32>(global1.a, 16088u, arg_1.d.a, global4.b.a)) & ~vec4<u32>(u_input.e, global1.a, var_1, 19036u), vec4<u32>(_wgslsmith_add_u32(4294967295u, arg_1.d.a), arg_0.a, firstTrailingBit(41959u), ~var_2.d.a))), var_3.d.d, Struct_1(global1.a, _wgslsmith_f_op_f32(trunc(arg_1.d.b)), vec3<bool>(!arg_1.a, any(select(vec3<bool>(global4.b.c.x, global2.x, global2.x), vec3<bool>(arg_2.x, var_3.a, true), global2.x)), !arg_2.x), arg_1.b.x), Struct_1(0u, _wgslsmith_f_op_f32(global1.b - -316f), !arg_1.d.c, -arg_0.d));
    return var_4.d.d;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = arg_1.x;
    var var_1 = Struct_2(vec4<u32>(~_wgslsmith_sub_u32(0u, ~arg_0.b.a), ~(~(~43587u)), ~arg_1.x, arg_1.x), -(arg_2.x >> ((22048u | _wgslsmith_mult_u32(global1.a, 13773u)) % 32u)), global4.b, Struct_1(~max(_wgslsmith_mod_u32(4294967295u, 10530u), 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(275f, arg_0.a))) - _wgslsmith_f_op_f32(abs(616f))), global4.b.c, -_wgslsmith_sub_i32(global1.d, _wgslsmith_clamp_i32(0i, arg_2.x, arg_0.d.x))));
    global1 = Struct_1(~_wgslsmith_add_u32(~(~arg_1.x), _wgslsmith_div_u32(1u, ~101764u)), _wgslsmith_f_op_f32(-2219f * var_1.c.b), select(global4.b.c, global2.zxz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1117f * 1879f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a + global1.b))), -func_3(global4.b, Struct_5(var_1.c.c.x, global0[_wgslsmith_index_u32(104119u, 23u)], false, arg_0.b), vec4<bool>(global4.b.c.x, global2.x, false, arg_0.b.c.x)) >> (~(~1u) % 32u));
    var var_2 = -2678f;
    var var_3 = -585f;
    return ~(var_0 | _wgslsmith_sub_u32(countOneBits(var_1.d.a), u_input.e & 22099u));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> vec4<bool> {
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(~(~1u), global1.a), u_input.e, ~(~global1.a) ^ firstTrailingBit(u_input.a.x));
    var var_1 = Struct_2((_wgslsmith_mod_vec4_u32(u_input.a, ~vec4<u32>(var_0.x, u_input.e, global1.a, global4.b.a)) >> ((countOneBits(u_input.a) << ((vec4<u32>(var_0.x, var_0.x, global4.b.a, 0u) << (vec4<u32>(28838u, global4.b.a, 0u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (firstLeadingBit(vec4<u32>(func_2(Struct_4(global1.b, Struct_1(global1.a, 323f, vec3<bool>(true, global1.c.x, arg_0), global4.d.x), global1.b, global4.d), vec2<u32>(u_input.a.x, 42981u), vec2<i32>(-2147483647i, arg_2)), var_0.x, 23506u >> (0u % 32u), ~var_0.x)) % vec4<u32>(32u)), arg_2, Struct_1(1u, global1.b, vec3<bool>(false || (u_input.c != global1.d), any(select(vec4<bool>(false, arg_1, true, global1.c.x), vec4<bool>(arg_1, global4.b.c.x, true, global1.c.x), vec4<bool>(arg_1, true, true, arg_0))), arg_0), _wgslsmith_div_i32(reverseBits(min(39078i, arg_2)), 0i)), global4.b);
    global0 = array<vec4<i32>, 23>();
    global2 = vec4<bool>(global2.x, select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * global4.b.b)) >= -636f, arg_1, !any(!vec3<bool>(false, false, arg_1))), global4.b.c.x, !(any(select(global1.c, vec3<bool>(arg_1, false, false), vec3<bool>(false, global2.x, true))) || !(!var_1.c.c.x)));
    global3 = array<Struct_3, 27>();
    return vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.d.b, _wgslsmith_div_f32(267f, 688f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b + global4.a), _wgslsmith_f_op_f32(769f * -696f))), !(!arg_0), firstLeadingBit(countOneBits(_wgslsmith_sub_u32(global1.a, var_1.d.a))) <= ~var_0.x, all(vec2<bool>(false, all(vec3<bool>(false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 23>();
    let var_0 = _wgslsmith_mult_u32(~(~_wgslsmith_sub_u32(64864u, 1u)), u_input.e) == ~40026u;
    global2 = select(!func_1(false, global1.c.x | (global1.b == global1.b), min(_wgslsmith_add_i32(u_input.c, -1i), global4.d.x)), vec4<bool>(false, true, any(select(global1.c, vec3<bool>(global1.c.x, false, false), true)), true), vec4<bool>(-24891i >= (2216i & u_input.c), false, global1.c.x != !any(vec3<bool>(true, global2.x, true)), all(!vec3<bool>(global1.c.x, global2.x, true))));
    let var_1 = ~max(min(firstLeadingBit(abs(global1.d)), 37075i), 24768i);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -616f))), _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-437f - _wgslsmith_div_f32(-1451f, global4.b.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.a), -377f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-326f * global4.b.b)))), 856f));
    let var_3 = vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-113f)) * global1.b) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(max(global4.b.b, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_1 | func_3(global4.b, Struct_5(false, u_input.d, var_3.x, Struct_1(global4.b.a, var_2.x, global2.yyy, global1.d)), select(vec4<bool>(global1.c.x, global2.x, var_0, true), vec4<bool>(true, global4.b.c.x, var_3.x, var_0), vec4<bool>(var_0, var_3.x, true, global1.c.x))), firstTrailingBit(-(i32(-1i) * -46194i)), abs(-global4.b.d)), u_input.e, global1.b);
}

