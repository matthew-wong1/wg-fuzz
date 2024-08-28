struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<bool>(true, true, false), i32(-2147483648), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 23454u, 4294967295u)), Struct_1(vec3<bool>(true, false, false), -3856i, vec3<u32>(4294967295u, 13743u, 49833u), vec3<u32>(60269u, 14501u, 0u)), Struct_1(vec3<bool>(false, true, true), 1i, vec3<u32>(1u, 0u, 0u), vec3<u32>(10497u, 4294967295u, 0u)), Struct_1(vec3<bool>(true, false, true), -1i, vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(41552u, 39334u, 4294967295u)), Struct_1(vec3<bool>(true, true, false), 1i, vec3<u32>(2027u, 1u, 0u), vec3<u32>(45482u, 1u, 4294967295u)), Struct_1(vec3<bool>(true, false, false), i32(-2147483648), vec3<u32>(48997u, 32954u, 4294967295u), vec3<u32>(19291u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(true, true, false), 2147483647i, vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 4294967295u, 58339u)), Struct_1(vec3<bool>(false, false, false), -1i, vec3<u32>(0u, 76194u, 79745u), vec3<u32>(4294967295u, 54954u, 1u)), Struct_1(vec3<bool>(true, false, true), i32(-2147483648), vec3<u32>(96715u, 0u, 1u), vec3<u32>(68204u, 71345u, 1u)), Struct_1(vec3<bool>(true, false, true), 2147483647i, vec3<u32>(40151u, 0u, 9025u), vec3<u32>(0u, 35241u, 33242u)), Struct_1(vec3<bool>(false, false, true), -14806i, vec3<u32>(105902u, 1u, 15120u), vec3<u32>(4294967295u, 34455u, 54351u)), Struct_1(vec3<bool>(false, true, true), i32(-2147483648), vec3<u32>(41119u, 4294967295u, 28513u), vec3<u32>(4294967295u, 24194u, 1u)), Struct_1(vec3<bool>(true, false, true), -1i, vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 1u, 0u)));

var<private> global2: f32 = 1183f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_u32(1u, 7712u, u_input.b);
    global1 = array<Struct_1, 13>();
    var var_1 = Struct_1(vec3<bool>(true && !any(vec3<bool>(true, true, false)), true, true), _wgslsmith_mod_i32(firstTrailingBit(u_input.a.x), max(-_wgslsmith_clamp_i32(u_input.a.x, u_input.c, u_input.c), _wgslsmith_mod_i32(min(u_input.c, 0i), u_input.a.x))), vec3<u32>(min(519u << (_wgslsmith_clamp_u32(1u, 37186u, 67045u) % 32u), select(_wgslsmith_dot_vec2_u32(vec2<u32>(99921u, arg_0.x), arg_0.yy), ~u_input.b, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, arg_0.x), vec2<u32>(arg_0.x, 76230u))) >> (arg_0.x % 32u), abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.x, arg_0.x), 8273u))), arg_0);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1029f)) - 1209f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -2224f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-675f - 521f))))));
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(~_wgslsmith_sub_u32(u_input.b >> (15050u % 32u), 89413u)), countOneBits(~var_1.c.x)), 13u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1652f, var_2.x)))));
}

fn func_4(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_1(vec3<bool>(true, true, false), _wgslsmith_div_i32(i32(-1i) * -u_input.a.x, u_input.c), ~(vec3<u32>(_wgslsmith_mod_u32(8475u, u_input.b), 0u, ~37383u) & vec3<u32>(42190u, firstLeadingBit(1u), ~1u)), ~firstLeadingBit(abs(~vec3<u32>(u_input.b, u_input.b, u_input.b))));
    var var_1 = Struct_1(var_0.a, i32(-1i) * -_wgslsmith_div_i32(u_input.a.x, u_input.c), firstTrailingBit(select(~(~var_0.d), vec3<u32>(1u, ~14015u, _wgslsmith_clamp_u32(101567u, u_input.b, u_input.b)), var_0.a.x)), ~(~max(min(var_0.c, var_0.d), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.x, 5429u, 4294967295u), var_0.c))));
    var var_2 = global1[_wgslsmith_index_u32(1976u, 13u)];
    var var_3 = -22473i;
    var_3 = 10814i;
    return arg_0.x;
}

fn func_2() -> bool {
    var var_0 = firstTrailingBit(~(~_wgslsmith_mod_u32(u_input.b, u_input.b)) << (~0u % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-855f - -1000f))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(select(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 12180u, 57821u), vec3<bool>(false, true, false))))))));
    global0 = -(~(-1i)) >= -_wgslsmith_mod_i32(-_wgslsmith_sub_i32(u_input.c, u_input.c), u_input.c);
    let var_2 = global1[_wgslsmith_index_u32(1u, 13u)];
    return var_2.a.x;
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    global1 = array<Struct_1, 13>();
    var var_0 = 17704u;
    var var_1 = Struct_1(vec3<bool>(true, arg_1, func_2()), _wgslsmith_clamp_i32(~2147483647i, ~u_input.c, 1i), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.b), ~0u, _wgslsmith_sub_u32(79946u, u_input.b)), countOneBits(vec3<u32>(29537u, 0u, u_input.b)) >> (~vec3<u32>(0u, 0u, u_input.b) % vec3<u32>(32u)))), ~vec3<u32>(~0u, countOneBits(abs(u_input.b)), u_input.b));
    var var_2 = countOneBits(var_1.c.x);
    global0 = arg_1;
    return _wgslsmith_div_f32(-242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2204f - _wgslsmith_f_op_f32(ceil(1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_i32(u_input.a.zy, ~vec2<i32>(1i, 1i)), any(vec3<bool>(true, true, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1456f, 120f) - vec2<f32>(1466f, -159f)))))));
    var var_0 = reverseBits(vec3<i32>(-2147483647i, (u_input.c >> (u_input.b % 32u)) ^ u_input.c, -1i)) & firstLeadingBit(u_input.a);
    let var_1 = _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.c, -25731i << (1u % 32u), _wgslsmith_add_i32(~(-1i), u_input.c)), ~u_input.a);
    var_0 = ~_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(abs(_wgslsmith_clamp_i32(-25838i, -29611i, u_input.c)), var_1.x, _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(u_input.c, 5644i))));
    global0 = all(select(!vec2<bool>(select(true, true, true), func_2()), select(vec2<bool>(func_2(), u_input.b != u_input.b), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !vec2<bool>(true, func_2())));
    var var_2 = vec2<f32>(-202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1930f * 1480f)), _wgslsmith_f_op_f32(f32(-1f) * -1705f), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)))) - _wgslsmith_f_op_f32(abs(-223f))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.zx, vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-995f, _wgslsmith_f_op_f32(var_2.x + var_2.x), true)))));
}

