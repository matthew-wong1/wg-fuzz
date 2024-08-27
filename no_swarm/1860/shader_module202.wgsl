struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> bool {
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    var var_0 = _wgslsmith_div_vec2_f32(arg_2.a.yz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1244f, -1756f) - arg_0.a.zx))), arg_2.a.yx));
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(20149u, 4294967295u), 28u)];
}

fn func_3() -> i32 {
    var var_0 = Struct_1(vec3<f32>(314f, -362f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(173f + 2294f)))))), vec2<bool>(!(!all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], true))), _wgslsmith_dot_vec3_i32(u_input.a.xzy, ~u_input.a.yzy) == ~(-23000i)), ~0u, u_input.a.x, u_input.a.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(751f * _wgslsmith_f_op_f32(-var_0.a.x)), 1826f, var_0.a.x, -1689f);
    var_0 = Struct_1(vec3<f32>(-1365f, -939f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), select(var_0.b, vec2<bool>(!(!var_0.b.x), var_0.b.x), var_0.b), 53804u, firstTrailingBit(reverseBits(u_input.a.x)), var_0.d);
    let var_2 = Struct_1(var_0.a, !(!select(select(var_0.b, vec2<bool>(global0[_wgslsmith_index_u32(var_0.c, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), true), vec2<bool>(var_0.b.x, var_0.b.x), false)), ~var_0.c, -2147483647i, 1i);
    let var_3 = u_input.a.xwx;
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(min(u_input.a.yw, vec2<i32>(u_input.b, 0i)), vec2<i32>(0i, var_3.x))), _wgslsmith_clamp_vec2_i32(select(u_input.a.yw, var_3.zx, !vec2<bool>(false, var_0.b.x)), vec2<i32>(-var_3.x, _wgslsmith_mult_i32(var_0.e, 0i)), _wgslsmith_sub_vec2_i32(~u_input.a.yx, ~vec2<i32>(var_0.d, u_input.a.x)))), var_3.x);
}

fn func_1() -> f32 {
    global0 = array<bool, 28>();
    var var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1506f)));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * var_0.x))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-403f * -1468f), var_0.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, 1234f, var_0.x)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1132f, var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-1011f, -806f, var_0.x)), false)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-377f, 881f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(263f, var_0.x, 453f)), any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 28u)])))), vec3<f32>(-387f, _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -194f)), true))), !select(vec2<bool>(func_2(Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x), vec2<bool>(global0[_wgslsmith_index_u32(29743u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), u_input.c, u_input.b, -2147483647i), 35489u, Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 28u)], false), u_input.c, -1i, 2147483647i), -41875i), true), vec2<bool>(true, true), false), u_input.c, func_3(), abs(u_input.b) | countOneBits(u_input.b));
    var var_2 = Struct_1(var_1.a, select(select(vec2<bool>(true, var_1.b.x), var_1.b, true), select(var_1.b, select(var_1.b, select(var_1.b, vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)]), vec2<bool>(false, true)), var_1.b), !(!global0[_wgslsmith_index_u32(u_input.c, 28u)])), var_1.b), ~abs(firstTrailingBit(_wgslsmith_mod_u32(var_1.c, var_1.c))), var_1.d, 0i);
    return _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f) - var_1.a.x)), -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -997f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-922f, _wgslsmith_f_op_f32(-788f * -312f), any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(40783u, 28u)])))))))));
    let var_1 = Struct_1(vec3<f32>(327f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1337f), _wgslsmith_f_op_f32(f32(-1f) * -183f))))), _wgslsmith_f_op_f32(-217f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), vec2<bool>(true, all(vec3<bool>(false, 4294967295u > u_input.c, !global0[_wgslsmith_index_u32(0u, 28u)]))), ~u_input.c, 41859i & (u_input.a.x << (u_input.c % 32u)), min(-14306i, u_input.a.x));
    var var_2 = _wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, min(_wgslsmith_add_u32(4294967295u, u_input.c), countOneBits(65562u)), (var_1.c << (4294967295u % 32u)) >> (4294967295u % 32u), 2829u)), firstTrailingBit(~(~(~vec4<u32>(u_input.c, var_1.c, var_1.c, 4294967295u)))));
    let var_3 = true;
    let var_4 = !vec2<bool>(var_1.b.x, global0[_wgslsmith_index_u32(var_2.x, 28u)]);
    global0 = array<bool, 28>();
    var var_5 = 0u;
    var var_6 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_6.x)) - 1165f) - 1f), 4294967295u, vec2<u32>(66586u, 0u) << (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(floor(-127f)));
}

