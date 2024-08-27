struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 4294967295u, 38603u);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 42107u, 0u);

var<private> global2: Struct_2 = Struct_2(vec2<bool>(false, false), 2147483647i, vec2<bool>(true, false));

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<bool>(false, false), 24611i, vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false), 24395i, vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true), 1i, vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false), 8995i, vec2<bool>(false, true)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-682f * 961f))), _wgslsmith_f_op_f32(1034f - _wgslsmith_f_op_f32(f32(-1f) * -263f)))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(300f, _wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(trunc(152f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1424f, -1525f, 451f) + vec3<f32>(1865f, 1000f, 780f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 884f, -913f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, 837f, 114f)), !vec3<bool>(arg_0.a.x, var_0.a.x, global2.a.x))))), any(vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_mod_i32(global2.b, firstTrailingBit(global2.b));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -859f)));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2085f) + var_1.a) - -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -276f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, 421f))), 878f);
    return ~u_input.a.x;
}

fn func_2() -> Struct_2 {
    global2 = Struct_2(select(vec2<bool>(1i == ~global2.b, true), vec2<bool>(select(all(vec3<bool>(global2.a.x, true, true)), true, global2.c.x), global2.c.x), true), global2.b, !select(select(select(global2.c, global2.a, true), global2.c, vec2<bool>(global2.c.x, false)), global2.c, global2.a.x));
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-517f, -139f)) - _wgslsmith_f_op_f32(f32(-1f) * -156f))))));
    global2 = Struct_2(vec2<bool>(global1.x > (4294967295u << (func_3(Struct_1(vec4<bool>(global2.a.x, global2.c.x, false, global2.a.x))) % 32u)), all(select(!vec4<bool>(false, false, global2.c.x, true), !vec4<bool>(global2.c.x, global2.a.x, global2.a.x, false), global2.c.x))), min(-2147483647i, 39517i), global2.c);
    global3 = array<Struct_2, 4>();
    let var_1 = Struct_1(select(select(vec4<bool>(any(vec4<bool>(false, global2.c.x, true, false)), global2.a.x || false, true, true), vec4<bool>(true, global2.b < -20001i, any(global2.a), true), !vec4<bool>(false, global2.a.x, global2.c.x, global2.a.x)), select(select(select(vec4<bool>(global2.c.x, global2.c.x, true, global2.a.x), vec4<bool>(global2.a.x, true, global2.c.x, false), vec4<bool>(global2.a.x, false, global2.a.x, false)), select(vec4<bool>(false, true, global2.a.x, true), vec4<bool>(true, true, false, global2.a.x), global2.c.x), !vec4<bool>(global2.c.x, global2.c.x, true, global2.c.x)), !(!vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.c.x)), !vec4<bool>(global2.a.x, global2.c.x, false, global2.c.x)), select(!(!vec4<bool>(false, global2.a.x, true, global2.a.x)), vec4<bool>(global2.a.x, true, false, global2.a.x), !(!global2.c.x))));
    return global3[_wgslsmith_index_u32(1u, 4u)];
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    global0 = ~(~(_wgslsmith_div_vec3_u32(min(u_input.a, u_input.a), u_input.a) ^ ~(u_input.a << (vec3<u32>(29008u, 4229u, global0.x) % vec3<u32>(32u)))));
    var var_0 = vec4<i32>(firstLeadingBit(~(-global2.b)), -11626i, _wgslsmith_sub_i32(-1i, ~arg_0.b), 2147483647i);
    global0 = ~(u_input.a << (~(~vec3<u32>(1u, 34862u, global0.x)) % vec3<u32>(32u)));
    let var_1 = Struct_1(!select(vec4<bool>(true, true, !global2.c.x, any(vec4<bool>(arg_0.a.x, arg_0.c.x, false, true))), !(!vec4<bool>(global2.a.x, arg_0.c.x, arg_0.c.x, false)), !select(vec4<bool>(true, true, arg_0.c.x, arg_0.a.x), vec4<bool>(global2.c.x, global2.a.x, arg_0.c.x, true), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, false))));
    var_0 = firstTrailingBit(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global2.b << (global0.x % 32u), _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(9103i, 1i)), -var_0.x), -(vec4<i32>(arg_0.b, arg_0.b, var_0.x, -27658i) ^ vec4<i32>(0i, 2907i, global2.b, arg_0.b)), vec4<i32>(global2.b, var_0.x, arg_0.b, global2.b) | ~vec4<i32>(1i, 0i, 19482i, -2147483647i)), abs(vec4<i32>(global2.b, var_0.x, 50048i, 12260i)) | vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, var_0.x, global2.b, 1i), vec4<i32>(global2.b, 1i, global2.b, var_0.x)), -var_0.x, -1i, min(1i, 1i)), select(var_1.a, select(!var_1.a, !vec4<bool>(true, true, arg_0.a.x, var_1.a.x), any(var_1.a.yx)), arg_0.c.x)));
    return vec4<bool>(true, global2.c.x, global2.c.x, false);
}

