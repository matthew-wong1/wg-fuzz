struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<bool>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-431f, 635f, -198f, -1000f, -173f, 379f, -620f, 632f, -1060f, 1144f, -280f, 441f, 992f, 1205f, 855f, 1031f, -1605f, 1260f, 324f, 479f, 177f, -1229f, -321f, -831f, 2259f, 865f);

var<private> global1: array<Struct_4, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global0 = array<f32, 26>();
    global1 = array<Struct_4, 19>();
    let var_0 = u_input.a.x;
    global0 = array<f32, 26>();
    return ~(~(-vec2<i32>(u_input.c, -2147483647i)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    global1 = array<Struct_4, 19>();
    var var_0 = -arg_0.c.b.ww;
    var var_1 = func_3(arg_0.c.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~4294967295u), 26u)]));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(931u, 19u)], arg_0.d.c, Struct_3(arg_1.a, _wgslsmith_sub_vec4_i32(arg_1.b, select(arg_1.b, u_input.a, arg_0.c.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(27025u, u_input.b.x, 6176u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, arg_1.a.c.d, 0u)) % vec4<u32>(32u))), !vec4<bool>(true, false, arg_2.x > 7428i, arg_0.a.e.x), any(!(!vec2<bool>(arg_0.e, false))), max(arg_1.e, u_input.b.x | 1u))));
    let var_1 = arg_0.c.b;
    let var_2 = global1[_wgslsmith_index_u32(~abs(arg_0.c.e), 19u)];
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_f_op_f32(-154f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(256f * arg_1.a.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1373f))) + -158f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -174f))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_1.a.a.a, 26u)])));
    var var_4 = -2147483647i ^ max(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, u_input.a.x), func_3(var_2.d.c.d).x, 1i), -var_1.x);
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(1u, 19u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, -467f, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)])) * _wgslsmith_div_vec4_f32(vec4<f32>(-450f, var_0.b.b.x, global0[_wgslsmith_index_u32(var_0.b.a.d, 26u)], 1078f), vec4<f32>(var_0.c.a.b.x, var_0.b.b.x, -2263f, global0[_wgslsmith_index_u32(4294967295u, 26u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(33218u, 26u)], 1000f, var_0.c.a.b.x)) - vec4<f32>(global0[_wgslsmith_index_u32(108u, 26u)], -921f, 154f, var_0.c.a.b.x))), vec4<f32>(_wgslsmith_f_op_f32(abs(-231f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-947f * 509f)), 896f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(trunc(-444f)))), var_0.c.c))));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1791f))), 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.d.b.x))))))));
    let var_2 = var_0.c;
    var var_3 = true || ((~func_1(Struct_4(var_2.a.c, var_2.a, var_0.c, var_2.a, var_0.d.c.b), var_0.c, vec3<i32>(-10304i, u_input.c, 2147483647i)) > u_input.b.x) != (1258i > _wgslsmith_mod_i32(45099i, u_input.a.x)));
    var var_4 = var_2.a;
    var_4 = Struct_2(var_2.a.c, vec3<f32>(-804f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(421f * _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-483f, 1442f)), true)), _wgslsmith_f_op_f32(select(-323f, _wgslsmith_div_f32(_wgslsmith_div_f32(860f, -350f), _wgslsmith_f_op_f32(func_2(Struct_4(Struct_1(u_input.b.x, true, true, var_0.c.e, vec3<bool>(true, true, true)), var_2.a, Struct_3(var_2.a, vec4<i32>(1i, u_input.a.x, -27904i, var_0.c.b.x), var_2.c, true, u_input.b.x), Struct_2(var_0.b.a, vec3<f32>(273f, 854f, global0[_wgslsmith_index_u32(4294967295u, 26u)]), Struct_1(31315u, var_4.a.b, var_2.c.x, var_4.c.d, vec3<bool>(false, var_2.d, false))), false), var_4.a, Struct_3(var_2.a, vec4<i32>(u_input.d, var_0.c.b.x, var_2.b.x, var_2.b.x), var_2.c, var_0.a.e.x, 49428u)))), var_4.c.e.x))), Struct_1(~(~0u) & (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.a.d, 0u, 0u), u_input.b.zyx) >> (1u % 32u)), all(!vec4<bool>(true, true, var_2.d, false)), var_4.c.b, ~u_input.b.x, select(vec3<bool>(select(false, var_2.d, var_0.e), all(vec4<bool>(false, var_4.c.c, var_0.b.c.b, var_0.a.e.x)), true), var_0.c.c.zwx, all(!vec4<bool>(var_2.d, var_4.a.b, var_0.e, var_0.a.b)))));
    var_4 = Struct_2(Struct_1(~17857u, true, false, ~select(~u_input.b.x, 0u, false), !vec3<bool>(var_2.d | false, true, var_4.c.c || true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a.b * vec3<f32>(-1000f, 1352f, -2112f))), Struct_1(reverseBits(select(var_2.a.a.d, var_0.c.e, var_4.a.c) & ~70015u), true, 1i != var_2.b.x, 0u, !vec3<bool>(any(vec3<bool>(false, false, false)), any(var_2.a.c.e.xz), any(vec2<bool>(false, var_4.a.b)))));
    var var_5 = 20320u;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.c.b.zw ^ countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.d), var_2.b.zy)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(0i, u_input.a.x)), var_0.c.b.yz), false), u_input.b.x, 1u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.b.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1378f * var_0.b.b.x)))), _wgslsmith_f_op_f32(var_2.a.b.x + var_0.b.b.x), _wgslsmith_f_op_f32(var_1.x - -894f), -1292f));
}

