struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    global0 = Struct_3(global0.a, global0.a, Struct_1(select(global0.b.a, vec3<u32>(u_input.b.x, firstLeadingBit(u_input.b.x), global0.c.a.x | 0u), vec3<bool>(true, true, true))));
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(-arg_0))));
    let var_1 = Struct_1(~_wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.b.x, 20460u, 20609u) << (global0.a.a % vec3<u32>(32u))), global0.a.a));
    let var_2 = Struct_3(Struct_1(vec3<u32>(firstLeadingBit(36555u), ~abs(global0.a.a.x), 1u >> ((var_1.a.x >> (var_1.a.x % 32u)) % 32u))), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.a.x, 49772u, global0.b.a.x), _wgslsmith_sub_vec3_u32(~global0.c.a, vec3<u32>(global0.a.a.x, 0u, 0u)))), global0.a);
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(select(_wgslsmith_mult_i32(u_input.c, select(0i, -4673i, true)), _wgslsmith_clamp_i32(u_input.a, ~0i, u_input.c), true), _wgslsmith_sub_i32(u_input.c << (1u % 32u), max(3976i, firstLeadingBit(25254i))), u_input.a, firstLeadingBit(65289i) >> (countOneBits(_wgslsmith_mod_u32(var_1.a.x, var_1.a.x)) % 32u)), ~vec4<i32>(u_input.c, _wgslsmith_mult_i32(-2147483647i, -1i), abs(u_input.c), 573i) >> (_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(var_2.c.a.x, 1u, 60771u, 0u)), abs(~vec4<u32>(4294967295u, 1u, u_input.b.x, var_1.a.x))) % vec4<u32>(32u)));
    return vec3<u32>(~var_2.b.a.x, var_1.a.x, ~(~max(~global0.b.a.x, global0.c.a.x)));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global0 = Struct_3(global0.b, global0.b, Struct_1(firstTrailingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 22782u, u_input.b.x), global0.b.a), func_3(arg_0.x)))));
    var var_0 = max(firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, 43747i, u_input.c, 2147483647i), vec4<i32>(_wgslsmith_clamp_i32(u_input.c, 1i, u_input.a), 2147483647i, 22176i, u_input.a))), min(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.c, u_input.c, 16834i, u_input.a), -(~vec4<i32>(u_input.c, u_input.c, -45476i, u_input.c)), _wgslsmith_div_vec4_i32(-vec4<i32>(0i, 2894i, 1i, u_input.c), select(vec4<i32>(u_input.c, 44171i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.c, -24924i, -1i), vec4<bool>(false, true, false, true)))), vec4<i32>(i32(-1i) * -2147483647i, -u_input.a, firstTrailingBit(~u_input.a), -u_input.c)));
    var var_1 = -(~_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, var_0.x) >> (u_input.b % vec2<u32>(32u)), ~vec2<i32>(9222i, u_input.a) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, global0.c.a.x), vec2<u32>(0u, 0u)) % vec2<u32>(32u))));
    let var_2 = Struct_3(Struct_1(~func_3(517f)), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, global0.a.a.x, global0.b.a.x) & ~vec3<u32>(u_input.b.x, global0.a.a.x, global0.a.a.x), global0.a.a)), global0.a);
    var_1 = countOneBits(reverseBits(countOneBits(~var_0.xx)));
    return select(false, true, 117059u == (global0.c.a.x | ~13217u));
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_3(Struct_1(vec3<u32>(global0.a.a.x, global0.a.a.x, _wgslsmith_div_u32(u_input.b.x, firstLeadingBit(4294967295u)))), Struct_1(~select(~global0.b.a, vec3<u32>(70837u, 41112u, 4294967295u), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))), global0.c);
    global0 = Struct_3(var_0.c, global0.a, Struct_1(reverseBits(var_0.a.a)));
    var var_1 = all(vec4<bool>(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-731f, 359f))))), any(vec3<bool>(true, true, all(vec4<bool>(true, false, true, false)))), true, false));
    let var_2 = Struct_2(reverseBits(vec3<i32>(-53426i, u_input.a, u_input.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1095f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1357f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-934f, -210f)))))), global0.c, var_0.a);
    var_0 = Struct_3(Struct_1(var_0.c.a), Struct_1(vec3<u32>(min(80569u, abs(63017u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a.x, 1u, var_2.c.a.x, var_0.b.a.x), ~vec4<u32>(var_2.c.a.x, var_2.d.a.x, global0.a.a.x, u_input.b.x)), _wgslsmith_mult_u32(~83570u, u_input.b.x | 4294967295u))), Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(25470u, 1u, 1u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.a.x, var_2.c.a.x, var_2.d.a.x), vec3<u32>(17010u, var_2.c.a.x, global0.b.a.x)) % vec3<u32>(32u)), reverseBits(global0.a.a))));
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(~4294967295u, 0u, _wgslsmith_mult_u32(~var_2.d.a.x, ~0u), ~34182u), vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.b.a.x, 13707u, 38568u), min(var_0.c.a.x, var_0.b.a.x)), ~0u, max(~0u, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), countOneBits(u_input.b.x), global0.a.a.x, var_0.b.a.x), vec4<u32>(max(0u, 4972u), var_2.c.a.x, global0.a.a.x, ~21168u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec4<u32>(global0.c.a.x, _wgslsmith_div_u32(global0.a.a.x, global0.a.a.x), ~u_input.b.x, firstLeadingBit(u_input.b.x)) | reverseBits(vec4<u32>(4532u, 64648u, global0.b.a.x, u_input.b.x))) << (select(~(~(vec4<u32>(0u, global0.b.a.x, 67582u, global0.a.a.x) << (vec4<u32>(93884u, 15471u, global0.a.a.x, u_input.b.x) % vec4<u32>(32u)))), ~(~vec4<u32>(1u, u_input.b.x, global0.b.a.x, global0.b.a.x)) << (func_1() % vec4<u32>(32u)), vec4<bool>(false, any(vec3<bool>(true, true, true)), true, !all(vec4<bool>(false, false, true, true)))) % vec4<u32>(32u));
    let var_1 = Struct_2(vec3<i32>(max(-4242i, u_input.a) | _wgslsmith_mult_i32(u_input.c, u_input.c), ~(-30980i), u_input.c) ^ firstLeadingBit(firstLeadingBit(~vec3<i32>(-2147483647i, -29003i, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1690f * -668f)), _wgslsmith_f_op_f32(f32(-1f) * -532f)))), global0.c, Struct_1(~var_0.yyz));
    var var_2 = Struct_4(var_1, Struct_1(firstLeadingBit(func_1().yxw & _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 27789u, global0.b.a.x), vec3<u32>(38833u, u_input.b.x, var_0.x)))), 1978f, any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), false)) || (var_1.a.x >= -_wgslsmith_sub_i32(46089i, -8950i)), var_1.c);
    let var_3 = !func_2(vec2<f32>(847f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b)))));
    var var_4 = !(!select(vec3<bool>(false, any(vec3<bool>(false, false, var_2.d)), false), select(select(vec3<bool>(var_3, true, var_3), vec3<bool>(true, false, var_3), var_3), select(vec3<bool>(var_2.d, var_2.d, var_2.d), vec3<bool>(var_3, var_3, true), false), vec3<bool>(true, false, false)), any(select(vec4<bool>(var_3, var_2.d, false, var_3), vec4<bool>(var_3, true, var_2.d, var_2.d), false))));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(1993f - var_2.c))))));
    var_4 = select(!(!select(!vec3<bool>(true, var_2.d, true), vec3<bool>(var_3, false, false), vec3<bool>(var_4.x, false, false))), vec3<bool>(any(select(vec4<bool>(true, false, var_4.x, var_2.d), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), var_3), false)), any(vec4<bool>(true, var_4.x, 4294967295u >= global0.a.a.x, any(vec2<bool>(false, true)))), any(vec2<bool>(true, true))), var_2.d | (var_3 & var_2.d));
    global0 = Struct_3(Struct_1(~vec3<u32>(var_2.e.a.x, global0.b.a.x, var_1.c.a.x)), var_1.c, global0.c);
    var_0 = vec4<u32>(31152u, var_1.c.a.x, _wgslsmith_div_u32(~countOneBits(~global0.c.a.x), ~33364u), var_1.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(u_input.c, 1i, u_input.a), var_2.a.a), ~_wgslsmith_add_u32(0u, ~abs(25450u)));
}

