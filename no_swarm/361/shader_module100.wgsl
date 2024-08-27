struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = !arg_1;
    var_0 = arg_0.d.c;
    var var_1 = ~0u;
    var var_2 = arg_0.d.d.x;
    global0 = array<Struct_2, 28>();
    return _wgslsmith_f_op_f32(-arg_0.d.d.x);
}

fn func_3() -> vec3<bool> {
    global0 = array<Struct_2, 28>();
    var var_0 = Struct_1(((all(vec4<bool>(true, false, false, true)) && any(vec3<bool>(true, false, false))) || (~u_input.b > -u_input.a.x)) || true, countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 66106u), u_input.c)), firstTrailingBit(u_input.a.x) >= _wgslsmith_add_i32(select(max(-8874i, u_input.b), u_input.b << (u_input.c.x % 32u), true), firstLeadingBit(-2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-364f, -638f, -1000f, -152f))) + vec4<f32>(_wgslsmith_f_op_f32(141f - -649f), 750f, -772f, _wgslsmith_f_op_f32(f32(-1f) * -2257f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-412f, -691f, -681f, 1000f))))));
    global0 = array<Struct_2, 28>();
    var var_1 = _wgslsmith_dot_vec3_i32(select(firstLeadingBit(-(~vec3<i32>(u_input.a.x, u_input.b, u_input.a.x))), select(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -50969i, u_input.a.x), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.b)), vec3<i32>(-49235i, ~43364i, _wgslsmith_mult_i32(1i, u_input.a.x)), vec3<bool>(true, var_0.a, var_0.a)), vec3<bool>(var_0.c && !var_0.a, !all(vec4<bool>(false, var_0.a, var_0.a, false)), !any(vec2<bool>(false, true)))), max(vec3<i32>(~(~(-8429i)), u_input.a.x, u_input.b), -reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, 0i), vec3<i32>(-1i, u_input.a.x, u_input.b)))));
    let var_2 = vec3<i32>(firstTrailingBit(u_input.a.x), 2147483647i, 63862i);
    return select(!(!vec3<bool>(var_0.c, false, false)), !(!(!select(vec3<bool>(var_0.a, false, false), vec3<bool>(true, false, var_0.c), vec3<bool>(var_0.c, var_0.a, true)))), !vec3<bool>(true, var_0.a, var_0.c));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    var var_0 = Struct_1(u_input.c.x <= u_input.c.x, vec2<u32>(58624u, ~1u), ~abs(arg_0) < _wgslsmith_div_u32(26294u, ~13183u), _wgslsmith_f_op_vec4_f32(step(arg_1, arg_1)));
    var_0 = Struct_1(any(select(func_3(), !(!vec3<bool>(false, var_0.a, var_0.c)), false | (false & var_0.a))), abs(u_input.c), var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1849f, -846f, 1f, -1159f))));
    let var_1 = global0[_wgslsmith_index_u32(1u, 28u)];
    var_0 = var_1.b;
    let var_2 = _wgslsmith_mult_vec3_u32(~vec3<u32>(firstLeadingBit(u_input.c.x), ~u_input.c.x, 0u << (1u % 32u)) | vec3<u32>(7265u, _wgslsmith_mult_u32(1u, 60972u) | select(0u, arg_0, var_0.c), var_1.d.b.x), vec3<u32>(1u, _wgslsmith_sub_u32(arg_0, 111338u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(3032u, arg_0) << (vec2<u32>(u_input.c.x, var_0.b.x) % vec2<u32>(32u)), vec2<u32>(1u, u_input.c.x)), _wgslsmith_mod_vec2_u32(min(u_input.c, vec2<u32>(1u, arg_0)), ~vec2<u32>(0u, u_input.c.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, ~(~abs(vec2<u32>(u_input.c.x, u_input.c.x))), !(!(_wgslsmith_f_op_f32(round(1292f)) >= _wgslsmith_f_op_f32(f32(-1f) * -583f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(806f, _wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_div_f32(-101f, 922f), 1017f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(143f, -712f, 518f, 1000f), vec4<f32>(-490f, 623f, 409f, 1759f)))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], true)), _wgslsmith_f_op_f32(abs(-468f)), _wgslsmith_f_op_f32(1075f - 173f), _wgslsmith_f_op_f32(func_2(u_input.c.x, vec4<f32>(175f, 793f, 618f, -1189f), 6990i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(667f, -226f, -363f, 488f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1185f, 459f, -1951f, -1660f))))))));
    var var_1 = Struct_1(var_0.c, var_0.b | u_input.c, 59453u > ~_wgslsmith_mod_u32(abs(u_input.c.x), ~0u), _wgslsmith_f_op_vec4_f32(-var_0.d));
    var var_2 = -countOneBits(vec4<i32>(19070i, -11469i, u_input.a.x, ~(~u_input.a.x)));
    let var_3 = Struct_1(var_1.c, var_1.b, any(func_3()), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_div_f32(var_0.d.x, 1161f))), _wgslsmith_f_op_f32(1000f - -1859f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_div_f32(325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-317f))))));
    var_2 = ~vec4<i32>(_wgslsmith_sub_i32(-43458i, ~(~u_input.b)), min(var_2.x, -2147483647i & _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, 2147483647i)), -firstTrailingBit(2147483647i) & min(_wgslsmith_mod_i32(var_2.x, var_2.x), ~1i), -min(select(1i, 2147483647i, true), reverseBits(2147483647i)));
    let var_4 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -104f), var_0.d.x, all(vec4<bool>(false, false, var_0.a, var_0.a))))) <= _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_u32(var_3.b.x, ~61111u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-116f, -888f, var_0.d.x, 770f))), u_input.b)), var_0.a, false, false);
    let var_5 = false;
    var_2 = ~abs(abs(~vec4<i32>(u_input.a.x, var_2.x, 12089i, u_input.b))) | vec4<i32>(24304i, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b, u_input.b, u_input.a.x, -7325i), vec4<i32>(_wgslsmith_div_i32(var_2.x, var_2.x), u_input.a.x, var_2.x << (u_input.c.x % 32u), -2147483647i)), ~0i, var_2.x);
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_6.b.x, _wgslsmith_clamp_u32(4294967295u, 1u, 144532u), var_6.b.x), ~min(max(vec4<u32>(48664u, var_6.b.x, var_1.b.x, 48519u), vec4<u32>(var_6.b.x, var_3.b.x, 1u, var_0.b.x)) ^ ~vec4<u32>(u_input.c.x, 17973u, 24637u, var_0.b.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_6.b.x, u_input.c.x, var_1.b.x, 17300u), vec4<u32>(0u, 83912u, 10583u, 4294967295u))), 4294967295u, vec4<u32>(14222u, _wgslsmith_sub_u32(select(_wgslsmith_sub_u32(var_0.b.x, u_input.c.x), 4889u, !var_6.a), abs(var_3.b.x << (var_3.b.x % 32u))), 4294967295u, u_input.c.x), 23708u);
}

