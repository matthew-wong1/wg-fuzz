struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_1(var_0.a, vec3<bool>(arg_1.b.x, !var_0.b.x, arg_1.a.x));
    let var_2 = Struct_1(!vec4<bool>(true, (arg_3.x & u_input.e.x) < _wgslsmith_add_i32(-1i, arg_3.x), arg_0.a.x || true, false), arg_0.b);
    var var_3 = var_0;
    let var_4 = _wgslsmith_mod_vec2_u32(min(~arg_2 << (~(arg_2 << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), select(countOneBits(firstLeadingBit(vec2<u32>(u_input.a, 4294967295u))), vec2<u32>(u_input.a, u_input.c & arg_2.x), select(!var_1.b.zy, var_0.b.xy, select(vec2<bool>(arg_1.b.x, true), vec2<bool>(var_3.a.x, var_0.b.x), arg_1.a.wy)))), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.ww, ~u_input.d.zw), ~vec2<u32>(21102u, arg_2.x)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 16527u), arg_2)), firstTrailingBit(vec2<u32>(u_input.c, u_input.d.x))));
    return vec4<bool>(var_0.a.x, arg_0.b.x, var_3.b.x, arg_0.b.x);
}

fn func_4(arg_0: Struct_1) -> bool {
    return !arg_0.b.x;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = !vec2<bool>(true, func_4(Struct_1(func_3(Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(false, true, true)), vec2<u32>(arg_0, 1u), vec3<i32>(u_input.e.x, -2147483647i, 15804i)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))));
    var var_1 = ~abs(min(~_wgslsmith_clamp_u32(1u, u_input.c, 30492u), ~17458u));
    let var_2 = 113989u;
    var var_3 = ~4294967295u;
    var var_4 = vec2<bool>(any(select(var_0, vec2<bool>(var_0.x, all(vec4<bool>(var_0.x, var_0.x, true, true))), true)), false);
    return select(select(!vec4<bool>(any(vec3<bool>(var_4.x, var_4.x, var_0.x)), !var_0.x, func_3(Struct_1(vec4<bool>(var_0.x, true, true, var_0.x), vec3<bool>(false, var_4.x, var_4.x)), Struct_1(vec4<bool>(true, false, var_0.x, true), vec3<bool>(true, var_4.x, true)), vec2<u32>(arg_0, 0u), vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x)).x, true), func_3(Struct_1(select(vec4<bool>(var_4.x, false, var_0.x, false), vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, true, var_0.x, false)), !vec3<bool>(false, false, var_0.x)), Struct_1(vec4<bool>(true, true, var_0.x, var_4.x), select(vec3<bool>(true, true, var_4.x), vec3<bool>(var_4.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x))), vec2<u32>(~0u, ~arg_0), abs(~vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i))), true), !vec4<bool>(any(func_3(Struct_1(vec4<bool>(var_4.x, false, true, false), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(true, true, var_4.x, false), vec3<bool>(var_4.x, false, var_4.x)), u_input.d.yw, vec3<i32>(1921i, u_input.b.x, -5417i)).yxw), var_0.x, true, ~u_input.a <= _wgslsmith_clamp_u32(arg_0, arg_0, 4294967295u)), select(select(vec4<bool>(true, true, func_4(Struct_1(vec4<bool>(false, var_0.x, false, var_0.x), vec3<bool>(false, false, var_4.x))), !var_0.x), vec4<bool>(true, true, true && var_4.x, false), !(u_input.e.x >= 39833i)), func_3(Struct_1(select(vec4<bool>(var_4.x, true, false, true), vec4<bool>(true, var_0.x, var_4.x, var_4.x), var_4.x), vec3<bool>(false, false, var_4.x)), Struct_1(vec4<bool>(true, var_4.x, var_4.x, true), !vec3<bool>(var_0.x, false, var_0.x)), abs(u_input.d.xw), reverseBits(vec3<i32>(6952i, 36822i, u_input.b.x))), !vec4<bool>(false, true, false || var_0.x, u_input.b.x != u_input.b.x)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = false;
    var var_1 = select(arg_0.b.x, arg_0.a.x, func_3(arg_0, arg_0, ~_wgslsmith_div_vec2_u32(vec2<u32>(28437u, 33225u), u_input.d.yw) ^ u_input.d.yw, select(~min(vec3<i32>(0i, 0i, -1i), vec3<i32>(u_input.b.x, u_input.e.x, 18581i)), -vec3<i32>(u_input.b.x, u_input.e.x, 1i), arg_0.a.ywx)).x);
    var_1 = true;
    let var_2 = Struct_1(arg_0.a, vec3<bool>(true, (true && (u_input.c <= 69720u)) | true, arg_0.a.x));
    var_1 = true;
    return Struct_1(vec4<bool>(true, any(!func_3(arg_0, arg_0, vec2<u32>(494u, 29617u), vec3<i32>(-1i, 14808i, -4963i)).xw), true, arg_0.b.x), func_2(min(min(37159u, u_input.c), _wgslsmith_mult_u32(u_input.a, u_input.a)) & 19194u).xww);
}

fn func_1() -> u32 {
    let var_0 = func_5(Struct_1(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, false, true, true)), func_2(14327u), true), func_3(Struct_1(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(false, true, true, true), func_3(Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, true, true)), vec2<u32>(9538u, 19994u), vec3<i32>(u_input.b.x, -25404i, u_input.e.x)).xyz), vec2<u32>(~1u, abs(1u)), firstLeadingBit(vec3<i32>(u_input.b.x, -1i, u_input.b.x)) ^ -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)).xyx));
    var var_1 = u_input.d.x;
    let var_2 = _wgslsmith_f_op_f32(1000f + 112f);
    var var_3 = var_0.a;
    let var_4 = !vec3<bool>(!func_2(38891u).x, var_0.b.x || var_0.a.x, !(var_0.a.x && true));
    return 11513u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    let var_1 = abs(func_1());
    let var_2 = Struct_1(vec4<bool>(true, !(var_1 == 4294967295u) != true, true, true), select(vec3<bool>(func_4(Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(false, false, false))), true, true), !vec3<bool>(all(vec2<bool>(true, true)), true, true), all(vec2<bool>(any(vec4<bool>(false, true, true, false)), true))));
    var var_3 = ~u_input.b;
    var var_4 = _wgslsmith_sub_i32(81979i, -u_input.e.x);
    var var_5 = firstTrailingBit(u_input.d);
    let var_6 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_add_vec3_i32(abs(vec3<i32>(0i, u_input.e.x, u_input.b.x)), vec3<i32>(-18415i, 0i, 0i)), -vec3<i32>(var_3.x, u_input.b.x, -1i) >> (~vec3<u32>(u_input.a, var_5.x, var_5.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-217f, -336f), vec2<f32>(262f, -1000f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1844f, -914f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(566f, -1000f)))))), ~reverseBits(vec3<u32>(_wgslsmith_mult_u32(var_1, var_1), ~var_0, 7438u)), ~select(_wgslsmith_mult_vec4_i32(-vec4<i32>(2181i, var_3.x, -2147483647i, 2767i), -vec4<i32>(var_3.x, var_3.x, u_input.e.x, 1i)), -vec4<i32>(u_input.b.x, var_3.x, u_input.e.x, var_3.x), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1369f)), _wgslsmith_f_op_f32(313f - -1311f), _wgslsmith_f_op_f32(f32(-1f) * -754f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1000f - 894f), _wgslsmith_f_op_f32(trunc(-1085f)), 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1284f, -1053f, -1000f)) * vec3<f32>(633f, 159f, -1497f)), !func_2(1u).zyx))));
}

