struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16>;

var<private> global1: f32 = -829f;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<i32>(-1i, 1i, 13038i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -6261i)), Struct_1(vec3<i32>(-857i, 2147483647i, 0i)), Struct_1(vec3<i32>(-19918i, -1i, -50361i)), Struct_1(vec3<i32>(1i, -4255i, 0i)), Struct_1(vec3<i32>(6416i, 5441i, -20531i)), Struct_1(vec3<i32>(-1i, 1i, 1i)), Struct_1(vec3<i32>(1519i, 41239i, 2147483647i)), Struct_1(vec3<i32>(0i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, -49522i, 1i)), Struct_1(vec3<i32>(3441i, 2147483647i, 14384i)), Struct_1(vec3<i32>(-1i, 28133i, -1i)), Struct_1(vec3<i32>(0i, i32(-2147483648), 39159i)), Struct_1(vec3<i32>(-14918i, 1i, 18439i)));

var<private> global3: Struct_2;

var<private> global4: array<f32, 2> = array<f32, 2>(1000f, -1186f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: bool, arg_3: f32) -> vec3<u32> {
    global2 = array<Struct_1, 14>();
    global4 = array<f32, 2>();
    let var_0 = all(vec2<bool>(!any(vec4<bool>(arg_2, arg_2, true, global3.c.x)), false));
    var var_1 = Struct_2(global3.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(54305u, 2u)], arg_3))) * _wgslsmith_f_op_f32(-global3.b)))), global3.c, Struct_1(abs(_wgslsmith_div_vec3_i32(global3.a.a, vec3<i32>(global3.d.a.x, -2147483647i, u_input.a))) & countOneBits(abs(global3.a.a))));
    let var_2 = _wgslsmith_div_i32(-(~max(global3.d.a.x, 1i)), max(_wgslsmith_div_i32(arg_1, arg_0.x), arg_0.x >> (~select(19681u, 1u, false) % 32u)));
    return select((vec3<u32>(1u, ~3762u, ~1u) ^ select(global0[_wgslsmith_index_u32(~48909u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)] | global0[_wgslsmith_index_u32(0u, 16u)], select(global3.c, vec3<bool>(var_0, var_0, false), arg_2))) << (~(~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(41304u, 16u)], any(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, var_0, var_1.c.x, false), vec4<bool>(var_1.c.x, arg_2, false, var_1.c.x)), select(vec4<bool>(global3.c.x, true, arg_2, var_0), vec4<bool>(var_1.c.x, var_1.c.x, var_0, false), vec4<bool>(true, true, global3.c.x, var_1.c.x)), !vec4<bool>(var_1.c.x, true, false, false)), vec4<bool>(global3.a.a.x == 10401i, global3.c.x, var_1.c.x, true), !global3.c.x)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(func_3(vec2<i32>(33118i, -32567i), -(~(~u_input.b)), false, _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.a.x, 2u)]), global4[_wgslsmith_index_u32(~0u, 2u)]))), vec3<u32>(~39710u, firstLeadingBit(4294967295u), abs(~firstLeadingBit(0u))));
    var var_1 = global4[_wgslsmith_index_u32(var_0.x, 2u)];
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(firstLeadingBit(var_0.x), 14522u)), 2u)])) + _wgslsmith_f_op_f32(1000f * 449f));
    global3 = Struct_2(global2[_wgslsmith_index_u32(arg_0.a.x, 14u)], -1143f, !vec3<bool>(false, arg_1.x, true), global3.d);
    var var_2 = arg_0.b;
    return ~(~abs(~42895u));
}

