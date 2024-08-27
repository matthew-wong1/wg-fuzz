struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(-33826i, _wgslsmith_add_i32(i32(-1i) * -u_input.a, 22865i), 1i) < (~1i | _wgslsmith_add_i32(abs(u_input.a), ~u_input.a));
    let var_1 = select(vec4<bool>(global0.d.x, global0.d.x, true, arg_0.d.x), vec4<bool>(!select(true, all(vec3<bool>(global0.d.x, arg_1.d.x, true)), global0.d.x), true, true, all(select(select(vec3<bool>(global0.d.x, true, arg_0.d.x), vec3<bool>(global0.d.x, false, true), global0.d.x), vec3<bool>(arg_0.d.x, arg_0.d.x, false), !arg_1.d.x))), false);
    let var_2 = ~(~(~_wgslsmith_mod_vec2_u32(~arg_0.a.xx, arg_1.a.yy)));
    global0 = arg_1;
    let var_3 = Struct_1(~vec3<u32>(u_input.c, ~(~29387u), arg_1.a.x), -50830i, ~arg_1.c, !select(!(!vec2<bool>(arg_1.d.x, var_1.x)), vec2<bool>(select(arg_1.d.x, global0.d.x, var_1.x), arg_0.d.x), arg_0.d));
    return _wgslsmith_f_op_f32(f32(-1f) * -275f);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec3<u32> {
    return vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(firstTrailingBit(reverseBits(4294967295u))), ~(~(~1u))), arg_1.a.x, 1u);
}

