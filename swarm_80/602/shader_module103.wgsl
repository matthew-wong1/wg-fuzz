struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec4<i32>(1i, 1i, -15308i, -23807i)), Struct_2(vec4<i32>(-19740i, -84417i, 1i, i32(-2147483648))), Struct_2(vec4<i32>(1i, 1i, -31335i, -23994i)), Struct_2(vec4<i32>(48025i, 2147483647i, 54153i, -5742i)), Struct_2(vec4<i32>(-1i, 2147483647i, -21859i, 57967i)), Struct_2(vec4<i32>(i32(-2147483648), 4721i, -6105i, -45808i)), Struct_2(vec4<i32>(2147483647i, 21956i, 19541i, 14671i)), Struct_2(vec4<i32>(41373i, 0i, 14795i, 1i)), Struct_2(vec4<i32>(-65229i, -18977i, 0i, 16636i)), Struct_2(vec4<i32>(2147483647i, 21840i, 1139i, 2147483647i)), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 45246i, 0i)), Struct_2(vec4<i32>(54763i, -8979i, 24507i, 2147483647i)), Struct_2(vec4<i32>(i32(-2147483648), -59397i, 1495i, 29538i)), Struct_2(vec4<i32>(42150i, 1347i, 0i, i32(-2147483648))), Struct_2(vec4<i32>(1i, 1i, 30837i, 36431i)), Struct_2(vec4<i32>(-35281i, 1i, -834i, -17237i)), Struct_2(vec4<i32>(-1448i, 1852i, 0i, 52272i)));

var<private> global2: vec2<f32> = vec2<f32>(-394f, 137f);

var<private> global3: array<Struct_2, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: vec4<i32>) -> u32 {
    let var_0 = arg_1.a.a;
    let var_1 = u_input.d.ywx;
    let var_2 = !select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(~arg_1.a.b.e == _wgslsmith_div_i32(0i, global0.a.x), true, any(!vec4<bool>(false, true, arg_1.a.a.b, true))), arg_1.a.a.b);
    var var_3 = max(~(~var_0.e), _wgslsmith_mult_i32(-global0.a.x, -1i));
    let var_4 = select(select(vec2<bool>(_wgslsmith_div_f32(global2.x, -2133f) >= _wgslsmith_f_op_f32(f32(-1f) * -917f), var_0.b), !select(select(var_2.zy, var_2.xy, vec2<bool>(arg_1.a.b.b, arg_0.a.b.b)), vec2<bool>(true, true), vec2<bool>(false, false)), !select(false, true, any(var_2.zx))), !vec2<bool>(!(global2.x == 696f), true), var_2.zy);
    return arg_1.a.a.d.x;
}

