struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(-4486i, 2147483647i, 1i, i32(-2147483648), 2147483647i, 0i, i32(-2147483648), 2147483647i, 26659i, 2147483647i, 72862i, -34081i, -38319i, 44012i, 0i, -1i, -18921i, 1402i, -21567i, -65576i, 17984i, -37589i, i32(-2147483648), -27591i, 1i, -20601i, -16971i, i32(-2147483648), 1i);

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<i32, 29>();
    var var_0 = any(vec4<bool>(any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.d.x > 35011u)), any(vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true)), true, true));
    let var_1 = vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(select(-671f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(527f, _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1776f), arg_0.b.x))), true)), 1615f, _wgslsmith_f_op_f32(round(global1.b.x)));
    var_0 = arg_0.d.x == ~1u;
    global1 = arg_0;
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-947f, _wgslsmith_f_op_f32(-global1.b.x))))), global1.b));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(arg_0, ~(-reverseBits(arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(global1.b)), _wgslsmith_f_op_vec2_f32(trunc(global1.b)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1277f, -293f)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(734f, global1.b.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.b)))))), -vec4<i32>(~(-18364i), 1i | global0[_wgslsmith_index_u32(u_input.d.x, 29u)], _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2182i, global1.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), vec3<i32>(-2147483647i, -1i, 2147483647i)), -arg_0.x), ~select(vec3<u32>(128091u, 1u, 1u) >> (abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.d.x)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(17591u, 0u, u_input.d.x), ~vec3<u32>(17178u, 78615u, u_input.b.x)), vec3<bool>(true, true, true)));
    var var_1 = vec2<f32>(490f, var_0.b.x);
    var_1 = _wgslsmith_f_op_vec2_f32(func_3(var_0));
    global1 = var_0;
    global1 = Struct_1(-3134i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(floor(var_1.x)))), 1839f), vec4<i32>(19088i >> (~var_0.d.x % 32u), max(_wgslsmith_add_i32(arg_0.x, ~6353i), u_input.a.x), ((-36494i << (0u % 32u)) >> (reverseBits(var_0.d.x) % 32u)) | _wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(77396u, 29u)], _wgslsmith_mod_i32(2147483647i, 10102i)), var_0.a), u_input.d << (var_0.d % vec3<u32>(32u)));
    return var_0;
}

