struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(1i, 0i), vec2<i32>(-46871i, 8284i), vec2<i32>(1i, -12749i), vec2<i32>(0i, 1i), vec2<i32>(-1i, 14415i), vec2<i32>(-32021i, -1i), vec2<i32>(1i, 18431i), vec2<i32>(29270i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(13131i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 39782i), vec2<i32>(-22782i, -2823i), vec2<i32>(0i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-48182i, -55069i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, 1i), vec2<i32>(1934i, -73896i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, -37717i), vec2<i32>(27677i, 1i), vec2<i32>(-39184i, -51503i), vec2<i32>(-1i, 1i), vec2<i32>(14254i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(-30791i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 12082i));

var<private> global2: i32 = -1i;

var<private> global3: array<vec3<bool>, 17>;

var<private> global4: array<i32, 6> = array<i32, 6>(-1i, i32(-2147483648), 0i, -1i, 26270i, 2844i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f - 208f) + _wgslsmith_f_op_f32(-545f * 177f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-322f)))), _wgslsmith_f_op_f32(sign(-453f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-663f))))), _wgslsmith_f_op_f32(f32(-1f) * -119f))));
    global2 = global4[_wgslsmith_index_u32(~30454u, 6u)];
    var var_1 = -1i;
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1106f, _wgslsmith_f_op_f32(-var_0.x), -2231f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-663f, -1136f, -732f)) + var_0.yxw)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.ywx))), Struct_1(min(~vec4<u32>(0u, 12821u, 4567u, u_input.a.x) << ((vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u) | vec4<u32>(u_input.a.x, 21947u, u_input.a.x, 1u)) % vec4<u32>(32u)), ~abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)))), ~u_input.a.x, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(225f + var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - -1096f), var_0.x)));
    global1 = array<vec2<i32>, 29>();
    return -1i;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = reverseBits(-(vec3<i32>(_wgslsmith_mod_i32(2147483647i, global4[_wgslsmith_index_u32(0u, 6u)]), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), 6u)], max(global4[_wgslsmith_index_u32(0u, 6u)], 2147483647i)) ^ vec3<i32>(func_3(global4[_wgslsmith_index_u32(14427u, 6u)], arg_0.ywz), 56622i, -60462i)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1226f))), -2217f)), arg_1, ~u_input.a.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(631f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(379f, -606f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-573f, 2767f), vec2<f32>(-346f, 162f)))), select(vec2<bool>(true, true), arg_0.wx, false))))));
    var var_2 = vec2<u32>(55112u, 1u) | u_input.a;
    let var_3 = Struct_3(var_1.a.x, true, vec4<bool>(true, true, all(vec3<bool>(0u <= u_input.a.x, true, !arg_0.x)), arg_0.x), Struct_2(var_0.yy << (vec2<u32>(4294967295u, min(7254u, 23047u)) % vec2<u32>(32u)), var_1.a.x), !(false & (arg_0.x || all(vec4<bool>(arg_0.x, arg_0.x, true, false)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * 368f));
    return !(!select(select(select(arg_0, vec4<bool>(false, arg_0.x, true, true), false), !vec4<bool>(true, arg_0.x, false, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, var_3.c.x, false), vec4<bool>(false, false, true, var_3.c.x), arg_0)), vec4<bool>(arg_0.x, all(arg_0.wz), true, var_3.c.x != var_3.b), true));
}

fn func_1() -> vec2<f32> {
    var var_0 = select(func_2(vec4<bool>(true, true, _wgslsmith_div_f32(-1000f, 746f) <= _wgslsmith_f_op_f32(select(1000f, -438f, true)), true), global0[_wgslsmith_index_u32(4294967295u, 15u)]), !select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(global3[_wgslsmith_index_u32(~(~(4294967295u & u_input.a.x)), 17u)]));
    global1 = array<vec2<i32>, 29>();
    var var_1 = u_input.a.x;
    let var_2 = global4[_wgslsmith_index_u32(~0u, 6u)];
    var_0 = !(!select(select(vec4<bool>(false, true, false, var_0.x), !vec4<bool>(false, true, false, var_0.x), vec4<bool>(true, var_0.x, true, true)), func_2(!vec4<bool>(false, false, var_0.x, var_0.x), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u))), !vec4<bool>(false, var_0.x, true, false)));
    return vec2<f32>(-652f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(123f)))))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: bool) -> StorageBuffer {
    global1 = array<vec2<i32>, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(sign(arg_0.d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.x * -459f), arg_0.d.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_0.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.d.x) * arg_0.a)))), select(vec3<bool>(!arg_2, any(vec4<bool>(arg_2, true, true, arg_2)), !arg_2), vec3<bool>(arg_2, arg_2, arg_2), arg_2))));
    return StorageBuffer(vec2<i32>(0i, select(~(~(-10248i)), -(~arg_1), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(select(firstTrailingBit(1i), -global4[_wgslsmith_index_u32(u_input.a.x, 6u)] | (1i >> (0u % 32u)), true) & ~4325i, 2147483647i);
    global0 = array<Struct_1, 15>();
    global1 = array<vec2<i32>, 29>();
    let var_1 = vec4<u32>(abs(u_input.a.x), u_input.a.x, 68762u, u_input.a.x);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-692f, 244f, -170f) + vec3<f32>(747f, 530f, 299f))))), global0[_wgslsmith_index_u32(~abs(reverseBits(_wgslsmith_div_u32(var_1.x, 0u))), 15u)], 4294967295u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-460f, _wgslsmith_f_op_f32(f32(-1f) * -1667f)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(839f, 1301f)), _wgslsmith_div_vec2_f32(vec2<f32>(1287f, -1288f), vec2<f32>(744f, -1831f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(849f, -1042f))))));
    let x = u_input.a;
    s_output = func_4(Struct_4(var_2.a, global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.c ^ 17145u, 3284u, u_input.a.x), var_2.b.a), _wgslsmith_f_op_vec2_f32(func_1())), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, ~var_2.c), 6u)], ~((u_input.a.x | var_1.x) << (4294967295u % 32u)) < ~abs(select(80324u, 0u, true)));
}

