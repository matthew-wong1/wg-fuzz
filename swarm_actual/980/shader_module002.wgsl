struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<f32, 24>;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<f32>(935f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.c, 24u)]));
    var var_1 = firstLeadingBit(~(~(vec4<u32>(4294967295u, arg_3.c, 28782u, arg_2.b.x) >> (reverseBits(vec4<u32>(arg_2.a, 1u, 0u, 1u)) % vec4<u32>(32u)))));
    global0 = select(!(!select(!vec2<bool>(true, arg_3.d.x), !vec2<bool>(global0.x, arg_1.d.x), vec2<bool>(arg_3.d.x, false))), !select(vec2<bool>(true, all(arg_3.d)), !select(vec2<bool>(arg_2.d.x, arg_1.d.x), vec2<bool>(global0.x, global0.x), arg_1.d.x), any(!vec2<bool>(arg_2.d.x, false))), (_wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))) && all(vec4<bool>(-1000f == var_0.x, arg_3.d.x, true, true)));
    let var_2 = true;
    global2 = array<Struct_1, 14>();
    return ~22142u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !vec2<bool>(false | (~arg_0.b.x <= _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, arg_1.b.x, arg_1.a, u_input.a), vec4<u32>(0u, arg_1.b.x, 1u, arg_1.b.x))), true);
    let var_1 = arg_1.d;
    let var_2 = arg_0;
    global2 = array<Struct_1, 14>();
    var var_3 = 4294967295u;
    return Struct_1(_wgslsmith_mod_u32(1u, ~(~(~u_input.b))), vec3<u32>(_wgslsmith_sub_u32(var_2.b.x, firstLeadingBit(1u)) ^ (~arg_0.c | 6510u), arg_1.b.x, select(arg_1.c, func_3(_wgslsmith_f_op_f32(f32(-1f) * -229f), Struct_1(arg_1.a, vec3<u32>(16630u, 560u, 4294967295u), 1u, arg_0.d), var_2, Struct_1(arg_0.b.x, arg_1.b, 4294967295u, arg_0.d)), arg_1.d.x)), ~arg_1.c, var_2.d);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: i32) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~u_input.a ^ max(~select(33313u, 23827u, false), u_input.a)), 14u)];
    var var_1 = global2[_wgslsmith_index_u32(30209u, 14u)];
    var_1 = global2[_wgslsmith_index_u32(89992u, 14u)];
    var_0 = func_2(Struct_1(u_input.b, select(vec3<u32>(~53278u, 1u, 36505u), countOneBits(_wgslsmith_add_vec3_u32(var_1.b, var_0.b)), select(vec3<bool>(arg_1.x, global0.x, global0.x), vec3<bool>(arg_1.x, false, false), select(arg_1.yxw, vec3<bool>(false, true, arg_1.x), false))), 77172u, !select(select(vec4<bool>(true, arg_1.x, true, true), arg_1, arg_1), !vec4<bool>(global0.x, false, arg_1.x, false), select(false, arg_1.x, arg_1.x))), Struct_1(u_input.a, select(vec3<u32>(1u, ~0u, 9094u), var_0.b, vec3<bool>(true, any(var_0.d.wxw), arg_1.x)), 36974u, vec4<bool>((u_input.c.x >> (var_1.b.x % 32u)) >= u_input.c.x, var_1.d.x, (1i | u_input.c.x) != ~arg_2, true)));
    let var_2 = -1i;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = func_2(arg_1, arg_0);
    let var_1 = 2147483647i;
    var var_2 = func_2(arg_1, Struct_1(var_0.a, var_0.b, u_input.a >> (~4294967295u % 32u), select(arg_0.d, arg_0.d, !vec4<bool>(arg_1.d.x, false, true, true))));
    var var_3 = Struct_1(1u, _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.b, arg_0.b), vec3<u32>(_wgslsmith_mod_u32(u_input.b, 28443u), 22449u, ~arg_1.b.x) << ((var_2.b ^ arg_1.b) % vec3<u32>(32u)), vec3<u32>(max(u_input.b, 1u) ^ arg_0.c, 0u, firstTrailingBit(_wgslsmith_mult_u32(4294967295u, var_0.a)))), var_0.c & ~44759u, var_2.d);
    var_2 = Struct_1(select(38433u, var_3.a >> (_wgslsmith_dot_vec2_u32(abs(arg_1.b.yy), vec2<u32>(33280u, 58901u) ^ var_0.b.yz) % 32u), var_2.d.x), ~arg_0.b, abs(u_input.b | 0u), !(!vec4<bool>(!var_3.d.x, arg_0.d.x || false, false, true | arg_0.d.x)));
    return vec3<f32>(457f, -803f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.a, 24u)] + -1300f)))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(var_2.c), _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, var_2.c), ~0u)), 24u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(~1u, vec3<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(59423u, u_input.a, 1u, 37265u)), ~vec4<u32>(1u, u_input.a, 0u, 7255u)), 21770u, _wgslsmith_mod_u32(abs(u_input.a), _wgslsmith_mod_u32(u_input.b, u_input.a))), _wgslsmith_add_u32(u_input.a, ~u_input.b), vec4<bool>(any(select(vec3<bool>(false, true, global0.x), vec3<bool>(true, global0.x, true), global0.x)), global0.x, func_1(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(true, global0.x, true)), !vec4<bool>(global0.x, true, global0.x, global0.x), 21612i), !global0.x != global0.x)), Struct_1(func_2(func_2(global2[_wgslsmith_index_u32(u_input.a & 38348u, 14u)], func_2(global2[_wgslsmith_index_u32(21285u, 14u)], global2[_wgslsmith_index_u32(108070u, 14u)])), Struct_1(u_input.b << (u_input.b % 32u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(u_input.b, u_input.b, u_input.a)), u_input.b ^ u_input.a, vec4<bool>(true, true, false, true))).b.x, ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.a, 1u) << (vec3<u32>(58944u, u_input.b, 2675u) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, 35581u, 3739u)), ~(~_wgslsmith_div_u32(16882u, u_input.a)), !(!(!vec4<bool>(global0.x, true, false, global0.x))))));
    let var_1 = true;
    let var_2 = Struct_1(u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, ~84433u, u_input.a), ~(~(~vec3<u32>(u_input.b, 0u, 4294967295u)))), u_input.b, vec4<bool>(var_1, global0.x, !var_1, global0.x && global0.x));
    global1 = array<f32, 24>();
    var var_3 = vec2<i32>(u_input.c.x, ~(-(0i << (u_input.a % 32u))));
    var var_4 = Struct_1(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 1u, _wgslsmith_mult_u32(var_2.b.x, 4294967295u)), 4294967295u), (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b.x, 81131u, var_2.c), var_2.b), ~var_2.b) | vec3<u32>(89393u, firstLeadingBit(u_input.b), 4294967295u)) & var_2.b, func_3(_wgslsmith_f_op_f32(round(2723f)), Struct_1(var_2.b.x, ~_wgslsmith_add_vec3_u32(vec3<u32>(var_2.b.x, u_input.a, 2597u), var_2.b), countOneBits(_wgslsmith_mult_u32(1u, var_2.a)), !var_2.d), func_2(func_2(var_2, func_2(Struct_1(1u, var_2.b, u_input.a, var_2.d), Struct_1(54963u, var_2.b, 13674u, vec4<bool>(false, var_1, var_2.d.x, false)))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, ~4294967295u), 14u)]), var_2), !vec4<bool>(true, func_3(892f, Struct_1(24482u, var_2.b, u_input.a, var_2.d), var_2, Struct_1(72571u, vec3<u32>(u_input.a, 0u, 1u), var_2.c, var_2.d)) != ~var_2.a, true, var_3.x <= _wgslsmith_sub_i32(u_input.c.x, u_input.c.x)));
    global0 = vec2<bool>(global0.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b ^ u_input.b, 0u, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(63682u, 24u)] - var_0.x) - global1[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 1652f)) * _wgslsmith_f_op_f32(-var_0.x)), global1[_wgslsmith_index_u32(countOneBits(firstLeadingBit(0u)), 24u)]))));
}

