struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: array<u32, 22>;

var<private> global4: vec4<i32> = vec4<i32>(-36670i, i32(-2147483648), -8728i, i32(-2147483648));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    let var_0 = global1.b;
    global1 = Struct_1(min(global1.a, global4.x), -363f, !vec2<bool>(true, !all(global2.xx)));
    global4 = vec4<i32>(0i, firstLeadingBit(-(i32(-1i) * -2147483647i)), -5522i, global1.a);
    global3 = array<u32, 22>();
    global1 = Struct_1(-28977i, global1.b, select(select(vec2<bool>(true, true), !global2.zx, all(vec2<bool>(false, global2.x)) || !global1.c.x), vec2<bool>(false, false), false));
    return global1.c;
}

fn func_2(arg_0: bool) -> Struct_2 {
    return Struct_2(Struct_1(-2147483647i, -864f, func_3()), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b * -233f), global1.b), global1.b, -919f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.b, _wgslsmith_f_op_f32(464f + global1.b), -675f, _wgslsmith_f_op_f32(1547f - -1314f)))))), Struct_1(firstTrailingBit(~_wgslsmith_mod_i32(-2147483647i, 11862i)), _wgslsmith_f_op_f32(floor(global1.b)), select(vec2<bool>(any(vec4<bool>(arg_0, true, true, global1.c.x)), any(vec3<bool>(global2.x, arg_0, false))), vec2<bool>(all(vec4<bool>(global1.c.x, arg_0, global2.x, true)), true), !all(vec3<bool>(global2.x, false, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, _wgslsmith_f_op_f32(466f - _wgslsmith_f_op_f32(step(-969f, global1.b))), _wgslsmith_f_op_f32(185f + global1.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(157f, global1.b, -258f), vec3<f32>(global1.b, 563f, 126f))))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, ~15161i, u_input.d, global1.a), vec4<i32>(-38077i, global4.x, 1i, max(u_input.a.x, -43362i))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(145f)) * _wgslsmith_f_op_f32(max(-393f, global1.b)))), !select(!global1.c, !vec2<bool>(false, global2.x), true)));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = func_2(global1.c.x);
    var var_1 = abs(global4.x) >= _wgslsmith_div_i32(arg_0.x, arg_0.x);
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(-6530i, global1.a) >> (vec2<u32>(0u, global3[_wgslsmith_index_u32(0u, 22u)]) % vec2<u32>(32u)))), arg_0), -(~0i));
    var_1 = true;
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(29674u, _wgslsmith_clamp_u32(global0.x, 4294967295u, 1u)) << (max(firstTrailingBit(vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 22u)], 22u)])), vec2<u32>(1u, 9984u ^ u_input.e)) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(62382u, select(u_input.c, global0.x, global1.c.x))), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(select(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, 1u), 22u)], func_1(u_input.a.yy), global2.x) | 32623u);
    var var_1 = Struct_2(func_2(all(vec3<bool>(false, !global2.x, func_2(global2.x).c.c.x))).e, vec4<f32>(_wgslsmith_f_op_f32(867f * 2063f), global1.b, -536f, _wgslsmith_f_op_f32(-global1.b)), func_2(global1.c.x).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.b, 1680f, global1.b), vec3<f32>(-527f, global1.b, global1.b))), vec3<f32>(global1.b, global1.b, global1.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.b, global1.b, global1.b), vec3<f32>(-1722f, -838f, -1218f))))), Struct_1(~_wgslsmith_add_i32(0i, abs(global4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1252f * global1.b))) + func_2(true).d.x), vec2<bool>(all(!global1.c), _wgslsmith_mod_u32(23349u, u_input.c) <= reverseBits(0u))));
    var var_2 = Struct_2(var_1.e, var_1.b, func_2(false).a, var_1.b.xwz, var_1.a);
    var var_3 = Struct_2(Struct_1(min(-2147483647i, u_input.a.x ^ ~global1.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-345f)) + 1f))), vec2<bool>(!any(vec4<bool>(global2.x, true, false, true)), false)), vec4<f32>(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1061f)))) + 862f), 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-416f, _wgslsmith_f_op_f32(-2338f - 145f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x))))), Struct_1(abs(global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b))) - 555f), vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(abs(var_1.b.wxz)), Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * var_1.b.x), var_2.e.c));
    var_3 = func_2(all(vec2<bool>(5932i > (var_2.e.a >> (1u % 32u)), _wgslsmith_mod_i32(var_2.e.a, u_input.d) >= -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.e.b + 1749f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_2.b.x))) * 157f));
}

