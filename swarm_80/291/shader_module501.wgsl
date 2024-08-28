struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: i32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: u32) -> vec3<i32> {
    let var_0 = Struct_1(!vec2<bool>(true, !all(vec2<bool>(false, false))), u_input.a.yz);
    let var_1 = 0u;
    let var_2 = (var_0.a.x | var_0.a.x) | var_0.a.x;
    var var_3 = Struct_1(!select(select(vec2<bool>(true, true), !var_0.a, select(var_0.a, vec2<bool>(var_0.a.x, var_0.a.x), var_0.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), max(vec2<u32>(~60933u, var_1), u_input.a.xx));
    let var_4 = _wgslsmith_f_op_vec2_f32(-arg_1.yy);
    return reverseBits(~max(min(-vec3<i32>(1772i, 22291i, arg_0), firstLeadingBit(vec3<i32>(37619i, arg_0, 16425i))), abs(select(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(-73711i, -1i, arg_0), true))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec3<f32>) -> f32 {
    var var_0 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -727f));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(16345i, vec3<f32>(-163f, -1000f, -484f), u_input.a.x), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 518f, 1053f), vec3<f32>(646f, -993f, -690f), vec3<bool>(false, false, true))))) * 1000f) - _wgslsmith_f_op_f32(-766f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(677f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -681f), arg_0 != u_input.a.x)) - 429f)));
    var var_1 = Struct_4(any(vec3<bool>(true, true, true)), any(!vec2<bool>(select(false, true, false), any(vec2<bool>(false, false)))), Struct_2(false | (-1144f < var_0), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0, 754f) - vec3<f32>(-245f, 1406f, var_0)))), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), select(firstTrailingBit(vec2<u32>(u_input.a.x, 57539u)), vec2<u32>(u_input.a.x, u_input.a.x) >> (u_input.a.zx % vec2<u32>(32u)), any(vec2<bool>(false, false)))), vec2<bool>(true | all(vec3<bool>(true, false, true)), true)), Struct_3(vec3<bool>(all(vec4<bool>(false, true, false, false)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), all(vec4<bool>(false, true, true, false))), vec3<u32>(abs(max(1u, u_input.a.x)), firstLeadingBit(_wgslsmith_clamp_u32(arg_0, 4294967295u, 18038u)), 6807u >> (1u % 32u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(9556i, 2147483647i, 1i), vec3<i32>(~(-1i), min(56465i, 1i), min(-2147483647i, 0i))), Struct_2(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-838f, var_0, var_0) - vec3<f32>(var_0, var_0, -606f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(493f, var_0, var_0))), true)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), false), u_input.a.zy), vec2<bool>(true, false)), var_0));
    var_1 = Struct_4(any(!select(vec3<bool>(false, true, false), !var_1.d.a, var_1.d.a.x)), true, var_1.c, Struct_3(vec3<bool>(true, var_1.d.c >= -var_1.d.c, false), ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, var_1.d.b.x, 7225u), vec3<u32>(4294967295u, 1u, u_input.a.x)), var_1.d.b), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-2147483647i, var_1.d.c), firstTrailingBit(var_1.d.c), -29765i), _wgslsmith_clamp_vec3_i32(~vec3<i32>(14216i, 20474i, -7740i), vec3<i32>(-41491i, var_1.d.c, 10755i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.d.c, var_1.d.c, var_1.d.c), vec3<i32>(-2147483647i, -1i, -2147483647i)))), Struct_2(-72028i <= var_1.d.c, _wgslsmith_f_op_vec3_f32(-var_1.d.d.b), Struct_1(vec2<bool>(var_1.c.a, var_1.a), u_input.a.xx), select(vec2<bool>(var_1.d.a.x, false), select(var_1.d.a.zz, vec2<bool>(var_1.c.c.a.x, false), var_1.a), select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, var_1.b), var_1.d.a.x))), var_0));
    let var_2 = -_wgslsmith_div_i32(-4656i, ~1i);
    return all(var_1.d.a);
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_4 {
    return arg_1;
}

fn func_1() -> Struct_4 {
    let var_0 = func_5(u_input.a.x, Struct_4((all(vec2<bool>(false, true)) | true) | select(func_2(u_input.a.x), true, true), true, Struct_2(!func_2(u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-534f, -309f, 518f))), Struct_1(vec2<bool>(true, true), ~u_input.a.zz), vec2<bool>(true, true)), Struct_3(vec3<bool>(true, true, true), ~(u_input.a & vec3<u32>(u_input.a.x, 74956u, 1489u)), -7610i, Struct_2(any(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1113f, 789f, -729f), vec3<f32>(-2141f, -292f, -274f))), Struct_1(vec2<bool>(false, true), u_input.a.zz), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(2018f)))))));
    let var_1 = 56885u | var_0.d.b.x;
    var var_2 = var_0.d.c << (_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(~select(var_1, 1u, var_0.d.a.x), ~abs(4294967295u), 1u)) % 32u);
    var var_3 = _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.c.c.b.x, ~1u), 0u << (select(62829u, var_0.c.c.b.x, false) % 32u));
    let var_4 = max(~var_0.d.b.x, 1u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(true, true, true)), u_input.a));
    var var_1 = 79561u;
    let var_2 = func_1();
    let var_3 = var_2;
    var var_4 = ~(-abs(~_wgslsmith_sub_i32(var_3.d.c, var_3.d.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(552f, var_2.c.b.x)))), u_input.a.xz);
}

