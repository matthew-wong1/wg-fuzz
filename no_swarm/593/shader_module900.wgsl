struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-16938i, -18801i, 7070i, -10072i, -36030i, 26251i, 29246i, 1i, -3759i, -3729i, -9532i, 13570i, -20670i, 47397i, 34120i, i32(-2147483648), -33345i, 2147483647i);

var<private> global1: vec2<u32> = vec2<u32>(0u, 129760u);

var<private> global2: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global1 = ~vec2<u32>(~0u, ~(~u_input.c.x));
    global0 = array<i32, 18>();
    global1 = u_input.c.wy;
    var var_0 = Struct_1(_wgslsmith_mod_i32(~(-10488i), 2147483647i >> (u_input.c.x % 32u)), select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false)), false), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, false, true))), any(vec2<bool>(true, true))), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), false)), true, -499f);
    var_0 = Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(-9076i, u_input.b.x, u_input.b.x, 2147483647i) & vec4<i32>(u_input.b.x, var_0.a, global0[_wgslsmith_index_u32(u_input.c.x, 18u)], var_0.a), -vec4<i32>(2147483647i, 15312i, -38814i, -23793i)), select(!var_0.b, !select(vec4<bool>(var_0.b.x, false, var_0.c, var_0.b.x), select(vec4<bool>(var_0.c, var_0.c, false, true), vec4<bool>(false, var_0.b.x, false, var_0.b.x), false), vec4<bool>(var_0.b.x, true, true, true)), var_0.b.x), any(!select(vec3<bool>(var_0.c, false, var_0.b.x), !var_0.b.ywz, var_0.d >= -885f)), var_0.d);
    return var_0.d;
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = u_input.c.x;
    global0 = array<i32, 18>();
    var var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(-select(arg_0, arg_0, vec2<bool>(true, true)), arg_0), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), false), !any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(958f, _wgslsmith_f_op_f32(f32(-1f) * -2054f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-772f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-840f + 1962f), -511f)), _wgslsmith_f_op_f32(select(-203f, 532f, true)))), _wgslsmith_f_op_f32(func_3()));
    let var_2 = any(!select(vec2<bool>(var_1.a.b.x || var_1.a.b.x, any(vec3<bool>(var_1.a.b.x, true, var_1.a.c))), !var_1.a.b.wx, var_1.a.b.x || var_1.a.b.x));
    let var_3 = Struct_2(~(~1u));
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-7721i | arg_0.x, -44401i, 0i, -14038i & global0[_wgslsmith_index_u32(global1.x, 18u)]), vec4<i32>(2147483647i, var_1.a.a, var_1.a.a, -2147483647i) >> (u_input.c % vec4<u32>(32u))), vec4<i32>(~_wgslsmith_dot_vec2_i32(arg_0, arg_0), u_input.b.x, _wgslsmith_dot_vec2_i32(abs(arg_0), -u_input.a.xz), ~(1i ^ var_1.a.a))), _wgslsmith_clamp_i32(abs(u_input.b.x & select(var_1.a.a, -8086i, var_2)), -1i, _wgslsmith_sub_i32(0i, 18190i ^ abs(arg_0.x))));
}

fn func_4(arg_0: i32) -> Struct_1 {
    var var_0 = abs(u_input.b);
    var var_1 = !(!(!all(vec2<bool>(true, false)) | true));
    let var_2 = Struct_1(1i, !select(vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, true), vec4<bool>(true, true, true, true), true), !all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), select(true, true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-193f * _wgslsmith_f_op_f32(sign(217f)))))));
    var var_3 = _wgslsmith_f_op_f32(floor(2248f));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -531f) * _wgslsmith_f_op_f32(f32(-1f) * -907f));
    return Struct_1(func_2(-(~(vec2<i32>(-56783i, 37867i) >> (u_input.c.xy % vec2<u32>(32u))))), select(var_2.b, var_2.b, !(!(!vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.c)))), var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-172f)), -662f)))) + var_2.d));
}

fn func_1() -> Struct_1 {
    global1 = u_input.c.yx;
    global2 = -1072f;
    global0 = array<i32, 18>();
    var var_0 = Struct_3(func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global1.x, 18u)], -u_input.b.x), vec2<i32>(func_2(u_input.b.xy), global0[_wgslsmith_index_u32(60119u, 18u)] << (36062u % 32u)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(522f, -1237f, -622f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f + 622f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(185f - -1000f)))), _wgslsmith_div_f32(func_4(func_2(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(6981u, 18u)]))).d, 1f))));
    global0 = array<i32, 18>();
    return Struct_1(~(-31235i), !var_0.a.b, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x) & vec2<u32>(1u, 1u), u_input.c.xw >> (u_input.c.xx % vec2<u32>(32u)))) > _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(u_input.c.wxz, u_input.c.zzy), u_input.c.x, global1.x), _wgslsmith_f_op_f32(-1085f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-258f, -2139f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = max(vec3<i32>(reverseBits(~(-496i)), firstLeadingBit(global0[_wgslsmith_index_u32(~1u & _wgslsmith_div_u32(global1.x, u_input.c.x), 18u)]), -_wgslsmith_mod_i32(u_input.b.x, u_input.a.x) | global0[_wgslsmith_index_u32(~(~u_input.c.x), 18u)]), -_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -global0[_wgslsmith_index_u32(global1.x, 18u)], _wgslsmith_dot_vec2_i32(vec2<i32>(-584i, 55477i), vec2<i32>(-39799i, global0[_wgslsmith_index_u32(u_input.c.x, 18u)]))), abs(vec3<i32>(global0[_wgslsmith_index_u32(0u, 18u)], 43296i, -52327i))));
    var var_2 = global0[_wgslsmith_index_u32(max(u_input.c.x, _wgslsmith_mult_u32(~(~firstTrailingBit(0u)), ~34503u)), 18u)];
    var var_3 = func_1();
    var_2 = 15186i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(func_4(0i).a, 35396i), firstTrailingBit(62928u));
}

