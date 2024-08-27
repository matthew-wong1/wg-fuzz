struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(45848u, 4294967295u, true);

var<private> global1: u32;

var<private> global2: f32 = 1317f;

var<private> global3: array<i32, 14>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    var var_0 = ~_wgslsmith_dot_vec2_u32(~abs(u_input.b.zz) << (~(~vec2<u32>(global0.b, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(global0.b | 4294967295u, _wgslsmith_div_u32(23027u, global0.a)), _wgslsmith_sub_u32(global0.a, 13525u)));
    let var_1 = Struct_1(_wgslsmith_div_u32(0u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(global0.a, 0u, global0.a, global0.a)))), u_input.a, global0.c);
    var var_2 = var_1;
    let var_3 = vec3<i32>(-_wgslsmith_mod_i32(1i, ~global3[_wgslsmith_index_u32(u_input.b.x, 14u)]) >> (((107981u & _wgslsmith_add_u32(var_2.b, global0.a)) & var_1.b) % 32u), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(0i, global3[_wgslsmith_index_u32(1u, 14u)])) << (firstLeadingBit(u_input.b.zx) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-26781i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 14u)]), vec2<i32>(2147483647i, 0i << (1u % 32u)))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, select(var_1.a, _wgslsmith_sub_u32(~global0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, var_1.b), u_input.b.xx)), all(!vec3<bool>(true, global0.c, false)))), 14u)]);
    let var_4 = _wgslsmith_f_op_f32(-365f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1595f, -1560f)))) + _wgslsmith_f_op_f32(abs(-1149f))));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    let var_0 = Struct_2(~u_input.b.zx, func_3());
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2179f * 1100f))))) + 122f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-629f, -606f, global0.c)))) - 845f);
}

fn func_1() -> vec2<u32> {
    var var_0 = vec4<f32>(1643f, 1190f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1485f - _wgslsmith_f_op_f32(func_2(Struct_1(global0.b, 0u, global0.c), 1u, vec2<u32>(global0.a, 2874u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1816f * 441f)), false)))), -289f);
    let var_1 = Struct_1(~0u, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(68460u, 6998u, 4294967295u, 73523u))), vec4<u32>(global0.a ^ global0.b, u_input.a, _wgslsmith_add_u32(u_input.b.x & u_input.b.x, firstTrailingBit(u_input.b.x)), 49095u)), _wgslsmith_mod_i32(-1i, global3[_wgslsmith_index_u32(~67845u, 14u)]) < global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, ~17602u, u_input.a) ^ 16050u, 14u)]);
    var_0 = vec4<f32>(-1641f, -468f, _wgslsmith_f_op_f32(select(529f, -1427f, !(!(!var_1.c)))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.x)))))));
    global0 = Struct_1(u_input.a, _wgslsmith_mult_u32(63809u, _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.a, 47678u), 5388u) >> (var_1.b % 32u)), true);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1532f)), _wgslsmith_f_op_f32(var_0.x * var_0.x), !var_1.c))) * 146f) + _wgslsmith_f_op_f32(-var_0.x));
    return select(~countOneBits(vec2<u32>(~4294967295u, 52887u)), reverseBits(firstTrailingBit(vec2<u32>(u_input.a, global0.a))), select(vec2<bool>(!func_3(), var_1.c), vec2<bool>(!global0.c & var_1.c, global0.c), !global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    var var_0 = Struct_1(~(60371u ^ _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.b.x), vec4<u32>(global0.a, 0u, global0.b, 4294967295u)), 65088u & global0.a)), firstLeadingBit(global0.b), global0.c);
    var var_1 = Struct_2(func_1(), false);
    var var_2 = Struct_1(~1u, u_input.b.x, any(select(vec3<bool>(var_0.c, var_0.c, any(vec4<bool>(false, false, var_0.c, true))), vec3<bool>(true, !var_1.b, true), vec3<bool>(all(vec4<bool>(true, var_1.b, var_0.c, var_1.b)), global0.c, false))));
    var var_3 = !vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_2.c, false), vec2<bool>(false, false)))), global0.c, true);
    var_2 = Struct_1(0u, 46245u, !func_3() || true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-266f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1400f)) - -1068f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(4294967295u, var_1.a.x, true), global0.a, vec2<u32>(0u, var_1.a.x))), -582f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1667f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1077f, _wgslsmith_f_op_f32(f32(-1f) * -170f))))), global3[_wgslsmith_index_u32(4294967295u, 14u)] << (42446u % 32u), global0.a);
}

