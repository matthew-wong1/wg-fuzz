struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = false != (~_wgslsmith_div_u32(abs(u_input.d.x), abs(u_input.a.x)) < _wgslsmith_sub_u32(~u_input.d.x ^ min(1u, 0u), ~100233u << ((arg_0.x >> (u_input.a.x % 32u)) % 32u)));
    var_0 = (1i >= arg_2) & true;
    var_0 = arg_2 < arg_3.a.x;
    let var_1 = Struct_2(all(vec4<bool>(true, true, true, true)) | select(false, true || all(vec3<bool>(false, false, false)), true), Struct_1(arg_3.a));
    var_0 = all(vec4<bool>(!(!any(vec3<bool>(var_1.a, var_1.a, false))), !(var_1.a || var_1.a) || true, var_1.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(7845u, arg_0.x), vec2<u32>(4294967295u, u_input.d.x)) < arg_0.x));
    return arg_0 & _wgslsmith_div_vec4_u32(select(arg_0, ~vec4<u32>(88886u, arg_0.x, 1u, u_input.a.x), true), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(select(arg_0, vec4<u32>(4294967295u, u_input.a.x, 32037u, arg_0.x), vec4<bool>(var_1.a, false, var_1.a, false)), arg_0), vec4<u32>(u_input.d.x, ~u_input.d.x, ~0u, countOneBits(1u)), max(vec4<u32>(5465u, 0u, u_input.a.x, 47124u) << (arg_0 % vec4<u32>(32u)), min(vec4<u32>(arg_0.x, u_input.d.x, arg_0.x, 3396u), vec4<u32>(u_input.d.x, 1u, 1u, arg_0.x)))));
}