fn func_1() -> vec3<u32> {
    let var_0 = ~max(1u, func_2(Struct_4(vec4<u32>(13210u, 14399u, 11320u, 4294967295u), vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 2u)], global4[_wgslsmith_index_u32(8901u, 2u)], 1000f, global4[_wgslsmith_index_u32(0u, 2u)])), select(global3.c.xx, global3.c.yx, global3.c.xx))) ^ 21650u;
    let var_1 = Struct_1(vec3<i32>(-12244i, -_wgslsmith_dot_vec3_i32(global3.d.a, global3.a.a), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 1i, -2147483647i, -1i), vec4<i32>(global3.d.a.x, global3.d.a.x, -66239i, 29067i)), firstLeadingBit(min(0i, u_input.b)))));
    global0 = array<vec3<u32>, 16>();
    let var_2 = Struct_4(_wgslsmith_div_vec4_u32(vec4<u32>(var_0 ^ var_0, abs(var_0), 1u, 14735u), _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0, 1u, var_0, 12661u), vec4<u32>(1u, var_0, var_0, var_0)), abs(select(vec4<u32>(4294967295u, var_0, var_0, var_0), vec4<u32>(var_0, 118489u, var_0, var_0), vec4<bool>(true, true, true, global3.c.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.b, 543f, global4[_wgslsmith_index_u32(1u, 2u)], 1116f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(var_0, 2u)], 1118f, global4[_wgslsmith_index_u32(4294967295u, 2u)], global3.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-342f, 892f, 140f, 661f))) * vec4<f32>(_wgslsmith_f_op_f32(-1246f - -147f), _wgslsmith_f_op_f32(f32(-1f) * -429f), global4[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_f_op_f32(-global3.b))))));
    let var_3 = Struct_2(Struct_1(var_1.a), var_2.b.x, !global3.c, Struct_1(vec3<i32>(max(-11427i, _wgslsmith_dot_vec4_i32(vec4<i32>(11458i, global3.a.a.x, global3.a.a.x, -24748i), vec4<i32>(var_1.a.x, -2147483647i, u_input.a, -1i))), firstTrailingBit(u_input.a), max(u_input.b, u_input.a))));
    return _wgslsmith_mod_vec3_u32(select(global0[_wgslsmith_index_u32(var_0, 16u)], _wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(~var_2.a.x, 16u)], vec3<u32>(var_2.a.x, 140418u, var_0)), true), global0[_wgslsmith_index_u32(var_0, 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1174f, 379f))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 2u)] * _wgslsmith_f_op_f32(-global3.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(48398u, 2u)]))))) * global3.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(670f, var_0))))), var_0, var_0));
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(func_1(), countOneBits(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(6415u, 16u)], vec3<u32>(49512u, 20321u, 8095u))) << (global0[_wgslsmith_index_u32(60063u << (~4294967295u % 32u), 16u)] % vec3<u32>(32u))), ~(~(~global0[_wgslsmith_index_u32(~0u, 16u)])));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-903f, var_0, -207f)))))))));
    let var_4 = var_2.x;
    var var_5 = Struct_4(~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4, 4294967295u, var_4, 0u), vec4<u32>(var_2.x, 0u, 120468u, var_2.x)), 1u, var_2.x, ~var_2.x), countOneBits(vec4<u32>(4294967295u, var_4, 24117u, 4294967295u) ^ vec4<u32>(var_4, var_4, var_2.x, 39470u))), vec4<f32>(global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2706f * _wgslsmith_f_op_f32(-var_0)) * -874f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-832f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_2.x, 2u)] + global4[_wgslsmith_index_u32(var_4, 2u)])) + _wgslsmith_div_f32(1f, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.x, 4294967295u), 2u)])), _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1157f, 962f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(var_5.a.x, 24939u, var_2.x), reverseBits(_wgslsmith_mod_u32(var_2.x, var_2.x)), ~var_4) & vec3<u32>(var_5.a.x, func_1().x, var_5.a.x << (var_2.x % 32u)), ~2147483647i, var_5.a.x, min(10433i, reverseBits(_wgslsmith_dot_vec2_i32(global3.a.a.yy, _wgslsmith_mult_vec2_i32(global3.a.a.yz, vec2<i32>(u_input.b, 39438i))))), vec4<f32>(1158f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-295f, _wgslsmith_f_op_f32(f32(-1f) * -752f))))), -463f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(sign(var_0))) * global4[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(9985u, 13669u), vec2<u32>(27246u, 16150u)), _wgslsmith_dot_vec2_u32(var_5.a.zx, var_5.a.yx)), 2u)])));
}

