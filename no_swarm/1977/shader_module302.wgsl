struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: bool;

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: Struct_2 = Struct_2(vec2<i32>(0i, -1i), 2147483647i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec2<bool> {
    global2 = Struct_2(-vec2<i32>(max(-12501i, ~44186i), i32(-1i) * -global2.a.x), global2.a.x);
    var var_0 = vec3<i32>(abs(global2.b), global2.b, _wgslsmith_mult_i32(-1922i, ~(-_wgslsmith_mult_i32(-2147483647i, global2.a.x))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(147f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_div_f32(-935f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * arg_0), 698f, true))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(746f))) * -2657f)), _wgslsmith_clamp_u32(4294967295u, ~24864u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x), select(_wgslsmith_dot_vec3_u32(vec3<u32>(43612u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 25718u, u_input.a.x)), min(u_input.a.x, 0u), arg_0 <= 2395f))));
    var var_2 = false;
    var var_3 = var_1.a.x;
    return vec2<bool>((-23081i >> (u_input.a.x % 32u)) < _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.x, -2147483647i), -6865i, var_0.x), var_1.a.x < _wgslsmith_f_op_f32(-var_1.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    global1 = array<vec4<f32>, 8>();
    global0 = select(all(!vec4<bool>(false && arg_3.x, true, select(false, arg_3.x, arg_3.x), true)), arg_3.x, arg_3.x);
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.a.xx * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.zx))))), arg_2.a.yy, func_3(_wgslsmith_f_op_f32(step(-199f, _wgslsmith_f_op_f32(ceil(-593f)))))));
    let var_1 = -9394i;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a.x)));
    return _wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> vec4<f32> {
    var var_0 = ~u_input.a.wz;
    let var_1 = global2.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-532f - -639f)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_f32(-arg_1.a.x));
    global2 = Struct_2(-firstTrailingBit(-vec2<i32>(global2.a.x, global2.b) >> (u_input.a.wz % vec2<u32>(32u))), global2.a.x);
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1.a.x)))), _wgslsmith_f_op_f32(func_4(arg_1, _wgslsmith_f_op_f32(687f * arg_1.a.x), arg_1, func_3(1086f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, arg_1.a.x, -927f, -917f)), 1u), -362f, arg_1, !(!arg_0.xz))) - _wgslsmith_f_op_f32(ceil(296f))), var_2.x, var_2.x);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3213f * 1f)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(~0u, 8u)] * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(arg_1, Struct_1(vec4<f32>(var_0, arg_0, arg_2, 855f), u_input.a.x), _wgslsmith_sub_u32(732u, u_input.a.x))) + _wgslsmith_f_op_vec4_f32(func_2(select(arg_1, arg_1, false), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.a.x), u_input.a.x)))), _wgslsmith_mult_u32(u_input.a.x, 98976u));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(abs(arg_0.b >> (53454u % 32u)), 8u)])), 47763u);
    global2 = Struct_2(vec2<i32>(_wgslsmith_add_i32(global2.b, 2147483647i), -2324i), 0i);
    global2 = Struct_2(-(global2.a >> (vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(var_0.b, 6634u)) % vec2<u32>(32u))), global2.b);
    var var_1 = _wgslsmith_mod_vec3_u32(max(u_input.a.xwy, abs(countOneBits(vec3<u32>(0u, 1u, 0u) | vec3<u32>(arg_0.b, 1u, var_0.b)))), u_input.a.xzz);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - arg_0.a.x), arg_0.a.x) - _wgslsmith_f_op_f32(-arg_0.a.x))) >= arg_0.a.x;
    return StorageBuffer(-global2.b >> (~firstLeadingBit(min(var_1.x, var_1.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-312f))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), (global2.b & 0i) > -31376i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2146f - -1000f) * _wgslsmith_f_op_f32(min(-634f, -340f))))));
}

