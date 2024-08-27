struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: vec4<bool>;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    global3 = array<Struct_1, 7>();
    var var_0 = all(arg_0.b.wzy);
    global2 = !select(select(!(!vec3<bool>(global2.x, arg_0.a.x, false)), vec3<bool>(global1.x, false, !global2.x), arg_0.a.wwy), select(select(!vec3<bool>(false, arg_0.b.x, global2.x), arg_0.a.zxz, 99919u < global0[_wgslsmith_index_u32(u_input.b, 8u)]), !(!vec3<bool>(arg_0.a.x, global1.x, global1.x)), !global1.yzz), global1.zzw);
    let var_1 = -174f;
    var var_2 = Struct_1(arg_0.a, arg_0.b);
    return any(var_2.a.yxx);
}

fn func_2(arg_0: f32, arg_1: bool) -> vec3<f32> {
    global1 = !vec4<bool>(global1.x, true, func_3(Struct_1(vec4<bool>(global1.x, false, true, global1.x), !vec4<bool>(global2.x, false, false, true)), arg_0), !(780f <= _wgslsmith_div_f32(1221f, arg_0)));
    let var_0 = all(select(!global1.zy, !global1.xx, select(select(!global2.zy, vec2<bool>(true, true), vec2<bool>(arg_1, arg_1)), !(!global1.xy), global1.xz)));
    global2 = select(select(vec3<bool>(func_3(global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(18132u, 8u)], 7u)], 584f), false, !arg_1), !select(!vec3<bool>(true, arg_1, true), global1.zzz, vec3<bool>(global2.x, var_0, global1.x)), select(select(!global1.zwx, global1.wzx, vec3<bool>(arg_1, true, arg_1)), select(!global1.xyx, global1.yzw, select(vec3<bool>(false, global2.x, true), vec3<bool>(global1.x, var_0, false), arg_1)), arg_0 != -1000f)), select(!select(!global1.ywz, global1.xww, true), !vec3<bool>(true, global1.x | false, func_3(Struct_1(vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(var_0, global2.x, global2.x, var_0)), -1000f)), any(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, global1.x, var_0), global1.zzy))), select(select(vec3<bool>(any(vec4<bool>(true, arg_1, true, global2.x)), u_input.c == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], false), global1.xyx, global1.zyz), select(global1.ywy, !global1.xww, false), global1.yzz));
    let var_1 = true;
    global0 = array<u32, 8>();
    return vec3<f32>(298f, 303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1145f * _wgslsmith_f_op_f32(560f - _wgslsmith_f_op_f32(trunc(arg_0))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = u_input.b;
    let var_1 = vec4<i32>(~5935i, 0i, ~(~(~(-1i) << (_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 41756u) % 32u))), abs(~firstLeadingBit(~1i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1414f)) - _wgslsmith_f_op_f32(round(-274f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-413f, 609f)) + _wgslsmith_div_f32(1577f, -1990f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-637f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(415f, 1604f)) + -1000f))));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(-2579f, any(arg_3.b))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-556f, 511f, var_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -314f) * vec3<f32>(-1343f, var_2, var_2)), all(global1.zy)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, _wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_div_f32(-995f, 1328f)))))));
    return any(var_3.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec4<bool>(true, global2.x, _wgslsmith_f_op_f32(select(1488f, -292f, global1.x)) <= _wgslsmith_f_op_f32(-1000f + -1000f), select(true, global1.x, global2.x)), select(vec4<bool>(true, true, true, global1.x & false), vec4<bool>(global2.x, all(vec2<bool>(global1.x, true)), func_1(global3[_wgslsmith_index_u32(u_input.b, 7u)], false, global3[_wgslsmith_index_u32(4294967295u, 7u)], Struct_1(vec4<bool>(true, false, false, global2.x), vec4<bool>(true, true, false, false))), !global2.x), any(select(vec3<bool>(false, global1.x, true), global1.xyy, global1.ywz))), true), vec4<bool>(global2.x, true, !(func_1(Struct_1(vec4<bool>(global1.x, global2.x, true, false), vec4<bool>(true, false, global1.x, true)), global2.x, Struct_1(vec4<bool>(true, global1.x, global2.x, global1.x), vec4<bool>(false, global1.x, global1.x, false)), global3[_wgslsmith_index_u32(73784u, 7u)]) != (u_input.b <= 15960u)), global2.x));
    global0 = array<u32, 8>();
    let var_1 = var_0;
    global2 = !vec3<bool>(var_1.b.x, !(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 8u)] <= (u_input.b ^ 104732u)), all(!global1.zy));
    global2 = vec3<bool>(var_0.b.x & false, true, true);
    let var_2 = global3[_wgslsmith_index_u32(~(~51237u), 7u)];
    let var_3 = -_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(1i, 1i, 1i)), vec3<i32>(-_wgslsmith_mult_i32(25585i, 47549i), abs(-17292i >> (global0[_wgslsmith_index_u32(u_input.c, 8u)] % 32u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 12602i), vec3<i32>(4231i, 0i, 4893i))));
    var var_4 = var_0;
    global3 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(reverseBits(vec4<i32>(var_3.x, 1i, 0i, var_3.x))), vec4<i32>(var_3.x, select(var_3.x, 0i, false), var_3.x, 1i), min(vec4<i32>(1i, 1i, -53210i, 40557i), vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(41195i, var_3.x, var_3.x, var_3.x), vec4<i32>(var_3.x, -48655i, var_3.x, 1i))), vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(var_3.x, -1i)), 1i, ~9155i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_3.x, -7106i, var_3.x), vec4<i32>(-15120i, var_3.x, var_3.x, -2147483647i)), var_3.x))));
}

