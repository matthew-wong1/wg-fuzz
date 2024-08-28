struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(45184u, 5110u, 5733u), vec3<u32>(0u, 1u, 1u));

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(58963u, 1u, 4294967295u), vec3<u32>(22342u, 4294967295u, 22165u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> f32 {
    var var_0 = firstLeadingBit(-vec2<i32>(-29473i, -1i));
    var var_1 = Struct_1(abs(countOneBits(global0.a)), ~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(11819u, global0.b.x, 102505u), vec3<u32>(global1.a.x, 17246u, u_input.b.x)) ^ abs(vec3<u32>(2984u, u_input.b.x, global0.a.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-275f - -341f), _wgslsmith_f_op_f32(ceil(-1658f))) + arg_0.x))));
    let var_3 = reverseBits(1i);
    let var_4 = Struct_1(abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(58801u, 4294967295u, global3.a.x, var_1.a.x), ~vec4<u32>(0u, u_input.b.x, 23242u, 47794u)), ~global2.x, countOneBits(64682u))), reverseBits(vec3<u32>(global3.a.x, 4294967295u, global2.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -492f);
}

fn func_2(arg_0: f32, arg_1: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(arg_0)), arg_0, _wgslsmith_f_op_f32(497f - arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, _wgslsmith_f_op_f32(311f * arg_0), arg_0, _wgslsmith_f_op_f32(func_3(vec2<f32>(426f, arg_0), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)))))));
    let var_1 = vec3<bool>(false, any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true)), 72420u < global3.a.x);
    global2 = ~vec4<u32>(~global2.x, global0.b.x ^ 1058u, 1u, arg_1) & select(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, 0u), ~21189u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 36581u, u_input.b.x, global2.x), vec4<u32>(global3.b.x, 1u, 66953u, 0u)), global1.a.x), u_input.b.x), vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 3709u) ^ (1u >> (global1.b.x % 32u)), abs(64353u), global0.a.x, reverseBits(~22493u)), select(select(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x), false), vec4<bool>(var_1.x, true, false, var_1.x), global3.b.x < 32372u), vec4<bool>(false, true, var_1.x, true), var_1.x));
    var var_2 = Struct_1(~vec3<u32>(4294967295u, global0.a.x, 0u), ~(~(~vec3<u32>(45576u, global3.b.x, 1u) >> (~global0.a % vec3<u32>(32u)))));
    var var_3 = var_2.a.zz;
    return ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, arg_1, global1.b.x, 36238u), min(~vec4<u32>(var_3.x, 4294967295u, 0u, 4294967295u), ~vec4<u32>(35632u, 4294967295u, global2.x, 29772u))), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(global2.x, 11311u, arg_1, u_input.b.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, global1.b.x, global3.b.x), vec4<u32>(24977u, 8335u, arg_1, global2.x)), vec4<u32>(abs(global0.b.x), 0u, 63918u, 0u)), _wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(58492u, 4780u, global0.b.x, global3.b.x), vec4<u32>(u_input.b.x, global1.a.x, 73366u, global0.a.x))), vec4<u32>(~global2.x, ~global0.b.x, ~1u, firstLeadingBit(36280u))));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(vec3<u32>(global2.x, _wgslsmith_mod_u32(global3.a.x, arg_0.b.x), 4294967295u), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.b.x, global2.x, u_input.b.x), firstTrailingBit(vec3<u32>(36726u, 35955u, 30405u))), ~(vec3<u32>(u_input.b.x, 76773u, arg_0.b.x) & global2.yzz)), global1.a));
    global2 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 24885u, 4294967295u, global2.x), func_2(-608f, 0u)) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 0u, 23038u, global1.b.x), vec4<u32>(var_0.b.x, 44367u, u_input.b.x, 99598u)), _wgslsmith_div_u32(global3.b.x, arg_0.a.x), 9193u << (global1.a.x % 32u), 1u)) & ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global3.a.x, 49748u, u_input.b.x, global2.x), vec4<u32>(global1.b.x, 4294967295u, arg_0.b.x, arg_0.a.x)), vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 1u)));
    let var_1 = ~4294967295u;
    global2 = vec4<u32>(_wgslsmith_clamp_u32((select(global2.x, 4294967295u, false) << (_wgslsmith_mult_u32(0u, arg_0.a.x) % 32u)) ^ func_2(_wgslsmith_f_op_f32(-162f + -172f), 46486u).x, var_0.b.x, global3.b.x), 74200u, var_1, 62107u);
    global0 = var_0;
    return global3.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = false;
    global2 = select(vec4<u32>(~firstLeadingBit(reverseBits(u_input.b.x)), ~4294967295u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, arg_0.b.x, arg_0.a.x, arg_1.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(36888u, 38298u, global0.a.x, arg_1.x), vec4<u32>(global3.a.x, 41625u, 0u, 61652u))), select(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2.a.x, 0u), arg_2.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, 79601u, 64857u, 53497u), vec4<u32>(4294967295u, arg_0.b.x, u_input.b.x, 20718u)), true)), abs(~vec4<u32>(arg_1.x, global1.a.x, 28740u, global1.a.x) & min(min(vec4<u32>(32262u, 1u, arg_2.b.x, global3.b.x), vec4<u32>(arg_0.a.x, u_input.b.x, arg_1.x, 1u)), vec4<u32>(global2.x, 0u, global1.b.x, arg_0.b.x))), all(vec4<bool>(any(vec4<bool>(false, false, true, false)) && any(vec2<bool>(false, false)), true, false, true)));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~(~global1.a.x), global0.b.x & ~4294967295u, 34376u), ~(vec3<u32>(arg_1.x, global3.a.x, 45623u) >> (vec3<u32>(u_input.b.x, 1u, 0u) % vec3<u32>(32u))) >> (~(~arg_2.b) % vec3<u32>(32u)), global0.b), select(vec3<u32>(1u, 10271u, 1u), vec3<u32>(global2.x, arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.a.x, arg_0.a.x), vec3<u32>(1u, 4294967295u, 1u))), ~(global2.x ^ arg_0.a.x) > ~max(63161u, 19086u)));
    global1 = Struct_1(global0.a, var_1.a ^ (vec3<u32>(firstLeadingBit(global0.b.x), ~1u, var_1.a.x >> (0u % 32u)) >> (select(vec3<u32>(0u, 4294967295u, arg_1.x), arg_2.b | global1.b, vec3<bool>(true, true, false)) % vec3<u32>(32u))));
    var var_2 = var_1;
    return 159f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1323f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1177f)))), 1f)), 998f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(-1117f)))) * _wgslsmith_f_op_f32(func_4(Struct_1(global0.b, global0.b >> (u_input.b % vec3<u32>(32u))), ~global0.b << (vec3<u32>(31500u, 60398u, 65890u) % vec3<u32>(32u)), Struct_1(_wgslsmith_add_vec3_u32(global1.b, vec3<u32>(1u, 68446u, 29625u)), func_1(Struct_1(global2.wyy, vec3<u32>(global3.a.x, 57695u, 0u))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(i32(-1i) * -_wgslsmith_add_i32(1i, -85957i), ~firstLeadingBit(10824i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(1000f * var_0.x)) - var_0.x))));
}

