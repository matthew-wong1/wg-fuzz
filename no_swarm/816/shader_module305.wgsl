struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(-128f, 1848f, -2565f), vec2<i32>(1i, 0i), false, 1u), vec2<u32>(1u, 121911u), vec4<u32>(8401u, 4294967295u, 12317u, 49014u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(global1.a.a, _wgslsmith_sub_vec2_i32(min(select(u_input.b.zz, vec2<i32>(-63596i, 0i), true), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, 35986i), u_input.b.zw)), vec2<i32>(global0.x, -2147483647i)), false, ~(~1u)), countOneBits(global1.b), global1.c >> (firstTrailingBit(vec4<u32>(~14416u, ~global1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, global1.b.x), global1.c.zzw), _wgslsmith_div_u32(u_input.d.x, global1.c.x))) % vec4<u32>(32u)));
    let var_1 = var_0.a.c;
    let var_2 = var_0.a;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_2.a))), u_input.b.zy | global1.a.b, false | any(select(vec4<bool>(var_1, true, true, var_1), vec4<bool>(true, false, var_1, var_2.c), var_0.a.c)), global1.b.x), firstTrailingBit(u_input.d | (reverseBits(vec2<u32>(46441u, var_2.d)) << (vec2<u32>(4294967295u, 21623u) % vec2<u32>(32u)))), vec4<u32>(_wgslsmith_dot_vec4_u32(~(~global1.c), global1.c), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, global1.a.d, var_0.b.x), var_0.c.xxw), global1.c.yyz), var_2.d ^ 61864u), abs(~(~global1.b.x)), abs(_wgslsmith_div_u32(4294967295u, 4294967295u) ^ reverseBits(var_2.d))));
    return firstLeadingBit(var_0.c);
}

