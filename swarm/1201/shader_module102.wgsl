struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<Struct_3, 19>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_3) -> f32 {
    global1 = array<Struct_3, 19>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-631f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1934f + 1759f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1462f) * -117f));
    let var_1 = u_input.b.x;
    global2 = Struct_1(arg_0.a.a.a);
    let var_2 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1533f)) * _wgslsmith_f_op_f32(f32(-1f) * -426f))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = global2.a;
    var var_1 = ~firstTrailingBit(u_input.c.x);
    var var_2 = u_input.c.wwy;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-682f)));
    var var_4 = Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 2u)]);
    return ~1u;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1384f, arg_1), vec2<f32>(arg_1, 472f), vec2<bool>(false, false))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), -234f, _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(Struct_1(arg_0))))))), select(0u, ~u_input.b.x, false)), u_input.c.yy);
    var var_1 = Struct_3(Struct_2(Struct_1(arg_0)));
    var var_2 = _wgslsmith_f_op_f32(-1552f * -285f);
    var_2 = arg_1;
    global0 = array<Struct_1, 2>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>((0i << (_wgslsmith_clamp_u32(~u_input.b.x, u_input.c.x, 16504u) % 32u)) >> (1u % 32u), -max(~(-12063i), -u_input.a) << (0u % 32u), -36173i);
    let var_1 = select(select(vec3<bool>(true, global2.a.x, true), select(arg_2.a.ywx, vec3<bool>(any(vec2<bool>(true, arg_0.a.x)), any(vec2<bool>(arg_1, false)), any(arg_0.a.zwx)), arg_0.a.zxw), !global2.a.x), global2.a.xzw, arg_1);
    global1 = array<Struct_3, 19>();
    let var_2 = vec2<f32>(-895f, _wgslsmith_f_op_f32(round(-1000f)));
    let var_3 = Struct_3(Struct_2(Struct_1(!func_1(vec4<bool>(true, arg_1, false, arg_0.a.x), var_2.x, arg_2.a.zx))));
    return Struct_2(Struct_1(func_1(select(vec4<bool>(false, arg_0.a.x, var_1.x, true), select(vec4<bool>(true, true, arg_1, arg_0.a.x), vec4<bool>(true, arg_0.a.x, false, true), arg_2.a.x), false), _wgslsmith_f_op_f32(-var_2.x), !arg_2.a.zx)));
}

fn func_5(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-537f, _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-118f)), -112f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1317f * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(204f, _wgslsmith_f_op_f32(step(-1134f, -459f)), -1866i > u_input.a)) + -1158f)));
    global1 = array<Struct_3, 19>();
    global1 = array<Struct_3, 19>();
    global0 = array<Struct_1, 2>();
    let var_1 = vec4<u32>(1u, max(u_input.b.x, _wgslsmith_clamp_u32(countOneBits(~39863u), 57078u, firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, 52687u)))), ~u_input.c.x, ~u_input.b.x);
    return ~(~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    var var_0 = all(select(vec4<bool>(true, u_input.a == -u_input.a, ~u_input.b.x < ~u_input.b.x, false), select(vec4<bool>(true, true, global2.a.x, global2.a.x), !select(vec4<bool>(global2.a.x, true, global2.a.x, false), global2.a, global2.a.x), true), vec4<bool>(true, _wgslsmith_div_u32(28374u, u_input.b.x) >= 52349u, true, false)));
    global2 = global0[_wgslsmith_index_u32(func_5(Struct_3(func_4(Struct_1(func_1(vec4<bool>(false, true, false, true), -853f, global2.a.xy)), true, Struct_1(select(global2.a, vec4<bool>(global2.a.x, global2.a.x, false, true), false))))), 2u)];
    let var_1 = !vec4<bool>(func_1(vec4<bool>(false, global2.a.x, all(global2.a.yxz), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-255f + -2326f)), global2.a.wy).x, func_4(func_4(global0[_wgslsmith_index_u32(1u, 2u)], u_input.a >= -28555i, global0[_wgslsmith_index_u32(1u, 2u)]).a, !(true & global2.a.x), func_4(func_4(Struct_1(global2.a), true, global0[_wgslsmith_index_u32(u_input.b.x, 2u)]).a, true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]).a).a.a.x, any(vec4<bool>(true, -28322i <= u_input.a, true, !global2.a.x)), !global2.a.x);
    let var_2 = -(-vec2<i32>(20688i, ~u_input.a) >> (vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), ~u_input.c.x), ~(~u_input.b.x)) % vec2<u32>(32u)));
    var var_3 = 4294967295u | ~_wgslsmith_sub_u32(u_input.c.x, ~_wgslsmith_mult_u32(32454u, 8247u));
    var_3 = abs(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, ~u_input.b.x, min(u_input.b.x, 0u), abs(79615u))), _wgslsmith_mult_vec4_u32(~(~u_input.c), min(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(45512u, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, 549u, u_input.c.x, 124517u)))));
    var var_4 = func_4(global0[_wgslsmith_index_u32(abs(61865u), 2u)], var_1.x, Struct_1(select(global2.a, select(global2.a, !var_1, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 46290u, 4294967295u), u_input.c.yww) <= ~43214u)));
    let var_5 = vec4<u32>(~4294967295u, _wgslsmith_div_u32(u_input.c.x, ~(~func_5(global1[_wgslsmith_index_u32(u_input.b.x, 19u)]))), u_input.c.x, ~(~countOneBits(4294967295u) >> (~u_input.b.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -370f)));
}

