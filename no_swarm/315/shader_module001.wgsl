struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(~firstLeadingBit(vec4<i32>(0i, firstTrailingBit(5350i), 1i, abs(23731i))), !vec4<bool>(select(true, false, false), _wgslsmith_f_op_f32(ceil(488f)) >= _wgslsmith_f_op_f32(sign(872f)), true, false), true, _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), 16923i, 1i));
    let var_1 = firstTrailingBit(~(~u_input.b.zw));
    let var_2 = Struct_2(vec4<i32>(_wgslsmith_clamp_i32(-1i, var_0.a.x, var_0.a.x), -21099i, abs(firstLeadingBit(var_0.a.x >> (21857u % 32u))), var_0.d), select(select(var_0.b, vec4<bool>(!var_0.c, var_0.c, true, any(var_0.b.zw)), any(select(var_0.b.yxw, var_0.b.yww, vec3<bool>(false, var_0.c, true)))), !select(select(vec4<bool>(false, var_0.b.x, var_0.c, var_0.c), vec4<bool>(true, true, var_0.c, var_0.b.x), var_0.b), vec4<bool>(false, true, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.c, var_0.b.x, var_0.b.x)), var_0.b.x), !(_wgslsmith_mod_u32(max(1u, 103604u), _wgslsmith_mult_u32(var_1.x, u_input.b.x)) <= select(_wgslsmith_clamp_u32(0u, 4294967295u, var_1.x), 29157u, var_0.b.x)), _wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(firstTrailingBit(var_0.d), -var_0.d & var_0.d)));
    let var_3 = var_2.b.yxz;
    let var_4 = Struct_2(firstLeadingBit(vec4<i32>(-51082i, -16871i, var_2.a.x, reverseBits(-1i))) | firstTrailingBit(var_2.a), var_0.b, true, var_0.a.x);
    return abs(1i);
}

fn func_4(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_add_vec4_i32(max(vec4<i32>(arg_0.x, arg_0.x, 22113i, arg_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 2147483647i), vec4<i32>(422i, arg_0.x, arg_0.x, arg_0.x))) >> (u_input.b % vec4<u32>(32u)), -countOneBits(vec4<i32>(arg_0.x, arg_0.x, 17160i, -13809i) & vec4<i32>(arg_0.x, -2147483647i, 51528i, arg_0.x))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, any(vec2<bool>(false, true))), true), !(!(!any(vec3<bool>(true, true, false)))), arg_0.x);
    let var_1 = 28993u;
    var var_2 = var_0;
    let var_3 = Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, countOneBits(~arg_0.x), 0i, ~1i), reverseBits(vec4<i32>(~arg_0.x, 11639i, var_2.a.x, firstTrailingBit(-1i)))), vec4<bool>(var_2.c, !var_0.b.x, !(_wgslsmith_f_op_f32(round(-770f)) < _wgslsmith_f_op_f32(abs(716f))), var_0.b.x || var_2.c), select(true, false, select(true, any(vec2<bool>(true, var_0.c)) & (true || var_2.c), all(var_0.b.yx) || true)), firstTrailingBit(var_2.a.x & arg_0.x) >> (reverseBits(_wgslsmith_div_u32(~28846u, var_1 | u_input.a.x)) % 32u));
    var var_4 = var_0.b.x;
    return vec4<bool>(false, !all(var_0.b.zw), all(vec2<bool>(true, true)), select(true, var_0.b.x, true));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = !func_4(_wgslsmith_add_vec3_i32(max(arg_1.yxw | arg_1.wxy, ~arg_1.wzy), vec3<i32>(i32(-1i) * -33339i, arg_0.x >> (25997u % 32u), func_3())));
    var_0 = select(vec4<bool>(select(_wgslsmith_clamp_i32(arg_1.x, arg_1.x, 4936i) > -1i, var_0.x, var_0.x), any(select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false)), !vec4<bool>(var_0.x, var_0.x, true, var_0.x))), (-595f <= _wgslsmith_f_op_f32(select(-531f, 578f, var_0.x))) || any(vec2<bool>(false, var_0.x)), all(var_0.xz)), vec4<bool>(!any(vec4<bool>(true, true, true, true)), true, false, true), vec4<bool>(all(select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, false)), vec4<bool>(false, var_0.x, var_0.x, true), !vec4<bool>(true, var_0.x, false, true))), var_0.x, var_0.x, var_0.x));
    var var_1 = vec4<f32>(544f, _wgslsmith_f_op_f32(f32(-1f) * -184f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1329f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) + 300f), false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1468f, -1333f)) + _wgslsmith_f_op_f32(-854f - 515f)))));
    let var_2 = arg_1.x;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x)))) - 380f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-233f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(238f))))))));
    return u_input.a.x;
}

fn func_1() -> bool {
    var var_0 = min(~u_input.b.x, 42357u);
    var var_1 = max(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b.x << (u_input.b.x % 32u), ~2354u), countOneBits(0u)), vec2<u32>(~53250u, 4294967295u)), u_input.a.xy);
    let var_2 = (reverseBits(vec4<u32>(var_1.x << (u_input.a.x % 32u), 4294967295u, 4294967295u, var_1.x)) & select(vec4<u32>(_wgslsmith_mod_u32(17311u, u_input.a.x), _wgslsmith_div_u32(0u, u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, var_1.x), var_1.x << (var_1.x % 32u)), vec4<u32>(1243u, _wgslsmith_mult_u32(var_1.x, u_input.a.x), ~4294967295u, var_1.x), vec4<bool>(true, true, true, true))) | ~(~vec4<u32>(u_input.b.x, 0u, firstTrailingBit(20550u), func_2(vec4<i32>(1i, -27370i, -1i, -19410i), vec4<i32>(46220i, 35876i, 2459i, 1i))));
    var_1 = u_input.b.ww;
    let var_3 = 100294u;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1300f * 897f)), -214f);
    var var_1 = _wgslsmith_mod_vec2_i32(~(~vec2<i32>(~(-1i), i32(-1i) * -1i)), vec2<i32>(39266i, i32(-1i) * -(~(-32394i))));
    let var_2 = vec2<bool>(true, func_1());
    var_1 = vec2<i32>(min(_wgslsmith_div_i32(1i, var_1.x), ~firstTrailingBit(var_1.x)), -var_1.x);
    var_1 = ~abs(-countOneBits(abs(vec2<i32>(var_1.x, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(~(~vec3<i32>(var_1.x, 34384i, var_1.x))), u_input.b.x << (_wgslsmith_div_u32(0u, ~(~15514u)) % 32u), vec4<u32>(u_input.b.x, u_input.a.x, abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.b.x >> (51320u % 32u))), 12952u), ~max(~(u_input.b.x ^ 1556u), ~(u_input.b.x >> (4294967295u % 32u))));
}

