struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: i32) -> vec3<u32> {
    var var_0 = !vec2<bool>(any(!vec3<bool>(global0.b.x, global0.b.x, false)), true);
    let var_1 = abs(~countOneBits(vec4<i32>(abs(2147483647i), u_input.a.x, firstLeadingBit(0i), i32(-1i) * -2147483647i)));
    global0 = Struct_1(vec2<u32>(~countOneBits(1u), abs(_wgslsmith_dot_vec2_u32(u_input.b.zx, arg_0.yz))) >> (global0.a % vec2<u32>(32u)), select(global0.b, !select(select(vec2<bool>(false, true), vec2<bool>(var_0.x, global0.b.x), false), global0.b, var_0.x), global0.b.x), var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(global0.d)), vec2<f32>(global0.d.x, -789f), vec2<bool>(true, global0.b.x))))) * _wgslsmith_f_op_vec2_f32(exp2(global0.d))), _wgslsmith_div_u32(_wgslsmith_mod_u32(31401u, _wgslsmith_add_u32(arg_0.x, 12794u)), ~firstTrailingBit(0u)));
    let var_2 = u_input.b;
    return _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(max(~arg_0.wyy, vec3<u32>(0u, 3378u, var_2.x)), ~reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 7872u)), ~(~vec3<u32>(0u, 1u, arg_1.x))), vec3<u32>(_wgslsmith_div_u32(69922u, u_input.b.x), min(arg_1.x, 27718u), 74838u) | arg_0.xzz) & var_2.zxy;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_dot_vec3_u32(func_3(~(~u_input.b), select(firstLeadingBit(vec2<u32>(41632u, global0.e)), vec2<u32>(30201u, 29512u), vec2<bool>(true, false)), _wgslsmith_clamp_i32(u_input.a.x ^ global0.c.x, global0.c.x, -2147483647i)), ~u_input.b.xzw));
    global0 = Struct_1(u_input.b.xz, !select(select(vec2<bool>(global0.b.x, global0.b.x), !vec2<bool>(true, global0.b.x), u_input.a.x <= global0.c.x), global0.b, false), ~firstTrailingBit(vec4<i32>(-11173i, u_input.a.x, ~(-13958i), _wgslsmith_dot_vec3_i32(vec3<i32>(-50104i, u_input.a.x, u_input.a.x), u_input.a.wyy))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_div_f32(-144f, _wgslsmith_f_op_f32(global0.d.x - -2543f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(236f, _wgslsmith_f_op_f32(sign(-849f)), global0.b.x)))), ~0u);
    global0 = Struct_1(min(u_input.b.xw, u_input.b.xx), global0.b, _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, 1i), 21697i), 1i, global0.c.x, -abs(u_input.a.x)), max(abs(firstLeadingBit(global0.c)), _wgslsmith_div_vec4_i32(-u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -5311i, global0.c.x) << (u_input.b % vec4<u32>(32u))))), vec2<f32>(_wgslsmith_f_op_f32(-474f + _wgslsmith_f_op_f32(f32(-1f) * -732f)), _wgslsmith_f_op_f32(sign(-2266f))), ~(~global0.a.x) | _wgslsmith_dot_vec2_u32(min(u_input.b.zz, ~global0.a), vec2<u32>(49458u, 37544u) >> (u_input.b.wy % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.d.x, global0.d.x, -215f, -893f), vec4<f32>(-1475f, global0.d.x, 1392f, global0.d.x))))), vec4<f32>(-1287f, _wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(arg_0.x + -689f), global0.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(455f, _wgslsmith_f_op_f32(arg_0.x * -125f), _wgslsmith_f_op_f32(trunc(-1769f)), _wgslsmith_f_op_f32(-168f - arg_0.x))))));
    let var_2 = Struct_1(select(global0.a, _wgslsmith_div_vec2_u32(global0.a, ~func_3(u_input.b, global0.a, 1626i).xz), global0.b), global0.b, global0.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-531f, 1000f) * vec2<f32>(var_1.x, var_1.x)))), arg_0)), min(0u, ~(~(~12788u))));
    return Struct_1(~(~vec2<u32>(8832u, 0u << (1u % 32u))), select(select(select(global0.b, !vec2<bool>(var_2.b.x, false), any(vec4<bool>(global0.b.x, true, var_2.b.x, false))), select(var_2.b, vec2<bool>(var_2.b.x, true), !vec2<bool>(global0.b.x, var_2.b.x)), global0.b.x), global0.b, select(vec2<bool>(select(var_2.b.x, false, global0.b.x), any(vec4<bool>(false, false, global0.b.x, true))), !(!var_2.b), any(!vec2<bool>(global0.b.x, true)))), vec4<i32>(var_2.c.x, -41746i, -1i, -32322i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, global0.d.x) - vec2<f32>(1080f, -2031f)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1490f + var_1.x), _wgslsmith_f_op_f32(arg_0.x * global0.d.x)), _wgslsmith_f_op_f32(max(var_1.x, -513f)))), ~_wgslsmith_add_u32(55526u, _wgslsmith_add_u32(62586u, global0.a.x)) | u_input.b.x);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec2<u32> {
    global0 = func_2(global0.d);
    global0 = func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.d), _wgslsmith_f_op_vec2_f32(-global0.d), !arg_2.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.d - vec2<f32>(-107f, 912f)), _wgslsmith_f_op_vec2_f32(-global0.d), select(vec2<bool>(true, arg_2.x), global0.b, true))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.d.x, -1131f), _wgslsmith_f_op_vec2_f32(select(global0.d, vec2<f32>(global0.d.x, global0.d.x), global0.b.x)))))));
    let var_0 = u_input.b.zw;
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(69724u, ~global0.e, ~(~u_input.b.x) << (_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_mult_u32(global0.a.x, 0u)) % 32u), 105856u), firstLeadingBit(vec4<u32>(firstTrailingBit(global0.e), func_3(countOneBits(vec4<u32>(4249u, 4294967295u, u_input.b.x, arg_1.x)), abs(vec2<u32>(29205u, global0.e)), _wgslsmith_sub_i32(u_input.a.x, -2147483647i)).x, _wgslsmith_dot_vec2_u32(arg_1 | arg_1, var_0 | var_0), firstLeadingBit(26726u))), select(~vec4<u32>(func_2(vec2<f32>(global0.d.x, 2356f)).e, ~arg_1.x, max(var_0.x, var_0.x), ~arg_1.x), ~firstLeadingBit(u_input.b), all(!arg_2) || any(select(arg_2, arg_2, vec4<bool>(false, arg_0, false, global0.b.x)))));
    global0 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, global0.d.x) * global0.d));
    return vec2<u32>(28783u, (func_3(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, global0.a.x, global0.a.x, var_1.x), vec4<u32>(var_1.x, 0u, var_0.x, u_input.b.x)), vec2<u32>(71250u, 0u) | var_0, u_input.a.x).x >> (u_input.b.x % 32u)) & 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    global0 = Struct_1(func_1(false, global0.a, select(select(select(vec4<bool>(false, global0.b.x, global0.b.x, false), vec4<bool>(var_0.x, true, true, global0.b.x), true), select(vec4<bool>(global0.b.x, true, global0.b.x, true), vec4<bool>(true, false, global0.b.x, global0.b.x), vec4<bool>(false, true, true, false)), global0.d.x >= global0.d.x), vec4<bool>(select(global0.b.x, global0.b.x, global0.b.x), true, u_input.a.x == -6539i, true), !var_0.x)), select(vec2<bool>(global0.b.x, global0.e <= (1u & u_input.b.x)), select(select(!vec2<bool>(global0.b.x, var_0.x), func_2(global0.d).b, global0.b), !func_2(vec2<f32>(global0.d.x, 1633f)).b, !global0.b), var_0.x), reverseBits(-(~vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, -1i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2016f))), global0.d.x)), max(u_input.b.x, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(global0.a.x, global0.e)))));
    global0 = Struct_1(vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(25825u, 11135u) << (global0.a % vec2<u32>(32u)), func_3(u_input.b, min(global0.a, vec2<u32>(global0.a.x, 0u)), abs(u_input.a.x)).xz)), select(!global0.b, global0.b, !(!global0.b)), select(u_input.a, func_2(vec2<f32>(_wgslsmith_f_op_f32(1516f * -1076f), _wgslsmith_f_op_f32(f32(-1f) * -386f))).c, all(select(select(vec4<bool>(true, global0.b.x, true, var_0.x), vec4<bool>(false, global0.b.x, var_0.x, true), vec4<bool>(var_0.x, false, global0.b.x, true)), select(vec4<bool>(false, true, false, global0.b.x), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), any(vec4<bool>(true, global0.b.x, false, var_0.x))))), global0.d, ~0u);
    global0 = func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1003f, 334f))));
    let var_1 = Struct_2(_wgslsmith_mod_u32(u_input.b.x, 1686u) ^ ~(~(~14212u)));
    global0 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.x, global0.d.x, global0.d.x, 336f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1316f, global0.d.x, global0.d.x, global0.d.x) + vec4<f32>(732f, 530f, global0.d.x, -1047f)), false)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.d.x, 1035f, global0.d.x, global0.d.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1069f, 1223f, 708f, -720f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-631f, 1000f, global0.d.x, global0.d.x), vec4<f32>(1028f, -443f, global0.d.x, -1019f), vec4<bool>(var_0.x, false, var_0.x, true))))))), u_input.a, func_2(global0.d).c.x, 16261i);
}

