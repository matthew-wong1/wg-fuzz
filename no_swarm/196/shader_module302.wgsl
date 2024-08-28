struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: vec4<f32> = vec4<f32>(1093f, 784f, -1697f, -259f);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<u32>(40470u, 4294967295u, 41404u), vec2<i32>(i32(-2147483648), -10440i), vec3<u32>(68601u, 2366u, 1u)), 0u, 1i, 1u), vec3<bool>(false, true, true));

var<private> global2: vec2<f32> = vec2<f32>(-1106f, -281f);

var<private> global3: array<Struct_1, 2>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_vec3_u32(global1.a.a.a, firstTrailingBit(~global1.a.a.a)), -arg_0, vec3<u32>(4294967295u, global1.a.a.c.x, 3027u | ~arg_1)), arg_1, -(~_wgslsmith_sub_i32(26666i, _wgslsmith_div_i32(global1.a.a.b.x, u_input.a.x))), 21456u);
    global3 = array<Struct_1, 2>();
    let var_1 = _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(arg_1, 4294967295u, 4294967295u, 1u) & (vec4<u32>(4294967295u, global1.a.b, 1u, var_0.d) ^ vec4<u32>(var_0.d, 33310u, arg_1, global1.a.a.c.x)))), ~(~vec4<u32>(var_0.b, 4701u, arg_1, 4294967295u) >> (~vec4<u32>(0u, global1.a.a.c.x, global1.a.b, var_0.a.c.x) % vec4<u32>(32u))) >> (select(vec4<u32>(var_0.a.a.x, 4294967295u, 0u, arg_1) >> (~vec4<u32>(arg_1, 1u, arg_1, var_0.a.c.x) % vec4<u32>(32u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, var_0.d, 4294967295u, arg_1), vec4<u32>(global1.a.d, 4294967295u, 27251u, 27080u))), vec4<bool>(any(vec4<bool>(true, true, true, true)), !global1.b.x, global1.b.x, global2.x < -967f)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(~countOneBits(43667u), global1.a.b), _wgslsmith_mult_u32(abs(37308u), _wgslsmith_dot_vec2_u32(~var_0.a.a.xy, var_0.a.c.xx >> (global1.a.a.c.xx % vec2<u32>(32u)))), reverseBits(6470u), 4294967295u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 411f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(101f, -560f, global0.x) + vec3<f32>(global0.x, global0.x, global0.x)))))));
    var var_3 = select(!vec2<bool>(all(select(vec2<bool>(false, false), global1.b.yz, global1.b.x)), -136f == _wgslsmith_div_f32(414f, var_2.x)), global1.b.xz, select(vec2<bool>(any(vec3<bool>(global1.b.x, false, global1.b.x)), true), !select(select(vec2<bool>(false, true), global1.b.zx, global1.b.xz), select(vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(true, false), global1.b.x), global1.b.x), global1.b.yx));
    return 30687u;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = func_3(global1.a.a.b, arg_1.x) & 4294967295u;
    global1 = Struct_3(Struct_2(global3[_wgslsmith_index_u32(~1u, 2u)], 1u, global1.a.a.b.x, 1u), !global1.b);
    var var_1 = global1.b.zx;
    let var_2 = global1.a.a;
    var var_3 = select(!global1.b, select(!vec3<bool>(true, !global1.b.x, arg_2.x >= -2147483647i), select(vec3<bool>(any(vec4<bool>(var_1.x, global1.b.x, var_1.x, false)), any(vec3<bool>(true, false, true)), var_1.x), !(!global1.b), vec3<bool>(var_1.x, false, all(vec2<bool>(var_1.x, true)))), global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-global0.x))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -793f));
    return Struct_3(global1.a, select(select(global1.b, vec3<bool>(298f > arg_0, all(global1.b), any(vec3<bool>(false, global1.b.x, var_1.x))), var_3.x), !global1.b, select(select(!global1.b, select(global1.b, global1.b, true), vec3<bool>(var_3.x, true, false)), select(global1.b, vec3<bool>(true, var_1.x, false), vec3<bool>(global1.b.x, var_3.x, var_1.x)), vec3<bool>(false, false, var_3.x & var_3.x))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = func_2(-1474f, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.a.a.c.x, arg_0), 13156u), _wgslsmith_add_u32(~(~1u), global1.a.a.c.x), _wgslsmith_mult_u32(16972u, 9233u), 1516u), reverseBits(~(~vec3<i32>(global1.a.a.b.x, 1i, 2147483647i)) << (global1.a.a.c % vec3<u32>(32u))));
    global1 = var_0;
    var var_1 = _wgslsmith_f_op_f32(ceil(640f));
    var_1 = _wgslsmith_f_op_f32(abs(global2.x));
    let var_2 = Struct_4(global3[_wgslsmith_index_u32(firstTrailingBit(~countOneBits(_wgslsmith_sub_u32(arg_0, var_0.a.b))), 2u)], _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(34902i), var_0.a.a.b.x, -33111i, 1i), -(~vec4<i32>(var_0.a.a.b.x, global1.a.a.b.x, u_input.a.x, -9062i))) > global1.a.c);
    return Struct_4(var_2.a, (~1u | (_wgslsmith_clamp_u32(18780u, 47465u, arg_0) ^ global1.a.d)) != ~max(~1u, min(0u, 22547u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 26383u;
    let var_1 = select(global1.b, global1.b, global1.b.x);
    var_0 = global1.a.d;
    let var_2 = func_1(countOneBits(_wgslsmith_add_u32(global1.a.b, 69901u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global0.x, 880f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1000f, 960f, -1132f), vec4<f32>(global2.x, 804f, global2.x, -723f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1019f, -1267f, 386f))))))));
    var_0 = ~45749u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global1.a.d, 0u), global1.a.a.c.x >> (4294967295u % 32u), var_2.a.a.x << (2694u % 32u)), _wgslsmith_sub_vec3_u32(global1.a.a.a, global1.a.a.a << (vec3<u32>(29208u, 8663u, global1.a.b) % vec3<u32>(32u)))));
}

