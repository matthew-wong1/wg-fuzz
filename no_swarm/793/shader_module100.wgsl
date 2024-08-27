struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_4,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(54532i, 7564i, vec3<u32>(0u, 4294967295u, 1u), Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, true, true), Struct_1(false, 1u, 393f, vec3<bool>(false, true, true), -3098i)), -20001i);

var<private> global2: Struct_3 = Struct_3(0i, 1i, vec3<u32>(3885u, 4294967295u, 4044u), Struct_2(vec3<bool>(true, true, false), vec3<bool>(false, false, true), Struct_1(true, 4294967295u, -1573f, vec3<bool>(true, false, false), -5109i)), i32(-2147483648));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> u32 {
    global0 = Struct_1(true, global1.d.c.b | (_wgslsmith_mod_u32(_wgslsmith_add_u32(20256u, global1.d.c.b), _wgslsmith_mult_u32(u_input.c, arg_0)) | (global0.b & (global0.b << (1u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-194f + 126f)))), global1.d.c.d, global1.d.c.e);
    var var_0 = global2.d.c;
    global1 = Struct_3(-u_input.b.x, u_input.b.x, global1.c, global2.d, -25918i);
    global2 = Struct_3(-u_input.b.x, var_0.e, vec3<u32>(_wgslsmith_mod_u32(countOneBits(0u), ~_wgslsmith_sub_u32(1u, global1.d.c.b)), 1u, 1u), global2.d, -u_input.b.x);
    var var_1 = select(vec2<bool>(true, global0.d.x | select(true, true, true)), select(vec2<bool>(!global0.a, ~arg_0 <= 1u), select(vec2<bool>(select(global0.d.x, global0.a, global1.d.c.d.x), global1.e <= u_input.b.x), global0.d.yx, select(!vec2<bool>(global1.d.c.a, var_0.a), var_0.d.xz, all(global1.d.b.zy))), true), any(global2.d.a));
    return reverseBits(_wgslsmith_mult_u32(u_input.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~u_input.d.wyz, global1.c), 7867u)));
}

