struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(18817i), Struct_2(35437i), Struct_2(-25753i), Struct_2(56792i), Struct_2(1i), Struct_2(14511i), Struct_2(2872i), Struct_2(55176i), Struct_2(72227i), Struct_2(i32(-2147483648)), Struct_2(-23071i), Struct_2(34009i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_2, 12>();
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1097f, -268f, arg_3.a.x) + vec3<f32>(-660f, arg_3.a.x, arg_3.a.x)) - arg_3.a)), arg_3.a), vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_3.b), vec2<i32>(-1i) * -vec2<i32>(-1i, arg_0)), arg_0 >> (arg_3.c.x % 32u)), vec3<u32>(16497u, ~arg_3.c.x, max(~1u, u_input.a.x)));
    var var_1 = ~var_0.c;
    var var_2 = arg_3.a;
    global1 = array<Struct_2, 12>();
    return _wgslsmith_sub_u32(var_0.c.x, ~1u);
}

fn func_2(arg_0: vec2<u32>) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(countOneBits(~abs(u_input.a.x)))), 12u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(var_0.a, Struct_2(var_0.a), vec4<i32>(var_0.a, var_0.a, 2147483647i, 6850i) << ((u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1714f, -958f, 1134f))), vec2<i32>(1i, var_0.a) | vec2<i32>(var_0.a, -29866i), ~u_input.a.yzz)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x >> (arg_0.x % 32u), u_input.a.x, reverseBits(arg_0.x)), u_input.a), _wgslsmith_sub_u32(0u << (arg_0.x % 32u), arg_0.x ^ 1u), func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(~var_0.a, 922i, -var_0.a), vec3<i32>(var_0.a << (4294967295u % 32u), var_0.a, 2147483647i)), global1[_wgslsmith_index_u32(arg_0.x, 12u)], firstLeadingBit(~(vec4<i32>(var_0.a, -1304i, var_0.a, var_0.a) & vec4<i32>(var_0.a, var_0.a, 0i, 1i))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(215f, 935f, 327f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-182f, -1000f, -792f), vec3<f32>(-1000f, -1450f, 503f), vec3<bool>(true, false, true)))), -vec2<i32>(-1i, var_0.a) | reverseBits(vec2<i32>(44588i, -23114i)), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(35913u, u_input.a.x, 4294967295u), u_input.a.zyw), _wgslsmith_mult_vec3_u32(u_input.a.zwy, u_input.a.xwy))))), 12u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-328f, _wgslsmith_f_op_f32(679f - 2089f), -600f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(465f)), _wgslsmith_f_op_f32(-1212f * 459f)), -656f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec2<i32>(select(_wgslsmith_div_i32(1i, -3928i), -_wgslsmith_mod_i32(var_0.a, var_0.a), !any(vec3<bool>(false, true, true))), abs(abs(11005i))), vec3<u32>(~arg_0.x, _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(arg_0.x << (1u % 32u), _wgslsmith_clamp_u32(3167u, u_input.a.x, u_input.a.x))), countOneBits(arg_0.x)));
    var var_2 = var_1.b;
    let var_3 = false;
    return _wgslsmith_mod_vec2_u32((~(~var_1.c.yy) << (~min(arg_0, arg_0) % vec2<u32>(32u))) | vec2<u32>(_wgslsmith_add_u32(0u, ~arg_0.x), 0u), ~abs(~vec2<u32>(arg_0.x, u_input.a.x)));
}

fn func_1(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = ~(-13758i);
    var var_1 = _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_sub_u32(countOneBits(~u_input.a.x), 49382u));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-282f))))), _wgslsmith_f_op_f32(floor(-373f))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(-1f)));
    var_1 = _wgslsmith_dot_vec2_u32(~func_2(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(arg_0, u_input.a.x)), ~vec2<u32>(27022u, arg_0))), u_input.a.xx);
    return all(vec3<bool>(false, any(!vec2<bool>(arg_1, false)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(vec3<bool>(true, true, true)), true, true, false);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(320f, 1072f, -249f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1446f, 731f, 355f), vec3<f32>(-294f, 211f, -100f)))) + vec3<f32>(-297f, _wgslsmith_f_op_f32(select(-1173f, 1639f, false)), -320f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1062f, -455f, -1666f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(865f, -1884f, -1037f))))))));
    var var_2 = u_input.a.x << (_wgslsmith_add_u32(~(1u & u_input.a.x), abs(1u)) % 32u);
    var var_3 = 1u;
    var_0 = !select(vec4<bool>(var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x & var_0.x, func_1(u_input.a.x, var_0.x)), !vec4<bool>(true, true, var_0.x, true), all(var_0.zz));
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(vec4<i32>(-15399i, i32(-1i) * -54116i, _wgslsmith_sub_i32(20938i, 5978i), -1i), vec4<i32>(-33122i, -1i, 1i, countOneBits(-2147483647i)))), _wgslsmith_mult_i32(-1i, 1i), min(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(2147483647i, 12487i))) << ((u_input.a.yw ^ min(vec2<u32>(30628u, 0u), u_input.a.wx)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, -22990i), reverseBits(vec2<i32>(-2147483647i, -25825i) << (u_input.a.wx % vec2<u32>(32u))))), u_input.a.x, u_input.a.x);
}

