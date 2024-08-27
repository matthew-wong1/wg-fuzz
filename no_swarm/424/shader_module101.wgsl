struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(1u, 1u, 0u), vec3<u32>(43387u, 33783u, 9894u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 22665u, 741u), vec3<u32>(65437u, 8545u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1477u, 4294967295u, 75501u), vec3<u32>(40741u, 64671u, 0u), vec3<u32>(1u, 4294967295u, 32522u), vec3<u32>(19520u, 0u, 1019u), vec3<u32>(1437u, 4294967295u, 18095u), vec3<u32>(21793u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(84695u, 55709u, 0u), vec3<u32>(89656u, 109173u, 38666u), vec3<u32>(14596u, 27379u, 19137u), vec3<u32>(4294967295u, 15972u, 4294967295u), vec3<u32>(22679u, 17043u, 1u), vec3<u32>(46768u, 2028u, 1u), vec3<u32>(882u, 11062u, 27566u), vec3<u32>(1u, 44396u, 53342u), vec3<u32>(0u, 25637u, 34136u), vec3<u32>(132182u, 4688u, 0u), vec3<u32>(6501u, 53209u, 12004u), vec3<u32>(22589u, 41949u, 4294967295u), vec3<u32>(0u, 0u, 30289u), vec3<u32>(169970u, 25660u, 0u), vec3<u32>(82938u, 17570u, 1u), vec3<u32>(9145u, 27995u, 4294967295u), vec3<u32>(2338u, 707u, 54587u), vec3<u32>(47308u, 37111u, 90234u));

var<private> global2: array<vec3<f32>, 24>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global0 = array<vec4<i32>, 23>();
    global2 = array<vec3<f32>, 24>();
    global2 = array<vec3<f32>, 24>();
    let var_0 = -126f;
    global0 = array<vec4<i32>, 23>();
    return _wgslsmith_mod_i32(-1i, reverseBits(~(~u_input.c.x)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_1(u_input.a.x, !any(vec4<bool>(true, true, true, all(vec3<bool>(false, false, true)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-786f, _wgslsmith_f_op_f32(754f - -616f)))) + -1000f));
    let var_2 = true;
    var var_3 = Struct_4(select(-(~(vec3<i32>(u_input.c.x, -1i, arg_0) ^ vec3<i32>(-40431i, -2147483647i, u_input.b))), select(_wgslsmith_mult_vec3_i32(vec3<i32>(37404i, arg_0, -22481i), abs(vec3<i32>(0i, u_input.c.x, 21003i))), vec3<i32>(func_3(), -16354i | arg_0, 2147483647i), select(var_2, all(vec3<bool>(false, var_2, true)), false)), var_0.b), -1i, abs(u_input.c) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.a, 0u), max(countOneBits(u_input.a.yx), u_input.a.zx)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-countOneBits(-2147483647i), ~1i), vec2<i32>(arg_0, _wgslsmith_mod_i32(u_input.b, u_input.b))));
    return Struct_3(((countOneBits(var_0.a) & 64228u) | ~0u) == (select(20506u, u_input.a.x, true) >> (var_0.a % 32u)), 754f, Struct_2((vec2<i32>(-1i) * -vec2<i32>(-1i, -23504i)) << ((vec2<u32>(u_input.a.x, var_0.a) << (~vec2<u32>(var_0.a, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = Struct_1(6130u, true);
    let var_1 = func_2(_wgslsmith_sub_i32(~arg_0.d.x, ~firstTrailingBit(arg_0.b)));
    let var_2 = func_2(func_2(-(arg_2.a.x << (~18524u % 32u))).c.a.x).c;
    let var_3 = -831f;
    var var_4 = Struct_1(u_input.a.x, var_2.a.x != ~(i32(-1i) * -arg_2.d.x));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1734f, var_1.b, var_1.b, 129f) * vec4<f32>(1282f, -1007f, 851f, -618f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -334f, 204f, -1795f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-195f, var_3, -700f, var_1.b), vec4<f32>(-3277f, 126f, var_1.b, 777f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1787f, var_1.b, var_3, 1752f)))) + vec4<f32>(-340f, func_2(-1i).b, _wgslsmith_f_op_f32(f32(-1f) * -1969f), -541f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1695f, _wgslsmith_f_op_f32(128f * var_1.b), false)) - _wgslsmith_f_op_f32(ceil(var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3)) + _wgslsmith_f_op_f32(trunc(var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, 369f))) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3, 516f), _wgslsmith_f_op_f32(var_1.b + var_1.b)))), _wgslsmith_f_op_f32(abs(var_3))), select(vec4<bool>(!all(vec4<bool>(arg_1, true, var_0.b, var_4.b)), false, (i32(-1i) * -10132i) <= (var_1.c.a.x << (var_0.a % 32u)), any(select(vec3<bool>(var_1.a, false, false), vec3<bool>(false, arg_1, false), false))), vec4<bool>(true, any(!vec2<bool>(arg_1, var_0.b)), true, (1u <= u_input.a.x) && var_1.a), vec4<bool>(true, true, !var_4.b, 0u >= max(var_4.a, var_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f - -490f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-108f, -792f)))), 1381f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(663f - 1807f), _wgslsmith_div_f32(1409f, 678f), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(310f, -1003f, -287f, -2430f), vec4<f32>(335f, -448f, -154f, -236f))))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -694f), 2085f, _wgslsmith_f_op_f32(f32(-1f) * -1293f), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(383f, -1000f, -1916f, -103f), vec4<f32>(-1000f, 1462f, -1254f, -1000f))) + _wgslsmith_f_op_vec4_f32(func_1(Struct_4(vec3<i32>(32308i, 15298i, 4683i), u_input.b, vec2<i32>(-6832i, -1i), u_input.c), false, Struct_4(vec3<i32>(-1i, u_input.b, u_input.c.x), 1i, u_input.c, vec2<i32>(-47476i, 53165i))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(850f, 1378f, 1196f, 513f))), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)))), true)));
    let var_1 = var_0.xw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(~reverseBits(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, 4294967295u))), _wgslsmith_mod_vec2_u32(u_input.a.yx, u_input.a.yx)));
}