fn func_2(arg_0: Struct_5, arg_1: bool) -> Struct_3 {
    let var_0 = any(!vec4<bool>(false, !(!arg_0.e.c.d.b.x), false, true));
    var var_1 = 33147i;
    global1 = Struct_3(~_wgslsmith_div_i32(abs(~global2.d.c.e), 2147483647i), arg_0.e.a.e, vec3<u32>(~43593u, arg_0.c.c.d.c.b, ~(~u_input.c) >> (_wgslsmith_sub_u32(func_3(33039u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, 1u, 73916u, 0u), vec4<u32>(u_input.d.x, global2.d.c.b, 3374u, arg_0.e.a.b))) % 32u)), Struct_2(select(vec3<bool>(!global2.d.c.a, true, any(global1.d.b.yx)), global1.d.b, all(select(arg_0.c.a.d, global2.d.a, global2.d.b))), !(!vec3<bool>(true, global2.d.b.x, true)), Struct_1(global0.a, abs(global2.d.c.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.e.e.x))), select(vec3<bool>(global1.d.a.x, false, var_0), vec3<bool>(global1.d.c.d.x, false, arg_0.e.a.a), select(vec3<bool>(global0.a, arg_1, global0.a), global0.d, vec3<bool>(var_0, var_0, true))), global2.d.c.e)), select(global0.e, u_input.b.x | -min(global1.d.c.e, global1.a), any(global1.d.a)));
    var_1 = firstLeadingBit(_wgslsmith_mult_i32(-1i, reverseBits(~global2.b ^ (arg_0.c.d.c.e ^ u_input.b.x))));
    let var_2 = i32(-1i) * -select(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, global2.d.c.e, -1i, global2.b), -vec4<i32>(-2147483647i, u_input.b.x, 9708i, global0.e)), -(~global0.e), !(!global0.d.x));
    return arg_0.c.c;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global2 = arg_0;
    var var_0 = !vec2<bool>(any(func_2(Struct_5(global1.a, global0.c, Struct_4(global2.d.c, 443f, Struct_3(2147483647i, global1.d.c.e, vec3<u32>(arg_0.c.x, 96300u, global0.b), arg_0.d, global1.b), arg_0.d, vec3<f32>(global0.c, -1398f, arg_0.d.c.c)), false, Struct_4(Struct_1(global2.d.c.a, 0u, arg_0.d.c.c, vec3<bool>(global0.d.x, false, true), global2.a), -425f, arg_0, arg_0.d, vec3<f32>(904f, global2.d.c.c, -456f))), true).d.b), _wgslsmith_f_op_f32(493f + 1706f) > arg_0.d.c.c);
    let var_1 = Struct_2(select(!select(vec3<bool>(global0.d.x, global0.a, false), vec3<bool>(false, false, arg_0.d.b.x), select(vec3<bool>(global1.d.c.a, global2.d.a.x, false), arg_0.d.c.d, vec3<bool>(false, global1.d.b.x, global1.d.c.a))), func_2(Struct_5(-30684i, _wgslsmith_f_op_f32(-arg_0.d.c.c), Struct_4(Struct_1(false, global1.d.c.b, 885f, global2.d.c.d, arg_0.a), global1.d.c.c, arg_0, Struct_2(global0.d, global0.d, global2.d.c), vec3<f32>(757f, global2.d.c.c, 289f)), -32765i >= global2.b, Struct_4(arg_0.d.c, -400f, Struct_3(global0.e, global0.e, vec3<u32>(u_input.d.x, global0.b, 0u), global1.d, global1.d.c.e), Struct_2(vec3<bool>(var_0.x, arg_0.d.a.x, global1.d.c.d.x), global0.d, Struct_1(arg_0.d.b.x, 62546u, arg_0.d.c.c, vec3<bool>(false, true, true), arg_0.e)), vec3<f32>(638f, global1.d.c.c, global1.d.c.c))), func_2(Struct_5(34990i, -807f, Struct_4(Struct_1(true, global0.b, global1.d.c.c, vec3<bool>(arg_0.d.a.x, global0.d.x, var_0.x), 2147483647i), 1272f, Struct_3(1i, global1.b, u_input.d.xxx, global1.d, 2147483647i), arg_0.d, vec3<f32>(905f, arg_0.d.c.c, arg_0.d.c.c)), arg_0.d.a.x, Struct_4(global2.d.c, arg_0.d.c.c, Struct_3(global1.a, 31823i, vec3<u32>(8871u, 42226u, global1.c.x), Struct_2(global1.d.b, vec3<bool>(global2.d.a.x, false, true), global1.d.c), 27087i), Struct_2(vec3<bool>(true, arg_0.d.a.x, global2.d.b.x), vec3<bool>(true, true, var_0.x), arg_0.d.c), vec3<f32>(756f, -2270f, global0.c))), !arg_0.d.b.x).d.b.x).d.c.d, any(!func_2(Struct_5(-49479i, -554f, Struct_4(Struct_1(global0.a, global2.c.x, -474f, global0.d, 2147483647i), 601f, Struct_3(-47217i, 2147483647i, vec3<u32>(1u, global1.d.c.b, arg_0.c.x), Struct_2(vec3<bool>(global0.d.x, var_0.x, true), vec3<bool>(var_0.x, global0.d.x, var_0.x), global1.d.c), 451i), Struct_2(global2.d.b, vec3<bool>(global1.d.b.x, global0.a, false), arg_0.d.c), vec3<f32>(global2.d.c.c, global1.d.c.c, global1.d.c.c)), true, Struct_4(Struct_1(global0.d.x, arg_0.d.c.b, global1.d.c.c, global1.d.b, u_input.b.x), global1.d.c.c, arg_0, Struct_2(global1.d.c.d, vec3<bool>(global0.d.x, arg_0.d.c.a, global0.d.x), arg_0.d.c), vec3<f32>(global2.d.c.c, global0.c, -1054f))), arg_0.d.c.a).d.b.zy)), global0.d, Struct_1((true & all(vec4<bool>(false, true, true, global0.a))) & all(select(vec2<bool>(global2.d.a.x, true), vec2<bool>(arg_0.d.b.x, arg_0.d.a.x), false)), ~52618u, 928f, func_2(Struct_5(global1.b, -1764f, Struct_4(Struct_1(true, global0.b, -860f, global2.d.c.d, 4257i), 1392f, Struct_3(global2.d.c.e, arg_0.a, global2.c, Struct_2(global1.d.b, vec3<bool>(global1.d.c.a, false, false), global1.d.c), 2147483647i), Struct_2(vec3<bool>(var_0.x, arg_0.d.c.d.x, false), vec3<bool>(global2.d.c.d.x, false, false), Struct_1(global2.d.c.d.x, 23336u, 1369f, vec3<bool>(arg_0.d.c.a, false, true), -41312i)), vec3<f32>(355f, 1162f, -485f)), arg_0.d.a.x, Struct_4(Struct_1(global0.d.x, arg_0.d.c.b, global2.d.c.c, global2.d.a, -14342i), 423f, arg_0, Struct_2(global2.d.a, vec3<bool>(true, arg_0.d.a.x, global0.a), Struct_1(false, 4294967295u, arg_0.d.c.c, global0.d, arg_0.d.c.e)), vec3<f32>(-204f, 1000f, -696f))), !(var_0.x || false)).d.b, -(~(~0i))));
    global2 = func_2(Struct_5(firstLeadingBit(global0.e) & ~firstTrailingBit(-58437i), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), arg_0.d.c.c))), Struct_4(Struct_1(any(vec4<bool>(global0.d.x, arg_0.d.a.x, true, arg_0.d.b.x)), global2.c.x, _wgslsmith_f_op_f32(var_1.c.c * global0.c), vec3<bool>(true, true, true), global1.a), _wgslsmith_f_op_f32(f32(-1f) * -956f), func_2(Struct_5(var_1.c.e, -1289f, Struct_4(Struct_1(global1.d.b.x, global2.c.x, -265f, var_1.c.d, -10770i), 630f, arg_0, arg_0.d, vec3<f32>(global0.c, 1662f, global1.d.c.c)), var_0.x, Struct_4(global2.d.c, global0.c, arg_0, global1.d, vec3<f32>(-1143f, global2.d.c.c, arg_0.d.c.c))), any(vec3<bool>(global0.d.x, false, global0.d.x))), Struct_2(global0.d, func_2(Struct_5(50028i, arg_0.d.c.c, Struct_4(Struct_1(var_0.x, 4294967295u, -195f, var_1.c.d, 2147483647i), global0.c, arg_0, Struct_2(vec3<bool>(true, false, var_1.b.x), arg_0.d.c.d, var_1.c), vec3<f32>(1726f, var_1.c.c, 955f)), true, Struct_4(global2.d.c, arg_0.d.c.c, arg_0, Struct_2(global0.d, vec3<bool>(true, var_0.x, global1.d.c.a), global1.d.c), vec3<f32>(-974f, global2.d.c.c, global0.c))), true).d.c.d, func_2(Struct_5(global0.e, -872f, Struct_4(var_1.c, 1055f, Struct_3(-5971i, -22625i, vec3<u32>(u_input.d.x, var_1.c.b, 2161u), Struct_2(vec3<bool>(true, true, true), global0.d, Struct_1(false, global0.b, 1151f, global1.d.a, var_1.c.e)), global2.b), Struct_2(arg_0.d.a, global0.d, arg_0.d.c), vec3<f32>(-1433f, global0.c, 220f)), false, Struct_4(Struct_1(var_0.x, global0.b, global1.d.c.c, vec3<bool>(false, global0.a, false), global2.d.c.e), global1.d.c.c, Struct_3(47111i, 14935i, vec3<u32>(58600u, 13563u, 0u), var_1, u_input.b.x), global2.d, vec3<f32>(1000f, -210f, arg_0.d.c.c))), global2.d.c.d.x).d.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.c.c, var_1.c.c, -346f) + vec3<f32>(-322f, global2.d.c.c, 692f)))), select(global0.c >= global1.d.c.c, var_1.b.x, false), Struct_4(Struct_1(true, ~15074u, _wgslsmith_f_op_f32(f32(-1f) * -233f), vec3<bool>(var_0.x, false, false), 59011i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.d.c.c)), _wgslsmith_f_op_f32(arg_0.d.c.c * var_1.c.c)), Struct_3(-2147483647i, global1.d.c.e, vec3<u32>(global0.b, var_1.c.b, 4294967295u) | vec3<u32>(u_input.c, global1.c.x, 26818u), Struct_2(arg_0.d.c.d, global1.d.b, global2.d.c), _wgslsmith_sub_i32(var_1.c.e, u_input.b.x)), Struct_2(vec3<bool>(true, global0.a, arg_0.d.c.d.x), vec3<bool>(global1.d.a.x, true, true), func_2(Struct_5(3846i, arg_0.d.c.c, Struct_4(Struct_1(false, 4294967295u, 1696f, vec3<bool>(global0.d.x, false, true), 0i), -897f, arg_0, global2.d, vec3<f32>(941f, -229f, 1752f)), arg_0.d.a.x, Struct_4(Struct_1(global2.d.c.a, global0.b, global2.d.c.c, global0.d, global0.e), -997f, Struct_3(global2.e, global2.a, vec3<u32>(var_1.c.b, var_1.c.b, global1.c.x), arg_0.d, 0i), global2.d, vec3<f32>(global1.d.c.c, global2.d.c.c, -702f))), global1.d.b.x).d.c), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-187f, global2.d.c.c, -523f))))), !global0.a);
    global1 = arg_0;
    return global1.d.c;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_5) -> f32 {
    let var_0 = arg_2.c.c.d.c.c;
    global0 = func_4(func_2(arg_2, true));
    global2 = Struct_3(-global0.e, _wgslsmith_add_i32(-10535i, global1.b ^ max(global1.a, global2.d.c.e)), ~vec3<u32>(23924u, arg_2.c.a.b, ~abs(4294967295u)), Struct_2(func_2(Struct_5(u_input.b.x, var_0, Struct_4(arg_2.c.d.c, global2.d.c.c, Struct_3(global0.e, u_input.b.x, arg_2.e.c.c, Struct_2(global2.d.b, vec3<bool>(global0.a, arg_0, global1.d.b.x), Struct_1(false, 4294967295u, 1013f, arg_2.e.d.a, 0i)), u_input.b.x), arg_2.c.d, arg_2.c.e), !global0.a, arg_2.e), !any(global2.d.b)).d.b, global1.d.a, global2.d.c), countOneBits(0i));
    var var_1 = global2.d.c.d;
    global1 = Struct_3(-_wgslsmith_add_i32(global1.e | u_input.b.x, -28199i) & global2.b, -38625i, global2.c, Struct_2(vec3<bool>(true, !(!arg_2.e.d.c.d.x), all(vec4<bool>(true, false, global2.d.a.x, arg_2.d))), select(select(vec3<bool>(var_1.x, true, global2.d.a.x), global0.d, vec3<bool>(false, true, false)), global1.d.b, global2.d.b), Struct_1(global1.d.b.x, _wgslsmith_mult_u32(arg_2.e.a.b, 2871u), global0.c, arg_2.c.a.d, countOneBits(abs(2147483647i)))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(global2.d.c.e, func_4(Struct_3(-28678i, global0.e, arg_2.e.c.c, Struct_2(global2.d.b, vec3<bool>(false, false, arg_0), arg_2.c.c.d.c), -1i)).e)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.e, 0i) >> (arg_2.e.c.c.xz % vec2<u32>(32u)), vec2<i32>(global2.a, global0.e)), _wgslsmith_div_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.c.c.b, global1.b), u_input.b)), arg_2.c.a.d.x)));
    return _wgslsmith_f_op_f32(-arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 946f, global1.d.c.c), vec3<f32>(global0.c, -1006f, -1000f), vec3<bool>(false, true, false))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1265f, global1.d.c.c, global2.d.c.c), vec3<f32>(-246f, global0.c, 1000f))))) - vec3<f32>(1377f, global2.d.c.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.c)), _wgslsmith_f_op_f32(func_1(global2.d.b.x, vec2<u32>(1u, global2.d.c.b), Struct_5(global2.a, global2.d.c.c, Struct_4(Struct_1(false, 34631u, -1262f, vec3<bool>(false, true, global2.d.c.a), -37152i), global2.d.c.c, Struct_3(global0.e, 15795i, global1.c, global2.d, 1i), global2.d, vec3<f32>(230f, global2.d.c.c, -671f)), false, Struct_4(global2.d.c, global2.d.c.c, Struct_3(global2.a, -1i, u_input.d.xzx, Struct_2(global1.d.a, vec3<bool>(false, true, global0.d.x), Struct_1(false, global0.b, global2.d.c.c, global2.d.a, global2.b)), 13724i), global2.d, vec3<f32>(global1.d.c.c, global0.c, global1.d.c.c))))))))));
    var var_2 = global1.d.c;
    global1 = Struct_3(abs(-43401i), 1i, _wgslsmith_div_vec3_u32(vec3<u32>(~2224u, ~4294967295u, u_input.c), abs(select(reverseBits(u_input.d.wzw), global2.c, true))), global1.d, global0.e);
    global1 = func_2(Struct_5(func_2(Struct_5(-1i ^ var_2.e, global2.d.c.c, Struct_4(global1.d.c, -663f, Struct_3(-19666i, global2.d.c.e, vec3<u32>(global2.c.x, 82728u, 0u), global2.d, -12180i), global2.d, var_1), false && var_2.d.x, Struct_4(Struct_1(global1.d.b.x, global0.b, 267f, vec3<bool>(false, false, true), 1i), 1000f, Struct_3(var_2.e, -1i, u_input.d.zxy, global1.d, u_input.b.x), global2.d, vec3<f32>(-103f, -1374f, -1793f))), false).b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.c)))))), Struct_4(global1.d.c, _wgslsmith_f_op_f32(f32(-1f) * -368f), Struct_3(_wgslsmith_mod_i32(-33272i, var_2.e), ~global1.e, vec3<u32>(17336u, u_input.a, 1u), global1.d, 46435i), func_2(Struct_5(0i, 822f, Struct_4(global1.d.c, 471f, Struct_3(0i, global1.b, global2.c, global2.d, global0.e), global1.d, var_1), global1.d.a.x, Struct_4(global1.d.c, global2.d.c.c, Struct_3(8442i, 9356i, vec3<u32>(global1.c.x, 1u, var_2.b), global1.d, -1i), global2.d, vec3<f32>(-988f, var_1.x, 358f))), true).d, _wgslsmith_f_op_vec3_f32(-var_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x - -1000f))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.d.c.c)), -492f), Struct_4(global2.d.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(801f * var_2.c))), Struct_3(firstLeadingBit(-1i), func_2(Struct_5(u_input.b.x, -246f, Struct_4(Struct_1(true, global1.c.x, 542f, vec3<bool>(var_0, true, var_0), var_2.e), global1.d.c.c, Struct_3(global2.b, -9365i, global1.c, global1.d, global0.e), Struct_2(vec3<bool>(false, true, global0.d.x), global1.d.a, Struct_1(false, u_input.d.x, 797f, vec3<bool>(false, var_2.a, true), global2.b)), vec3<f32>(798f, global1.d.c.c, global2.d.c.c)), var_0, Struct_4(global1.d.c, var_2.c, Struct_3(2147483647i, global1.e, vec3<u32>(77513u, 58053u, var_2.b), Struct_2(global2.d.b, vec3<bool>(var_2.d.x, var_0, var_0), global2.d.c), 0i), Struct_2(vec3<bool>(true, var_2.d.x, global2.d.a.x), global0.d, Struct_1(global1.d.a.x, 4294967295u, -1046f, global1.d.b, 2147483647i)), var_1)), false).b, vec3<u32>(4294967295u, var_2.b, var_2.b), global1.d, global2.a), global2.d, _wgslsmith_f_op_vec3_f32(var_1 * _wgslsmith_f_op_vec3_f32(-vec3<f32>(988f, 1000f, -462f))))), all(select(global0.d, var_2.d, func_4(func_2(Struct_5(2147483647i, global0.c, Struct_4(Struct_1(var_0, 4294967295u, global0.c, var_2.d, 0i), var_2.c, Struct_3(u_input.b.x, 2147483647i, vec3<u32>(8685u, 0u, 4294967295u), global2.d, 23139i), global2.d, vec3<f32>(-1340f, global0.c, var_2.c)), false, Struct_4(Struct_1(true, 46704u, var_2.c, vec3<bool>(false, false, var_0), u_input.b.x), 1000f, Struct_3(global1.b, global0.e, vec3<u32>(1u, var_2.b, 76794u), global1.d, var_2.e), global1.d, vec3<f32>(var_2.c, var_2.c, 115f))), var_0)).d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.xx + var_1.yx))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1388f, 989f) + _wgslsmith_f_op_vec2_f32(select(var_1.zy, vec2<f32>(-359f, global0.c), vec2<bool>(global2.d.a.x, false)))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c, _wgslsmith_div_f32(1052f, -166f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.yx + vec2<f32>(1998f, 441f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-885f, global0.c)))), global1.d.b.xy))));
}

