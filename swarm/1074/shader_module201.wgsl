struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(123038u, 13536i, vec3<i32>(2147483647i, -1i, 9075i), -1146f, 1000f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<u32>) -> vec2<bool> {
    global0 = Struct_1(_wgslsmith_sub_u32(global0.a, 1u ^ arg_3.x), arg_2.x, reverseBits(min(vec3<i32>(arg_2.x, 1i, arg_2.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, arg_1.c.x, 1i), u_input.b)) ^ select(global0.c, vec3<i32>(23843i, arg_2.x, arg_2.x), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), 122f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-428f)) * arg_1.d));
    global0 = Struct_1(arg_3.x, ~_wgslsmith_dot_vec3_i32(~u_input.c, _wgslsmith_add_vec3_i32(global0.c, abs(vec3<i32>(1i, arg_2.x, 2147483647i)))), arg_1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f)), arg_0.x)))), -1535f);
    global0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, 1u), abs(global0.a))), ~23736u, ~arg_3.x), -arg_1.c.x, ~min(vec3<i32>(arg_1.c.x | 0i, _wgslsmith_div_i32(arg_1.b, -2147483647i), countOneBits(21378i)), abs(global0.c)), _wgslsmith_f_op_f32(arg_0.x + global0.e), 1542f);
    return vec2<bool>(_wgslsmith_add_i32(-2147483647i, countOneBits(u_input.c.x)) <= firstTrailingBit(global0.b), true);
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(false, select(all(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), max(global0.a, global0.a & 1u) > firstTrailingBit(~global0.a)));
    global0 = Struct_1(_wgslsmith_add_u32(global0.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a, global0.a, global0.a), vec3<u32>(global0.a, 1u, ~1u))), u_input.a, vec3<i32>(_wgslsmith_div_i32(-1i, 1i), global0.c.x | (2147483647i ^ -global0.c.x), u_input.b.x), -865f, _wgslsmith_f_op_f32(-1300f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)))));
    global0 = Struct_1(~global0.a, u_input.a, _wgslsmith_mod_vec3_i32(u_input.c, u_input.c), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-175f - -1149f))), _wgslsmith_f_op_f32(-2673f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1540f)))))));
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(global0.a, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(34759u, global0.a), vec2<u32>(global0.a, 38878u))) & select(~vec2<u32>(global0.a, global0.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a, 50939u), vec2<u32>(1u, global0.a), vec2<u32>(27695u, global0.a)), func_3(vec2<f32>(global0.d, 495f), Struct_1(37415u, global0.c.x, u_input.c, 1719f, 1748f), global0.c.yy, vec4<u32>(global0.a, 1u, global0.a, 33601u))), _wgslsmith_div_vec2_u32(~max(vec2<u32>(global0.a, 0u), vec2<u32>(1u, global0.a)), firstTrailingBit(vec2<u32>(26417u, global0.a) << (vec2<u32>(global0.a, global0.a) % vec2<u32>(32u))))), -abs(firstTrailingBit(0i)), vec3<i32>(-global0.b, abs(0i) | _wgslsmith_mult_i32(global0.b, -1i), _wgslsmith_mult_i32(~(-2147483647i), 1i)) ^ _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b.x, global0.b, global0.c.x)), abs(_wgslsmith_clamp_vec3_i32(global0.c, u_input.b, u_input.c))), _wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d * global0.d) + _wgslsmith_f_op_f32(step(429f, global0.e))))), _wgslsmith_f_op_f32(floor(237f)));
    let var_1 = Struct_1(~global0.a | (_wgslsmith_clamp_u32(7236u ^ global0.a, 3767u, 32976u) | (~global0.a | _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, global0.a, global0.a, global0.a), vec4<u32>(global0.a, global0.a, global0.a, global0.a)))), ~(~abs(-2147483647i)), vec3<i32>(u_input.b.x, ~(-29015i ^ global0.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(18958i, 6650i), global0.c.yx)) | vec3<i32>(reverseBits(~(-15965i)), _wgslsmith_div_i32(global0.b, -91730i), _wgslsmith_add_i32(-2147483647i, -30589i & global0.c.x)), -1000f, 184f);
    return var_1;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    global0 = func_2();
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(~(vec2<u32>(global0.a, 1u) ^ vec2<u32>(4294967295u, global0.a)) | (vec2<u32>(global0.a, global0.a) << ((vec2<u32>(0u, 4294967295u) ^ vec2<u32>(global0.a, global0.a)) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(75484u, global0.a), abs(0u)))), (arg_0 | arg_0) | u_input.b.x, -(vec3<i32>(-92752i, global0.c.x, -u_input.b.x) ^ _wgslsmith_add_vec3_i32(global0.c, global0.c)), _wgslsmith_f_op_f32(select(129f, -1000f, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-3283f - 1229f), global0.d)))))));
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1123f + 849f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 950f) * arg_1.x)))));
    let var_1 = firstTrailingBit(vec3<u32>(global0.a, 39361u, _wgslsmith_clamp_u32(1u >> (1u % 32u), 54645u, global0.a)));
    let var_2 = vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0.c, vec3<i32>(-2147483647i, global0.c.x, u_input.b.x)), global0.c >> (vec3<u32>(global0.a, 12453u, 0u) % vec3<u32>(32u))), ~(arg_0 | arg_0))), _wgslsmith_div_i32(~(~(-1i) | _wgslsmith_div_i32(u_input.b.x, global0.b)), ~2147483647i), firstTrailingBit(u_input.b.x) & global0.c.x);
    return _wgslsmith_sub_u32(39957u, var_1.x & 6855u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(max(global0.a, ~func_1(u_input.c.x, vec3<f32>(global0.d, global0.e, global0.e))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, -1000f, 796f, global0.e)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -733f), func_2().d, _wgslsmith_f_op_f32(global0.e + 611f), _wgslsmith_f_op_f32(-1380f - 1134f))))), global0.e, 48272i);
}

