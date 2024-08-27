struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-141f, -1812f, 342f), vec3<u32>(81113u, 16114u, 37339u), vec4<f32>(-1519f, -979f, -1000f, 506f), 41853u, 1i);

var<private> global2: array<i32, 3>;

var<private> global3: vec4<u32>;

var<private> global4: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>) -> f32 {
    global1 = Struct_1(global1.c.zzw, (~select(vec3<u32>(global3.x, u_input.a.x, 20942u), vec3<u32>(23779u, 47962u, u_input.d.x), vec3<bool>(false, false, true)) << (global3.xzz % vec3<u32>(32u))) << (~(~(~u_input.a)) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(913f)) + 216f)), arg_0.a.x, -550f), _wgslsmith_mult_u32(118190u, 28762u), _wgslsmith_mod_i32(arg_0.e, _wgslsmith_div_i32(~global1.e, 19831i)));
    var var_0 = Struct_2(0u, vec4<bool>(false, all(arg_2), arg_2.x, !(any(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x)) || true)), ~min(global1.d, _wgslsmith_dot_vec2_u32(global3.xy, firstLeadingBit(arg_0.b.xx))), -((i32(-1i) * -u_input.c.x) ^ _wgslsmith_sub_i32(countOneBits(-1i), -29425i)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(-616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f)) * 1f))), -381f, global1.a.x, -136f);
    let var_2 = var_0.b.yx;
    global3 = vec4<u32>(global1.d, ~u_input.d.x, ~4294967295u, var_0.c);
    return global1.a.x;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = 1f;
    global4 = 2147483647i;
    let var_1 = Struct_2(1u, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), 20968u << (1u % 32u), i32(-1i) * -52503i);
    let var_2 = _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(65680u, u_input.e), vec2<u32>(var_1.c, 100009u)))), 12u)], u_input.d, !(!var_1.b)));
    global0 = array<Struct_1, 12>();
    return global0[_wgslsmith_index_u32(58130u, 12u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    global0 = array<Struct_1, 12>();
    let var_0 = arg_0;
    global3 = firstLeadingBit(min(~max(vec4<u32>(global1.d, global3.x, 1u, 25913u) >> (u_input.b % vec4<u32>(32u)), ~u_input.b), abs(u_input.b & (vec4<u32>(25143u, global1.b.x, global3.x, arg_0.a) << (u_input.b % vec4<u32>(32u))))));
    let var_1 = Struct_2(arg_2.d, select(arg_3, vec4<bool>(true, arg_3.x, !arg_3.x, !arg_0.b.x & select(true, var_0.b.x, var_0.b.x)), false), ~_wgslsmith_clamp_u32(~firstLeadingBit(arg_1.x), 28473u, u_input.a.x), ~var_0.d);
    global4 = u_input.c.x << ((_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(abs(vec4<u32>(global1.b.x, global3.x, global1.b.x, 39315u)), u_input.b)) << (u_input.a.x % 32u)) % 32u);
    return true == arg_0.b.x;
}

fn func_1(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = 2515u;
    let var_1 = select(vec4<i32>(-(global1.e ^ -3334i) | 0i, global2[_wgslsmith_index_u32(1u, 3u)], max(global1.e, -41083i), ~(-2147483647i)), ~vec4<i32>(-5502i, _wgslsmith_mult_i32(54345i, u_input.c.x >> (72378u % 32u)), u_input.c.x, -_wgslsmith_add_i32(7434i, -2147483647i)), func_4(Struct_2(1u, vec4<bool>(true, true, true, true), 1u, u_input.c.x | 2147483647i), vec2<u32>(~1967u, global1.d << (global1.d % 32u)), func_2(arg_0, -vec3<i32>(global1.e, -51628i, global1.e), -vec3<i32>(global2[_wgslsmith_index_u32(global1.d, 3u)], u_input.c.x, global2[_wgslsmith_index_u32(global3.x, 3u)])), vec4<bool>(true, true, true, true)) & (-(global1.e ^ -1i) >= firstTrailingBit(u_input.c.x)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(((reverseBits(global1.b.x) & (0u | global3.x)) >> (u_input.e % 32u)) << (func_2(func_2(_wgslsmith_f_op_f32(step(-1000f, global1.a.x)), -var_1.xzy, _wgslsmith_sub_vec3_i32(var_1.ywx, var_1.yzx)).a.x, -var_1.yzy, firstLeadingBit(abs(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], var_1.x, var_1.x)))).d % 32u), ~(~global3.x << (4294967295u % 32u)), select(global1.b.x, global1.b.x, false)), 12u)];
    let var_3 = 0i == ~_wgslsmith_add_i32(-u_input.c.x, countOneBits(var_1.x));
    var var_4 = false;
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 3>();
    global2 = array<i32, 3>();
    let var_0 = global1.d;
    var var_1 = vec4<u32>(~(~u_input.b.x) << (_wgslsmith_mod_u32(u_input.b.x, global3.x) % 32u), _wgslsmith_clamp_u32((global1.d << (global3.x % 32u)) & 4294967295u, ~(~(~u_input.b.x)), ~reverseBits(0u)), max(_wgslsmith_div_u32(global1.b.x, func_1(global1.c.x, 149f)), ~((u_input.d.x ^ 21482u) ^ 19636u)), ~(~_wgslsmith_dot_vec2_u32(firstTrailingBit(global3.wz), vec2<u32>(31542u, 4294967295u))));
    var var_2 = ~vec3<i32>(reverseBits(func_2(-1899f, abs(vec3<i32>(global2[_wgslsmith_index_u32(global1.d, 3u)], -11159i, 38795i)), reverseBits(vec3<i32>(-13213i, -2147483647i, global1.e))).e), -(~_wgslsmith_mod_i32(55244i, global1.e)), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(global3.x, 20054u), ~33182u), var_1.x), ~_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(var_2.x, u_input.c.x, -25623i, var_2.x)), ~vec4<i32>(16291i, global2[_wgslsmith_index_u32(var_1.x, 3u)], var_2.x, -2147483647i)) << (~vec4<u32>(countOneBits(1u), ~u_input.a.x, _wgslsmith_div_u32(11328u, var_1.x), u_input.e) % vec4<u32>(32u)), min(1u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3058f - global1.c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(419f))) - 295f)));
}

