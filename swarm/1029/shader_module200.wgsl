struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<u32>) -> i32 {
    let var_0 = firstTrailingBit(-51197i);
    var var_1 = ~(~firstTrailingBit(21646i));
    var var_2 = ~vec4<u32>(u_input.e | _wgslsmith_mod_u32(u_input.b.x, arg_1), 21300u, _wgslsmith_div_u32(~u_input.e, 17390u ^ u_input.b.x), ~(~4294967295u)) >> (~(~(~vec4<u32>(4294967295u, 4294967295u, u_input.e, 34072u) >> (vec4<u32>(4294967295u, u_input.e, 4294967295u, u_input.a) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var_1 = 2147483647i;
    var_1 = reverseBits(18498i);
    return -var_0;
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: bool, arg_3: vec4<f32>) -> f32 {
    let var_0 = vec3<i32>(-arg_0, -32284i, 0i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1197f) * 1172f);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(select(-201f, _wgslsmith_f_op_f32(ceil(arg_3.x)), !arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, true)), _wgslsmith_f_op_f32(arg_3.x + -1377f))), _wgslsmith_f_op_f32(-arg_3.x)))));
    var var_3 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.c, firstTrailingBit(u_input.c)), var_0.x) << (21812u % 32u), min(0i, _wgslsmith_add_i32(-46086i, _wgslsmith_clamp_i32(arg_0 & var_0.x, 2147483647i, _wgslsmith_div_i32(15330i, -2147483647i)))), _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mult_i32(func_2(u_input.e, u_input.e, vec3<u32>(1u, 108254u, u_input.a)), 100240i)), firstTrailingBit(_wgslsmith_add_i32(3224i, -arg_0))));
    let var_4 = Struct_1(4294967295u, abs(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 0i) ^ var_0.zx, _wgslsmith_mod_vec2_i32(vec2<i32>(-4510i, -2147483647i), vec2<i32>(28462i, 2250i))) << (~u_input.b.yw % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(exp2(var_2.x));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = ~(-15078i);
    var_0 = _wgslsmith_add_i32(u_input.d.x, ~(-1092i));
    var var_1 = ~_wgslsmith_sub_i32(func_2(~u_input.a, ~4294967295u, vec3<u32>(11837u, ~0u, ~1u)), _wgslsmith_mod_i32(~(-20951i), func_2(49038u & arg_0.a, ~arg_3.a.a, vec3<u32>(86765u, 8211u, arg_2))));
    var_0 = ~1i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_1, -1990f))))))));
    return select(vec3<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x), select(vec3<bool>(~u_input.e <= _wgslsmith_sub_u32(1u, arg_2), !arg_3.b.x, (u_input.a >> (17481u % 32u)) < ~4294967295u), !(!(!arg_3.b)), !vec3<bool>(u_input.b.x <= 4294967295u, false, arg_3.a.b.x > u_input.c.x)), true);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = arg_3;
    let var_1 = -1i;
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2287f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-472f, -320f)), _wgslsmith_f_op_f32(-2569f * -292f))))) + _wgslsmith_f_op_f32(step(-395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(751f, -1752f, true))))))));
    var var_4 = arg_3.a;
    return u_input.c.wyw | ~(-u_input.d);
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = vec4<f32>(-132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-228f - 1479f) + 577f), 1499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f)));
    var var_1 = vec3<i32>(-_wgslsmith_sub_i32(_wgslsmith_div_i32(-28737i, _wgslsmith_mult_i32(-18309i, arg_0.b.x)), arg_0.b.x), ~func_2(~_wgslsmith_mod_u32(0u, arg_0.a), ~arg_0.a, ~vec3<u32>(63199u, 17801u, 0u) ^ ~vec3<u32>(53822u, u_input.b.x, 37591u)), arg_0.b.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-552f))));
    var_1 = func_5(any(func_4(Struct_1(~u_input.e, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(0i, -2147483647i), u_input.d.zz)), _wgslsmith_f_op_f32(func_3(arg_0.b.x, select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), true, vec4<f32>(var_2, var_2, var_0.x, -1479f))), _wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b), Struct_2(Struct_1(u_input.e, var_1.yy), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))))), -_wgslsmith_mod_i32(var_1.x, countOneBits(u_input.d.x)), 61893u, Struct_2(arg_0, vec3<bool>(all(vec3<bool>(true, true, true)), true, true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(var_2 + -1430f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(var_0.x + 212f)))), _wgslsmith_div_f32(528f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))), var_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zzw)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec3<bool>(false, -u_input.c.x < reverseBits(_wgslsmith_mod_i32(11355i, 3000i)), true));
    var var_1 = -u_input.c.zwx;
    var var_2 = -315f;
    var_1 = select(vec3<i32>(_wgslsmith_clamp_i32(u_input.d.x, 0i, -(~0i)), 1i, -2147483647i), select(_wgslsmith_add_vec3_i32(select(u_input.c.ywz, vec3<i32>(u_input.c.x, u_input.c.x, var_1.x), all(vec2<bool>(false, true))), select(vec3<i32>(0i, 2147483647i, var_1.x), ~vec3<i32>(var_1.x, -1i, var_1.x), func_1(Struct_1(58127u, u_input.d.xz)))), ~countOneBits(vec3<i32>(5821i, u_input.c.x, var_1.x)), false), any(vec2<bool>(all(vec4<bool>(true, var_0, var_0, var_0)), all(vec2<bool>(false, var_0)) == var_0)));
    var var_3 = select(!select(vec3<bool>(any(vec4<bool>(true, var_0, var_0, var_0)), var_0, var_0 | true), vec3<bool>(all(vec3<bool>(var_0, var_0, var_0)), true | var_0, var_0), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, var_0))), select(vec3<bool>(false, !var_0, true), vec3<bool>(true, true, any(!vec4<bool>(var_0, true, var_0, true))), func_4(Struct_1(~u_input.a, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, 21031i), u_input.c.yx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f + -1187f)), 242u, Struct_2(Struct_1(u_input.e, vec2<i32>(u_input.c.x, var_1.x)), vec3<bool>(true, true, true)))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(698f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-215f)) - -1000f)));
    var var_4 = !var_3.x;
    var var_5 = !(true && any(!vec2<bool>(var_3.x, true)));
    var var_6 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(703f, -341f, -1000f, 558f) - vec4<f32>(1060f, -1139f, 1720f, 433f)) * vec4<f32>(1f, 1f, 1f, 1f)))), vec3<i32>(-2147483647i, ~var_1.x, 12434i), u_input.b.x);
}

