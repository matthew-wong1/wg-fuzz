struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec4<i32>(1i, -7926i, 0i, 44388i), false, -1000f, vec3<u32>(0u, 57589u, 40160u), -1682f), -854f), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -6609i, 62499i), false, -189f, vec3<u32>(32690u, 1u, 28510u), -2247f), 438f), Struct_2(Struct_1(vec4<i32>(0i, 0i, 368i, -4673i), false, 1184f, vec3<u32>(45394u, 1u, 48838u), 1946f), 329f), Struct_2(Struct_1(vec4<i32>(-1i, 30576i, -34851i, 34871i), false, -841f, vec3<u32>(18344u, 1u, 28410u), -1488f), -142f), Struct_2(Struct_1(vec4<i32>(28176i, 58886i, 1i, 55921i), true, -111f, vec3<u32>(54664u, 380u, 9703u), -183f), -386f), Struct_2(Struct_1(vec4<i32>(2147483647i, 59138i, 20206i, 20708i), true, -955f, vec3<u32>(4294967295u, 1077u, 75707u), -345f), 350f), Struct_2(Struct_1(vec4<i32>(-69982i, 52201i, 6119i, 6560i), true, -1694f, vec3<u32>(19166u, 0u, 1u), 1351f), 1590f), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, 24554i), false, 1285f, vec3<u32>(54144u, 37520u, 4294967295u), 825f), 677f), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, 0i), false, -584f, vec3<u32>(19685u, 1u, 48424u), 1000f), 1785f), Struct_2(Struct_1(vec4<i32>(2147483647i, -1823i, 39462i, i32(-2147483648)), false, -511f, vec3<u32>(0u, 163557u, 48733u), 374f), -1996f), Struct_2(Struct_1(vec4<i32>(-11049i, 7040i, 21505i, 2147483647i), false, -1177f, vec3<u32>(4294967295u, 8604u, 9554u), -1000f), 101f));

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<i32, 2> = array<i32, 2>(-1i, -24201i);

