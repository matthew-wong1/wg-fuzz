struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: array<Struct_1, 14>;

var<private> global3: vec4<f32> = vec4<f32>(190f, 379f, 538f, -1127f);

var<private> global4: array<vec3<u32>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    return global1.xyw;
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> f32 {
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2074f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global3.x, global3.x)), global3.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(673f))))), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(global3.x * -352f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d * global0.d) * _wgslsmith_div_f32(-1919f, 1000f)) + _wgslsmith_div_f32(_wgslsmith_div_f32(943f, global0.d), _wgslsmith_f_op_f32(-global3.x)))));
    let var_0 = _wgslsmith_add_vec3_i32(~(~(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(u_input.b, u_input.b, 17066i)))), abs(reverseBits(firstTrailingBit(vec3<i32>(38957i, u_input.b, u_input.b)))));
    var var_1 = vec4<i32>(countOneBits(1i | u_input.b), var_0.x, abs(_wgslsmith_mult_i32(~0i, -2147483647i)), _wgslsmith_dot_vec2_i32(var_0.xy, abs(var_0.xx)));
    var var_2 = reverseBits(abs(arg_1.x) << (~1u % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(global3.zzw + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-805f, -787f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.d, 2354f)))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1197f), 290f));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = select(!select(select(select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(arg_1.c, false, true, arg_1.c), vec4<bool>(true, false, true, true)), vec4<bool>(global0.e, false, false, true), select(vec4<bool>(false, arg_1.c, true, true), vec4<bool>(arg_0.c, true, arg_1.e, true), arg_1.c)), select(!vec4<bool>(true, global1.x, global0.c, false), !vec4<bool>(false, arg_0.c, global0.c, arg_0.e), any(global1.wz)), vec4<bool>(true, all(vec4<bool>(false, arg_1.c, global0.e, false)), arg_0.e, true)), select(vec4<bool>(true | (u_input.b != u_input.b), all(func_2(arg_0, arg_0)), arg_1.e, arg_1.e), !select(vec4<bool>(false, false, false, arg_1.e), select(vec4<bool>(global0.c, true, arg_1.c, false), vec4<bool>(true, false, arg_0.e, arg_0.e), vec4<bool>(arg_1.e, false, true, false)), !global1.x), 16932i < ~(-u_input.b)), global0.c);
    let var_1 = vec2<bool>(~(~(arg_0.a.x << (1u % 32u))) < firstTrailingBit(67685u), _wgslsmith_mod_i32(max(u_input.b, 1i), u_input.b) != 6599i);
    let var_2 = Struct_1(u_input.a.yx, _wgslsmith_mult_u32(4294967295u, 1u), var_0.x, _wgslsmith_f_op_f32(-arg_0.d), arg_0.e);
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-224f, _wgslsmith_f_op_f32(arg_1.d * -764f), _wgslsmith_f_op_f32(-global0.d), global0.d))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_1.c, arg_0.a)), _wgslsmith_f_op_f32(-1265f + var_2.d), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_div_f32(-933f, arg_0.d)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -543f, arg_0.d, 161f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, -919f, global3.x, -1359f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d, arg_0.d, -849f, global3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, -1000f, 596f, global3.x))))));
    global4 = array<vec3<u32>, 21>();
    return true & var_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~(global0.a ^ global0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, global0.b, u_input.a.x, 4294967295u), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x)) >> (global0.a.x % 32u)), ~vec2<u32>(u_input.a.x, global0.b >> (u_input.a.x % 32u))), true, 580f, !func_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 25067u), 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)]));
    var var_0 = global2[_wgslsmith_index_u32(global0.b, 14u)];
    let var_1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(u_input.a.xy, vec2<u32>(0u, global0.a.x))), u_input.a.zx), global0.a);
    global1 = select(select(vec4<bool>(all(vec4<bool>(global1.x, true, true, var_0.c)), global0.d >= _wgslsmith_f_op_f32(f32(-1f) * -354f), global1.x, u_input.b == u_input.b), select(select(!vec4<bool>(var_0.e, false, global1.x, global1.x), vec4<bool>(global1.x, true, var_0.e, false), true), !select(vec4<bool>(false, var_0.e, global1.x, true), vec4<bool>(true, var_0.c, var_0.e, global1.x), vec4<bool>(var_0.c, var_0.e, true, false)), select(vec4<bool>(global0.e, global1.x, true, var_0.c), select(vec4<bool>(var_0.e, global1.x, false, false), vec4<bool>(true, false, global0.e, true), true), any(vec4<bool>(true, var_0.e, false, global0.e)))), !(!select(vec4<bool>(global0.c, false, true, true), vec4<bool>(global0.e, global1.x, global0.e, true), vec4<bool>(var_0.e, global0.e, global0.c, true)))), select(select(!select(vec4<bool>(true, global0.c, true, true), vec4<bool>(global1.x, global0.e, global0.c, false), false), select(select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, global0.c, true, var_0.e), vec4<bool>(global1.x, false, var_0.e, true)), vec4<bool>(global0.c, global0.c, true, true), global0.b >= 1u), !select(vec4<bool>(var_0.c, false, var_0.e, false), vec4<bool>(global0.e, false, var_0.c, var_0.e), vec4<bool>(false, true, var_0.e, var_0.e))), select(!vec4<bool>(var_0.e, true, global1.x, false), select(!vec4<bool>(false, false, false, var_0.c), !vec4<bool>(true, global0.c, global1.x, false), global3.x == 149f), vec4<bool>(!var_0.c, true, func_1(global2[_wgslsmith_index_u32(0u, 14u)], Struct_1(vec2<u32>(var_0.b, 4294967295u), var_1.x, var_0.e, -745f, false)), !var_0.e)), !select(select(vec4<bool>(var_0.e, false, true, global0.e), vec4<bool>(false, false, global0.e, false), global1.x), !vec4<bool>(global1.x, false, var_0.e, true), select(vec4<bool>(false, var_0.c, false, true), vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(false, true, false, true)))), !global1.x);
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(228f + global3.x)))), u_input.b);
}

