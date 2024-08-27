struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 17>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(-13121i, Struct_1(vec2<bool>(false, true), 9053u), -103f, Struct_1(vec2<bool>(true, true), 32795u), -408f), Struct_2(-1i, Struct_1(vec2<bool>(false, true), 81198u), 682f, Struct_1(vec2<bool>(false, true), 0u), 2560f), Struct_2(1i, Struct_1(vec2<bool>(true, false), 68093u), -335f, Struct_1(vec2<bool>(false, true), 1u), -1731f), Struct_2(947i, Struct_1(vec2<bool>(true, false), 0u), 623f, Struct_1(vec2<bool>(false, true), 4294967295u), -2204f), Struct_2(i32(-2147483648), Struct_1(vec2<bool>(false, false), 1u), 627f, Struct_1(vec2<bool>(true, true), 51962u), -110f), Struct_2(35090i, Struct_1(vec2<bool>(true, false), 32411u), -853f, Struct_1(vec2<bool>(false, true), 0u), -330f), Struct_2(i32(-2147483648), Struct_1(vec2<bool>(true, false), 1u), 737f, Struct_1(vec2<bool>(true, true), 4294967295u), -1496f), Struct_2(-13287i, Struct_1(vec2<bool>(false, false), 1u), 450f, Struct_1(vec2<bool>(true, true), 49596u), 118f), Struct_2(-16151i, Struct_1(vec2<bool>(true, true), 1u), 1280f, Struct_1(vec2<bool>(true, false), 89958u), -1000f), Struct_2(1i, Struct_1(vec2<bool>(true, false), 4294967295u), -820f, Struct_1(vec2<bool>(true, false), 4294967295u), -276f), Struct_2(1i, Struct_1(vec2<bool>(true, true), 0u), 192f, Struct_1(vec2<bool>(true, true), 4294967295u), -1666f), Struct_2(13489i, Struct_1(vec2<bool>(false, false), 0u), 181f, Struct_1(vec2<bool>(true, true), 1u), 1000f), Struct_2(0i, Struct_1(vec2<bool>(false, false), 25025u), 242f, Struct_1(vec2<bool>(true, false), 1u), 1374f), Struct_2(2147483647i, Struct_1(vec2<bool>(true, true), 90948u), 727f, Struct_1(vec2<bool>(true, false), 13900u), -1183f), Struct_2(-18338i, Struct_1(vec2<bool>(false, true), 47096u), 1515f, Struct_1(vec2<bool>(false, false), 0u), -1002f), Struct_2(-38466i, Struct_1(vec2<bool>(true, false), 1u), 105f, Struct_1(vec2<bool>(false, true), 0u), 1972f), Struct_2(17972i, Struct_1(vec2<bool>(true, false), 4294967295u), 360f, Struct_1(vec2<bool>(false, false), 3281u), 1268f), Struct_2(1i, Struct_1(vec2<bool>(false, true), 1u), -1301f, Struct_1(vec2<bool>(false, false), 81588u), -189f), Struct_2(2147483647i, Struct_1(vec2<bool>(true, false), 0u), -289f, Struct_1(vec2<bool>(true, false), 1u), -522f), Struct_2(2147483647i, Struct_1(vec2<bool>(false, true), 98947u), -1367f, Struct_1(vec2<bool>(false, true), 15139u), 229f), Struct_2(32256i, Struct_1(vec2<bool>(false, false), 4294967295u), -1366f, Struct_1(vec2<bool>(false, true), 4294967295u), -1085f), Struct_2(-1i, Struct_1(vec2<bool>(false, true), 0u), -527f, Struct_1(vec2<bool>(true, false), 1u), -436f), Struct_2(8495i, Struct_1(vec2<bool>(true, false), 74959u), 2629f, Struct_1(vec2<bool>(false, true), 30893u), 235f), Struct_2(2147483647i, Struct_1(vec2<bool>(true, false), 0u), 1515f, Struct_1(vec2<bool>(false, false), 1u), 1000f));

