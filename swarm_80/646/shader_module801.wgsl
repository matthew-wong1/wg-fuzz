struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(vec2<i32>(1i, -1i)), Struct_4(vec2<i32>(2147483647i, -13283i)), Struct_4(vec2<i32>(2147483647i, 0i)));

var<private> global1: Struct_3;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<bool> {
    var var_0 = -1334f;
    var_0 = _wgslsmith_f_op_f32(global1.a * -965f);
    let var_1 = Struct_2(vec4<u32>(5706u, ~(~0u), _wgslsmith_mult_u32(4294967295u, u_input.a), max(~u_input.a, u_input.a)) | _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(2413u, u_input.a, u_input.a, 81273u)), firstTrailingBit(~vec4<u32>(0u, 55319u, 29362u, u_input.a)), vec4<u32>(39095u, 1u, 22235u, u_input.a) ^ min(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<u32>(0u, 11342u, u_input.a, 1u))), ~(~0u), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a))), 175f, global1.a));
    var var_2 = global1.b.a.x;
    let var_3 = u_input.a;
    return vec4<bool>(false != !global1.b.a.x, any(select(vec4<bool>(global1.b.a.x, global1.b.a.x, any(vec3<bool>(true, global1.b.a.x, global1.b.a.x)), global1.b.a.x), !(!global1.b.a), !global1.b.a)), any(global1.b.a.yz), global1.b.a.x);
}

fn func_2() -> f32 {
    global1 = Struct_3(1f, Struct_1(select(global1.b.a, func_3(), !(!global1.b.a)), -abs(global1.b.b)));
    global1 = Struct_3(global1.a, Struct_1(global1.b.a, select(~abs(global1.b.b), ~select(vec3<i32>(global1.b.b.x, 7780i, global1.b.b.x), global1.b.b, global1.b.a.zwz), vec3<bool>(global1.b.a.x == false, true, global1.b.a.x))));
    var var_0 = all(func_3());
    var var_1 = ~(~global1.b.b.x);
    let var_2 = global0[_wgslsmith_index_u32(~46700u, 3u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: i32) -> Struct_3 {
    var var_0 = -18883i;
    global0 = array<Struct_4, 3>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1061f, -945f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(890f, -1000f)))), _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-815f, -834f, global1.a, 201f) - vec4<f32>(global1.a, 1000f, 1212f, 1270f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-575f, 408f, 302f, 863f) * vec4<f32>(global1.a, global1.a, -837f, -999f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-677f, -1209f, 613f, 1172f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global1.a, var_1.x)), -2046f)))), -964f, _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)) * var_1);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(158f, _wgslsmith_f_op_f32(global1.a * 429f))));
    return Struct_3(-1263f, global1.b);
}

fn func_4(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_1(select(select(arg_0.b.a, !(!global1.b.a), vec4<bool>(true, true, any(global1.b.a), global1.b.a.x)), func_3(), vec4<bool>(func_1(!global1.b.a.x, global0[_wgslsmith_index_u32(~u_input.a, 3u)], vec4<bool>(global1.b.a.x, arg_0.b.a.x, false, false), firstLeadingBit(global1.b.b.x)).b.a.x, !global1.b.a.x & true, true, !select(arg_0.b.a.x, false, arg_0.b.a.x))), func_1(_wgslsmith_clamp_u32(~0u, 10919u, 4294967295u) == u_input.a, Struct_4(vec2<i32>(min(global1.b.b.x, arg_0.b.b.x), -2147483647i)), !vec4<bool>(arg_0.b.a.x, true, global1.b.a.x, global1.b.a.x && arg_0.b.a.x), -1i).b.b);
    let var_1 = var_0.a.wz;
    return -52753i ^ (_wgslsmith_clamp_i32(firstLeadingBit(firstTrailingBit(var_0.b.x)), 52287i, max(-3637i, arg_0.b.b.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 28565u, u_input.a), vec3<u32>(1u, 33265u, 33789u)) % 32u)) & var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<u32>(max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)) >> (1u % 32u)), 14618u, _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(88429u, 24254u, u_input.a), 4294967295u), u_input.a ^ ~u_input.a), 1u << ((u_input.a << ((u_input.a & 66871u) % 32u)) % 32u)), u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, global1.a, global1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -341f, global1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, -1337f, -964f))))));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, global1.b.b.x, 0i, -1i)), -vec4<i32>(_wgslsmith_div_i32(-2147483647i, global1.b.b.x), 4311i, global1.b.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.b.x, -20850i, -2147483647i), vec3<i32>(8313i, global1.b.b.x, -1i))) & vec4<i32>(_wgslsmith_sub_i32(global1.b.b.x, 1i << (0u % 32u)), func_4(func_1(global1.b.a.x, global0[_wgslsmith_index_u32(var_0.b, 3u)], vec4<bool>(true, true, false, global1.b.a.x), global1.b.b.x)), select(countOneBits(647i), 1i, select(false, global1.b.a.x, global1.b.a.x)), global1.b.b.x));
    let var_2 = vec3<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.x)))))), global1.a);
    var var_3 = -(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(global1.b.b.x, var_1.x), max(global1.b.b.x, -6684i))) << (var_0.a.zw % vec2<u32>(32u)));
    var var_4 = vec4<i32>(var_3.x, global1.b.b.x | (17862i >> (var_0.b % 32u)), var_3.x, global1.b.b.x);
    var var_5 = countOneBits(_wgslsmith_clamp_vec2_u32(abs(firstLeadingBit(var_0.a.xw)), ~(~vec2<u32>(1u, 36977u)) ^ ~var_0.a.zy, vec2<u32>(u_input.a, ~firstTrailingBit(u_input.a))));
    let var_6 = vec4<bool>(!any(vec4<bool>(func_1(true, Struct_4(vec2<i32>(var_3.x, -1i)), vec4<bool>(false, global1.b.a.x, true, global1.b.a.x), var_1.x).b.a.x, !global1.b.a.x, global1.b.a.x, true)), -var_4.x != var_3.x, !(!(global1.a <= 1534f)) || select(any(!vec2<bool>(global1.b.a.x, false)), false, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_2.x, 1000f)), _wgslsmith_f_op_f32(-func_1(false, global0[_wgslsmith_index_u32(var_0.a.x, 3u)], vec4<bool>(false, global1.b.a.x, false, global1.b.a.x), var_1.x).a))) >= _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x)))));
    var var_7 = !global1.b.a;
    var_5 = var_0.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(var_0.c.x + var_2.x))), -326f, -868f, _wgslsmith_div_f32(global1.a, -1305f)), var_2.x);
}

