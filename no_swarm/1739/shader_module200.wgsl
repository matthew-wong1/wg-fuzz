struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(27201u, u_input.b.x) << (arg_0.c.x % 32u), min(1u, u_input.b.x) >> (arg_0.c.x % 32u)), arg_0.c.x, select(arg_0.d, 1u, (0u >= arg_0.d) || arg_0.a.x)), countOneBits(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(0u, 14361u)), _wgslsmith_mult_vec2_u32(vec2<u32>(30621u, 4294967295u), vec2<u32>(arg_0.c.x, 4294967295u))), u_input.a.x)), vec3<u32>(6401u, 4294967295u & _wgslsmith_mult_u32(arg_0.d ^ u_input.b.x, 35519u), _wgslsmith_add_u32(firstLeadingBit(~0u), 50300u)));
    var var_1 = ~vec3<i32>(firstLeadingBit(~_wgslsmith_add_i32(1i, u_input.c.x)), _wgslsmith_mod_i32(~arg_0.e.x, firstLeadingBit(-arg_0.e.x)), ~arg_0.e.x);
    var var_2 = arg_0;
    var_0 = vec3<u32>(_wgslsmith_mult_u32(max(1613u, ~u_input.b.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0.c.x, arg_0.c.x, 1u), vec4<u32>(1u, 17623u, var_0.x, var_2.c.x)) % 32u), firstLeadingBit(4294967295u)), min(~reverseBits(5264u), firstTrailingBit(~u_input.a.x)) ^ (u_input.b.x << (~_wgslsmith_dot_vec3_u32(vec3<u32>(4598u, var_2.d, 89866u), u_input.b) % 32u)), var_2.d);
    var_2 = arg_0;
    return _wgslsmith_add_vec2_u32(vec2<u32>(~reverseBits(u_input.b.x) >> (0u % 32u), ~u_input.a.x), vec2<u32>(~(~22505u), abs(1u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: u32) -> bool {
    let var_0 = arg_0.d;
    return arg_0.a.x;
}

fn func_2() -> vec2<bool> {
    var var_0 = vec4<bool>(true, true, select(true, 23802i > ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)), true), func_4(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-409f * 1112f) + _wgslsmith_f_op_f32(404f + -727f)), max(vec2<u32>(u_input.a.x, 11268u), func_3(Struct_1(vec2<bool>(false, true), 535f, vec2<u32>(1u, u_input.b.x), 52205u, u_input.c))), abs(firstLeadingBit(u_input.a.x)), vec2<i32>(u_input.c.x, 0i)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(63616i, 58571i, u_input.c.x), vec3<i32>(1i, 42144i, u_input.c.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-67270i, -40367i, u_input.c.x), vec3<i32>(1i, 1i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), abs(vec3<i32>(u_input.c.x, -1048i, u_input.c.x))) & max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -23901i, 0i), vec3<i32>(u_input.c.x, -10333i, 2147483647i)), -vec3<i32>(u_input.c.x, 1i, u_input.c.x)), -u_input.c.x, select(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(42913u, 12219u, u_input.b.x)), 1u, any(vec2<bool>(true, true))) & 23227u));
    let var_1 = vec2<u32>(~1u, abs(~u_input.a.x) ^ u_input.b.x);
    var_0 = vec4<bool>(var_0.x, u_input.c.x == 20404i, !(!(all(var_0.xwy) | select(var_0.x, var_0.x, var_0.x))), u_input.c.x <= select(-u_input.c.x, u_input.c.x, var_0.x));
    var var_2 = select(vec3<bool>(all(var_0.yxx), ~27546u != ~var_1.x, all(vec3<bool>(false, false, true))), select(select(!var_0.xwx, var_0.zxy, vec3<bool>(var_0.x, false, true)), !vec3<bool>(true, !var_0.x, true), true), true);
    var_2 = !var_0.ywz;
    return !(!(!(!var_2.yx)));
}

