struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(4294967295u, 16355u, 4294967295u), vec3<u32>(17806u, 34638u, 0u), vec3<u32>(32619u, 4294967295u, 0u), vec3<u32>(79240u, 4294967295u, 46036u), vec3<u32>(0u, 30005u, 77110u), vec3<u32>(58635u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(42985u, 4294967295u, 4294967295u), vec3<u32>(28646u, 0u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 36052u, 1u), vec3<u32>(98085u, 1u, 1715u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(37757u, 13823u, 82361u), vec3<u32>(35805u, 1u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 28834u), vec3<u32>(77401u, 73657u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(20077u, 52048u, 59459u), vec3<u32>(102544u, 1u, 4294967295u), vec3<u32>(1u, 25758u, 32900u), vec3<u32>(11420u, 0u, 70816u), vec3<u32>(15584u, 4294967295u, 1u), vec3<u32>(33623u, 4294967295u, 0u), vec3<u32>(79099u, 43570u, 36473u), vec3<u32>(39740u, 1u, 4294967295u), vec3<u32>(18140u, 1u, 90607u), vec3<u32>(4294967295u, 4294967295u, 65574u), vec3<u32>(1u, 108751u, 1u), vec3<u32>(82585u, 0u, 24217u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    global0 = array<vec3<u32>, 31>();
    let var_0 = arg_2.yz;
    global0 = array<vec3<u32>, 31>();
    let var_1 = false;
    var var_2 = ~(~(~select(arg_1.a.xzw >> (arg_1.a.yzy % vec3<u32>(32u)), vec3<u32>(1u, u_input.a.x, 1u), select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, true, false)))));
    return Struct_1(vec4<i32>(arg_0, select(countOneBits(arg_0), -1i, var_1) >> (var_2.x % 32u), arg_0, abs(-_wgslsmith_sub_i32(1i, arg_0))), -1366f);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = ~abs(-(arg_2.a.x & arg_2.a.x));
    var var_1 = !select(select(!(!vec4<bool>(true, arg_3.a.x, true, arg_3.a.x)), !(!vec4<bool>(true, arg_3.a.x, true, true)), !(var_0 >= 1i)), vec4<bool>(false, 4294967295u >= u_input.a.x, any(!vec4<bool>(arg_3.a.x, false, false, false)), all(select(arg_3.a, arg_3.a, vec2<bool>(arg_3.a.x, true)))), !(!select(vec4<bool>(true, arg_3.a.x, arg_3.a.x, false), vec4<bool>(arg_3.a.x, false, true, false), vec4<bool>(true, arg_3.a.x, false, false))));
    var var_2 = _wgslsmith_mult_u32(~u_input.b, u_input.b);
    var_1 = !select(!vec4<bool>(true, !arg_3.a.x, true, !var_1.x), vec4<bool>(func_2(-60551i, Struct_2(vec4<u32>(4294967295u, u_input.b, u_input.b, 0u), 797f), vec4<f32>(arg_0, -229f, arg_0, 310f), arg_0).a.x <= (-2147483647i << (u_input.b % 32u)), true == all(vec2<bool>(var_1.x, var_1.x)), all(!vec4<bool>(var_1.x, arg_3.a.x, false, true)), arg_3.a.x), u_input.a.x >= _wgslsmith_sub_u32(u_input.a.x, 6211u));
    let var_3 = Struct_3(arg_3.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -807f, var_3.a.x))), -1493f)) * arg_2.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_2(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(53050u, u_input.a.x, 0u, arg_3.x), vec4<u32>(4294967295u, 6267u, u_input.b, 0u) << (vec4<u32>(1u, u_input.b, u_input.b, arg_3.x) % vec4<u32>(32u))), ~vec4<u32>(45678u, arg_3.x, u_input.b, 4294967295u), vec4<bool>(true, true, 1u == u_input.b, false)), -234f);
    let var_1 = Struct_3(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), true), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true));
    global0 = array<vec3<u32>, 31>();
    return vec3<bool>(all(vec2<bool>(false, arg_3.x > 33189u)) & var_1.a.x, var_1.a.x, !(false | all(vec2<bool>(false, var_1.a.x))) && var_1.a.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = arg_1;
    var var_1 = vec2<u32>(u_input.a.x | _wgslsmith_dot_vec2_u32(u_input.a, countOneBits(~vec2<u32>(9733u, u_input.b))), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(0u, ~u_input.b), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, ~1u), ~(u_input.a.x ^ 4294967295u), u_input.a.x)));
    var_0 = arg_1;
    global0 = array<vec3<u32>, 31>();
    var var_2 = -1044f;
    return !func_4(func_2(abs(countOneBits(20657i)), Struct_2(firstTrailingBit(vec4<u32>(u_input.b, 17992u, u_input.b, 0u)), -1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1193f, arg_0.x, arg_0.x, -292f) * vec4<f32>(-1842f, -457f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(520f, -800f, arg_0.x, 742f), arg_0, arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(abs(-130f)))), Struct_1(vec4<i32>(-4038i, ~(-1i), -2147483647i, -1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(arg_0.x, -1326i, Struct_1(vec4<i32>(-7229i, 26118i, 0i, 0i), arg_0.x), Struct_3(arg_1.a))), 712f))), abs(~func_2(-32306i, Struct_2(vec4<u32>(15091u, 18222u, 4294967295u, u_input.b), arg_0.x), arg_0, arg_0.x).a.x), max(~_wgslsmith_div_vec2_u32(vec2<u32>(6084u, 16916u), u_input.a), _wgslsmith_clamp_vec2_u32(u_input.a << (vec2<u32>(10843u, 1u) % vec2<u32>(32u)), u_input.a, reverseBits(u_input.a))));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_3(select(arg_0.zx, !(!select(arg_0.zx, arg_0.xz, true)), vec2<bool>(true, arg_0.x)));
    let var_1 = var_0;
    global0 = array<vec3<u32>, 31>();
    let var_2 = arg_2;
    let var_3 = vec2<bool>(var_1.a.x, all(vec3<bool>((var_2.b != var_2.b) | false, any(!vec4<bool>(var_0.a.x, true, true, arg_0.x)), !(arg_0.x || arg_0.x))));
    return Struct_2(arg_2.a, -836f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), func_1(vec4<f32>(-194f, 506f, -372f, -951f), Struct_3(vec2<bool>(false, false))), func_4(Struct_1(vec4<i32>(1i, -38172i, 2147483647i, 24816i), -434f), Struct_1(vec4<i32>(-2147483647i, 0i, -2147483647i, 26671i), 723f), 2147483647i, vec2<u32>(u_input.b, u_input.a.x))), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), !vec3<bool>(select(false, false, true), true, true)), 0i, Struct_2(min(select(~vec4<u32>(50988u, 4294967295u, 40684u, 4294967295u), vec4<u32>(u_input.b, 0u, 0u, 13491u) >> (vec4<u32>(0u, 1u, 142622u, 1u) % vec4<u32>(32u)), true), firstLeadingBit(~vec4<u32>(u_input.a.x, 9452u, u_input.a.x, u_input.b))), _wgslsmith_f_op_f32(1f - -397f)), firstLeadingBit(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~countOneBits(_wgslsmith_clamp_u32(var_0.a.x, 4294967295u, 4294967295u))), -(~abs(abs(vec2<i32>(-1i, 35785i)))), 14298u);
}

