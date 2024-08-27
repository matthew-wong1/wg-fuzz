struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, true, false)));

var<private> global2: vec4<i32>;

var<private> global3: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = vec4<i32>(firstLeadingBit(min(~u_input.c, _wgslsmith_div_i32(global2.x, ~(-8388i)))), _wgslsmith_mod_i32(1i, countOneBits(global2.x)), _wgslsmith_add_i32(_wgslsmith_div_i32(0i, -abs(global2.x)), 0i), global2.x);
    global0 = global1[_wgslsmith_index_u32(12628u, 30u)];
    var var_1 = ~(vec3<u32>(reverseBits(max(u_input.b.x, 86076u)), ~(~52193u), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, u_input.d.x), u_input.b))) | _wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.d.x, 1u), vec3<u32>(0u, _wgslsmith_clamp_u32(0u, 0u, u_input.b.x), ~u_input.d.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_1.xwy);
    var var_3 = vec2<bool>(!all(vec2<bool>(arg_2.x, arg_2.x)) || ((_wgslsmith_f_op_f32(arg_0.x + arg_0.x) != _wgslsmith_f_op_f32(arg_0.x - 519f)) | all(vec2<bool>(true, arg_2.x))), true || !arg_2.x);
    return _wgslsmith_mod_u32(countOneBits(0u), ~(var_1.x ^ _wgslsmith_dot_vec2_u32(u_input.d, _wgslsmith_clamp_vec2_u32(u_input.b.wx, var_1.xy, var_1.xz))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f - -635f)), 1108f), vec4<f32>(1f, 1f, 1f, 1f), select(arg_1.a.wxw, arg_1.a.xzw, select(select(vec3<bool>(global0.a.x, global0.a.x, false), vec3<bool>(false, true, global0.a.x), arg_1.a.ywy), select(global0.a.yxy, global0.a.wxz, global0.a.xxx), select(vec3<bool>(arg_1.a.x, false, global0.a.x), global0.a.wwy, global0.a.x)))) & ~(~9608u);
    global0 = global1[_wgslsmith_index_u32(countOneBits(u_input.b.x), 30u)];
    var var_1 = global0.a.x;
    global2 = min(~(~(vec4<i32>(global2.x, -2147483647i, -1i, 1i) ^ vec4<i32>(u_input.a, 2147483647i, -16333i, -6392i)) & vec4<i32>(u_input.a, -1i, 13872i, 1i | global2.x)), vec4<i32>(global2.x >> (~(~arg_0.x) % 32u), u_input.a, -select(-2147483647i, select(2147483647i, u_input.a, arg_1.a.x), u_input.b.x < u_input.b.x), select(~(-global2.x), 49507i, false)));
    let var_2 = arg_1;
    return !global0.a;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(912f, 1422f))) * 322f));
    global2 = vec4<i32>(1i, i32(-1i) * -global2.x, global2.x, reverseBits(-12406i));
    var var_1 = select(!(!select(func_2(u_input.d, Struct_1(global0.a)), vec4<bool>(false, false, true, true), !global0.a.x)), !(!func_2(vec2<u32>(75104u, 0u), Struct_1(global0.a))), firstTrailingBit(~firstTrailingBit(global2.x)) > -1i);
    var var_2 = vec4<bool>(all(!select(vec3<bool>(true, var_1.x, true), var_1.yyw, global0.a.xzx)), false, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1707f * _wgslsmith_f_op_f32(-var_0))));
    var var_3 = 21567i & _wgslsmith_clamp_i32(~(-10464i), abs(-u_input.a >> (u_input.d.x % 32u)), 1i);
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(!(!(!vec4<bool>(true, true, global0.a.x, false))), !(!func_1()), !vec4<bool>(all(vec2<bool>(false, false)), func_2(u_input.b.zw, Struct_1(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x))).x, true, true & global0.a.x)));
    var_0 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, global2.xzx, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1499f, 162f), vec2<f32>(1478f, 639f), vec2<bool>(var_0.a.x, false))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1539f, -964f), vec2<f32>(-781f, 939f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -315f) * _wgslsmith_div_vec2_f32(vec2<f32>(1404f, 2222f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(800f, -606f)))))));
}

