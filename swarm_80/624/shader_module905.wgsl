struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3>;

var<private> global1: array<vec4<i32>, 7>;

var<private> global2: array<i32, 10> = array<i32, 10>(1i, -22241i, i32(-2147483648), -3053i, 0i, -60672i, i32(-2147483648), 65294i, -1i, 34671i);

var<private> global3: vec2<f32> = vec2<f32>(-979f, -600f);

var<private> global4: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> bool {
    global4 = arg_2 || true;
    global2 = array<i32, 10>();
    var var_0 = arg_3;
    let var_1 = Struct_1(arg_3.a, -firstLeadingBit(1i), ~vec2<u32>(u_input.a.x, firstLeadingBit(38170u)), select(select(select(vec2<bool>(true, true), !var_0.a, arg_2 == arg_3.a.x), vec2<bool>(select(false, true, true), true), !arg_3.d), select(select(select(arg_3.a, vec2<bool>(false, arg_3.d.x), false), select(arg_3.d, vec2<bool>(var_0.a.x, true), vec2<bool>(arg_0.a.x, arg_2)), arg_1.x != arg_3.b), !select(vec2<bool>(true, arg_3.d.x), var_0.a, arg_3.d), global3.x > -872f), arg_3.a.x));
    let var_2 = vec2<bool>(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2710f - _wgslsmith_div_f32(1554f, -1000f)) - 659f) < global3.x);
    return all(!(!(!(!vec3<bool>(arg_2, var_0.a.x, true)))));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_add_u32(firstTrailingBit(~1u), reverseBits(u_input.a.x));
    global4 = any(select(arg_0.yz, arg_0.zx, !select(!arg_0.xx, arg_0.yx, arg_0.zz)));
    var var_1 = Struct_1(select(vec2<bool>(all(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x))), select(true, select(true, false, arg_0.x), any(vec4<bool>(true, arg_0.x, true, false)))), vec2<bool>(all(arg_0.yy), !(!arg_0.x)), !(!(!vec2<bool>(arg_0.x, false)))), -(~(~global2[_wgslsmith_index_u32(17272u, 10u)] << (~12066u % 32u))), vec2<u32>(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(59018u, 23582u), vec2<u32>(14872u, 1u)), 1u)), select(select(vec2<bool>(true, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), arg_0.xx, select(vec2<bool>(true, true), select(arg_0.xz, vec2<bool>(false, arg_0.x), false), select(vec2<bool>(true, false), arg_0.xz, true))), select(vec2<bool>(true, true), vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, false)), select(arg_0.xx, vec2<bool>(arg_0.x, !arg_0.x), arg_0.x && false)));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.x, -476f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -929f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) + vec2<f32>(-272f, global3.x)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.x, global3.x), vec2<f32>(global3.x, global3.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -2215f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.x, global3.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, global3.x))), _wgslsmith_div_vec2_f32(vec2<f32>(global3.x, global3.x), vec2<f32>(global3.x, global3.x))))))));
    global2 = array<i32, 10>();
    return arg_0.x;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2439f, global3.x, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 905f, global3.x, global3.x) - vec4<f32>(global3.x, -879f, 509f, global3.x)), !arg_1.x)))) + vec4<f32>(-951f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - global3.x) + _wgslsmith_f_op_f32(round(143f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) + -1076f), _wgslsmith_f_op_f32(global3.x - global3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1054f, -1103f, -109f, global3.x))), vec4<f32>(-683f, global3.x, 758f, -403f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-600f)), _wgslsmith_f_op_f32(select(1215f, global3.x, arg_1.x)), 287f, _wgslsmith_f_op_f32(global3.x * 570f)))), select(!select(arg_1, !arg_1, arg_1), !select(select(vec4<bool>(false, arg_1.x, arg_1.x, true), arg_1, vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), arg_1, !arg_1), vec4<bool>(!all(vec4<bool>(false, arg_1.x, false, arg_1.x)), arg_1.x, any(!vec4<bool>(true, arg_1.x, false, arg_1.x)), arg_1.x))));
    var var_1 = !select(vec2<bool>(arg_1.x, true), !arg_1.xw, arg_1.x);
    global2 = array<i32, 10>();
    var var_2 = !arg_1.xy;
    global3 = _wgslsmith_f_op_vec2_f32(var_0.yz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(var_0.zz, _wgslsmith_f_op_vec2_f32(var_0.wz + vec2<f32>(-562f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1006f, global3.x))))));
    return Struct_1(select(vec2<bool>(false, !any(arg_1.wy)), select(select(!arg_1.xx, !vec2<bool>(arg_1.x, arg_1.x), true), vec2<bool>(arg_1.x, false), arg_1.wz), arg_1.xw), 3944i, firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), u_input.a), firstLeadingBit(0u))) | ~(~(u_input.a ^ u_input.a)), !arg_1.wx);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<vec3<u32>, 3>();
    global3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -590f) - _wgslsmith_f_op_f32(-185f - global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f))), 293f);
    let var_0 = func_4(_wgslsmith_mult_u32(_wgslsmith_mod_u32(min(4294967295u, arg_2.x), arg_0) << ((~6629u | ~arg_2.x) % 32u), ~(~(~arg_0))), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(func_2(Struct_1(vec2<bool>(true, true), arg_1, arg_2.zz, vec2<bool>(true, false)), global1[_wgslsmith_index_u32(45297u, 7u)], false, Struct_1(vec2<bool>(false, false), arg_1, vec2<u32>(arg_0, u_input.a.x), vec2<bool>(true, true))) & true, false, true, func_3(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), select(vec4<bool>(false, all(vec2<bool>(true, true)), true, func_3(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true)))), vec2<i32>(_wgslsmith_mult_i32(2147483647i, -1i), arg_1));
    let var_1 = (-787f >= global3.x) && !((arg_1 > _wgslsmith_add_i32(arg_1, 98510i)) && all(select(vec2<bool>(var_0.a.x, true), var_0.a, var_0.d)));
    let var_2 = var_0;
    return var_0;
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = false;
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.x, -1435f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(global3.x + global3.x)) * vec2<f32>(-888f, global3.x)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1866f, global3.x)))))))));
    return -549f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-527f, _wgslsmith_f_op_f32(global3.x * global3.x), _wgslsmith_f_op_f32(max(-2807f, global3.x)), global3.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(func_5(func_1(9259u, 1i, u_input.b.xxw))), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-600f + -2356f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1031f, global3.x, 1000f, 305f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, global3.x, global3.x, 123f))))))))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32((global2[_wgslsmith_index_u32(u_input.b.x, 10u)] >> (u_input.a.x % 32u)) | -2147483647i, 2147483647i) ^ global2[_wgslsmith_index_u32(~max(~4294967295u, max(1u, 4436u)), 10u)], _wgslsmith_clamp_i32(min(43219i << (u_input.b.x % 32u), global2[_wgslsmith_index_u32(u_input.a.x >> (~29683u % 32u), 10u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u ^ u_input.b.x, 10u)], -39952i, _wgslsmith_mult_i32(2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 10u)])), -_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(42150u, 10u)], global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]), vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], -2147483647i))), global2[_wgslsmith_index_u32(min(~u_input.a.x, firstLeadingBit(u_input.b.x)), 10u)]), ~(-14152i << (reverseBits(select(48408u, 4294967295u, true)) % 32u)), -_wgslsmith_sub_i32(-27512i, -_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(7103u, 10u)], 56700i)));
    var var_2 = ~(-1i);
    var var_3 = func_1(select(u_input.b.x >> (_wgslsmith_sub_u32(~u_input.a.x, func_1(u_input.b.x, 1i, vec3<u32>(u_input.a.x, 16070u, 44750u)).c.x) % 32u), 0u, true), -(-13644i ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(global2[_wgslsmith_index_u32(1u, 10u)], var_1.x, global2[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_add_vec3_i32(var_1.yzw, var_1.zzy))), firstTrailingBit(~_wgslsmith_mod_vec3_u32(u_input.b.yyw, vec3<u32>(u_input.a.x, 1u, 0u))) << (_wgslsmith_add_vec3_u32(~(~vec3<u32>(40493u, 48108u, u_input.a.x)), reverseBits(~vec3<u32>(u_input.a.x, 46441u, u_input.b.x))) % vec3<u32>(32u)));
    var var_4 = Struct_1(var_3.d, select(_wgslsmith_mult_i32(var_1.x, var_3.b), ~((var_1.x << (u_input.a.x % 32u)) >> (min(1u, 27851u) % 32u)), func_4(~(~u_input.a.x), select(!vec4<bool>(false, true, true, var_3.a.x), !vec4<bool>(var_3.d.x, true, var_3.a.x, var_3.d.x), all(vec4<bool>(var_3.d.x, false, false, var_3.a.x))), -min(var_1.wy, vec2<i32>(28214i, var_1.x))).a.x), vec2<u32>(firstTrailingBit(34387u) << (~u_input.a.x % 32u), 9151u), func_4(u_input.b.x, vec4<bool>(!any(vec3<bool>(true, false, var_3.a.x)), func_4(0u, vec4<bool>(true, var_3.a.x, var_3.d.x, var_3.a.x), vec2<i32>(1i, 1i)).a.x != var_3.d.x, select(!var_3.a.x, all(var_3.a), func_1(1u, -2147483647i, vec3<u32>(var_3.c.x, u_input.a.x, 62709u)).a.x), !var_3.a.x), vec2<i32>(48436i, -44748i)).d);
    let x = u_input.a;
    s_output = StorageBuffer(-1121f, 0i, 25255i, var_3.b, -1i);
}