fn func_4(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_2(any(select(vec4<bool>(select(true, true, true), all(vec4<bool>(true, false, true, true)), true, 1i == u_input.c), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), Struct_1(vec2<i32>(u_input.c, min(u_input.c, ~u_input.c))));
    let var_1 = Struct_1(-firstTrailingBit(~firstLeadingBit(vec2<i32>(2147483647i, -3196i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-374f, 242f, 678f, -836f), vec4<f32>(-746f, -541f, 138f, 905f))) - vec4<f32>(908f, 1000f, 146f, 898f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-508f, -1083f, -209f, 556f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-777f, -376f, 1153f, 234f) + vec4<f32>(-877f, -1000f, 169f, 1126f)))), true)) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f)))))), 1772f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-266f, _wgslsmith_f_op_f32(floor(-968f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-221f)))));
    var_2 = vec4<f32>(884f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.x, var_2.x), var_2.x, var_0.a)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) + _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(abs(var_2.x))))), _wgslsmith_f_op_f32(-var_2.x)));
    let var_3 = Struct_3(Struct_2(true, var_0.b), abs(vec3<i32>(reverseBits(~u_input.e.x), var_0.b.a.x, firstTrailingBit(_wgslsmith_sub_i32(0i, var_0.b.a.x)))), var_1, arg_0.x, Struct_1(var_1.a));
    return vec2<bool>(~select(~arg_0.x, arg_0.x, !var_3.a.a) == _wgslsmith_mult_u32(55072u, ~_wgslsmith_div_u32(var_3.d, arg_0.x)), var_0.a);
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_4(Struct_2(all(vec2<bool>(true, true)), Struct_1(~u_input.b.xx)), Struct_1(-select(u_input.e, u_input.e, any(vec2<bool>(true, false)))), vec3<u32>(2810u, ~_wgslsmith_div_u32(105991u, u_input.d.x) << (_wgslsmith_mult_u32(~u_input.d.x, ~u_input.d.x) % 32u), _wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, 4294967295u), ~u_input.d.xz), abs(vec2<u32>(u_input.a.x, u_input.a.x) & u_input.d.xz))));
    let var_1 = 0u;
    var var_2 = select(vec2<bool>((1i & (-2147483647i & var_0.a.b.a.x)) == -1i, false), select(vec2<bool>(any(vec4<bool>(false, var_0.a.a, true, var_0.a.a)), var_0.a.a), !func_4(func_3(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), var_0.b, 1i, Struct_1(var_0.a.b.a))), true), true);
    var_2 = vec2<bool>(true, false);
    var var_3 = _wgslsmith_f_op_f32(-890f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-207f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2947f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2426f * 1000f) - _wgslsmith_div_f32(1544f, -885f))))));
    return vec4<i32>(_wgslsmith_div_i32(reverseBits(2147483647i), _wgslsmith_mod_i32(0i, var_0.b.a.x)), u_input.e.x & u_input.e.x, _wgslsmith_mult_i32(10102i, _wgslsmith_mult_i32(-u_input.b.x, i32(-1i) * -var_0.b.a.x)), 2147483647i);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_1(vec2<i32>(-1280i, _wgslsmith_mod_i32(abs(arg_0.x), ~(i32(-1i) * -1i))));
    let var_1 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 33227u, 40869u), countOneBits(vec3<u32>(5925u, 39269u, 52449u)))), firstLeadingBit(vec3<u32>(max(13079u, 65971u), abs(1u), ~15454u)), vec3<u32>(~1u, ~countOneBits(u_input.d.x), 1u)) >> (u_input.a % vec3<u32>(32u));
    var var_2 = func_2().x;
    var var_3 = Struct_3(Struct_2(all(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))), var_0), countOneBits(select(arg_0, abs(u_input.b), vec3<bool>(false, true, true))) ^ ((_wgslsmith_mult_vec3_i32(u_input.b, arg_0) & countOneBits(vec3<i32>(var_0.a.x, arg_0.x, u_input.e.x))) & ~firstTrailingBit(u_input.b)), var_0, 4294967295u, var_0);
    var var_4 = var_0;
    return var_3.a;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-639f, _wgslsmith_div_f32(937f, 280f))))));
    var var_1 = Struct_2(select(arg_0.x, !select(true, true, arg_2.a) == all(arg_0), false), Struct_1(vec2<i32>(-1i, -12594i) << (u_input.d.yx % vec2<u32>(32u))));
    var var_2 = u_input.b.xy & max(countOneBits(select(-u_input.b.yz, _wgslsmith_mult_vec2_i32(arg_2.b.a, vec2<i32>(u_input.e.x, arg_1.b.a.x)), arg_0.x)), _wgslsmith_sub_vec2_i32(func_2().xx, var_1.b.a));
    let var_3 = u_input.a.x;
    let var_4 = Struct_4(Struct_2(true, Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b.a.x, -1i), u_input.e, arg_2.b.a) << (~vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u)))), Struct_1(arg_1.b.a), u_input.d);
    return func_5(u_input.b, firstTrailingBit(select(abs(vec4<i32>(-41261i, var_1.b.a.x, arg_2.b.a.x, var_2.x) | vec4<i32>(30661i, -20244i, arg_1.b.a.x, var_2.x)), vec4<i32>(-1i, var_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), var_1.b.a), -2147483647i | var_2.x), !(!vec4<bool>(arg_0.x, arg_2.a, true, arg_2.a)))));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_2 {
    return func_6(select(!vec3<bool>(arg_1.x > arg_1.x, any(vec3<bool>(arg_0, false, true)), arg_0), select(!vec3<bool>(true, arg_0, false), vec3<bool>(true, any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), arg_0), true), vec3<bool>(true, !(arg_0 || arg_0), all(vec2<bool>(false, arg_0)))), func_5(~arg_1.zzx, func_2()), func_5(firstLeadingBit((vec3<i32>(u_input.e.x, 18909i, arg_1.x) | arg_1.zxw) | ~arg_1.wyw), arg_1));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = func_6(vec3<bool>(arg_2.a, any(!select(vec4<bool>(arg_0.a, true, true, arg_1.a), vec4<bool>(arg_2.a, false, false, arg_2.a), arg_1.a)), ~_wgslsmith_mod_i32(1i, arg_2.b.a.x) > 6698i), arg_2, func_1(true, vec4<i32>(_wgslsmith_div_i32(u_input.c, -49415i), 1i, firstTrailingBit(-1i), 1i)));
    let var_1 = arg_2.b;
    var var_2 = (-reverseBits(i32(-1i) * -7614i) >> (0u % 32u)) < ~arg_2.b.a.x;
    var_2 = _wgslsmith_f_op_f32(-3477f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(394f * -322f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(420f - -417f), -1509f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-268f))) - -196f));
    var var_3 = Struct_4(arg_1, Struct_1(arg_2.b.a), select(u_input.d, _wgslsmith_clamp_vec3_u32(abs(u_input.a), ~(~arg_3), vec3<u32>(arg_3.x, 16431u, 1u)), vec3<bool>(var_0.a || true, (arg_3.x > 0u) & any(vec3<bool>(false, var_0.a, arg_0.a)), _wgslsmith_clamp_i32(-1i, arg_0.b.a.x, -2206i) >= func_5(vec3<i32>(-34275i, 1i, arg_2.b.a.x), vec4<i32>(arg_0.b.a.x, 19717i, 2147483647i, arg_2.b.a.x)).b.a.x)));
    return func_6(vec3<bool>(true, true, true), Struct_2(func_6(vec3<bool>(!var_0.a, !arg_0.a, !arg_2.a), var_3.a, var_3.a).a, arg_0.b), func_5(vec3<i32>(var_3.a.b.a.x, ~0i, arg_0.b.a.x) & ~func_2().wyx, vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(206i, -17198i, 40512i)), ~vec3<i32>(var_0.b.a.x, 1i, -2147483647i)), func_5(firstLeadingBit(u_input.b), -vec4<i32>(0i, -1i, -53328i, 16522i)).b.a.x, -1i, -38386i))).b;
}

