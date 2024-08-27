struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(1250f, -948f, -1884f), vec3<f32>(808f, 2163f, -114f), vec3<f32>(827f, 155f, 1723f), vec3<f32>(-1330f, 880f, -272f), vec3<f32>(-1618f, -1012f, 1271f), vec3<f32>(-808f, 444f, -1000f), vec3<f32>(1091f, -385f, -1556f), vec3<f32>(-562f, -997f, -953f), vec3<f32>(-229f, 444f, -1396f), vec3<f32>(-478f, -610f, -664f));

var<private> global1: Struct_2 = Struct_2(vec2<u32>(4294967295u, 1u), vec3<u32>(10553u, 0u, 23709u), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(-1042f, 1659f), vec3<bool>(true, false, true), -1i, 42571u), vec3<f32>(-733f, 545f, 781f));

var<private> global2: u32 = 78632u;

var<private> global3: array<i32, 27>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> vec2<u32> {
    return ~global1.a;
}

fn func_3() -> u32 {
    global0 = array<vec3<f32>, 10>();
    let var_0 = firstTrailingBit(-(~32532i));
    global0 = array<vec3<f32>, 10>();
    global3 = array<i32, 27>();
    global0 = array<vec3<f32>, 10>();
    return u_input.e << (_wgslsmith_sub_u32(1u, 1u) % 32u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.x), 428f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global1.c.b.x)))), _wgslsmith_f_op_f32(522f + global1.d.x))), -620f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.d.x, global1.c.b.x))), _wgslsmith_f_op_f32(-global1.c.b.x));
    var var_1 = global1.c;
    global1 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, _wgslsmith_sub_u32(20818u, ~global1.b.x)), ~arg_0), min(vec3<u32>(select(global1.c.e, 1u, true) ^ func_3(), _wgslsmith_add_u32(firstLeadingBit(global1.c.e), global1.b.x), var_1.e), ~global1.b), global1.c, vec3<f32>(1175f, _wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1712f + -626f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-312f + _wgslsmith_f_op_f32(trunc(var_1.b.x)))))));
    return Struct_3(3238i, Struct_2(max(vec2<u32>(~0u, arg_0.x), reverseBits(u_input.b.yw) << (firstLeadingBit(vec2<u32>(var_1.e, 1u)) % vec2<u32>(32u))), ~max(~u_input.d.xzz, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, global1.b.x, u_input.e), vec3<u32>(30265u, var_1.e, var_1.e))), global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, global1.c.b.x, -164f), global0[_wgslsmith_index_u32(var_1.e, 10u)])))), arg_1, 1203f);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = global1.c.b;
    let var_1 = true && any(select(global1.c.a, vec4<bool>(true, arg_0.x, false, arg_2.b.c.c.x & false), false));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1969f, -440f))) - _wgslsmith_f_op_vec2_f32(trunc(global1.c.b)))) - vec2<f32>(_wgslsmith_f_op_f32(-func_2(vec2<u32>(global1.a.x, arg_2.b.c.e), vec4<i32>(14153i, arg_2.b.c.d, global3[_wgslsmith_index_u32(arg_2.b.a.x, 27u)], u_input.c.x)).b.d.x), arg_2.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(func_2(~global1.a, vec4<i32>(0i, 1i, arg_2.a, arg_2.b.c.d) << (vec4<u32>(global1.a.x, arg_2.b.c.e, u_input.e, 24437u) % vec4<u32>(32u))).b.d.xz)) + global1.d.xz), true));
    var_0 = global1.c.b;
    var var_2 = vec4<f32>(1000f, arg_2.d, _wgslsmith_f_op_f32(global1.d.x * var_0.x), global1.d.x);
    return select(_wgslsmith_div_vec2_u32(arg_2.b.b.zz, vec2<u32>(func_1(Struct_1(vec4<bool>(true, false, false, var_1), arg_2.b.d.yy, vec3<bool>(arg_2.b.c.c.x, var_1, false), u_input.c.x, 4294967295u), arg_1.yz, _wgslsmith_mult_i32(0i, u_input.c.x)).x, ~(~u_input.d.x))), arg_3.xy, !vec2<bool>(false, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    let var_1 = firstTrailingBit(~12439i);
    let var_2 = Struct_2(func_4(select(vec4<bool>(global1.c.c.x, u_input.c.x <= -1i, 0u != global1.b.x, !global1.c.c.x), global1.c.a, any(!global1.c.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.d - vec3<f32>(global1.c.b.x, global1.d.x, global1.c.b.x))) * global1.d), func_2(func_1(Struct_1(vec4<bool>(global1.c.c.x, global1.c.c.x, global1.c.c.x, false), vec2<f32>(global1.d.x, global1.d.x), vec3<bool>(true, true, false), 16997i, 62267u), global1.d.zy, 2147483647i) >> (~vec2<u32>(37410u, 20928u) % vec2<u32>(32u)), vec4<i32>(abs(u_input.c.x), global3[_wgslsmith_index_u32(1u, 27u)] >> (var_0 % 32u), -global1.c.d, global1.c.d)), ~u_input.b.xyw), global1.b << (vec3<u32>(select(1u, 1u, global1.c.a.x), 1u, 4294967295u) % vec3<u32>(32u)), Struct_1(select(!global1.c.a, select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), all(global1.c.a.xz)), false), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global1.c.b - vec2<f32>(-141f, -1000f)))))), !vec3<bool>(func_2(vec2<u32>(10234u, 0u), u_input.c).b.c.a.x, global1.c.c.x, true), 102839i, 1881u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global1.c.b.x)), global1.c.b.x, _wgslsmith_f_op_f32(-1f))));
    let var_3 = var_2;
    let var_4 = var_2.c;
    global1 = var_3;
    var var_5 = Struct_2(firstLeadingBit(var_2.b.xy), ~_wgslsmith_div_vec3_u32(var_3.b, vec3<u32>(_wgslsmith_add_u32(var_0, global1.b.x), _wgslsmith_clamp_u32(1u, var_4.e, 52361u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 1u, var_2.b.x, u_input.a.x), u_input.d))), Struct_1(!(!select(vec4<bool>(false, var_3.c.c.x, var_4.a.x, false), vec4<bool>(global1.c.c.x, var_4.a.x, false, true), var_3.c.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.b.x, 1687f) - vec2<f32>(_wgslsmith_f_op_f32(var_2.d.x * var_4.b.x), _wgslsmith_f_op_f32(-var_3.c.b.x))), global1.c.c, -2853i, ~u_input.a.x), _wgslsmith_div_vec3_f32(global1.d, var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec2_i32(u_input.c.yy ^ u_input.c.xx, vec2<i32>(var_5.c.d, 2147483647i)) >> (vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(12195u, var_4.e), firstLeadingBit(0u)), u_input.b.x) % vec2<u32>(32u)), vec4<u32>(firstLeadingBit(~1u) << (func_3() % 32u), reverseBits(func_4(!var_2.c.a, vec3<f32>(var_2.c.b.x, 208f, var_5.d.x), Struct_3(var_1, Struct_2(u_input.a.xy, vec3<u32>(76295u, 9786u, 0u), var_2.c, vec3<f32>(var_5.d.x, 388f, global1.c.b.x)), vec4<i32>(-2147483647i, var_5.c.d, var_4.d, -2147483647i), var_2.d.x), ~var_2.b).x), _wgslsmith_dot_vec2_u32(vec2<u32>(func_4(global1.c.a, vec3<f32>(var_3.d.x, var_3.d.x, var_2.c.b.x), Struct_3(var_3.c.d, var_3, u_input.c, -1176f), vec3<u32>(var_0, 7184u, global1.c.e)).x, max(var_3.a.x, var_0)), ~select(vec2<u32>(46503u, 92946u), var_2.a, vec2<bool>(false, var_5.c.c.x))), var_3.a.x));
}

