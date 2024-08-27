struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(4976i, 0i);

var<private> global1: Struct_2;

var<private> global2: array<f32, 26> = array<f32, 26>(1000f, -552f, -1658f, 467f, -242f, 527f, 1297f, 626f, -166f, 561f, 608f, 329f, 624f, -2571f, 1187f, 1000f, -1225f, 528f, 1219f, -888f, -1246f, 1371f, 197f, 761f, -938f, -247f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = ~vec2<u32>((~u_input.a.x | _wgslsmith_clamp_u32(u_input.a.x, 48108u, 105874u)) ^ 4294967295u, 1u);
    return global1.a;
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(Struct_2(Struct_1(~1i, -global1.a.d, all(vec4<bool>(false, true, false, true)), min(vec2<i32>(-27206i, global0.x) ^ vec2<i32>(1i, global0.x), -vec2<i32>(global1.a.a, 1i)), func_2(_wgslsmith_f_op_f32(max(2155f, global2[_wgslsmith_index_u32(62794u, 26u)])), Struct_2(global1.a)).e)), Struct_1(firstLeadingBit(26387i), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -2609i), vec2<i32>(2147483647i, global0.x), vec2<i32>(global1.a.d.x, global0.x)), any(!select(vec4<bool>(true, false, false, global1.a.e.x), vec4<bool>(false, true, global1.a.c, true), global1.a.e.x)), global1.a.d, global1.a.e));
    global2 = array<f32, 26>();
    let var_1 = 86902u;
    let var_2 = ~u_input.a;
    let var_3 = var_0.a;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(66494u, 26u)], -1686f, global2[_wgslsmith_index_u32(12243u, 26u)], global2[_wgslsmith_index_u32(5889u, 26u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-862f, global2[_wgslsmith_index_u32(var_2.x, 26u)], -1024f, global2[_wgslsmith_index_u32(var_1, 26u)]) * vec4<f32>(-1007f, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], -509f, global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), select(vec4<bool>(false, var_3.a.e.x, false, global1.a.e.x), vec4<bool>(global1.a.e.x, var_0.a.a.c, var_0.b.e.x, global1.a.c), vec4<bool>(var_0.b.e.x, var_3.a.e.x, var_3.a.e.x, global1.a.c)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1411f, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], -528f, 898f)), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], 315f, -456f), !vec4<bool>(false, true, var_3.a.e.x, var_0.b.e.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_2.x, 26u)] + global2[_wgslsmith_index_u32(var_1, 26u)]), 440f, _wgslsmith_f_op_f32(max(1443f, global2[_wgslsmith_index_u32(74585u, 26u)])), global2[_wgslsmith_index_u32(1u, 26u)]), vec4<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_2.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], false)), -1630f, _wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(f32(-1f) * -329f))))), vec4<bool>(false, !(1u >= select(4294967295u, var_1, false)), false, true || (!var_3.a.e.x && global1.a.e.x))));
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_2(func_2(155f, Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.d.x, 44177i, -2147483647i), vec3<i32>(-1i, 9704i, -2147483647i)), global1.a.d & global1.a.b, !global1.a.e.x, ~vec2<i32>(global0.x, global1.a.a), global1.a.e))));
    global0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 0i), -(~vec2<i32>(~(-10241i), global0.x)), -abs(vec2<i32>(global1.a.d.x, global1.a.b.x >> (u_input.a.x % 32u))));
    global1 = Struct_2(global1.a);
    var_0 = Struct_2(Struct_1(global1.a.b.x, (_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_0.a.b.x), vec2<i32>(-2147483647i, global0.x), vec2<i32>(var_0.a.a, 2147483647i)) >> (_wgslsmith_div_vec2_u32(u_input.a.wz, vec2<u32>(46982u, u_input.a.x)) % vec2<u32>(32u))) | firstLeadingBit(vec2<i32>(global0.x, global1.a.b.x)), false, ~max(vec2<i32>(1i, var_0.a.d.x), ~var_0.a.d), var_0.a.e));
    var var_1 = u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(~0u, 26u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.a.x), 26u)], _wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.a.x, 26u)]))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], -954f, 243f, global2[_wgslsmith_index_u32(47877u, 26u)]) - vec4<f32>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], -1000f, 1000f)))))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_3 {
    global0 = global1.a.d;
    global1 = Struct_2(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(519f - global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, 87491u), 26u)]), global2[_wgslsmith_index_u32(select(u_input.a.x, 42832u, true), 26u)]), Struct_2(Struct_1(_wgslsmith_mult_i32(global0.x, global0.x), vec2<i32>(1i, 2147483647i), any(vec3<bool>(false, false, false)), global1.a.b << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), select(global1.a.e, global1.a.e, vec2<bool>(true, true))))));
    var var_0 = !global1.a.e;
    var_0 = !select(!(!func_2(arg_2.x, Struct_2(Struct_1(global1.a.a, vec2<i32>(17879i, 6686i), false, vec2<i32>(global0.x, -25226i), vec2<bool>(false, true)))).e), func_2(-141f, Struct_2(func_2(-882f, Struct_2(Struct_1(-2337i, vec2<i32>(1i, 10914i), var_0.x, vec2<i32>(global0.x, -59868i), global1.a.e))))).e, !global1.a.e);
    global2 = array<f32, 26>();
    return Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.a, global1.a.b.x, global0.x), ~vec3<i32>(1i, 1i, global0.x)), _wgslsmith_div_vec2_i32(vec2<i32>(2801i, global1.a.d.x), vec2<i32>(global0.x, 48761i) | vec2<i32>(global1.a.b.x, 2147483647i)), true, select(vec2<i32>(global0.x, 73194i) | global1.a.d, select(vec2<i32>(global1.a.d.x, global1.a.b.x), vec2<i32>(1i, 24589i), global1.a.e.x), select(vec2<bool>(true, true), global1.a.e, global1.a.e)), vec2<bool>(!global1.a.e.x, any(vec3<bool>(false, false, true))))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -472f), Struct_2(Struct_1(global0.x, min(global1.a.d, vec2<i32>(global0.x, global1.a.d.x)), true, firstLeadingBit(vec2<i32>(global0.x, 0i)), vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(25333u << (u_input.a.x % 32u), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2253f, global2[_wgslsmith_index_u32(40006u, 26u)], 480f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(631f, -782f, -113f, 1933f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1())))) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_3()).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], global1.a.c))), global2[_wgslsmith_index_u32(~11191u, 26u)], -718f)));
    var_0 = Struct_3(func_4(0u, vec4<u32>(988u, countOneBits(1u), 12450u >> (_wgslsmith_sub_u32(u_input.a.x, 1u) % 32u), ~1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(5895u, 26u)], 169f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 153f, -1848f, -448f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(713f, global2[_wgslsmith_index_u32(62276u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 1484f) + vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(1u, 26u)]))))).a, Struct_1(_wgslsmith_clamp_i32(var_0.b.b.x, -14413i, global0.x), _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(46855i, 25097i)), ~_wgslsmith_div_vec2_i32(var_0.a.a.b, global1.a.d), ~vec2<i32>(-2147483647i, -1i)), true && var_0.b.e.x, vec2<i32>(var_0.a.a.b.x, global1.a.b.x), select(var_0.b.e, vec2<bool>(var_0.b.e.x, true), all(select(vec4<bool>(global1.a.e.x, global1.a.c, false, var_0.b.e.x), vec4<bool>(var_0.b.c, var_0.b.c, false, true), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 26u)] * _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(15887u, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400f + 1450f)), true || var_0.a.a.e.x))), global1.a.b, _wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(max(_wgslsmith_mult_u32(0u, u_input.a.x), 4294967295u))));
}

