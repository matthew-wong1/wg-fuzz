struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1000f), vec2<bool>(true, false));

var<private> global1: array<vec2<u32>, 4>;

var<private> global2: array<vec2<f32>, 1>;

var<private> global3: Struct_2;

var<private> global4: array<bool, 8> = array<bool, 8>(true, true, true, true, false, false, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    return Struct_2(Struct_1(global0.a.a), !(!select(vec2<bool>(global0.b.x, global0.b.x), select(vec2<bool>(global4[_wgslsmith_index_u32(41147u, 8u)], false), global0.b, global3.b.x), select(global3.b, vec2<bool>(true, global3.b.x), false))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    var var_0 = func_2(countOneBits(select(~u_input.a, u_input.a, all(arg_0.b)))).a;
    let var_1 = Struct_2(global0.a, vec2<bool>(global0.b.x, arg_1));
    global3 = var_1;
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a + var_1.a.a)))))) * _wgslsmith_f_op_f32(f32(-1f) * -1099f));
    return select(vec3<bool>(!any(!vec4<bool>(var_1.b.x, false, global3.b.x, false)), true, true), !(!vec3<bool>(false, all(vec4<bool>(global3.b.x, true, true, global3.b.x)), true)), select(select(!(!vec3<bool>(false, global3.b.x, false)), select(!vec3<bool>(true, true, global3.b.x), vec3<bool>(true, true, false), select(vec3<bool>(arg_1, global4[_wgslsmith_index_u32(1u, 8u)], global3.b.x), vec3<bool>(false, false, global0.b.x), false)), arg_1), select(!select(vec3<bool>(true, false, global0.b.x), vec3<bool>(true, var_1.b.x, global4[_wgslsmith_index_u32(25300u, 8u)]), true), vec3<bool>(true, !var_2.b.x, true && global4[_wgslsmith_index_u32(u_input.a.x, 8u)]), true), !select(!vec3<bool>(var_2.b.x, true, true), vec3<bool>(true, true, true), any(vec3<bool>(var_2.b.x, false, false)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    let var_0 = vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(0i), ~_wgslsmith_clamp_i32(2147483647i, -4651i, 655i)), ~0i, 83953i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, -7599i), _wgslsmith_mult_i32(i32(-1i) * -8871i, ~58900i), ~max(2147483647i, 19425i))) ^ vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(min(reverseBits(vec4<i32>(-21277i, 27162i, -1i, -51525i)), vec4<i32>(2841i, -2147483647i, 2147483647i, 1i)), vec4<i32>(1i, 1i, 1i, 1i)), 1i, _wgslsmith_clamp_i32(-1i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-6066i, -19111i, 1i, 74072i), vec4<i32>(0i, -21704i, 1i, 0i)) | _wgslsmith_dot_vec3_i32(vec3<i32>(-56160i, -14259i, -1i), vec3<i32>(28169i, 1i, -2147483647i))));
    return 3266i ^ _wgslsmith_div_i32(_wgslsmith_mult_i32(-(var_0.x >> (0u % 32u)), var_0.x), _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(var_0.x, 0i, var_0.x)), vec3<i32>(0i, var_0.x, i32(-1i) * -1i)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(~u_input.a.x), u_input.a.x & min(arg_0.x, arg_0.x), ~firstTrailingBit(1u), ~u_input.a.x), vec4<u32>(_wgslsmith_add_u32(0u, 2712u), 0u, _wgslsmith_dot_vec3_u32(u_input.a, ~arg_0), ~4294967295u), ~max(vec4<u32>(u_input.a.x, 1u, arg_0.x, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(7486u, arg_0.x, u_input.a.x, arg_0.x)))));
    var var_1 = -func_4(vec3<f32>(global3.a.a, _wgslsmith_div_f32(global3.a.a, -923f), _wgslsmith_f_op_f32(942f + global0.a.a)), func_3(func_2(var_0.xyy), global3.b.x), !(!global0.b.x)) < (i32(-1i) * -2147483647i);
    let var_2 = func_2(vec3<u32>(arg_0.x, ~65595u, abs(arg_0.x)));
    var var_3 = -1i;
    var_1 = global3.b.x;
    return Struct_1(global0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(-2147483647i, _wgslsmith_div_i32(~(i32(-1i) * -2147483647i), 1i));
    let var_1 = Struct_2(func_1(u_input.a), global3.b);
    var_0 = abs(vec2<i32>(7374i << ((55585u >> (~u_input.a.x % 32u)) % 32u), ~2147483647i));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), _wgslsmith_div_vec2_u32(u_input.a.yx, global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), u_input.a.x | 10152u, true || (global0.a.a == 658f)), 1u)])), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.a, _wgslsmith_f_op_f32(max(global0.a.a, 757f))), _wgslsmith_f_op_f32(select(global3.a.a, _wgslsmith_div_f32(global0.a.a, -1162f), var_1.b.x && global3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = var_1;
    var_0 = vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(func_4(vec3<f32>(var_2.x, global0.a.a, var_1.a.a), vec3<bool>(global0.b.x, false, false), global3.b.x), _wgslsmith_div_i32(var_0.x, 3540i), var_0.x, -2147483647i | var_0.x), (vec4<i32>(var_0.x, 17980i, -4367i, var_0.x) ^ vec4<i32>(var_0.x, -27199i, -1i, -63324i)) >> (vec4<u32>(38116u, u_input.a.x, 79148u, u_input.a.x) % vec4<u32>(32u))) ^ (var_0.x | -1i));
    let var_3 = Struct_2(global3.a, func_3(func_2(u_input.a), !any(global0.b)).xx);
    let x = u_input.a;
    s_output = StorageBuffer(~select(u_input.a, min(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), u_input.a) & u_input.a, var_1.b.x));
}