fn func_2() -> vec3<u32> {
    var var_0 = global0.a.yx;
    global0 = Struct_1(abs(~global0.a) ^ ~func_4(_wgslsmith_f_op_f32(func_3(Struct_1(global0.a, u_input.a, vec2<i32>(-17660i, u_input.a), global0.d), Struct_1(vec3<u32>(u_input.b, 71909u, global0.a.x), -2147483647i, vec2<i32>(-18207i, 1i), vec2<bool>(false, global0.d.x)))), Struct_1(vec3<u32>(35067u, global0.a.x, 18068u), global0.b, global0.c, vec2<bool>(false, global0.d.x))), ~1i, vec2<i32>(-global0.c.x, i32(-1i) * -5582i) << ((_wgslsmith_add_vec2_u32(global0.a.zx, vec2<u32>(25027u, 8179u)) | select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 80207u), global0.a.yz, global0.a.xx), ~global0.a.xx, !global0.d)) % vec2<u32>(32u)), global0.d);
    let var_1 = _wgslsmith_div_vec3_u32(global0.a, _wgslsmith_div_vec3_u32(~global0.a, vec3<u32>(~var_0.x, abs(77068u), 61457u)) << (~global0.a % vec3<u32>(32u)));
    var_0 = abs(select(select(global0.a.yy, ~var_1.zx, global0.d), (vec2<u32>(var_0.x, var_0.x) & _wgslsmith_mult_vec2_u32(var_1.yz, vec2<u32>(4294967295u, 16145u))) << ((~var_1.zy << (_wgslsmith_mod_vec2_u32(global0.a.yy, var_1.zy) % vec2<u32>(32u))) % vec2<u32>(32u)), false));
    let var_2 = Struct_1(firstLeadingBit(abs(~abs(var_1))), _wgslsmith_mult_i32(~(-u_input.a), 18972i) & min(_wgslsmith_sub_i32(global0.b, 26420i) | ~global0.b, 2147483647i), vec2<i32>(firstTrailingBit(-2147483647i), _wgslsmith_add_i32(_wgslsmith_mod_i32(~55824i, countOneBits(-63652i)), -648i)), vec2<bool>(!all(!global0.d), false));
    return global0.a;
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = Struct_1(min(countOneBits(func_2()), ~_wgslsmith_sub_vec3_u32(arg_0.a, vec3<u32>(30295u, u_input.b, 4294967295u))), arg_0.c.x, vec2<i32>(firstTrailingBit(arg_0.b), u_input.a), select(!vec2<bool>(false | arg_0.d.x, !global0.d.x), select(arg_0.d, select(select(arg_0.d, global0.d, arg_0.d.x), vec2<bool>(global0.d.x, arg_0.d.x), arg_0.d), arg_0.d.x), all(vec3<bool>(false, global0.d.x, false))));
    var var_0 = Struct_1(global0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-2147483647i, -38642i) >> (~u_input.c % 32u), ~global0.c.x, -410i, 1i), firstTrailingBit(-(~vec4<i32>(global0.b, u_input.a, -29978i, arg_0.b)))), _wgslsmith_div_vec2_i32(arg_0.c, ~vec2<i32>(28717i, arg_0.c.x) ^ countOneBits(vec2<i32>(global0.c.x, -25724i) << (vec2<u32>(58264u, global0.a.x) % vec2<u32>(32u)))), select(global0.d, global0.d, global0.d.x));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1250f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1722f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(352f, -839f))))))));
    var var_2 = ~(~reverseBits(~_wgslsmith_div_u32(4294967295u, 45217u)));
    let var_3 = true;
    return var_0.b ^ u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(0u, 0u), ((global0.a.x & u_input.c) ^ _wgslsmith_add_u32(16119u, global0.a.x)) << ((0u ^ u_input.b) % 32u), _wgslsmith_mod_u32(u_input.c, _wgslsmith_mod_u32(global0.a.x, firstTrailingBit(u_input.c)))), global0.b, max(vec2<i32>(u_input.a, _wgslsmith_clamp_i32(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-13333i, global0.b, 21181i), vec3<i32>(u_input.a, global0.c.x, -28184i)), 1i)), ~global0.c), !(!(!(!vec2<bool>(global0.d.x, global0.d.x)))));
    let var_0 = Struct_1(~_wgslsmith_div_vec3_u32(~(global0.a << (global0.a % vec3<u32>(32u))), ~(~vec3<u32>(0u, global0.a.x, 7678u))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, max(func_1(Struct_1(global0.a, -1i, global0.c, global0.d)), 0i), -52857i, _wgslsmith_div_i32(abs(50795i), u_input.a)), vec4<i32>(_wgslsmith_add_i32(-16646i, ~global0.c.x), func_1(Struct_1(vec3<u32>(17522u, global0.a.x, 0u), 1i, vec2<i32>(-27146i, global0.b), global0.d)), firstLeadingBit(-32009i), min(_wgslsmith_mod_i32(global0.c.x, u_input.a), 1i & u_input.a))), vec2<i32>(-40624i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 12790i, -51944i, global0.b), vec4<i32>(2147483647i, 18474i, -1i, 21149i))) & min(min(-1i, -17965i), _wgslsmith_add_i32(-1i, -34954i))), select(!(!vec2<bool>(global0.d.x, true)), vec2<bool>(global0.d.x, global0.d.x), select(!(!global0.d), vec2<bool>(global0.d.x, global0.b < global0.c.x), vec2<bool>(u_input.a <= u_input.a, !global0.d.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) * 1f);
    global0 = Struct_1(_wgslsmith_mult_vec3_u32(global0.a, vec3<u32>(_wgslsmith_clamp_u32(4977u, var_0.a.x << (0u % 32u), func_2().x), ~4294967295u, u_input.b)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(max(global0.c.x, ~(-15362i)), 0i & select(var_0.c.x, global0.b, false)), func_1(var_0), firstLeadingBit(u_input.a << (79246u % 32u))), -var_0.c, select(!(!select(global0.d, global0.d, var_0.d)), !global0.d, global0.d.x));
    let var_2 = var_0;
    let var_3 = var_0.b;
    let var_4 = vec3<u32>(global0.a.x | (_wgslsmith_div_u32(4923u, 3183u) & global0.a.x), 4294967295u, _wgslsmith_mod_u32(~var_0.a.x, _wgslsmith_clamp_u32((var_2.a.x << (1u % 32u)) & 1u, min(~102614u, 0u), ~(~global0.a.x))));
    let var_5 = var_0;
    var var_6 = select(!vec2<bool>(false, false | all(var_2.d)), !select(select(select(var_2.d, var_5.d, var_2.d), var_0.d, var_5.d.x | true), !var_5.d, select(select(global0.d, vec2<bool>(true, false), global0.d), vec2<bool>(var_5.d.x, var_5.d.x), true)), any(vec4<bool>(1u > select(var_2.a.x, global0.a.x, var_5.d.x), true, ~var_4.x > _wgslsmith_add_u32(var_4.x, global0.a.x), 2721i != global0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

