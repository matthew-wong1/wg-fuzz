struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_4;

var<private> global2: array<u32, 28>;

var<private> global3: Struct_3 = Struct_3(vec2<bool>(false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(global1.a, global1.b, -select(-vec2<i32>(-2147483647i, -1i) ^ global1.a.d.zy, global1.c, !global3.a), _wgslsmith_add_i32(-8479i, reverseBits(global1.a.c.x & u_input.a) | 56227i));
    var var_1 = -841f;
    let var_2 = max(global1.a.d, ~var_0.a.d);
    var var_3 = global3.a.x;
    var var_4 = select(vec3<bool>(global3.a.x, !global3.a.x, any(vec2<bool>(all(vec3<bool>(false, global3.a.x, true)), true))), !(!(!vec3<bool>(global3.a.x, false, global3.a.x))), select(vec3<bool>(global3.a.x, global3.a.x, false), select(!vec3<bool>(false, global3.a.x, global3.a.x), vec3<bool>(true, true, true), vec3<bool>(global3.a.x || global3.a.x, any(vec4<bool>(true, global3.a.x, global3.a.x, global3.a.x)), global3.a.x)), true));
    return _wgslsmith_clamp_i32(1i << (min(var_0.a.a.x, reverseBits(_wgslsmith_dot_vec2_u32(var_0.a.a, vec2<u32>(4294967295u, 60756u)))) % 32u), global1.a.d.x, ~abs(~var_2.x) | abs(-31561i));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    global3 = Struct_3(global3.a);
    global1 = Struct_4(global1.a, -1189f, vec2<i32>(26652i, 0i), u_input.a);
    global2 = array<u32, 28>();
    global0 = _wgslsmith_div_i32(~firstTrailingBit(func_3()), abs(-36542i));
    let var_0 = Struct_2(~vec2<u32>(~(0u | global1.a.a.x), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b)), ~vec3<i32>(-43757i, 22609i << (0u % 32u), 2147483647i ^ u_input.a) ^ firstTrailingBit(global1.a.c), global1.a.c);
    return ~_wgslsmith_div_u32(abs(arg_0.x), arg_0.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1051f + arg_1.x)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a.b))), !global3.a.x & true, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(0u), func_2(reverseBits(vec2<u32>(4717u, 4294967295u)), _wgslsmith_f_op_f32(step(1000f, global1.a.b)))), 28u)], 28u)] > global2[_wgslsmith_index_u32(global1.a.a.x, 28u)], !(any(!global3.a) | !(global3.a.x && global3.a.x)));
    var var_1 = ~_wgslsmith_mult_u32(1u, ~0u);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-180f, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(654f * arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * global1.b))))) - _wgslsmith_f_op_vec4_f32(-arg_1));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1525f, arg_0.x, 298f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 342f, -1166f, var_2.x) * arg_0))), arg_1, var_0))))));
    var var_4 = u_input.a;
    return Struct_4(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_3.x, -609f)), arg_1.x)) - 1380f), _wgslsmith_clamp_vec2_i32(global1.a.d.xx, vec2<i32>(_wgslsmith_mult_i32(global1.a.d.x, -2147483647i) & ~(-18253i), 6901i & max(global1.d, 100i)), reverseBits(_wgslsmith_mult_vec2_i32(global1.a.c.zx & vec2<i32>(1i, -2147483647i), global1.a.d.zx))), _wgslsmith_div_i32(u_input.a, -global1.a.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(u_input.a, ~u_input.a, global3.a.x);
    let var_1 = global1.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1900f - -464f) * 334f), 183f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1062f, _wgslsmith_f_op_f32(global1.b - global1.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-544f, 126f)))));
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(284f, -2202f, var_2.x, global1.b), vec4<f32>(963f, -712f, var_1.b, global1.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, -430f, -1000f, var_2.x) + vec4<f32>(var_1.b, 758f, var_2.x, global1.a.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 556f, var_1.b, -569f)), any(vec3<bool>(false, true, false)) | true))));
    var_0 = ~(~countOneBits(1i));
    let var_4 = global2[_wgslsmith_index_u32(0u, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_1.a.x, 1u, _wgslsmith_add_u32(~40159u, reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.a.x, 28u)], 28u)]))));
}

