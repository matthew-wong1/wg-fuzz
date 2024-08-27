struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = vec3<u32>(~(~19667u), u_input.e, ~(0u ^ ~u_input.d.x)) & ~vec3<u32>(u_input.d.x | u_input.d.x, select(4294967295u, u_input.d.x, var_0.x), max(u_input.d.x, 51093u));
    var_0 = vec2<bool>(true, all(vec2<bool>(var_0.x, var_0.x)));
    var var_2 = -216f;
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(i32(-1i) * -1i, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 12639i), vec2<i32>(-3603i, 0i)) << (~75342u % 32u))), u_input.a);
    return 228f;
}

fn func_2(arg_0: i32, arg_1: f32) -> vec4<bool> {
    global0 = vec4<f32>(global0.x, global0.x, global0.x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1262f)))))));
    var var_0 = u_input.d;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1051f, 370f, arg_1, global0.x))) + vec4<f32>(-2387f, -925f, -840f, _wgslsmith_f_op_f32(func_3())))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1, -172f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), -1200f, _wgslsmith_f_op_f32(-1106f + _wgslsmith_f_op_f32(global0.x * -585f)))));
    let var_1 = -(i32(-1i) * -reverseBits(countOneBits(u_input.c.x)));
    let var_2 = Struct_2(arg_0, global0.yz, !vec4<bool>(true, _wgslsmith_f_op_f32(sign(254f)) != global0.x, !(global0.x >= arg_1), all(vec2<bool>(true, false))));
    return !select(vec4<bool>(var_2.c.x, _wgslsmith_f_op_f32(-var_2.b.x) >= _wgslsmith_f_op_f32(var_2.b.x - var_2.b.x), var_2.c.x, any(!var_2.c.ww)), vec4<bool>(var_2.c.x || true, any(!var_2.c.yx), (var_2.c.x | var_2.c.x) | any(vec3<bool>(var_2.c.x, false, var_2.c.x)), any(!var_2.c.zw)), vec4<bool>(false, false, true, !var_2.c.x));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.yxw);
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(503f, global0.x, -683f, var_0.x)))), vec4<f32>(_wgslsmith_div_f32(1000f, 531f), _wgslsmith_div_f32(global0.x, var_0.x), var_0.x, _wgslsmith_f_op_f32(-901f - 615f)))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2165f);
    var var_2 = u_input.e;
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-820f, 1174f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1)) - var_1)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0.x, var_0.x, arg_0.c.x)))) + _wgslsmith_f_op_f32(-global0.x)), 1175f, global0.x, _wgslsmith_f_op_f32(step(var_0.x, -236f))));
    return arg_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: u32) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.xzw, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, arg_0.x, global0.x))))))) * global0.zyz), _wgslsmith_clamp_vec2_u32(~arg_2.xw, reverseBits((arg_2.yw >> (vec2<u32>(u_input.d.x, 21349u) % vec2<u32>(32u))) >> (vec2<u32>(arg_3, 53710u) % vec2<u32>(32u))), vec2<u32>(arg_2.x, ~(~arg_2.x))), func_4(Struct_2(~(~(-10147i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(779f, 283f) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -880f), vec2<f32>(global0.x, arg_0.x)))), func_2(i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-593f + -1126f)))), func_4(Struct_2(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.b), vec2<i32>(2781i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xy - global0.zw)), func_2(1i, global0.x))), arg_0.x);
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(410f, arg_0.x, 469f), vec3<f32>(-2718f, -204f, -1100f)))))), (u_input.d ^ u_input.d) | vec2<u32>(max(~18972u, u_input.d.x), 1u), Struct_2(arg_1.x | u_input.a.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1232f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.b)))), !(!var_0.c.c)), Struct_2(_wgslsmith_mod_i32(arg_1.x, var_0.c.a) | (i32(-1i) * -var_0.c.a), var_0.c.b, func_2(select(arg_1.x, ~arg_1.x, all(var_0.d.c.xyz)), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.e)) * _wgslsmith_f_op_f32(floor(arg_0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-arg_0)));
    let var_1 = vec2<u32>(~(1u << (select(~0u, var_0.b.x, true) % 32u)), ~_wgslsmith_sub_u32(~(~arg_2.x), _wgslsmith_dot_vec4_u32(~arg_2, vec4<u32>(u_input.e, 84227u, u_input.e, arg_2.x))));
    var_0 = Struct_3(vec3<f32>(-522f, -569f, arg_0.x), ~arg_2.xw, Struct_2(u_input.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(2151f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 281f) * var_0.d.b))), var_0.c.c), var_0.d, arg_0.x);
    return !(max(abs(2147483647i) << (_wgslsmith_clamp_u32(arg_2.x, 33232u, var_0.b.x) % 32u), _wgslsmith_sub_i32(0i, reverseBits(var_0.c.a))) == var_0.c.a);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> StorageBuffer {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1011f, 837f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(181f, 1428f, global0.x, arg_2.b.x) + vec4<f32>(-377f, arg_2.b.x, -1262f, 460f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(482f, _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x), -793f)), arg_2.c)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(-1186f)), _wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(sign(-232f)), 340f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.b.x, -1825f, -1484f, global0.x), vec4<f32>(-719f, global0.x, 907f, arg_2.b.x))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -1846f)))));
    return StorageBuffer(-105f, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f)), -(~1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(225f, -1714f, -283f, global0.x) - vec4<f32>(755f, global0.x, 395f, -1000f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -855f, -117f, 106f) * vec4<f32>(-781f, global0.x, 279f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -166f, -622f, global0.x) * vec4<f32>(1000f, 831f, global0.x, 247f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 473f, 883f, 1253f) - vec4<f32>(global0.x, 800f, -781f, global0.x)))))));
    let var_0 = vec3<i32>(abs(-39029i), _wgslsmith_add_i32(-u_input.b.x, -u_input.a.x) << (~1u % 32u), 0i | -(_wgslsmith_clamp_i32(u_input.c.x, u_input.a.x, u_input.b.x) ^ -2147483647i));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-802f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(sign(-255f))), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-302f)), _wgslsmith_f_op_f32(-120f * -1000f))));
    var var_1 = abs(reverseBits(_wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_0, vec3<i32>(var_0.x, 107657i, var_0.x), vec3<i32>(-2147483647i, var_0.x, u_input.b.x)), -var_0)));
    let x = u_input.a;
    s_output = func_5(max(~(u_input.e << (~1u % 32u)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(53404u, u_input.e)), u_input.d.x)), abs(27672u), Struct_2(_wgslsmith_div_i32(u_input.c.x, reverseBits(65798i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.wy * vec2<f32>(global0.x, 1037f))))), vec4<bool>(all(vec2<bool>(true, false)), false, !func_1(vec4<f32>(global0.x, -2562f, global0.x, global0.x), vec4<i32>(0i, var_0.x, 1060i, -29930i), vec4<u32>(u_input.e, 0u, 4294967295u, 1u), u_input.e), -5995i >= (u_input.b.x | var_1.x))));
}

