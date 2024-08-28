struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<bool, 24>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = !select(!vec4<bool>(true, arg_1.x || false, u_input.a.x == -1i, true), !(!vec4<bool>(false, true, true, arg_2.c.x)), true);
    var_0 = select(select(!(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 24u)], arg_1.x, false), vec4<bool>(false, false, arg_2.c.x, arg_1.x), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], arg_1.x, global1[_wgslsmith_index_u32(arg_2.e.a, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)]))), vec4<bool>(true, !select(arg_1.x, global1[_wgslsmith_index_u32(arg_2.d.a, 24u)], false), select(false, true, var_0.x) | (arg_0.b > arg_0.b), false), !(!arg_2.c.x)), vec4<bool>(true, (~0u > reverseBits(u_input.d.x)) && global0[_wgslsmith_index_u32(arg_2.e.a, 1u)], any(select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(false, true, true, false), true)), arg_1.x), false);
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, arg_2.e.d), _wgslsmith_div_i32(~(-arg_2.a.x >> (1u % 32u)), ~(~(~(-26685i)))));
    let var_2 = arg_0;
    let var_3 = ~(~firstLeadingBit(u_input.d.yy & u_input.d.yz) | vec2<u32>(1u, 1u));
    return vec3<i32>(select(-2147483647i, arg_2.d.c, var_0.x), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), ~(2147483647i >> (countOneBits(var_3.x) % 32u))) >> (~(u_input.d & vec3<u32>(arg_0.a, 45185u, 0u)) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = vec2<u32>(u_input.d.x, 43096u);
    var var_1 = Struct_2(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, abs(u_input.a.x)), ~max(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(6924i, u_input.a.x, -16665i))), -reverseBits(func_3(Struct_1(u_input.c, -1279f, u_input.a.x, 0i), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(var_0.x, 24u)]), Struct_2(vec3<i32>(u_input.a.x, 2147483647i, 49616i), vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec2<bool>(true, false), Struct_1(1u, -1763f, -1i, 3928i), Struct_1(arg_0.x, -932f, u_input.a.x, -14059i)))), select(vec2<bool>(false, true), vec2<bool>(all(vec2<bool>(false, global0[_wgslsmith_index_u32(83250u, 1u)])), global1[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(~(u_input.d.x | u_input.d.x), 1u)], true)), Struct_1(37625u, -1652f, 0i, ~(firstTrailingBit(0i) << (1u % 32u))), Struct_1(108951u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-742f, 772f, false))) + -1535f), 0i, _wgslsmith_div_i32(-33014i, ~u_input.a.x)));
    let var_2 = Struct_2(-firstLeadingBit(abs(var_1.a)), vec3<i32>(-37996i, u_input.a.x, _wgslsmith_mult_i32(-27290i, -firstTrailingBit(-16009i))), vec2<bool>(global1[_wgslsmith_index_u32(var_1.d.a, 24u)], countOneBits(-var_1.a.x) <= ~u_input.a.x), var_1.d, Struct_1(abs(66786u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(31435u, 98071u), arg_0.zz) % 32u), 1000f, -_wgslsmith_dot_vec3_i32(select(var_1.a, vec3<i32>(u_input.a.x, var_1.a.x, 1i), vec3<bool>(var_1.c.x, true, false)), ~vec3<i32>(-2148i, -23044i, u_input.a.x)), ~firstLeadingBit(-17890i)));
    let var_3 = var_2;
    let var_4 = Struct_1(4294967295u, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.d.b, var_2.e.b))), 30724i, 1i);
    return select(select(!(!(!vec3<bool>(false, var_2.c.x, false))), vec3<bool>(all(vec3<bool>(true, true, true)), all(!vec4<bool>(var_1.c.x, var_1.c.x, global1[_wgslsmith_index_u32(36150u, 24u)], var_2.c.x)), (global1[_wgslsmith_index_u32(1u, 24u)] || global0[_wgslsmith_index_u32(var_1.e.a, 1u)]) | (47678u != arg_0.x)), !(!global1[_wgslsmith_index_u32(var_2.d.a, 24u)] & all(vec4<bool>(var_3.c.x, false, true, false)))), vec3<bool>(var_1.c.x, any(vec2<bool>(true, var_1.c.x)), !(!(0i <= var_2.d.d))), select(!var_3.c.x, !(4294967295u <= var_3.d.a), false) | all(vec4<bool>(all(var_3.c), 636f <= var_1.d.b, var_3.b.x > var_1.e.d, !var_1.c.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<i32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = Struct_2(arg_2, vec3<i32>(-1i, 2147483647i, min(-2147483647i, 0i)), vec2<bool>(any(select(func_2(vec4<u32>(1u, 42019u, u_input.b, 1u)), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 1u)], true), select(vec3<bool>(false, false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 24u)], true), global1[_wgslsmith_index_u32(arg_0.x, 24u)]))), global1[_wgslsmith_index_u32(arg_0.x, 24u)] || func_2(vec4<u32>(arg_0.x, 19639u, 1u, arg_0.x)).x), Struct_1(~0u, -681f, abs(_wgslsmith_sub_i32(arg_2.x, arg_3.x)), u_input.a.x), Struct_1(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1405f - 731f)) * _wgslsmith_f_op_f32(ceil(-848f))), arg_2.x, func_3(Struct_1(_wgslsmith_div_u32(u_input.d.x, 56437u), -1579f, -41329i, arg_2.x), vec3<bool>(!global1[_wgslsmith_index_u32(arg_0.x, 24u)], true, !global1[_wgslsmith_index_u32(7090u, 24u)]), Struct_2(arg_2, arg_2, vec2<bool>(true, true), Struct_1(1u, 1019f, 0i, arg_2.x), Struct_1(u_input.d.x, -1312f, u_input.a.x, arg_3.x))).x));
    let var_1 = var_0.e;
    global1 = array<bool, 24>();
    let var_2 = Struct_2(var_0.b, _wgslsmith_add_vec3_i32(var_0.a, _wgslsmith_div_vec3_i32(vec3<i32>(min(arg_3.x, 1i), -1i, i32(-1i) * -2147483647i), _wgslsmith_div_vec3_i32(abs(arg_2), arg_2))), select(var_0.c, vec2<bool>(!global0[_wgslsmith_index_u32(0u, 1u)], false), var_0.c), var_0.e, var_0.e);
    let var_3 = abs(_wgslsmith_sub_u32(~(25695u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, var_0.e.a), vec2<u32>(var_0.e.a, 1u))), var_0.d.a));
    return var_0.d.a >> (max(1u, min(~abs(var_3), _wgslsmith_dot_vec2_u32(arg_0.xx, reverseBits(u_input.d.xz)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec2<u32>(~u_input.b, u_input.b));
    var var_1 = _wgslsmith_mod_u32(u_input.d.x, func_1(~vec3<u32>(u_input.d.x, u_input.c, 1963u), max(_wgslsmith_mod_i32(u_input.a.x, 2790i), i32(-1i) * -12452i), ~abs(vec3<i32>(0i, u_input.a.x, u_input.a.x)), -_wgslsmith_sub_vec2_i32(u_input.a, u_input.a))) & ~4294967295u;
    var_1 = 29768u;
    let var_2 = Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -64902i, u_input.a.x), firstLeadingBit(-vec3<i32>(2147483647i, 0i, u_input.a.x))), vec3<i32>(u_input.a.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 13239i, 0i), vec3<i32>(-4185i, -26897i, u_input.a.x)) & -1i), abs(-u_input.a.x)), select(select(vec2<bool>(!global0[_wgslsmith_index_u32(var_0.x, 1u)], global1[_wgslsmith_index_u32(u_input.d.x >> (45070u % 32u), 24u)]), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 1u)], global1[_wgslsmith_index_u32(0u, 24u)]), true), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 1u)], global1[_wgslsmith_index_u32(4294967295u, 24u)])), !select(vec2<bool>(false, global1[_wgslsmith_index_u32(75371u, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(var_0.x, 24u)]), false), false), vec2<bool>(true, true)), Struct_1(_wgslsmith_sub_u32(u_input.b, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1575f)) * _wgslsmith_f_op_f32(177f - -2068f))), u_input.a.x, 1i), Struct_1(4294967295u, _wgslsmith_f_op_f32(trunc(-1208f)), countOneBits(_wgslsmith_mod_i32(u_input.a.x, 0i) >> (~1u % 32u)), max(u_input.a.x, u_input.a.x)));
    let var_3 = var_2.e;
    var var_4 = select(-1944f != var_3.b, var_2.c.x, true | (false != any(select(vec4<bool>(var_2.c.x, true, var_2.c.x, global1[_wgslsmith_index_u32(106440u, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_2.e.a, 24u)], global1[_wgslsmith_index_u32(var_3.a, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], true), global1[_wgslsmith_index_u32(1u, 24u)]))));
    var var_5 = !(true == global1[_wgslsmith_index_u32(1u, 24u)]);
    var var_6 = _wgslsmith_sub_i32(countOneBits(_wgslsmith_mod_i32(1i, 1i ^ var_3.d)), -2147483647i) & -21647i;
    var var_7 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.e.b)), _wgslsmith_f_op_f32(1844f - 304f), 1632f, 1944f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, var_2.e.b, var_2.d.b, var_2.d.b) - vec4<f32>(var_3.b, var_2.e.b, var_3.b, 254f))))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_3.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.e.b))), -356f, _wgslsmith_f_op_f32(-var_2.d.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_7.x)), min(65386i, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, 15964i), _wgslsmith_sub_i32(var_2.a.x, 68644i)))), -2434i, var_3.b);
}

