struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<f32, 15> = array<f32, 15>(-186f, 1007f, -1000f, -1312f, 2548f, 546f, -188f, 1538f, 2187f, -1110f, -1932f, -1032f, 1000f, -2074f, -536f);

var<private> global2: array<i32, 16>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(168f)), arg_2.b.x, _wgslsmith_f_op_f32(floor(arg_1.a.x)) >= global1[_wgslsmith_index_u32(_wgslsmith_div_u32(5154u, arg_0.x), 15u)]))), _wgslsmith_f_op_f32(round(-339f)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~5791u & ~u_input.c.x, 15u)])));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.a, arg_1.a, vec3<bool>(any(arg_2.a.zwy), arg_2.a.x, any(arg_2.a.wzw))))), abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, u_input.c.x), firstLeadingBit(u_input.c.x))) > ~reverseBits(_wgslsmith_dot_vec2_u32(arg_0.xw, u_input.c.xx)));
    var var_2 = select(select(!vec3<bool>(arg_2.a.x, arg_2.a.x, all(vec2<bool>(true, var_1.b))), arg_2.a.xww, true), vec3<bool>((arg_0.x << (arg_0.x % 32u)) > arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 15u)]) - _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 15u)]))) > var_1.a.x, true), !(any(arg_2.a) & all(vec3<bool>(true, false, true))) || false);
    let var_3 = ~firstLeadingBit(vec2<i32>(-2147483647i, _wgslsmith_div_i32(-1i, global2[_wgslsmith_index_u32(arg_0.x, 16u)])) | ~vec2<i32>(u_input.b, 0i));
    var var_4 = 439f;
    return any(!select(!select(vec4<bool>(true, true, arg_2.a.x, true), vec4<bool>(true, false, var_1.b, arg_1.b), var_2.x), !arg_2.a, any(arg_2.a.zyx)));
}

