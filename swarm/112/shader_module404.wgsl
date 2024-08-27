struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

var<private> global1: array<i32, 2> = array<i32, 2>(9555i, 52538i);

var<private> global2: array<u32, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    let var_1 = Struct_1(firstTrailingBit(0u));
    var var_2 = !vec4<bool>(true, true || select(true, true, true), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))), select(true, reverseBits(global1[_wgslsmith_index_u32(91517u, 2u)]) <= (global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64068u, 11u)], 2u)] | global1[_wgslsmith_index_u32(13923u, 2u)]), false));
    var var_3 = var_1;
    var var_4 = var_1;
    return select(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(66340u, 11u)], 2u)], 28584i) & -vec2<i32>(18271i, global1[_wgslsmith_index_u32(54193u, 2u)]), select(_wgslsmith_mult_vec2_i32(min(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], 2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(8606u, 2u)])), -vec2<i32>(global1[_wgslsmith_index_u32(0u, 2u)], -4716i)), ~select(vec2<i32>(-37819i, -2147483647i), vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.b.x, 2u)]), var_2.x), select(select(vec2<bool>(true, true), vec2<bool>(false, var_2.x), var_2.x), !var_2.wx, !var_2.wx)), vec2<i32>(-(~global1[_wgslsmith_index_u32(u_input.a, 2u)]), i32(-1i) * -11725i)), vec2<i32>(abs(~1i >> (global2[_wgslsmith_index_u32(~var_1.a, 11u)] % 32u)), global1[_wgslsmith_index_u32(8667u, 2u)] >> (88929u % 32u)), !var_2.yy);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_div_vec2_u32(u_input.b.zz, ~(~(~vec2<u32>(52557u, 20630u)) & ~(u_input.c.yw | u_input.b.xz)));
    let var_1 = Struct_1(u_input.b.x);
    var var_2 = vec3<u32>(firstTrailingBit(var_1.a), 0u, ~min(760u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a, 11u)], 11u)]) << (var_0.x % 32u));
    var var_3 = _wgslsmith_add_i32(-1i, arg_1.x);
    var var_4 = firstTrailingBit(max(func_3(var_1), vec2<i32>(-1i) * -arg_1.yz)) & -reverseBits(-vec2<i32>(52489i, -56029i) << (var_2.zy % vec2<u32>(32u)));
    return arg_2.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(arg_0 - -1948f) != arg_0;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(509f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(func_2(Struct_1(~1u), vec3<i32>(-reverseBits(global1[_wgslsmith_index_u32(4294967295u, 2u)]), -11676i, -(~0i)), arg_2)));
    global1 = array<i32, 2>();
    global2 = array<u32, 11>();
    let var_2 = Struct_1(reverseBits(1u));
    return !(!select(vec2<bool>(false, false), select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, false)), vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), vec2<bool>(true, true))), vec2<bool>(false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(func_1(1000f, Struct_1(min(global2[_wgslsmith_index_u32(76885u, 11u)], global0.a) & 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1462f, -1446f) * vec2<f32>(1745f, 300f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -126f)))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1219f, -898f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 713f) + vec2<f32>(-2256f, 672f)))))));
    let var_1 = select(global0.a, ~0u, all(vec3<bool>(true, func_1(-1498f, Struct_1(u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, 861f))).x, !select(false, true, false))));
    var var_2 = Struct_1(~var_1);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * -263f), _wgslsmith_f_op_f32(295f * 777f), _wgslsmith_f_op_f32(func_2(Struct_1(u_input.a), vec3<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61466u, 11u)], 11u)], 2u)], global1[_wgslsmith_index_u32(46539u, 2u)], 9717i), vec2<f32>(1712f, 453f))), -299f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(883f, -723f, -530f, -752f)), vec4<f32>(-788f, 1000f, 289f, -225f)))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(1868f, 578f), _wgslsmith_f_op_f32(min(204f, 1165f)), 805f, _wgslsmith_f_op_f32(step(-1666f, -1731f)))))));
    let var_4 = _wgslsmith_mult_vec2_u32(max(~_wgslsmith_mod_vec2_u32(u_input.c.zy, u_input.b.xz), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 11u)] & global0.a, select(7037u, var_1, false)) >> (_wgslsmith_mult_vec2_u32(~u_input.b.zz, vec2<u32>(var_1, 0u) ^ u_input.b.yx) % vec2<u32>(32u))), vec2<u32>(~select(global0.a, var_2.a, 703f >= var_3.x), 68224u ^ _wgslsmith_sub_u32(18244u, var_1)));
    global0 = Struct_1(var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~1u))), min(vec2<u32>(u_input.a, global0.a), vec2<u32>(53345u, ~global0.a)), 0i, -661f);
}

