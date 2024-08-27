struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(ceil(1564f))) * arg_0.x)));
    let var_1 = 4294967295u;
    let var_2 = Struct_1(~_wgslsmith_mult_i32(-65939i, 12004i) << (select(4294967295u, 12390u, false) % 32u), select(!vec3<bool>(true, u_input.a.x < 1u, true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true))));
    var var_3 = arg_2.x;
    let var_4 = arg_0.x;
    return 625f;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_div_u32(9068u, reverseBits(1361u));
    var_0 = _wgslsmith_mod_u32(countOneBits(4294967295u), ~28486u);
    var var_1 = Struct_3(select(vec3<bool>(select(u_input.a.x >= u_input.a.x, true, arg_1.a.x), 4294967295u >= u_input.a.x, any(vec2<bool>(arg_2, false)) && (arg_1.b.x == -1180f)), arg_1.a, vec3<bool>(true, arg_2, true)), arg_1.b);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(282f - arg_1.b.x) + _wgslsmith_f_op_f32(floor(-3051f))))) * _wgslsmith_f_op_f32(-318f + -528f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(622f, 1000f, arg_0), vec3<i32>(arg_3, 75350i, 24215i), vec3<i32>(-2147483647i, arg_3, 2147483647i), 2147483647i))) - _wgslsmith_div_f32(-1720f, var_1.b.x)) - _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<f32>(var_1.b.x, arg_1.b.x, -218f), vec3<i32>(-26041i, arg_3, arg_3), vec3<i32>(2147483647i, arg_3, 2147483647i), arg_3)), _wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x), firstLeadingBit(vec3<i32>(-24117i, arg_3, -1i)), ~vec3<i32>(-32320i, arg_3, 0i) ^ ~vec3<i32>(-1i, arg_3, -60521i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_3, 1i), vec3<i32>(0i, -2147483647i, 30228i))))));
    var var_3 = Struct_3(select(vec3<bool>(true, true, true), !(!vec3<bool>(true, var_1.a.x, arg_2)), true), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x) - 1573f), arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.x, 293f, var_1.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -549f, -677f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1.b.x, arg_1.b.x) - var_1.b)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_1.b.x, var_1.b.x) - arg_1.b), _wgslsmith_f_op_vec3_f32(-arg_1.b))))));
    return _wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_1.b.x)) + 1827f)));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = select(-vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(16844i, 0i, -46809i, -2147483647i), vec4<i32>(21004i, -2147483647i, -1i, 1i)), _wgslsmith_mult_i32(1i, ~38961i)), _wgslsmith_mod_vec2_i32(select(vec2<i32>(-5306i, -38174i), -vec2<i32>(-2147483647i, 0i), vec2<bool>(arg_0, false)) | vec2<i32>(1i, _wgslsmith_clamp_i32(-18260i, -2147483647i, -1i)), vec2<i32>(1i, 1i)), select(select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false))), select(vec2<bool>(true, true), !vec2<bool>(false, arg_0), arg_0 & true), arg_0), select(select(!vec2<bool>(false, arg_0), !vec2<bool>(arg_0, true), select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), vec2<bool>(false, false))), vec2<bool>(all(vec3<bool>(arg_0, false, arg_0)), arg_0), vec2<bool>(true, true)), select(!vec2<bool>(arg_0, arg_0), select(!vec2<bool>(arg_0, false), vec2<bool>(true, false), true), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-174f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_2(1000f, Struct_3(vec3<bool>(false, arg_0, arg_0), vec3<f32>(-1111f, -426f, -365f)), arg_0, 0i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-216f)))))));
    let var_2 = Struct_2(Struct_1(var_0.x, !vec3<bool>(true, true, all(vec4<bool>(false, arg_0, true, arg_0)))), Struct_1(_wgslsmith_add_i32(~7052i, var_0.x), vec3<bool>(arg_0, !arg_0 | select(arg_0, true, true), all(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false))))));
    var var_3 = u_input.a.x;
    let var_4 = Struct_4(~(~vec4<i32>(abs(2147483647i), -var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -17310i, var_2.b.a), vec4<i32>(var_0.x, var_2.b.a, -3675i, var_2.a.a)), ~(-14121i))), var_2.b.b, var_2, reverseBits(firstTrailingBit(2147483647i)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~(~abs(max(37379u, u_input.a.x))));
    var var_1 = vec3<bool>(true, true & (u_input.a.x > func_1(all(vec2<bool>(false, true)))), 40391u >= ~max(3705u, ~u_input.a.x));
    let var_2 = any(vec3<bool>(!(var_1.x | false), !any(select(var_1.yx, vec2<bool>(var_1.x, var_1.x), true)), _wgslsmith_f_op_f32(round(-1455f)) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1877f), -959f))));
    let var_3 = Struct_1(~(-2147483647i), !(!(!(!vec3<bool>(true, false, var_2)))));
    let var_4 = vec2<i32>(abs(0i), var_3.a);
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 1f) - vec2<f32>(268f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 717f), -937f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1709f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1075f, 968f)))) - vec2<f32>(_wgslsmith_f_op_f32(169f + -1550f), 976f)) - vec2<f32>(-932f, 262f)));
    var var_6 = Struct_4(abs(_wgslsmith_div_vec4_i32(abs(vec4<i32>(var_4.x, var_4.x, -2147483647i, -1405i) >> (u_input.a % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-19765i, -1i, var_3.a, var_3.a), abs(vec4<i32>(var_4.x, 0i, var_3.a, var_4.x)), -vec4<i32>(-1i, 2945i, var_4.x, -19379i)))), vec3<bool>(var_3.b.x, true, true), Struct_2(var_3, Struct_1(var_3.a, vec3<bool>(var_3.b.x, select(var_3.b.x, var_3.b.x, var_2), var_1.x || true))), -_wgslsmith_add_i32(2147483647i, -(15938i & var_3.a)));
    let var_7 = u_input.a.wzy >> (_wgslsmith_mult_vec3_u32(select(~select(u_input.a.ywx, vec3<u32>(u_input.a.x, u_input.a.x, 1u), var_3.b), select(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 1u), var_6.b) << (u_input.a.yzw % vec3<u32>(32u)), true), vec3<u32>(abs(0u), firstLeadingBit(u_input.a.x), ~(~u_input.a.x))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_clamp_i32(~(~var_3.a), 5930i, var_4.x), max(reverseBits(62338i), -1i) << ((69246u << (max(23292u, var_7.x) % 32u)) % 32u)));
}

