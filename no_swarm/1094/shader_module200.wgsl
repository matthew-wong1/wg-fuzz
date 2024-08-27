struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(2147483647i, vec3<f32>(-1264f, 1533f, -1268f)), Struct_1(0i, vec3<f32>(1000f, -1000f, -318f)), Struct_1(2147483647i, vec3<f32>(-1328f, -1431f, -289f)), Struct_1(7689i, vec3<f32>(-1041f, 1175f, 157f)), Struct_1(i32(-2147483648), vec3<f32>(-313f, -1579f, 1005f)), Struct_1(0i, vec3<f32>(688f, 1203f, -155f)), Struct_1(i32(-2147483648), vec3<f32>(-791f, -927f, -496f)), Struct_1(12227i, vec3<f32>(1170f, 515f, -984f)));

var<private> global1: Struct_1 = Struct_1(-2888i, vec3<f32>(288f, 989f, 415f));

var<private> global2: Struct_1;

var<private> global3: f32;

var<private> global4: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = global1.a;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global2 = Struct_1(~(~0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b.x, global1.b.x, global1.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1050f, 173f), arg_1.b, vec3<bool>(false, true, true)))))))));
    global3 = _wgslsmith_f_op_f32(-arg_1.b.x);
    global3 = -132f;
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -720f);
    var var_0 = abs(select(reverseBits(max(vec4<u32>(global4.x, 1u, 13305u, global4.x) | vec4<u32>(global4.x, global4.x, 19066u, 7180u), ~vec4<u32>(4294967295u, 41346u, 0u, global4.x))), ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 8072u), vec4<u32>(4294967295u, u_input.a, 1u, 101105u))), false));
    return _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = true | !(!(!arg_1.x) & any(!vec3<bool>(arg_2, arg_1.x, arg_2)));
    let var_1 = vec4<f32>(1108f, 793f, -180f, _wgslsmith_f_op_f32(1819f * _wgslsmith_f_op_f32(func_3(Struct_1(~1i, global1.b), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(53150u, 1u), 8u)], Struct_1(global2.a, vec3<f32>(arg_3.x, arg_3.x, -743f))))));
    var var_2 = arg_0;
    global2 = global0[_wgslsmith_index_u32(u_input.a, 8u)];
    let var_3 = firstLeadingBit(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(global1.a, global2.a, 52316i, global2.a) << (_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(4294967295u, u_input.a, var_2.x, u_input.a)) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-39156i, -2147483647i, global2.a, global2.a)), vec4<i32>(global1.a, 0i, 0i, -2147483647i) ^ abs(vec4<i32>(global1.a, 0i, global2.a, 0i)))));
    return Struct_1(select(-1i, ~_wgslsmith_mod_i32(0i, ~(-29603i)), all(arg_1)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(846f - -516f)))), arg_3.x, global2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 36651u, global4.x), abs(vec4<u32>(1u, 28981u, global4.x, global4.x)))), vec3<bool>(true & func_1(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 8u)]), false, all(vec4<bool>(true, true, true, true))), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1066f, global1.b.x, global1.b.x)) + vec3<f32>(global2.b.x, global2.b.x, global2.b.x))), global2.b));
    var var_1 = vec2<bool>(func_1(abs(max(u_input.b | u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b))), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 8u)]), true);
    global1 = func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(~(u_input.b.x >> (u_input.b.x % 32u)), global4.x, u_input.b.x, 1u), vec4<u32>(global4.x, ~select(global4.x, 19499u, var_1.x), _wgslsmith_add_u32(global4.x, 53568u >> (0u % 32u)), 1u)), vec3<bool>(var_1.x, all(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, true, var_1.x), var_1.x)), select(!(621f <= global2.b.x), all(vec4<bool>(false, true, false, false)), var_1.x)), true, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2238f, _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(step(636f, -1151f))))))));
    var_1 = vec2<bool>(true, any(select(select(!vec3<bool>(true, var_1.x, false), !vec3<bool>(false, var_1.x, true), !var_1.x), select(select(vec3<bool>(true, false, false), vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), false), global4.x >= global4.x), vec3<bool>(select(var_1.x, true, var_1.x), !var_1.x, -2147483647i <= global1.a))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b), global1.b);
    let var_3 = global0[_wgslsmith_index_u32(abs(abs(_wgslsmith_mult_u32(global4.x, 4294967295u ^ u_input.b.x))) << (global4.x % 32u), 8u)];
    global2 = func_2(vec4<u32>(global4.x, ~(~1u), _wgslsmith_clamp_u32(u_input.b.x & global4.x, u_input.a, 1u >> (abs(u_input.a) % 32u)), 53075u), vec3<bool>(var_1.x, false, true), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-667f, var_0.b.x, global1.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1989f), -1106f, _wgslsmith_f_op_f32(max(-719f, global1.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.b.yx))), vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1338f)))))));
}

