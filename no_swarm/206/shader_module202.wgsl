struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 32>;

var<private> global2: array<Struct_1, 6>;

var<private> global3: array<f32, 7> = array<f32, 7>(1000f, 1889f, -1000f, 444f, 1180f, 883f, -977f);

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = ~(~u_input.d.x) >> (4294967295u % 32u);
    return !select(select(vec4<bool>(true, global0.a.x, true, global0.a.x), select(select(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(true, false, false, global0.a.x)), vec4<bool>(false, true, global0.a.x, global0.a.x), global3[_wgslsmith_index_u32(u_input.a, 7u)] >= global1[_wgslsmith_index_u32(0u, 32u)]), select(vec4<bool>(global0.a.x, false, false, false), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), !global0.a.x)), select(!select(vec4<bool>(false, true, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), vec4<bool>(true, true, global0.a.x, false)), vec4<bool>(global0.a.x, all(vec4<bool>(false, global0.a.x, global0.a.x, true)), false, true), global0.a.x), !((i32(-1i) * -2147483647i) == _wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(u_input.d.x, var_0))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(!all(!func_3()), Struct_1(vec3<bool>(arg_1.a.x, 1u < _wgslsmith_clamp_u32(u_input.c.x, 1u, u_input.c.x), any(!vec4<bool>(true, global0.a.x, arg_1.a.x, arg_1.a.x)))));
    let var_1 = var_0.b;
    global4 = array<Struct_1, 29>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(95409u, 32u)]), 1498f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-508f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~4294967295u, 32u)] - _wgslsmith_f_op_f32(-538f - 1110f)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(-419f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1154f, arg_0)) - -367f)))), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~51333u), _wgslsmith_dot_vec2_u32(vec2<u32>(13400u, 76363u) & vec2<u32>(u_input.e.x, 83829u), vec2<u32>(u_input.a, 55040u))), 7u)])), global1[_wgslsmith_index_u32(1u, 32u)]);
    var var_1 = arg_1;
    let var_2 = Struct_2(arg_1.a, Struct_1(arg_0.a));
    global2 = array<Struct_1, 6>();
    global4 = array<Struct_1, 29>();
    return all(vec4<bool>(true, func_3().x & all(func_3().yx), select(arg_0.a.x, func_3().x, var_2.a), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(global0.a.x, any(vec4<bool>(!global0.a.x, true, true, !global0.a.x)), false, !func_1(Struct_1(global0.a), Struct_2(global0.a.x, global2[_wgslsmith_index_u32(u_input.a, 6u)]))), vec4<bool>(!((u_input.a >> (u_input.c.x % 32u)) < 1u), ((u_input.c.x & 15071u) & _wgslsmith_sub_u32(1u, u_input.b)) <= _wgslsmith_dot_vec2_u32(countOneBits(u_input.c.xy), _wgslsmith_mult_vec2_u32(u_input.e, u_input.c.zx)), (_wgslsmith_dot_vec4_u32(vec4<u32>(46456u, u_input.c.x, 11258u, u_input.e.x), vec4<u32>(1u, 17903u, u_input.c.x, 23700u)) <= _wgslsmith_div_u32(u_input.c.x, u_input.b)) & global0.a.x, global0.a.x), (abs(firstTrailingBit(u_input.b)) ^ u_input.e.x) <= 27957u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 7u)]), 102f, 1272f)))));
    var var_2 = -abs(_wgslsmith_mult_i32(-_wgslsmith_add_i32(u_input.d.x, 33060i), select(u_input.d.x >> (0u % 32u), u_input.d.x << (94112u % 32u), true)));
    let var_3 = var_1.x;
    let var_4 = 1u;
    var var_5 = global3[_wgslsmith_index_u32(28596u, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-287f, var_1.x), abs(~0u), u_input.c.zx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(8250u, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(141777u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(132f, -1261f, var_3, 1288f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], var_3, -234f, -1143f)))))));
}

