struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-126f, vec4<u32>(59814u, 51336u, 97311u, 57824u), 0u), Struct_1(119f, vec4<u32>(308u, 87482u, 3095u, 1u), 1u));

var<private> global1: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(2147483647i, Struct_3(vec3<f32>(-831f, -130f, 705f)), vec4<bool>(true, false, false, true)), Struct_4(10979i, Struct_3(vec3<f32>(-1269f, 1000f, 1766f)), vec4<bool>(true, false, true, false)), Struct_4(-20392i, Struct_3(vec3<f32>(-772f, -528f, 1112f)), vec4<bool>(false, false, false, true)), Struct_4(-36307i, Struct_3(vec3<f32>(377f, 1764f, -1000f)), vec4<bool>(true, true, false, false)), Struct_4(i32(-2147483648), Struct_3(vec3<f32>(-769f, 2381f, -1799f)), vec4<bool>(true, false, false, true)), Struct_4(1i, Struct_3(vec3<f32>(-1346f, 1125f, 1208f)), vec4<bool>(true, false, true, false)), Struct_4(2147483647i, Struct_3(vec3<f32>(-775f, -440f, 1613f)), vec4<bool>(true, false, true, true)));

var<private> global2: array<vec3<f32>, 25>;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_2) -> vec3<u32> {
    global3 = arg_0.b;
    global1 = array<Struct_4, 7>();
    return ~vec3<u32>(~(~32926u), global0.b.c, ~(~max(4856u, 14926u)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>) -> vec2<i32> {
    let var_0 = global0.b.a;
    let var_1 = firstLeadingBit(i32(-1i) * -39361i);
    global1 = array<Struct_4, 7>();
    global2 = array<vec3<f32>, 25>();
    let var_2 = global0.a.b;
    return vec2<i32>(-2147483647i, countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.a, -41479i, 1i, -2147483647i) >> (abs(global0.a.b) % vec4<u32>(32u)), countOneBits(~vec4<i32>(-2147483647i, -638i, var_1, arg_0.a)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<f32> {
    let var_0 = arg_0.b;
    let var_1 = vec4<i32>(arg_3.x, _wgslsmith_mult_i32(~arg_3.x, -arg_3.x << (~var_0.c % 32u)) << (countOneBits(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, 1u), var_0.b.x)) % 32u), arg_3.x, arg_3.x);
    var var_2 = arg_1.c;
    var var_3 = !(!arg_1.c.x);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.a.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.b.a, 1684f)), -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -337f))) - -942f));
    return vec3<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.a)))) * _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.a, -1875f))), 553f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.x))) * _wgslsmith_f_op_f32(201f * _wgslsmith_f_op_f32(abs(-468f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_4(abs(max(_wgslsmith_mod_i32(1i, -85747i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-21427i, -1i, -1i, 14050i), vec4<i32>(-1i, 46497i, 8219i, 12867i)), reverseBits(~40588i))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1571f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-global0.b.a)), arg_0.x)), vec4<bool>(false, true, false, true));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.a.x)) * _wgslsmith_f_op_f32(1527f * -1226f))), var_0.c.x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2128f) - _wgslsmith_f_op_f32(floor(arg_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1083f, -157f))));
    var var_2 = -(~(-_wgslsmith_div_i32(0i, var_0.a)) & var_0.a);
    var_0 = Struct_4(14595i, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1357f, -2312f, 1112f) * vec3<f32>(1312f, arg_0.x, -566f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(arg_1.x, global3.a, 1466f)) + vec3<f32>(var_1.x, 1728f, 1000f)))), var_0.c);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -596f);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i) * -(func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 7u)], func_1(Struct_2(global0.a, Struct_1(global3.a, vec4<u32>(4294967295u, 36895u, 1u, global0.b.c), 37437u)))) & max(countOneBits(vec2<i32>(-2147483647i, 0i)), vec2<i32>(-25195i, 2147483647i) << (global0.a.b.xz % vec2<u32>(32u))));
    var var_1 = vec4<bool>(true, !any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false)), true, true);
    var_1 = select(select(!vec4<bool>(global3.c == 89636u, false, var_1.x | false, true), vec4<bool>(~global3.b.x != _wgslsmith_mult_u32(1u, 16760u), true, all(vec3<bool>(var_1.x, false, false)) || !var_1.x, false), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(global3.a, global3.b, 0u), global0.a), global1[_wgslsmith_index_u32(u_input.a.x, 7u)], Struct_3(global2[_wgslsmith_index_u32(global0.b.c, 25u)]), vec2<i32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 25u)])), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(global0.a.c, 25u)] * global2[_wgslsmith_index_u32(global0.a.c, 25u)]))))), select(vec4<bool>(true, true, func_4(vec3<f32>(-1000f, 315f, -1000f), _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(1u, 25u)] * vec3<f32>(global0.b.a, 571f, -1682f))), var_1.x), vec4<bool>(all(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), true, false != (global3.a < global3.a), all(!var_1.yxx)), var_1.x), func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.a, global0.b.a, global0.a.a), global2[_wgslsmith_index_u32(4294967295u, 25u)]) - vec3<f32>(global3.a, global0.a.a, global3.a)))), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~(~50776u), 25u)])));
    var_1 = select(!(!vec4<bool>(any(vec4<bool>(var_1.x, false, true, var_1.x)), var_1.x, true, any(vec3<bool>(var_1.x, var_1.x, var_1.x)))), select(select(select(vec4<bool>(false, true, true, var_1.x), select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true)), vec4<bool>(var_1.x, true, true, false)), select(select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), !vec4<bool>(var_1.x, false, true, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), var_1.x), vec4<bool>(true, !(var_1.x | var_1.x), true, false), !select(select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, true)), vec4<bool>(var_1.x, true, var_1.x, false), all(vec4<bool>(var_1.x, false, var_1.x, true)))), false);
    let var_2 = Struct_4(-2147483647i, Struct_3(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(4294967295u, 25u)])), select(!(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true), false)), !select(!vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), true), !(!(!vec4<bool>(false, false, var_1.x, true)))));
    let var_3 = global0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.x, 8985u);
}

