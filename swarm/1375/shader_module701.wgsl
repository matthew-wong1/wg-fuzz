struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

var<private> global1: array<f32, 8> = array<f32, 8>(-280f, -1198f, -466f, 768f, 2166f, -158f, 1338f, -1413f);

var<private> global2: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(1i, 6706i, -1i, -28047i), vec4<i32>(-1i, 33627i, 16826i, 63229i), vec4<i32>(2147483647i, -3176i, -39945i, 1i), vec4<i32>(14003i, -56660i, -6403i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, -26606i, -24359i), vec4<i32>(-29964i, -1i, -1i, -43773i), vec4<i32>(2147483647i, -50270i, 31296i, 32992i), vec4<i32>(34251i, -7402i, 1i, -20835i), vec4<i32>(-8568i, 41118i, -19740i, 2147483647i), vec4<i32>(32901i, -28581i, 22945i, -51158i), vec4<i32>(10945i, 1i, 36344i, 19321i), vec4<i32>(-35347i, i32(-2147483648), 1i, 14839i), vec4<i32>(0i, -46897i, 1i, 58950i), vec4<i32>(28074i, 34788i, 12877i, 15914i), vec4<i32>(i32(-2147483648), -34653i, i32(-2147483648), -1i), vec4<i32>(-39503i, -34501i, 0i, -44122i));

var<private> global3: vec3<f32> = vec3<f32>(-135f, -281f, 419f);

var<private> global4: f32 = -742f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(-max(vec3<i32>(1i, -1i, 1i), min(vec3<i32>(-2147483647i, -6338i, 2147483647i), vec3<i32>(1i, 12720i, -2147483647i))), vec2<bool>(true, false), reverseBits(select(~48066u, 10853u, true))));
    return _wgslsmith_div_u32(abs(~var_0.a.c), 0u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, 214f))), false, 175f <= global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~u_input.a, ~56527u), 8u)]);
    let var_1 = Struct_4(-1000f, _wgslsmith_mult_u32(~func_3(), u_input.a) > ~u_input.a, false);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), 650f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1444f)), 1125f))));
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(countOneBits(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 42728u))), select(vec3<u32>(u_input.a, 18429u, 4294967295u) | vec3<u32>(u_input.a, u_input.a, u_input.a), countOneBits(vec3<u32>(10133u, 0u, 0u)), !global0[_wgslsmith_index_u32(u_input.a, 24u)]))), ~max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 10272u)), vec2<u32>(0u, 0u)) | vec2<u32>(~u_input.a, countOneBits(1u)));
    var var_4 = 16766u;
    return Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(26457i, arg_0, 0i) & _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -1i, -2147483647i), vec3<i32>(arg_0, -657i, 0i)), vec3<i32>(~40385i, arg_0, arg_0)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_0, arg_0), vec3<i32>(arg_0, arg_0, arg_0)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -8763i, -26623i), vec3<i32>(-568i, arg_0, 0i), vec3<i32>(arg_0, arg_0, arg_0)), vec3<i32>(i32(-1i) * -2147483647i, 46522i, arg_0), (vec3<i32>(arg_0, -58212i, arg_0) & vec3<i32>(arg_0, arg_0, -2147483647i)) >> (max(vec3<u32>(u_input.a, 59394u, 4294967295u), vec3<u32>(var_3.x, 1u, var_3.x)) % vec3<u32>(32u)))), vec2<bool>(true, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, var_0.b), vec2<bool>(false, true)), true))), _wgslsmith_mod_u32(9633u, ~(~_wgslsmith_clamp_u32(u_input.a, var_3.x, var_3.x))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(func_2(1i));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(sign(-1328f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f * global1[_wgslsmith_index_u32(var_0.a.c, 8u)]) * _wgslsmith_f_op_f32(f32(-1f) * -418f)), any(vec3<bool>(false, true, arg_0.b.x)))) - _wgslsmith_f_op_f32(global3.x - global1[_wgslsmith_index_u32(13285u, 8u)])), true | (!all(vec4<bool>(var_0.a.b.x, arg_0.b.x, true, true)) || any(!vec3<bool>(var_0.a.b.x, arg_0.b.x, true))), arg_0.b.x);
    let var_2 = 1u;
    let var_3 = Struct_2(arg_0);
    let var_4 = vec2<bool>(false && all(arg_0.b), var_0.a.b.x);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-164f, 511f, global3.x))) + vec3<f32>(global3.x, global3.x, -110f)), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(84132u, 8u)]), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(1861f - global1[_wgslsmith_index_u32(35727u, 8u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(31052u, 8u)], global3.x, global3.x) + vec3<f32>(354f, global1[_wgslsmith_index_u32(u_input.a, 8u)], 110f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1000f, -278f) + vec3<f32>(1015f, global1[_wgslsmith_index_u32(1u, 8u)], -1000f)), any(vec3<bool>(true, true, false))))))));
    var var_0 = -1i;
    global1 = array<f32, 8>();
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2022f, global1[_wgslsmith_index_u32(96278u, 8u)], 929f)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1395f, _wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(-1i, -9661i, 0i), vec2<bool>(true, false), u_input.a))), global1[_wgslsmith_index_u32(firstTrailingBit(50579u), 8u)])))));
    var_0 = 6394i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(1i, 22476i, 2147483647i), vec2<bool>(true, false), u_input.a)))) + global1[_wgslsmith_index_u32(u_input.a << (((u_input.a >> (u_input.a % 32u)) ^ func_3()) % 32u), 8u)]));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<u32>(u_input.a, ~46993u, 0u, ~((4294967295u & u_input.a) << (firstLeadingBit(u_input.a) % 32u))), vec2<f32>(global3.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 8u)] * _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -211f)))), max(func_2(~(2147483647i >> (u_input.a % 32u))).a, _wgslsmith_sub_vec3_i32(vec3<i32>(-15356i, 1i, 1i), -firstTrailingBit(vec3<i32>(2147483647i, 1i, 23312i)))));
}

