struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> i32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1838f, -2816f, _wgslsmith_f_op_f32(min(657f, -323f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1649f, 1251f, 1000f), vec3<f32>(674f, -987f, 1199f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1294f, -1677f, -552f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(715f, 486f, -117f) + vec3<f32>(542f, -919f, 1669f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1431f, _wgslsmith_f_op_f32(min(1620f, _wgslsmith_div_f32(-1247f, 705f))), 1f) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -426f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2002f, -1818f))))), true));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_1.x), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))))), var_1.x, any(vec4<bool>(countOneBits(arg_1) == firstTrailingBit(arg_1), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), true | any(vec2<bool>(false, false)), true))));
    var var_3 = 0u;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 - vec3<f32>(var_1.x, var_2, _wgslsmith_div_f32(1182f, _wgslsmith_f_op_f32(ceil(var_1.x))))));
    return -1i;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = reverseBits(~vec3<i32>(u_input.a, abs(u_input.a), -1i));
    var var_1 = select(u_input.a, var_0.x, -var_0.x < _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(854i, u_input.a, var_0.x, var_0.x)), vec4<i32>(func_3(Struct_4(vec3<u32>(u_input.b.x, 0u, u_input.b.x)), var_0.x), var_0.x, _wgslsmith_sub_i32(-28361i, -8388i), u_input.a)));
    var var_2 = _wgslsmith_clamp_vec4_i32(-countOneBits(~vec4<i32>(2147483647i, 19577i, -2147483647i, 1i)), vec4<i32>(~max(_wgslsmith_clamp_i32(var_0.x, var_0.x, u_input.a), u_input.a), min(_wgslsmith_mult_i32(1i, u_input.a) >> (1u % 32u), _wgslsmith_add_i32(12628i, -2147483647i)), -(firstTrailingBit(-1i) ^ (2147483647i | u_input.a)), firstLeadingBit(var_0.x)), _wgslsmith_mult_vec4_i32(-select(vec4<i32>(u_input.a, u_input.a, 27075i, 2147483647i), vec4<i32>(16072i, u_input.a, u_input.a, u_input.a), vec4<bool>(arg_0.x, false, arg_0.x, false)) & ~(~vec4<i32>(2147483647i, var_0.x, u_input.a, var_0.x)), vec4<i32>(-53604i, _wgslsmith_clamp_i32(2147483647i, -2147483647i, u_input.a), abs(-17877i), u_input.a | -41620i) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-25653i, var_0.x, -57987i, u_input.a), vec4<i32>(var_0.x, 1267i, 1i, u_input.a)), -vec4<i32>(30711i, var_0.x, u_input.a, -9782i))));
    var_2 = vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(var_2.x), u_input.a, _wgslsmith_mod_i32(var_2.x, var_2.x)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(6596u, 4294967295u, 12305u), vec3<u32>(4294967295u, 87908u, 19557u)) % vec3<u32>(32u)), var_2.xwz), -_wgslsmith_add_i32(~firstLeadingBit(u_input.a), 0i), ~(-2147483647i));
    var_1 = var_0.x;
    return Struct_1(1454f, 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -655f, 181f, arg_1) + vec4<f32>(arg_1, arg_1, arg_1, arg_1))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 322f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2106f, -815f, -650f, 122f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(ceil(-548f)))), _wgslsmith_div_vec4_u32(min(select(vec4<u32>(1u, u_input.b.x, 55629u, u_input.b.x), vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x), vec4<bool>(true, true, arg_0.x, true)), vec4<u32>(24004u, u_input.b.x, 1u, 2188u)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1550u), vec4<u32>(u_input.b.x, 9351u, u_input.b.x, u_input.b.x)), countOneBits(~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 25927u)))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: vec4<i32>) -> f32 {
    let var_0 = !vec3<bool>(any(vec2<bool>(true, true)), !arg_0, any(select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), true)) || any(vec3<bool>(arg_0, arg_0, true)));
    let var_1 = Struct_2(vec3<bool>(!(!(arg_0 & true)), var_0.x, true), Struct_1(1012f, 4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1692f, arg_1, arg_1, 781f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-637f, -963f, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, -1057f, arg_1, 384f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2520f, -289f, -523f, -120f) - vec4<f32>(arg_1, arg_1, arg_1, 1229f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-205f, 1045f) + vec2<f32>(-640f, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), any(var_0))) - vec2<f32>(_wgslsmith_f_op_f32(arg_1 * 651f), _wgslsmith_f_op_f32(-995f + -864f))), _wgslsmith_mult_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 24783u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), max(vec4<u32>(15666u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(25252u, 0u, u_input.b.x, 23989u))), ~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x))), func_2(select(vec2<bool>(arg_0, var_0.x), select(vec2<bool>(true, true), var_0.zx, select(var_0.xz, vec2<bool>(var_0.x, true), vec2<bool>(false, true))), vec2<bool>(true, true)), arg_1));
    let var_2 = var_1.c;
    var var_3 = var_1.b;
    var var_4 = !any(!var_1.a);
    return _wgslsmith_f_op_f32(step(-1750f, var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(908f, 647f)) * _wgslsmith_f_op_f32(f32(-1f) * -950f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_f_op_f32(ceil(-461f)))), u_input.a, vec4<i32>(2147483647i, ~u_input.a, u_input.a, ~u_input.a))), u_input.b.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(414f, 588f, 1427f, 569f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-389f, -296f, -652f, -1666f), vec4<f32>(457f, 1235f, 1161f, -520f), false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1104f, 877f, -296f, -104f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-645f, -594f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1775f, 526f) - vec2<f32>(-1008f, -656f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1851f, -381f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(587f, -378f) - vec2<f32>(-216f, 479f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1231f, 324f) - vec2<f32>(-859f, -1481f))))), abs(reverseBits(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))) >> (firstLeadingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, 52217u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 16340u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)));
    var_0 = Struct_1(521f, ~(u_input.b.x & _wgslsmith_mod_u32(1u, 43789u)), vec4<f32>(895f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(max(1000f, var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1972f) + -464f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.c.yx)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.a) + vec2<f32>(var_0.d.x, var_0.a))))), func_2(vec2<bool>(true, false), 826f).d), ~(~var_0.e));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec3<u32>(_wgslsmith_add_u32(~0u, firstTrailingBit(~var_0.b)), _wgslsmith_mod_u32(~22889u, var_0.b), _wgslsmith_div_u32(~u_input.b.x << (reverseBits(1u) % 32u), var_0.b)));
}

