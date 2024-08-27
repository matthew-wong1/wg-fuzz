struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<u32>(0u, 13057u), vec2<u32>(0u, 49382u)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(29341u, 0u)), Struct_1(vec2<u32>(26537u, 0u), vec2<u32>(41127u, 68426u)), Struct_1(vec2<u32>(0u, 4294967295u), vec2<u32>(12333u, 1u)), Struct_1(vec2<u32>(63472u, 0u), vec2<u32>(21089u, 1u)), Struct_1(vec2<u32>(0u, 59430u), vec2<u32>(34981u, 0u)), Struct_1(vec2<u32>(4294967295u, 73635u), vec2<u32>(4294967295u, 47812u)), Struct_1(vec2<u32>(0u, 1u), vec2<u32>(79541u, 15263u)), Struct_1(vec2<u32>(0u, 55609u), vec2<u32>(33772u, 22286u)), Struct_1(vec2<u32>(0u, 35401u), vec2<u32>(1u, 17348u)), Struct_1(vec2<u32>(59509u, 44832u), vec2<u32>(103631u, 0u)), Struct_1(vec2<u32>(4294967295u, 12866u), vec2<u32>(4294967295u, 19237u)), Struct_1(vec2<u32>(1u, 4294967295u), vec2<u32>(16930u, 0u)), Struct_1(vec2<u32>(1u, 2265u), vec2<u32>(4294967295u, 8850u)), Struct_1(vec2<u32>(1u, 89049u), vec2<u32>(40911u, 0u)), Struct_1(vec2<u32>(55819u, 1u), vec2<u32>(0u, 68385u)), Struct_1(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 25250u)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(25824u, 4552u)), Struct_1(vec2<u32>(5779u, 1u), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(0u, 1u), vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(1u, 61386u), vec2<u32>(52735u, 10954u)), Struct_1(vec2<u32>(44871u, 1u), vec2<u32>(11858u, 1u)), Struct_1(vec2<u32>(0u, 51536u), vec2<u32>(41340u, 1u)), Struct_1(vec2<u32>(27172u, 0u), vec2<u32>(70660u, 9186u)), Struct_1(vec2<u32>(36320u, 40268u), vec2<u32>(88402u, 0u)), Struct_1(vec2<u32>(11983u, 30231u), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(1u, 1855u), vec2<u32>(1u, 13470u)), Struct_1(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 13153u)), Struct_1(vec2<u32>(1u, 4294967295u), vec2<u32>(11508u, 0u)), Struct_1(vec2<u32>(1u, 20927u), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(16485u, 49289u), vec2<u32>(49428u, 67628u)), Struct_1(vec2<u32>(0u, 10785u), vec2<u32>(1u, 4294967295u)));

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global1 = array<Struct_1, 32>();
    var var_0 = arg_0;
    global2 = array<Struct_2, 26>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(abs(-2573f)))), arg_1.c.x, 1000f, -440f);
    var var_2 = all(select(vec3<bool>(true, true, arg_2.e.x <= arg_2.e.x), vec3<bool>(true, false, true), global3[_wgslsmith_index_u32(arg_2.d, 7u)])) | any(vec2<bool>(true, true));
    return -521f;
}

fn func_2() -> vec3<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(~36983u, 26u)], global2[_wgslsmith_index_u32(~0u, 26u)], global2[_wgslsmith_index_u32(~1u, 26u)])), _wgslsmith_div_f32(-335f, 1938f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1371f, -819f, true)), -220f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-448f, _wgslsmith_f_op_f32(f32(-1f) * -598f))))), 1000f);
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(4294967295u, 32u)], min(vec4<i32>(_wgslsmith_add_i32(abs(-2147483647i), u_input.a & u_input.a), -(2982i << (1u % 32u)), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, -15184i), u_input.a), ~u_input.a), vec4<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), u_input.a, u_input.a, _wgslsmith_mod_i32(u_input.a, firstTrailingBit(-1i)))), var_0.zz, 4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(-1160f))), -1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-834f, -1408f)))));
    global2 = array<Struct_2, 26>();
    global1 = array<Struct_1, 32>();
    global2 = array<Struct_2, 26>();
    return _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.b.x, var_1.d, firstTrailingBit(1u)), ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(56872u, 0u, 8317u)), select(vec3<u32>(var_1.d, 27503u, var_1.d) << (vec3<u32>(var_1.d, var_1.a.b.x, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(32092u, 4294967295u, var_1.a.b.x), true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = ~func_2();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(771f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-921f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(972f + -965f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(122f * -190f), -615f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(256f + 862f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-249f, 1544f))))), _wgslsmith_f_op_f32(abs(1000f)));
    global2 = array<Struct_2, 26>();
    var var_2 = firstTrailingBit(u_input.a);
    global0 = countOneBits(~_wgslsmith_mod_u32(firstLeadingBit(firstTrailingBit(var_0.x)), 0u));
    return 44248u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~1u;
    var var_0 = 62295u;
    let var_1 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(~28861u, 1u) >> (vec2<u32>(81837u, _wgslsmith_clamp_u32(8803u, 0u, 1u)) % vec2<u32>(32u)), vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(abs(~vec2<u32>(1733u, 1u)), vec2<u32>(abs(1u), 49747u)), ~vec2<u32>(31089u, 4294967295u), ~min(firstLeadingBit(vec2<u32>(4294967295u, 96484u)), select(vec2<u32>(0u, 32785u), vec2<u32>(1u, 14923u), true))));
    global3 = array<vec3<bool>, 7>();
    global1 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(func_1(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.x, var_1.b.x, var_1.b.x), vec3<u32>(81511u, var_1.b.x, var_1.b.x)) >> ((vec3<u32>(var_1.a.x, 0u, 1u) ^ vec3<u32>(var_1.a.x, var_1.b.x, var_1.a.x)) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(~(~4294967295u), 32u)])), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1244f, 269f), vec3<f32>(128f, 1018f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, -1298f, 788f)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-2170f)), -1656f, _wgslsmith_f_op_f32(f32(-1f) * -495f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1254f + 1089f), _wgslsmith_f_op_f32(round(254f)), _wgslsmith_f_op_f32(ceil(-609f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(653f, _wgslsmith_f_op_f32(step(1527f, 371f))), _wgslsmith_f_op_f32(min(548f, _wgslsmith_f_op_f32(102f * 880f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(var_1.a.x, 26u)], Struct_2(Struct_1(var_1.a, vec2<u32>(20141u, var_1.a.x)), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec2<f32>(-380f, -1257f), 1u, vec2<f32>(870f, 1519f)), global2[_wgslsmith_index_u32(42924u, 26u)])), _wgslsmith_f_op_f32(999f * 1182f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-897f, -507f), vec2<f32>(1000f, -357f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1829f, 300f, false)), 629f)))));
}

