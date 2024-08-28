struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1133f, -1480f, -377f, 399f), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: Struct_2;

var<private> global2: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = vec3<bool>(all(vec3<bool>(reverseBits(u_input.b) > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -1i)), true == any(vec4<bool>(false, global0.b.x, global0.c.x, true)), !arg_0.a.c.x)), true, select(false, all(vec2<bool>(all(vec4<bool>(arg_1, false, arg_3.c.x, arg_0.b.c.x)), arg_0.b.b.x)), global1.a.c.x));
    let var_1 = firstLeadingBit(abs(vec4<u32>(1u, 1u, 1u, 1u) << (firstTrailingBit(select(vec4<u32>(4294967295u, 1u, 0u, 32929u), vec4<u32>(29567u, 33099u, 12911u, 84909u), vec4<bool>(false, arg_0.a.b.x, var_0.x, false))) % vec4<u32>(32u))));
    let var_2 = Struct_1(vec4<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.a.x, arg_3.a.x), -137f, global0.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -861f))), _wgslsmith_f_op_f32(step(370f, global2.a.x))), vec2<bool>(arg_2.b.c.x, arg_0.b.c.x), global2.b);
    var var_3 = any(vec4<bool>(select(false, var_2.c.x, true), false, true, global0.c.x));
    global1 = arg_2;
    return arg_0.a.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a.a) + global2.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-609f, global0.a.x, var_0.a.a.x, 389f) * arg_3.a.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 898f, -1044f, -635f) - var_0.a.a))), vec2<bool>(!all(vec2<bool>(true, global1.a.b.x)), _wgslsmith_div_f32(arg_0.b.a.x, -245f) <= -1000f), vec2<bool>(true, global0.c.x | func_3(Struct_2(Struct_1(var_0.b.a, vec2<bool>(var_0.b.c.x, true), arg_2.b), arg_0.a), global1.b.c.x, Struct_2(arg_2, global1.a), Struct_1(vec4<f32>(global2.a.x, arg_0.a.a.x, var_0.b.a.x, 380f), var_0.b.c, global2.c)))));
    var var_3 = arg_0;
    var_0 = arg_3;
    return func_3(arg_0, 33151i != u_input.b, Struct_2(var_3.a, Struct_1(var_1.a.a, select(!vec2<bool>(global0.b.x, global1.b.b.x), !var_3.a.c, any(vec3<bool>(var_2.b.b.x, false, arg_0.a.b.x))), select(vec2<bool>(false, arg_3.a.c.x), !global0.c, !vec2<bool>(var_0.b.b.x, var_1.a.c.x)))), var_1.b);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_2 {
    global1 = Struct_2(global1.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.x, global1.a.a.x, global0.a.x, 2882f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(669f, global0.a.x, 1000f, -362f) * vec4<f32>(-1305f, global0.a.x, global0.a.x, -1400f))))), global2.b, global2.c));
    let var_0 = global1.a;
    global0 = global1.a;
    let var_1 = global1.b;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(var_1.a, global2.a)), vec4<f32>(-1050f, 1289f, global2.a.x, -394f))) + global2.a), vec2<bool>(false, true), global2.b), Struct_1(_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(abs(global1.a.a)), !vec4<bool>(var_1.b.x, global0.c.x, false, global2.b.x))), select(select(vec2<bool>(false, false), !var_0.c, vec2<bool>(true, global1.b.b.x)), vec2<bool>(global0.b.x | arg_1.x, any(vec2<bool>(global2.b.x, var_1.b.x))), false), vec2<bool>(global0.b.x, true)));
    return var_2;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = func_4(_wgslsmith_mult_u32(~countOneBits(0u) >> (countOneBits(1u) % 32u), 1u), select(vec4<bool>(global2.c.x, func_2(Struct_2(global1.a, Struct_1(vec4<f32>(global2.a.x, global0.a.x, 1328f, 703f), global1.a.c, arg_1.b)), vec3<f32>(-562f, -848f, -316f), global1.b, Struct_2(arg_1, Struct_1(global1.b.a, vec2<bool>(arg_1.b.x, arg_1.c.x), global1.a.c))), false, any(!vec4<bool>(false, false, arg_1.c.x, true))), !vec4<bool>(false, arg_1.c.x, true, all(vec3<bool>(true, arg_1.c.x, false))), true), vec2<i32>(u_input.a.x, u_input.a.x));
    var var_0 = vec2<bool>(true, true);
    let var_1 = min(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u) ^ vec4<u32>(4312u, ~0u, _wgslsmith_clamp_u32(0u, ~0u, 1u), ~9349u));
    var var_2 = _wgslsmith_div_i32(-select(0i, -15528i, true), _wgslsmith_mod_i32(-(u_input.a.x ^ arg_0.x), 37207i));
    let var_3 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.a, vec4<f32>(global0.a.x, -512f, arg_1.a.x, -294f)))), vec2<bool>(global0.b.x, any(select(select(vec3<bool>(false, global2.c.x, true), vec3<bool>(false, true, true), vec3<bool>(arg_1.b.x, global2.b.x, false)), select(vec3<bool>(global0.c.x, false, false), vec3<bool>(true, var_0.x, global2.b.x), vec3<bool>(true, true, var_0.x)), false))), select(!vec2<bool>(all(arg_1.b), global2.b.x), select(global0.c, arg_1.b, global2.c), vec2<bool>(global2.c.x, !(!global1.b.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec4<i32>(-2147483647i, _wgslsmith_add_i32(u_input.a.x, -_wgslsmith_div_i32(-1693i, u_input.a.x)), u_input.b, u_input.a.x), global1.b);
    var var_0 = Struct_2(func_4(32082u, vec4<bool>(!global1.b.c.x | true, true, true, !any(vec4<bool>(global0.c.x, global1.b.b.x, global2.c.x, false))), vec2<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), -14753i) ^ vec2<i32>(u_input.b, u_input.a.x)).b, Struct_1(global1.a.a, global2.b, global0.b));
    global2 = func_1(vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b, select(32066i, u_input.b, true)), u_input.b, 1i >> (firstLeadingBit(48638u) % 32u)), -2147483647i, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(0i, u_input.a.x, u_input.a.x)), firstTrailingBit(-vec3<i32>(u_input.b, u_input.b, u_input.b)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, var_0.a.a.x, global2.a.x, 243f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-941f, var_0.a.a.x, 757f, global2.a.x)))), global0.b, func_1(vec4<i32>(-17621i, 66262i, u_input.a.x, -1i) >> (max(vec4<u32>(1u, 4294967295u, 60838u, 30675u), vec4<u32>(0u, 13267u, 24722u, 0u)) % vec4<u32>(32u)), var_0.a).b));
    let var_1 = ~(~1u);
    var var_2 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, 2147483647i), vec3<i32>(u_input.a.x, 2147483647i, u_input.b))), -(-41494i >> (0u % 32u)), ~(-5256i), -25104i >> (~var_1 % 32u)), _wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.b, 37102i, u_input.a.x, 0i)), firstTrailingBit(-vec4<i32>(2147483647i, 27479i, -65359i, u_input.a.x))), select(vec4<i32>(u_input.b >> (38013u % 32u), u_input.a.x, -22230i << (1u % 32u), -2376i), vec4<i32>(0i, 27425i, i32(-1i) * -4533i, u_input.a.x), func_3(Struct_2(global1.a, Struct_1(vec4<f32>(-842f, -1241f, -970f, -128f), var_0.a.b, global0.c)), func_1(vec4<i32>(2147483647i, 53836i, 15996i, u_input.b), Struct_1(vec4<f32>(global0.a.x, global0.a.x, global1.b.a.x, global2.a.x), global2.b, global1.b.b)).b.x, func_4(4294967295u, vec4<bool>(true, global2.b.x, global1.a.b.x, var_0.b.b.x), u_input.a), func_1(vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.a.x), global1.a)))), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, -1i, -12458i, 10160i), vec4<i32>(-12239i, u_input.a.x, u_input.b, u_input.b), select(vec4<bool>(global1.b.b.x, global2.c.x, global2.c.x, false), vec4<bool>(false, global2.b.x, var_0.a.b.x, global0.c.x), vec4<bool>(false, global0.c.x, false, true))), vec4<i32>(u_input.b, -u_input.a.x, 1i, ~(-26309i))), -_wgslsmith_dot_vec3_i32(vec3<i32>(24601i, u_input.a.x, 25790i), vec3<i32>(17143i, u_input.a.x, -1i) >> (vec3<u32>(var_1, var_1, 0u) % vec3<u32>(32u))), 26914i), vec4<bool>(global0.b.x, !(~19883u < var_1), !(_wgslsmith_clamp_u32(1u, var_1, var_1) >= ~var_1), func_1(firstLeadingBit(countOneBits(vec4<i32>(-2147483647i, 2147483647i, -64i, 0i))), func_1(vec4<i32>(-37704i, -8849i, u_input.b, u_input.a.x), global1.a)).b.x));
    let var_3 = vec3<bool>(all(select(!global0.b, vec2<bool>(!global0.b.x, var_1 < 4294967295u), vec2<bool>(!global2.b.x, any(vec3<bool>(global2.b.x, false, false))))), !((~var_1 > _wgslsmith_mult_u32(11017u, var_1)) || (reverseBits(0i) != var_2.x)), !(!global2.c.x));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, -501f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(192f, -473f) * _wgslsmith_f_op_f32(max(429f, global1.b.a.x))), global1.b.a.x)), func_4(~(min(var_1, 27375u) ^ (11011u ^ var_1)), !select(!vec4<bool>(true, true, global2.c.x, global1.a.b.x), vec4<bool>(false, true, global0.c.x, true), true), var_2.zy).b.c, global2.c);
    var var_5 = vec4<u32>(~(~(~(~1u))), ~(select(23199u ^ var_1, 4294967295u, -892f != var_4.a.x) & 1u), 4294967295u, max(~var_1, firstLeadingBit(~var_1 | 26030u)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, min(vec2<u32>(~var_1 & var_5.x, max(var_1, 46144u)), var_5.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-579f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(floor(global1.b.a.x))), true))), var_2.xz);
}

