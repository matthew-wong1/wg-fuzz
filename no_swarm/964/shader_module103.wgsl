struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> bool {
    var var_0 = false;
    global0 = firstLeadingBit(vec4<u32>(47015u, ~u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, 24727u, 0u) << (vec4<u32>(4294967295u, u_input.a, global0.x, 69168u) % vec4<u32>(32u)), vec4<u32>(global0.x, 1u, 57914u, global0.x) << (vec4<u32>(1u, u_input.a, u_input.a, 6422u) % vec4<u32>(32u))) % 32u), firstLeadingBit(~u_input.a), 23680u));
    var var_1 = vec2<u32>(~abs(~(~2612u)), u_input.a);
    let var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~26568u, ~4294967295u >> (1u % 32u), global0.x), global0.yxx, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, global0.x), global0.xw), u_input.a & global0.x, 15682u) >> (vec3<u32>(u_input.a, _wgslsmith_sub_u32(var_1.x, 0u), global0.x) % vec3<u32>(32u))), ~countOneBits(~(~vec3<u32>(global0.x, 4294967295u, u_input.a))));
    let var_3 = ~_wgslsmith_sub_i32(1i, abs(_wgslsmith_mod_i32(1i, -1i)));
    return true;
}

fn func_3(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(global0.zxx, 9590u >> (u_input.a % 32u));
    global0 = select(vec4<u32>(_wgslsmith_clamp_u32(~0u, 1u, ~u_input.a & global0.x), 41370u, 4294967295u, global0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(4294967295u), u_input.a, global0.x, global0.x), (select(vec4<u32>(u_input.a, 133838u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 69346u, 25488u), false) | select(vec4<u32>(1u, var_0.a.x, u_input.a, 93618u), vec4<u32>(global0.x, var_0.b, var_0.b, 24267u), vec4<bool>(true, false, true, true))) ^ select(vec4<u32>(var_0.b, global0.x, 0u, 51330u) >> (vec4<u32>(var_0.a.x, 11452u, 6203u, u_input.a) % vec4<u32>(32u)), abs(vec4<u32>(38838u, global0.x, u_input.a, var_0.a.x)), true), vec4<u32>(var_0.a.x, 1u, 74152u, 1u)), firstTrailingBit(select(arg_0.x, 1068i & arg_0.x, true)) == 1i);
    global0 = ~vec4<u32>(select(var_0.a.x, 8624u, true), 0u, global0.x, firstTrailingBit(~13077u)) << (~_wgslsmith_div_vec4_u32(max(~vec4<u32>(var_0.b, 4294967295u, u_input.a, u_input.a), ~vec4<u32>(1u, 4294967295u, global0.x, 89116u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 40624u, 1u, var_0.a.x)), vec4<u32>(var_0.b, 0u, 61428u, u_input.a))) % vec4<u32>(32u));
    let var_1 = -vec3<i32>(countOneBits(-9442i), arg_0.x, 54743i);
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.x, u_input.a), global0.zw, global0.xx), global0.xy)), min(~global0.x, global0.x), global0.x), global0.x);
    return Struct_1(_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(global0.zww, var_2.a), ~select(var_0.a, var_0.a, u_input.a < var_2.a.x)), _wgslsmith_mult_u32(var_0.a.x >> ((~1u << ((var_0.b | 24379u) % 32u)) % 32u), ~select(u_input.a, 4294967295u, true)));
}