fn func_4(arg_0: i32, arg_1: bool) -> vec2<bool> {
    var var_0 = Struct_1(!vec4<bool>(true, false && all(vec2<bool>(arg_1, false)), arg_1, !arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(abs(53896u), 15u)], _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.c.x, 15u)]))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-944f, -954f) - vec2<f32>(global1[_wgslsmith_index_u32(0u, 15u)], -1655f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-421f, 759f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-888f, global1[_wgslsmith_index_u32(40743u, 15u)]))))));
    let var_1 = Struct_2(vec3<f32>(-1017f, var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-345f)), -947f)), false);
    let var_2 = Struct_1(!(!vec4<bool>(select(var_1.b, arg_1, false), all(var_0.a.yz), true, arg_1)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.x)) - _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(13626u, 15u)], _wgslsmith_f_op_f32(abs(-269f)), var_1.b == true))), _wgslsmith_div_f32(var_1.a.x, 278f)));
    return var_2.a.zz;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = -vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-3923i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, arg_3.b.x), 16u)]), 35548i), -(_wgslsmith_div_i32(1i, global2[_wgslsmith_index_u32(0u, 16u)]) | 0i));
    global2 = array<i32, 16>();
    var var_2 = select(func_4(u_input.a, all(vec3<bool>(!arg_1.a.x, func_3(u_input.c, arg_3.a, Struct_1(vec4<bool>(arg_2.b, arg_1.a.x, true, true), vec2<f32>(284f, var_0.b.x))), !arg_2.b))), arg_1.a.zw, var_0.a.x | false);
    let var_3 = arg_2;
    return Struct_2(vec3<f32>(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(abs(192f))), _wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1390f), _wgslsmith_f_op_f32(trunc(-1032f)))))), arg_2.b);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    global1 = array<f32, 15>();
    let var_0 = ~_wgslsmith_mod_u32(u_input.c.x, reverseBits(u_input.c.x));
    global1 = array<f32, 15>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, global1[_wgslsmith_index_u32(9062u, 15u)], 663f, -568f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], 1075f, arg_0.a.x, arg_1))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-860f, arg_0.a.x, -1365f, global1[_wgslsmith_index_u32(arg_2.x, 15u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_1, global1[_wgslsmith_index_u32(1u, 15u)], 672f))), true)))));
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~46928u, ~var_0), 16u)];
    return _wgslsmith_f_op_f32(abs(arg_0.a.x));
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 15u)] + 1740f)), _wgslsmith_f_op_f32(func_5(func_2(Struct_2(vec3<f32>(-489f, global1[_wgslsmith_index_u32(1u, 15u)], -222f), true), Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(global1[_wgslsmith_index_u32(1u, 15u)], -1000f)), Struct_2(vec3<f32>(-1163f, global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(1u, 15u)]), false), global0[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_f_op_f32(-456f * global1[_wgslsmith_index_u32(4294967295u, 15u)]), ~vec3<u32>(1u, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(14713u, 15u)] * 466f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1460f, -1390f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], 426f, 590f, -307f) - vec4<f32>(global1[_wgslsmith_index_u32(15125u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], 1972f, 1000f))))), func_4(max(-23560i, u_input.b), true != func_2(Struct_2(vec3<f32>(116f, -152f, global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), false), Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)])), Struct_2(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], -632f, global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), false), Struct_3(Struct_2(vec3<f32>(-659f, 807f, -490f), true), vec2<u32>(125522u, u_input.c.x))).b).x)));
    let var_1 = select(vec2<bool>(true, true), !(!vec2<bool>(u_input.c.x > u_input.c.x, true)), vec2<bool>(true, ((-77909i << (1u % 32u)) << (u_input.c.x % 32u)) < countOneBits(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 25872i, 1i))));
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    let var_2 = firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(u_input.b, _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), u_input.a)) >> (~firstTrailingBit(~(~u_input.c.yx)) % vec2<u32>(32u));
    return _wgslsmith_sub_vec2_i32(~(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, var_2.x), var_2 >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))) ^ var_2), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~15193u, 15u)], _wgslsmith_f_op_f32(1093f + -897f))))), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~u_input.c.xz, vec2<u32>(0u, u_input.c.x)), 15u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(175f * global1[_wgslsmith_index_u32(select(u_input.c.x, 0u, true) & ~u_input.c.x, 15u)])));
    global0 = array<Struct_3, 9>();
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -2713i), vec2<i32>(15003i, global2[_wgslsmith_index_u32(u_input.c.x, 16u)])), ~func_1()) & _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), -_wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(46631u, 16u)]), vec2<i32>(-2921i, 1i)) >> (u_input.c.yx % vec2<u32>(32u)), vec2<i32>(max(global2[_wgslsmith_index_u32(4294967295u, 16u)] & global2[_wgslsmith_index_u32(4294967295u, 16u)], 67917i), _wgslsmith_div_i32(1i, -global2[_wgslsmith_index_u32(u_input.c.x, 16u)])));
    let var_2 = !all(!vec2<bool>(all(vec3<bool>(false, true, false)), all(vec4<bool>(true, false, false, true))));
    global2 = array<i32, 16>();
    let var_3 = vec2<u32>(58305u, _wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec3_u32(~u_input.c.yzw, select(u_input.c.xzy, vec3<u32>(0u, 1u, u_input.c.x), vec3<bool>(var_2, true, true)))), 9062u));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 15u)]) - 755f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, var_3.x | _wgslsmith_sub_u32(var_3.x, var_3.x)), 15u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(var_0.yww, true), Struct_1(vec4<bool>(false, var_2, false, true), var_0.yx), Struct_2(var_0.yzx, var_2), Struct_3(Struct_2(vec3<f32>(var_0.x, var_0.x, global1[_wgslsmith_index_u32(0u, 15u)]), var_2), u_input.c.zx)).a.x + func_2(Struct_2(vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.c.x, 15u)], 731f), false), Struct_1(vec4<bool>(true, false, var_2, false), var_0.xz), Struct_2(vec3<f32>(-1414f, 738f, var_0.x), var_2), Struct_3(Struct_2(vec3<f32>(global1[_wgslsmith_index_u32(0u, 15u)], 178f, 116f), var_2), var_3)).a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-150f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-563f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(7755u, 15u)], 217f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3.x, 15u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.x, 18327i), -1i), !(!var_2)), min(~countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(31214u, 16u)])), ~(-vec2<i32>(global2[_wgslsmith_index_u32(0u, 16u)], 8772i) & firstTrailingBit(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(var_3.x, 16u)])))));
}