fn func_8(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(~_wgslsmith_add_vec2_i32(countOneBits(-vec2<i32>(0i, 10498i)), firstTrailingBit(u_input.b.zy) << (func_3(vec4<u32>(u_input.d.x, 0u, u_input.a.x, u_input.a.x), arg_0, 1i, Struct_1(vec2<i32>(-21649i, 46222i))).ww % vec2<u32>(32u))));
    var var_1 = _wgslsmith_add_i32(1i, -2147483647i);
    var_0 = arg_0;
    let var_2 = true;
    var var_3 = -arg_0.a.x;
    return Struct_2(false, func_7(Struct_2(false, arg_0), func_6(!(!vec3<bool>(var_2, var_2, var_2)), Struct_2(true, func_5(vec3<i32>(-14184i, -2147483647i, -1i), vec4<i32>(6382i, var_0.a.x, u_input.b.x, 13851i)).b), func_1(var_2, firstTrailingBit(vec4<i32>(u_input.c, -31305i, u_input.b.x, var_0.a.x)))), func_6(vec3<bool>(u_input.d.x == 49425u, var_2, true), func_1(true, countOneBits(vec4<i32>(19698i, -2147483647i, 2147483647i, var_0.a.x))), Struct_2(func_6(vec3<bool>(false, var_2, true), Struct_2(var_2, arg_0), Struct_2(true, arg_0)).a, Struct_1(var_0.a))), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_8(func_7(func_1(true, ~vec4<i32>(-2147483647i, 1i, u_input.b.x, u_input.c)), Struct_2(u_input.d.x <= 0u, Struct_1(u_input.e)), func_1(true, _wgslsmith_div_vec4_i32(vec4<i32>(-6284i, 83934i, u_input.e.x, u_input.e.x), vec4<i32>(39539i, u_input.e.x, u_input.c, u_input.b.x))), ~func_3(vec4<u32>(53608u, 92727u, 0u, 0u), Struct_1(u_input.b.yz), u_input.b.x, Struct_1(u_input.e)).zxy)), -(func_2().wwy >> (firstTrailingBit(~u_input.a) % vec3<u32>(32u))), func_5(~firstTrailingBit(select(vec3<i32>(u_input.e.x, u_input.c, -37228i), vec3<i32>(u_input.e.x, 23773i, u_input.b.x), false)), ~(~vec4<i32>(-4013i, -52770i, -1i, u_input.b.x))).b, u_input.d.x << (u_input.a.x % 32u), func_1(func_5(_wgslsmith_add_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(u_input.b, u_input.b)), reverseBits(~vec4<i32>(0i, -2147483647i, -2147483647i, -1i))).a, abs(vec4<i32>(u_input.b.x, 17442i, _wgslsmith_sub_i32(1i, u_input.b.x), u_input.b.x))).b);
    var var_1 = _wgslsmith_mod_u32(~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.xz, u_input.a.yy), ~0u)), 4294967295u);
    let var_2 = Struct_3(Struct_2(var_0.a.a, func_5(u_input.b, ~(-vec4<i32>(u_input.c, u_input.b.x, var_0.a.b.a.x, var_0.a.b.a.x))).b), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b.x, var_0.a.b.a.x, 10548i) | vec4<i32>(var_0.b.x, var_0.b.x, -1i, -1i), ~vec4<i32>(var_0.c.a.x, var_0.b.x, -16255i, u_input.e.x)), u_input.e.x, firstTrailingBit(-var_0.a.b.a.x)) & max(firstLeadingBit(vec3<i32>(42028i, u_input.e.x, var_0.b.x) >> (vec3<u32>(15349u, u_input.a.x, 1u) % vec3<u32>(32u))), ~vec3<i32>(-19050i, var_0.e.a.x, var_0.c.a.x)), func_5(~reverseBits(firstLeadingBit(var_0.b)), -(vec4<i32>(var_0.a.b.a.x, var_0.c.a.x, var_0.a.b.a.x, -12518i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.d, var_0.d, 0u, u_input.a.x), vec4<u32>(4294967295u, var_0.d, 4294967295u, 0u)) % vec4<u32>(32u)))).b, _wgslsmith_mult_u32(var_0.d | _wgslsmith_mult_u32(var_0.d, 0u), 100228u) << ((abs(u_input.a.x) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 5311u), u_input.d.yz) % 32u)) % 32u), var_0.e);
    var_0 = var_2;
    var var_3 = Struct_1(vec2<i32>(-2147483647i, -1i));
    let var_4 = var_0.e;
    let var_5 = var_0.b;
    let var_6 = -579f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_6, -1124f, var_6) + vec3<f32>(990f, var_6, var_6))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -853f, var_6), vec3<f32>(-323f, var_6, -403f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1515f, var_6, var_6) - vec3<f32>(var_6, var_6, var_6)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_6, var_6, -705f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-757f, var_6, var_6)))))), var_0.d, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, func_3(min(vec4<u32>(var_2.d, 59484u, 4294967295u, u_input.a.x), vec4<u32>(1u, var_2.d, u_input.d.x, 4294967295u)), var_2.e, -55629i, var_0.a.b).x), ~max(u_input.a << (u_input.a % vec3<u32>(32u)), vec3<u32>(76236u, var_0.d, var_2.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_6), var_6))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(139f, -908f))), var_6)));
}