fn func_5(arg_0: i32, arg_1: vec4<bool>) -> Struct_3 {
    global2 = func_2();
    global3 = array<Struct_2, 4>();
    var var_0 = arg_1.x;
    global2 = func_2();
    var var_1 = select(~0i, 0i, global2.a.x);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(517f, 350f)))))), Struct_1(vec4<bool>(func_4(global3[_wgslsmith_index_u32(global1.x, 4u)]).x | false, func_2().a.x, false, arg_1.x)), _wgslsmith_f_op_f32(select(-268f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(322f, -996f))))), any(!func_4(Struct_2(arg_1.yz, global2.b, global2.c))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-242f, 308f, 419f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1201f, 211f, -488f) - vec3<f32>(935f, 577f, -811f))))))), arg_1.x);
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = func_5(~(-1i), !(!func_4(func_2())));
    let var_1 = ~firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(global0.x, u_input.a.x >> (1u % 32u)), ~1u, 1u, 63784u | u_input.a.x));
    let var_2 = var_0.c > func_5(select(~(i32(-1i) * -2147483647i), firstTrailingBit(i32(-1i) * -1i), true), select(func_4(Struct_2(var_0.b.a.xw, global2.b, vec2<bool>(false, arg_0.x))), !select(vec4<bool>(arg_0.x, arg_0.x, var_0.e, var_0.e), var_0.b.a, vec4<bool>(global2.c.x, var_0.b.a.x, global2.a.x, true)), var_0.e)).d.x;
    var var_3 = vec4<bool>(func_2().a.x, var_2, !var_2, any(var_0.b.a.xzz));
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u << (1u % 32u), ~82748u & select(0u, ~(~104076u), global2.a.x)), 4u)];
    return select(any(!func_4(global3[_wgslsmith_index_u32(14253u, 4u)]).xz), var_3.x, !any(vec3<bool>(96581u < global1.x, var_2, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.a;
    let var_0 = !(!select(select(vec4<bool>(global2.a.x, false, false, global2.c.x), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, false), true), !(!vec4<bool>(true, global2.a.x, false, true)), any(vec3<bool>(global2.a.x, global2.a.x, global2.a.x)) != !global2.c.x));
    let var_1 = firstLeadingBit(reverseBits(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(global2.b, 0i), ~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.b, 0i), vec2<i32>(global2.b, 9658i), vec2<i32>(global2.b, -2147483647i))), vec2<bool>(!(!global2.a.x), select(true, global2.b >= global2.b, func_1(var_0.zz)))), select(vec4<u32>(func_3(func_5(global2.b, var_0).b), ~_wgslsmith_clamp_u32(global0.x, 49793u, global0.x), _wgslsmith_clamp_u32(0u, 1u, ~global0.x), max(1u, 42573u >> (1u % 32u))), _wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, var_1), vec4<u32>(global0.x, 0u, 4294967295u, 66762u), vec4<bool>(true, var_0.x, global2.a.x, var_0.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(global1.yy, vec2<u32>(global1.x, var_1)), ~0u, global0.x, 5373u)), !(!(0i != global2.b))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1106f, 1161f, 934f)))))));
}

