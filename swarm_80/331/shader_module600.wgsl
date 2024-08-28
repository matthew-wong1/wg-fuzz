struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(arg_1.a);
    var var_1 = arg_1;
    let var_2 = Struct_1(~var_0.a);
    global0 = max(firstLeadingBit(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(34801u, 4294967295u, u_input.a.x, global0.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 57201u, 3538u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 65655u, u_input.a.x, global0.x)), vec4<u32>(1u, 12080u, 1u, 0u)))), ~reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, global0.x, 48077u), vec4<u32>(u_input.a.x, global0.x, global0.x, global0.x))));
    let var_3 = ~(-1i);
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false)), vec4<bool>(false, arg_0.a.x >= arg_0.a.x, true, true), vec4<bool>(any(vec2<bool>(true, false)), true, any(vec3<bool>(false, false, true)), select(false, true, true))), !select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(false, true, false, true)), true, true), vec4<bool>(any(vec3<bool>(false, true, false)), true, global0.x > 29133u, true)), func_3(vec4<bool>(true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true)), true, true), arg_1));
    global0 = vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec3_u32(abs(global0.yzx), ~vec3<u32>(0u, 82997u, u_input.a.x)), (global0.x >> (global0.x % 32u)) << ((1u ^ max(global0.x, u_input.a.x)) % 32u), 132394u) >> (~vec4<u32>(global0.x, 4030u, ~global0.x, (4294967295u >> (u_input.a.x % 32u)) | _wgslsmith_mult_u32(23988u, u_input.a.x)) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(261f + -1122f);
    global0 = vec4<u32>(1u, global0.x | 1u, countOneBits(0u) ^ global0.x, 0u);
    var var_2 = ~vec3<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x << (global0.x % 32u), 0u, 1u, max(u_input.a.x, u_input.a.x)), max(max(vec4<u32>(71127u, 1u, u_input.a.x, 4599u), vec4<u32>(global0.x, 16346u, u_input.a.x, 113195u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 64001u, global0.x), vec4<u32>(4294967295u, global0.x, global0.x, global0.x)))), u_input.a.x);
    return Struct_1(vec3<i32>(29795i, max(0i, ~arg_1.a.x), abs(_wgslsmith_dot_vec2_i32(~arg_0.a.yz, countOneBits(arg_0.a.yx)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1497f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 149f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1459f + -1564f), _wgslsmith_f_op_f32(trunc(-2520f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f), -442f)))));
    let var_1 = arg_0;
    global0 = select(~(~firstLeadingBit(vec4<u32>(1u, u_input.a.x, 34952u, 66959u))), ~(~(~(~vec4<u32>(u_input.a.x, u_input.a.x, 26093u, 0u)))), var_0.x != var_0.x);
    let var_2 = _wgslsmith_clamp_i32(var_1.a.x, -30921i | firstLeadingBit(_wgslsmith_add_i32(arg_0.a.x, ~49163i)), ~(-abs(-31895i)));
    let var_3 = ~firstTrailingBit(min(_wgslsmith_add_u32(14174u << (u_input.a.x % 32u), _wgslsmith_sub_u32(4294967295u, 4294967295u)), 1u));
    return Struct_1(arg_0.a);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(~vec3<i32>(firstLeadingBit(arg_1), i32(-1i) * -arg_0.a.x, arg_1));
    let var_1 = func_4(func_2(Struct_1(-vec3<i32>(1i, 44426i, arg_3.a.x)), arg_0));
    global0 = select(vec4<u32>(max(~global0.x, ~0u) ^ _wgslsmith_add_u32(u_input.a.x, ~37201u), ~firstLeadingBit(u_input.a.x) >> (countOneBits(~u_input.a.x) % 32u), 1u, u_input.a.x), vec4<u32>(42726u, ~_wgslsmith_div_u32(reverseBits(1u), _wgslsmith_mult_u32(98076u, global0.x)), global0.x, _wgslsmith_mod_u32(171136u, _wgslsmith_dot_vec3_u32(global0.yxz, vec3<u32>(global0.x, 18084u, 20751u))) >> (~4294967295u % 32u)), vec4<bool>(all(vec3<bool>(true, -2147483647i < arg_3.a.x, false)), !any(vec3<bool>(false, false, false)) && (-14560i > firstLeadingBit(arg_0.a.x)), true, true || any(select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    var var_2 = arg_3.a.x;
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(~1i, ~var_0.a.x, var_0.a.x), ~arg_2.a);
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(vec4<u32>(~1u, func_1(Struct_1(vec3<i32>(1i, -2147483647i, 1i)), 3538i, Struct_1(vec3<i32>(0i, 45100i, -30757i)), Struct_1(vec3<i32>(-2147483647i, -23893i, -13404i))), abs(47252u), ~u_input.a.x) << (reverseBits(vec4<u32>(12968u, 1u, u_input.a.x, 14835u) << (vec4<u32>(4294967295u, u_input.a.x, 66761u, global0.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = reverseBits(_wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.a.x, u_input.a.x, global0.x, 18491u), vec4<u32>(0u, 91039u, global0.x, 1u)), ~reverseBits(vec4<u32>(118382u, global0.x, 4294967295u, u_input.a.x))) << (~vec4<u32>(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(70577u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 25880u, global0.x, 26593u)), func_1(Struct_1(vec3<i32>(-26628i, 0i, -1i)), -2147483647i, Struct_1(vec3<i32>(-19011i, 2147483647i, -19342i)), Struct_1(vec3<i32>(1i, -9378i, 2147483647i))), 1u) % vec4<u32>(32u)));
    var var_0 = Struct_1(firstTrailingBit(-(vec3<i32>(-9476i, -19187i, -14724i) >> (~u_input.a % vec3<u32>(32u)))));
    var var_1 = !vec4<bool>(false, global0.x <= u_input.a.x, true, true);
    var_0 = func_2(func_2(Struct_1(~func_2(Struct_1(var_0.a), Struct_1(vec3<i32>(-1i, 13866i, -2147483647i))).a), func_2(func_4(func_4(Struct_1(var_0.a))), func_4(func_4(Struct_1(vec3<i32>(-1i, var_0.a.x, var_0.a.x)))))), Struct_1(var_0.a));
    var var_2 = var_1.xy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(20385i, var_0.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.wxx, u_input.a & select(global0.ywz, global0.zzz, vec3<bool>(var_1.x, true, true))), vec3<u32>(0u, countOneBits(11278u), 33311u)), reverseBits(min(vec2<i32>(47467i, func_4(Struct_1(var_0.a)).a.x), _wgslsmith_mult_vec2_i32(var_0.a.yz, vec2<i32>(var_0.a.x, -29923i)))));
}

