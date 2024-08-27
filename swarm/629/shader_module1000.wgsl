struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(-1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(-866f)), arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -443f))))), select(!vec3<bool>(!arg_0.c.x, true, select(arg_0.c.x, true, arg_0.c.x)), select(!(!vec3<bool>(arg_0.c.x, arg_0.c.x, true)), vec3<bool>(all(vec4<bool>(true, true, arg_0.c.x, true)), true, all(arg_0.c)), !select(vec3<bool>(arg_0.c.x, true, false), arg_0.c, arg_0.c)), true), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(arg_0.e, -1i, -2147483647i)), vec3<i32>(~2147483647i, arg_0.d, arg_0.e ^ _wgslsmith_mod_i32(-2147483647i, -33300i))), 1i);
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(15392u & ~firstTrailingBit(u_input.a.x), 4294967295u | ~(u_input.c.x << (u_input.c.x % 32u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(firstLeadingBit(u_input.b.x), u_input.a.x), ~max(vec2<u32>(1u, u_input.b.x), vec2<u32>(20143u, u_input.b.x))));
    var var_2 = arg_0;
    var var_3 = u_input.a;
    var_0 = arg_0;
    return arg_0.c;
}

fn func_2() -> Struct_1 {
    var var_0 = false & (any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) | false);
    let var_1 = vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(-5053i), -17690i, 2147483647i), abs(~vec3<i32>(-44713i, -1311i, -2147483647i)), select(vec3<i32>(-3463i, -10819i, 1i), vec3<i32>(60178i, 29017i, -2147483647i), vec3<bool>(true, true, true)) ^ abs(vec3<i32>(0i, 15154i, -1i))), _wgslsmith_sub_vec3_i32(firstTrailingBit(-vec3<i32>(-2905i, 31335i, -2147483647i)), ~(-vec3<i32>(-1i, 2147483647i, -15302i)))), 1i);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-109f * -176f), _wgslsmith_f_op_f32(step(-182f, -1786f)))))), -210f)));
    var var_2 = u_input.b;
    var var_3 = var_2.x;
    return Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1204f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(887f, -1307f) + -835f), -1000f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(857f, _wgslsmith_f_op_f32(step(841f, -792f)), _wgslsmith_div_f32(-526f, 312f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -906f), -2106f, _wgslsmith_f_op_f32(-189f * -1259f)))), !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), func_3(Struct_1(-1000f, vec3<f32>(-702f, -534f, -1112f), vec3<bool>(true, true, true), 52876i, -2147483647i)), select(vec3<bool>(true, true, true), func_3(Struct_1(-211f, vec3<f32>(-2542f, -146f, 893f), vec3<bool>(true, true, true), 1i, var_1.x)), vec3<bool>(true, true, true))), i32(-1i) * -var_1.x, -2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: vec4<f32>) -> vec2<bool> {
    global0 = 1000f;
    let var_0 = -arg_2.wzy;
    global0 = _wgslsmith_f_op_f32(-arg_3.x);
    global0 = -350f;
    var var_1 = func_2();
    return arg_0.c.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, true), !(!func_1(Struct_1(-936f, vec3<f32>(-641f, -2995f, 1586f), vec3<bool>(false, false, false), 17824i, 0i), u_input.c.x, vec4<i32>(0i, 43436i, 5900i, -8957i), vec4<f32>(566f, -620f, -1589f, -1388f))), true), vec2<bool>(!(!func_3(Struct_1(342f, vec3<f32>(-979f, -786f, 1311f), vec3<bool>(false, false, false), 5933i, -2147483647i)).x), min(_wgslsmith_mult_i32(-1i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-38013i, -1i, 54836i), vec3<i32>(27182i, -9439i, -1i))) > -2147483647i), true && func_2().c.x);
    global0 = -1347f;
    let var_1 = !(!(!(!select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x)))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1377f, _wgslsmith_f_op_f32(-159f - -350f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) - _wgslsmith_f_op_f32(step(540f, -1368f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f), -1433f), _wgslsmith_f_op_f32(abs(-122f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1995f - -303f) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(977f + -303f)))) + func_2().a)));
    global0 = _wgslsmith_f_op_f32(-385f + -1000f);
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(abs(vec3<i32>(-1i, 1i, -2147483647i)), -(~vec3<i32>(-58442i, 6479i, -41576i)))), ~abs(vec3<i32>(1i, 1i, 1i)) | ~reverseBits(firstTrailingBit(vec3<i32>(-20233i, -1i, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(~(2147483647i << (0u % 32u)), firstTrailingBit(1i)), -(-vec2<i32>(-55554i, -1i) >> (u_input.b % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(542f - -869f), 551f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-728f, 287f), vec2<f32>(-931f, 679f), vec2<bool>(true, false))) - vec2<f32>(-189f, 921f)))));
}

