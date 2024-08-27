struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> bool {
    let var_0 = !vec3<bool>(any(!(!vec4<bool>(false, false, arg_1.a, arg_1.e))), false, arg_1.e);
    let var_1 = false;
    global0 = (~_wgslsmith_clamp_u32(reverseBits(4294967295u), 3947u, 1u) >> (10272u % 32u)) >= min(arg_2, 40415u);
    let var_2 = arg_1;
    let var_3 = arg_1;
    return all(vec2<bool>(any(select(vec2<bool>(false, true), select(var_0.xy, vec2<bool>(var_0.x, true), true), !vec2<bool>(var_2.e, arg_1.a))), true));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<bool> {
    global0 = select(arg_3.b.a, true, arg_2.x);
    global0 = false;
    var var_0 = arg_3;
    let var_1 = _wgslsmith_mult_i32(~(-14515i), _wgslsmith_clamp_i32(13885i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(arg_3.b.b, u_input.a.x, -5119i), vec3<i32>(43037i, -2147483647i, 2147483647i)) >> (vec3<u32>(1u, arg_0.x, var_0.b.c) % vec3<u32>(32u)), select(-vec3<i32>(11387i, u_input.a.x, u_input.a.x), abs(vec3<i32>(arg_1.b.b, u_input.a.x, u_input.a.x)), !arg_3.a)), -1i));
    var_0 = Struct_2(all(!vec4<bool>(any(vec4<bool>(false, arg_2.x, arg_1.b.e, true)), true, any(vec4<bool>(false, true, arg_3.a, false)), false)), Struct_1(arg_2.x, ~reverseBits(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(100948u, min(arg_3.b.c, arg_3.b.c), select(arg_1.b.c, 4965u, arg_2.x)), firstLeadingBit(vec3<u32>(43172u, 1u, arg_0.x) ^ arg_0.zzz)), var_0.b.d, var_0.a));
    return vec4<bool>(var_0.b.a, func_3(u_input.a, arg_1.b, _wgslsmith_div_u32(1u, 67297u), ~(-u_input.a)), any(vec4<bool>(select(arg_1.b.a, any(vec4<bool>(true, arg_1.b.a, var_0.b.a, arg_3.b.a)), true), false, any(select(vec4<bool>(arg_2.x, arg_2.x, arg_3.b.e, arg_1.b.a), vec4<bool>(var_0.b.a, true, false, arg_1.b.e), arg_3.b.a)), true)), !var_0.a);
}

fn func_2() -> i32 {
    global0 = true;
    global0 = u_input.c > u_input.b.x;
    global0 = false;
    global0 = any(!func_4(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), ~u_input.b), Struct_3(-491f, Struct_1(false, 19430i, 10232u, vec3<f32>(-989f, -333f, 968f), true), vec4<f32>(-431f, -804f, 107f, -1073f), 41153u), vec2<bool>(true, true), Struct_2(func_3(vec2<i32>(0i, 2367i), Struct_1(false, u_input.a.x, u_input.c, vec3<f32>(-770f, -359f, 1000f), true), 66618u, u_input.a), Struct_1(false, -2147483647i, u_input.c, vec3<f32>(1501f, -1518f, -1668f), true))));
    let var_0 = select(vec4<bool>(all(vec4<bool>(true, any(vec4<bool>(false, false, false, false)), true, true)), any(vec2<bool>(any(vec3<bool>(true, true, true)), true)), true, select(true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), false)), vec4<bool>(select(u_input.a.x, -2758i, all(vec4<bool>(false, false, false, true))) == _wgslsmith_add_i32(u_input.a.x, countOneBits(2147483647i)), true, true, !any(vec4<bool>(true, true, true, true))), func_4(~abs(u_input.b), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-122f + -621f), 348f), Struct_1(any(vec3<bool>(true, true, true)), u_input.a.x & u_input.a.x, 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-845f, -496f, 791f)), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1026f, 755f, 1650f, 588f) - vec4<f32>(737f, -880f, 906f, -1097f)), ~u_input.b.x), vec2<bool>(true, true), Struct_2(true, Struct_1(all(vec4<bool>(true, false, false, false)), 1i, ~u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-223f, -944f, 268f) - vec3<f32>(-669f, 100f, -989f)), true))));
    return ~u_input.a.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    global0 = func_2() <= u_input.a.x;
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_1 = Struct_2(!(~arg_0.x == _wgslsmith_dot_vec3_u32(u_input.b.zyw, u_input.b.yzw)) && false, Struct_1(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), true)), ~abs(firstLeadingBit(u_input.a.x)), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(arg_1, -765f, arg_1))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -833f, arg_1)))), _wgslsmith_mod_i32(_wgslsmith_div_i32(-11478i, -4671i), u_input.a.x) == -_wgslsmith_mult_i32(39068i, u_input.a.x)));
    let var_2 = Struct_3(-1000f, Struct_1(any(!(!vec4<bool>(false, var_1.b.a, var_1.a, true))), _wgslsmith_mult_i32(var_1.b.b, ~(-1i) & (1i << (var_1.b.c % 32u))), abs(u_input.c), vec3<f32>(893f, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -823f)), all(vec2<bool>(true, arg_0.x >= var_1.b.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.d.x), _wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(-1417f + -486f), 187f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(-212f - arg_1), arg_1, _wgslsmith_f_op_f32(-var_1.b.d.x)))), min(var_1.b.c, (max(arg_0.x, var_1.b.c) >> (reverseBits(15729u) % 32u)) << (arg_0.x % 32u)));
    global0 = false;
    return 11081u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1014f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -466f);
    var var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(func_1(u_input.b.zx, 417f), ~1u, u_input.c ^ u_input.b.x, 45230u), ~vec4<u32>(u_input.c, u_input.b.x, u_input.c, u_input.c)) ^ (select(min(~vec4<u32>(u_input.b.x, u_input.c, 0u, 24036u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, u_input.c)), ~(~u_input.b), false) & ~u_input.b);
    var var_2 = _wgslsmith_f_op_f32(round(-135f));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2310f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1352f, -1733f))) + -902f)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-491f))), -1792f));
}

