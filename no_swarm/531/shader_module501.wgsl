struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: vec3<i32> = vec3<i32>(5245i, -56994i, 1i);

var<private> global3: i32;

var<private> global4: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> bool {
    let var_0 = -(~vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, -global0[_wgslsmith_index_u32(arg_0, 14u)]), u_input.b.x, -1i));
    var var_1 = Struct_1(u_input.d);
    let var_2 = u_input.d.x;
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(17622u, var_1.a.x, arg_0), ~var_1.a.zyy), ~(~4316u), 4294967295u, ~37819u) ^ ~(~abs(vec4<u32>(var_1.a.x, var_2, arg_0, 63849u))));
    let var_4 = Struct_1(~countOneBits(~vec4<u32>(43931u, var_1.a.x, 65482u, 0u)));
    return true;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(~(~4294967295u), u_input.d.x, ~(u_input.c | 0u), select(_wgslsmith_mod_u32(57810u, arg_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, u_input.c, 0u, 32351u), arg_1.a), false)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 6781u, u_input.c, 1u), vec4<u32>(u_input.a, 71160u, 92164u, u_input.a))) | u_input.d));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1555f, _wgslsmith_f_op_f32(-380f + -224f))))));
    global1 = array<Struct_1, 24>();
    let var_2 = !(!((~u_input.b.x > abs(u_input.b.x)) && true));
    let var_3 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, arg_1.a.x, var_0.a.x, 23713u), vec4<u32>(var_0.a.x, u_input.d.x, 93009u, var_0.a.x), !vec4<bool>(false, true, var_2, var_2)), _wgslsmith_sub_vec4_u32(arg_1.a, ~arg_1.a)), arg_1.a));
    return -(vec3<i32>(i32(-1i) * -global0[_wgslsmith_index_u32(u_input.c, 14u)], _wgslsmith_div_i32(1i, max(arg_0.x, 61366i)), arg_0.x) & vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(global2.x, -1i), arg_0.x), arg_0.x ^ firstLeadingBit(-1i), 8066i));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = arg_0;
    global0 = array<i32, 14>();
    global2 = min(vec3<i32>(0i, 30294i, ~(~(-17057i))), func_3(min(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(var_0.a.x, 14u)], 0i, global2.x) | vec4<i32>(-2147483647i, 0i, global0[_wgslsmith_index_u32(u_input.c, 14u)], global2.x), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], 1i, -30327i, -1i)), var_0) ^ vec3<i32>(~1i, global0[_wgslsmith_index_u32(arg_0.a.x << (4294967295u % 32u), 14u)], -29652i));
    var var_1 = -259f;
    var var_2 = firstTrailingBit(global2.x) & -79356i;
    return select(vec3<bool>(!all(select(arg_1, arg_1, arg_1.x)), any(vec2<bool>(all(vec2<bool>(true, arg_1.x)), !arg_1.x)), true), select(select(vec3<bool>(select(true, arg_1.x, false), select(arg_1.x, true, arg_1.x), all(vec4<bool>(true, arg_1.x, false, arg_1.x))), vec3<bool>(true, true, true), vec3<bool>(0u >= var_0.a.x, true, arg_1.x && arg_1.x)), !vec3<bool>(arg_1.x, false, arg_1.x), _wgslsmith_mult_i32(-7277i, u_input.b.x) <= (_wgslsmith_mod_i32(0i, u_input.b.x) >> (reverseBits(var_0.a.x) % 32u))), !((!arg_1.x | all(arg_1)) && !(arg_1.x & arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_sub_i32(-53546i, ~(-1i));
    var var_0 = select(!vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false)) || false, !all(vec2<bool>(false, false))), vec3<bool>(false, true, !(!func_1(u_input.a, vec4<bool>(true, false, true, false)))), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), select(vec3<bool>(true, false, false), func_2(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], vec2<bool>(false, true)), vec3<bool>(false, true, false)), vec3<bool>(any(vec4<bool>(false, true, true, true)), true, all(vec4<bool>(false, false, false, true)))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), func_2(global1[_wgslsmith_index_u32(max(u_input.d.x, 4294967295u), 24u)], vec2<bool>(true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), select(func_2(Struct_1(u_input.d), vec2<bool>(true, true)), select(vec3<bool>(true, true, true), func_2(global1[_wgslsmith_index_u32(0u, 24u)], vec2<bool>(true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), vec3<bool>(true, true, true))));
    global3 = firstTrailingBit(-41778i);
    var var_1 = firstTrailingBit(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.d.x, 14u)], u_input.b.x, 0i), vec4<i32>(u_input.b.x, -3820i, 2147483647i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], global2.x, 38051i, u_input.b.x), vec4<i32>(0i, global2.x, global0[_wgslsmith_index_u32(1u, 14u)], 2147483647i)))) ^ u_input.b.x);
    global4 = true;
    var var_2 = min(vec3<i32>(abs(global2.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(6494i, 4374i & global2.x), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(u_input.d.x, u_input.c)), 14u)]), _wgslsmith_add_i32(16418i, 37754i & global0[_wgslsmith_index_u32(4294967295u, 14u)]) & -firstLeadingBit(global2.x)), ~select(abs(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], global2.x, 2147483647i) >> (vec3<u32>(0u, 0u, u_input.a) % vec3<u32>(32u))), ~vec3<i32>(-28197i, global0[_wgslsmith_index_u32(u_input.c, 14u)], u_input.b.x), vec3<bool>(true, true, true)));
    let var_3 = select(vec4<bool>(true, all(var_0.zy), !any(func_2(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], vec2<bool>(var_0.x, var_0.x)).yz), true), !(!(!(!vec4<bool>(var_0.x, true, true, false)))), !(!(!vec4<bool>(var_0.x, false, true, false))));
    let var_4 = Struct_1(~(~u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global2.yx, firstTrailingBit(vec2<i32>(31191i, global0[_wgslsmith_index_u32(var_4.a.x, 14u)])), vec2<i32>(-30955i, var_2.x)), ~vec2<i32>(24584i, u_input.b.x) ^ ~u_input.b), global0[_wgslsmith_index_u32(firstLeadingBit(~2851u), 14u)], reverseBits(u_input.a & 0u) >= ~(~u_input.a)));
}

