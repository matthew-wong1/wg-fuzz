struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<vec4<bool>, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = select(_wgslsmith_dot_vec2_i32(arg_1.c, arg_1.c), arg_1.a, 200f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2827f) * _wgslsmith_f_op_f32(-arg_0.x)));
    global0 = array<Struct_2, 16>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, ~54632u, firstTrailingBit(4294967295u) ^ u_input.a), 16u)];
    var var_2 = arg_0.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), -1228f, var_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1041f + 1236f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.b.x, _wgslsmith_f_op_f32(1446f - 1272f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -905f, 1134f, arg_1.b.x))))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1288f, 201f))), 771f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-2032f, _wgslsmith_f_op_f32(721f + -637f))), _wgslsmith_f_op_f32(abs(1f)), !(!var_1.d.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -385f)));
    return arg_1.d.a.zy;
}

fn func_4(arg_0: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_mod_vec2_i32(~select(vec2<i32>(i32(-1i) * -2147483647i, abs(16498i)), vec2<i32>(21430i, ~1i), vec2<bool>(!arg_0.x, true)), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-10721i, 32525i, 2147483647i), vec3<i32>(-1i, 1i, 0i)), _wgslsmith_add_i32(-1i, 1i)) << (vec2<u32>(4294967295u, 38755u >> (u_input.a % 32u)) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(u_input.a, ~u_input.a, abs(u_input.a)) >> (_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(u_input.a, 89471u, 4294967295u)), countOneBits(vec3<u32>(3946u, 4294967295u, 4294967295u)), false), ~vec3<u32>(u_input.a, u_input.a, 87443u)) % 32u), 1u, abs(u_input.a));
    global0 = array<Struct_2, 16>();
    let var_2 = global0[_wgslsmith_index_u32(var_1, 16u)];
    let var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(~1u), 16u)];
    return var_0.x;
}

fn func_2() -> f32 {
    let var_0 = ~vec3<i32>(-25404i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-46960i, 54385i), vec2<i32>(7085i, -3486i)), ~vec2<i32>(2147483647i, -1i)), 2147483647i), func_4(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), func_3(vec3<f32>(-473f, 736f, -240f), Struct_2(0i, vec2<f32>(931f, -1025f), vec2<i32>(0i, 349i), Struct_1(vec3<bool>(true, true, false), 6743u, 53528u, vec2<u32>(0u, 80597u)), vec2<i32>(-491i, -1i))), true)));
    let var_1 = reverseBits(-1i);
    let var_2 = -1i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), -501f, 362f))));
    global0 = array<Struct_2, 16>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-879f, _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - var_3.x)) - _wgslsmith_f_op_f32(round(var_3.x))))));
}

fn func_1() -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(929f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(f32(-1f) * -322f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(369f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, _wgslsmith_f_op_f32(-550f - -771f), _wgslsmith_f_op_f32(var_0.x - -1529f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-393f - -1442f), var_1.x)))), 630f, var_1.x, -748f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.xz)));
    global0 = array<Struct_2, 16>();
    return _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -42936i), vec2<i32>(35992i, 0i), vec2<i32>(-56160i, 2147483647i)), reverseBits(vec2<i32>(12013i, -2147483647i)))), 432i), countOneBits(~(-(~vec2<i32>(0i, -9691i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, ~16502u), abs(_wgslsmith_dot_vec2_u32(max(vec2<u32>(2934u, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 2224u))) ^ ~(~0u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1223f)), 882f, -249f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_2 = ~_wgslsmith_add_vec2_i32(select(_wgslsmith_sub_vec2_i32(~vec2<i32>(32511i, -1i), ~vec2<i32>(0i, -2147483647i)), func_1(), true), ~(~vec2<i32>(1i, 1i)));
    var var_3 = Struct_1(vec3<bool>(true, true, true), 4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(39364u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 53658u, var_0, 4294967295u), vec4<u32>(4294967295u, u_input.a, u_input.a, var_0)) ^ _wgslsmith_sub_u32(32159u, u_input.a)) << (((max(6396u, 25397u) << (1u % 32u)) | var_0) % 32u), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 57113u) | vec2<u32>(var_0, u_input.a), select(vec2<u32>(4294967295u, var_0), vec2<u32>(var_0, u_input.a), vec2<bool>(false, true)))));
    var var_4 = ~(~(~max(vec4<u32>(u_input.a, 4294967295u, var_0, 22968u), ~vec4<u32>(9660u, u_input.a, 4294967295u, var_0))));
    let var_5 = vec4<bool>(true, !var_3.a.x, select(!select(false, true, var_3.a.x & true), true, select(u_input.a != var_0, all(var_3.a.zx), true) && all(var_3.a.yz)), _wgslsmith_f_op_f32(floor(-1115f)) <= _wgslsmith_f_op_f32(abs(var_1.x)));
    let var_6 = Struct_1(!var_3.a, (1u >> (_wgslsmith_div_u32(var_0 | var_4.x, max(var_3.c, u_input.a)) % 32u)) ^ ~52508u, 4294967295u, select(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, var_3.d.x)), vec2<u32>(~4294967295u, ~26848u), var_4.xy), var_4.xz, true));
    let var_7 = ~(~(~var_6.d) & reverseBits(vec2<u32>(90695u, _wgslsmith_clamp_u32(1u, 0u, 0u))));
    let var_8 = global0[_wgslsmith_index_u32(u_input.a, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_8.c.x);
}

