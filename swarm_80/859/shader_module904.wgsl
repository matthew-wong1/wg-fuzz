struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24>;

var<private> global1: array<vec4<u32>, 11>;

var<private> global2: array<u32, 3> = array<u32, 3>(4294967295u, 24705u, 3869u);

var<private> global3: bool = false;

var<private> global4: array<i32, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_2(Struct_1(true, vec2<i32>(-1i, -1i)), arg_1.d.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_1.d.c - vec3<f32>(arg_1.d.c.x, -595f, arg_1.d.c.x))))), _wgslsmith_mult_u32(~firstTrailingBit(u_input.a), 10318u), vec3<bool>(false && arg_0.x, any(vec4<bool>(arg_1.e.x, false | arg_0.x, arg_0.x, any(vec4<bool>(false, arg_0.x, arg_0.x, true)))), (-1825i << (u_input.b.x % 32u)) > -16169i));
    var var_1 = var_0;
    var_1 = Struct_2(var_1.a, var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.c))), ~firstLeadingBit(global2[_wgslsmith_index_u32(9709u, 3u)]), vec3<bool>(any(!vec4<bool>(true, var_0.e.x, true, true)) || arg_1.e.x, !(var_0.a.a || arg_0.x), true));
    global4 = array<i32, 21>();
    var_1 = Struct_2(arg_1.d.a, var_0.b, _wgslsmith_f_op_vec3_f32(-var_1.c), ~(0u & (~21968u >> ((u_input.a >> (1u % 32u)) % 32u))), !(!(!select(arg_0.yyw, arg_1.e, var_1.a.a))));
    return var_1.c.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    global3 = arg_2.a;
    var var_0 = Struct_3(arg_1, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], firstTrailingBit(arg_2.b), Struct_2(Struct_1(arg_3.x, arg_0.zy), arg_2, vec3<f32>(-250f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, arg_2.a, arg_3.x), Struct_3(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 4294967295u, global2[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec4<u32>(4294967295u, 28450u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 3u)], 3u)], 4294967295u), arg_2.b, Struct_2(Struct_1(arg_2.a, arg_2.b), Struct_1(arg_2.a, vec2<i32>(u_input.c.x, arg_0.x)), vec3<f32>(-343f, -234f, 1000f), global2[_wgslsmith_index_u32(u_input.a, 3u)], arg_3), arg_3)))), _wgslsmith_f_op_f32(f32(-1f) * -1497f)), ~8501u, select(!arg_3, arg_3, !(!vec3<bool>(arg_2.a, true, arg_2.a)))), vec3<bool>(false, !any(vec4<bool>(arg_2.a, arg_2.a, true, arg_2.a)), arg_3.x));
    var var_1 = _wgslsmith_sub_vec3_u32(u_input.b.yxx, reverseBits(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(26191u, 3u)], 1u, 4294967295u)) & abs(vec3<u32>(1u, 0u, 66117u)), var_0.b.zzy, abs(reverseBits(vec3<u32>(1u, 4294967295u, arg_1.x))))));
    var var_2 = vec2<bool>(!(!var_0.d.e.x), !all(!vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_2.a)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(-252f, -370f))) - _wgslsmith_f_op_f32(f32(-1f) * -101f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-225f)) - var_0.d.c.x));
    return Struct_2(Struct_1(true, abs(_wgslsmith_mult_vec2_i32(arg_2.b >> (var_1.zy % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_2.b.x), var_0.c)))), Struct_1(arg_2.a, ~(~_wgslsmith_mult_vec2_i32(arg_2.b, vec2<i32>(-976i, arg_2.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-935f, var_0.d.c.x, -425f)))), ~(66589u | u_input.a), !arg_3);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> i32 {
    global3 = any(!(!select(!arg_3.e, select(arg_3.e, arg_3.e, arg_3.e), !vec3<bool>(false, arg_0.x, false))));
    global0 = array<vec4<i32>, 24>();
    var var_0 = u_input.c.x;
    global1 = array<vec4<u32>, 11>();
    global4 = array<i32, 21>();
    return -2147483647i;
}

fn func_1(arg_0: bool) -> i32 {
    return ~func_4(!vec2<bool>(arg_0, false), _wgslsmith_add_u32(~abs(30885u), ~(~global2[_wgslsmith_index_u32(4294967295u, 3u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f + 469f))), func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(43902i, -20348i, 0i, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 21u)]), global0[_wgslsmith_index_u32(~u_input.b.x, 24u)]), ~vec3<u32>(54820u, u_input.a, 1u), Struct_1(arg_0 | true, vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 21u)], 24820i)), vec3<bool>(!arg_0, !arg_0, !arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<vec4<u32>, 11>();
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -2147483647i, 1i, reverseBits(~(~u_input.c.x))), vec4<i32>(-abs(1i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)] % 32u)), func_1(true) << (u_input.b.x % 32u), i32(-1i) * -55876i, -25609i), min(-_wgslsmith_sub_vec4_i32(~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 24u)], global0[_wgslsmith_index_u32(16760u, 24u)] & vec4<i32>(62658i, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8911u, 3u)], 3u)], 21u)], u_input.c.x, 883i)), -((vec4<i32>(-2147483647i, -17813i, 1i, -25142i) << (vec4<u32>(u_input.a, 4294967295u, 4214u, 3191u) % vec4<u32>(32u))) & abs(global0[_wgslsmith_index_u32(u_input.b.x, 24u)]))));
    global0 = array<vec4<i32>, 24>();
    var var_2 = func_2(~(-vec4<i32>(-u_input.c.x, ~31436i, 1i >> (u_input.b.x % 32u), _wgslsmith_sub_i32(-1i, global4[_wgslsmith_index_u32(1u, 21u)]))), ~(~(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 3u)], 1048u) ^ vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69223u, 3u)], 3u)], 3u)], 75573u, global2[_wgslsmith_index_u32(u_input.a, 3u)]))), Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)] > 4294967295u, ~abs(u_input.c ^ vec2<i32>(-18890i, 0i))), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(round(208f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -775f, 1024f, 2192f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-904f, -1000f, -580f, 352f))))), _wgslsmith_f_op_f32(-543f * _wgslsmith_f_op_f32(ceil(467f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(187f, -213f, -1636f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1300f, 1419f, 977f) - vec3<f32>(699f, 849f, -272f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1028f, -650f, 854f))), all(vec2<bool>(var_2.a, false))))), select(vec4<u32>(~0u, ~u_input.b.x, abs(0u), _wgslsmith_mult_u32(44245u, abs(19991u))), min(~global1[_wgslsmith_index_u32(1u, 11u)], u_input.b), true));
}

