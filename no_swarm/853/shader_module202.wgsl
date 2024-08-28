struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<i32> = vec3<i32>(0i, 0i, 8526i);

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = min(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-2147483647i, global1.x, global1.x, global1.x)), select(~vec4<i32>(global1.x, global1.x, global1.x, 1i), max(vec4<i32>(global1.x, 2147483647i, global1.x, 36820i), vec4<i32>(2147483647i, global1.x, -30394i, global1.x)), select(vec4<bool>(global2.x, false, false, false), vec4<bool>(true, arg_0.c.a.x, arg_0.c.a.x, arg_0.b.a.x), global2.x))), ~(~vec4<i32>(22030i, global1.x, global1.x, global1.x) >> ((u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)))) | -max(~(~vec4<i32>(global1.x, global1.x, global1.x, -54118i)), ~vec4<i32>(-9821i, global1.x, global1.x, global1.x) << (vec4<u32>(4294967295u, 0u, u_input.a.x, global0.a) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(arg_0.d * 1559f);
    let var_2 = Struct_2(1u, arg_0.b, Struct_1(select(select(arg_0.b.a, vec3<bool>(true, true, arg_0.b.a.x), all(arg_0.b.a)), !(!global0.b.a), _wgslsmith_f_op_f32(select(arg_0.d, var_1, global2.x)) != -1239f), var_1 <= 108f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d))) * 476f));
    let var_3 = 1000f;
    var var_4 = vec3<bool>(true, all(!vec4<bool>(!global2.x, true, true, select(true, arg_0.b.b, global0.b.b))), any(var_2.b.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d)))))));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = 21222i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(-122f - _wgslsmith_f_op_f32(global0.d * global0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(arg_1, arg_0.b, Struct_1(arg_0.c.a, false), -529f)))) * -1070f) - 1068f), arg_0.d);
    global1 = -countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(1i, reverseBits(var_0), var_0 >> (arg_1 % 32u)), abs(-vec3<i32>(var_0, var_0, var_0))));
    global1 = -reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, global1.x, 2147483647i), -vec3<i32>(global1.x, global1.x, -55630i)) | vec3<i32>(global1.x, var_0 >> (1u % 32u), 0i));
    let var_2 = Struct_1(select(!select(!vec3<bool>(false, global2.x, false), arg_0.b.a, !global0.c.a), global0.b.a, (1u ^ _wgslsmith_mod_u32(11402u, u_input.b)) <= _wgslsmith_mod_u32(arg_1 >> (0u % 32u), ~1u)), global2.x);
    return Struct_1(!(!(!var_2.a)), true);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2(arg_1, reverseBits(0u)).b;
    var var_1 = global0.b;
    let var_2 = false;
    global0 = arg_1;
    var var_3 = Struct_1(!func_2(arg_1, abs(4294967295u)).a, false && !(true & var_1.a.x));
    return arg_1.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = func_4(vec2<i32>(firstLeadingBit(-26427i), arg_1.x), Struct_2(~(~firstLeadingBit(u_input.a.x)), global0.b, func_2(Struct_2(abs(global0.a), global0.b, Struct_1(arg_0.xxw, false), _wgslsmith_f_op_f32(abs(525f))), ~abs(u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * _wgslsmith_f_op_f32(global0.d + global0.d))));
    let var_1 = Struct_2(~abs(u_input.b), func_2(Struct_2(~global0.a, func_4(abs(vec2<i32>(2834i, -18478i)), Struct_2(4294967295u, global0.b, global0.c, -275f)), global0.b, global0.d), firstLeadingBit(54151u)), Struct_1(vec3<bool>(global2.x & false, !func_4(global1.yx, Struct_2(0u, global0.c, Struct_1(global0.b.a, global2.x), 528f)).a.x, all(vec3<bool>(true, true, global0.c.a.x))), false), global0.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, -564f, global0.d, global0.d)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, 928f, 1000f, -1003f) - vec4<f32>(var_1.d, 504f, global0.d, global0.d)), vec4<f32>(var_1.d, -355f, global0.d, -689f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.d, var_1.d, var_1.d, global0.d), vec4<f32>(var_1.d, global0.d, -897f, 586f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1449f, -405f, -626f, global0.d))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, 433f, 246f, global0.d)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, var_1.d, global0.d, 459f) * vec4<f32>(-400f, global0.d, global0.d, 286f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1201f, -400f, 1007f, 669f)) - vec4<f32>(global0.d, global0.d, 116f, var_1.d))))));
    var var_3 = func_2(var_1, _wgslsmith_sub_u32(1u | ~_wgslsmith_clamp_u32(71070u, 50500u, 29560u), 4512u));
    let var_4 = Struct_2(~max(~reverseBits(1u), global0.a), func_4(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(1i, arg_1.x)), _wgslsmith_sub_vec2_i32(global1.yx, countOneBits(global1.xx)), ~(vec2<i32>(global1.x, -1i) << (u_input.a.wx % vec2<u32>(32u)))), Struct_2(44346u, func_2(Struct_2(u_input.b, global0.b, Struct_1(global0.b.a, false), var_1.d), 4294967295u), func_2(Struct_2(var_1.a, Struct_1(vec3<bool>(true, var_3.a.x, true), false), var_1.b, 385f), 36563u), var_1.d)), func_4(abs(abs(global1.xz)), Struct_2(var_1.a, func_4(~arg_1, var_1), global0.c, global0.d)), 2344f);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(reverseBits(1601u), global0.b, func_1(vec4<bool>(4294967295u > (global0.a & global0.a), all(global0.c.a.zy) & (global1.x > global1.x), true, !(global2.x | global0.c.a.x)), vec2<i32>(-2147483647i, min(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(-1i, global1.x, global1.x, 1i))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-480f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(749f + -836f))))));
    let var_0 = Struct_1(func_1(select(select(select(vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, global0.b.b, false), global2.x), vec4<bool>(false, global0.c.a.x, global0.c.a.x, global2.x), select(vec4<bool>(global0.c.a.x, false, false, false), vec4<bool>(true, global0.b.b, false, global0.c.b), vec4<bool>(global0.c.a.x, global2.x, false, global0.b.b))), !select(vec4<bool>(true, false, global0.b.b, global2.x), vec4<bool>(global0.b.b, global2.x, global0.b.b, true), global2.x), vec4<bool>(any(vec4<bool>(false, false, false, global0.b.b)), !global0.c.a.x, any(vec4<bool>(global2.x, global0.b.a.x, true, global0.c.b)), global2.x)), firstTrailingBit(vec2<i32>(firstTrailingBit(global1.x), _wgslsmith_dot_vec2_i32(global1.xz, global1.xx)))).a, true);
    global1 = -vec3<i32>(global1.x, countOneBits(_wgslsmith_mod_i32(global1.x >> (global0.a % 32u), global1.x)), global1.x);
    let var_1 = global0.d;
    var var_2 = func_1(select(vec4<bool>(false, global2.x, _wgslsmith_f_op_f32(global0.d - -1843f) > global0.d, global2.x), !(!(!vec4<bool>(global0.c.a.x, false, var_0.a.x, true))), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec2_i32(~global1.xz, vec2<i32>(global1.x, countOneBits(global1.x << (1u % 32u))))).a.yz;
    var var_3 = Struct_1(!func_2(Struct_2(u_input.c, func_1(vec4<bool>(true, global0.b.a.x, true, true), vec2<i32>(global1.x, global1.x)), func_4(global1.yz, Struct_2(9087u, global0.b, Struct_1(vec3<bool>(var_2.x, true, global2.x), true), 305f)), _wgslsmith_f_op_f32(192f * -184f)), abs(~global0.a)).a, false);
    var var_4 = Struct_2(reverseBits(_wgslsmith_mult_u32(4144u, select(global0.a, 38083u, global0.c.a.x))) >> (18714u % 32u), global0.c, var_0, _wgslsmith_f_op_f32(round(556f)));
    let var_5 = func_1(vec4<bool>(false, true, all(func_4(global1.xx, Struct_2(u_input.b, global0.b, var_4.b, var_4.d)).a.xy), false), -global1.zz);
    let x = u_input.a;
    s_output = StorageBuffer(-select(~global1.x, firstLeadingBit(global1.x), true) << (_wgslsmith_dot_vec3_u32(vec3<u32>(18558u, ~var_4.a, u_input.b), vec3<u32>(4294967295u, 0u, min(4294967295u, global0.a))) % 32u), ~(~u_input.b), abs(vec3<i32>(global1.x, ~(-global1.x), ~(-global1.x))));
}

