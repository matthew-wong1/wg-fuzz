struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_3(select(u_input.b >> (~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 97265u), vec2<u32>(107574u, u_input.c.x)) % vec2<u32>(32u)), vec2<i32>(u_input.b.x, firstTrailingBit(-2147483647i) & reverseBits(arg_0)), false), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(572f)))) - _wgslsmith_f_op_f32(f32(-1f) * -309f)), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1072f + 266f), _wgslsmith_f_op_f32(step(1304f, -233f)))), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), firstTrailingBit(vec4<i32>(arg_0, arg_0, -2147483647i, u_input.b.x)) & firstTrailingBit(vec4<i32>(arg_0, -2147483647i, u_input.b.x, -1i))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), all(vec2<bool>(false, true))))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1038f, -1328f)) * _wgslsmith_f_op_f32(1307f + -586f)), 268f)), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), max(~(~vec4<i32>(arg_0, arg_0, arg_0, u_input.b.x)), _wgslsmith_mult_vec4_i32(-vec4<i32>(4064i, arg_0, 2147483647i, 2147483647i), vec4<i32>(-28799i, -2147483647i, 1i, u_input.b.x) >> (u_input.c % vec4<u32>(32u))))));
    var var_1 = 1035f;
    var_1 = 102f;
    var_0 = Struct_3(~_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(arg_0, -26668i)), countOneBits(-var_0.c.c.xz), u_input.b), var_0.b, var_0.c);
    var_0 = Struct_3(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(-36043i, arg_0)), vec2<i32>(-1i) * -var_0.b.b.c.xw), var_0.b, var_0.b.b);
    return var_0.c.a;
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.a.yxx;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3(0i)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(208f, _wgslsmith_f_op_f32(f32(-1f) * -1283f))), _wgslsmith_f_op_f32(func_3(reverseBits(-2147483647i))))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), vec2<bool>(false, false)), vec4<i32>(max(-44305i, 1i), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x) | u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-27583i, u_input.b.x), u_input.b.x, reverseBits(u_input.b.x)), _wgslsmith_clamp_i32(-u_input.b.x, ~(-1085i), 2147483647i >> (0u % 32u)))), !vec3<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false))), true, true));
    let var_2 = ~(_wgslsmith_div_vec2_u32(~var_0.yz, vec2<u32>(0u, u_input.a.x)) & u_input.c.zx);
    let var_3 = u_input.c.yyw ^ ((min(vec3<u32>(u_input.a.x, 10328u, 0u), vec3<u32>(24u, u_input.a.x, 0u)) << (firstTrailingBit(_wgslsmith_clamp_vec3_u32(u_input.c.zyy, vec3<u32>(84622u, u_input.c.x, 0u), vec3<u32>(4294967295u, 4294967295u, 14046u))) % vec3<u32>(32u))) | ~vec3<u32>(_wgslsmith_mod_u32(1u, var_2.x), var_0.x, 1u));
    var var_4 = vec4<f32>(var_1.b.a, _wgslsmith_f_op_f32(step(var_1.a, 209f)), -841f, _wgslsmith_f_op_f32(func_3((~(-21842i) << (var_2.x % 32u)) ^ -u_input.b.x)));
    return var_1.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = select(vec4<bool>(func_2().b.x, arg_2.b.x, false, !arg_2.b.x), select(vec4<bool>((36776u < u_input.a.x) & all(vec3<bool>(arg_2.b.x, true, true)), arg_0.x, (1223f >= arg_2.a) || true, arg_2.b.x), !(!select(vec4<bool>(true, arg_0.x, arg_2.b.x, arg_0.x), vec4<bool>(true, false, arg_0.x, true), vec4<bool>(arg_2.b.x, arg_0.x, arg_0.x, arg_0.x))), arg_2.b.x), select(!vec4<bool>(true, arg_0.x, arg_2.b.x, true), vec4<bool>(select(arg_2.b.x, !arg_0.x, true), true, arg_2.b.x, arg_2.b.x), !any(select(vec4<bool>(false, arg_0.x, false, arg_2.b.x), vec4<bool>(false, arg_0.x, true, arg_0.x), arg_0.x))));
    var var_1 = select(select(select(!(!var_0), !var_0, vec4<bool>(any(var_0.wwz), arg_2.b.x | true, arg_2.b.x, arg_2.c.x == u_input.b.x)), vec4<bool>(arg_2.b.x, (arg_1.x ^ 68329u) >= u_input.a.x, arg_2.b.x, abs(arg_1.x) > (u_input.a.x | 1u)), !var_0), select(!var_0, var_0, !(arg_0.x | true)), var_0);
    var_1 = vec4<bool>(!any(!(!var_0)), arg_2.a >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.a + 1000f))), !all(vec3<bool>(true, true, var_1.x | arg_2.b.x)), true);
    var_1 = select(var_0, var_0, select(var_0, select(var_0, var_0, var_0), true));
    var var_2 = countOneBits(vec4<u32>(40930u, ~(~_wgslsmith_mult_u32(u_input.c.x, 4294967295u)), ~min(u_input.a.x, 20218u), 0u));
    return -2172f;
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2414f) - 1065f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -575f) - -867f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f) + -1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1228f)), _wgslsmith_f_op_f32(f32(-1f) * -1232f), arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1389f + -1093f) * 128f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1466f, 909f, -615f) - vec3<f32>(-326f, 785f, -531f))))));
    var_0 = vec3<f32>(1991f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), ~u_input.c >> (reverseBits(u_input.c) % vec4<u32>(32u)), func_2())))), _wgslsmith_f_op_f32(var_0.x * 1164f));
    let var_1 = func_2();
    var var_2 = func_2();
    var_2 = Struct_1(-2186f, !select(var_1.b, select(!var_1.b, var_1.b, var_2.b), !arg_0.yz), abs(var_1.c));
    return Struct_3(-(~var_2.c.yz), Struct_2(-529f, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1350f * -744f))), arg_0.zw, vec4<i32>(reverseBits(0i), var_1.c.x, _wgslsmith_add_i32(-76332i, var_1.c.x), var_2.c.x)), !(!arg_0.wwy)), Struct_1(_wgslsmith_f_op_f32(-var_2.a), arg_0.yw, vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -74077i) >> (_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x) % 32u), var_1.c.x, select(2147483647i, var_1.c.x, var_2.a >= var_1.a), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(1111f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_f32(min(-235f, 1f)));
    var var_1 = func_1(vec4<bool>(false, !(true | (u_input.c.x <= 27862u)), true, true));
    let var_2 = all(var_1.b.c);
    let var_3 = u_input.c.x;
    let var_4 = ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x);
    var var_5 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(~(-8045i << (u_input.a.x % 32u)) ^ 1i)), u_input.c.xz, _wgslsmith_f_op_f32(f32(-1f) * -439f), -1000f);
}

