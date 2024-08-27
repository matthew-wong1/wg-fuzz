struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec4<bool>(false, true, false, true), vec2<i32>(-34953i, 7098i), vec2<f32>(-1008f, 1000f));

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(1u, 0u, 1u), vec3<u32>(16130u, 0u, 12265u), vec3<u32>(23276u, 1u, 47106u), vec3<u32>(4294967295u, 83159u, 0u), vec3<u32>(1u, 4052u, 0u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(85066u, 0u, 0u));

var<private> global3: array<u32, 23> = array<u32, 23>(7173u, 1u, 4294967295u, 4294967295u, 45681u, 0u, 55222u, 1u, 0u, 1u, 6955u, 1u, 4178u, 4294967295u, 1u, 12026u, 1u, 4294967295u, 1u, 4294967295u, 1u, 22803u, 0u);

var<private> global4: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-176i, -15851i, 2147483647i), vec3<i32>(i32(-2147483648), -94173i, -68551i), vec3<i32>(10509i, 23207i, 0i), vec3<i32>(i32(-2147483648), 4679i, 7788i), vec3<i32>(-17166i, 1i, -15110i), vec3<i32>(-72537i, 7640i, -1i), vec3<i32>(i32(-2147483648), 45743i, -1i), vec3<i32>(2147483647i, 1985i, 2147483647i), vec3<i32>(-10723i, i32(-2147483648), 2147483647i), vec3<i32>(21898i, -1i, -20110i), vec3<i32>(-4669i, 23635i, 2147483647i), vec3<i32>(19597i, 2147483647i, 32029i), vec3<i32>(-7384i, -23226i, 24935i), vec3<i32>(2147483647i, 1i, -59562i), vec3<i32>(1i, -17497i, -13856i), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(-47452i, -1i, 1i), vec3<i32>(44571i, 38620i, -19596i), vec3<i32>(1i, 0i, -26796i), vec3<i32>(-63978i, 9778i, -32697i), vec3<i32>(3391i, -37378i, -1i), vec3<i32>(1211i, 2147483647i, 1i), vec3<i32>(-25142i, 4356i, -1i), vec3<i32>(22533i, 2147483647i, 49310i), vec3<i32>(i32(-2147483648), -61091i, i32(-2147483648)), vec3<i32>(2147483647i, 79599i, i32(-2147483648)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = select(vec4<i32>(-2147483647i, arg_0.a | _wgslsmith_mod_i32(global0.c.x, global0.c.x), firstLeadingBit(global1.x) | 1i, ~(~(-55505i << (u_input.a % 32u)))), _wgslsmith_div_vec4_i32(~(~firstLeadingBit(vec4<i32>(-2147483647i, global1.x, 21793i, -52745i))), reverseBits(vec4<i32>(~(-55479i), global1.x << (42625u % 32u), -2147483647i, arg_0.c.c.x))), global0.b.x);
    global1 = global4[_wgslsmith_index_u32(1u, 26u)] >> (_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 4294967295u), 23u)], ~max(global3[_wgslsmith_index_u32(77988u, 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.b.a, 23u)], 23u)]), global0.a), 7u)], global2[_wgslsmith_index_u32(0u, 7u)] ^ (~vec3<u32>(arg_0.b.a, 33549u, global0.a) | ~vec3<u32>(arg_0.b.a, global0.a, arg_0.c.a))) % vec3<u32>(32u));
    let var_1 = min(vec4<u32>((~arg_0.c.a & 1u) ^ _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 40865u), vec2<u32>(arg_0.c.a, global0.a))), 11177u, 35594u, 1u), (min(vec4<u32>(0u, 1u, 61816u, global3[_wgslsmith_index_u32(4294967295u, 23u)]), firstLeadingBit(vec4<u32>(u_input.a, 11112u, 62221u, arg_0.c.a))) & vec4<u32>(_wgslsmith_clamp_u32(90484u, 31549u, global3[_wgslsmith_index_u32(u_input.b, 23u)]), 45982u, 4294967295u, _wgslsmith_mult_u32(11141u, 0u))) & ~(~max(vec4<u32>(global0.a, global3[_wgslsmith_index_u32(13971u, 23u)], 8139u, 64335u), vec4<u32>(38866u, 99304u, global3[_wgslsmith_index_u32(1u, 23u)], u_input.b))));
    return firstLeadingBit(43940u);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: i32, arg_3: u32) -> vec2<i32> {
    var var_0 = func_3(Struct_2(~global0.c.x, Struct_1(85031u, vec4<bool>(all(vec4<bool>(true, global0.b.x, false, global0.b.x)), global0.b.x, global0.b.x, !global0.b.x), vec2<i32>(0i, 0i), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1443f, global0.d.x), vec2<f32>(-1000f, -508f)))), Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(arg_3, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)])), 23u)], vec4<bool>(false, any(global0.b.xzw), global0.b.x, false), global0.c, vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-419f - arg_0)))));
    let var_1 = Struct_2(1i, Struct_1(1u, !(!select(vec4<bool>(global0.b.x, false, true, false), vec4<bool>(global0.b.x, false, global0.b.x, false), vec4<bool>(false, false, global0.b.x, false))), ~vec2<i32>(~(-3586i), -15091i), arg_1.xy), Struct_1(40839u, select(!select(vec4<bool>(false, false, global0.b.x, true), vec4<bool>(true, global0.b.x, global0.b.x, true), global0.b), global0.b, !(!vec4<bool>(false, false, global0.b.x, true))), -select(min(vec2<i32>(-42983i, global1.x), vec2<i32>(-1i, arg_2)), vec2<i32>(global1.x, arg_2), global0.b.xx), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_div_f32(-662f, _wgslsmith_f_op_f32(-arg_1.x)))));
    var var_2 = 29698u;
    global0 = var_1.b;
    global3 = array<u32, 23>();
    return -(_wgslsmith_sub_vec2_i32(vec2<i32>(select(2147483647i, -33324i, var_1.b.b.x), _wgslsmith_div_i32(arg_2, -2147483647i)), vec2<i32>(arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(13628i, 0i, global0.c.x, global0.c.x), vec4<i32>(global0.c.x, var_1.a, arg_2, 0i)))) ^ -vec2<i32>(_wgslsmith_div_i32(-24782i, var_1.c.c.x), select(-35492i, arg_2, false)));
}