fn func_2(arg_0: i32) -> f32 {
    global0 = Struct_2(vec4<i32>(~firstLeadingBit(arg_0), arg_0, -17402i, ~arg_0 << (~47047u % 32u)) ^ -global0.a);
    let var_0 = Struct_3(Struct_1(global0.a, !(_wgslsmith_f_op_f32(floor(global2.x)) != _wgslsmith_f_op_f32(ceil(global2.x))), u_input.c, u_input.b, -(~(-73974i))), Struct_1(abs(reverseBits(vec4<i32>(u_input.e.x, arg_0, u_input.e.x, 40654i))) ^ (vec4<i32>(-1i) * -vec4<i32>(2840i, -14602i, -2147483647i, -28917i)), (-627f <= _wgslsmith_f_op_f32(global2.x * global2.x)) == (4294967295u <= func_3(Struct_4(Struct_3(Struct_1(global0.a, true, arg_0, vec2<u32>(u_input.a.x, u_input.a.x), arg_0), Struct_1(global0.a, false, 2147483647i, vec2<u32>(111326u, u_input.a.x), u_input.e.x))), Struct_4(Struct_3(Struct_1(global0.a, true, arg_0, vec2<u32>(0u, 1u), 13515i), Struct_1(vec4<i32>(global0.a.x, 2147483647i, -51589i, -43608i), false, arg_0, u_input.d.wy, global0.a.x))), -1211f, global0.a)), -(~arg_0), ~u_input.a.zx, 1i));
    let var_1 = vec4<bool>(!var_0.a.b, any(vec2<bool>(true, all(!vec3<bool>(var_0.b.b, true, var_0.b.b)))), all(!vec4<bool>(true, var_0.b.e == 14986i, !var_0.b.b, any(vec2<bool>(true, true)))), var_0.a.b);
    let var_2 = 0u;
    var var_3 = Struct_2(select(firstTrailingBit(global0.a), _wgslsmith_div_vec4_i32(vec4<i32>(1i, ~global0.a.x, ~var_0.b.e, 0i), select(vec4<i32>(arg_0, global0.a.x, var_0.a.c, 21744i), vec4<i32>(global0.a.x, 30865i, global0.a.x, var_0.a.e), select(var_1, var_1, var_1))), true));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global2.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3) -> Struct_5 {
    var var_0 = !(!select(select(vec4<bool>(false, true, false, arg_2.b.b), vec4<bool>(arg_2.b.b, true, arg_2.b.b, false), all(vec3<bool>(arg_2.b.b, arg_2.b.b, true))), vec4<bool>(arg_2.b.b, any(vec2<bool>(false, arg_2.a.b)), arg_2.b.b, any(vec4<bool>(arg_2.b.b, false, true, true))), any(vec4<bool>(true, false, false, true))));
    let var_1 = 0u;
    let var_2 = global3[_wgslsmith_index_u32(37312u >> (firstTrailingBit(arg_2.a.d.x) % 32u), 27u)];
    let var_3 = Struct_4(arg_2);
    global1 = array<Struct_2, 17>();
    return Struct_5(select(-22265i, firstLeadingBit(-global0.a.x), all(var_0.xw)), 975f);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_5 {
    return func_4(vec3<f32>(global2.x, _wgslsmith_f_op_f32(func_2(-9779i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(628f * global2.x) + 428f)), global0.a.x, Struct_3(arg_2, Struct_1(vec4<i32>(_wgslsmith_div_i32(global0.a.x, arg_2.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-12479i, u_input.e.x), vec2<i32>(2147483647i, arg_2.c)), _wgslsmith_sub_i32(-2147483647i, -1i), _wgslsmith_div_i32(2147483647i, 2593i)), false, u_input.c, abs(vec2<u32>(arg_1, 53005u) & arg_2.d), ~(-35328i))));
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5) -> Struct_2 {
    var var_0 = vec3<bool>(1u >= u_input.b.x, any(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), true)), false);
    global1 = array<Struct_2, 17>();
    let var_1 = !vec3<bool>(any(var_0.xy), all(var_0.zx), var_0.x);
    let var_2 = vec3<bool>(any(var_1.xy), select(any(vec2<bool>(any(vec3<bool>(var_0.x, var_1.x, var_1.x)), !var_1.x)), var_1.x, true), true);
    var var_3 = !var_2.x;
    return global1[_wgslsmith_index_u32(~u_input.b.x, 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 27>();
    global0 = func_5(func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, global2.x, 1000f, 1280f))))), u_input.b.x, Struct_1(vec4<i32>(-45960i, 1i, global0.a.x, -9782i), !all(vec2<bool>(true, false)), 15933i, vec2<u32>(4294967295u, u_input.b.x), -(global0.a.x << (u_input.a.x % 32u)))), min(~_wgslsmith_div_i32(1i, _wgslsmith_sub_i32(u_input.e.x, 2147483647i)), global0.a.x << (_wgslsmith_div_u32(~u_input.b.x, 4294967295u) % 32u)), Struct_5(u_input.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-128f * global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.d.x | 0u, u_input.b.x));
}

