struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, -1i, vec3<u32>(31237u, 1u, 0u), vec3<u32>(0u, 1u, 73415u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    global0 = Struct_1(global0.a, 0i, _wgslsmith_add_vec3_u32(~(~_wgslsmith_div_vec3_u32(global0.c, vec3<u32>(39629u, u_input.c, 1u))), _wgslsmith_sub_vec3_u32(global0.c, (global0.d & global0.c) ^ _wgslsmith_add_vec3_u32(global0.d, vec3<u32>(global0.c.x, global0.d.x, 4294967295u)))), global0.d);
    global0 = Struct_1(select(global0.a, global0.a, true), global0.b, vec3<u32>(max(4294967295u, 1u) | u_input.c, ~u_input.c, 1u) ^ ~max(_wgslsmith_div_vec3_u32(vec3<u32>(32395u, 44584u, 29399u), vec3<u32>(global0.d.x, 18682u, 16563u)), ~global0.d), global0.d);
    global0 = Struct_1(!global0.a, 1756i, vec3<u32>(global0.c.x, _wgslsmith_clamp_u32(firstTrailingBit(0u), 105791u, abs(global0.d.x)), ~max(~0u, 0u & u_input.c)), global0.d);
    global0 = Struct_1(any(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), !select(vec2<bool>(global0.a, true), vec2<bool>(true, global0.a), vec2<bool>(global0.a, global0.a)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(global0.a, false)))), _wgslsmith_mod_i32(-(arg_0.x << (u_input.c % 32u)), arg_0.x), global0.d, vec3<u32>(firstTrailingBit(~46247u), ~(~min(global0.c.x, 54629u)), global0.c.x ^ ~_wgslsmith_mult_u32(u_input.c, 4294967295u)));
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f * 358f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -559f) - -285f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -787f))))))));
    return select(!select(vec2<bool>(true, true), !vec2<bool>(false, global0.a), vec2<bool>(true, all(vec3<bool>(false, global0.a, true)))), !vec2<bool>(true, global0.a), global0.a);
}

fn func_2() -> Struct_5 {
    var var_0 = global0.a;
    global0 = Struct_1(!global0.a, 35271i, ~(~vec3<u32>(_wgslsmith_add_u32(u_input.c, 1u), ~global0.d.x, 74931u)), _wgslsmith_add_vec3_u32(global0.d | global0.d, firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 28847u, global0.c.x), vec3<u32>(global0.c.x, 1u, 103789u)) >> (~global0.d % vec3<u32>(32u)))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c << (u_input.c % 32u), u_input.c, ~15725u), ~global0.c), -1i, func_3(countOneBits(vec4<i32>(-15603i, u_input.b.x, -44200i, global0.b) | vec4<i32>(-41879i, 53148i, 1i, global0.b))), select(~(vec4<u32>(global0.c.x, 4294967295u, global0.d.x, global0.c.x) << (vec4<u32>(global0.d.x, global0.d.x, 1u, global0.d.x) % vec4<u32>(32u))), select(firstLeadingBit(vec4<u32>(0u, u_input.c, 2216u, global0.c.x)), vec4<u32>(50778u, 9832u, u_input.c, 85986u), !vec4<bool>(global0.a, global0.a, global0.a, false)), !global0.a)), !(!vec3<bool>(func_3(vec4<i32>(0i, -2147483647i, 31841i, u_input.a)).x, true, any(vec2<bool>(false, global0.a)))));
    global0 = Struct_1(global0.a != any(var_1.b.xx), global0.b, abs(global0.d), var_1.a.d.wyx);
    global0 = Struct_1(true, global0.b, vec3<u32>(0u, abs(35408u), u_input.c), global0.c);
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(170f, _wgslsmith_f_op_f32(-964f - -673f))), _wgslsmith_f_op_f32(step(-1974f, -1268f))))), vec4<u32>(var_1.a.d.x, u_input.c >> (~(global0.c.x & 0u) % 32u), _wgslsmith_clamp_u32(~select(u_input.c, var_1.a.d.x, false), _wgslsmith_div_u32(0u, global0.d.x | 4294967295u), ~(global0.c.x | 5408u)), firstTrailingBit(select(~var_1.a.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 41470u), var_1.a.d.yx), false))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1129f), 192f, _wgslsmith_f_op_f32(2032f * 1000f), _wgslsmith_f_op_f32(427f - 1328f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, 2462f, -294f, 1000f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1248f, 297f, 1828f, -730f), vec4<f32>(1000f, -1247f, 764f, -525f)) + vec4<f32>(845f, 326f, -1038f, 1000f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1065f, -1299f, -1105f, 1579f))))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: Struct_4) -> u32 {
    global0 = Struct_1(~arg_3.a.a.x > ~_wgslsmith_dot_vec4_u32(arg_3.a.d, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_3.a.d.x, arg_3.a.d.x, 1u), arg_3.a.d)), -u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3.a.a.x, _wgslsmith_mult_u32(18624u, _wgslsmith_mod_u32(u_input.c, u_input.c)), ~global0.c.x), _wgslsmith_div_vec3_u32(select(~arg_3.a.d.xzx, ~vec3<u32>(31482u, 10312u, arg_3.a.d.x), arg_3.c), _wgslsmith_add_vec3_u32(arg_3.a.d.wwy, ~vec3<u32>(u_input.c, global0.d.x, 7804u)))), vec3<u32>(_wgslsmith_sub_u32(global0.c.x, ~59826u), ~global0.d.x, ~global0.c.x));
    var var_0 = abs(reverseBits(-vec4<i32>(u_input.a, ~1i, 0i, 45957i)));
    var_0 = vec4<i32>(firstLeadingBit(i32(-1i) * -2147483647i), u_input.a, -1i, -firstTrailingBit(max(-var_0.x, 11611i)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(671f)), arg_2.x, 1000f, 831f);
    let var_2 = func_2();
    return _wgslsmith_dot_vec4_u32(~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0.c.x, u_input.c, 4294967295u), vec4<u32>(15795u, var_2.b.x, global0.c.x, u_input.c)))), arg_3.a.d | vec4<u32>(u_input.c, 32675u, 0u, reverseBits(u_input.c) & _wgslsmith_mult_u32(22243u, arg_3.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstLeadingBit(2354u)), _wgslsmith_mult_i32(-9646i << (_wgslsmith_clamp_u32(u_input.c, 0u, global0.d.x) % 32u), ~(i32(-1i) * -2147483647i) ^ global0.b), 47311i, ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c << (u_input.c % 32u), u_input.c, func_1(vec4<f32>(1382f, 274f, 882f, -826f), vec2<bool>(global0.a, true), vec4<f32>(2069f, 2041f, 111f, 1000f), Struct_4(Struct_2(global0.c, u_input.b.x, vec2<bool>(true, false), vec4<u32>(54426u, 39555u, 21375u, 1u)), 1000f, vec3<bool>(global0.a, global0.a, true))), _wgslsmith_div_u32(u_input.c, 0u)), func_2().b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1497f, 622f)))))));
}

