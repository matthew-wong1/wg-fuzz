struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<bool, 3>;

var<private> global2: bool;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: array<bool, 10>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1458f, arg_0.b.x, arg_0.b.x, arg_0.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-310f, -742f, 740f, arg_0.b.x) * vec4<f32>(153f, arg_0.b.x, -570f, -975f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, 490f, arg_0.b.x)))))));
    var var_1 = arg_0;
    global4 = array<bool, 10>();
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(-(var_1.a ^ arg_0.a), ~u_input.a.x, ~0i, -2147483647i), abs(vec4<i32>(u_input.c.x, 0i, 10319i, 2147483647i)) >> (vec4<u32>(~u_input.b.x, u_input.b.x, u_input.b.x, 33159u) % vec4<u32>(32u))) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.b.x), abs(u_input.b.x), ~4294967295u, 2785u), vec4<u32>(~u_input.b.x, ~u_input.b.x, u_input.b.x, 1u)) % vec4<u32>(32u));
    let var_3 = Struct_1(1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.b.x, -178f), _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x) - _wgslsmith_f_op_vec3_f32(ceil(var_0.a.zxx)))), arg_0.c);
    return u_input.b.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(u_input.b.xx, vec2<u32>(~(~u_input.b.x), 68845u), ~vec2<u32>(countOneBits(0u), reverseBits(u_input.b.x)));
    global3 = vec2<bool>(any(vec2<bool>(global4[_wgslsmith_index_u32(86577u, 10u)], true)), u_input.c.x <= -36990i);
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(375f, 1133f, false)) + _wgslsmith_f_op_f32(round(500f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) - 779f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1394f - 878f) + _wgslsmith_f_op_f32(747f * 380f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), 606f)), -528f));
    let var_2 = var_1.a.x;
    let var_3 = firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 83415u, var_0.x), vec4<u32>(u_input.b.x, var_0.x, var_0.x, 1u), vec4<u32>(4294967295u, 1u, 0u, u_input.b.x)), vec4<u32>(12712u, ~u_input.b.x, 0u, var_0.x)), func_3(Struct_1(u_input.c.x, _wgslsmith_f_op_vec3_f32(select(var_1.a.xyy, vec3<f32>(var_1.a.x, 2353f, 376f), vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_0.x, 3u)]))), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global4[_wgslsmith_index_u32(var_0.x, 10u)], global3.x, global1[_wgslsmith_index_u32(1u, 3u)]))), min(var_0.x, u_input.b.x) >> (45343u % 32u)));
    return vec3<bool>(true, true, true);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> bool {
    global2 = true;
    var var_0 = select(u_input.b, u_input.b, select(!select(func_2(), !arg_2.xxz, !arg_3), vec3<bool>(true, select(false, false, false), arg_3), all(arg_0.c.yz)));
    global3 = arg_0.c.zz;
    global2 = true;
    var var_1 = vec4<i32>(max(_wgslsmith_add_i32(arg_0.a & u_input.a.x, 71434i) >> (u_input.b.x % 32u), -9013i), 27580i, ~abs(-max(-33667i, u_input.c.x)), -select(26854i, 45589i, arg_2.x));
    return func_2().x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], true, true, global3.x)), global1[_wgslsmith_index_u32(u_input.b.x, 3u)], true), select(select(vec3<bool>(global3.x, global4[_wgslsmith_index_u32(u_input.b.x, 10u)], false), !vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 10u)], global3.x), func_1(Struct_1(-2147483647i, vec3<f32>(-775f, 665f, -660f), vec4<bool>(global3.x, global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global3.x)), 75251u, vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], false, false, false), global1[_wgslsmith_index_u32(62590u, 3u)])), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 10u)], all(vec2<bool>(global3.x, global4[_wgslsmith_index_u32(19681u, 10u)])), false), global4[_wgslsmith_index_u32(12474u, 10u)]), ((u_input.b.x << (u_input.b.x % 32u)) == (u_input.b.x >> (57317u % 32u))) | true));
    global3 = func_2().zx;
    let var_1 = Struct_1(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(203f, -999f))), 681f, 1f)), select(vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.b.x, 10u)], func_1(Struct_1(13995i, vec3<f32>(-1568f, 119f, -518f), vec4<bool>(true, true, global3.x, global4[_wgslsmith_index_u32(37824u, 10u)])), ~u_input.b.x, select(vec4<bool>(false, global3.x, false, global3.x), vec4<bool>(global4[_wgslsmith_index_u32(72204u, 10u)], global3.x, false, false), global4[_wgslsmith_index_u32(1u, 10u)]), all(vec4<bool>(global3.x, global4[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)], true)))), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(71012u, 3u)], true, global4[_wgslsmith_index_u32(u_input.b.x, 10u)], true)), vec4<bool>(true, true, global3.x, true), select(u_input.a.x >= u_input.a.x, global3.x, true)), vec4<bool>(false, !(global1[_wgslsmith_index_u32(u_input.b.x, 3u)] && global4[_wgslsmith_index_u32(28086u, 10u)]), all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 10u)], global1[_wgslsmith_index_u32(21354u, 3u)])), all(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 3u)], true)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, _wgslsmith_f_op_f32(sign(var_1.b.x)), var_1.b.x)) * var_1.b) + vec3<f32>(-2542f, -196f, var_1.b.x));
    var_0 = global3.x;
    var var_3 = select(!select(!var_1.c.xw, !(!var_1.c.wz), vec2<bool>(all(var_1.c.wx), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 10u)])), vec2<bool>(false, false), vec2<bool>(any(!var_1.c.yy), !all(var_1.c)));
    var var_4 = var_2.x;
    global1 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~abs(~u_input.b.x), _wgslsmith_div_u32(4294967295u, u_input.b.x & _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.xz)), abs(1u)), 733f, var_1.b.x, vec3<i32>(1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 10924u), u_input.b.yy) % 32u), 15811i, _wgslsmith_clamp_i32(var_1.a, _wgslsmith_add_i32(reverseBits(u_input.a.x), ~(-1i)), 0i)), countOneBits(firstTrailingBit(u_input.b.x)));
}

