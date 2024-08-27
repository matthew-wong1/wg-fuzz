struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: Struct_3,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: array<i32, 21> = array<i32, 21>(-1i, 34964i, -33225i, 27047i, -36256i, 0i, 0i, 1i, 2147483647i, i32(-2147483648), -57783i, -22978i, 1i, 2864i, i32(-2147483648), 1i, 1i, 0i, -17521i, -1i, 18679i);

var<private> global2: i32;

var<private> global3: u32;

var<private> global4: array<bool, 7>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_5) -> f32 {
    let var_0 = true;
    var var_1 = Struct_4(arg_1.a);
    let var_2 = Struct_1(select(!select(!vec2<bool>(true, global4[_wgslsmith_index_u32(arg_1.c.c, 7u)]), select(vec2<bool>(false, var_0), vec2<bool>(global4[_wgslsmith_index_u32(arg_1.c.c, 7u)], false), true), vec2<bool>(true, var_0)), !vec2<bool>(false, var_0), true));
    global2 = reverseBits(~select(select(global1[_wgslsmith_index_u32(17433u, 21u)], ~global1[_wgslsmith_index_u32(0u, 21u)], !var_2.a.x), -8113i, false));
    let var_3 = vec3<bool>(false, all(select(var_2.a, select(vec2<bool>(true, true), select(vec2<bool>(false, var_2.a.x), vec2<bool>(true, arg_1.c.a.b), vec2<bool>(var_2.a.x, false)), var_2.a), var_2.a)), any(var_2.a));
    return -1733f;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_2(abs(firstLeadingBit(~_wgslsmith_sub_vec3_u32(u_input.d.zzx, vec3<u32>(4294967295u, u_input.d.x, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.x)) + 701f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) * arg_3.x));
    global3 = u_input.d.x;
    global4 = array<bool, 7>();
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(~var_0.a.zz, Struct_5(arg_3.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.x, arg_0, 245f)), Struct_3(Struct_2(vec3<u32>(u_input.d.x, var_0.a.x, 0u), global4[_wgslsmith_index_u32(var_0.a.x, 7u)]), all(vec3<bool>(global4[_wgslsmith_index_u32(var_0.a.x, 7u)], false, true)), arg_2 ^ 56220u), _wgslsmith_mult_i32(1i, u_input.b.x), _wgslsmith_clamp_i32(firstLeadingBit(-24931i), abs(2147483647i), ~u_input.c.x))))));
    global1 = array<i32, 21>();
    return Struct_2(abs((vec3<u32>(arg_2, arg_2, 4294967295u) << (~vec3<u32>(u_input.d.x, 0u, var_0.a.x) % vec3<u32>(32u))) & var_0.a), any(select(select(!vec3<bool>(var_0.b, false, var_0.b), select(vec3<bool>(false, global4[_wgslsmith_index_u32(9144u, 7u)], false), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 7u)], true, true), false), true), vec3<bool>(true, global4[_wgslsmith_index_u32(~0u, 7u)], true), select(select(vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.b, true, true), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.d.x, 7u)], true)), vec3<bool>(var_0.b, global4[_wgslsmith_index_u32(var_0.a.x, 7u)], true), vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    var var_0 = u_input.b.x;
    global4 = array<bool, 7>();
    let var_1 = Struct_5(_wgslsmith_div_f32(1134f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(step(167f, 1276f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -775f), -852f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, -1000f), vec4<f32>(arg_0, -537f, arg_0, -371f), global4[_wgslsmith_index_u32(28480u, 7u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(533f, 616f, -724f, -615f), vec4<f32>(arg_0, arg_0, -732f, arg_0))))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -732f), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1603f)))), Struct_3(func_2(_wgslsmith_f_op_f32(-arg_0), vec2<f32>(-137f, _wgslsmith_f_op_f32(-2806f * -383f)), u_input.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_0), vec2<f32>(arg_0, arg_0)))), !any(vec3<bool>(true, false, global4[_wgslsmith_index_u32(6518u, 7u)])), 0u), _wgslsmith_clamp_i32(max(abs(select(u_input.b.x, 2147483647i, false)), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(u_input.d.x, 40558u)), 21u)])), max(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(54996u, u_input.d.x), 21u)], u_input.c.x), -2147483647i), -6041i), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(43068u, 21u)], -12585i), u_input.c.zz));
    global1 = array<i32, 21>();
    global1 = array<i32, 21>();
    return ~vec2<u32>(~68826u, ~_wgslsmith_div_u32(_wgslsmith_add_u32(var_1.c.a.a.x, var_1.c.a.a.x), ~var_1.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-1454f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(567f * 1000f), 957f, !global4[_wgslsmith_index_u32(u_input.d.x, 7u)])))));
    var var_1 = Struct_2(vec3<u32>(u_input.d.x, u_input.d.x | ~(~0u), _wgslsmith_div_u32(~var_0.x, ~u_input.d.x)), true);
    let var_2 = var_1.a.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1623f, -377f, -1340f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(986f, 170f, 516f) - vec3<f32>(675f, -1301f, 1000f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(431f, -436f), _wgslsmith_f_op_f32(step(-1479f, -1014f)), 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-634f, -1493f, 2509f), vec3<f32>(-472f, -1256f, -1000f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1502f, 977f, -246f), vec3<f32>(962f, 409f, -1535f)), vec3<f32>(-560f, -845f, 1710f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(308f, -1277f, 1119f))))))), (_wgslsmith_div_i32(reverseBits(u_input.b.x), global1[_wgslsmith_index_u32(var_1.a.x, 21u)] ^ global1[_wgslsmith_index_u32(4294967295u, 21u)]) < -12380i) == ((global4[_wgslsmith_index_u32(1u, 7u)] && true) || var_1.b)));
    global0 = array<vec4<i32>, 20>();
    var_1 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(max(var_3.x, var_3.x))))))), _wgslsmith_f_op_vec2_f32(round(var_3.xy)), _wgslsmith_mult_u32(var_1.a.x, u_input.d.x), _wgslsmith_div_vec2_f32(var_3.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.xx + var_3.xz))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

