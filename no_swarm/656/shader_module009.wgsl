struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: vec4<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32) -> vec3<bool> {
    global2 = ~vec4<u32>(countOneBits(1u), reverseBits(0u), 4294967295u, ~62506u);
    global2 = vec4<u32>(_wgslsmith_sub_u32(19471u | ~u_input.a.x, firstLeadingBit(32870u)), ~global2.x, _wgslsmith_sub_u32(u_input.a.x, countOneBits(u_input.a.x)), global0.d);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1412f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, -863f) * -1282f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -802f))))), global0.b, select(countOneBits(vec3<i32>(select(2147483647i, global0.c.x, arg_0), ~global0.c.x, u_input.c)), abs(-vec3<i32>(-2147483647i, -13376i, global0.c.x) ^ global0.c), !select(vec3<bool>(global0.b.x, false, arg_0), global0.b, false)), 1u);
    global1 = select(-11609i < max(select(-u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, u_input.c, 0i, 1i), vec4<i32>(27391i, 1i, global0.c.x, -14386i)), global0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, 2147483647i, -8127i, 26913i), vec4<i32>(668i, 1i, -1i, 48226i)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(47555u, 0u), vec2<u32>(arg_1, 66589u)) % 32u)), any(vec3<bool>(arg_0 && !global0.b.x, true, !(!var_0.b.x))), true);
    global1 = arg_0;
    return global0.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<u32>) -> vec4<u32> {
    let var_0 = ~countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 105079u, arg_0.d), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.d, 0u), vec3<u32>(4294967295u, global2.x, arg_2))), ~global0.d, ~(~u_input.a.x), 1u >> (global2.x % 32u)));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec2_i32(~(-vec2<i32>(54164i, global0.c.x) ^ abs(arg_1)), vec2<i32>(~(i32(-1i) * -872i), firstTrailingBit(67339i)) & ((-vec2<i32>(-13668i, arg_0.c.x) | vec2<i32>(-14205i, global0.c.x)) >> (var_0.xy % vec2<u32>(32u))));
    global1 = abs(((arg_0.c.x | -30693i) | select(u_input.b.x, global0.c.x, true)) | ((arg_0.c.x >> (1u % 32u)) >> (0u % 32u))) < (_wgslsmith_clamp_i32(-arg_0.c.x | ~global0.c.x, 13203i, arg_1.x) | var_1.c.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1622f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f * global0.a))))), var_1.b, firstTrailingBit(-(~vec3<i32>(u_input.c, -28640i, 35769i))), ~abs(arg_2));
    return var_0 << (vec4<u32>(_wgslsmith_mod_u32(var_1.d, 1u), ~(~(~1u)), 5749u, min(76817u, _wgslsmith_div_u32(25685u, var_1.d) | ~global2.x)) % vec4<u32>(32u));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(~func_4(Struct_1(global0.a, func_3(true, global0.d), u_input.b, ~global2.x), reverseBits(vec2<i32>(u_input.d, -12185i)), 26230u, ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global0.d, global0.d), vec3<u32>(u_input.a.x, u_input.a.x, global0.d))), vec4<u32>(global0.d, 1u >> ((global0.d << (global0.d % 32u)) % 32u), ~(~u_input.a.x), countOneBits(global0.d)) >> (countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(14242u, global0.d, global0.d, global0.d), _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 38002u, u_input.a.x, global0.d), vec4<u32>(4294967295u, u_input.a.x, global0.d, global0.d)))) % vec4<u32>(32u)));
    var_0 = u_input.a.x;
    var var_1 = -828f;
    var var_2 = true;
    var var_3 = u_input.b;
    return !vec4<bool>(global2.x <= ~func_4(Struct_1(global0.a, global0.b, vec3<i32>(2147483647i, -1i, var_3.x), 4294967295u), vec2<i32>(u_input.c, 1i), 19344u, vec3<u32>(global0.d, 2417u, u_input.a.x)).x, false, true, global0.b.x);
}

