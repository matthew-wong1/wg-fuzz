struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = vec2<u32>(~(~4294967295u << (1u % 32u)), abs(u_input.c));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(762f, 1000f) * _wgslsmith_f_op_f32(1000f + -158f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-807f * 771f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(520f - 1000f))))), 1145f, select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(true, select(false, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(671f + -350f), -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-563f)))), -278f), 1i);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-276f, var_1.d)));
}

fn func_2() -> Struct_4 {
    global0 = array<vec2<f32>, 31>();
    var var_0 = Struct_3(Struct_2(Struct_1(-2496f, _wgslsmith_f_op_f32(f32(-1f) * -1147f), vec2<bool>(true, true), _wgslsmith_f_op_f32(1248f - _wgslsmith_f_op_f32(sign(-712f))), ~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-11628i, -1i))), 2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b.x, u_input.a.x), u_input.b.x) >> (1u % 32u), min(vec2<u32>(38868u, ~0u), vec2<u32>(~4294967295u, u_input.c))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(ceil(1938f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1335f, 764f, false)) + _wgslsmith_f_op_f32(799f - -270f)), vec2<bool>(true, true), 146f, min(u_input.a.x << (39646u % 32u), 2147483647i)), _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(u_input.b.x, -48025i, 44462i)), max(reverseBits(vec3<i32>(u_input.b.x, 1i, 0i)), -vec3<i32>(u_input.b.x, -2147483647i, u_input.a.x))), ~(-19250i), _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.c, 1u), firstTrailingBit(~vec2<u32>(1u, 49692u)))));
    var var_1 = Struct_4(!var_0.b.a.c.x, var_0.b);
    var var_2 = Struct_4(true, var_1.b);
    var_2 = Struct_4(any(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 19u)]), var_2.b);
    return Struct_4(select(true, any(select(vec3<bool>(false, var_0.b.a.c.x, var_1.b.a.c.x), global1[_wgslsmith_index_u32(var_0.b.d.x, 19u)], all(vec4<bool>(true, var_1.b.a.c.x, false, var_2.a)))), !all(var_1.b.a.c) & !var_0.a.a.c.x), Struct_2(var_0.b.a, -var_0.b.b, 2147483647i, select(vec2<u32>(var_1.b.d.x, var_1.b.d.x), abs(select(vec2<u32>(var_1.b.d.x, 4294967295u), vec2<u32>(0u, u_input.c), var_2.b.a.c)), var_1.b.a.c)));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_5(false, firstLeadingBit(abs(countOneBits(1i))));
    var var_1 = func_2();
    global1 = array<vec3<bool>, 19>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.a.a), _wgslsmith_f_op_f32(select(-861f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f) * _wgslsmith_f_op_f32(min(var_1.b.a.a, var_1.b.a.a))))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(151f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(460f * -175f))) - _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-var_1.b.a.a));
    global1 = array<vec3<bool>, 19>();
    return Struct_4(~u_input.c <= 33236u, Struct_2(var_1.b.a, ~(-10245i), countOneBits(var_1.b.c), vec2<u32>(abs(4294967295u), _wgslsmith_div_u32(abs(78052u), 32812u))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4) -> f32 {
    let var_0 = Struct_4(false, arg_1.b);
    let var_1 = arg_1.b.a.c;
    let var_2 = vec3<u32>(max(1411u, var_0.b.d.x), 10617u, 14400u);
    let var_3 = func_2();
    let var_4 = func_2().b.a;
    return _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1525f)))) * -243f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-738f, 1556f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-676f, 212f, -337f, 1324f))), func_1()))))), _wgslsmith_f_op_f32(-625f * -1784f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(201f - _wgslsmith_div_f32(471f, -309f)))));
    var var_1 = Struct_4(!(!func_1().b.a.c.x), func_1().b);
    var var_2 = vec3<i32>(countOneBits(var_1.b.a.e), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, u_input.a, u_input.b), countOneBits(vec2<i32>(1i, u_input.a.x))), u_input.b.x), -2147483647i), u_input.b.x);
    global0 = array<vec2<f32>, 31>();
    let var_3 = vec3<i32>(0i, var_1.b.a.e, u_input.b.x >> (u_input.c % 32u)) >> (vec3<u32>(_wgslsmith_sub_u32(~(~u_input.c), ~6215u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.d.x, 20369u, var_1.b.d.x, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, var_1.b.d.x))), reverseBits(var_1.b.d.x), 0u) % vec3<u32>(32u));
    let var_4 = ~(min(var_3.xz, u_input.a) ^ min(_wgslsmith_div_vec2_i32(vec2<i32>(-37706i, var_2.x), var_2.xz), ~u_input.a)) | (var_3.zx << ((_wgslsmith_mod_vec2_u32(var_1.b.d, ~var_1.b.d) ^ var_1.b.d) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-(var_3 | var_3), _wgslsmith_mult_vec3_i32(min(var_3, var_3), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, var_2.x, var_1.b.b), vec3<i32>(var_1.b.a.e, -44243i, u_input.b.x)))), (select(var_3, vec3<i32>(var_3.x, var_2.x, 1i), true) | _wgslsmith_add_vec3_i32(var_3, var_3)) << (firstTrailingBit(~vec3<u32>(u_input.c, 1u, 0u)) % vec3<u32>(32u))), -1076f, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c, var_1.b.d.x, u_input.c, var_1.b.d.x), abs(vec4<u32>(5691u, u_input.c, 0u, var_1.b.d.x)), !var_1.b.a.c.x) & reverseBits(abs(vec4<u32>(u_input.c, 0u, 4294967295u, 1u))), ~abs(vec4<u32>(0u, u_input.c, u_input.c, var_1.b.d.x)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, 1u, 2799u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, 5165u, 28939u), vec4<u32>(var_1.b.d.x, u_input.c, var_1.b.d.x, 80644u)), vec4<u32>(var_1.b.d.x, u_input.c, var_1.b.d.x, 54512u)) % vec4<u32>(32u))));
}

