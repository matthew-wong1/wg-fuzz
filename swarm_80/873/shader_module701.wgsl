struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(477f, -381f), vec2<f32>(-1000f, -940f), vec2<f32>(578f, 513f), vec2<f32>(408f, 111f), vec2<f32>(616f, -1000f), vec2<f32>(-1043f, 641f), vec2<f32>(-1358f, -691f), vec2<f32>(-879f, 734f), vec2<f32>(1830f, -925f), vec2<f32>(-728f, -2972f), vec2<f32>(353f, 183f), vec2<f32>(1234f, -527f), vec2<f32>(-1000f, 597f), vec2<f32>(752f, -755f), vec2<f32>(-1432f, 1043f), vec2<f32>(-132f, 1151f), vec2<f32>(-955f, -459f), vec2<f32>(167f, -646f), vec2<f32>(-1802f, 421f), vec2<f32>(1859f, -606f), vec2<f32>(-2178f, -747f), vec2<f32>(303f, -247f), vec2<f32>(409f, -894f), vec2<f32>(866f, -1740f), vec2<f32>(-801f, 2336f), vec2<f32>(-979f, 1069f));

var<private> global3: array<vec3<bool>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.a, u_input.b), vec3<u32>(0u, arg_2.a, 7673u)), u_input.a.x, u_input.a.x), vec3<u32>(~(44227u >> (u_input.b % 32u)), _wgslsmith_div_u32(arg_2.a, arg_2.a) >> (~11456u % 32u), ~2964u)), u_input.a);
    let var_1 = ~(~arg_2.a);
    var var_2 = u_input.a.xy;
    var var_3 = global1.x;
    let var_4 = min(arg_0, reverseBits(arg_0 << ((vec2<u32>(4294967295u, 51519u) | vec2<u32>(1u, var_0)) % vec2<u32>(32u)))) ^ _wgslsmith_add_vec2_i32(u_input.c.wz, vec2<i32>(33215i, 0i << (~arg_2.a % 32u)));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.wwz, -vec3<i32>(-55169i, ~(-13352i), var_4.x)), -u_input.c.zyx);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = arg_0.a;
    global1 = !arg_2;
    var var_1 = var_0;
    let var_2 = _wgslsmith_mod_i32(func_3(~abs(vec2<i32>(u_input.c.x, u_input.d) ^ vec2<i32>(u_input.d, u_input.c.x)), _wgslsmith_f_op_f32(1264f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-922f)))), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), 14558i);
    global1 = !arg_2;
    return Struct_2(Struct_1(var_1.a), Struct_1(0u), arg_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> bool {
    let var_0 = func_2(Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.a, arg_1.b.a, u_input.a.x), vec4<u32>(4294967295u, 3088u, arg_0.a, arg_0.a))), arg_1.c, arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-488f, _wgslsmith_f_op_f32(-1368f * -680f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 218f)))))), vec2<bool>((-2147483647i & _wgslsmith_dot_vec3_i32(u_input.c.zyx, u_input.c.xyx)) <= abs(_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(-1i, -2147483647i))), true)).a;
    let var_1 = !select(vec2<bool>(any(arg_2.zxx), !all(vec4<bool>(false, true, global1.x, false))), !select(!arg_2.zw, select(arg_2.yx, arg_2.zy, true), arg_2.wz), select(!(u_input.c.x == u_input.d), arg_0.a >= 6807u, false));
    let var_2 = arg_0;
    global0 = array<vec4<bool>, 25>();
    let var_3 = Struct_1(~19283u);
    return var_1.x;
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(31708u, select(~4294967295u, u_input.a.x, !global1.x)), _wgslsmith_add_u32(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(16221u, u_input.b, 0u, 46828u), vec4<u32>(u_input.b, u_input.b, u_input.a.x, arg_0.a.a)))) << (1u % 32u);
    return !vec2<bool>(func_4(arg_0.b, func_2(Struct_2(arg_0.c, Struct_1(u_input.b), arg_0.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(285f, 1229f), vec2<f32>(680f, -147f), true)), select(vec2<bool>(false, true), vec2<bool>(global1.x, global1.x), true)), select(vec4<bool>(global1.x, true, false, global1.x), global0[_wgslsmith_index_u32(13932u, 25u)], global1.x | false)), true | global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<u32>(~u_input.b, ~abs(1u)), max(vec2<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), u_input.b >> (21571u % 32u)) << (_wgslsmith_sub_vec2_u32(u_input.a.xz, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(20832u, 4294967295u))) % vec2<u32>(32u)), ~u_input.a.zx), select(select(func_1(Struct_2(Struct_1(u_input.b), Struct_1(u_input.a.x), Struct_1(1u))), func_1(Struct_2(Struct_1(u_input.b), Struct_1(u_input.a.x), Struct_1(1u))), true), vec2<bool>(global1.x, true), global1.x));
    var var_1 = var_0.x;
    var var_2 = vec2<i32>(-1i, 72647i);
    var_1 = ~(~abs(var_0.x));
    global3 = array<vec3<bool>, 27>();
    let var_3 = func_2(Struct_2(Struct_1(1u), func_2(Struct_2(Struct_1(var_0.x), Struct_1(var_0.x), Struct_1(39832u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1802f) - vec2<f32>(598f, 849f)))), !(!vec2<bool>(global1.x, true))).b, func_2(Struct_2(func_2(Struct_2(Struct_1(u_input.b), Struct_1(var_0.x), Struct_1(var_0.x)), global2[_wgslsmith_index_u32(4294967295u, 26u)], vec2<bool>(false, global1.x)).a, func_2(Struct_2(Struct_1(1651u), Struct_1(var_0.x), Struct_1(u_input.a.x)), global2[_wgslsmith_index_u32(4294967295u, 26u)], vec2<bool>(global1.x, global1.x)).a, Struct_1(u_input.a.x)), global2[_wgslsmith_index_u32(~(~u_input.a.x), 26u)], !select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(false, true))).b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(global2[_wgslsmith_index_u32(0u, 26u)], vec2<f32>(1617f, 1085f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 671f)))), vec2<bool>(true, true));
    var var_4 = select(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, u_input.c), vec4<i32>(u_input.d, _wgslsmith_div_i32(u_input.c.x, -var_2.x), 4072i << (countOneBits(68660u) % 32u), -1i)), min(select((u_input.c | vec4<i32>(-1i, u_input.d, u_input.c.x, 5670i)) | u_input.c, select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, var_2.x, u_input.c.x, var_2.x), u_input.c), vec4<i32>(-1i, 19167i, u_input.d, var_2.x), any(vec4<bool>(global1.x, global1.x, false, global1.x))), select(!vec4<bool>(true, false, true, global1.x), vec4<bool>(true, global1.x, true, true), var_2.x != -5690i)), vec4<i32>(1i, 1i, _wgslsmith_mult_i32(-var_2.x, 1i), firstTrailingBit(u_input.c.x ^ u_input.c.x))), !all(select(global3[_wgslsmith_index_u32(u_input.b, 27u)], select(vec3<bool>(global1.x, true, global1.x), global3[_wgslsmith_index_u32(4294967295u, 27u)], vec3<bool>(false, true, false)), vec3<bool>(false, global1.x, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -633f), -1502f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-2492f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(952f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(508f, -1124f)) * -1337f)), _wgslsmith_f_op_f32(1452f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-823f + 1105f)))), 1029f, var_0.x, ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(select(var_3.a.a, u_input.a.x, false), u_input.b), _wgslsmith_div_u32(reverseBits(var_0.x), _wgslsmith_sub_u32(1u, 1u)), ~(u_input.b & u_input.a.x)));
}

