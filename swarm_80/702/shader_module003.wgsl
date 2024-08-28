struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = vec3<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, true))), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false))), all(vec3<bool>(any(vec2<bool>(true, true)), true, ~arg_0.a.a.x >= (arg_1.d | -48726i))), _wgslsmith_clamp_u32(u_input.a.x, arg_1.b, 0u) >= firstLeadingBit(1u));
    let var_1 = vec3<bool>(true, all(select(!vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, false)))) != var_0.x, true);
    let var_2 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(i32(-1i) * -24793i, abs(arg_3.d) & ~arg_3.c.x), -arg_0.a.a.xx, _wgslsmith_add_vec2_i32(arg_1.a.a.xy, _wgslsmith_sub_vec2_i32(arg_3.c, arg_0.c) | ~arg_0.c) >> (abs(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a)) % vec2<u32>(32u)));
    var_0 = vec3<bool>(true, all(!vec2<bool>(var_0.x, any(vec4<bool>(var_1.x, var_0.x, var_1.x, var_1.x)))), var_1.x);
    var_0 = select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, false, false), var_1, false)), vec3<bool>(false, all(vec2<bool>(true, var_0.x)), true), all(!vec4<bool>(var_1.x, true, var_1.x, true))), var_1, var_0.x), select(vec3<bool>(var_0.x, false, _wgslsmith_f_op_f32(abs(arg_2.x)) >= _wgslsmith_f_op_f32(sign(arg_2.x))), select(select(var_1, !vec3<bool>(false, true, var_1.x), var_1.x), !var_1, vec3<bool>(true, false || var_0.x, all(vec3<bool>(false, var_0.x, true)))), !(!all(var_1))), false);
    return !select(var_1, select(var_1, select(vec3<bool>(true, var_1.x, var_1.x), select(var_1, var_1, false), vec3<bool>(var_0.x, false, false)), any(select(var_1, vec3<bool>(var_0.x, var_1.x, false), var_0.x))), select(true, all(!vec4<bool>(true, var_0.x, var_1.x, var_0.x)), _wgslsmith_f_op_f32(arg_2.x * 547f) != -696f));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_5) -> vec2<i32> {
    let var_0 = arg_1;
    let var_1 = any(arg_2.d.yx);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 1415f) * arg_2.c.x);
    let var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, _wgslsmith_mod_u32(59285u, arg_0.x), ~var_0.a, _wgslsmith_mult_u32(arg_0.x, arg_2.a)), _wgslsmith_mod_vec4_u32(max(vec4<u32>(25567u, arg_1.a, 0u, 163172u), vec4<u32>(42478u, var_0.a, u_input.a.x, var_0.a)), ~vec4<u32>(81966u, arg_2.a, arg_1.a, arg_2.a))) ^ ~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a, arg_0.x, arg_2.a, arg_2.a), vec4<u32>(1u, 18560u, 1u, arg_1.a))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 22392u << (_wgslsmith_mult_u32(arg_1.a, 32473u) % 32u), 4294967295u, 4294967295u), ~vec4<u32>(u_input.a.x, ~arg_2.a, 1u, ~arg_0.x)));
    var var_4 = ~_wgslsmith_dot_vec2_u32(countOneBits(reverseBits(u_input.a)), _wgslsmith_sub_vec2_u32(~vec2<u32>(29471u, var_3.x) >> (var_3.xz % vec2<u32>(32u)), (vec2<u32>(arg_0.x, arg_0.x) ^ var_3.yx) ^ var_3.yy));
    return var_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    let var_0 = vec2<i32>(arg_0.a.x, arg_0.a.x);
    let var_1 = select(!(!(u_input.a.x > _wgslsmith_div_u32(4294967295u, u_input.a.x))), !any(vec3<bool>(all(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, false, true)))), all(vec4<bool>(true, true, true, true)));
    let var_2 = Struct_1(arg_0.a, ~(-2147483647i), arg_1);
    var var_3 = Struct_4(25025u, func_4(vec2<u32>(arg_0.c.x, 1u), Struct_4(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a.x, var_2.c.x, u_input.a.x, 1u), vec4<u32>(1u, u_input.a.x, arg_1.x, 61326u)), vec4<u32>(arg_0.c.x, u_input.a.x, arg_1.x, 4294967295u)), var_0), Struct_5(u_input.a.x, ~arg_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1898f, -1000f, -1075f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(313f, -509f, -965f))), !func_3(Struct_3(Struct_2(vec3<i32>(var_0.x, var_2.a.x, arg_0.b)), 0u, var_0, -1i), Struct_3(Struct_2(arg_0.a.zyw), arg_0.c.x, arg_0.a.yx, var_2.a.x), vec2<f32>(-697f, 1449f), Struct_3(Struct_2(var_2.a.ywx), 6626u, vec2<i32>(24682i, 0i), 2147483647i)), vec4<i32>(-800i & var_0.x, _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(30370i, 2147483647i)), arg_0.b, -1i | var_2.b))));
    var var_4 = Struct_3(Struct_2(~_wgslsmith_clamp_vec3_i32(-arg_0.a.zzx, ~vec3<i32>(19181i, var_2.b, var_2.b), vec3<i32>(38156i, -1i, arg_0.b))), var_3.a, -var_3.b, -_wgslsmith_dot_vec2_i32(arg_0.a.wy, vec2<i32>(~(-16531i), var_2.a.x | var_2.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-709f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(948f - -220f), _wgslsmith_f_op_f32(-1517f - -1054f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f))));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_5, arg_3: vec4<bool>) -> bool {
    var var_0 = Struct_3(Struct_2(~vec3<i32>(-2147483647i, -16832i, min(-1i, 0i))), arg_2.a, ~arg_2.e.zy, -func_4(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<u32>(15434u, arg_2.a, u_input.a.x))), Struct_4(11813u, arg_2.e.zw >> (u_input.a % vec2<u32>(32u))), Struct_5(59485u, -arg_2.e, arg_2.c, !vec3<bool>(false, arg_2.d.x, arg_3.x), arg_2.e)).x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_2.c);
    var_0 = Struct_3(Struct_2(vec3<i32>(-38275i, 1i, arg_1)), abs(reverseBits(_wgslsmith_add_u32(1u, arg_2.a))), ~min(select(~vec2<i32>(25750i, -1i), -var_0.c, true), ~_wgslsmith_mult_vec2_i32(var_0.a.a.zz, vec2<i32>(arg_1, -2147483647i))), ~firstLeadingBit(1i));
    var var_2 = Struct_5(firstLeadingBit(~countOneBits(1u)), vec4<i32>(-1i) * -arg_2.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1267f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(315f + 107f)), arg_0) - vec3<f32>(-848f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)))), arg_2.d, vec4<i32>(reverseBits(reverseBits(abs(var_0.d))), 1i, -26826i, -firstLeadingBit(i32(-1i) * -2147483647i)));
    var var_3 = abs(~var_2.e.yyy);
    return all(arg_3);
}

