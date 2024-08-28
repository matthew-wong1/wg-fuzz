struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> vec3<bool> {
    var var_0 = true;
    var var_1 = Struct_3(arg_0.d.x);
    let var_2 = Struct_1(vec2<bool>(arg_2.b.b, var_1.a == countOneBits(_wgslsmith_mult_u32(4294967295u, arg_2.d.d.x))), true, arg_2.d.c, reverseBits(arg_2.d.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.d.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1372f)))));
    let var_3 = ~31008i;
    var var_4 = all(arg_0.a);
    return select(!select(select(select(vec3<bool>(var_2.b, arg_0.a.x, arg_2.d.b), vec3<bool>(arg_2.b.b, false, true), vec3<bool>(true, false, var_2.b)), !vec3<bool>(true, arg_2.b.b, true), arg_0.c > arg_3), vec3<bool>(all(vec4<bool>(arg_0.b, true, arg_2.d.b, arg_2.d.b)), false, true), all(vec4<bool>(false, true, true, true))), !(!(!vec3<bool>(false, var_2.b, var_2.b))), vec3<bool>(~(-2147483647i) >= (i32(-1i) * -u_input.a), (i32(-1i) * -arg_3) <= (arg_0.c >> (~arg_1 % 32u)), arg_2.d.b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<u32> {
    global0 = array<vec2<i32>, 3>();
    global0 = array<vec2<i32>, 3>();
    var var_0 = Struct_1(select(select(!arg_1.b.a, vec2<bool>(true, true), true), arg_3.a, select(!arg_1.b.a, select(vec2<bool>(true, arg_3.b), vec2<bool>(true, false), select(vec2<bool>(arg_3.a.x, true), vec2<bool>(arg_3.a.x, arg_1.d.b), arg_1.b.a)), !(!arg_3.a))), !any(!(!vec4<bool>(arg_3.b, arg_3.a.x, arg_1.b.b, true))), arg_3.c, ~vec3<u32>(arg_0.x, max(4294967295u, ~arg_0.x), 4294967295u), _wgslsmith_f_op_f32(min(-1413f, _wgslsmith_f_op_f32(-arg_1.d.e))));
    let var_1 = arg_1.b;
    let var_2 = global0[_wgslsmith_index_u32(~arg_1.d.d.x, 3u)];
    return vec2<u32>(arg_0.x & _wgslsmith_dot_vec3_u32(select(~vec3<u32>(35413u, var_0.d.x, 0u), min(arg_1.b.d, vec3<u32>(4294967295u, var_1.d.x, var_0.d.x)), func_1(Struct_1(vec2<bool>(arg_1.b.a.x, var_1.a.x), arg_1.d.a.x, -1i, arg_0.wxy, arg_1.b.e), arg_3.d.x, arg_1, 2147483647i)), vec3<u32>(41783u, var_1.d.x, ~arg_0.x)), _wgslsmith_mult_u32(arg_0.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(23844u & var_0.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, arg_0.x), vec2<u32>(var_0.d.x, arg_0.x))), 0u)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(func_1(Struct_1(vec2<bool>(true, true), true, u_input.a, ~vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1818f - 204f)))), 1u, Struct_2(vec2<u32>(1u, 1u), Struct_1(vec2<bool>(true, true), true, u_input.a, ~vec3<u32>(4294967295u, 0u, 14134u), _wgslsmith_div_f32(808f, 1493f)), func_3(select(vec4<u32>(0u, 4294967295u, 4294967295u, 53716u), vec4<u32>(4294967295u, 4294967295u, 82124u, 66329u), vec4<bool>(false, true, false, true)), Struct_2(vec2<u32>(5547u, 48889u), Struct_1(vec2<bool>(true, false), true, 1i, vec3<u32>(43856u, 4294967295u, 1u), -289f), vec2<u32>(16563u, 41003u), Struct_1(vec2<bool>(true, true), false, -2147483647i, vec3<u32>(93071u, 27570u, 1u), -786f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(518f, 1719f, 889f, -2094f) + vec4<f32>(-1591f, -1000f, -488f, 535f)), Struct_1(vec2<bool>(false, false), true, -2147483647i, vec3<u32>(19840u, 1u, 1u), 1000f)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true, u_input.a, vec3<u32>(39098u, 0u, 1u), 791f)), max(reverseBits(u_input.a), ~(-u_input.a))).yy, all(vec3<bool>(true, true, true)) | any(vec2<bool>(true, true)), u_input.a, ~select(vec3<u32>(6555u, ~87253u, abs(0u)), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-837f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-339f - -1000f) * _wgslsmith_f_op_f32(floor(1065f))) - 1f)));
    var var_1 = Struct_3(var_0.d.x);
    var var_2 = !vec4<bool>(var_0.b, true, !(all(var_0.a) && true), var_0.a.x);
    let var_3 = var_0;
    global0 = array<vec2<i32>, 3>();
    return Struct_3(countOneBits(_wgslsmith_dot_vec2_u32(var_0.d.yz, countOneBits(vec2<u32>(var_3.d.x, 20381u)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = 1u;
    global0 = array<vec2<i32>, 3>();
    let var_1 = arg_1.x;
    global0 = array<vec2<i32>, 3>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-752f * 153f)))))), -631f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(-653f, 1000f))))), -1155f);
    return Struct_3(1u);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: bool, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = func_2();
    global0 = array<vec2<i32>, 3>();
    var var_1 = vec4<bool>(true, false, arg_0.x, any(vec2<bool>(arg_0.x, arg_0.x)));
    var var_2 = Struct_2(~(abs(vec2<u32>(31681u, 0u) & vec2<u32>(var_0.a, arg_1.a)) << (max(firstTrailingBit(vec2<u32>(42506u, 10463u)), vec2<u32>(var_0.a, 4294967295u) ^ vec2<u32>(82031u, 1u)) % vec2<u32>(32u))), Struct_1(!(!func_1(Struct_1(vec2<bool>(true, false), true, u_input.a, vec3<u32>(1u, 1u, 1639u), arg_3.x), 0u, Struct_2(vec2<u32>(arg_1.a, 0u), Struct_1(arg_0.zx, true, u_input.a, vec3<u32>(var_0.a, var_0.a, arg_1.a), arg_3.x), vec2<u32>(var_0.a, arg_1.a), Struct_1(vec2<bool>(arg_0.x, arg_2), true, u_input.a, vec3<u32>(38551u, 1u, 4294967295u), arg_3.x)), -2147483647i).xx), arg_2, 2147483647i, ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, 4294967295u, var_0.a) << (vec3<u32>(1u, 100266u, 18919u) % vec3<u32>(32u)), vec3<u32>(47190u, 1u, var_0.a) ^ vec3<u32>(arg_1.a, 13954u, arg_1.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-338f)), _wgslsmith_f_op_f32(arg_3.x * -157f)))))), vec2<u32>(var_0.a, 4294967295u), Struct_1(!vec2<bool>(970f > arg_3.x, false), var_1.x, -(reverseBits(u_input.a) ^ 0i), vec3<u32>(~_wgslsmith_sub_u32(var_0.a, 1696u), ~max(0u, var_0.a), 4294967295u), 666f));
    var var_3 = -28617i;
    return Struct_3(reverseBits(~52096u));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_2 {
    global0 = array<vec2<i32>, 3>();
    let var_0 = arg_1;
    var var_1 = true;
    global0 = array<vec2<i32>, 3>();
    var_1 = func_1(Struct_1(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, true), func_1(Struct_1(vec2<bool>(true, true), true, arg_2.x, vec3<u32>(arg_0.a, 65143u, var_0.a), 622f), 63152u, Struct_2(vec2<u32>(arg_0.a, arg_1.a), Struct_1(vec2<bool>(true, true), false, 5265i, vec3<u32>(31626u, var_0.a, 4739u), -1955f), vec2<u32>(22514u, 4294967295u), Struct_1(vec2<bool>(true, true), false, 0i, vec3<u32>(arg_0.a, 1u, 1u), -1000f)), 0i).xx), vec2<bool>(true, true), vec2<bool>(select(true, false, false), true)), false, ~(~arg_2.x), firstLeadingBit(vec3<u32>(arg_1.a, var_0.a, _wgslsmith_sub_u32(3036u, 1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-878f - _wgslsmith_f_op_f32(min(-601f, -784f))), -765f)), arg_0.a, Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(arg_1.a, 4294967295u), vec2<u32>(var_0.a, arg_1.a), false), vec2<u32>(arg_0.a, var_0.a) ^ vec2<u32>(arg_0.a, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 17834u), vec2<u32>(arg_1.a, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(80538u, arg_0.a), vec2<u32>(var_0.a, arg_0.a)))), Struct_1(func_1(Struct_1(vec2<bool>(true, true), true, -36714i, vec3<u32>(0u, var_0.a, arg_1.a), 1220f), arg_0.a, Struct_2(vec2<u32>(1u, var_0.a), Struct_1(vec2<bool>(false, true), true, -2147483647i, vec3<u32>(var_0.a, arg_1.a, 34725u), -101f), vec2<u32>(1u, 1u), Struct_1(vec2<bool>(true, false), true, 1i, vec3<u32>(arg_0.a, 4294967295u, arg_0.a), 463f)), _wgslsmith_sub_i32(arg_2.x, -40802i)).xx, any(vec2<bool>(true, true)), -1i, ~vec3<u32>(arg_1.a, arg_1.a, 47764u), 521f), ~min(vec2<u32>(var_0.a, arg_1.a), vec2<u32>(arg_0.a, 4294967295u)) >> (~vec2<u32>(arg_1.a, var_0.a) % vec2<u32>(32u)), Struct_1(func_1(Struct_1(vec2<bool>(false, false), false, -2147483647i, vec3<u32>(var_0.a, var_0.a, var_0.a), 1486f), func_2().a, Struct_2(vec2<u32>(1u, 43258u), Struct_1(vec2<bool>(true, false), true, 2147483647i, vec3<u32>(var_0.a, arg_1.a, 935u), -628f), vec2<u32>(4294967295u, arg_0.a), Struct_1(vec2<bool>(false, true), true, u_input.a, vec3<u32>(0u, 4294967295u, var_0.a), 407f)), arg_2.x).xy, true, ~(~u_input.a), vec3<u32>(arg_0.a, arg_0.a, arg_1.a << (12881u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(391f)) * _wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a ^ -10215i, arg_2.x), -2400i), -(~(-1i >> (arg_1.a % 32u))))).x;
    return Struct_2(~(~vec2<u32>(~0u, 0u)), Struct_1(!select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), func_1(Struct_1(vec2<bool>(true, false), true, u_input.a, vec3<u32>(arg_1.a, 21456u, var_0.a), 187f), arg_1.a, Struct_2(vec2<u32>(arg_1.a, arg_0.a), Struct_1(vec2<bool>(true, true), false, arg_2.x, vec3<u32>(26021u, arg_0.a, var_0.a), -328f), vec2<u32>(4294967295u, var_0.a), Struct_1(vec2<bool>(true, true), true, arg_2.x, vec3<u32>(60344u, arg_1.a, var_0.a), -1525f)), 22899i).x)), ~(-26363i), vec3<u32>(func_2().a, 1u, 4294967295u), -407f), vec2<u32>(4646u, abs(arg_0.a)), Struct_1(!(!func_1(Struct_1(vec2<bool>(false, true), false, arg_2.x, vec3<u32>(arg_1.a, var_0.a, 1u), 415f), 16541u, Struct_2(vec2<u32>(1u, 1u), Struct_1(vec2<bool>(true, true), false, -34103i, vec3<u32>(arg_0.a, var_0.a, arg_1.a), 1000f), vec2<u32>(0u, arg_0.a), Struct_1(vec2<bool>(true, false), true, 42464i, vec3<u32>(63333u, var_0.a, 48321u), 1980f)), -2147483647i).xy), select(true, any(vec4<bool>(true, false, false, false)), !all(vec4<bool>(false, true, true, false))), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, u_input.a) >> (~vec2<u32>(arg_1.a, arg_1.a) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 1i), arg_2.xy)), vec3<u32>(_wgslsmith_clamp_u32(arg_0.a, 12768u, _wgslsmith_mod_u32(0u, arg_1.a)), func_5(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), func_4(Struct_3(arg_0.a), vec3<bool>(false, true, false)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, 1145f, -354f, 328f))).a, ~countOneBits(arg_0.a)), _wgslsmith_f_op_f32(-1f)));
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = any(func_1(func_6(arg_2, func_5(!vec3<bool>(false, arg_1.b.a.x, true), func_4(arg_2, vec3<bool>(arg_1.d.a.x, arg_1.b.a.x, false)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.e, arg_1.b.e, arg_0, 500f))), vec3<i32>(arg_1.d.c, arg_1.d.c, reverseBits(arg_1.d.c))).b, ~0u, Struct_2(~(~arg_1.b.d.xy), arg_1.d, select(select(arg_1.b.d.yy, arg_1.b.d.yy, arg_1.d.a.x), ~arg_1.d.d.xy, !arg_1.b.a), arg_1.d), ~arg_1.d.c).yy);
    let var_1 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, arg_1.d.c, arg_1.b.c), ~vec4<i32>(1i, u_input.a, u_input.a, 10900i)), vec4<i32>(select(u_input.a, 19615i, var_0), arg_1.b.c, i32(-1i) * -1i, arg_1.b.c ^ 15881i)), arg_1.b.c);
    var var_2 = !any(select(select(!vec3<bool>(true, false, arg_1.d.a.x), vec3<bool>(var_0, false, var_0), select(vec3<bool>(var_0, arg_1.d.a.x, false), vec3<bool>(var_0, var_0, false), true)), !select(vec3<bool>(arg_1.d.a.x, false, true), vec3<bool>(false, arg_1.b.a.x, true), vec3<bool>(true, true, false)), false));
    var_2 = func_1(func_6(arg_2, arg_2, firstTrailingBit(vec3<i32>(func_6(arg_2, Struct_3(4294967295u), vec3<i32>(-1i, arg_1.d.c, 2147483647i)).d.c, 1i, _wgslsmith_mod_i32(26150i, 75486i)))).d, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.a >> (0u % 32u), 4294967295u, ~arg_1.c.x, ~arg_1.d.d.x), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 7340u, 1u, arg_1.a.x), vec4<u32>(4294967295u, arg_1.b.d.x, arg_2.a, 1u)), vec4<u32>(~22861u, ~arg_1.a.x, ~arg_1.d.d.x, ~arg_1.b.d.x)), ~select(reverseBits(vec4<u32>(arg_2.a, 7667u, arg_1.c.x, arg_2.a)), select(vec4<u32>(62360u, arg_1.a.x, arg_2.a, arg_1.d.d.x), vec4<u32>(arg_2.a, 3966u, 56674u, 35162u), vec4<bool>(var_0, arg_1.d.a.x, true, false)), func_6(Struct_3(arg_1.c.x), arg_2, vec3<i32>(1i, arg_1.d.c, u_input.a)).b.b)), Struct_2(select(vec2<u32>(arg_1.c.x & arg_2.a, 55912u), ~func_3(vec4<u32>(5772u, arg_1.d.d.x, 1u, 0u), Struct_2(vec2<u32>(arg_2.a, arg_1.d.d.x), Struct_1(vec2<bool>(arg_1.d.b, false), var_0, arg_1.d.c, arg_1.b.d, -1208f), vec2<u32>(arg_1.b.d.x, arg_1.a.x), arg_1.d), vec4<f32>(arg_1.b.e, -1423f, -739f, arg_0), Struct_1(vec2<bool>(false, var_0), true, 2147483647i, vec3<u32>(0u, arg_1.d.d.x, arg_2.a), -886f)), select(vec2<bool>(false, arg_1.b.b), arg_1.d.a, vec2<bool>(true, false))), func_6(arg_2, Struct_3(~119374u), vec3<i32>(u_input.a, _wgslsmith_mult_i32(-18841i, 0i), _wgslsmith_mod_i32(u_input.a, 45797i))).d, arg_1.a, func_6(func_2(), func_5(select(vec3<bool>(var_0, var_0, true), vec3<bool>(arg_1.d.a.x, arg_1.b.b, true), arg_1.d.b), arg_2, arg_1.b.e <= 995f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-757f, arg_1.d.e, arg_1.b.e, 465f)))), _wgslsmith_add_vec3_i32(vec3<i32>(-47366i, 60443i, var_1), select(vec3<i32>(var_1, 2147483647i, 36451i), vec3<i32>(var_1, u_input.a, -2147483647i), false))).b), arg_1.d.c).x;
    global0 = array<vec2<i32>, 3>();
    return StorageBuffer(_wgslsmith_f_op_f32(select(arg_1.d.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, -224f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.e + arg_0) + func_6(Struct_3(0u), arg_2, vec3<i32>(var_1, var_1, arg_1.b.c)).d.e)), true)), _wgslsmith_f_op_f32(exp2(arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1715f)))));
    let x = u_input.a;
    s_output = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1329f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1000f)))))), func_6(func_5(!func_1(Struct_1(vec2<bool>(false, true), true, 0i, vec3<u32>(1u, 16829u, 4294967295u), 311f), 52385u, Struct_2(vec2<u32>(13388u, 101129u), Struct_1(vec2<bool>(true, false), true, 1i, vec3<u32>(51795u, 0u, 20393u), -123f), vec2<u32>(30066u, 0u), Struct_1(vec2<bool>(true, false), false, -2147483647i, vec3<u32>(4294967295u, 1u, 0u), -385f)), 49648i), func_4(func_2(), vec3<bool>(false, false, false)), false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-541f, 160f, -1316f, 531f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2202f, 1069f, -916f, -1361f), vec4<f32>(224f, 194f, 426f, -1000f), vec4<bool>(false, false, true, false))))), func_4(Struct_3(1u), vec3<bool>(true, true, true)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(6632i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -2917i))), u_input.a, u_input.a)), func_4(func_5(vec3<bool>(true, true, true), func_4(func_4(Struct_3(4294967295u), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(676f, -1000f, -1505f, -487f), vec4<f32>(-268f, -473f, 2080f, 1073f))))), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), (0i < u_input.a) || true)));
}