var<private> global3: array<f32, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: u32) -> bool {
    global3 = array<f32, 25>();
    return true;
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = !(!vec3<bool>(any(!vec4<bool>(true, arg_2, false, arg_2)), _wgslsmith_f_op_f32(-1975f * global3[_wgslsmith_index_u32(arg_0.x, 25u)]) != 1187f, any(!vec3<bool>(arg_2, true, false))));
    var var_1 = Struct_1(~vec4<i32>(2147483647i, _wgslsmith_div_i32(-1i, global2[_wgslsmith_index_u32(u_input.a, 2u)]), ~global2[_wgslsmith_index_u32(arg_0.x, 2u)], _wgslsmith_dot_vec2_i32(vec2<i32>(33722i, -46926i), vec2<i32>(49783i, -72091i))) ^ select(_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(58329u, 2u)], arg_1, 6827i), vec4<i32>(0i, 0i, arg_1, 0i)), vec4<i32>(_wgslsmith_sub_i32(arg_1, global2[_wgslsmith_index_u32(u_input.a, 2u)]), 2147483647i ^ arg_1, arg_1 & -6055i, reverseBits(2147483647i)), vec4<bool>(func_1(687f, 0i, vec4<f32>(-294f, global3[_wgslsmith_index_u32(21854u, 25u)], global3[_wgslsmith_index_u32(u_input.a, 25u)], 928f), u_input.a), all(vec3<bool>(true, false, arg_2)), true, arg_2)), any(vec2<bool>(all(!var_0.yx), !var_0.x)), -174f, vec3<u32>(~(~1u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.a, arg_0.x, 1u) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, 66163u) % vec4<u32>(32u)), arg_0, vec4<bool>(arg_2, false, var_0.x, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(4924u, 10848u, 53041u, 0u), arg_0) & vec4<u32>(u_input.a, 40736u, 40121u, arg_0.x)), ~_wgslsmith_dot_vec4_u32(arg_0, arg_0) | u_input.a), global3[_wgslsmith_index_u32(max(0u & ~(~arg_0.x), 1u), 25u)]);
    var_0 = select(vec3<bool>(var_1.b, (var_1.d.x ^ arg_0.x) >= var_1.d.x, all(vec3<bool>(var_1.b, true, arg_2))), vec3<bool>(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(28216u, 25u)], _wgslsmith_div_f32(-1032f, global3[_wgslsmith_index_u32(var_1.d.x, 25u)]))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c))), var_1.b, !(!(1u == var_1.d.x))), select(vec3<bool>(false, all(vec3<bool>(true, arg_2, var_0.x)), !any(vec2<bool>(false, false))), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, !arg_2), select(select(select(vec3<bool>(true, var_0.x, arg_2), vec3<bool>(true, false, false), arg_2), vec3<bool>(true, true, true), false), vec3<bool>(any(vec4<bool>(var_1.b, true, false, arg_2)), true, var_1.b || var_0.x), select(vec3<bool>(var_0.x, var_1.b, true), !vec3<bool>(false, arg_2, var_0.x), select(vec3<bool>(var_1.b, var_1.b, arg_2), vec3<bool>(var_0.x, arg_2, arg_2), vec3<bool>(var_0.x, false, var_0.x))))));
    let var_2 = Struct_1(abs(~(~_wgslsmith_div_vec4_i32(var_1.a, vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, global2[_wgslsmith_index_u32(1u, 2u)])))), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * _wgslsmith_div_f32(-1418f, 104f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(945f))), global2[_wgslsmith_index_u32(max(var_1.d.x, 4294967295u), 2u)] < _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(122580u, 2u)], global2[_wgslsmith_index_u32(var_1.d.x, 2u)]))))), max(arg_0.www, ~(~vec3<u32>(arg_0.x, 1u, 2942u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 25u)])))));
    let var_3 = var_1.d;
    return _wgslsmith_div_u32(~arg_0.x, 0u >> (abs(~4294967295u) % 32u)) > 4294967295u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>) -> bool {
    let var_0 = arg_0.x;
    let var_1 = Struct_2(Struct_1(vec4<i32>(firstTrailingBit(-11542i), abs(0i ^ global2[_wgslsmith_index_u32(4294967295u, 2u)]), ~_wgslsmith_mult_i32(47856i, global2[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_clamp_i32(1i, -1i, global2[_wgslsmith_index_u32(4294967295u, 2u)])), false, _wgslsmith_f_op_f32(select(-326f, -790f, !func_3(vec4<u32>(17301u, u_input.a, 4294967295u, 68311u), global2[_wgslsmith_index_u32(18426u, 2u)], arg_0.x))), ~vec3<u32>(68111u, u_input.a, u_input.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-407f * _wgslsmith_f_op_f32(1329f + arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1853f + arg_1.x))))), -151f);
    let var_2 = var_1.a;
    global0 = array<Struct_2, 11>();
    global3 = array<f32, 25>();
    return any(select(arg_0, select(!(!vec2<bool>(false, var_2.b)), select(arg_0, arg_0, arg_0), select(vec2<bool>(true, true), select(vec2<bool>(var_2.b, false), arg_0, var_0), !vec2<bool>(var_2.b, var_0))), select(!arg_0, vec2<bool>(arg_0.x, true), !(!arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(1u, 32u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.a.d.x, _wgslsmith_clamp_u32(4294967295u, var_0.a.d.x, u_input.a)), 25u)], var_0.a.c), -268f) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f), 323f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(229f, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 25u)])))));
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    let var_2 = select(false && !(func_1(-548f, -8268i, vec4<f32>(-963f, 345f, global3[_wgslsmith_index_u32(u_input.a, 25u)], 1537f), var_0.a.d.x) || true), true, all(vec3<bool>(any(vec2<bool>(true, var_0.a.b)), false, all(vec3<bool>(var_0.a.b, true, true)) | func_2(vec2<bool>(false, var_0.a.b), vec4<f32>(var_0.a.e, var_0.a.e, global3[_wgslsmith_index_u32(36783u, 25u)], var_1.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1992f, global3[_wgslsmith_index_u32(u_input.a, 25u)], 412f, -148f), vec4<f32>(326f, 540f, 381f, -457f)))) + vec4<f32>(_wgslsmith_div_f32(383f, 470f), var_0.a.c, 481f, 577f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-552f, global3[_wgslsmith_index_u32(9449u, 25u)], var_0.b, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(var_0.a.d.x, 25u)], var_1.x, var_1.x, global3[_wgslsmith_index_u32(1u, 25u)]), vec4<f32>(var_1.x, 2006f, var_1.x, -221f), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~33679u, 22283u));
}

