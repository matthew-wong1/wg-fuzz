struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, Struct_1(vec3<i32>(7616i, 14842i, -47820i), vec3<f32>(1278f, -428f, 682f), i32(-2147483648)), Struct_1(vec3<i32>(-1i, -10899i, -61244i), vec3<f32>(-1275f, -1001f, 1254f), 7725i), vec4<f32>(-758f, 522f, 376f, -1834f));

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(0u, Struct_1(vec3<i32>(-2337i, -12755i, -1i), vec3<f32>(-343f, -344f, -375f), i32(-2147483648)), Struct_1(vec3<i32>(i32(-2147483648), 29140i, 2147483647i), vec3<f32>(2325f, -1408f, -1460f), 29770i), vec4<f32>(-570f, 320f, 1131f, 224f)), Struct_2(0u, Struct_1(vec3<i32>(1i, -1i, 9285i), vec3<f32>(993f, -727f, 1293f), -5366i), Struct_1(vec3<i32>(0i, 32223i, -1i), vec3<f32>(-1373f, -446f, 914f), 0i), vec4<f32>(334f, 123f, -310f, -877f)), Struct_2(0u, Struct_1(vec3<i32>(-1i, -15746i, -1i), vec3<f32>(1708f, -275f, 1166f), -5461i), Struct_1(vec3<i32>(-42251i, -39603i, -64274i), vec3<f32>(195f, 1000f, 1000f), 19347i), vec4<f32>(-1000f, 212f, 504f, -176f)), Struct_2(0u, Struct_1(vec3<i32>(2147483647i, 2147483647i, 31766i), vec3<f32>(193f, 411f, -246f), -1i), Struct_1(vec3<i32>(-1i, -12854i, 2147483647i), vec3<f32>(275f, -990f, 437f), -14109i), vec4<f32>(-777f, 1374f, 1386f, -1000f)), Struct_2(12293u, Struct_1(vec3<i32>(27665i, 0i, i32(-2147483648)), vec3<f32>(975f, 1000f, 1000f), i32(-2147483648)), Struct_1(vec3<i32>(-4915i, -1i, i32(-2147483648)), vec3<f32>(1507f, 348f, 610f), 1i), vec4<f32>(-919f, 779f, -616f, -396f)), Struct_2(41306u, Struct_1(vec3<i32>(16978i, -4014i, 10855i), vec3<f32>(-295f, 692f, -534f), -28792i), Struct_1(vec3<i32>(-1i, -22087i, -1i), vec3<f32>(-484f, 1568f, -916f), 1i), vec4<f32>(862f, -521f, 721f, -1557f)), Struct_2(4294967295u, Struct_1(vec3<i32>(-13964i, 1i, -30250i), vec3<f32>(-1188f, 766f, 1036f), 2147483647i), Struct_1(vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<f32>(-1184f, -1000f, 238f), 15699i), vec4<f32>(639f, 186f, 1000f, 567f)), Struct_2(1u, Struct_1(vec3<i32>(1i, -253i, 25664i), vec3<f32>(1000f, 1000f, -1000f), 36746i), Struct_1(vec3<i32>(-30742i, i32(-2147483648), 25902i), vec3<f32>(496f, 921f, -457f), -7654i), vec4<f32>(831f, -697f, -721f, 858f)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(6751u, 8u)];
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, arg_2.a.x), 39749i);
    var var_2 = arg_0;
    var var_3 = ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(44554i, 2147483647i & (u_input.d & u_input.a.x), ~(-2147483647i) | arg_2.a.x), -1i);
    var var_4 = var_0.b.b.x;
    return _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1452f)), arg_2.b.x)))));
}

fn func_2() -> vec2<f32> {
    global1 = array<Struct_2, 8>();
    let var_0 = _wgslsmith_f_op_f32(func_3(Struct_3(!vec4<bool>(true, global0.c.b.x < global0.d.x, false, any(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.d.zz, global0.b.b.zz)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.d.x, global0.c.b.x))))) * global0.d.zx), Struct_1(-abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), u_input.a)), vec3<f32>(global0.c.b.x, global0.b.b.x, global0.d.x), global0.b.a.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b.x, global0.b.b.x, -1723f, -762f) * global0.d))))))));
    var var_1 = _wgslsmith_mult_u32(u_input.b, global0.a);
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~abs(global0.a), 0u, ~9270u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(84227u, 0u), 19679u)), abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(27682u, u_input.c.x, 1u, 4294967295u), vec4<u32>(19117u, global0.a, u_input.b, global0.a)), reverseBits(vec4<u32>(global0.a, 0u, global0.a, global0.a)), ~vec4<u32>(global0.a, u_input.c.x, u_input.b, 44796u)))), firstTrailingBit(u_input.b), firstLeadingBit(51380u) >> (~u_input.c.x % 32u));
    var var_2 = global0.c;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.d.x * -876f), _wgslsmith_f_op_f32(round(355f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-277f, 162f))))), vec2<f32>(-554f, 719f));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c.b.xy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, -1419f)))) * _wgslsmith_f_op_vec2_f32(func_2()));
    global1 = array<Struct_2, 8>();
    let var_1 = -708f;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(~firstLeadingBit(42601u), global0.a)), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_add_u32(28221u, 18790u), global0.a, ~(~u_input.c.x)))), 8u)];
    let var_2 = vec3<bool>(false, var_1 <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1344f)) + 153f), var_0.x), any(vec2<bool>(all(vec4<bool>(true, true, true, true)), true)));
    return Struct_2(~(44358u & max(global0.a, 35728u)), global0.b, global0.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.d, vec4<f32>(var_1, var_0.x, global0.b.b.x, 1000f))) - _wgslsmith_f_op_vec4_f32(global0.d + vec4<f32>(-1140f, -686f, 147f, -849f)))), vec4<f32>(-1000f, 179f, 469f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 767f >= global0.c.b.x;
    global1 = array<Struct_2, 8>();
    let var_1 = func_1();
    global0 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.c.x, 0u), ~(~var_1.a)), ~_wgslsmith_div_u32(firstTrailingBit(8685u), var_1.a ^ 57531u)), global0.c, func_1().c, _wgslsmith_f_op_vec4_f32(global0.d - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1311f, var_1.c.b.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(525f, global0.d.x, false)), _wgslsmith_f_op_f32(1000f - var_1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b.x)), global0.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1932f, var_1.b.b.x, global0.d.x, var_1.b.b.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-404f, global0.c.b.x, global0.c.b.x, global0.c.b.x), global0.d)), true)))), var_1.d.xz, 1058f, countOneBits(vec3<u32>(~var_1.a, var_1.a, _wgslsmith_mod_u32(u_input.b, var_1.a))) << (_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, 25102u), select(vec3<u32>(u_input.b, u_input.b, 67718u), vec3<u32>(global0.a, global0.a, 76239u), vec3<bool>(false, true, false))), min(vec3<u32>(4294967295u, 1u, 1917u) & u_input.c, vec3<u32>(32455u, 8054u, global0.a) << (vec3<u32>(4294967295u, var_1.a, 43940u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
}

