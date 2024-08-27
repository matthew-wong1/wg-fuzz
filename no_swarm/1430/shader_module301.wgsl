struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(4939i, 1i, i32(-2147483648), 6770i);

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<i32>(1i, 46704i, -63781i, -1i), 0u, 2147483647i), Struct_1(vec4<i32>(1i, 0i, 32738i, -41093i), 4294967295u, i32(-2147483648)), Struct_1(vec4<i32>(29317i, 2147483647i, 2147483647i, 2147483647i), 22543u, 17902i), Struct_1(vec4<i32>(-44681i, 42767i, i32(-2147483648), 5334i), 44380u, -57784i));

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec4<i32>(1i, i32(-2147483648), 16118i, -5389i), 20763u, -34758i), Struct_1(vec4<i32>(-6406i, 10875i, 9152i, i32(-2147483648)), 21405u, -1i), 42352u, false), Struct_2(Struct_1(vec4<i32>(-41363i, 1i, -1i, 1i), 1207u, 0i), Struct_1(vec4<i32>(1i, 26675i, -17159i, -26228i), 38767u, i32(-2147483648)), 1u, true), Struct_2(Struct_1(vec4<i32>(78093i, -51629i, -1i, 2147483647i), 1971u, 0i), Struct_1(vec4<i32>(2147483647i, 65780i, -29537i, 1i), 40684u, 14309i), 8028u, false));

var<private> global3: f32 = 277f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.c, 3u)];
    var var_1 = ~74586u;
    var var_2 = global0.x;
    let var_3 = (u_input.d.zzx << (vec3<u32>(23223u, var_0.b.b & 24834u, reverseBits(~59954u)) % vec3<u32>(32u))) ^ ~vec3<i32>(_wgslsmith_div_i32(-22251i, -11198i) ^ (var_0.a.c << (var_0.c % 32u)), firstLeadingBit(-var_0.a.c), -1i);
    var var_4 = var_0.d;
    return vec2<i32>(u_input.d.x << (~16149u % 32u), _wgslsmith_add_i32(firstTrailingBit(~var_3.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.d.x, global0.x), global0.x), ~_wgslsmith_dot_vec3_i32(global0.zww, vec3<i32>(1i, var_3.x, var_0.a.a.x)))));
}

fn func_2() -> Struct_2 {
    global2 = array<Struct_2, 3>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 3u)];
    var var_1 = global2[_wgslsmith_index_u32(var_0.b.b, 3u)];
    var var_2 = 1u;
    var_2 = var_0.a.b;
    return global2[_wgslsmith_index_u32(1u, 3u)];
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-914f)) + 1762f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-109f)) - 142f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-589f + _wgslsmith_f_op_f32(f32(-1f) * -463f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -1743f), vec2<f32>(-2844f, var_0.x), true))))));
    let var_1 = func_2();
    var var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(var_1.c), 3u)];
    var var_3 = vec4<u32>(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(74788u, 39975u, arg_2.x, 15386u), vec4<u32>(var_1.c, var_1.b.b, var_2.c, u_input.a.x))), arg_2.x, arg_0.b | ~155738u, func_2().b.b) >> (vec4<u32>(0u, firstLeadingBit(4294967295u), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(52492u, 19763u, arg_0.b), arg_2 | arg_2)), 1u) % vec4<u32>(32u));
    return select(!select(!vec4<bool>(false, true, var_2.d, true), !vec4<bool>(var_1.d, var_2.d, true, arg_3.d), select(!vec4<bool>(var_2.d, true, var_1.d, false), select(vec4<bool>(arg_3.d, true, false, arg_3.d), vec4<bool>(var_1.d, var_2.d, false, var_1.d), vec4<bool>(false, var_1.d, true, false)), select(vec4<bool>(var_1.d, false, arg_3.d, true), vec4<bool>(var_1.d, var_2.d, var_1.d, var_2.d), arg_3.d))), vec4<bool>(var_2.b.c <= (func_1(false).x >> (~1u % 32u)), var_0.x != 508f, var_2.d, var_2.d), !(!select(vec4<bool>(false, true, true, var_1.d), select(vec4<bool>(var_2.d, var_2.d, false, true), vec4<bool>(false, var_2.d, true, false), vec4<bool>(false, false, var_2.d, true)), var_1.d)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_3;
    let var_1 = vec4<u32>(73980u, _wgslsmith_mult_u32(~25951u, max(~0u, _wgslsmith_add_u32(var_0.c, 2106u))), ~(1u << (func_2().c % 32u)), 1u) >> (vec4<u32>(1u, _wgslsmith_mod_u32(~1u, 10729u), arg_2.c, u_input.a.x) % vec4<u32>(32u));
    global0 = vec4<i32>(~2147483647i, -35242i, _wgslsmith_add_i32(i32(-1i) * -_wgslsmith_div_i32(-2147483647i, arg_2.a.c), -_wgslsmith_dot_vec4_i32(var_0.b.a ^ u_input.d, u_input.d)), 1i);
    global0 = countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(select(-vec2<i32>(-3122i, var_0.b.a.x), min(vec2<i32>(-1i, arg_3.a.a.x), global0.yy), !vec2<bool>(false, arg_1.x)), -global0.yw), ~55011i, arg_3.a.c, -5939i));
    let var_2 = -((-arg_3.a.a.zx >> (u_input.a % vec2<u32>(32u))) << (vec2<u32>((1u ^ arg_2.a.b) << (var_0.a.b % 32u), arg_2.b.b) % vec2<u32>(32u)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 3>();
    var var_0 = func_4(-func_1(_wgslsmith_mod_i32(global0.x, -2147483647i) > -13641i), !func_3(global1[_wgslsmith_index_u32(1u, 4u)], ~(-2147483647i), vec3<u32>(countOneBits(u_input.c), _wgslsmith_sub_u32(56814u, u_input.c), u_input.a.x), func_2()), Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 4u)], func_2().a, 8498u, func_2().d), func_2());
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, (select(_wgslsmith_add_u32(u_input.a.x, 1u), 27558u, true) | (0u ^ _wgslsmith_sub_u32(u_input.a.x, u_input.c))) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(4294967295u, 105161u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a, vec2<u32>(u_input.a.x, 41311u))))), 3u)];
    global3 = 414f;
    let var_1 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-597f, -2028f, -900f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1309f, 1836f, 212f) + vec3<f32>(312f, 879f, -1448f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1f, -486f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1088f, 739f, var_0.d)), 1237f))), var_0.b.a.xw ^ firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, -19968i), -u_input.d.yw)));
}

