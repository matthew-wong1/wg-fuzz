struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: bool) -> bool {
    global0 = array<Struct_1, 28>();
    return true;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool) -> i32 {
    let var_0 = arg_2;
    global0 = array<Struct_1, 28>();
    let var_1 = Struct_1(select(select(vec4<bool>(true, arg_2, func_1(var_0), false), vec4<bool>(var_0, arg_2, arg_2, true), select(!vec4<bool>(true, false, false, var_0), vec4<bool>(arg_2, false, true, var_0), !arg_2)), vec4<bool>(any(select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, false, false), vec3<bool>(true, true, var_0))), any(!vec4<bool>(false, false, var_0, arg_2)), arg_2, var_0 || true), vec4<bool>(true, any(vec3<bool>(arg_2, true, arg_2)) && any(vec3<bool>(true, false, arg_2)), any(!vec3<bool>(false, arg_2, arg_2)), false)), select(!(!select(vec2<bool>(arg_2, false), vec2<bool>(true, true), true)), vec2<bool>((true && arg_2) != true, true), !select(vec2<bool>(arg_2, false), !vec2<bool>(false, arg_2), !arg_2)), _wgslsmith_sub_u32(arg_0, ~arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(811f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1338f)))));
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    return u_input.a.x;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = ~u_input.a;
    let var_1 = vec2<bool>((all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))) || true) || false, true);
    var_0 = vec4<i32>(func_3(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(408f, -305f)))), var_1.x), var_0.x, select(u_input.a.x, u_input.a.x, var_1.x), i32(-1i) * -33745i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1130f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(529f))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(max(4294967295u, arg_1.c), 28u)];
    var var_1 = global0[_wgslsmith_index_u32(arg_1.c, 28u)];
    let var_2 = Struct_1(select(arg_1.a, !arg_1.a, !select(!var_1.a, !vec4<bool>(false, false, arg_0, var_1.a.x), select(arg_1.a, vec4<bool>(arg_0, var_0.a.x, true, false), false))), select(var_1.b, vec2<bool>(_wgslsmith_f_op_f32(abs(var_1.d)) <= arg_3, arg_2.x > arg_2.x), select(var_0.b, !select(var_0.a.zz, vec2<bool>(false, arg_1.b.x), var_1.a.wy), true)), var_0.c, _wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1085f))))))));
    var var_3 = !vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f + arg_1.d)) <= var_1.d);
    var_1 = arg_1;
    return 49551u;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = 270f;
    let var_1 = (_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0, 0u), ~43793u << (0u % 32u)) << (arg_0 % 32u)) >> (~1u % 32u);
    var var_2 = arg_2;
    var_2 = Struct_1(vec4<bool>(false, all(!var_2.a.wyw), all(select(vec2<bool>(var_2.b.x, true), var_2.a.zx, true)), func_1(any(select(var_2.a, var_2.a, var_2.b.x)))), vec2<bool>(all(!select(var_2.a.xyz, arg_2.a.zzz, var_2.b.x)), select(!(54457i == u_input.a.x), !arg_2.a.x, false)), _wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(85190u, 12628u)), _wgslsmith_add_vec2_u32(vec2<u32>(46596u, var_1), vec2<u32>(41517u, 66534u)))), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(var_2.d * -690f))), var_2.a.x)) * _wgslsmith_f_op_f32(-1f)));
    var_2 = arg_2;
    return global0[_wgslsmith_index_u32(~arg_0, 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    var var_0 = func_5(1u, abs(func_4(func_1(true), Struct_1(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec2<bool>(true, false), _wgslsmith_dot_vec3_u32(vec3<u32>(36490u, 1u, 100634u), vec3<u32>(12834u, 15943u, 30709u)), _wgslsmith_f_op_f32(656f * -892f)), vec4<i32>(_wgslsmith_add_i32(-1i, u_input.a.x), -24311i, -u_input.a.x, u_input.a.x & 4515i), _wgslsmith_f_op_f32(func_2(vec4<u32>(1u, 1u, 1u, 1u))))), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false)), true), vec2<bool>(any(vec4<bool>(false, false, false, false)), firstTrailingBit(-16698i) != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, 1i, 51925i))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -184f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2163f * 360f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-783f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1910f * 1540f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1129f, -1000f, 124f, -3649f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(812f, 702f, -273f, 832f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-745f, -805f, 1438f, 1000f) - vec4<f32>(-839f, 652f, -498f, -285f)))));
    let var_1 = true;
    var var_2 = _wgslsmith_mod_i32(u_input.a.x, select(24167i, -34918i, true));
    var var_3 = global0[_wgslsmith_index_u32(~var_0.c, 28u)];
    let var_4 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c << (1u % 32u), _wgslsmith_add_u32(0u, 30953u), 4294967295u), vec3<u32>(~var_3.c, abs(0u), ~var_0.c)), 1u);
    let var_5 = global0[_wgslsmith_index_u32(0u, 28u)];
    var var_6 = global0[_wgslsmith_index_u32(var_3.c, 28u)];
    var var_7 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(59381u);
}