var<private> global4: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> bool {
    let var_0 = Struct_1(vec2<bool>(global4.d.a.x, true), _wgslsmith_div_u32(~global4.d.b, 4294967295u));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1155f)))))));
    let var_1 = global3[_wgslsmith_index_u32(~0u, 24u)];
    var var_2 = Struct_3(global4.c.a, var_1.c, Struct_2(48521i, var_1.d, global4.e, global4.c.d, _wgslsmith_f_op_f32(f32(-1f) * -619f)), var_1.d, global1[_wgslsmith_index_u32(select(1u, 64154u >> (var_0.b % 32u), true), 17u)]);
    return global4.c.b.a.x;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> bool {
    global2 = vec2<bool>(func_2(), !(!arg_2.a.x));
    let var_0 = vec3<f32>(-838f, _wgslsmith_f_op_f32(-global4.e), global1[_wgslsmith_index_u32(~(~u_input.a.x), 17u)]);
    let var_1 = Struct_3(-1i, _wgslsmith_f_op_f32(-702f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-447f * -118f), var_0.x, true)) * _wgslsmith_f_op_f32(sign(var_0.x)))), global4.c, Struct_1(arg_2.a, ~38331u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-856f, arg_1, global2.x)) * arg_1))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)))));
    var var_2 = vec4<bool>(all(vec4<bool>(356f != global1[_wgslsmith_index_u32(u_input.e.x << (4294967295u % 32u), 17u)], true, all(!vec2<bool>(global4.d.a.x, global2.x)), select(true, all(vec3<bool>(var_1.c.b.a.x, arg_2.a.x, false)), !global2.x))), (_wgslsmith_div_u32(max(1u, 3986u), 2777u) << (u_input.e.x % 32u)) < _wgslsmith_sub_u32(global4.d.b, _wgslsmith_clamp_u32(47829u << (var_1.c.d.b % 32u), 1u, ~arg_2.b)), true != (_wgslsmith_sub_i32(firstTrailingBit(global4.a), var_1.c.a) >= 15641i), true);
    global0 = -1000f;
    return arg_2.a.x;
}

fn func_3() -> vec4<i32> {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(abs(-u_input.b.x), ~2147483647i, u_input.b.x);
    var var_1 = Struct_3(max(min(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global4.c.a), u_input.b), i32(-1i) * -32203i), -2147483647i), _wgslsmith_dot_vec4_i32(u_input.c, firstTrailingBit(vec4<i32>(u_input.b.x, var_0.x, global4.c.a, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -127f), global4.c.e) * _wgslsmith_f_op_f32(-434f + 716f))), global4.c, Struct_1(select(vec2<bool>(24120u == u_input.e.x, global2.x), global4.d.a, false), 66818u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global4.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.e - 820f)), !(23700i != u_input.c.x)))));
    var var_2 = global4.c;
    var_1 = Struct_3(u_input.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1998f * var_2.e), _wgslsmith_f_op_f32(f32(-1f) * -316f), all(var_2.b.a))), -747f) * -570f), Struct_2(~6491i, var_1.c.d, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x << ((var_2.b.b << (59314u % 32u)) % 32u), 17u)]), Struct_1(vec2<bool>(!global4.d.a.x, any(vec2<bool>(global4.c.b.a.x, global2.x))), global4.c.b.b), var_2.c), var_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-3046f + 794f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(292f, -213f))));
    let var_3 = firstTrailingBit(_wgslsmith_sub_vec3_i32(~select(vec3<i32>(var_1.a, var_0.x, 0i), u_input.c.wxy, select(vec3<bool>(true, var_2.d.a.x, false), vec3<bool>(true, false, var_2.d.a.x), vec3<bool>(global2.x, global4.c.b.a.x, true))), -abs(reverseBits(u_input.c.yxz))));
    return firstLeadingBit(~reverseBits(vec4<i32>(-7216i, 0i, 2147483647i, var_0.x))) << (u_input.e % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(any(vec3<bool>(false, true, global2.x)), false);
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1070f * global1[_wgslsmith_index_u32(u_input.e.x, 17u)]), -998f), vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(66332u, 17u)])), -1000f)))));
    var var_1 = global4.c;
    global4 = Struct_3(global4.a, -139f, Struct_2(min(2147483647i, firstLeadingBit(var_1.a)), Struct_1(vec2<bool>(true, func_1(global2.x, global1[_wgslsmith_index_u32(48965u, 17u)], Struct_1(vec2<bool>(false, false), 56222u))), ~firstLeadingBit(0u)), var_1.c, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(3265u >> (u_input.e.x % 32u), 17u)] - var_1.e))), Struct_1(var_1.d.a, ~(~(global4.d.b | u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(906f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(759f, var_1.c))))))));
    let var_2 = ~_wgslsmith_div_vec4_i32(func_3(), u_input.c);
    global1 = array<f32, 17>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.e, u_input.e, u_input.e), vec4<u32>(4294967295u, 0u, u_input.e.x, global4.d.b)), 17u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-210f)) + _wgslsmith_f_op_f32(-804f - global1[_wgslsmith_index_u32(4294967295u, 17u)])), 1092f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(func_3().x), global4.b, u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 17u)], 196f, -233f) + vec3<f32>(486f, var_3.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-521f, 645f, global4.b))))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1178f), _wgslsmith_div_f32(-1655f, var_0.x), _wgslsmith_f_op_f32(floor(1000f)))))), u_input.d);
}