fn func_1(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b - arg_0.xx)), vec2<f32>(_wgslsmith_f_op_f32(max(-145f, global1.b.x)), global1.b.x)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b.x * 1003f))), _wgslsmith_f_op_f32(286f * -1000f)))));
    var var_1 = func_2(~vec2<i32>(global0[_wgslsmith_index_u32(16239u, 29u)], 38722i));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_1.b.x)), _wgslsmith_f_op_f32(trunc(var_0.x))));
    var var_3 = select(86243u, var_1.d.x, true);
    var_1 = Struct_1(u_input.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x - global1.b.x), var_0.x)), vec2<f32>(var_0.x, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(2147483647i, arg_0.zw, vec4<i32>(global0[_wgslsmith_index_u32(1u, 29u)], var_1.a, 1i, -23247i), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))).x)), min(vec4<i32>(-8990i, global1.c.x, -2147483647i, global1.a), vec4<i32>(-1i) * -var_1.c), u_input.b);
    return select(vec4<i32>(global0[_wgslsmith_index_u32(func_2(func_2(vec2<i32>(global1.c.x, 66372i) >> (vec2<u32>(global1.d.x, 0u) % vec2<u32>(32u))).c.wz).d.x, 29u)], abs(_wgslsmith_clamp_i32(0i << (global1.d.x % 32u), global0[_wgslsmith_index_u32(global1.d.x, 29u)], global0[_wgslsmith_index_u32(~var_1.d.x, 29u)])), ~_wgslsmith_clamp_i32(1i, countOneBits(1i), ~u_input.c), max(_wgslsmith_dot_vec3_i32(vec3<i32>(16361i, -8101i, var_1.a), var_1.c.xwy), -global1.c.x) << (var_1.d.x % 32u)), vec4<i32>(var_1.c.x, _wgslsmith_add_i32(select(-var_1.c.x, _wgslsmith_mod_i32(0i, 44044i), true), 1i), u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-5445i, 50657i) & u_input.a.zx, global1.c.yx), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.c, -134i), var_1.c.ww))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(func_2(vec2<i32>(-7613i, global1.a)).a != (var_1.a | 67951i), false, all(vec4<bool>(false, true, true, true)), true), vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3.c.xww;
    var var_1 = Struct_1(arg_1.x, _wgslsmith_f_op_vec2_f32(func_3(func_2(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 28355i) & arg_3.c.wy, vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]) ^ arg_2.c.xz)))), max(vec4<i32>(-_wgslsmith_dot_vec3_i32(u_input.a.zwy, var_0), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(51231u, 65030u)), 29u)], -35831i), ~(-24469i), 3934i), _wgslsmith_add_vec4_i32(reverseBits(arg_3.c), global1.c)), ~arg_3.d);
    let var_2 = _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-650f + -1506f)))));
    let var_3 = func_2(arg_2.c.yz);
    var_1 = arg_2;
    return var_3;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    let var_0 = vec4<bool>(true, !((any(vec2<bool>(false, false)) | true) == any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))), any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(false, true)), all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.x))) > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), 260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -137f)))));
    let var_1 = Struct_1(~(global1.c.x >> (~(~67889u) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(func_2(-u_input.a.xz)))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -1000f, 946f, arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1416f, -1780f, global1.b.x, arg_0.b.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 492f, arg_0.b.x, 302f))))), ~countOneBits(func_2(vec2<i32>(arg_0.a, arg_0.c.x)).d));
    return func_4(~((u_input.b.x ^ 29306u) | ~1u) << (~global1.d.x % 32u), -arg_0.c.xx, func_4(global1.d.x >> (arg_0.d.x % 32u), _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(13705i), func_2(arg_0.c.yz).a), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c.x, global1.c.x) >> (var_1.d.xz % vec2<u32>(32u)), ~vec2<i32>(global0[_wgslsmith_index_u32(var_1.d.x, 29u)], 8944i), vec2<i32>(-39506i, 0i))), arg_0, var_1), func_2(~vec2<i32>(15902i, min(var_1.c.x, -7526i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(firstTrailingBit(~13620u), vec2<i32>(global0[_wgslsmith_index_u32(~4294967295u, 29u)], 1i), Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(global1.b * vec2<f32>(global1.b.x, -455f)), ~func_1(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, -703f)), ~(~u_input.d)), Struct_1(-global0[_wgslsmith_index_u32(global1.d.x, 29u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global1.b)) + _wgslsmith_f_op_vec2_f32(-global1.b)), global1.c, ~(vec3<u32>(global1.d.x, 1u, global1.d.x) ^ vec3<u32>(global1.d.x, u_input.d.x, u_input.b.x)))));
    let var_1 = abs(global1.d.yy);
    let var_2 = max(~(~(var_0.c.zwy & _wgslsmith_mult_vec3_i32(global1.c.zyz, u_input.a.xwx))), var_0.c.zww);
    var var_3 = 0u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-448f + _wgslsmith_f_op_f32(step(-885f, _wgslsmith_f_op_f32(trunc(global1.b.x)))))));
    var var_5 = vec4<bool>(true, true, any(vec3<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), false)), !(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))));
    let var_6 = min(vec4<i32>(func_4(~0u, vec2<i32>(var_2.x, global0[_wgslsmith_index_u32(var_1.x, 29u)]), func_5(Struct_1(-1i, var_0.b, vec4<i32>(u_input.c, var_0.a, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 29u)]), var_0.d)), func_2(u_input.a.xx)).a & global1.c.x, -32715i, global1.c.x, _wgslsmith_mult_i32(firstLeadingBit(u_input.c), -global1.c.x)), firstTrailingBit(var_0.c));
    var var_7 = func_2(select(~var_6.xw, vec2<i32>(var_0.a, global1.c.x), true) >> (vec2<u32>(~func_5(Struct_1(-44850i, vec2<f32>(-1322f, 779f), vec4<i32>(47831i, global0[_wgslsmith_index_u32(global1.d.x, 29u)], -40592i, 42658i), vec3<u32>(79701u, u_input.d.x, var_1.x))).d.x, var_0.d.x) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(countOneBits(reverseBits(var_7.d.x)), global1.d.x | ~var_1.x), var_7.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(0i, vec2<f32>(-1114f, var_4), vec4<i32>(1i, var_2.x, -2147483647i, u_input.a.x), global1.d))).x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.x * var_4), _wgslsmith_f_op_f32(1000f - -471f))))), var_4);
}

