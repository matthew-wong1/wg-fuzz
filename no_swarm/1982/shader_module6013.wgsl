struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<u32, 26>;

var<private> global2: array<vec2<bool>, 5>;

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<i32>) -> u32 {
    global3 = select(vec3<bool>(global3.x, false, false), select(vec3<bool>(_wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_f_op_f32(step(651f, arg_1)), !(!global3.x), arg_1 != _wgslsmith_f_op_f32(max(arg_1, arg_1))), vec3<bool>(!global3.x, global3.x, global3.x), arg_1 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), vec3<bool>(true, global3.x, global3.x));
    global0 = array<Struct_1, 25>();
    return max(reverseBits(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], 29146u, global1[_wgslsmith_index_u32(49059u, 26u)]), vec4<u32>(1u, 74113u, 4294967295u, 44825u)), 122150u))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = Struct_1(-(_wgslsmith_mult_i32(firstLeadingBit(arg_2.b.x), ~(-31443i)) << (0u % 32u)), ~(abs(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-5473i, u_input.a.x, -2147483647i, -17336i))) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.zxy, arg_0), 0u, ~0u, ~0u) % vec4<u32>(32u))), abs(_wgslsmith_clamp_u32(arg_2.c ^ 37521u, arg_1.x, arg_0.x)) & arg_2.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(901f - -1673f) * _wgslsmith_div_f32(2130f, 1236f)) * -1000f), 1461f));
    let var_2 = select(vec3<bool>(true, true, 34923u > global1[_wgslsmith_index_u32(arg_0.x, 26u)]), select(select(vec3<bool>(true, all(vec4<bool>(global3.x, true, global3.x, arg_3)), arg_3), vec3<bool>(any(vec3<bool>(false, true, arg_3)), arg_3, arg_3), !global3.x), vec3<bool>(!(global3.x && false), true, !global3.x), vec3<bool>(true, true, true)), !(47990u <= abs(arg_2.c)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2160f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-181f, -1164f))))));
    var var_4 = var_0;
    return var_4.c;
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-691f, 1267f)))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1655f, -905f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(239f, 423f), vec2<f32>(-234f, 1272f))))))));
    let var_1 = Struct_1(countOneBits(-83717i), _wgslsmith_mod_vec4_i32(~(-u_input.a) | u_input.a, -(~min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 67639i), vec4<i32>(2147483647i, -1773i, 0i, 0i)))), func_3(vec3<u32>(min(1u, func_2(u_input.a, var_0.x, vec4<i32>(-2147483647i, u_input.a.x, -32999i, u_input.a.x))), global1[_wgslsmith_index_u32(~(~58527u), 26u)], ~4267u), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 26u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20050u, 26u)], 26u)], 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73753u, 26u)], 26u)], 26u)], 26u)]), _wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18117u, 26u)], 26u)], 0u, global1[_wgslsmith_index_u32(43055u, 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)]), vec4<u32>(22212u, 1u, global1[_wgslsmith_index_u32(63795u, 26u)], global1[_wgslsmith_index_u32(51276u, 26u)]))), select(select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)], 26u)], 26u)], global1[_wgslsmith_index_u32(0u, 26u)], 4294967295u, 32565u), vec4<u32>(4294967295u, 14150u, global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(6438u, 26u)]), global3.x), ~vec4<u32>(31654u, 1u, global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3910u, 26u)], 26u)], 26u)], 26u)], 26u)], 26u)]), global3.x)), Struct_1(-(~u_input.a.x), vec4<i32>(-u_input.a.x, 1842i, u_input.a.x, 80555i), 30781u), global3.x));
    global2 = array<vec2<bool>, 5>();
    global0 = array<Struct_1, 25>();
    return ~firstTrailingBit(vec2<u32>(var_1.c, _wgslsmith_sub_u32(var_1.c, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !(!(!vec3<bool>(global3.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44391u, 26u)], 26u)] <= 78823u, global3.x)));
    let var_0 = vec4<i32>(~abs(13223i), -1i, u_input.a.x, 50228i);
    var var_1 = _wgslsmith_dot_vec2_u32(countOneBits(~func_1()), firstTrailingBit(~vec2<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 57288u), global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(4294967295u, 26u)]), 26u)])));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -988f, -518f, -573f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-892f, 836f, -1000f, 523f))), vec4<f32>(_wgslsmith_f_op_f32(-2110f + 958f), -369f, -1000f, _wgslsmith_f_op_f32(sign(1136f)))) + vec4<f32>(813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1784f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(841f + 497f) - _wgslsmith_f_op_f32(min(1000f, -333f))), 1f)));
    var var_3 = vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 26u)]), 73594u | global1[_wgslsmith_index_u32(4294967295u, 26u)]), 26u)], 26u)], 26u)], ~func_2(vec4<i32>(436i, 896i, 0i, 0i) << (vec4<u32>(0u, global1[_wgslsmith_index_u32(625u, 26u)], global1[_wgslsmith_index_u32(36086u, 26u)], 58163u) % vec4<u32>(32u)), 346f, -u_input.a), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)])) & _wgslsmith_div_vec3_u32(~(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 26u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14644u, 26u)], 26u)])) << (vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1957u, 0u), 26u)], global1[_wgslsmith_index_u32(1u, 26u)], func_2(vec4<i32>(-23672i, u_input.a.x, -4643i, 33499i), 165f, var_0)) % vec3<u32>(32u)), ~(~vec3<u32>(global1[_wgslsmith_index_u32(21823u, 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24316u, 26u)], 26u)], 0u)));
    var var_4 = _wgslsmith_f_op_f32(var_2.x - 339f);
    global1 = array<u32, 26>();
    global0 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_div_vec4_i32(vec4<i32>(13731i, -2147483647i, -2147483647i >> (1u % 32u), 64312i) >> (~(~vec4<u32>(global1[_wgslsmith_index_u32(7859u, 26u)], var_3.x, global1[_wgslsmith_index_u32(0u, 26u)], 0u)) % vec4<u32>(32u)), max(select(vec4<i32>(20043i, -1i, u_input.a.x, u_input.a.x) ^ vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x), countOneBits(vec4<i32>(var_0.x, var_0.x, 0i, 2147483647i)), !vec4<bool>(false, global3.x, true, true)), var_0)));
}

