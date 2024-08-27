struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_4) -> bool {
    var var_0 = Struct_5(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.b.x << (56251u % 32u), global0.c.b.x | global0.b.b.x, 1u, arg_2.c.c.b.x << (30437u % 32u)), abs(_wgslsmith_add_vec4_u32(global0.b.b, global0.c.b))), ~_wgslsmith_mult_vec4_u32(arg_2.c.b.b & vec4<u32>(61560u, global0.c.b.x, 17476u, 26885u), min(global0.c.b, vec4<u32>(16520u, global0.c.b.x, 0u, 57072u)))), arg_1.x, Struct_1(arg_2.c.b.a, vec4<u32>(abs(u_input.a.x), 64089u, ~1u, global0.c.b.x), ~select(global0.b.d, arg_0, global0.c.a.x), -12921i | firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, global0.c.e.x)), -min(select(vec2<i32>(arg_2.c.c.c, global0.b.c), vec2<i32>(0i, arg_2.c.b.c), arg_1.x), vec2<i32>(arg_0, arg_0))), Struct_3(-198f, arg_2.c, arg_2.c, vec2<bool>(arg_2.a.x, false)), arg_2);
    let var_1 = ~firstTrailingBit(_wgslsmith_div_vec3_u32(var_0.d.c.b.b.yyy, vec3<u32>(var_0.d.c.b.b.x & 45408u, 4294967295u >> (arg_2.c.c.b.x % 32u), arg_2.c.b.b.x)));
    let var_2 = Struct_1(!global0.d, reverseBits(arg_2.c.b.b | arg_2.c.c.b), _wgslsmith_mult_i32(~arg_0, _wgslsmith_clamp_i32(13012i << (0u % 32u), arg_0, arg_2.c.b.c) << (~(4294967295u & var_0.d.b.c.b.x) % 32u)), -(1i ^ abs(-arg_0)), _wgslsmith_mult_vec2_i32(vec2<i32>(-(arg_2.c.b.c ^ 2147483647i), _wgslsmith_add_i32(arg_2.c.c.e.x, 1i | var_0.d.b.b.e.x)), _wgslsmith_div_vec2_i32(~(-vec2<i32>(var_0.e.c.b.d, 2147483647i)), firstLeadingBit(global0.b.e))));
    var var_3 = vec4<u32>(var_0.a.x, ~global0.b.b.x, _wgslsmith_dot_vec2_u32(abs(abs(abs(var_0.d.c.c.b.yz))), ~select(vec2<u32>(var_1.x, 121653u), ~vec2<u32>(20509u, u_input.a.x), !global0.d.zx)), var_1.x);
    let var_4 = Struct_2(select(select(select(!vec2<bool>(true, var_0.d.b.d.x), !vec2<bool>(var_0.b, true), !var_0.e.c.d.x), select(select(arg_1, vec2<bool>(false, global0.b.a.x), var_2.a.zx), global0.b.a.zy, var_2.a.x), select(var_2.a.xy, select(vec2<bool>(global0.c.a.x, true), vec2<bool>(arg_2.a.x, arg_1.x), vec2<bool>(true, var_0.b)), any(vec4<bool>(arg_2.a.x, false, global0.d.x, true)))), vec2<bool>(false, true), !var_2.a.yx), Struct_1(select(select(vec3<bool>(false, global0.d.x, arg_1.x), select(vec3<bool>(arg_1.x, false, true), var_2.a, global0.c.a), false), global0.d, global0.b.a), select(_wgslsmith_sub_vec4_u32(var_0.e.c.b.b, ~vec4<u32>(38933u, 4294967295u, var_2.b.x, 892u)), global0.c.b, true), arg_0, _wgslsmith_div_i32(var_0.e.c.c.d, 0i), vec2<i32>(23889i << (max(u_input.a.x, var_1.x) % 32u), -1i)), Struct_1(!(!arg_2.c.c.a), ~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global0.c.b.x, 42260u, arg_2.c.c.b.x, 32504u), arg_2.c.c.b)), abs(_wgslsmith_div_i32(1i, -1i)), 1i, var_2.e), !(!(!vec3<bool>(false, false, var_2.a.x))));
    return false;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(453f, _wgslsmith_f_op_f32(f32(-1f) * -1101f)))))), Struct_2(global0.c.a.zz, Struct_1(global0.b.a, vec4<u32>(0u, ~u_input.a.x, ~62027u, ~arg_0.b.x), _wgslsmith_dot_vec2_i32(arg_0.e << (vec2<u32>(arg_0.b.x, arg_0.b.x) % vec2<u32>(32u)), ~vec2<i32>(arg_0.e.x, -2147483647i)), 28417i, vec2<i32>(-global0.b.d, _wgslsmith_sub_i32(-1i, global0.b.e.x))), arg_0, vec3<bool>(abs(global0.b.b.x) >= abs(4294967295u), true, global0.b.a.x)), Struct_2(global0.d.yy, arg_0, Struct_1(vec3<bool>(true, true, true), arg_0.b, ~abs(0i), -1i, arg_0.e), !select(global0.c.a, vec3<bool>(arg_0.a.x, global0.d.x, arg_0.a.x), global0.b.a)), !(!vec2<bool>(!arg_0.a.x, true)));
    var var_1 = global0.b.a.x && ((1489f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a)), -1000f)) | any(vec3<bool>(true, false || var_0.c.a.x, func_3(global0.c.c, arg_0.a.yx, Struct_4(arg_0.a.xz, arg_0.a.x, var_0.c)))));
    let var_2 = true;
    return Struct_2(vec2<bool>(true, true), arg_0, Struct_1(vec3<bool>(!var_2, !arg_0.a.x, true), ~firstLeadingBit(select(var_0.c.c.b, vec4<u32>(0u, 61561u, 15545u, 21210u), var_2)), 2234i, ~(~global0.c.e.x), vec2<i32>(var_0.b.c.e.x, 0i)), vec3<bool>(false, false, false));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    global0 = func_2(Struct_1(!(!vec3<bool>(true, arg_0.b.a.x, global0.a.x)), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.b.x, global0.b.b.x, arg_0.b.b.x, global0.b.b.x), ~arg_0.c.b)), ~abs(_wgslsmith_sub_i32(global0.c.c, -8113i)), -(-1i & select(global0.c.d, -22336i, arg_0.c.a.x)), vec2<i32>(~(-22439i), global0.c.d)));
    global0 = arg_0;
    global0 = arg_0;
    global0 = arg_0;
    var var_0 = vec4<f32>(121f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-557f)))) + -264f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(502f - _wgslsmith_f_op_f32(f32(-1f) * -275f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(162f + 1063f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1816f + 603f) - _wgslsmith_f_op_f32(ceil(1217f)))))));
    return vec2<bool>(!global0.a.x | arg_0.d.x, all(func_2(Struct_1(vec3<bool>(true, arg_0.c.a.x, global0.d.x), global0.c.b, firstTrailingBit(-2147483647i), -global0.b.e.x, select(vec2<i32>(arg_0.c.e.x, global0.b.d), vec2<i32>(arg_0.c.c, 1i), true))).c.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = Struct_5(abs(abs(arg_1.d.c.b.b)), select(true, false, true), func_2(func_2(arg_1.e.c.c).c).b, arg_1.d, Struct_4(global0.b.a.xz, firstTrailingBit(~global0.c.b.x) > 0u, Struct_2(vec2<bool>(any(vec4<bool>(arg_1.c.a.x, true, global0.a.x, arg_0.x)), arg_3.a.x), func_2(global0.b).c, Struct_1(vec3<bool>(arg_1.b, global0.d.x, false), countOneBits(arg_1.e.c.b.b), -global0.b.d, arg_1.c.c, select(arg_3.e, arg_3.e, false)), func_2(arg_1.c).d)));
    return global0.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec2<bool>(global0.c.a.x, !(true & global0.b.a.x)), global0.b, Struct_1(select(vec3<bool>(!global0.a.x, true, global0.c.a.x), !(!global0.b.a), !global0.c.a.x), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 55706u, u_input.a.x, u_input.a.x), global0.c.b, vec4<u32>(866u, global0.c.b.x, u_input.a.x, u_input.a.x)), countOneBits(global0.c.b) << (vec4<u32>(global0.b.b.x, 0u, 14726u, 1u) % vec4<u32>(32u)), global0.b.a.x), 1i, global0.b.d, func_4(select(func_1(Struct_2(global0.c.a.xz, global0.c, Struct_1(vec3<bool>(global0.c.a.x, global0.d.x, false), global0.c.b, global0.b.d, 0i, vec2<i32>(1i, 0i)), global0.c.a)), global0.c.a.yy, global0.b.a.x), Struct_5(global0.c.b, u_input.a.x < 1u, global0.c, Struct_3(-1654f, Struct_2(global0.d.zz, global0.c, global0.b, vec3<bool>(false, true, global0.c.a.x)), Struct_2(global0.a, global0.b, Struct_1(vec3<bool>(false, global0.a.x, true), global0.c.b, global0.c.d, global0.b.e.x, vec2<i32>(global0.b.d, -2147483647i)), global0.c.a), global0.a), Struct_4(vec2<bool>(true, global0.d.x), false, Struct_2(global0.a, global0.c, global0.b, vec3<bool>(true, global0.c.a.x, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1000f, -473f)))), func_2(global0.b).c)), vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-437f)))) != _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -775f)), false, !select(func_1(Struct_2(vec2<bool>(global0.d.x, global0.d.x), Struct_1(vec3<bool>(true, false, false), global0.b.b, 0i, global0.b.e.x, vec2<i32>(1i, global0.c.e.x)), Struct_1(vec3<bool>(true, true, global0.b.a.x), vec4<u32>(u_input.a.x, global0.b.b.x, 64941u, 70633u), -1i, -2147483647i, global0.c.e), global0.d)).x, true, global0.a.x)));
    var var_0 = vec2<bool>(true, true);
    let var_1 = func_2(global0.c);
    let var_2 = select(!select(!func_1(var_1), global0.c.a.xx, var_1.c.e.x > (var_1.b.d >> (58820u % 32u))), !select(!var_1.b.a.zx, select(vec2<bool>(true, global0.c.a.x), !vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, global0.b.a.x), global0.c.a.zy, vec2<bool>(var_1.c.a.x, var_1.d.x))), true), any(!var_1.c.a));
    let var_3 = 98501u;
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-2008f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(276f - 614f))) * 452f), 868f)), var_1.a.x));
    let var_5 = -max(~vec3<i32>(~var_1.c.d, var_1.b.e.x & global0.c.d, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(-8062i, 0i, var_1.b.c), ~vec3<i32>(-1i, 34473i, global0.b.d)) >> (reverseBits(func_2(var_1.b).b.b.wzw) % vec3<u32>(32u)));
    global0 = func_2(func_2(func_2(global0.c).b).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-287f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * -338f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4, var_4) * vec2<f32>(-1400f, var_4)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-582f, -1421f) * vec2<f32>(1467f, -2335f))), vec2<f32>(-133f, _wgslsmith_f_op_f32(floor(699f))))) - vec2<f32>(843f, _wgslsmith_f_op_f32(floor(-1332f)))), var_4);
}

