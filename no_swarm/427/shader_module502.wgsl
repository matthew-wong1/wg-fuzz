struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(4294967295u, 0u, 1u, 27775u, 44620u, 1u, 54421u, 0u, 53658u, 16300u, 0u, 36820u, 4294967295u, 15113u, 0u, 26797u, 0u, 1u, 47399u, 10233u, 25157u, 4294967295u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec4<i32> {
    global0 = array<u32, 22>();
    var var_0 = ~global0[_wgslsmith_index_u32(4294967295u, 22u)];
    var var_1 = firstLeadingBit(~(~(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 22u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 22u)]) | select(vec4<u32>(34582u, global0[_wgslsmith_index_u32(u_input.c.x, 22u)], u_input.c.x, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 22u)], 11959u, u_input.c.x, 4294967295u), vec4<bool>(true, true, false, false)))));
    let var_2 = Struct_1(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_1.x, 22u)], 0u, 0u), select(vec3<u32>(53738u, var_1.x, 4294967295u), u_input.c, false), u_input.c >> (var_1.xyz % vec3<u32>(32u))), var_1.zyz)), vec3<f32>(-1390f, -1188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1158f))))), u_input.b.zz << (_wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(var_1.wz, u_input.c.xz), u_input.c.zz) % vec2<u32>(32u)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !(!((u_input.a >> (16901u % 32u)) < u_input.a)));
    let var_3 = var_2.b;
    return ~_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_add_vec4_i32(min(u_input.b, u_input.b), ~vec4<i32>(0i, u_input.a, -22819i, 18471i))), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(var_2.c.x & 1i, ~var_2.c.x, var_2.c.x << (u_input.c.x % 32u), 60684i)), u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    let var_0 = abs(select(abs(u_input.a) | (0i >> (_wgslsmith_dot_vec3_u32(arg_2.e, vec3<u32>(arg_2.e.x, 54243u, arg_3.a.x)) % 32u)), _wgslsmith_mult_i32(~(-8716i), ~_wgslsmith_sub_i32(-32109i, 15206i)), !all(vec3<bool>(false, arg_2.a.d, arg_2.a.d)) && all(vec3<bool>(false, arg_0.e, arg_2.a.d))));
    let var_1 = ~vec3<u32>(29248u, u_input.c.x, arg_0.a);
    global0 = array<u32, 22>();
    var var_2 = Struct_3(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(4294967295u, var_1.x), ~1u)), u_input.b.wzx, vec4<i32>((_wgslsmith_mult_i32(var_0, var_0) >> (arg_0.a % 32u)) ^ 10260i, -arg_2.a.c.x, arg_1.x, func_3().x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x))));
    var var_3 = arg_2;
    return arg_3.c.x;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = Struct_3(u_input.c.xx, -firstTrailingBit(firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.b.wzy, vec3<i32>(30251i, -1i, u_input.a)))), u_input.b, _wgslsmith_f_op_f32(-arg_1.b.x));
    return ~arg_1.c.x ^ _wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(var_0.b.x, arg_1.c.x)), ~_wgslsmith_add_vec2_i32(u_input.b.xz, arg_1.c) ^ -(~vec2<i32>(var_0.c.x, -2147483647i)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: Struct_3) -> i32 {
    var var_0 = i32(-1i) * -func_5(false, Struct_1(0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_3.d, arg_3.d) * vec3<f32>(arg_2.x, arg_3.d, 298f)), vec2<i32>(-25340i, -2147483647i), 1307f >= arg_0, select(false, true, false)), func_4(Struct_1(u_input.c.x, arg_2, u_input.b.wx, false, false), func_3(), Struct_2(Struct_1(global0[_wgslsmith_index_u32(72987u, 22u)], arg_2, vec2<i32>(u_input.b.x, arg_3.b.x), true, true), vec3<f32>(1000f, arg_1.x, -839f), arg_3.c, -2147483647i, vec3<u32>(0u, 1u, u_input.c.x)), arg_3));
    var_0 = min(_wgslsmith_dot_vec3_i32(vec3<i32>(-59223i, _wgslsmith_sub_i32(~2147483647i, func_3().x), -_wgslsmith_sub_i32(u_input.b.x, u_input.a)), -firstTrailingBit(reverseBits(arg_3.b))), _wgslsmith_mod_i32(~(_wgslsmith_add_i32(arg_3.b.x, u_input.b.x) >> (u_input.c.x % 32u)), abs(arg_3.b.x ^ ~2147483647i)));
    var_0 = u_input.a;
    let var_1 = Struct_1(arg_3.a.x, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_3.d - -420f))))), arg_3.d), u_input.b.wz, all(!vec3<bool>(true, select(true, false, true), all(vec4<bool>(false, false, false, true)))), false);
    var var_2 = vec2<bool>(select(all(select(vec3<bool>(true, true, true), !vec3<bool>(false, false, var_1.d), vec3<bool>(true, true, var_1.d))), true, true), true);
    return func_4(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), u_input.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(arg_2.x, arg_3.d, -1911f))), vec3<f32>(1493f, _wgslsmith_f_op_f32(f32(-1f) * -941f), arg_3.d), vec3<bool>(true, 0i <= var_1.c.x, 179f == arg_2.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, firstLeadingBit(-51103i)), select(abs(vec2<i32>(-1i, -2147483647i)), arg_3.c.ww, var_2.x)), any(select(vec2<bool>(var_2.x, false), vec2<bool>(true, false), var_1.e)), var_1.d), vec4<i32>(_wgslsmith_dot_vec2_i32(-u_input.b.xy, arg_3.c.xz), firstTrailingBit(-var_1.c.x), u_input.a, arg_3.b.x), Struct_2(var_1, arg_2, ~u_input.b, _wgslsmith_sub_i32(abs(0i), 35912i), vec3<u32>(~u_input.c.x, ~arg_3.a.x, _wgslsmith_add_u32(0u, ~0u))), arg_3);
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = ~vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(11575i, u_input.b.x)), ~vec2<i32>(-1i, arg_0)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(484f, arg_1.b.x) - _wgslsmith_f_op_vec2_f32(arg_1.b.yy - arg_1.b.yz))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.b.zz + arg_1.b.xz)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.a.b.yy - vec2<f32>(1467f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_1.b.x) * vec2<f32>(470f, -229f)))))))));
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    let var_2 = arg_1.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_2.b.x) + var_2.b.x), _wgslsmith_f_op_f32(ceil(var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1122f * -731f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), -401f, _wgslsmith_div_f32(182f, 728f), arg_1.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-585f, -923f, -448f, 720f), vec4<f32>(var_2.b.x, var_1.x, arg_1.b.x, var_1.x), select(vec4<bool>(var_2.e, true, false, false), vec4<bool>(var_2.e, true, false, false), vec4<bool>(true, false, arg_1.a.e, var_2.e))))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    var var_0 = any(vec4<bool>(false, select(true, any(select(vec2<bool>(arg_1.a.d, true), vec2<bool>(true, true), arg_1.a.e)), false), true, true));
    var var_1 = vec4<f32>(887f, arg_2.b.x, -287f, 452f);
    var var_2 = arg_2.b.x;
    var_2 = _wgslsmith_f_op_f32(-arg_2.b.x);
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_6(0i, Struct_2(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.xzz))), u_input.b ^ _wgslsmith_mod_vec4_i32(vec4<i32>(28868i, 78338i, -29606i, 42837i), u_input.b), func_2(var_1.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, -1039f) + vec2<f32>(-984f, -880f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1619f, arg_2.b.x, arg_2.b.x)), Struct_3(arg_1.e.yy, u_input.b.yzw, vec4<i32>(-67738i, -1i, 1i, -14681i), arg_2.b.x)), select(firstLeadingBit(vec3<u32>(8344u, 9297u, 71965u)), reverseBits(u_input.c), vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_2.b.x, arg_1.b.x)), 129f, -2989f, _wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(187f, arg_1.b.x, var_1.x, 628f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.b.x, 975f, var_1.x, arg_1.a.b.x)))))))));
    return Struct_3(vec2<u32>(global0[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_sub_u32(~(global0[_wgslsmith_index_u32(u_input.c.x, 22u)] & 7730u), arg_1.a.a)), vec3<i32>(min(arg_2.c.x, arg_1.a.c.x), _wgslsmith_mod_i32(arg_1.a.c.x, arg_1.d) ^ 38172i, 27710i), vec4<i32>(arg_2.c.x, func_5(arg_1.a.d, arg_2, arg_1.a.c.x) << (~18755u % 32u), -_wgslsmith_dot_vec3_i32(arg_0, arg_1.c.yxz), func_5(arg_1.a.d, arg_2, func_3().x)) ^ (u_input.b ^ ~vec4<i32>(u_input.b.x, 21137i, 38453i, u_input.a)), _wgslsmith_f_op_f32(-arg_2.b.x));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<i32>) -> vec3<f32> {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1123f)) - _wgslsmith_f_op_f32(-433f - arg_2.a.b.x));
    global0 = array<u32, 22>();
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c.x >> (~u_input.c.x % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_7(func_1(vec3<i32>(u_input.b.x, u_input.a, u_input.b.x) ^ vec3<i32>(8927i, 2147483647i, u_input.a), Struct_2(Struct_1(u_input.c.x, vec3<f32>(-1693f, -838f, -1000f), vec2<i32>(u_input.b.x, u_input.a), false, true), vec3<f32>(-530f, 621f, -363f), u_input.b, -2147483647i, vec3<u32>(29366u, 1u, 74623u)), Struct_1(u_input.c.x, vec3<f32>(-354f, -1340f, -981f), u_input.b.xx, true, false)), func_1(select(vec3<i32>(1i, -1i, u_input.a), u_input.b.wxz, true), Struct_2(Struct_1(5383u, vec3<f32>(-458f, 1128f, -1000f), vec2<i32>(u_input.b.x, u_input.b.x), false, true), vec3<f32>(-2127f, -1022f, 313f), u_input.b, 2147483647i, vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 22u)], 0u)), Struct_1(1u, vec3<f32>(1001f, -1498f, -929f), u_input.b.yw, false, false)), Struct_2(Struct_1(14606u, vec3<f32>(-874f, 1483f, 1211f), vec2<i32>(u_input.b.x, -31636i), true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-878f, 144f, 552f)), vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.a), ~26592i, _wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, u_input.c)), vec3<i32>(-24183i, func_2(-362f, vec2<f32>(870f, -1000f), vec3<f32>(595f, -615f, -620f), Struct_3(u_input.c.yy, u_input.b.yww, vec4<i32>(u_input.b.x, u_input.a, -1i, 59327i), 605f)), ~17543i)))), u_input.b.wy, true, true);
    global0 = array<u32, 22>();
    let var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -34876i, 2147483647i), u_input.b), ~5022i, -u_input.a, _wgslsmith_clamp_i32(-2147483647i, 0i, u_input.b.x)) | vec4<i32>(0i, var_0.c.x, u_input.a, abs(0i))), 27287i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.b.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b.x, var_0.b.x)))))), var_1.zz, global0[_wgslsmith_index_u32(26802u, 22u)], -vec3<i32>(0i | var_0.c.x, func_3().x, var_1.x));
}

