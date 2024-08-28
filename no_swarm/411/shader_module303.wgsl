struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 14>;

var<private> global2: array<vec2<f32>, 3>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> vec2<i32> {
    global1 = array<f32, 14>();
    var var_0 = ~(0u & ~u_input.b);
    global0 = arg_1.x | reverseBits(_wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(26404u, arg_1.x, 1u, u_input.a), vec4<u32>(u_input.b, 0u, 0u, 0u))), vec4<u32>(u_input.b, arg_1.x, 2682u, ~0u)));
    let var_1 = _wgslsmith_clamp_vec3_u32(~abs(~vec3<u32>(0u, u_input.b, arg_1.x)) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.b, 21463u, u_input.b)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, 46398u, u_input.b), vec3<u32>(arg_1.x, arg_1.x, u_input.a)), vec3<u32>(4294967295u, 27301u, 20441u), vec3<u32>(4294967295u, arg_1.x, 60084u))), ~vec3<u32>(~(arg_1.x ^ 12496u), min(abs(59551u), u_input.b), u_input.a), select(~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.x, 65362u, u_input.a), vec3<u32>(44195u, arg_1.x, u_input.a)), abs(vec3<u32>(4294967295u, 13470u, 64747u)) >> (firstTrailingBit(select(vec3<u32>(arg_1.x, u_input.b, 35895u), vec3<u32>(0u, 20967u, 0u), vec3<bool>(arg_0.c.x, true, global3.x))) % vec3<u32>(32u)), !(!select(arg_2.c, vec3<bool>(true, arg_0.c.x, true), arg_2.c))));
    var var_2 = !(!(!select(!arg_2.c.xz, vec2<bool>(arg_2.c.x, true), 25642u >= arg_1.x)));
    return vec2<i32>(firstTrailingBit(1i << (var_1.x % 32u)), 1i);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global3 = select(!(!vec2<bool>(any(vec3<bool>(false, global3.x, false)), !global3.x)), vec2<bool>(false, true), (u_input.c > firstLeadingBit(-2147483647i)) != (u_input.c == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 27251i), func_3(Struct_1(vec3<f32>(arg_0.x, 663f, global1[_wgslsmith_index_u32(44329u, 14u)]), vec2<i32>(-26702i, u_input.c), vec3<bool>(global3.x, global3.x, false)), vec2<u32>(13631u, 9719u), Struct_1(vec3<f32>(679f, arg_0.x, -1454f), vec2<i32>(u_input.c, u_input.c), vec3<bool>(global3.x, global3.x, global3.x))))));
    var var_0 = 4294967295u;
    let var_1 = u_input.b;
    return Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(countOneBits(~(~var_1)), 14u)], arg_0.x, arg_0.x), -_wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.c, u_input.c), -vec2<i32>(2147483647i, u_input.c)), ~vec2<i32>(u_input.c, u_input.c) ^ (vec2<i32>(-2147483647i, 2799i) << (vec2<u32>(u_input.b, var_1) % vec2<u32>(32u)))), vec3<bool>(!(!global3.x), all(vec2<bool>(true, any(vec4<bool>(true, false, global3.x, global3.x)))), true));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = array<vec2<f32>, 3>();
    var var_0 = !arg_3.c.zy;
    global1 = array<f32, 14>();
    var var_1 = abs(vec2<i32>(arg_3.b.x, -1i));
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(690f)), arg_3.a.x)), _wgslsmith_f_op_vec2_f32(abs(arg_3.a.zx)), select(arg_3.c.yy, arg_3.c.yx, vec2<bool>(arg_2.c.x || arg_2.c.x, any(vec4<bool>(true, arg_2.c.x, false, true)))))));
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_2.a.zz * arg_2.a.yz), vec2<f32>(global1[_wgslsmith_index_u32(27455u, 14u)], var_2.a.x))))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = array<vec2<f32>, 3>();
    let var_0 = -_wgslsmith_mod_i32(-min(1i, -11749i), reverseBits(_wgslsmith_add_i32(-u_input.c, u_input.c)));
    var var_1 = 39993u;
    let var_2 = max(_wgslsmith_add_u32(~u_input.b, u_input.b), 42603u);
    var var_3 = func_4(vec4<u32>(select(~0u, u_input.a, true), ~3979u, abs(u_input.a), u_input.a) & (vec4<u32>(var_2 << (u_input.a % 32u), 12504u, 33604u, 6685u) ^ abs(~vec4<u32>(var_2, 1934u, u_input.a, u_input.b))), vec2<u32>(~27373u, u_input.b), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(334f, -1001f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], 1512f, arg_0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global1[_wgslsmith_index_u32(42430u, 14u)], arg_0)))), -vec2<i32>(var_0, var_0) << (vec2<u32>(_wgslsmith_sub_u32(var_2, 55082u), 4294967295u) % vec2<u32>(32u)), !vec3<bool>(all(vec4<bool>(true, true, true, global3.x)), true, true)));
    return func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_3.a.zz))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 3>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(775f, -668f, -822f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-855f, global1[_wgslsmith_index_u32(u_input.a, 14u)], 823f), vec3<f32>(global1[_wgslsmith_index_u32(17897u, 14u)], -172f, global1[_wgslsmith_index_u32(16098u, 14u)]))))), -(countOneBits(vec2<i32>(-44377i, u_input.c)) | vec2<i32>(u_input.c, 1i)) | _wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.c, 24587i) >> (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(-1i, 63062i)), select(vec2<bool>(false, global3.x), vec2<bool>(false, true), true)), vec2<i32>(_wgslsmith_mod_i32(u_input.c, 61825i), -1i)), vec3<bool>(false, global3.x, !global3.x));
    var var_1 = func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))));
    let var_2 = func_4(vec4<u32>(~(~4294967295u) << (u_input.a % 32u), u_input.b & 0u, 0u, ~0u), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(50897u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.b, u_input.b, 62424u)), u_input.a) & countOneBits(vec2<u32>(u_input.a & u_input.a, u_input.b)), Struct_1(var_1.a, var_0.b, vec3<bool>(!func_4(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec2<u32>(56459u, u_input.b), Struct_1(var_0.a, vec2<i32>(u_input.c, var_0.b.x), vec3<bool>(false, false, var_0.c.x)), Struct_1(var_0.a, var_0.b, vec3<bool>(global3.x, false, false))).c.x, any(func_1(global1[_wgslsmith_index_u32(u_input.b, 14u)]).c), false && select(false, false, var_0.c.x))), func_4(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 17505u, 24494u, 50608u), vec4<u32>(11244u, 0u, u_input.b, u_input.a))), vec2<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u), u_input.b) ^ _wgslsmith_add_vec2_u32(vec2<u32>(9346u, 34662u), countOneBits(vec2<u32>(u_input.b, 4294967295u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.x, var_0.b.x), vec2<i32>(u_input.c, var_1.b.x)), !var_1.c), func_4(abs(~vec4<u32>(19124u, u_input.b, 4294967295u, u_input.a)), countOneBits(vec2<u32>(u_input.a, 1u) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), func_2(_wgslsmith_f_op_vec2_f32(floor(var_0.a.xx))), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(-1285f, global1[_wgslsmith_index_u32(4294967295u, 14u)], 1828f)), -vec2<i32>(u_input.c, -35852i), var_0.c)))).c.x;
    var_0 = func_2(global2[_wgslsmith_index_u32(~1u, 3u)]);
    var_0 = func_2(vec2<f32>(-254f, 614f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(2114i, ~1i), _wgslsmith_div_u32(u_input.b, 1u), max(abs(-vec4<i32>(33187i, 0i, 0i, var_1.b.x)) << (~abs(vec4<u32>(4294967295u, 1u, u_input.a, 6388u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(var_1.b.x << (57379u % 32u), u_input.c), ~_wgslsmith_dot_vec2_i32(var_1.b, vec2<i32>(0i, u_input.c)), u_input.c, ~reverseBits(u_input.c))));
}

