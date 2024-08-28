struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19>;

var<private> global1: f32 = -460f;

var<private> global2: vec2<bool>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = select(select(vec4<bool>(!(403u == u_input.b), true, true, any(select(vec2<bool>(global2.x, arg_3.b), arg_3.c, arg_3.c.x))), global0[_wgslsmith_index_u32(~(~(~u_input.b)), 19u)], true), select(global0[_wgslsmith_index_u32(u_input.b, 19u)], select(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(21683u, 19u)], !select(global0[_wgslsmith_index_u32(u_input.b, 19u)], vec4<bool>(global2.x, true, arg_0.c.x, arg_0.c.x), false)), !global0[_wgslsmith_index_u32(countOneBits(1u), 19u)]), select(global0[_wgslsmith_index_u32(~select(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), 22821u, !arg_2.c.x), 19u)], vec4<bool>(false, false, true, arg_0.c.x), false));
    let var_1 = arg_3;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(sign(-1685f)), var_1.a.x, -136f))))), !arg_2.c.x, vec2<bool>(~(~u_input.b) > u_input.b, any(!vec2<bool>(arg_2.c.x, global2.x))), arg_0.d);
    let var_3 = arg_0;
    var var_4 = var_2;
    return arg_2.a.x;
}

fn func_2(arg_0: u32) -> i32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(1f, 1f, 1f, 1f), !global2.x, select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, true), vec2<bool>(global2.x, global2.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -33537i, -6792i, 4698i), vec4<i32>(u_input.a, u_input.c, 46807i, u_input.c), vec4<i32>(u_input.a, 16965i, u_input.a, u_input.a))), vec4<i32>(u_input.a, -2147483647i, u_input.c, u_input.c) >> ((vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(4294967295u, u_input.b, u_input.b, 36348u) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(vec4<f32>(-1373f, 857f, 863f, 215f), !global2.x, vec2<bool>(true, global2.x), vec4<i32>(u_input.a, u_input.c, u_input.c, 0i)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-165f, -485f, 1449f, 271f))), global2.x, vec2<bool>(true, true), vec4<i32>(2147483647i, 1974i, -1i, u_input.c)))) - -596f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-341f - 857f), _wgslsmith_f_op_f32(427f + 2318f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f))), -547f)));
    global0 = array<vec4<bool>, 19>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1237f, 2157f, 698f, 1092f) + vec4<f32>(198f, 550f, 969f, 777f))))), true, select(select(select(!vec2<bool>(global2.x, true), vec2<bool>(true, true), vec2<bool>(false, global2.x)), select(select(vec2<bool>(false, true), vec2<bool>(global2.x, false), global2.x), vec2<bool>(false, global2.x), true), vec2<bool>(global2.x || true, true)), vec2<bool>(true, true), !(!any(vec2<bool>(global2.x, global2.x)))), vec4<i32>(-u_input.a, min(firstTrailingBit(reverseBits(u_input.a)), i32(-1i) * -9869i), 1i, ~(-39551i)));
    let var_1 = 21991i;
    global0 = array<vec4<bool>, 19>();
    return -78397i;
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, 924f, 797f, -392f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1228f, 554f, -1000f, 1392f), vec4<f32>(-540f, 284f, -964f, -1079f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2123f, -991f, 375f, -698f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1093f, 349f, 1083f, 857f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-694f, 411f, -1312f, 448f), vec4<f32>(1000f, 1000f, -1908f, -543f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, -104f, -440f, -267f))))), func_2(u_input.b) == -func_2(~1u), !vec2<bool>(global2.x, true), ~firstLeadingBit(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-7724i, 32205i, u_input.a, 2147483647i)), ~vec4<i32>(25342i, 1i, u_input.c, u_input.a))));
    var var_1 = reverseBits(_wgslsmith_dot_vec4_i32(var_0.d, ~_wgslsmith_mult_vec4_i32(var_0.d, var_0.d)) ^ abs(select(firstLeadingBit(2147483647i), -u_input.a, select(false, false, var_0.c.x))));
    var var_2 = ~u_input.a >> ((countOneBits(_wgslsmith_div_u32(u_input.b, 0u) << ((u_input.b << (u_input.b % 32u)) % 32u)) << (~43189u % 32u)) % 32u);
    var_0 = Struct_1(vec4<f32>(-1481f, _wgslsmith_f_op_f32(f32(-1f) * -928f), 549f, _wgslsmith_f_op_f32(max(-614f, var_0.a.x))), var_0.b, !select(!select(var_0.c, var_0.c, var_0.c.x), select(vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, var_0.b), vec2<bool>(true, global2.x), true), var_0.c), !global2.x), var_0.d);
    global2 = vec2<bool>(true, any(!(!global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 19u)])));
    return var_0.d.wx;
}

fn func_4(arg_0: vec2<i32>) -> StorageBuffer {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-633f - _wgslsmith_f_op_f32(max(445f, 1111f)))));
    global1 = -354f;
    let var_0 = vec2<u32>(countOneBits(u_input.b | 1u), select(~8018u, abs(u_input.b ^ 46789u) | u_input.b, global2.x));
    var var_1 = global2.x;
    let var_2 = 1i;
    return StorageBuffer(-990f, ~u_input.b, vec4<u32>(~var_0.x ^ (_wgslsmith_add_u32(1u, var_0.x) & 51875u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.x >> (u_input.b % 32u), firstLeadingBit(1u), var_0.x), u_input.b), ~4294967295u, min(var_0.x, var_0.x)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_2, 45069i, 41690i, 2147483647i)) << (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4834u, u_input.b, 46177u), vec4<u32>(1u, u_input.b, 1u, 0u))) % vec4<u32>(32u)), ~(-(~vec4<i32>(arg_0.x, -2147483647i, 13879i, u_input.a)))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -219f))), 1828f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1006f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.c;
    let var_1 = u_input.b;
    let x = u_input.a;
    s_output = func_4(func_1() & abs(vec2<i32>(u_input.c, ~(-1i))));
}

