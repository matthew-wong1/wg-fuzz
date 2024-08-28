struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true)));

var<private> global1: vec2<bool>;

var<private> global2: u32 = 1u;

var<private> global3: array<u32, 28>;

var<private> global4: vec3<u32> = vec3<u32>(23956u, 0u, 26556u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    let var_0 = Struct_1(select(select(!vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, any(vec3<bool>(global1.x, true, true)), any(vec4<bool>(global1.x, global1.x, false, global1.x))), arg_0.x <= abs(6095i)), !select(select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, true, global1.x), global1.x), vec3<bool>(true, true, true), !vec3<bool>(global1.x, global1.x, true)), all(vec4<bool>(true && global1.x, global1.x, any(vec3<bool>(global1.x, global1.x, global1.x)), global1.x))), !(!select(!vec2<bool>(global1.x, true), select(vec2<bool>(false, true), vec2<bool>(false, global1.x), true), !vec2<bool>(global1.x, false))));
    let var_1 = global1.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1046f, 450f, 1634f, 1000f))))), vec4<f32>(1f, 1f, 1f, 1f), ~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(0u, 28u)], 4125u) <= 50472u)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -674f) * -498f), _wgslsmith_f_op_f32(ceil(606f)), 1600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-773f * 411f))))));
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_4 = arg_0;
    return false;
}

fn func_2() -> Struct_1 {
    global2 = max(4294967295u, ~4294967295u);
    global3 = array<u32, 28>();
    var var_0 = Struct_1(!select(!vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, func_3(vec4<i32>(1i, 0i, -1i, 15630i)), global1.x), false), select(vec2<bool>(firstTrailingBit(global4.x) > _wgslsmith_sub_u32(50953u, u_input.a), true), !select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), select(vec2<bool>(true, false), vec2<bool>(true, global1.x), vec2<bool>(global1.x, true))), true || global1.x));
    global2 = _wgslsmith_div_u32(max(~94378u, global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(4454u, global4.x), 28u)] >> (~abs(9412u) % 32u)), _wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(32274u, global4.x), global4.xy)), u_input.a));
    var var_1 = !var_0.a;
    return global0[_wgslsmith_index_u32(u_input.b, 6u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global2 = 4294967295u;
    var var_0 = max(abs(min(-vec4<i32>(2147483647i, 2147483647i, 12063i, 2536i), -vec4<i32>(-1i, -19691i, 0i, 1i))), ~_wgslsmith_mult_vec4_i32(abs(~vec4<i32>(1i, -31376i, -1i, 21120i)), vec4<i32>(1i, 1i, 1i, 1i)));
    var_0 = _wgslsmith_sub_vec4_i32(~(vec4<i32>(reverseBits(var_0.x), _wgslsmith_dot_vec2_i32(var_0.ww, vec2<i32>(var_0.x, -1i)), var_0.x, -var_0.x) | ~abs(vec4<i32>(26227i, 39115i, -36376i, 9668i))), max(vec4<i32>(var_0.x, ~(0i >> (global4.x % 32u)), ~var_0.x, -firstTrailingBit(var_0.x)), -(vec4<i32>(1i, 38622i, 0i, 27400i) | reverseBits(vec4<i32>(var_0.x, 30058i, -2147483647i, 7374i)))));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -101f), 756f))) - vec2<f32>(-737f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-230f))))));
    return ~vec3<u32>(_wgslsmith_div_u32(4294967295u, select(4294967295u, 26537u, global1.x)), u_input.a, 40024u) << (vec3<u32>(countOneBits(u_input.b), _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(u_input.a, 28u)], ~(0u ^ u_input.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, global4.x, global4.x, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, global3[_wgslsmith_index_u32(global4.x, 28u)], 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, global3[_wgslsmith_index_u32(14809u, 28u)]), vec4<u32>(0u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 28u)], 28u)], 77604u))) & ~(~u_input.c)) % vec3<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32) -> vec3<u32> {
    global4 = _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_mod_u32(~arg_1, global4.x << (arg_1 % 32u)) & 75175u, 1u), func_4(global0[_wgslsmith_index_u32(40035u, 6u)], func_2()));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -867f), -3563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1104f))))), 1000f);
    var var_1 = -(min((vec2<i32>(arg_2, arg_2) | vec2<i32>(0i, arg_2)) >> (global4.yz % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-4557i, arg_2), vec2<i32>(-2147483647i, -22839i)) ^ ~vec2<i32>(39776i, 7478i)) ^ vec2<i32>(arg_2, _wgslsmith_sub_i32(arg_2, 1i)));
    let var_2 = abs(var_1.x);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1934f * 104f)))));
    return vec3<u32>(4294967295u, 0u, 59772u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    global4 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~u_input.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global4.zx, global4.zx), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 28u)], 28u)] >> (global4.x % 32u)), ~(global4.x & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 28u)], 28u)], 28u)], 28u)])), select(_wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(0u, 27074u, 0u)), min(~vec3<u32>(global3[_wgslsmith_index_u32(global4.x, 28u)], 1u, 0u), func_1(false, 10656u, -2147483647i))), min(_wgslsmith_div_vec3_u32(vec3<u32>(global4.x, 267u, 0u) >> (vec3<u32>(global4.x, 1u, 0u) % vec3<u32>(32u)), vec3<u32>(1u, u_input.c, 4294967295u)), vec3<u32>(1u, 29106u >> (1u % 32u), ~60633u)), vec3<bool>(select(global1.x, global1.x, true), false, global1.x)));
    global1 = !vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(4038u, global4.x, 9374u), vec3<u32>(15890u, 0u, 0u) << (vec3<u32>(global3[_wgslsmith_index_u32(1u, 28u)], 46541u, global4.x) % vec3<u32>(32u))) <= _wgslsmith_div_u32(18676u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21797u, 28u)] & global3[_wgslsmith_index_u32(10971u, 28u)], 28u)]), !any(!vec4<bool>(global1.x, true, global1.x, false)));
    let var_0 = vec3<bool>(true, any(vec4<bool>(global1.x, global1.x, global1.x, all(!vec2<bool>(false, global1.x)))), false);
    let var_1 = Struct_1(select(var_0, !var_0, vec3<bool>(any(select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, false, false, false), global1.x)), true, true)), var_0.xy);
    global3 = array<u32, 28>();
    var var_2 = var_1.b;
    var var_3 = 783f;
    let var_4 = ~vec4<u32>(global4.x, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(~4294967295u, 28u)], ~global3[_wgslsmith_index_u32(4294967295u, 28u)]), 28u)], 1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-48502i, reverseBits(~2406i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -233f), _wgslsmith_f_op_f32(-457f + 1000f), _wgslsmith_f_op_f32(step(486f, 1763f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(768f, _wgslsmith_f_op_f32(abs(2472f)), _wgslsmith_f_op_f32(-1778f - 347f))), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(103f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(329f)), -1072f)), -1793f) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-373f, -952f, -196f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, -774f, -113f)))))), ~vec4<u32>(global4.x, reverseBits(~u_input.a), 55370u, _wgslsmith_div_u32(4294967295u, 1u)), abs(-vec4<i32>(1i, 1i, 1i, 1i)));
}

