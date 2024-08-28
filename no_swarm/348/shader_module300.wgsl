struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(sign(arg_0.a));
    var var_1 = !vec4<bool>(arg_0.b, false, arg_0.b & true, false);
    var var_2 = _wgslsmith_mult_u32(0u, arg_1);
    var var_3 = !(!(!(false | var_1.x))) || (_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-16585i, 2147483647i)), vec2<i32>(1i, 12084i)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1742i), vec2<i32>(14040i, 2147483647i)) | _wgslsmith_mod_i32(2147483647i, 1i), _wgslsmith_div_i32(abs(24318i), 1i)) == 1i);
    var_1 = !(!vec4<bool>(var_1.x, true, false, false));
    return arg_0.b;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = !(!vec3<bool>(func_3(Struct_1(777f, false), 5438u), !(arg_0 > -2147483647i), true));
    var var_1 = min(arg_0, ~(i32(-1i) * -37093i));
    var var_2 = Struct_5(Struct_3(Struct_2(vec4<bool>(true, any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true, var_0.x), Struct_1(226f, !var_0.x), _wgslsmith_sub_i32(2147483647i, 1i >> (0u % 32u))), Struct_2(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), Struct_1(_wgslsmith_f_op_f32(664f + 795f), var_0.x), firstTrailingBit(arg_0)), Struct_2(select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, false, var_0.x), false), vec4<bool>(var_0.x, true, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, false, true, true), true)), Struct_1(_wgslsmith_f_op_f32(1013f * 1191f), all(vec2<bool>(var_0.x, true))), -2147483647i | countOneBits(arg_0)), select(!select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), var_0.zy), !vec2<bool>(var_0.x, false), all(var_0.xx)), var_0.yz), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -216f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f))), var_0.x), var_0.x);
    var_2 = Struct_5(Struct_3(Struct_2(!(!var_2.a.c.a), Struct_1(_wgslsmith_div_f32(-594f, var_2.a.b.b.a), false), select(_wgslsmith_clamp_i32(arg_0, arg_0, -3932i), var_2.a.b.c, var_2.a.d.x)), Struct_2(vec4<bool>(true, func_3(Struct_1(466f, var_2.a.d.x), 1u), true, true), var_2.b, ~abs(var_2.a.a.c)), var_2.a.a, !var_0.yx, var_0.yx), var_2.a.b.b, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2932f, var_2.a.c.b.a)) + _wgslsmith_f_op_f32(floor(var_2.b.a))) == 1024f) & any(vec4<bool>(true, !var_0.x, any(var_0), true)));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.a), _wgslsmith_f_op_f32(ceil(var_2.b.a))), any(var_2.a.a.a));
    return var_2.a.a;
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> Struct_4 {
    let var_0 = Struct_4(-141f, func_2(-1i).b, 0u);
    var var_1 = arg_0.a.a.a;
    var_1 = !func_2(firstLeadingBit(arg_1)).a;
    var_1 = arg_0.a.c.a;
    var_1 = vec4<bool>(!var_0.b.b, !any(func_2(-2147483647i & arg_0.a.b.c).a.zz), all(func_2(-2147483647i >> (var_0.c % 32u)).a.zy) || (arg_0.b.a <= _wgslsmith_f_op_f32(1522f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), true);
    return Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1295f))))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(func_2(arg_1).b.a, var_0.b.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a * 1472f), 1f)))), var_1.x | true), var_0.c);
}

fn func_1() -> i32 {
    let var_0 = func_4(Struct_5(Struct_3(func_2(_wgslsmith_sub_i32(-48903i, -29859i)), func_2(_wgslsmith_mod_i32(-11676i, 9797i)), func_2(~0i), vec2<bool>(true, true), func_2(1i).a.xz), func_2(0i).b, true), -2147483647i);
    var var_1 = 42693i << (1u % 32u);
    var var_2 = u_input.a.xyx ^ u_input.c.wxx;
    var var_3 = abs(firstLeadingBit(~(u_input.c >> (vec4<u32>(var_0.c, u_input.c.x, 17577u, var_0.c) % vec4<u32>(32u)))) | vec4<u32>(1u, 33811u, var_0.c, 1u));
    var var_4 = ~(-(i32(-1i) * -42983i));
    return func_2(abs(-firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 39753i, -25166i, 52616i), vec4<i32>(1i, -2147483647i, -1i, 0i))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(abs(abs(1i)), _wgslsmith_div_i32(-1i, -1i), func_1());
    let var_1 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(-22467i, 2147483647i, -2147483647i, -25952i), max(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, -27346i, var_0.x, var_0.x), vec4<i32>(var_0.x, 1i, var_0.x, var_0.x) | vec4<i32>(var_0.x, -2147483647i, 2147483647i, var_0.x)), vec4<i32>(-8574i, select(_wgslsmith_dot_vec3_i32(var_0, vec3<i32>(-51782i, var_0.x, var_0.x)), abs(var_0.x), true), -var_0.x, 13178i)), vec4<i32>(-3806i, func_1(), countOneBits(var_0.x), var_0.x));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -249f);
    var var_3 = 1u;
    let var_4 = select(u_input.c.zyz, _wgslsmith_sub_vec3_u32(u_input.c.xyy, countOneBits(vec3<u32>(u_input.a.x | u_input.c.x, u_input.a.x | u_input.c.x, u_input.a.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