fn func_2(arg_0: vec3<bool>) -> vec4<bool> {
    global1 = Struct_2(global1.a, global1.c.xz, func_3(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.xw, select(global0.yx, vec2<i32>(global1.a.b.x, u_input.e), true)))));
    var var_0 = Struct_2(global1.a, vec2<u32>(_wgslsmith_dot_vec4_u32(func_3(global1.a.b.x), global1.c) ^ ~_wgslsmith_clamp_u32(1u, u_input.c, 0u), firstTrailingBit(15543u)), global1.c);
    let var_1 = true;
    var var_2 = countOneBits(reverseBits(~(~var_0.c.xwx)) | countOneBits(global1.c.xwz));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(var_0.a.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1591f, -893f, global1.a.a.x)))), _wgslsmith_clamp_vec2_i32(u_input.b.wx, ~global1.a.b, -global1.a.b), ~max(var_2.x, var_0.a.d) <= (4294967295u | global1.b.x), u_input.a), vec2<u32>(var_0.b.x << (max(~u_input.a, ~71849u) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_u32(var_2.zy, vec2<u32>(u_input.c, global1.c.x)))), var_0.c);
    return select(select(vec4<bool>(var_3.a.c, global1.a.c, arg_0.x, any(vec4<bool>(arg_0.x, var_0.a.c, var_0.a.c, arg_0.x))), vec4<bool>(var_0.a.c, !(var_0.a.b.x != 3187i), (1u ^ var_2.x) >= _wgslsmith_dot_vec2_u32(var_0.c.wx, var_2.xy), any(select(arg_0.xy, vec2<bool>(var_1, arg_0.x), arg_0.xy))), !(!select(vec4<bool>(var_1, true, false, var_3.a.c), vec4<bool>(true, true, var_1, var_0.a.c), true))), select(select(select(select(vec4<bool>(true, var_3.a.c, true, var_0.a.c), vec4<bool>(false, false, var_0.a.c, var_1), vec4<bool>(true, false, true, global1.a.c)), !vec4<bool>(arg_0.x, arg_0.x, true, false), global0.x <= -1i), select(!vec4<bool>(global1.a.c, true, true, true), vec4<bool>(true, true, false, var_1), !var_3.a.c), !select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, global1.a.c, var_3.a.c, false), var_3.a.c)), vec4<bool>(true, arg_0.x, var_3.a.c, var_1), select(select(vec4<bool>(false, false, true, var_3.a.c), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, true, false, arg_0.x), var_1), var_1), select(!vec4<bool>(global1.a.c, false, true, false), select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(var_0.a.c, false, true, false), var_3.a.c), vec4<bool>(global1.a.c, var_3.a.c, var_3.a.c, true)), !(!global1.a.c))), !select(false, false, true));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec4<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_mult_i32(-arg_0.x, -2147483647i);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(462f)), 812f, _wgslsmith_f_op_f32(f32(-1f) * -526f), 387f)));
    global0 = _wgslsmith_add_vec3_i32(vec3<i32>(min(1i, i32(-1i) * -global0.x), global0.x, var_0), u_input.b.xwz);
    var var_2 = global1.a.c != any(arg_2.xw);
    var var_3 = 1i ^ _wgslsmith_mult_i32(1i, reverseBits(var_0));
    return reverseBits(_wgslsmith_sub_vec3_i32(~vec3<i32>(-4934i, arg_0.x, abs(arg_0.x)), vec3<i32>(-2147483647i, firstLeadingBit(-72337i), ~u_input.b.x)));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = func_4(-vec2<i32>(_wgslsmith_mult_i32(global0.x, global1.a.b.x | 3427i), global0.x), ~(~arg_0.d) | ~(~(~32801u)), vec4<bool>(!any(func_2(vec3<bool>(global1.a.c, global1.a.c, false))), false, !global1.a.c, ~1u != _wgslsmith_div_u32(~global1.a.d, 4294967295u)), global1.c);
    global0 = u_input.b.ywx;
    var var_0 = _wgslsmith_add_i32(global0.x, func_4(_wgslsmith_sub_vec2_i32(global0.yy, global0.zz) | vec2<i32>(abs(global1.a.b.x), _wgslsmith_clamp_i32(arg_0.b.x, 0i, 1i)), ~1u, vec4<bool>(true, (global1.a.c != false) == all(vec2<bool>(true, global1.a.c)), false, !all(vec2<bool>(false, arg_0.c))), vec4<u32>(u_input.c, ~(arg_0.d & u_input.d.x), ~1u, ~(arg_0.d & 52349u))).x);
    let var_1 = u_input.b.x;
    let var_2 = func_2(select(!(!(!vec3<bool>(arg_0.c, global1.a.c, global1.a.c))), vec3<bool>(true, select(!arg_0.c, arg_0.c | true, global1.a.c), any(vec4<bool>(global1.a.c, true, false, true)) | true), arg_0.c)).ywz;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-493f * -316f), -1360f, _wgslsmith_f_op_f32(-global1.a.a.x))), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(2147483647i, 0i) & vec2<i32>(var_1, 1i)), max(func_4(global1.a.b, u_input.d.x, vec4<bool>(true, global1.a.c, false, true), vec4<u32>(u_input.c, 28012u, 60562u, global1.a.d)).xy, -vec2<i32>(global1.a.b.x, -1i))), true, _wgslsmith_mod_u32(u_input.d.x, 1u)), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(arg_0.d, ~arg_0.d)), ~(~(~vec4<u32>(17481u, 301u, 33725u, 3711u))) & select(_wgslsmith_div_vec4_u32(global1.c, ~global1.c), ~(~vec4<u32>(u_input.d.x, 47133u, 8954u, 54050u)), !(!vec4<bool>(global1.a.c, var_2.x, false, true))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    global1 = Struct_2(func_1(arg_3).a, vec2<u32>(1u, ~40004u), min(vec4<u32>(abs(~u_input.d.x), abs(~1u), 4294967295u, 73953u), max(_wgslsmith_mod_vec4_u32(arg_0.c, global1.c), arg_0.c) & _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(66315u, 4294967295u, 1u, arg_3.d)), arg_0.c >> (global1.c % vec4<u32>(32u)))));
    global0 = vec3<i32>(~u_input.b.x, arg_0.a.b.x, u_input.b.x);
    var var_0 = arg_0;
    var var_1 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(global1.a.a)))), vec2<i32>(u_input.e ^ abs(8022i), select(arg_3.b.x, ~arg_3.b.x, false)), any(!select(vec2<bool>(false, false), vec2<bool>(false, arg_3.c), true)), _wgslsmith_add_u32(~global1.a.d, _wgslsmith_dot_vec2_u32(~global1.c.xx, var_0.c.wz))));
    let var_2 = func_1(arg_0.a);
    return func_1(arg_3).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c ^ vec4<u32>(~(~global1.a.d), 21247u, u_input.d.x, func_5(func_1(global1.a), _wgslsmith_f_op_f32(min(global1.a.a.x, global1.a.a.x)), func_1(func_1(global1.a).a).a.a, func_1(func_1(Struct_1(vec3<f32>(global1.a.a.x, global1.a.a.x, -169f), global1.a.b, true, 4294967295u)).a).a));
    var var_1 = ~global0.x;
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(899f + -157f), _wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_f_op_f32(1114f - 315f))), vec2<i32>(-3555i, -4648i), true, _wgslsmith_mod_u32(16353u, func_5(func_1(global1.a), -978f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1351f, -386f, -632f), global1.a.a)), func_1(global1.a).a)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32((reverseBits(vec4<u32>(global1.b.x, 0u, var_0.x, 0u)) ^ global1.c) << (min(min(var_0, global1.c), vec4<u32>(39176u, 12947u, u_input.c, 4294967295u) << (vec4<u32>(var_0.x, global1.c.x, global1.b.x, global1.a.d) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(u_input.a, 4294967295u, global1.a.d, _wgslsmith_mod_u32(~37925u, 34140u & var_2.d))), vec2<u32>(0u, min(global1.b.x, abs(74036u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~var_0.x, ~0u), ~global1.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a, 3745u), 86996u), var_0.ww), _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), global1.b), abs(_wgslsmith_add_vec2_u32(var_0.wy, vec2<u32>(u_input.d.x, 22483u))))));
}

