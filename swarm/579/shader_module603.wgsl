struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -30556i, i32(-2147483648), -44790i);

var<private> global1: vec3<u32> = vec3<u32>(66186u, 0u, 4294967295u);

var<private> global2: u32 = 52535u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~(~(vec3<u32>(global1.x, 18037u, 12603u) & vec3<u32>(1u, global1.x, 29342u))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, firstTrailingBit(0u), ~global1.x), select(_wgslsmith_mult_vec3_u32(vec3<u32>(65650u, arg_0.a.c, arg_0.a.c), vec3<u32>(0u, 4294967295u, u_input.b)), vec3<u32>(1u, arg_0.a.c, 4294967295u) & vec3<u32>(0u, 4294967295u, 3936u), select(vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x), vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x), arg_0.a.b.x))), firstLeadingBit(firstLeadingBit(vec3<u32>(~arg_0.a.a, ~global1.x, ~global1.x))));
    let var_1 = ~31677i;
    var var_2 = arg_0;
    global1 = ~(~vec3<u32>(34085u, 4294967295u, 45038u));
    var var_3 = Struct_3(u_input.a.x >= -1i);
    return 844i;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = countOneBits(vec4<u32>(u_input.b, 0u, 33627u, firstTrailingBit(u_input.b)));
    var var_1 = vec2<i32>(1i, ~(-func_3(arg_1) ^ _wgslsmith_clamp_i32(u_input.c, _wgslsmith_mult_i32(arg_1.a.e.x, arg_1.b.x), -1i)));
    let var_2 = ~min(vec4<u32>(4294967295u, 46261u, arg_1.a.a, 15984u), ~abs(vec4<u32>(0u, 66961u, var_0.x, var_0.x)) & _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 0u, 584u, 47737u) >> (vec4<u32>(arg_1.a.c, var_0.x, var_0.x, 3169u) % vec4<u32>(32u)), vec4<u32>(0u, 24309u, var_0.x, u_input.b) & vec4<u32>(4294967295u, global1.x, 0u, global1.x)));
    let var_3 = ~(-14297i);
    let var_4 = Struct_2(Struct_1(reverseBits(_wgslsmith_dot_vec2_u32(global1.yx, max(var_0.zw, vec2<u32>(0u, arg_1.a.a)))), arg_1.a.b, ~arg_1.a.c, u_input.a.yzw, u_input.a.xyw >> (var_2.zxx % vec3<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(-39934i | -global0.x, var_3), ~(u_input.a.yy << (var_0.wz % vec2<u32>(32u)))));
    return Struct_1(69644u, vec2<bool>(!(!var_4.a.b.x) | ((73440u >= arg_1.a.a) == (arg_0.x >= -709f)), true), ~(arg_1.a.a << (1u % 32u)), countOneBits(vec3<i32>(1i, u_input.a.x, _wgslsmith_mod_i32(max(u_input.a.x, arg_1.a.e.x), 343i))), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(var_4.a.d.x, -3669i, -2147483647i), _wgslsmith_mod_vec3_i32(arg_1.a.e, vec3<i32>(u_input.c, var_1.x, var_4.a.e.x)))) << (_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 4294967295u, 0u), ~(~vec3<u32>(47369u, 44575u, arg_1.a.c))) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_1(~u_input.b, vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-690f + -1967f), _wgslsmith_f_op_f32(249f * 296f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1642f, -237f, true))), true), 4294967295u, ~arg_1.e, u_input.a.wyx);
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mod_u32(countOneBits(4294967295u), arg_1.a), vec2<bool>(arg_0.a, !arg_2.a | any(vec3<bool>(var_0.b.x, true, var_0.b.x))), 1u, ~global0.zzw, -_wgslsmith_add_vec3_i32(vec3<i32>(-2718i, arg_1.e.x, -2147483647i), var_0.e)), (vec2<i32>(~var_0.d.x, _wgslsmith_sub_i32(arg_1.d.x, 69850i)) | ~_wgslsmith_div_vec2_i32(vec2<i32>(1i, -7229i), var_0.e.zx)) << (~(~_wgslsmith_add_vec2_u32(global1.yz, global1.zy)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1348f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-199f * 1968f)), -1085f))), _wgslsmith_f_op_f32(-425f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(636f, -1589f), _wgslsmith_f_op_f32(abs(1201f)))) + _wgslsmith_f_op_f32(f32(-1f) * -378f)))));
    var var_3 = ~(vec4<u32>(4294967295u, ~var_0.a, ~var_0.c | 64388u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.c, 9548u, 23358u, 0u), vec4<u32>(global1.x, global1.x, 0u, 0u), true), vec4<u32>(global1.x, 1u, 20551u, 62740u))) >> (abs(vec4<u32>(~46721u, ~4294967295u, select(0u, 1u, var_0.b.x), ~arg_1.a)) % vec4<u32>(32u)));
    let var_4 = !select(vec4<bool>(true, var_2 < _wgslsmith_f_op_f32(f32(-1f) * -161f), func_2(vec2<f32>(1378f, -1226f), Struct_2(Struct_1(3226u, arg_1.b, 3325u, var_1.a.e, vec3<i32>(19029i, -2147483647i, 50942i)), var_0.d.xx)).b.x & true, true), vec4<bool>(true, any(var_0.b), !all(vec4<bool>(false, true, var_0.b.x, false)), arg_1.b.x), var_0.b.x);
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = false;
    let var_1 = countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, 1i, ~(-82188i), 0i), _wgslsmith_add_vec4_i32(vec4<i32>(14375i, u_input.c, u_input.a.x, u_input.c) >> (vec4<u32>(global1.x, global1.x, 48146u, 23495u) % vec4<u32>(32u)), ~u_input.a))) >> (vec4<u32>(abs((global1.x << (global1.x % 32u)) & ~51433u), firstTrailingBit(1u) & u_input.b, 44323u, 7251u) % vec4<u32>(32u));
    global2 = ~(global1.x << (0u % 32u));
    global0 = -vec4<i32>(~global0.x, -28932i ^ _wgslsmith_sub_i32(~global0.x, u_input.c), -1i, i32(-1i) * -30556i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1505f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(231f, 715f) + _wgslsmith_f_op_f32(827f + 1398f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1074f + _wgslsmith_f_op_f32(floor(-509f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))) - -2631f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-108f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1334f * _wgslsmith_f_op_f32(select(1000f, -1067f, false)))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), -662f))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> vec3<u32> {
    let var_0 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(Struct_3(true), func_2(vec2<f32>(1512f, -1212f), Struct_2(Struct_1(global1.x, arg_1, arg_0, global0.zzw, global0.xyy), global0.yy)), Struct_3(arg_1.x), -2147483647i), arg_1.x))));
    var var_1 = all(!select(!select(vec4<bool>(false, false, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), false), !(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), select(select(vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(arg_1.x, false, true, false), vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, false)), select(vec4<bool>(false, true, arg_1.x, false), vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)))));
    global0 = vec4<i32>(func_3(Struct_2(func_2(vec2<f32>(var_0.x, 405f), func_4(Struct_3(true), Struct_1(u_input.b, vec2<bool>(true, arg_1.x), 0u, u_input.a.xzw, vec3<i32>(u_input.a.x, -1i, 2147483647i)), Struct_3(arg_1.x), -30122i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.c), u_input.a.yz))), u_input.a.x, global0.x ^ u_input.c, -(~_wgslsmith_mult_i32(-2147483647i, 1i)));
    global0 = vec4<i32>(2147483647i, _wgslsmith_sub_i32(global0.x, reverseBits(u_input.c)) >> (~(~u_input.b) % 32u), -(_wgslsmith_div_i32(global0.x, u_input.c) >> (u_input.b % 32u)), ~max(max(-2147483647i, func_4(Struct_3(arg_1.x), Struct_1(global1.x, vec2<bool>(arg_1.x, arg_1.x), 5071u, vec3<i32>(u_input.c, 4308i, u_input.a.x), u_input.a.wxy), Struct_3(arg_1.x), global0.x).b.x), global0.x));
    global0 = u_input.a;
    return ~(~(~vec3<u32>(4294967295u, 1u, u_input.b) | vec3<u32>(global1.x, arg_0, 1u))) | ((vec3<u32>(31529u | arg_0, 1u, 10922u) | ~countOneBits(vec3<u32>(u_input.b, 16337u, 4294967295u))) ^ select(vec3<u32>(1u, 63081u, 4294967295u), vec3<u32>(83012u, 64196u << (1u % 32u), _wgslsmith_add_u32(1u, global1.x)), select(select(vec3<bool>(arg_1.x, false, true), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(true, false, false)), !vec3<bool>(true, arg_1.x, arg_1.x), arg_1.x)));
}