fn func_4(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(~u_input.a, 41764u), select(select(global0.b, global0.b, false), select(vec4<bool>(true, true, false, all(vec2<bool>(false, false))), select(!global0.b, vec4<bool>(true, true, false, global0.b.x), true), select(global0.b, global0.b, select(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), vec4<bool>(false, true, true, global0.b.x), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2538f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(597f, global0.d.x)) - _wgslsmith_div_f32(global0.d.x, -278f))), -(~global0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d + global0.d)));
    global4 = array<vec3<i32>, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-183f, 118f, 783f) - vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, -204f, -374f) + vec3<f32>(-307f, global0.d.x, -1000f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(699f, 1000f, var_0.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-507f, var_0.d.x, var_0.d.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(1352f, global0.d.x, -276f), vec3<f32>(var_0.d.x, -178f, -423f))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.d.x)))), global0.d.x, -1084f))));
    global4 = array<vec3<i32>, 26>();
    var var_2 = select(select(select(vec4<bool>(true, var_0.b.x, true, !global0.b.x), vec4<bool>(true, !global0.b.x, any(global0.b), all(global0.b)), any(select(global0.b, var_0.b, var_0.b.x))), !select(!vec4<bool>(global0.b.x, global0.b.x, true, false), global0.b, all(global0.b)), var_0.b), !select(!vec4<bool>(var_0.b.x, global0.b.x, var_0.b.x, global0.b.x), vec4<bool>(true & global0.b.x, 1i <= global0.c.x, any(var_0.b), false), global0.b), var_0.b);
    return Struct_2(~(~(~global1.x)) ^ ~_wgslsmith_mult_i32(2147483647i | global1.x, i32(-1i) * -40083i), Struct_1(1u, select(select(!var_0.b, select(vec4<bool>(true, false, false, true), var_0.b, global0.b), select(false, global0.b.x, false)), select(select(global0.b, vec4<bool>(var_0.b.x, var_2.x, var_2.x, var_2.x), true), vec4<bool>(true, false, var_2.x, true), !vec4<bool>(var_0.b.x, var_2.x, false, global0.b.x)), global0.b.x), global1.zx, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -993f))), _wgslsmith_f_op_f32(select(-1816f, _wgslsmith_f_op_f32(f32(-1f) * -481f), false && var_2.x)))), Struct_1(_wgslsmith_add_u32(1u, 18862u), vec4<bool>(true, var_2.x, var_0.b.x, global0.b.x), var_0.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1636f, 958f), _wgslsmith_f_op_vec2_f32(floor(var_1.yz))))))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    return func_4(abs(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(214f * global0.d.x) + _wgslsmith_f_op_f32(step(arg_0.x, global0.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, -218f, 1054f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, global0.d.x, global0.d.x)))), global1.x, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.d)));
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(102f, _wgslsmith_f_op_f32(floor(1504f))))))));
    global1 = countOneBits(~countOneBits(global4[_wgslsmith_index_u32(max(87892u, ~0u), 26u)]));
    var var_2 = func_1(global0.d).c;
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.d), var_2.d))))).c.b.zx;
    global0 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))).b;
    var var_4 = 425f;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_0).b.c.x, vec3<i32>(var_2.c.x, -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global1.x, -12367i, 15626i), global4[_wgslsmith_index_u32(1u, 26u)])) << (vec3<u32>(global3[_wgslsmith_index_u32(var_2.a, 23u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(14032u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)], 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c.a, global0.a, global3[_wgslsmith_index_u32(38417u, 23u)], global0.a), vec4<u32>(4294967295u, 114240u, u_input.b, 27573u))), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(37566u, u_input.a)), ~vec2<u32>(var_2.a, 79379u))) % vec3<u32>(32u)));
}

