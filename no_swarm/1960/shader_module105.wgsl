struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 3>;

var<private> global2: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(2147483647i);
    global2 = Struct_2(var_0.a);
    global2 = Struct_2(-u_input.b << (~(~41274u) % 32u));
    global0 = all(select(!vec3<bool>(true, true, 0i != u_input.b), vec3<bool>(true, true, true), true));
    var var_1 = 29554u;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(335f + -331f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f - 1000f))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(-1899f, _wgslsmith_f_op_f32(-844f + -1295f))))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global1 = array<i32, 3>();
    global2 = arg_0;
    global2 = arg_0;
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-946f)) + _wgslsmith_f_op_f32(f32(-1f) * -360f)))) * vec2<f32>(-2139f, _wgslsmith_f_op_f32(trunc(1378f))));
    let var_1 = ~_wgslsmith_add_i32(~(i32(-1i) * -4516i), firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec3<i32>(arg_0.a, global2.a, -1i), vec3<i32>(0i, -23879i, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -32975i, u_input.b), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 1i, -2147483647i)))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -521f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(549f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f), var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    global2 = arg_2;
    var var_0 = vec3<i32>(~(~(-(~arg_2.a))), ~((-22645i | firstTrailingBit(6521i)) >> (1u % 32u)), 0i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(890f * arg_0.a) - _wgslsmith_f_op_f32(-func_2(Struct_2(var_0.x)).a))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a)));
    let var_3 = arg_0;
    return func_2(Struct_2(max(2147483647i, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x), 3u)])));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = arg_1;
    global2 = Struct_2(-11498i);
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(global2.a, -28312i, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec3<i32>(31001i, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(44356u, 3u)]), vec3<bool>(true, true, true)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 9662u, 33643u), ~vec3<u32>(u_input.a.x, u_input.a.x, 1u)) % vec3<u32>(32u)), vec3<i32>(-u_input.b, global2.a << (_wgslsmith_add_u32(u_input.a.x, 12531u) % 32u), -select(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], true))), abs(vec3<i32>(-firstTrailingBit(u_input.b), 0i, u_input.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(779f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.a, 433f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(258f + 518f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))), arg_0.a, all(vec3<bool>(arg_1, false, arg_1))))));
    var_1 = vec4<f32>(arg_0.a, arg_0.a, -1608f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(821f * arg_0.a) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + var_1.x) * 1001f), 1007f)));
    return func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(976f)) * -1036f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1037f, -265f))) + _wgslsmith_f_op_vec2_f32(-var_1.yx)), Struct_2(-1i));
}

fn func_1() -> Struct_1 {
    global1 = array<i32, 3>();
    let var_0 = Struct_1(-497f);
    let var_1 = var_0;
    let var_2 = any(!(!vec3<bool>(all(vec3<bool>(false, false, false)), all(vec2<bool>(true, true)), all(vec3<bool>(false, false, true)))));
    let var_3 = _wgslsmith_f_op_f32(ceil(var_0.a));
    return func_5(func_4(func_2(Struct_2(select(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], var_2))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-639f)), var_1.a)), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2261i, 0i), vec3<i32>(28623i, u_input.b, 0i)))), var_2);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = true;
    global0 = any(vec3<bool>(!(!arg_2.x), all(arg_2.xwy), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(617f * arg_0.a))), _wgslsmith_f_op_f32(select(func_2(Struct_2(-2147483647i)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - -560f) - func_2(Struct_2(global1[_wgslsmith_index_u32(arg_1.x, 3u)])).a), var_0)), var_0)));
    var var_2 = !arg_2.ww;
    let var_3 = reverseBits(vec4<u32>(27635u, abs(~u_input.a.x & ~arg_1.x), 38390u, 23965u));
    return Struct_2(countOneBits(-48760i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec2<bool>(true, (u_input.a.x == u_input.a.x) & any(vec4<bool>(true, true, false, false))), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(537f, -2135f, true))))), _wgslsmith_f_op_f32(-1856f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1119f, _wgslsmith_div_f32(1663f, -2176f), true)))), 183f);
    var_0 = false;
    var var_2 = u_input.a.x ^ u_input.a.x;
    var var_3 = func_6(func_1(), u_input.a.xx, select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(false, false)), false, _wgslsmith_f_op_f32(min(1798f, var_1.x)) >= _wgslsmith_f_op_f32(ceil(var_1.x))), select(vec4<bool>(0u != u_input.a.x, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_4 = func_6(Struct_1(var_1.x), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.xy, u_input.a.xx), ~u_input.a.yz), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, any(vec4<bool>(false, true, true, true)), true)));
    let var_5 = Struct_1(232f);
    let var_6 = _wgslsmith_sub_i32(-25115i, max(-2147483647i, var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(min(18094u, u_input.a.x << (~(~u_input.a.x) % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(select(var_5.a, 1000f, true))), -323f, _wgslsmith_f_op_f32(-748f + _wgslsmith_f_op_f32(min(1459f, 1775f)))) + vec3<f32>(_wgslsmith_f_op_f32(1000f - var_5.a), -448f, var_5.a)));
}

