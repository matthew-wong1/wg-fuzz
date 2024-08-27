struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

var<private> global2: vec4<i32>;

var<private> global3: f32 = -147f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = any(vec4<bool>(all(select(select(vec4<bool>(true, false, arg_0, true), vec4<bool>(false, arg_0, arg_0, false), false), select(vec4<bool>(false, arg_0, false, false), vec4<bool>(false, arg_0, true, false), vec4<bool>(true, false, arg_0, true)), select(true, false, true))), true, any(!(!vec2<bool>(arg_0, arg_0))), true));
    let var_1 = ~abs(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-4028i, global2.x, arg_1.a), arg_1.a)) & arg_1.a;
    var_0 = 1424f > _wgslsmith_f_op_f32(-arg_1.b);
    var var_2 = arg_1;
    return -1519f;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(func_3(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)) && all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), arg_1)) >= _wgslsmith_f_op_f32(1430f - _wgslsmith_f_op_f32(-1157f + 1439f));
    global0 = 890f;
    global2 = min(-vec4<i32>(2147483647i, 0i, var_0.a, _wgslsmith_mult_i32(var_0.a, global2.x)), arg_2);
    let var_2 = arg_1;
    return select(vec3<bool>(!var_1, false, false), vec3<bool>(!var_1, false, var_1), all(vec4<bool>(var_1, var_1, !var_1 | var_1, false)));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = ~(~(~global2.x));
    var var_1 = countOneBits(select(global2.zwz, ~(-vec3<i32>(-18810i, var_0, var_0) & max(vec3<i32>(global2.x, -1i, var_0), vec3<i32>(-27682i, 2147483647i, global2.x))), func_2(vec2<f32>(_wgslsmith_f_op_f32(579f * -348f), 926f), Struct_1(1i >> (u_input.a.x % 32u), _wgslsmith_f_op_f32(1582f * 987f), arg_0 << (u_input.a.x % 32u), _wgslsmith_f_op_f32(504f - 1000f)), countOneBits(vec4<i32>(var_0, var_0, 2606i, var_0)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1252f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1631f)) + _wgslsmith_f_op_f32(1449f - -154f)))));
    var_1 = select(global2.zwx, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-max(vec3<i32>(-1866i, 19513i, global2.x), vec3<i32>(global2.x, -33490i, 1i)), select(global2.zxw, -vec3<i32>(48220i, -6838i, 0i), vec3<bool>(true, true, true))), global2.zzw), select(true, any(vec2<bool>(true, true)), true));
    var var_3 = var_1.x;
    return global2.x >> (~_wgslsmith_dot_vec3_u32(~u_input.a.xzx, max(u_input.a.wwy, u_input.a.wxx) >> (u_input.a.wyz % vec3<u32>(32u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = min(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~u_input.a.x), u_input.b.x), vec2<u32>(~firstLeadingBit(u_input.b.x), 4294967295u << (~4294967295u % 32u))), firstLeadingBit(44357u));
    var var_0 = u_input.c.x >= 43444u;
    global2 = vec4<i32>(func_1(24590u), global2.x, global2.x, -39963i) >> (~(~(~(u_input.a >> (vec4<u32>(37727u, 32093u, 4294967295u, 19741u) % vec4<u32>(32u))))) % vec4<u32>(32u));
    global2 = vec4<i32>(global2.x & -2695i, i32(-1i) * -2147483647i, firstLeadingBit(~(~0i)), select(global2.x, -11181i, true == func_2(vec2<f32>(371f, 366f), Struct_1(global2.x, 240f, u_input.a.x, -1171f), vec4<i32>(global2.x, -3285i, 1i, 5393i)).x) >> (1u % 32u));
    global2 = vec4<i32>(countOneBits(~1i), select(-14469i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, global2.x), max(global2.x, global2.x), global2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global2.x), global2.wy)), false && any(func_2(vec2<f32>(-950f, -154f), Struct_1(-519i, 228f, 107730u, -1000f), vec4<i32>(global2.x, 0i, global2.x, 0i)))), -global2.x, 66716i);
    global1 = ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a);
    var_0 = true;
    let var_1 = _wgslsmith_add_vec4_u32(reverseBits(abs(vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, 33353u)) >> (u_input.a % vec4<u32>(32u))), vec4<u32>(~_wgslsmith_mod_u32(u_input.b.x, u_input.a.x) ^ _wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), u_input.c.x), u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x, 70134u) & u_input.a.x, ~(~97194u)), _wgslsmith_div_u32(~80520u, 42333u)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(-1298f)), _wgslsmith_f_op_f32(-172f - -2219f), -1978f, _wgslsmith_f_op_f32(max(303f, 1100f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-905f, -266f)), -1350f, -345f, _wgslsmith_f_op_f32(ceil(-839f)))), false)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~var_1.x, 3261u), min(u_input.a.x, var_1.x) & max(u_input.b.x, 36967u)), u_input.c.x));
}

