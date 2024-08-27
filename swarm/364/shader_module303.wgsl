struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<u32, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<i32>) -> vec2<bool> {
    global0 = !select(vec2<bool>(_wgslsmith_f_op_f32(-arg_1.a) < -528f, any(select(vec2<bool>(arg_1.b, false), vec2<bool>(true, arg_1.b), true))), select(select(vec2<bool>(true, true), !vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(true, arg_1.b), !select(vec2<bool>(false, true), vec2<bool>(arg_1.b, false), global0.x)), select(!vec2<bool>(arg_1.b, false), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(false, global0.x)), !select(false, global0.x, false)));
    let var_0 = firstLeadingBit(vec3<u32>(arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 11u)], 4294967295u)) ^ ~(~firstLeadingBit(select(arg_0.yxy, arg_0.zwz, true)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(arg_1.a - 1066f), true);
    global0 = select(select(!(!(!vec2<bool>(global0.x, false))), !(!(!vec2<bool>(true, var_1.b))), select(select(vec2<bool>(true, true), !vec2<bool>(true, var_1.b), vec2<bool>(true, true)), vec2<bool>(global0.x, true), vec2<bool>(global0.x, true))), select(select(!(!vec2<bool>(var_1.b, arg_1.b)), vec2<bool>(true, true), !arg_1.b), !select(!vec2<bool>(false, arg_1.b), !vec2<bool>(var_1.b, global0.x), select(vec2<bool>(var_1.b, true), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(global0.x, arg_1.b))), global0.x & all(vec2<bool>(true, true))), select(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), arg_1.b), vec2<bool>(var_1.b, var_1.b), !vec2<bool>(global0.x, false)), vec2<bool>(false, false), false));
    var var_2 = -109f;
    return vec2<bool>(var_1.b, !any(!select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, true, arg_1.b))));
}

fn func_2() -> Struct_3 {
    global0 = select(vec2<bool>(!any(!vec3<bool>(global0.x, global0.x, global0.x)), true), select(select(!func_3(vec4<u32>(u_input.a, 35504u, 1750u, 10996u), Struct_2(-1191f, global0.x), vec2<i32>(11492i, 2147483647i)), vec2<bool>(!global0.x, !global0.x), false), !select(select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), true), select(vec2<bool>(true, false), vec2<bool>(global0.x, true), true), !global0.x), !vec2<bool>(true, !global0.x)), select(vec2<bool>(true, !any(vec3<bool>(true, true, false))), vec2<bool>(!(!global0.x), false), vec2<bool>(true, true)));
    var var_0 = vec3<i32>(min(2147483647i, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-2147483647i, 2147483647i, -18785i)), firstLeadingBit(vec3<i32>(1i, 1i, 1i)))), ~abs(2147483647i), _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(32725i, 0i >> (u_input.a % 32u))), _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(-27723i, 1i, -5429i)), -(~vec3<i32>(7312i, -29543i, 21217i)))));
    global0 = !(!vec2<bool>(countOneBits(global1[_wgslsmith_index_u32(0u, 11u)]) < ~u_input.a, all(vec2<bool>(global0.x, global0.x))));
    let var_1 = Struct_3(abs(vec3<u32>(u_input.a, firstTrailingBit(global1[_wgslsmith_index_u32(0u, 11u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(global1[_wgslsmith_index_u32(u_input.a, 11u)]), ~60372u), 11u)])));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(942f - 988f) + _wgslsmith_f_op_f32(-1000f + 859f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1753f)) + _wgslsmith_f_op_f32(f32(-1f) * -1005f)) + 1531f)), global0.x);
    return Struct_3(~(~(~(~var_1.a))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = vec4<bool>(global0.x, all(select(select(vec4<bool>(global0.x, false, true, global0.x), !vec4<bool>(true, global0.x, global0.x, true), false), !(!vec4<bool>(true, true, true, global0.x)), any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x))))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1140f + _wgslsmith_f_op_f32(-987f + 702f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1811f, -1665f, global0.x)), _wgslsmith_div_f32(1081f, 1229f)))));
    global0 = select(!vec2<bool>(!var_1.x, true), var_1.yy, any(select(!(!var_1.yx), !vec2<bool>(true, var_1.x), all(vec4<bool>(global0.x, false, var_1.x, var_1.x)))));
    let var_2 = Struct_1(firstLeadingBit(abs(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.a.x, 52213u, 2201u), vec4<u32>(12586u, var_0.a.x, u_input.a, global1[_wgslsmith_index_u32(59u, 11u)])), ~vec4<u32>(1u, u_input.a, 36318u, u_input.a)))), var_1.wzz);
    var var_3 = var_2;
    return Struct_2(-614f, any(vec4<bool>(var_3.b.x, false, func_3(vec4<u32>(var_3.a.x, var_0.a.x, 34955u, 56029u), Struct_2(2004f, var_2.b.x), vec2<i32>(-18001i, 2147483647i)).x, any(vec2<bool>(var_3.b.x, var_2.b.x)))) & true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = ~(~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 5516u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), 37945u)));
    let var_2 = !vec2<bool>(global0.x, true);
    global0 = var_2;
    let var_3 = func_1();
    global1 = array<u32, 11>();
    var var_4 = Struct_1(_wgslsmith_mod_vec4_u32(select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 11u)], 11u)], var_1.x, _wgslsmith_div_u32(var_0, var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 1u, 1u), vec3<u32>(var_1.x, var_1.x, var_0))), abs(vec4<u32>(4294967295u, var_1.x, 4294967295u, 30497u)), select(vec4<bool>(var_2.x, global0.x, false, false), !vec4<bool>(false, var_3.b, true, false), select(vec4<bool>(var_3.b, var_2.x, true, false), vec4<bool>(false, var_2.x, var_3.b, global0.x), true))), ~vec4<u32>(28703u ^ u_input.a, _wgslsmith_mod_u32(var_1.x, 4294967295u), reverseBits(64169u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(76781u, 11u)], var_0, var_0, var_1.x), vec4<u32>(0u, 1u, var_0, 36620u)))), vec3<bool>(func_3(~(vec4<u32>(u_input.a, 0u, var_1.x, 4294967295u) ^ vec4<u32>(var_1.x, 5950u, 32762u, 61122u)), var_3, _wgslsmith_mod_vec2_i32(select(vec2<i32>(-1i, 1i), vec2<i32>(5254i, 65594i), var_2), vec2<i32>(1i, 1i))).x, !(!global0.x != true), ~(0i >> (var_0 % 32u)) <= _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, -50040i), countOneBits(-21788i))));
    var var_5 = var_4.a.zyx;
    let var_6 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(1i, firstTrailingBit(select(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(48985u, 1u)), abs(var_4.a.xx)), vec2<u32>(~var_1.x, var_1.x), var_4.b.zx)), firstLeadingBit(_wgslsmith_div_vec3_i32(select(vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(-31130i, -57510i, 10911i), true), vec3<i32>(1i, 1i, 1i)) | vec3<i32>(1i, _wgslsmith_div_i32(-2147483647i, 57280i), -1i << (var_0 % 32u))), -vec3<i32>(1i, 1i, 1i), abs(~(1i | (1i << (var_0 % 32u)))));
}

