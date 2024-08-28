struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<bool>(false, false, false), vec4<f32>(1749f, 701f, 1775f, 1909f), 4294967295u), Struct_1(vec3<bool>(true, true, true), vec4<f32>(895f, -544f, 607f, -200f), 4294967295u), Struct_1(vec3<bool>(false, true, true), vec4<f32>(145f, 894f, 1000f, -1621f), 4294967295u), Struct_1(vec3<bool>(true, false, false), vec4<f32>(2150f, -204f, -604f, -664f), 1u), Struct_1(vec3<bool>(true, false, false), vec4<f32>(579f, 427f, -133f, 513f), 34816u), Struct_1(vec3<bool>(true, false, true), vec4<f32>(412f, 912f, 2249f, 1300f), 4294967295u), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1324f, 344f, -936f, 1000f), 1u), Struct_1(vec3<bool>(false, true, true), vec4<f32>(237f, -815f, 205f, 291f), 74741u), Struct_1(vec3<bool>(false, false, true), vec4<f32>(454f, -1370f, 1139f, 305f), 21387u), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-1678f, -1573f, -526f, -407f), 0u), Struct_1(vec3<bool>(true, true, true), vec4<f32>(-478f, -1901f, -596f, 551f), 29821u), Struct_1(vec3<bool>(true, false, true), vec4<f32>(684f, -570f, -873f, 503f), 5454u), Struct_1(vec3<bool>(true, true, false), vec4<f32>(1255f, 238f, 183f, -681f), 1u), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-1046f, -1398f, 426f, 151f), 4294967295u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4) -> f32 {
    var var_0 = ~(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, 23537i, -17164i)), ~u_input.a), u_input.c.x) << (u_input.b.x % 32u));
    global1 = arg_2.b;
    var var_1 = firstLeadingBit(1u);
    let var_2 = 1u;
    var var_3 = 41085u;
    return 1218f;
}

fn func_3() -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(~26962u, 14u)];
    let var_1 = 2147483647i;
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(35436u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~71057u), vec2<u32>(0u, 4295u))) & firstTrailingBit(var_0.c), 14u)];
    let var_2 = any(var_0.a) && (u_input.c.x != -(~reverseBits(46224i)));
    let var_3 = _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_div_f32(-169f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1092f), _wgslsmith_f_op_f32(step(1066f, var_0.b.x))))));
    return _wgslsmith_add_i32(var_1, u_input.d.x);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> vec2<i32> {
    var var_0 = abs(-(func_3() << (18784u % 32u)));
    let var_1 = select(u_input.b.wzx, ~(_wgslsmith_mod_vec3_u32(countOneBits(u_input.b.yxw), u_input.b.xzx | vec3<u32>(35034u, 0u, 42454u)) | u_input.b.yyx), global0.x);
    var var_2 = ~_wgslsmith_mod_u32(var_1.x, _wgslsmith_sub_u32(var_1.x, _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.zx))) >= ~(~reverseBits(firstTrailingBit(59497u)));
    var var_3 = Struct_3(u_input.c.x & (0i >> (0u % 32u)), ~(~select(vec2<u32>(global1.c, 77960u), ~vec2<u32>(u_input.b.x, u_input.b.x), true)), true, false);
    var var_4 = Struct_3(u_input.c.x, ~firstTrailingBit(vec2<u32>(~0u, var_3.b.x)), false, (~(-1i) | -var_3.a) <= func_3());
    return _wgslsmith_add_vec2_i32(vec2<i32>(func_3(), _wgslsmith_mult_i32(-u_input.e, _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.a, arg_0), vec2<i32>(-66773i, -6150i)))) & u_input.c.yy, (u_input.c.xx | vec2<i32>(reverseBits(var_4.a), u_input.e)) << ((~_wgslsmith_sub_vec2_u32(var_4.b, vec2<u32>(10720u, global1.c)) << (var_4.b % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = countOneBits(u_input.b.x);
    global2 = array<Struct_1, 14>();
    return Struct_3(0i, u_input.b.wy, all(vec3<bool>(global1.a.x || (global1.a.x == true), all(select(global1.a.xx, global1.a.zz, vec2<bool>(global0.x, global1.a.x))), true)), !global1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(~vec4<i32>(i32(-1i) * -1i, 1i, -1i, _wgslsmith_dot_vec2_i32(u_input.d, u_input.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(false, global1.b, Struct_4(vec4<bool>(global0.x, false, global1.a.x, global1.a.x), Struct_1(global1.a, global1.b, global1.c), global1.b.zwy, global1.a.x, global1.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-1074f, global1.b.x)), _wgslsmith_f_op_f32(exp2(global1.b.x))))), -func_2(select(u_input.a.x, u_input.d.x, global1.a.x), _wgslsmith_f_op_vec3_f32(trunc(global1.b.zxx)), global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 635f, -1000f, global1.b.x))) ^ u_input.c.xx, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b.x * global1.b.x), -737f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * _wgslsmith_f_op_f32(global1.b.x * -1990f))))));
    var var_1 = global1.b.x;
    let var_2 = !select(vec2<bool>(all(select(global1.a, global1.a, true)), (-1076i ^ u_input.d.x) > (-1i << (u_input.b.x % 32u))), global1.a.zz, vec2<bool>(true, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, global1.c, u_input.b.x)), u_input.b)), vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, 4294967295u, var_0.b.x), u_input.b.wxx), 0u), max(firstLeadingBit(u_input.b.x), ~reverseBits(41382u)), var_0.b.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x, var_0.b.x, var_0.b.x), ~global1.c) << (var_0.b.x % 32u)), vec2<f32>(_wgslsmith_f_op_f32(func_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b)), Struct_4(vec4<bool>(global1.a.x, true, var_0.c, false), global2[_wgslsmith_index_u32(global1.c, 14u)], _wgslsmith_f_op_vec3_f32(-global1.b.ywy), true, _wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1569f, global1.b.x)))));
}