fn func_1(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = func_3(~(-select(~vec4<i32>(0i, 2826i, -13158i, 1747i), ~vec4<i32>(-1262i, 21486i, -1818i, 1i), func_2())));
    global0 = _wgslsmith_clamp_vec4_u32(~(~(~(~vec4<u32>(4294967295u, 61819u, u_input.a, global0.x)))), vec4<u32>(max(0u, ~u_input.a), _wgslsmith_dot_vec3_u32((vec3<u32>(4294967295u, 4294967295u, u_input.a) << (var_0.a % vec3<u32>(32u))) >> (select(vec3<u32>(4294967295u, 5283u, global0.x), vec3<u32>(18384u, global0.x, u_input.a), false) % vec3<u32>(32u)), select(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(global0.x, 4294967295u, 4294967295u), select(arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0))), min(global0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(12423u, var_0.b, 22116u), func_3(vec4<i32>(0i, 20398i, 0i, -39671i)).a)), u_input.a), vec4<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(44947u, 0u, 1u, 4294967295u), firstTrailingBit(vec4<u32>(global0.x, global0.x, 35583u, global0.x))), ~(u_input.a & u_input.a)), 1u, ~global0.x, (u_input.a >> (var_0.a.x % 32u)) << (1u % 32u)));
    var var_1 = select(select(select(vec4<bool>(true, all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true, false), select(select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(false, arg_0.x, true, true)), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), !vec4<bool>(true, arg_0.x, arg_0.x, false)), true), !select(select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), arg_0.x), select(vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, false, arg_0.x, true), arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), vec4<bool>((false & arg_0.x) || func_2(), true, true, false)), vec4<bool>(!all(arg_0) | arg_0.x, select(true, true, arg_0.x), false, arg_0.x & false), true);
    let var_2 = !(!any(vec2<bool>(any(var_1.yww), true)));
    var_1 = select(vec4<bool>(false | !arg_0.x, !((u_input.a > u_input.a) && var_2), func_2(), all(vec2<bool>(true, arg_0.x))), vec4<bool>(!(!any(arg_0.yy)), var_2, true, true), any(vec3<bool>(func_2(), arg_0.x, !all(arg_0.xx))));
    return ~(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u ^ u_input.a, 47408u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, global0.x), vec4<u32>(global0.x, var_0.b, 0u, global0.x)), ~1u), ~vec4<u32>(33773u, 22245u, global0.x, 4294967295u)) ^ ~(~(~vec4<u32>(var_0.b, u_input.a, var_0.a.x, 16140u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(func_1(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), _wgslsmith_mod_vec4_u32(vec4<u32>(55584u, 17688u, global0.x, u_input.a), vec4<u32>(0u, ~u_input.a, func_3(vec4<i32>(55564i, -21710i, -23387i, 3591i)).a.x, ~4294967295u)) >> (vec4<u32>(1u << (global0.x % 32u), 1u, ~_wgslsmith_mult_u32(global0.x, global0.x), reverseBits(global0.x)) % vec4<u32>(32u)), any(vec4<bool>(u_input.a < max(u_input.a, 90266u), true, true, func_2())));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1059f * -384f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-654f + -480f), -707f)))), 221f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(369f + -1096f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -565f), -1225f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1510f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-363f + -1000f) * _wgslsmith_f_op_f32(round(-312f))) - -937f)));
    let var_1 = Struct_1(~func_1(vec3<bool>(false, true, func_2())).wzw, _wgslsmith_sub_u32(_wgslsmith_add_u32(global0.x, u_input.a), 0u));
    global0 = ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(24287u, global0.x, 18052u, 10061u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, var_1.a.x, var_1.a.x, 6864u), vec4<u32>(47746u, 67813u, global0.x, 4294967295u)))) >> (countOneBits(vec4<u32>(4294967295u, ~0u, ~(~var_1.b), ~(var_1.a.x & var_1.b))) % vec4<u32>(32u));
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 62584u, var_1.b, 43933u)), _wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, var_1.b << (1u % 32u), u_input.a, _wgslsmith_clamp_u32(var_1.a.x, 17203u, global0.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, var_1.a.x, u_input.a), vec4<u32>(u_input.a, global0.x, global0.x, global0.x)), vec4<u32>(global0.x, u_input.a, var_1.a.x, var_1.a.x)))), vec4<u32>(_wgslsmith_add_u32(~var_1.a.x, 4294967295u), var_1.b, global0.x, u_input.a));
    global0 = vec4<u32>(~30383u, 10182u, 1u, 30492u);
    var var_2 = Struct_1(vec3<u32>(35114u, _wgslsmith_dot_vec2_u32(var_1.a.xz, global0.zz), global0.x ^ ~0u), 4294967295u);
    let var_3 = ~(global0.x | u_input.a);
    let var_4 = ~min(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -26476i, 25111i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(-1i) * -vec3<i32>(1i, 2147483647i, 1i)), vec3<i32>(~0i >> (abs(u_input.a) % 32u), -2147483647i, countOneBits(6030i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, select(-2147483647i, -(~(var_4.x ^ 10298i)), false), _wgslsmith_sub_u32(_wgslsmith_mult_u32(countOneBits(func_1(vec3<bool>(true, false, false)).x), ~22898u), _wgslsmith_mult_u32(global0.x, ~16847u)), var_1.a.yy);
}