fn func_1() -> i32 {
    global1 = all(select(vec4<bool>(-1000f <= global0.a, any(!global0.b), global0.b.x, all(!vec4<bool>(false, global0.b.x, global0.b.x, false))), vec4<bool>(false, global0.b.x, any(global0.b), true), func_2(global0.c.x)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-344f, global0.a)))), vec3<bool>(true, !(!global0.b.x) & !global0.b.x, !(_wgslsmith_f_op_f32(-global0.a) != _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, global0.c.x, max(-1i, -2147483647i)), -min(vec3<i32>(global0.c.x, global0.c.x, 2147483647i) >> (global2.zxx % vec3<u32>(32u)), global0.c)), 4294967295u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1325f), vec3<bool>(var_0.b.x, true, true), global0.c, 108931u);
    var var_2 = var_0;
    global2 = select(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_1.d, var_1.d, 38915u, 80731u)), max(~(vec4<u32>(global2.x, 4294967295u, 63890u, 937u) << (vec4<u32>(var_1.d, 1u, global0.d, var_0.d) % vec4<u32>(32u))), ~func_4(Struct_1(var_2.a, var_0.b, global0.c, 1u), var_1.c.yy, 1u, vec3<u32>(1u, 75148u, 0u))), vec4<u32>(36729u, ~4294967295u, var_0.d, 1u)), vec4<u32>(1u, 14093u, ~global0.d, ~reverseBits(_wgslsmith_sub_u32(var_2.d, 0u))), !(!(var_0.b.x & (var_1.a < -422f))));
    return min(var_2.c.x, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec3<i32>(u_input.d, 52193i, func_1()));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -1736f, 1017f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(488f, 640f, -1520f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 522f, global0.a))))));
    global2 = _wgslsmith_sub_vec4_u32(~select(~vec4<u32>(0u, 22982u, 0u, global0.d), ~vec4<u32>(u_input.a.x, 1087u, global2.x, 0u), true & global0.b.x), vec4<u32>(global0.d, ~57u, firstLeadingBit(global0.d), global2.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * -1887f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(267f - -1745f) - -395f))), global0.b, vec3<i32>(-1i) * -u_input.b, 25248u);
    let var_3 = max(_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.d, 26792u, global0.d, u_input.a.x), vec4<u32>(77730u, var_2.d, global0.d, u_input.a.x)) >> (~reverseBits(vec4<u32>(var_2.d, 59654u, var_2.d, u_input.a.x)) % vec4<u32>(32u)), ~(~(~vec4<u32>(global2.x, 4294967295u, global2.x, 1u)))), vec4<u32>(select(~(~var_2.d), ~_wgslsmith_clamp_u32(23974u, u_input.a.x, u_input.a.x), global0.b.x), global0.d, global0.d, u_input.a.x));
    var var_4 = var_2.c;
    var_0 = max(firstLeadingBit(~(-(~var_2.c))), vec3<i32>(-1i) * -max(vec3<i32>(var_4.x, -2782i, global0.c.x) << (var_3.yyy % vec3<u32>(32u)), -var_2.c));
    global2 = max(reverseBits(vec4<u32>(~(~global2.x), 1u, select(~global2.x, countOneBits(u_input.a.x), any(vec4<bool>(true, var_2.b.x, global0.b.x, true))), abs(~global0.d))), var_3 & vec4<u32>(_wgslsmith_mult_u32(1u, reverseBits(5481u)), ~global0.d, _wgslsmith_dot_vec4_u32(select(vec4<u32>(18578u, var_2.d, u_input.a.x, var_2.d), var_3, vec4<bool>(true, var_2.b.x, var_2.b.x, false)), ~var_3), ~_wgslsmith_dot_vec4_u32(vec4<u32>(117030u, global2.x, 12647u, 1u), var_3)));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f + global0.a)), func_3(false, u_input.a.x), select(_wgslsmith_mod_vec3_i32(-var_2.c ^ ~vec3<i32>(var_4.x, 1i, 2147483647i), vec3<i32>(var_4.x, reverseBits(var_0.x), var_0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, abs(-7539i), abs(-2263i)), abs(~global0.c)), var_2.b), reverseBits(82460u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-142f, var_5.a, var_5.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, var_5.a, global0.a)), select(vec3<bool>(false, false, true), vec3<bool>(global0.b.x, var_5.b.x, false), global0.b))), vec3<f32>(_wgslsmith_f_op_f32(var_1.x - 392f), _wgslsmith_f_op_f32(f32(-1f) * -363f), 1379f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, var_2.a, -1077f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-770f, -113f, -1223f), vec3<f32>(1873f, 502f, var_2.a), var_5.b.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(383f, var_5.a, 410f), vec3<f32>(138f, 1433f, 1893f))))), vec3<bool>(any(global0.b.yz), select(false, false, global0.b.x), global0.b.x | true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 1f), 41273i, vec4<i32>(_wgslsmith_clamp_i32(1i, abs(~12324i), u_input.d), var_5.c.x, global0.c.x, 0i));
}

