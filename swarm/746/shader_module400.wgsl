struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(161u, 4294967295u, 5576u, 38180u);

var<private> global1: Struct_3 = Struct_3(Struct_1(243f, 36346u, false, vec3<f32>(1634f, 1531f, 468f), 1u));

var<private> global2: array<vec2<f32>, 15>;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 1u, 1u, 8206u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<i32>) -> bool {
    global1 = Struct_3(global1.a);
    let var_0 = 2147483647i;
    let var_1 = Struct_1(global1.a.a, ~(~(~_wgslsmith_sub_u32(global0.x, 29523u))), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1760f, 463f, arg_1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.d))), u_input.a.x);
    let var_2 = select(select(!vec3<bool>(global1.a.c, global1.a.c, global1.a.e < global3.x), select(select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, global1.a.c), vec3<bool>(true, global1.a.c, arg_0)), !vec3<bool>(global1.a.c, arg_0, true)), select(!vec3<bool>(false, var_1.c, false), select(vec3<bool>(true, arg_0, global1.a.c), vec3<bool>(false, arg_0, false), vec3<bool>(var_1.c, false, arg_0)), select(vec3<bool>(arg_0, var_1.c, arg_0), vec3<bool>(false, false, global1.a.c), vec3<bool>(global1.a.c, global1.a.c, arg_0))), (var_0 < arg_2.x) | all(vec3<bool>(global1.a.c, true, arg_0))), ((var_0 | arg_2.x) << (~var_1.e % 32u)) > 1i), !vec3<bool>(arg_0, true, false), select(select(!(!vec3<bool>(var_1.c, true, false)), vec3<bool>(!arg_0, !var_1.c, var_1.c), true), vec3<bool>(false, true, true), (var_1.c && arg_0) | false));
    let var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(923f + _wgslsmith_f_op_f32(var_1.a * -343f)), ~(~34865u), !arg_0, vec3<f32>(arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(round(var_1.d.x))), 0u)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(global3.yx, global3.yx), 23190u, 27857u), (_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(arg_2.x, 1i)) > ~(~var_0)) | true);
    return true && !any(var_2.yz);
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1213f))), arg_1)), 1u, !(!func_3(global1.a.c, _wgslsmith_f_op_vec2_f32(-global1.a.d.yx), vec4<i32>(1i, -33330i, 93953i, -6059i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.d)), ~(~(~global1.a.b)));
    var var_1 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_add_i32(-reverseBits(20117i), -19247i), -44549i << (~firstTrailingBit(4294967295u) % 32u)), true, vec4<bool>(-1367f < _wgslsmith_f_op_f32(-arg_1), !(global1.a.c != true), false, true), 4294967295u);
    var_0 = global1.a;
    var var_2 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(1i, var_1.a, 32700i, var_1.a) << (u_input.a % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(39664i, -2147483647i, 2147483647i, var_1.a), ~vec4<i32>(2147483647i, var_1.a, var_1.a, var_1.a)), -_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(44947i, var_1.a, var_1.a, var_1.a), vec4<i32>(var_1.a, var_1.a, var_1.a, var_1.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -33128i, 10129i, -1i), vec4<i32>(var_1.a, -10902i, 14406i, 0i))));
    var var_3 = ~11043i;
    return global1.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<bool>) -> vec3<bool> {
    global0 = ~vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(26038u, global3.x), ~(~4294967295u), global1.a.b), global1.a.b, ~global1.a.e >> (1u % 32u), 1u);
    let var_0 = func_2(11588u, -490f);
    var var_1 = arg_2;
    let var_2 = Struct_2(reverseBits(1i), all(!(!select(vec2<bool>(global1.a.c, arg_2.x), vec2<bool>(var_1.x, false), true))), !vec4<bool>(!var_1.x, arg_2.x, false, func_3(!arg_2.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 132f)), reverseBits(vec4<i32>(41812i, -1i, 17217i, 0i)))), ~(~_wgslsmith_sub_u32(20558u, 49498u & global1.a.b)));
    let var_3 = var_2;
    return var_2.c.wxy;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = firstLeadingBit(select(~vec4<u32>(83168u, 4294967295u, 4294967295u, 4294967295u) << (reverseBits(~u_input.a) % vec4<u32>(32u)), ~(vec4<u32>(13633u, 0u, 0u, 1374u) << (firstTrailingBit(vec4<u32>(46142u, global1.a.e, 33735u, 24327u)) % vec4<u32>(32u))), true));
    var var_0 = select(select(countOneBits(~global0.zyz), firstTrailingBit(u_input.a.zyw), !vec3<bool>(select(global1.a.c, true, global1.a.c), true, true)), u_input.a.xxz, func_1(vec2<f32>(global1.a.d.x, _wgslsmith_div_f32(global1.a.d.x, 409f)), -278f, !vec3<bool>(!global1.a.c, global1.a.c, false)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1.a.a, 155f))))))));
    var_1 = -572f;
    let var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), min(abs(vec4<i32>(50737i, -1i, 21063i, 2147483647i)), vec4<i32>(14952i, -41147i, 0i, -19240i) << (u_input.a % vec4<u32>(32u))) ^ vec4<i32>(~(-13201i), ~(-27936i), -2147483647i, 1i)), vec4<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(33107i, -2147483647i, 2147483647i), vec3<i32>(-1i, -2147483647i, 13926i)), ~(-3985i), -1i));
    global0 = _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>((firstLeadingBit(1700u) ^ var_0.x) & min(5387u, 53834u), 47081u, ~0u, 4294967295u));
    global2 = array<vec2<f32>, 15>();
    let var_3 = _wgslsmith_f_op_f32(global1.a.a * global1.a.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(global3.x, global3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(global0.x), 1u, 4294967295u), ~(u_input.a.ywz | vec3<u32>(1u, 4294967295u, 1u))), func_2(u_input.a.x << (global0.x % 32u), var_3).e), 1030f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1833f, 982f, 1000f, global1.a.d.x) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3, 859f, var_3, -385f)))), vec4<f32>(1237f, -1989f, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(step(var_3, global1.a.a))), !(!vec4<bool>(false, true, global1.a.c, global1.a.c)))), vec4<f32>(func_2(4294967295u, -1060f).d.x, 772f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-651f + 1261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3)) - 1000f)), vec4<bool>(func_1(vec2<f32>(-713f, global1.a.d.x), _wgslsmith_f_op_f32(var_3 - global1.a.d.x), !vec3<bool>(false, global1.a.c, global1.a.c)).x, global1.a.c, true, func_2(global0.x, 167f).c))), ~global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a.d.x)) + -1000f));
}

