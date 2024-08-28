struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<bool, 2>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(u_input.b.xyw, vec3<u32>(29758u, u_input.a, 77495u), u_input.b.yxz) | u_input.b.yzx, u_input.b.xyx));
    let var_1 = vec4<u32>(min(10802u, global2.c), 1u, 71492u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(69503u, var_0, 25873u), global2.c)));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.d)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_2.d, _wgslsmith_f_op_f32(global2.e.x + arg_1.d), global3[_wgslsmith_index_u32(abs(var_1.x), 2u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-830f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-731f, _wgslsmith_f_op_f32(floor(global2.e.x))))), global2.d, _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -497f), arg_1.d)))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global1 = Struct_1(any(select(!vec3<bool>(global2.a, global1.a, global3[_wgslsmith_index_u32(68514u, 2u)]), !select(vec3<bool>(false, true, global2.a), vec3<bool>(global4.x, global3[_wgslsmith_index_u32(global1.c, 2u)], false), global3[_wgslsmith_index_u32(1u, 2u)]), !vec3<bool>(false, true, global4.x))), (u_input.d << (~arg_0.zx % vec2<u32>(32u))) << (u_input.b.wz % vec2<u32>(32u)), 4294967295u, -958f, global1.e);
    let var_0 = min(u_input.d.x, ~(~(-53228i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1072f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1306f), -536f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, 177f, global1.d, -527f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1192f, global2.e.x, global2.d)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, -755f, global1.d, global1.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, global2.e.x, 212f, global2.e.x))) + _wgslsmith_f_op_vec4_f32(func_3(min(vec2<u32>(global1.c, u_input.a), arg_0.xx), Struct_1(global1.a, global2.b, global1.c, 360f, vec3<f32>(global2.d, global2.e.x, 1000f)), Struct_1(true, vec2<i32>(global1.b.x, global2.b.x), 40087u, global1.d, global1.e))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.d, 403f, global2.e.x) * vec4<f32>(global1.e.x, global1.d, global1.e.x, global2.e.x)) - _wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(2938u, 142u), Struct_1(true, global1.b, arg_0.x, global2.d, global1.e), Struct_1(false, global1.b, u_input.c, -1862f, vec3<f32>(1349f, 1269f, global2.d)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, global1.e.x, global2.d, -285f) + vec4<f32>(-136f, 178f, global1.d, -115f))))));
    let var_2 = vec3<bool>(global4.x, select(all(!select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.c, 2u)], global4.x), vec4<bool>(global4.x, global2.a, false, false), false)), !select(select(true, true, false), global1.e.x >= -2134f, all(vec2<bool>(global4.x, global3[_wgslsmith_index_u32(global1.c, 2u)]))), var_0 >= 2147483647i), all(!vec3<bool>(global1.a, global4.x, false)));
    var var_3 = _wgslsmith_dot_vec4_i32(~select(vec4<i32>(_wgslsmith_mod_i32(var_0, global2.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(5389i, -48889i, global2.b.x), vec3<i32>(0i, 1452i, -2147483647i)), global2.b.x >> (global2.c % 32u), 0i), ~(-vec4<i32>(u_input.d.x, var_0, -2147483647i, -19017i)), !vec4<bool>(false, global1.a, false, global4.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, ~global1.b.x, _wgslsmith_add_i32(~u_input.d.x, countOneBits(var_0)), (var_0 ^ 0i) ^ 2147483647i), firstTrailingBit(~vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))));
    return Struct_1(!(!(global2.d > _wgslsmith_f_op_f32(-global2.e.x))), _wgslsmith_sub_vec2_i32(-u_input.d, u_input.d), global1.c, -441f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(global2.e.x)), 378f, 533f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.e), vec3<f32>(_wgslsmith_f_op_f32(global2.d - global2.d), 982f, 1775f))), all(var_2))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(global2.d, -301f);
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(min(~(~global1.c), 28506u), ~(_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(0u, 0u)) >> (~u_input.a % 32u))), abs(~max(_wgslsmith_mod_u32(global1.c, 4294967295u), firstTrailingBit(4294967295u))), 1u, firstLeadingBit(select(global2.c, ~(~0u), !(!arg_1.a))));
    global0 = array<vec4<u32>, 21>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1027f)));
    var var_3 = Struct_1(!(false || global4.x), ~vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d, arg_1.b), ~(~global2.b.x)), global2.c << (1u % 32u), arg_1.e.x, global1.e);
    return Struct_1(global4.x, global1.b, _wgslsmith_sub_u32(~global1.c, _wgslsmith_sub_u32(arg_1.c, 10578u)), -1313f, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1718f, -672f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1000f))))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    global0 = array<vec4<u32>, 21>();
    global4 = !select(!(!(!vec2<bool>(global3[_wgslsmith_index_u32(arg_0.c, 2u)], global3[_wgslsmith_index_u32(arg_1.c, 2u)]))), !(!(!vec2<bool>(true, global4.x))), !vec2<bool>(global2.a, any(vec2<bool>(arg_0.a, arg_3.a))));
    let var_0 = vec4<bool>(false & !(!(!arg_3.a)), !(true || global1.a), all(!(!(!vec4<bool>(arg_3.a, arg_1.a, global3[_wgslsmith_index_u32(39727u, 2u)], arg_0.a)))), func_4(arg_1.a, Struct_1(true, global2.b, 24557u, -387f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, 2144f, -931f)), vec3<f32>(global2.d, global2.d, 676f))), arg_1.e.zx).a);
    global0 = array<vec4<u32>, 21>();
    var var_1 = vec2<bool>(true, 1u == func_4(true, Struct_1(any(var_0.yxw), vec2<i32>(2147483647i, arg_2.x) >> (u_input.b.xz % vec2<u32>(32u)), 4294967295u ^ arg_3.c, _wgslsmith_f_op_f32(floor(545f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(329f, arg_1.e.x, 1241f) + global2.e)), global2.e.xx).c);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.e.x)), arg_3.e.x), 1000f);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: i32) -> vec4<i32> {
    global1 = Struct_1(any(!select(select(vec2<bool>(global2.a, true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 2u)], true), vec2<bool>(global2.a, global1.a)), vec2<bool>(false, global2.a), vec2<bool>(true, global1.a))), -(arg_2 & select(vec2<i32>(global2.b.x, arg_3), vec2<i32>(-1i, arg_2.x), !vec2<bool>(global2.a, global4.x))), 0u, _wgslsmith_f_op_f32(func_5(func_4(false, func_2(global0[_wgslsmith_index_u32(global1.c << (global1.c % 32u), 21u)]), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.e.xy + global2.e.xy), arg_1.zx, vec2<bool>(true, false)))), func_4(true, func_2(max(u_input.b, vec4<u32>(1u, 63634u, 62854u, 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.e.x, arg_0), global2.e.zz))), abs(select(u_input.d, vec2<i32>(-33185i, 1i), global3[_wgslsmith_index_u32(select(0u, 9698u, global1.a), 2u)])), Struct_1(false, -vec2<i32>(arg_2.x, global1.b.x), 1u, global1.e.x, _wgslsmith_f_op_vec3_f32(global2.e - _wgslsmith_f_op_vec3_f32(arg_1 + arg_1))))), arg_1);
    var var_0 = global2.e.xy;
    global2 = Struct_1(func_4(all(!select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], false, global1.a), vec3<bool>(false, true, false))), func_2(vec4<u32>(4294967295u, 1u, 1u, 0u) << (vec4<u32>(global1.c, u_input.a, 0u, u_input.c) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1111f, -616f), global1.e.xy)), vec2<f32>(753f, -1000f), global4.x && global1.a)))).a, -arg_2, global1.c, _wgslsmith_div_f32(-144f, global1.e.x), vec3<f32>(188f, _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(step(global2.d, 1044f))));
    global3 = array<bool, 2>();
    var var_1 = Struct_1(false, vec2<i32>(-1i) * -vec2<i32>(5351i, global1.b.x), ~(~1u), 1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3319f, arg_0, 1008f)) * vec3<f32>(130f, -1224f, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, 1292f, global2.e.x))), !(!vec3<bool>(false, global2.a, true))))));
    return vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(max(global1.b, var_1.b), -var_1.b), global1.b), _wgslsmith_add_i32(-33222i, u_input.d.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(i32(-1i) * -46091i, reverseBits(-23978i)), -1i) << (1u % 32u), -firstLeadingBit(_wgslsmith_mod_i32(~global1.b.x, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.e.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(444f)), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + 892f))) - global1.e), reverseBits(-firstTrailingBit(_wgslsmith_mod_vec2_i32(global1.b, vec2<i32>(global1.b.x, 1i)))), -34745i);
    var var_1 = func_2(~vec4<u32>(1u, abs(global1.c), global2.c, _wgslsmith_mod_u32(0u, ~0u)));
    global1 = func_2(vec4<u32>(5705u >> (max(var_1.c, var_1.c) % 32u), firstTrailingBit(countOneBits(7094u)), u_input.b.x, ~_wgslsmith_add_u32(global1.c, 6849u)) & select(~u_input.b | global0[_wgslsmith_index_u32(var_1.c, 21u)], global0[_wgslsmith_index_u32(~(~var_1.c), 21u)], all(select(vec2<bool>(false, false), vec2<bool>(true, global4.x), vec2<bool>(global2.a, global1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.d - global2.d), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.b.x, 26255i, 59247i, var_1.b.x), vec4<i32>(0i, -57366i, -16840i, global1.b.x)) >> (~_wgslsmith_mult_u32(var_1.c, 4294967295u) % 32u), var_0.x));
}

