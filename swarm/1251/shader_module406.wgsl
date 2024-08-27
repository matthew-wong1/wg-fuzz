struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<bool>;

var<private> global2: Struct_4 = Struct_4(Struct_2(vec2<bool>(true, false), Struct_1(2147483647i), Struct_1(1i)), vec2<u32>(10543u, 22448u), 4294967295u, vec2<i32>(i32(-2147483648), 48366i));

var<private> global3: array<Struct_2, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, -509f, 674f) - vec3<f32>(-1429f, 752f, -285f))), vec3<f32>(_wgslsmith_div_f32(1000f, 1380f), _wgslsmith_f_op_f32(-407f * 699f), _wgslsmith_f_op_f32(f32(-1f) * -1254f))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1131f * -618f), -443f, -528f)), vec3<f32>(1f, 1f, 1f))));
    let var_1 = 59051u;
    global2 = Struct_4(global3[_wgslsmith_index_u32(u_input.b, 21u)], global2.b, ~(47975u & max(0u, _wgslsmith_dot_vec2_u32(global2.b, vec2<u32>(var_1, global2.b.x)))), vec2<i32>(global2.d.x, -22179i));
    var var_2 = u_input.b >= max(_wgslsmith_sub_u32(global2.c, var_1), 51681u);
    global1 = global2.a.a;
    return !global1.x;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec4<bool> {
    global0 = max(537u, u_input.b);
    global1 = select(!(!vec2<bool>(false, func_3())), !arg_1.a, select(!arg_1.a, arg_1.a, all(vec3<bool>(arg_0 >= 878f, all(vec4<bool>(true, true, false, false)), arg_0 > 796f))));
    let var_0 = Struct_2(!(!select(!arg_1.a, global2.a.a, !global1.x)), arg_1.b, global2.a.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-987f)));
    global1 = var_0.a;
    return !select(vec4<bool>(global1.x, global2.a.a.x, !(arg_2 < 0u), false), vec4<bool>(true, any(vec4<bool>(true, arg_1.a.x, false, global1.x)) | false, any(vec2<bool>(var_0.a.x, false)), false), 134268u >= ~_wgslsmith_clamp_u32(arg_2, 4294967295u, 16668u));
}

fn func_1() -> Struct_2 {
    var var_0 = select(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1235f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-925f + -955f) - 866f)), global3[_wgslsmith_index_u32(~(~firstLeadingBit(global2.c)), 21u)], u_input.b), !(!select(vec4<bool>(true, true, true, true), !vec4<bool>(global1.x, false, false, true), true)), vec4<bool>(false, true, max(~1i, u_input.a.x) == 2147483647i, func_3()));
    var var_1 = vec2<bool>(true && (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-383f + 851f), 1209f) <= _wgslsmith_f_op_f32(-129f * _wgslsmith_f_op_f32(select(692f, 1273f, true)))), !(global1.x | (select(false, true, false) == func_2(434f, global2.a, 50250u).x)));
    let var_2 = global2.a.c;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-473f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f + 240f)))), _wgslsmith_f_op_f32(min(758f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(219f)) * -265f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(957f)), -1336f))))));
    var var_4 = -min(1i, u_input.a.x);
    return global3[_wgslsmith_index_u32(global2.b.x, 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(true, true);
    global3 = array<Struct_2, 21>();
    let var_0 = Struct_4(func_1(), select(global2.b >> (vec2<u32>(~0u, global2.c) % vec2<u32>(32u)), ~global2.b, false), global2.c, _wgslsmith_add_vec2_i32(global2.d, u_input.a) ^ _wgslsmith_add_vec2_i32(vec2<i32>(reverseBits(u_input.a.x), global2.a.b.a), vec2<i32>(-50161i, global2.d.x)));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(1u), var_0.c), abs(vec2<u32>(4294967295u, u_input.b)) | (global2.b & _wgslsmith_sub_vec2_u32(vec2<u32>(global2.b.x, var_0.b.x), global2.b))) << (countOneBits(global2.b.x) % 32u);
    var var_2 = global2.a.c;
    let var_3 = ~abs(vec4<i32>(34685i, ~var_0.a.c.a, 4246i, _wgslsmith_clamp_i32(min(u_input.a.x, global2.d.x), global2.a.b.a, abs(2147483647i))));
    global0 = global2.b.x;
    global2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(33351i, countOneBits(var_3) << (~(~min(vec4<u32>(global2.b.x, u_input.b, 1885u, 0u), vec4<u32>(1u, 32666u, 1u, u_input.b))) % vec4<u32>(32u)), 5178u, ~4294967295u >> (global2.b.x % 32u));
}