fn func_1() -> Struct_2 {
    let var_0 = abs(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(u_input.a.x & 75113u, u_input.a.x, _wgslsmith_add_u32(6437u, 54378u)))) << (firstTrailingBit(1u) % 32u);
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, ~min(~vec2<u32>(1u, var_0), vec2<u32>(u_input.a.x, var_0))), 8043u >> (~firstTrailingBit(4294967295u) % 32u), var_0, u_input.a.x);
    let var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-836f * -1042f), _wgslsmith_f_op_f32(f32(-1f) * -717f)) * -1622f) + _wgslsmith_f_op_f32(884f * _wgslsmith_f_op_f32(-1593f + _wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(-37374i, -1i, -10166i, -1i), 2147483647i, vec2<u32>(112822u, var_0)), var_1.yw))))), _wgslsmith_add_i32(countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-54676i, 41779i, 2147483647i, 49340i), vec4<i32>(7221i, 7795i, 19740i, 2147483647i)), ~43874i)), _wgslsmith_clamp_i32(2147483647i, 0i, abs(1i))), Struct_5(12440u, vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(493i, 0i, -52930i) >> (select(u_input.a.x, u_input.a.x, false) % 32u), ~(-48498i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(81533i, 2147483647i, 0i, -1i), vec4<i32>(2147483647i, 0i, 0i, -1i)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(286f, 1997f, -2307f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-655f, -498f, 189f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1293f, 833f, 319f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-699f, 1000f, -209f)), true)), all(vec4<bool>(true, true, true, true)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(i32(-1i) * -22629i, 1i, -22477i, ~4683i))), !(!vec4<bool>(select(false, false, true), var_0 <= 26391u, true, true)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1492f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2216f))))) - -1242f);
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(-1000f + -628f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1033f, -171f), vec2<f32>(-425f, 740f), var_2)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, 827f)))) + vec2<f32>(-825f, _wgslsmith_f_op_f32(abs(-1138f)))), !(!vec2<bool>(true, 16734u == var_0))));
    return Struct_2(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 68195i), vec2<i32>(1i, 0i)) << (1u % 32u), -(~(-1i)), -75520i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(-(~(-vec4<i32>(54381i, 0i, -93415i, -2147483647i))), _wgslsmith_sub_vec4_i32(vec4<i32>(~(-1i), abs(var_0.a.x), _wgslsmith_clamp_i32(-2147483647i, 30357i, 1i), ~var_0.a.x), ~(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, 38156i) ^ vec4<i32>(2147483647i, var_0.a.x, 2147483647i, -11024i)))), firstTrailingBit(~_wgslsmith_div_i32(~(-2147483647i), 4704i)), min(vec2<u32>(27838u, ~u_input.a.x) << (~firstLeadingBit(vec2<u32>(u_input.a.x, 35134u)) % vec2<u32>(32u)), vec2<u32>(~1u, ~0u) ^ (_wgslsmith_mod_vec2_u32(vec2<u32>(31592u, u_input.a.x), vec2<u32>(4294967295u, 95991u)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 13238u)))));
    var_1 = Struct_1(-_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(var_1.a), var_1.a << (vec4<u32>(u_input.a.x, 4294967295u, 71585u, 61746u) % vec4<u32>(32u))), firstLeadingBit(-var_1.a)), var_1.a.x, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, 0u, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1822f)));
}

