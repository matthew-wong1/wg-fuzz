struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i);

var<private> global1: bool = true;

var<private> global2: array<u32, 32>;

var<private> global3: u32 = 1645u;

var<private> global4: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(31034u, 4294967295u), vec2<u32>(4294967295u, 11368u), vec2<u32>(4294967295u, 10571u), vec2<u32>(1u, 21513u), vec2<u32>(4294967295u, 5318u), vec2<u32>(69212u, 1u), vec2<u32>(20231u, 4294967295u), vec2<u32>(14834u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(2945u, 4294967295u), vec2<u32>(1u, 35957u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 25246u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(38813u, 66563u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(26922u, 32542u), vec2<u32>(4294967295u, 36187u), vec2<u32>(1u, 38676u), vec2<u32>(0u, 24558u), vec2<u32>(0u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    global4 = array<vec2<u32>, 22>();
    global3 = reverseBits(global2[_wgslsmith_index_u32(u_input.d.x << (~4294967295u % 32u), 32u)]);
    global4 = array<vec2<u32>, 22>();
    let var_1 = Struct_1(-firstTrailingBit(-11350i));
    return -30717i ^ -arg_0.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_1(-func_3(Struct_1(_wgslsmith_dot_vec3_i32(u_input.b.xzy, u_input.b.wxz))));
    let var_1 = vec4<u32>(global2[_wgslsmith_index_u32(min(arg_3.c.x, ~1u) >> (4294967295u % 32u), 32u)], 1u, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(arg_3.b.x >> (arg_3.c.x % 32u)), ~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.d.x, 32u)], global2[_wgslsmith_index_u32(arg_3.c.x, 32u)]), 32u)]), 32u)] >> (115619u % 32u), 0u);
    global4 = array<vec2<u32>, 22>();
    var var_2 = u_input.a.yzw;
    var_2 = vec3<u32>(~var_1.x, 1u, arg_3.c.x);
    return firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.zy, _wgslsmith_div_vec2_u32(select(global4[_wgslsmith_index_u32(var_1.x, 22u)], vec2<u32>(u_input.a.x, var_2.x), true), ~vec2<u32>(var_1.x, 606u))), var_1.xy));
}

fn func_1() -> f32 {
    global3 = global2[_wgslsmith_index_u32(77986u | global2[_wgslsmith_index_u32(0u, 32u)], 32u)] << (countOneBits(_wgslsmith_add_u32(func_2(u_input.b.xx, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec4<f32>(222f, -246f, -444f, 1082f), Struct_2(vec4<f32>(1414f, -363f, 166f, -1415f), u_input.d.xwy, vec3<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(false, true, true), vec2<f32>(-311f, -229f))), min(~u_input.d.x, 19406u))) % 32u);
    global1 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(13040u == abs(global2[_wgslsmith_index_u32(u_input.d.x, 32u)]), true, true, false), vec4<bool>(select(all(vec3<bool>(false, false, true)), true, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)] < 35150u), true, true, !all(vec4<bool>(false, false, false, false)))));
    global2 = array<u32, 32>();
    let var_0 = abs(~firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], global2[_wgslsmith_index_u32(1671u, 32u)], 5115u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, global2[_wgslsmith_index_u32(53702u, 32u)], 1u), u_input.d.yxw))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f - -1051f)), 1010f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(406f, 1389f))), -192f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(276f, 1571f, 879f, 1361f) * vec4<f32>(2073f, -108f, -362f, 1285f))), vec4<f32>(_wgslsmith_div_f32(-325f, -1141f), 1f, 2398f, _wgslsmith_f_op_f32(924f * -1000f))))), vec3<u32>(28690u, u_input.a.x, 25299u), _wgslsmith_sub_vec3_u32(var_0, firstTrailingBit(vec3<u32>(~1u, u_input.a.x, ~u_input.a.x))), select(!vec3<bool>(any(vec4<bool>(false, false, false, false)), true, select(true, false, false)), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), vec3<bool>(true, true, true)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)) && any(vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)) * 1164f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-568f, _wgslsmith_f_op_f32(f32(-1f) * -353f))), _wgslsmith_f_op_f32(step(-694f, _wgslsmith_f_op_f32(1650f + -157f))))));
    return 245f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, false, false, true);
    global3 = ~(59229u ^ ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)]);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2408f, _wgslsmith_f_op_f32(-540f * -350f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(657f)) - -1405f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1575f + -1481f)))), ~vec3<u32>(1u & global2[_wgslsmith_index_u32(69491u, 32u)], ~0u, ~global2[_wgslsmith_index_u32(0u, 32u)]) >> (vec3<u32>(249u, ~global2[_wgslsmith_index_u32(reverseBits(u_input.d.x), 32u)], u_input.a.x >> (u_input.a.x % 32u)) % vec3<u32>(32u)), u_input.d.yxz, var_0.zxz, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_1())) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-919f, 896f))), vec2<f32>(_wgslsmith_f_op_f32(floor(-1181f)), -1667f))));
    global2 = array<u32, 32>();
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_1.a.x)));
}