fn func_1() -> Struct_1 {
    var var_0 = select(select(select(vec2<bool>(true, any(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(false, true)), func_2(), vec2<bool>(true, true)), func_2(), select(countOneBits(2147483647i) > _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x ^ -2147483647i, select(u_input.c.x, 0i, true)), !func_4(Struct_1(vec2<bool>(true, true), 1715f, vec2<u32>(u_input.b.x, u_input.b.x), u_input.a.x, u_input.c), vec3<i32>(-12911i, u_input.c.x, 2147483647i) | vec3<i32>(10419i, 0i, u_input.c.x), firstTrailingBit(u_input.c.x), u_input.b.x | 45657u), !all(vec4<bool>(false, false, true, true))));
    var_0 = vec2<bool>(var_0.x, true);
    var var_1 = -_wgslsmith_mult_vec4_i32(~abs(-vec4<i32>(u_input.c.x, -2147483647i, -1i, -7956i)), _wgslsmith_div_vec4_i32(-vec4<i32>(-17245i, u_input.c.x, 46878i, 2147483647i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i), vec4<i32>(u_input.c.x, -44497i, -9550i, u_input.c.x)), ~max(vec4<i32>(-2147483647i, u_input.c.x, 0i, 0i), vec4<i32>(u_input.c.x, u_input.c.x, -20483i, 0i))));
    var_0 = !vec2<bool>(var_0.x, true);
    let var_2 = 4294967295u;
    return Struct_1(vec2<bool>(select(any(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, false, false), false)), false, false), all(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), false))), -371f, u_input.a.zz, u_input.b.x, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-44971i, u_input.c.x, 6318i), var_1.xyw)), -23712i), u_input.c.x));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = -882f;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2791f - 603f), arg_2.b)), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), arg_1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1636f, 752f, 1664f, -361f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-721f, -843f, arg_1.b, arg_2.b) * vec4<f32>(arg_1.b, arg_1.b, arg_2.b, arg_2.b))))), true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1062f)) * arg_2.b), _wgslsmith_f_op_f32(-1515f + _wgslsmith_f_op_f32(332f * arg_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b, 1000f, _wgslsmith_f_op_f32(ceil(arg_2.b)), 1506f)))));
    var var_2 = _wgslsmith_sub_vec4_u32((~vec4<u32>(20072u, u_input.b.x, u_input.a.x, u_input.b.x) & vec4<u32>(u_input.b.x, 1u, firstLeadingBit(0u), abs(arg_1.c.x))) | vec4<u32>(0u, ~1u, 87586u, 83018u), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, arg_2.d, arg_1.d, 17913u)), min(~vec4<u32>(u_input.b.x, 28237u, arg_1.c.x, 1u), vec4<u32>(17920u, arg_2.c.x, arg_1.d, 29331u) & vec4<u32>(arg_2.c.x, u_input.a.x, 17947u, 27992u))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 0u, 0u), vec4<u32>(4294967295u, 5587u, 54286u, 17796u)), abs(vec4<u32>(arg_2.d, arg_2.c.x, 64444u, 16263u)) >> (vec4<u32>(4334u, 74822u, u_input.a.x, 14772u) % vec4<u32>(32u)))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), -1i) ^ ~(u_input.c.x << (4294967295u % 32u)), -_wgslsmith_sub_i32(-105434i, u_input.c.x), ~u_input.c.x, func_5(firstLeadingBit(u_input.c), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1464f * -1099f), _wgslsmith_f_op_f32(f32(-1f) * -2522f))), firstTrailingBit(vec2<u32>(17162u, u_input.b.x)), u_input.b.x, u_input.c), func_1()));
    let var_1 = i32(-1i) * -4019i;
    var var_2 = countOneBits(89269u);
    let var_3 = reverseBits(select(var_0.zyz, var_0.yzw, select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(false, false, false), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))));
    var_2 = countOneBits(~(~min(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.a.x)));
    var_2 = u_input.a.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-690f, _wgslsmith_f_op_f32(f32(-1f) * -892f), _wgslsmith_f_op_f32(301f * _wgslsmith_f_op_f32(trunc(231f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(214f, 862f, 304f), vec3<f32>(353f, -1185f, -182f))), _wgslsmith_div_vec3_f32(vec3<f32>(-315f, 1000f, -874f), vec3<f32>(364f, -267f, 194f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(523f, -962f, 1331f) - vec3<f32>(-466f, 1435f, -1000f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1595f, -1007f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, 1144f, -428f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_5 = ~vec4<u32>(firstLeadingBit(u_input.a.x), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), u_input.b)), firstTrailingBit(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(3783u, 29411u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x)))), ~(~25475u | u_input.a.x));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.x)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x * -162f) + var_4.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x + var_4.x) - var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(1i, u_input.a.x, select(vec3<u32>(_wgslsmith_add_u32(abs(u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_5.x, u_input.a.x), u_input.b.yy)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), firstTrailingBit(32513u)), ~u_input.b.x), select(reverseBits(select(vec3<u32>(var_5.x, u_input.b.x, u_input.b.x), vec3<u32>(62731u, var_5.x, var_5.x), false)), select(var_5.wzw, vec3<u32>(var_5.x, 0u, 0u), vec3<bool>(true, false, false)) & reverseBits(vec3<u32>(63216u, u_input.b.x, var_5.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), true)), min(-31012i, 1i) > _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.ywy, var_0.wzw), 1i)), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_6)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6) + _wgslsmith_f_op_f32(var_6 * _wgslsmith_f_op_f32(ceil(var_6))))), _wgslsmith_div_i32(min(var_3.x, -15264i), _wgslsmith_mod_i32(-var_3.x >> (max(4294967295u, var_5.x) % 32u), -u_input.c.x)));
}

