struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(4294967295u, false, vec4<f32>(-304f, 205f, -177f, -523f), 10682i, 1u);

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(1u, false, vec4<f32>(267f, -134f, 701f, 940f), 1i, 4294967295u), Struct_2(16649u, true, vec4<f32>(561f, 349f, 497f, -399f), 17809i, 45559u), Struct_2(29677u, true, vec4<f32>(2111f, -1242f, -746f, 1740f), -1i, 81177u), Struct_2(4294967295u, false, vec4<f32>(2048f, 297f, 458f, -1000f), 1i, 9611u), Struct_2(50055u, false, vec4<f32>(143f, 556f, -189f, -1037f), 0i, 1u), Struct_2(14756u, true, vec4<f32>(1000f, -2141f, -657f, -130f), -980i, 0u), Struct_2(0u, false, vec4<f32>(1936f, 351f, -145f, 901f), 18197i, 23320u), Struct_2(82642u, true, vec4<f32>(1371f, -128f, 590f, -761f), -1i, 8978u), Struct_2(0u, false, vec4<f32>(292f, -208f, 1677f, -922f), -1813i, 140137u), Struct_2(1u, true, vec4<f32>(-749f, -897f, 250f, -498f), -1i, 4294967295u), Struct_2(0u, true, vec4<f32>(1981f, -644f, -1000f, 1043f), 1i, 1u), Struct_2(89729u, true, vec4<f32>(236f, 1600f, -721f, 108f), i32(-2147483648), 23145u), Struct_2(13542u, true, vec4<f32>(-1092f, 1133f, 352f, 184f), -39650i, 6714u), Struct_2(12053u, false, vec4<f32>(500f, 755f, -855f, 763f), -1i, 69596u));

var<private> global3: Struct_2 = Struct_2(0u, true, vec4<f32>(358f, 386f, 126f, 957f), 0i, 37418u);

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~(~1u), max(_wgslsmith_sub_u32(2051u, reverseBits(u_input.b.x)), ~firstLeadingBit(34281u))), _wgslsmith_f_op_vec2_f32(global0.c.zz * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(global3.c.x * 1047f))))), _wgslsmith_f_op_vec3_f32(-global0.c.yzw), false, !select(false, global1.e, true));
    global3 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c.x, 42026u)), 1u, ~_wgslsmith_sub_u32(u_input.c.x, global1.a)), max(vec4<u32>(max(global0.e, global0.e), 48762u, abs(u_input.b.x), select(global1.a, arg_1.x, false)), ~select(vec4<u32>(1397u, global0.a, arg_1.x, arg_1.x), u_input.b, vec4<bool>(var_0.e, global1.d, true, global4.x)))), 14u)];
    return 26745u;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global4 = vec3<bool>(false, any(vec3<bool>(global1.e, !(!global0.b), global1.d)), all(select(!vec4<bool>(global4.x, true, true, true), !vec4<bool>(global1.d, false, true, global3.b), true | !global4.x)));
    let var_0 = 0u << (func_3(_wgslsmith_f_op_f32(952f + _wgslsmith_f_op_f32(f32(-1f) * -2626f)), _wgslsmith_sub_vec3_u32(u_input.b.zww & u_input.b.xzx, u_input.b.zzw) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.zww, u_input.b.wzz), ~u_input.b.yxw) % vec3<u32>(32u))) % 32u);
    let var_1 = global4.x;
    global0 = global2[_wgslsmith_index_u32(max(~global3.a, 1u), 14u)];
    global0 = Struct_2(countOneBits(12766u), true, global0.c, _wgslsmith_dot_vec4_i32((_wgslsmith_sub_vec4_i32(vec4<i32>(38187i, global0.d, global0.d, -59442i), vec4<i32>(46261i, -2147483647i, global3.d, 12072i)) ^ vec4<i32>(global0.d, global0.d, 2147483647i, global0.d)) ^ vec4<i32>(global0.d, global3.d, global3.d & global3.d, ~(-1i)), -vec4<i32>(firstLeadingBit(global0.d), select(global0.d, 0i, global3.b), -1i, firstTrailingBit(global0.d))), var_0);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + _wgslsmith_f_op_f32(select(global3.c.x, 256f, global0.b)))) - global3.c.x) + global0.c.x);
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_div_u32(u_input.b.x, global1.a), _wgslsmith_f_op_vec2_f32(global3.c.xy - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.c.xx)), vec2<f32>(global3.c.x, global3.c.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, -942f)) + _wgslsmith_f_op_vec2_f32(select(global0.c.zz, vec2<f32>(global3.c.x, global3.c.x), global4.yx))))), vec3<f32>(_wgslsmith_f_op_f32(1367f - 937f), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(select(global1.c, global1.c, vec3<bool>(global0.b, false, true))))))), all(!vec2<bool>(true, all(global4.xz))), any(global4.yy));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    return Struct_2(~u_input.c.x, global1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-860f, 1571f, arg_1, global3.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(224f, global0.c.x, global3.c.x, -1404f))))), global3.d, ~_wgslsmith_clamp_u32(0u, 115318u, ~global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.x + 402f), 612f));
    global0 = func_4(Struct_1(max(global1.a, ~53946u), vec2<f32>(_wgslsmith_f_op_f32(-1050f + _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.x - -584f), _wgslsmith_f_op_f32(select(var_0.c.x, 467f, global0.b))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(step(func_4(Struct_1(4294967295u, global0.c.yx, global0.c.zwx, global0.b, var_0.b), 702f).c.x, _wgslsmith_f_op_f32(trunc(var_0.c.x)))), -731f), global4.x, false), _wgslsmith_div_f32(853f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x))) * 466f)));
    var var_1 = var_0;
    let var_2 = countOneBits(global3.d | 0i);
    var var_3 = Struct_2(var_1.e, global4.x, vec4<f32>(1f, 289f, _wgslsmith_div_f32(global0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c.x + 693f), 331f)), _wgslsmith_f_op_f32(global3.c.x + global1.b.x)), select(global0.d, -85447i, ((var_0.c.x >= -244f) || true) & func_4(func_1(), -449f).b), global3.a);
    var_1 = var_0;
    var var_4 = !vec3<bool>(func_1().d, var_0.b, !any(select(vec3<bool>(true, global4.x, var_0.b), vec3<bool>(true, var_0.b, false), false)));
    let var_5 = ~max(~vec4<u32>(18999u, ~25579u, global1.a, reverseBits(global1.a)), countOneBits(min(vec4<u32>(8732u, global0.a, global0.a, 1u), u_input.b)) ^ firstTrailingBit(countOneBits(u_input.b)));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global3.a, var_2);
}

