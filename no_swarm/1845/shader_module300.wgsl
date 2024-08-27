struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<bool>(true, true, true, true), 7295u), Struct_1(vec4<bool>(false, true, false, false), 4294967295u), Struct_1(vec4<bool>(true, false, false, false), 0u), Struct_1(vec4<bool>(true, true, true, false), 1u), Struct_1(vec4<bool>(false, true, true, true), 3028u), Struct_1(vec4<bool>(false, false, true, false), 4294967295u), Struct_1(vec4<bool>(false, false, false, false), 34751u), Struct_1(vec4<bool>(true, true, false, true), 11956u), Struct_1(vec4<bool>(false, false, true, false), 17843u), Struct_1(vec4<bool>(true, true, false, true), 30471u), Struct_1(vec4<bool>(false, true, false, true), 1u), Struct_1(vec4<bool>(true, false, true, false), 0u), Struct_1(vec4<bool>(false, true, false, true), 49160u), Struct_1(vec4<bool>(false, false, false, true), 4294967295u), Struct_1(vec4<bool>(false, false, false, false), 17520u), Struct_1(vec4<bool>(true, false, true, true), 0u), Struct_1(vec4<bool>(false, true, true, true), 31787u), Struct_1(vec4<bool>(false, false, false, false), 100690u), Struct_1(vec4<bool>(false, false, false, true), 1u), Struct_1(vec4<bool>(true, true, false, false), 32985u), Struct_1(vec4<bool>(true, false, false, false), 1u), Struct_1(vec4<bool>(true, false, false, true), 1u));

var<private> global1: vec3<u32> = vec3<u32>(2909u, 92980u, 26303u);

var<private> global2: Struct_2;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -871f);
    var var_1 = ~(reverseBits(vec2<i32>(-global2.d.x, -1i | global3.d.x)) & abs(global3.d.wy));
    let var_2 = ~max(26116i, 1i);
    var var_3 = global3.d.zxy;
    let var_4 = vec3<bool>(!(-662f == _wgslsmith_f_op_f32(-global3.b)), any(vec4<bool>(true, !global3.c.x & !global3.c.x, true, false)), all(global2.c));
    return 1432f;
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = u_input.b;
    var var_1 = vec4<bool>(true, ((0u << (~u_input.e.x % 32u)) << (~(~30881u) % 32u)) == max(4294967295u, global1.x), true, select(global2.d.x, ~(~global2.d.x), global2.c.x) <= global2.d.x);
    var var_2 = -global2.d.x;
    var var_3 = global2.d.xz;
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, -1255f, global3.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.b))), select(!(!vec2<bool>(false, global2.c.x)), vec2<bool>(any(vec3<bool>(true, false, global2.c.x)), !global2.c.x), all(!vec3<bool>(false, global3.c.x, false))), vec4<i32>(1i | firstTrailingBit(min(global3.d.x, global3.d.x)), reverseBits(-(~global3.d.x)), countOneBits(-2147483647i), -abs(firstTrailingBit(u_input.a))));
    return 6629u;
}

fn func_2() -> bool {
    var var_0 = Struct_3(~u_input.d, Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a)))), 1000f, select(global2.c, select(global2.c, select(vec2<bool>(global3.c.x, false), global2.c, true), vec2<bool>(global2.c.x, false)), vec2<bool>(true, true)), ~global2.d & select(global3.d, _wgslsmith_add_vec4_i32(vec4<i32>(global3.d.x, u_input.a, global2.d.x, 2147483647i), global2.d), global2.c.x)), global2.c.x, Struct_1(vec4<bool>(any(vec3<bool>(global2.c.x, false, true)) || true, !(-1094f > global2.b), global3.c.x, false), abs(0u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.b, global2.b, global2.b) + vec4<f32>(global3.b, global2.a.x, 945f, global3.a.x))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(796f, global2.a.x, -1021f, global2.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -458f, -1000f, -915f), vec4<f32>(-472f, global3.b, 1482f, -1797f))))))));
    global1 = vec3<u32>(reverseBits(countOneBits(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 21681u, 20781u, 22277u), vec4<u32>(global1.x, global1.x, global1.x, 22540u))))), ~u_input.e.x | ~4294967295u, ~var_0.a.x);
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(global2.a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 211f, global3.a.x))))))), 1256f, !var_0.b.c, global2.d);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global2.a.x)))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.b.a - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.e.wzy * var_0.e.xxx)))), global2.a, !(!(!global3.c.x)))), _wgslsmith_f_op_f32(func_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, global1.x, global1.x, 4294967295u), vec4<u32>(var_0.a.x, u_input.e.x, 4294967295u, global1.x)), ~vec4<u32>(0u, 93555u, 1u, u_input.e.x)))), var_0.b.c, vec4<i32>(-55425i, global2.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a) & ~vec2<i32>(global2.d.x, global3.d.x), vec2<i32>(1i, -global3.d.x)), 1i));
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2.d.wx;
    var var_1 = _wgslsmith_f_op_f32(func_1(u_input.d.x));
    let var_2 = global1.x;
    var var_3 = Struct_1(vec4<bool>(global3.c.x | any(select(vec4<bool>(global2.c.x, global2.c.x, false, global2.c.x), vec4<bool>(true, global2.c.x, true, global2.c.x), vec4<bool>(false, true, false, global3.c.x))), true, func_2(), true), _wgslsmith_div_u32(~(1u >> (u_input.b % 32u)), global1.x >> (min(u_input.d.x, 53752u) % 32u)) >> (_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global1.x, 6120u), _wgslsmith_div_u32(u_input.e.x, global1.x)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, 0u, 1u), vec4<u32>(u_input.e.x, u_input.c, 4294967295u, global1.x)))) % 32u));
    var var_4 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-370f + 952f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f * global2.b)))), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-874f))), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(~var_0.x, -2147483647i)), max(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 25005i), firstLeadingBit(global2.d.yz)), vec2<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), -global3.d.x))));
}