fn func_6(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    global0 = vec4<i32>(-53266i, global0.x, 37605i, firstTrailingBit(~2147483647i));
    global1 = ~firstLeadingBit(arg_1 & (~vec3<u32>(32971u, 987u, 1u) & arg_1));
    global2 = arg_1.x;
    global1 = ~(~arg_1);
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_u32(arg_1.x, arg_1.x, 1u), vec2<bool>(true, true), ~func_4(Struct_3(false), Struct_1(global1.x, vec2<bool>(false, false), 63613u, vec3<i32>(-2147483647i, -13839i, 59481i), global0.xzx), Struct_3(false), ~u_input.a.x).a.a, vec3<i32>(global0.x, u_input.c, 1i | ~global0.x), ~u_input.a.zzw), ~func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0))), Struct_2(Struct_1(65252u, vec2<bool>(false, true), u_input.b, vec3<i32>(global0.x, 45386i, 1i), global0.ywx), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 14760i), vec2<i32>(global0.x, -3721i)))).d.xy);
    return var_0.a;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    global0 = _wgslsmith_div_vec4_i32(reverseBits(~_wgslsmith_mult_vec4_i32(u_input.a & u_input.a, u_input.a)), u_input.a);
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 * arg_2)));
    let var_1 = ~arg_0.c;
    let var_2 = 51945i;
    global1 = vec3<u32>(arg_1.c >> (61450u % 32u), var_1, u_input.b << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_3.c, var_1), arg_0.c, func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, -145f))), func_4(Struct_3(arg_3.b.x), Struct_1(101194u, vec2<bool>(arg_3.b.x, arg_0.b.x), 0u, vec3<i32>(arg_3.d.x, arg_3.e.x, 41592i), arg_1.d), Struct_3(false), -1i)).c) % 32u));
    return select(vec4<bool>(func_6(_wgslsmith_f_op_f32(-arg_2), ~firstTrailingBit(vec3<u32>(60315u, arg_1.a, arg_1.c))).b.x, !arg_3.b.x, false, arg_3.b.x), !vec4<bool>(false, _wgslsmith_f_op_f32(-arg_2) > _wgslsmith_f_op_f32(arg_2 * arg_2), !arg_0.b.x, any(vec2<bool>(true, true))), !arg_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2147483647i, 2147483647i, _wgslsmith_dot_vec3_i32(u_input.a.wxx, u_input.a.xyx), u_input.c)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, global0.x, -1i), vec4<i32>(2147483647i, global0.x, u_input.a.x, -1i)), u_input.c), 0i), _wgslsmith_div_i32(min(0i, u_input.a.x), min(13026i, 2147483647i >> (global1.x % 32u))), global0.x), select(_wgslsmith_mult_vec4_i32(abs(~u_input.a), u_input.a), ~vec4<i32>(59709i, u_input.c, 2147483647i, firstTrailingBit(global0.x)), func_7(func_6(-825f, func_1(global1.x, vec2<bool>(true, true))), Struct_1(~1u, func_4(Struct_3(true), Struct_1(31536u, vec2<bool>(false, true), global1.x, vec3<i32>(u_input.c, 27281i, u_input.a.x), vec3<i32>(-2147483647i, global0.x, 17031i)), Struct_3(false), global0.x).a.b, ~global1.x, vec3<i32>(-2147483647i, 3191i, 58198i), vec3<i32>(u_input.a.x, global0.x, 0i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(446f * 1034f), _wgslsmith_f_op_f32(max(926f, 1326f))), func_6(_wgslsmith_f_op_f32(-148f - -1097f), vec3<u32>(u_input.b, 16256u, 1u) | vec3<u32>(u_input.b, 88143u, 9065u)))), vec4<bool>(true, true, true, true));
    let var_0 = Struct_3(true);
    var var_1 = true;
    let var_2 = Struct_3(true);
    global2 = u_input.b;
    var var_3 = Struct_1(~(~u_input.b), select(vec2<bool>(any(!vec2<bool>(false, var_0.a)), var_2.a), func_7(Struct_1(37115u | global1.x, !vec2<bool>(false, var_2.a), ~0u, global0.xzw | global0.yyx, global0.yyw), Struct_1(_wgslsmith_div_u32(55107u, 4294967295u), !vec2<bool>(var_2.a, true), 72560u, vec3<i32>(u_input.a.x, -1i, -26017i), _wgslsmith_div_vec3_i32(u_input.a.xyx, vec3<i32>(u_input.a.x, 0i, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) * 1f), func_6(-1000f, select(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(global1.x, 19734u, u_input.b), vec3<bool>(false, var_2.a, true)))).xz, !(!var_0.a | false)), global1.x, func_4(var_0, Struct_1(global1.x, func_4(var_2, func_6(-1210f, vec3<u32>(u_input.b, u_input.b, global1.x)), var_0, _wgslsmith_mult_i32(-1i, u_input.a.x)).a.b, 47903u, (vec3<i32>(-1i, u_input.a.x, u_input.c) & u_input.a.yzw) ^ ~vec3<i32>(u_input.c, -27701i, global0.x), ~u_input.a.wyx), var_2, u_input.a.x).a.e, func_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f), 545f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-277f, -1054f)), _wgslsmith_f_op_f32(1993f - 1885f)))), func_4(Struct_3(true), func_6(_wgslsmith_f_op_f32(1245f - 509f), ~vec3<u32>(95991u, 8079u, 147075u)), var_2, _wgslsmith_add_i32(abs(global0.x), _wgslsmith_dot_vec3_i32(global0.wwz, vec3<i32>(global0.x, 1i, global0.x))))).e);
    var var_4 = max(global1.xy, global1.yy);
    var_3 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-309f + -1354f) * _wgslsmith_f_op_f32(step(421f, -784f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(Struct_3(true), Struct_1(u_input.b, var_3.b, var_4.x, u_input.a.zzx, vec3<i32>(u_input.a.x, 26905i, global0.x)), Struct_3(true), u_input.a.x), var_3.b.x && var_0.a)))), func_4(Struct_3(!(var_2.a || true)), Struct_1(~_wgslsmith_add_u32(8398u, 3084u), select(func_7(Struct_1(1u, vec2<bool>(var_0.a, var_3.b.x), 19356u, var_3.d, u_input.a.xxw), Struct_1(35659u, var_3.b, 1u, vec3<i32>(2147483647i, global0.x, u_input.c), vec3<i32>(var_3.d.x, global0.x, u_input.c)), -368f, Struct_1(21181u, vec2<bool>(true, false), var_4.x, vec3<i32>(0i, -5980i, -45735i), u_input.a.xxz)).wy, vec2<bool>(var_3.b.x, var_0.a), var_3.b), var_4.x ^ ~var_4.x, -u_input.a.yzy, u_input.a.xwz), Struct_3(!var_2.a), 1i));
    var var_5 = Struct_1(4294967295u, select(!func_7(Struct_1(1u, vec2<bool>(var_3.b.x, var_3.b.x), 29007u, vec3<i32>(var_3.d.x, -1i, u_input.a.x), u_input.a.zxz), Struct_1(19868u, var_3.b, u_input.b, vec3<i32>(20322i, 11476i, u_input.c), vec3<i32>(2147483647i, var_3.e.x, 1i)), -1000f, Struct_1(var_4.x, var_3.b, var_4.x, vec3<i32>(1i, global0.x, global0.x), u_input.a.zwz)).zy, select(vec2<bool>(global0.x >= -2147483647i, false), var_3.b, select(true, 4931u >= var_4.x, true)), !func_2(_wgslsmith_div_vec2_f32(vec2<f32>(818f, 265f), vec2<f32>(419f, 1294f)), func_4(Struct_3(true), Struct_1(u_input.b, vec2<bool>(false, true), var_4.x, vec3<i32>(var_3.e.x, 2147483647i, global0.x), global0.wzz), var_2, global0.x)).b), 1u, _wgslsmith_div_vec3_i32(-(reverseBits(global0.xzx) >> (firstTrailingBit(vec3<u32>(36774u, global1.x, 104952u)) % vec3<u32>(32u))), vec3<i32>(-var_3.d.x, -var_3.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(var_3.d.x, 31565i))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<i32>(-17234i, _wgslsmith_dot_vec3_i32(u_input.a.xxx, vec3<i32>(u_input.c, -2147483647i, ~1i)), -34190i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(151f, _wgslsmith_f_op_f32(abs(752f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(4294967295u, var_5.b, global1.x, var_5.d, global0.zwz), vec2<i32>(0i, var_5.e.x)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(465f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1496f, 628f, 745f, 518f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(260f, 231f, -567f, 1000f)))))), vec4<i32>(~38098i, ~(var_5.e.x | select(-33497i, var_5.d.x, true)), 9565i, _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(-30400i, var_5.d.x))));
}

