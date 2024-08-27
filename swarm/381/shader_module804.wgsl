struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-1034f, -1496f, 1796f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = u_input.a.x << (abs(~min(abs(0u), arg_0.b.a)) % 32u);
    let var_1 = _wgslsmith_mod_vec3_u32(u_input.b.yxx, vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, arg_0.c.a, 7159u), arg_0.b.d), u_input.b.x));
    global0 = array<f32, 3>();
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(round(arg_0.c.c));
    return ~(~(50224u >> (u_input.c.x % 32u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>) -> f32 {
    global0 = array<f32, 3>();
    var var_0 = (arg_0.x | (max(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), func_2(Struct_2(vec3<i32>(u_input.a.x, 5593i, u_input.a.x), Struct_1(u_input.c.x, 603f, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], vec4<u32>(1u, u_input.b.x, arg_1.x, arg_1.x)), Struct_1(26786u, -195f, 397f, vec4<u32>(767u, 12050u, u_input.c.x, arg_1.x))))) < ~1u)) || true;
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    return 676f;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global0 = array<f32, 3>();
    let var_0 = ~(_wgslsmith_mod_i32(arg_2.a.x, arg_2.a.x) ^ u_input.a.x);
    var var_1 = arg_2;
    let var_2 = 1000f;
    let var_3 = arg_3;
    return Struct_2(max(_wgslsmith_mod_vec3_i32(u_input.a.wzw, var_1.a), vec3<i32>(~_wgslsmith_add_i32(arg_2.a.x, arg_2.a.x), u_input.a.x, -2147483647i)), Struct_1(~39709u, -184f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1147f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.c)))), select(var_1.b.d, abs(var_1.b.d), vec4<bool>(arg_1.x, arg_1.x, !arg_1.x, any(arg_1.yz)))), arg_2.b);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_div_u32(15864u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c.x, arg_0.c.d.x)) >> (vec2<u32>(arg_0.b.a, 134335u) % vec2<u32>(32u)), ~countOneBits(vec2<u32>(u_input.b.x, u_input.c.x)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(firstTrailingBit(arg_0.c.d.yx), arg_0.b.d.xw, true), u_input.b.wx) & u_input.b.x, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c))), reverseBits(u_input.b));
    global0 = array<f32, 3>();
    var_0 = func_3(arg_0.b, vec4<bool>(all(vec2<bool>(true, true)), !((var_0.a >= 15954u) | true), !(_wgslsmith_mod_i32(-26965i, -2147483647i) < _wgslsmith_div_i32(arg_0.a.x, 2147483647i)), all(vec3<bool>(true, true, true))), arg_0, func_3(func_3(arg_0.c, select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), arg_0, Struct_1(95496u | arg_0.b.a, _wgslsmith_f_op_f32(select(-903f, var_0.c, false)), 1f, var_0.d)).c, !vec4<bool>(true, all(vec2<bool>(false, true)), false, true), Struct_2(-u_input.a.yxw ^ vec3<i32>(2147483647i, arg_0.a.x, u_input.a.x), func_3(Struct_1(78478u, global0[_wgslsmith_index_u32(var_0.d.x, 3u)], 1084f, arg_0.c.d), vec4<bool>(false, false, true, true), arg_0, arg_0.c).c, func_3(Struct_1(u_input.c.x, 1000f, 258f, var_0.d), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), Struct_2(vec3<i32>(arg_0.a.x, -1i, u_input.a.x), arg_0.c, arg_0.b), func_3(Struct_1(0u, -1589f, arg_0.c.c, vec4<u32>(var_0.a, var_0.a, 116706u, 4294967295u)), vec4<bool>(true, true, true, false), arg_0, arg_0.c).c).c), arg_0.b).b).c;
    var_0 = Struct_1(arg_0.b.d.x, var_0.c, -719f, min(vec4<u32>(u_input.c.x, ~5774u, u_input.b.x, reverseBits(0u) >> (u_input.b.x % 32u)), vec4<u32>(~u_input.c.x, ~0u, u_input.c.x, var_0.d.x)));
    let var_1 = abs(func_2(func_3(arg_0.b, select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), Struct_2(max(vec3<i32>(1i, arg_0.a.x, 18222i), arg_0.a), func_3(arg_0.b, vec4<bool>(true, true, true, false), arg_0, Struct_1(u_input.c.x, global0[_wgslsmith_index_u32(74923u, 3u)], 189f, vec4<u32>(u_input.c.x, u_input.b.x, 54382u, 0u))).b, func_3(Struct_1(u_input.b.x, 542f, -1249f, vec4<u32>(u_input.c.x, u_input.c.x, 68640u, arg_0.b.d.x)), vec4<bool>(false, true, false, false), Struct_2(u_input.a.xzz, arg_0.c, arg_0.b), Struct_1(70046u, -346f, arg_0.c.b, u_input.b)).c), func_3(arg_0.c, vec4<bool>(true, true, true, true), func_3(arg_0.c, vec4<bool>(true, true, false, true), Struct_2(arg_0.a, Struct_1(18920u, 1061f, 808f, arg_0.c.d), arg_0.b), Struct_1(61354u, arg_0.c.c, -494f, u_input.b)), arg_0.b).b)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1438i;
    var var_1 = all(vec2<bool>(false == (u_input.c.x == u_input.c.x), true)) || true;
    var var_2 = any(!select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), ~u_input.a.x < 0i));
    global0 = array<f32, 3>();
    let var_3 = func_4(func_3(Struct_1(~firstLeadingBit(u_input.b.x), _wgslsmith_f_op_f32(func_1(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), ~vec3<u32>(0u, 11166u, u_input.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1231f)), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(u_input.c.x, 3u)], false)))), select(min(u_input.b, u_input.b), vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), all(vec2<bool>(false, true))), Struct_2(~vec3<i32>(2147483647i, -41409i, u_input.a.x), Struct_1(10416u, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(15514u, 3u)]), _wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_div_vec4_u32(vec4<u32>(59628u, 1u, 1u, u_input.b.x), vec4<u32>(56556u, 4294967295u, u_input.b.x, 1u))), Struct_1(u_input.b.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14067u, 3u)] - -435f), _wgslsmith_f_op_f32(min(-665f, 624f)), u_input.b)), Struct_1(1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 3u)] - global0[_wgslsmith_index_u32(0u, 3u)]), _wgslsmith_f_op_f32(select(2371f, 249f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(33633u, 3u)]))), ~firstLeadingBit(vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.c.x)))));
    var var_4 = Struct_2(vec3<i32>(u_input.a.x, 1i, var_3.a.x & -reverseBits(var_3.a.x)), Struct_1(reverseBits(firstTrailingBit(1u)), _wgslsmith_f_op_f32(abs(func_4(var_3).b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(1u, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], 1554f, u_input.b), vec4<bool>(true, true, true, true), Struct_2(u_input.a.yzw, Struct_1(u_input.c.x, var_3.c.c, var_3.b.c, vec4<u32>(60937u, var_3.b.d.x, var_3.b.d.x, var_3.c.d.x)), var_3.b), Struct_1(8043u, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], var_3.c.d)).b.b + -490f)), ~select(vec4<u32>(var_3.b.d.x, 4294967295u, 17606u, 32173u), var_3.b.d, vec4<bool>(false, false, false, false)) << (vec4<u32>(~var_3.b.d.x, ~0u, ~21920u, 35607u) % vec4<u32>(32u))), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-701f, -749f))) + _wgslsmith_f_op_f32(floor(var_3.b.b))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), firstLeadingBit(_wgslsmith_add_i32(var_3.a.x, -var_4.a.x)), func_3(Struct_1(abs(var_3.c.a), -844f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 3u)]), vec4<u32>(var_4.c.a, 0u, abs(var_3.b.a), 30273u)), vec4<bool>(any(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, true, true)), true, false), Struct_2(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 23130i, 55247i), vec3<i32>(u_input.a.x, var_4.a.x, 0i)), func_3(Struct_1(0u, var_4.c.c, -1178f, vec4<u32>(var_4.b.d.x, 71538u, u_input.c.x, 46108u)), vec4<bool>(true, true, true, true), var_3, var_3.c).c, func_3(var_3.c, vec4<bool>(true, true, true, false), var_3, func_4(Struct_2(vec3<i32>(-2147483647i, -1i, -26848i), var_3.c, Struct_1(1u, -909f, global0[_wgslsmith_index_u32(var_4.c.d.x, 3u)], u_input.b))).c).c), func_3(Struct_1(func_3(var_4.b, vec4<bool>(true, true, false, false), var_3, Struct_1(var_3.b.d.x, var_3.b.c, var_3.b.c, var_4.b.d)).b.a, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 3u)])), global0[_wgslsmith_index_u32(u_input.c.x | 9495u, 3u)], var_3.b.d), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), var_3, func_4(func_3(Struct_1(u_input.c.x, var_4.b.b, var_3.b.c, var_3.b.d), vec4<bool>(true, false, false, false), var_3, var_3.c)).b).b).b.d.yyx);
}

