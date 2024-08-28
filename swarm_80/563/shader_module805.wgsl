struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(false, 1u), vec2<f32>(-804f, -554f), 1486f), Struct_2(Struct_1(false, 6732u), vec2<f32>(-757f, 801f), 711f), Struct_2(Struct_1(true, 31476u), vec2<f32>(-200f, 230f), 621f), Struct_2(Struct_1(false, 0u), vec2<f32>(-384f, -1136f), 841f));

var<private> global3: array<bool, 3>;

var<private> global4: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(1122f - -1512f);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, 767f, -1000f) + vec3<f32>(global1.b.x, global1.c, 1971f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-147f, var_0, var_0), vec3<f32>(742f, global1.b.x, -818f))) * vec3<f32>(_wgslsmith_f_op_f32(select(global1.b.x, var_0, false)), global1.b.x, global1.c)))));
    let var_2 = u_input.a.ywx;
    global0 = !vec4<bool>(any(global0.zxz), !(!global3[_wgslsmith_index_u32(u_input.a.x, 3u)]), !(countOneBits(arg_0) > arg_0), !all(!vec3<bool>(global1.a.a, true, global1.a.a)));
    global3 = array<bool, 3>();
    return (!(!global3[_wgslsmith_index_u32(54912u, 3u)] && (-447f == var_1.x)) || global3[_wgslsmith_index_u32(0u, 3u)]) || false;
}

fn func_3() -> i32 {
    global0 = !vec4<bool>(false, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44150u, global1.a.b, 7707u, 49170u), ~u_input.a), _wgslsmith_dot_vec3_u32(u_input.a.wyw, ~vec3<u32>(12365u, global1.a.b, 8170u))), 3u)], true, global0.x);
    let var_0 = ~(vec4<u32>(1u ^ global1.a.b, u_input.a.x, _wgslsmith_mod_u32(global1.a.b, 0u), _wgslsmith_div_u32(u_input.b.x, 1u)) & u_input.a) & (u_input.a << ((~countOneBits(u_input.a) >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)));
    global4 = -1i;
    let var_1 = var_0.x;
    let var_2 = global1.c;
    return ~abs(reverseBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(-11369i, -8099i), vec2<i32>(1i, 1i))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> f32 {
    let var_0 = select(!(!(!arg_0.zzw)), select(select(vec3<bool>(!global1.a.a, true, true), global0.xyy, !select(vec3<bool>(false, global1.a.a, global1.a.a), vec3<bool>(false, false, true), global0.xwx)), !vec3<bool>(any(arg_0), true, global0.x), (-arg_1 == -arg_3.a.x) & true), func_1(2147483647i));
    var var_1 = 25761i;
    var var_2 = arg_3;
    var var_3 = Struct_1(global0.x, 16255u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), -626f), _wgslsmith_f_op_f32(-global1.c))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(func_4(!(!arg_1.a), abs(func_3()), !(!arg_1.a.x | !global0.x), Struct_4(firstTrailingBit(~vec4<i32>(-29645i, 14948i, -22544i, arg_0.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.a.b, 9928u), ~u_input.b)))));
    let var_1 = max(vec3<u32>(~(~arg_2.x) & 0u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, global1.a.b, global1.a.b & 4294967295u)), u_input.b.x), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 1u), vec2<u32>(arg_2.x, u_input.b.x)), ~_wgslsmith_add_u32(1u, global1.a.b), ~1u));
    let var_2 = Struct_3(arg_1.a, select(vec2<bool>(global0.x & true, false), !select(!arg_1.a.wx, select(arg_1.a.wy, vec2<bool>(true, false), arg_1.a.ww), !vec2<bool>(global3[_wgslsmith_index_u32(var_1.x, 3u)], true)), global1.b.x >= global1.c), global1.c);
    var var_3 = arg_1;
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(-296f - _wgslsmith_f_op_f32(194f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_4.c))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-780f * -2619f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(min(global1.b.x, global1.c)))))));
    var var_1 = any(vec4<bool>(any(!global0.wx), false, any(!(!global0.xy)), func_1(0i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1634f, -879f, -1000f, -507f), vec4<f32>(478f, 1000f, -984f, global1.b.x)) * vec4<f32>(-1044f, global1.c, -2076f, 192f)) + vec4<f32>(1639f, 468f, _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(select(-180f, var_0, global1.a.a)))))) - vec4<f32>(275f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, -1i), vec3<i32>(-2147483647i, 0i, 0i)), Struct_5(vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 3u)], false, global3[_wgslsmith_index_u32(4294967295u, 3u)])), ~u_input.a))), global1.c));
    global3 = array<bool, 3>();
    global3 = array<bool, 3>();
    let var_3 = Struct_2(Struct_1(global1.a.b < _wgslsmith_sub_u32(global1.a.b, u_input.a.x), countOneBits(u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - -1297f)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(step(1514f, _wgslsmith_f_op_f32(-var_0))))));
    var var_4 = false;
    var var_5 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(var_3.a.b >> (_wgslsmith_add_u32(var_3.a.b, var_3.a.b) % 32u)), var_3.c, ~vec2<i32>(i32(-1i) * -48335i, 2147483647i), _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), ~(u_input.a ^ u_input.a) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.b, 1571u, 4294967295u, 295u), u_input.a, u_input.a) << (~vec4<u32>(1u, global1.a.b, var_3.a.b, 27912u) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

