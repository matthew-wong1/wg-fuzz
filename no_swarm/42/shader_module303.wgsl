struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_4,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: u32) -> bool {
    var var_0 = Struct_1(true);
    let var_1 = abs(~vec3<u32>(54u, ~1u, ~(~4294967295u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_0.wwz);
    var var_3 = Struct_4(Struct_3(abs(42482u), arg_1.a.b));
    let var_4 = Struct_4(Struct_3(~1u, var_3.a.b));
    return arg_2 < _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_1.a.a, 4294967295u)), vec2<u32>(~var_1.x >> (arg_1.a.a % 32u), ~(~1u)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(891f, 880f, 687f, arg_0), vec4<f32>(arg_0, -101f, arg_0, -441f))) - vec4<f32>(750f, -1746f, 1047f, arg_0)), vec4<f32>(-1230f, _wgslsmith_f_op_f32(-961f - arg_0), 1150f, 195f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1198f + arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1248f * arg_0), _wgslsmith_f_op_f32(-arg_0))), arg_0))));
    return var_0.x;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_5) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(217f, arg_2) - 1377f)) + arg_2), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_2))), arg_3.c, vec2<i32>(i32(-1i) * -544i, arg_3.d.x ^ ~_wgslsmith_clamp_i32(2147483647i, 33760i, 0i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(arg_3.b - arg_3.b), _wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2195f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(127f, _wgslsmith_f_op_f32(f32(-1f) * -243f))))), _wgslsmith_f_op_f32(853f * _wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(var_0.b - 273f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 816f) - 558f) - 1f)), select(select(vec4<bool>(true, false, arg_3.c.a.b.d.a, !var_0.c.a.b.c.a), !vec4<bool>(arg_0, arg_3.c.a.b.d.a, false, false), vec4<bool>(true & arg_3.c.a.b.c.a, var_0.c.a.b.c.a, var_0.d.x >= -16115i, select(arg_3.c.a.b.a.a, true, true))), select(vec4<bool>(true, arg_3.d.x > -25028i, any(vec3<bool>(false, arg_3.c.a.b.a.a, true)), all(vec3<bool>(arg_3.c.a.b.a.a, true, true))), !(!vec4<bool>(var_0.c.a.b.c.a, false, false, true)), var_0.c.a.a == 49473u), true)));
    var var_2 = var_0.d.x;
    let var_3 = arg_3.c.a.b;
    var var_4 = arg_3;
    return Struct_1(_wgslsmith_mod_i32(i32(-1i) * -arg_3.d.x, arg_3.d.x) == var_0.d.x);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_i32(~(-u_input.a), u_input.a, u_input.a);
    let var_1 = func_4(arg_1.a.a, select(countOneBits(vec2<u32>(u_input.c ^ 1u, u_input.c << (u_input.c % 32u))), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, 52606u)) ^ vec2<u32>(0u, u_input.c), ~(~vec2<u32>(40004u, 1u))), vec2<bool>(func_2(vec4<f32>(1f, 1f, 1f, 1f), Struct_4(Struct_3(u_input.c, Struct_2(Struct_1(true), arg_1.c, arg_1.c, arg_1.b))), u_input.c >> (u_input.c % 32u)), any(select(vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_1.d.a, arg_0, false, arg_0), false)))), 1258f, Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1042f, 1280f) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-181f, -968f))), arg_0)), Struct_4(Struct_3(~u_input.c, arg_1)), u_input.b.yx));
    var var_2 = var_1;
    var var_3 = vec4<i32>(abs(41537i), var_0, 25720i, 31708i);
    var var_4 = vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(50212u, u_input.c, 1u) << (~vec3<u32>(66109u, u_input.c, 31565u) % vec3<u32>(32u))), ~u_input.c, ~(~_wgslsmith_div_u32(u_input.c, u_input.c))) >> (select(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 0u, 4294967295u), vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)) << (vec3<u32>(u_input.c, u_input.c, 1u) % vec3<u32>(32u)), ~vec3<u32>(1u, 1u, 1u), ~reverseBits(vec3<u32>(u_input.c, u_input.c, u_input.c))), ~vec3<u32>(u_input.c, 32624u, ~0u), false) % vec3<u32>(32u));
    return Struct_2(func_4(arg_0, vec2<u32>(15985u, ~(~1u)), -352f, Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_div_f32(-206f, _wgslsmith_f_op_f32(-1396f - -201f)), Struct_4(Struct_3(var_4.x, Struct_2(Struct_1(true), arg_1.b, Struct_1(false), Struct_1(false)))), vec2<i32>(-1i) * -var_3.xy)), var_1, Struct_1(true), Struct_1(!(arg_1.a.a != true)));
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> i32 {
    var var_0 = ~(~(~abs(~vec3<u32>(23881u, 89286u, arg_1.a.a))));
    let var_1 = _wgslsmith_f_op_f32(round(1f));
    var_0 = vec3<u32>(u_input.c, _wgslsmith_add_u32(~var_0.x, ~u_input.c), ~arg_1.a.a);
    var var_2 = func_4(abs(u_input.a) > countOneBits(abs(min(arg_0, 16002i))), reverseBits(~(~vec2<u32>(4294967295u, arg_1.a.a))), _wgslsmith_f_op_f32(ceil(var_1)), Struct_5(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(562f, _wgslsmith_f_op_f32(var_1 - var_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + -789f) * 135f)), Struct_4(arg_1.a), u_input.b.xx));
    var_0 = select(vec3<u32>(_wgslsmith_mult_u32(~(u_input.c | 0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, arg_1.a.a), vec3<u32>(var_0.x, 9697u, 1u))), arg_1.a.a, 58692u), countOneBits(~vec3<u32>(~0u, _wgslsmith_mult_u32(u_input.c, arg_1.a.a), ~1u)), !vec3<bool>(false, var_2.a, !(!var_2.a)));
    return _wgslsmith_mult_i32(abs(-abs(-u_input.b.x)), max(firstTrailingBit(-2147483647i), firstLeadingBit(-36965i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(func_5(_wgslsmith_dot_vec3_i32(-(~u_input.b), min(select(vec3<i32>(u_input.a, u_input.a, -29564i), vec3<i32>(-2147483647i, -2147483647i, u_input.b.x), vec3<bool>(false, true, true)), vec3<i32>(u_input.b.x, u_input.b.x, 1i) & u_input.b)), Struct_4(Struct_3(4294967295u << (u_input.c % 32u), func_1(false, Struct_2(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false)))))), 29644i, 10183i, u_input.a);
    let var_1 = var_0.zxy;
    var var_2 = abs(u_input.c);
    let var_3 = 23229i;
    let var_4 = Struct_5(-1149f, 216f, Struct_4(Struct_3(~(~u_input.c), func_1(true, func_1(false, Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false)))))), reverseBits(~_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(var_1.x, u_input.a)), -vec2<i32>(var_3, 1i))));
    var_2 = reverseBits(max(1u, u_input.c));
    var_2 = abs(max(49892u, 44512u));
    let var_5 = _wgslsmith_div_u32(var_4.c.a.a, firstLeadingBit(u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

