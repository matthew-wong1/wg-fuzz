struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: f32;

var<private> global2: vec3<f32>;

var<private> global3: vec2<u32>;

var<private> global4: vec2<u32> = vec2<u32>(4650u, 25832u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_u32(max(vec2<u32>(529u, 47685u), u_input.a.yw), ~_wgslsmith_clamp_vec2_u32(u_input.a.wz, u_input.a.yx, vec2<u32>(7158u, 77319u)))));
    global3 = vec2<u32>(0u, 18635u);
    global4 = ~(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(63737u, global3.x, global4.x, 4294967295u), u_input.a), 28536u) & vec2<u32>(global4.x, ~global4.x));
    var var_1 = Struct_2(Struct_1(11602i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, -720f, -714f, -172f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(2207f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f + 992f)), global2.x))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.x, 148f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1099f))))) * _wgslsmith_f_op_f32(-global2.x));
    return true;
}

fn func_2() -> vec2<bool> {
    var var_0 = select(vec2<bool>(func_3(), false), select(vec2<bool>(all(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), u_input.a.x == 4294967295u), !(!(!vec2<bool>(global0.x, false))), vec2<bool>(true, true)), !(!vec2<bool>(any(vec3<bool>(false, global0.x, global0.x)), select(global0.x, global0.x, global0.x))));
    return vec2<bool>(true, global0.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_1(i32(-1i) * -79284i);
    global0 = !(!func_2());
    var_0 = arg_0.a;
    var var_1 = arg_0.a;
    global3 = ~(~_wgslsmith_sub_vec2_u32(reverseBits(u_input.a.yx), max(~u_input.a.wy, abs(vec2<u32>(66050u, 19487u)))));
    return _wgslsmith_mod_u32(u_input.a.x, select(~(~u_input.a.x >> (global4.x % 32u)), _wgslsmith_div_u32(global4.x, _wgslsmith_clamp_u32(38275u, 23476u, global3.x)), all(vec3<bool>(arg_1.x == -2147483647i, false, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -273f), global2.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -187f) * vec3<f32>(global2.x, global2.x, global2.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-386f, global2.x, -449f), vec3<f32>(1421f, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1065f, global2.x) - vec3<f32>(1560f, 1000f, global2.x)))));
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(~3041u, func_1(Struct_2(Struct_1(22055i), vec4<f32>(global2.x, 825f, global2.x, global2.x)), vec4<i32>(-10328i, 1i, -2147483647i, 1i)), ~17339u), 4294967295u, max(_wgslsmith_dot_vec2_u32(~vec2<u32>(70161u, 0u), ~vec2<u32>(3840u, 715u)), ~global4.x)), u_input.a.xzy);
    global4 = _wgslsmith_mod_vec2_u32(var_0.xx | vec2<u32>(~var_0.x, ~var_0.x), vec2<u32>(1u, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(global4.x | u_input.a.x, _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, global4.x, 91433u, global4.x) ^ (_wgslsmith_sub_vec4_u32(vec4<u32>(global4.x, u_input.a.x, 25826u, u_input.a.x), u_input.a) >> (vec4<u32>(4294967295u, 0u, global3.x, global3.x) % vec4<u32>(32u))), max(u_input.a, ~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-893f))), 760f, global2.x, _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(global2.x * global2.x), false))));
}

