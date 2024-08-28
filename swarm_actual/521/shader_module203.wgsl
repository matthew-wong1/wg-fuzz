struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 28> = array<u32, 28>(27111u, 0u, 1u, 1u, 0u, 28066u, 4931u, 0u, 96693u, 57896u, 0u, 22776u, 3107u, 1u, 2454u, 1u, 46635u, 16330u, 12778u, 1u, 33297u, 0u, 37702u, 35684u, 18662u, 20402u, 50342u, 0u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 30>();
    global1 = Struct_1(global1.a);
    let var_0 = vec2<u32>(1u, ~_wgslsmith_add_u32(7658u >> (1u % 32u), max(~1u, ~global1.a)));
    global1 = global0[_wgslsmith_index_u32(arg_2.a, 30u)];
    return global1.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global1 = Struct_1(func_3(global2[_wgslsmith_index_u32(arg_0.a >> (~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.a, global1.a), 28u)] % 32u), 28u)], arg_0, Struct_1(~_wgslsmith_div_u32(34657u, global2[_wgslsmith_index_u32(global1.a, 28u)]))));
    global2 = array<u32, 28>();
    let var_0 = abs(-u_input.c);
    global0 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -898f) + 979f), _wgslsmith_f_op_f32(f32(-1f) * -893f)))) + 855f);
    return Struct_1(0u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    global2 = array<u32, 28>();
    let var_0 = -_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, u_input.c.x), (1i >> (arg_0.a % 32u)) | 0i), countOneBits(u_input.d));
    var var_1 = true & any(vec2<bool>(arg_2.x, true));
    var var_2 = firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(21553i, u_input.d, 21019i, 2147483647i), u_input.a), vec4<i32>(1i, var_0, u_input.d, u_input.d) << (vec4<u32>(4213u, arg_0.a, 20252u, 1u) % vec4<u32>(32u))), firstTrailingBit(select(10480i, 67367i, false))), (-var_0 ^ _wgslsmith_sub_i32(1i, 1i)) | -var_0));
    let var_3 = Struct_1(~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(1u, global1.a), ~1u));
    return func_2(Struct_1(global1.a), select(select(!select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(true, true, false, arg_2.x)), select(select(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, true, arg_2.x), false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), arg_2.x), all(!vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x))), select(select(vec4<bool>(false, false, true, false), !vec4<bool>(true, arg_2.x, true, true), select(vec4<bool>(true, false, arg_2.x, false), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), select(!vec4<bool>(false, arg_2.x, false, true), select(vec4<bool>(false, false, arg_2.x, true), vec4<bool>(false, true, arg_2.x, arg_2.x), vec4<bool>(true, true, true, arg_2.x)), select(vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(false, false, false, arg_2.x), arg_2.x)), false), false));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = ~(~firstLeadingBit(~vec3<u32>(arg_0.a, arg_0.a, 1738u)) << (select(~_wgslsmith_mod_vec3_u32(vec3<u32>(52482u, arg_0.a, 0u), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(125550u, 28u)], 3622u)), max(vec3<u32>(42075u, 4294967295u, 0u), ~vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a, 28u)], 28u)], arg_1.a)), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), true)) % vec3<u32>(32u)));
    global2 = array<u32, 28>();
    var var_1 = any(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false))));
    let var_2 = 835u;
    let var_3 = arg_0;
    return vec2<i32>(u_input.a.x, select(~(u_input.a.x ^ ~(-9313i)), ~u_input.b, -u_input.b != reverseBits(1i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1;
    global0 = array<Struct_1, 30>();
    let var_1 = global0[_wgslsmith_index_u32(arg_1.a, 30u)];
    var var_2 = -_wgslsmith_mod_vec2_i32(u_input.a.yx, -_wgslsmith_mod_vec2_i32(reverseBits(u_input.c), _wgslsmith_sub_vec2_i32(u_input.c, u_input.c)));
    var_2 = -func_5(func_4(func_2(global0[_wgslsmith_index_u32(31947u, 30u)], select(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), vec4<bool>(false, true, false, arg_2.x), vec4<bool>(true, false, arg_2.x, arg_2.x))), 21364u >> (arg_1.a % 32u), select(select(arg_2, arg_2, false), vec3<bool>(arg_2.x, arg_2.x, false), !arg_2.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(global1.a, 0u)), vec2<u32>(global1.a | 1u, ~global1.a)), 30u)]);
    return ~_wgslsmith_add_u32(func_3(arg_1.a, func_2(func_4(arg_0, 13626u, arg_2), vec4<bool>(false, true, arg_2.x, arg_2.x)), arg_1), ~31235u);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = func_2(Struct_1(abs(1u)), vec4<bool>(false | any(vec2<bool>(true, true)), true, true, 8648u >= arg_1.a));
    var_0 = Struct_1(80091u);
    let var_1 = global1.a;
    let var_2 = abs(vec3<i32>(u_input.d, u_input.d, 1i)) & vec3<i32>(1i, countOneBits(-1i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(abs(83633i), _wgslsmith_clamp_i32(1i, -18602i, -1i), ~u_input.c.x), u_input.c.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1120f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1222f - 1205f)))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-449f, 785f, -305f, -1774f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1006f)), -1804f, _wgslsmith_f_op_f32(f32(-1f) * -811f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, -162f, 343f, 2076f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-765f, 1739f, 233f, 2570f) * vec4<f32>(-1144f, -493f, -956f, -960f)), vec4<f32>(1222f, 1000f, 200f, 3052f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(1u, 30u)];
    var var_1 = vec2<bool>(true, true);
    let var_2 = global0[_wgslsmith_index_u32(var_0.a, 30u)];
    global1 = Struct_1(~(~(~var_0.a ^ 68391u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_6(global0[_wgslsmith_index_u32(~0u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_2.a, func_1(Struct_1(var_2.a), Struct_1(global1.a), vec3<bool>(false, var_1.x, var_1.x), Struct_1(1u)), 0u), 4463u), ~(_wgslsmith_mod_u32(1u, 4294967295u) >> (1u % 32u))), global0[_wgslsmith_index_u32(1u, 30u)]));
    var var_4 = Struct_1(~(min(~var_2.a, var_0.a) << (~(global1.a | 42307u) % 32u)));
    let var_5 = func_4(global0[_wgslsmith_index_u32(~(~func_3(global2[_wgslsmith_index_u32(var_4.a, 28u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)] << (global2[_wgslsmith_index_u32(global1.a, 28u)] % 32u), 30u)], global0[_wgslsmith_index_u32(countOneBits(global1.a), 30u)])), 30u)], global2[_wgslsmith_index_u32(countOneBits(~(~global2[_wgslsmith_index_u32(8308u, 28u)])), 28u)], !vec3<bool>(true, false, all(!vec3<bool>(true, var_1.x, var_1.x))));
    global0 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(409f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(sign(var_3.x)))))), -_wgslsmith_dot_vec3_i32(vec3<i32>(-32509i, -u_input.b, -16812i), ~_wgslsmith_clamp_vec3_i32(u_input.a.yzy, vec3<i32>(2147483647i, -35513i, u_input.b), vec3<i32>(u_input.b, 39247i, u_input.d))), func_5(func_2(func_4(Struct_1(var_0.a), 18678u, !vec3<bool>(var_1.x, false, var_1.x)), select(!vec4<bool>(true, var_1.x, var_1.x, false), select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_1.x, true, false, true), var_1.x), false)), Struct_1(var_0.a)).x);
}

