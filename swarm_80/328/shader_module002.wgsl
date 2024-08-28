struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 15252u;

var<private> global1: array<f32, 4>;

var<private> global2: f32 = -1422f;

var<private> global3: array<u32, 29> = array<u32, 29>(57064u, 31482u, 4294967295u, 75147u, 4294967295u, 4294967295u, 1u, 0u, 1u, 59616u, 13751u, 4294967295u, 4294967295u, 4294967295u, 69010u, 85117u, 74889u, 89308u, 0u, 1u, 1u, 7032u, 0u, 0u, 0u, 0u, 0u, 61564u, 0u);

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_div_i32(61713i, -27114i)), ~u_input.c));
    let var_1 = abs(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], 4294967295u)), vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], ~global3[_wgslsmith_index_u32(u_input.a, 29u)])) ^ global3[_wgslsmith_index_u32(1u, 29u)]);
    var var_2 = select(vec4<bool>(!(!all(vec3<bool>(arg_0.a, arg_0.d, arg_0.d))), any(select(vec2<bool>(arg_0.d, arg_0.d), select(vec2<bool>(true, true), vec2<bool>(arg_0.a, arg_0.a), arg_0.d), vec2<bool>(arg_0.a, arg_0.a))), false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 4u)]))) <= global1[_wgslsmith_index_u32(1u, 4u)]), select(select(select(select(vec4<bool>(false, false, arg_0.d, true), vec4<bool>(false, arg_0.a, arg_0.d, true), vec4<bool>(false, true, arg_0.d, arg_0.a)), select(vec4<bool>(true, false, arg_0.a, true), vec4<bool>(false, arg_0.a, arg_0.d, arg_0.a), arg_0.a), !vec4<bool>(arg_0.d, false, true, arg_0.d)), select(vec4<bool>(true, arg_0.d, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, arg_0.d))), -2147483647i > countOneBits(arg_0.b.x)), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_0.d, arg_0.a, false, true), vec4<bool>(false, arg_0.a, arg_0.d, false)), !vec4<bool>(false, false, arg_0.a, arg_0.a), true), vec4<bool>(global3[_wgslsmith_index_u32(58891u, 29u)] != var_1, true, arg_0.a, arg_0.a || true), !(arg_0.a && true)), false), select(!select(vec4<bool>(true, arg_0.a, true, arg_0.a), !vec4<bool>(true, arg_0.d, false, false), !vec4<bool>(true, arg_0.d, arg_0.a, false)), select(select(select(vec4<bool>(false, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), false), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.d, false, arg_0.a, false)), vec4<bool>(all(vec2<bool>(arg_0.a, arg_0.a)), true, arg_0.a, true), !(!vec4<bool>(true, arg_0.d, true, arg_0.a))), select(!vec4<bool>(false, true, arg_0.a, false), vec4<bool>(all(vec2<bool>(arg_0.a, true)), true, false, arg_0.a), !select(vec4<bool>(arg_0.a, true, arg_0.a, true), vec4<bool>(true, true, true, false), arg_0.a))));
    global1 = array<f32, 4>();
    var var_3 = abs(~(~_wgslsmith_div_vec4_u32(vec4<u32>(74464u, u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], u_input.a), vec4<u32>(var_1, global3[_wgslsmith_index_u32(4294967295u, 29u)], var_1, u_input.a)))) | ~select(~vec4<u32>(1u, u_input.a, global3[_wgslsmith_index_u32(104114u, 29u)], u_input.a), vec4<u32>(~u_input.a, ~global3[_wgslsmith_index_u32(var_1, 29u)], 1u, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global3[_wgslsmith_index_u32(15356u, 29u)]), 29u)]), min(global3[_wgslsmith_index_u32(var_1, 29u)], var_1) > global3[_wgslsmith_index_u32(max(16810u, var_1), 29u)]);
    return abs(select(abs(vec4<i32>(1i, arg_0.b.x, u_input.d.x, 3947i)), ~vec4<i32>(74239i, 2147483647i, 1975i, -29681i), !vec4<bool>(false, var_2.x, true, true)) << (max(vec4<u32>(var_1, global3[_wgslsmith_index_u32(37407u, 29u)], 4294967295u, var_3.x) ^ vec4<u32>(0u, global3[_wgslsmith_index_u32(11562u, 29u)], var_1, var_3.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, 0u, 39110u, 4294967295u), vec4<u32>(1u, var_1, 3504u, global3[_wgslsmith_index_u32(var_1, 29u)]))) % vec4<u32>(32u))) | -(firstLeadingBit(vec4<i32>(u_input.c, u_input.b, 11689i, arg_0.b.x) << (vec4<u32>(28164u, global3[_wgslsmith_index_u32(var_3.x, 29u)], var_1, u_input.a) % vec4<u32>(32u))) >> (min(vec4<u32>(var_1, 44011u, 0u, var_3.x), ~vec4<u32>(u_input.a, 34041u, var_3.x, u_input.a)) % vec4<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = 0i;
    var var_1 = 510f;
    let var_2 = arg_1;
    var var_3 = (_wgslsmith_dot_vec4_i32(abs(var_2.a & vec4<i32>(var_2.a.x, var_2.a.x, arg_0, -12691i)), var_2.a) << (~var_2.e.x % 32u)) & -_wgslsmith_mod_i32(max(-1i, arg_1.d.x), -func_3(Struct_1(true, vec2<i32>(u_input.d.x, 49832i), arg_1.c.c, var_2.c.d)).x);
    var var_4 = select(arg_1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(arg_0), _wgslsmith_dot_vec2_i32(u_input.d.xx, var_2.c.b)), arg_0, firstTrailingBit(~(-24465i)), -arg_0), var_2.a), all(select(select(vec2<bool>(false, arg_1.c.d), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(var_2.c.a, true), arg_1.c.a)), !select(vec2<bool>(var_2.c.a, arg_1.c.a), vec2<bool>(arg_1.c.d, false), vec2<bool>(arg_1.c.d, false)), false || all(vec3<bool>(false, false, false)))));
    return select(vec4<u32>(30368u, 26137u, ~max(17039u, 0u), select(~(~13026u), 1u, all(vec4<bool>(true, false, false, true)))), vec4<u32>(~(~u_input.a), u_input.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(var_2.e.x, 29u)], 4294967295u), reverseBits(27288u)), _wgslsmith_mult_u32(~var_2.e.x, ~u_input.a)) >> (countOneBits(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 47643u, 23854u, 58304u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_2.e.x, u_input.a, 0u), vec4<u32>(0u, 4294967295u, u_input.a, u_input.a)))) % vec4<u32>(32u)), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec4_u32(func_4(-34496i, Struct_2(reverseBits(func_3(arg_2)), ~vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)], 49110u), arg_2, ~(vec3<i32>(2147483647i, arg_2.b.x, 0i) ^ vec3<i32>(u_input.b, arg_2.b.x, arg_2.b.x)), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(~38846u, 29u)]))), ~(select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], 29u)], 16062u, global3[_wgslsmith_index_u32(4294967295u, 29u)], 90865u), vec4<u32>(global3[_wgslsmith_index_u32(70909u, 29u)], 94509u, global3[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a), vec4<bool>(false, false, arg_2.d, arg_2.a)) | vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31775u, 29u)], 29u)], 29u)], 1u)) | vec4<u32>(_wgslsmith_add_u32(39345u, abs(17583u)), 1u, global3[_wgslsmith_index_u32(~151774u, 29u)] >> (_wgslsmith_add_u32(4294967295u, 0u) % 32u), 4218u));
    var var_1 = _wgslsmith_add_i32(arg_2.b.x, abs(arg_2.b.x));
    let var_2 = Struct_1(all(vec3<bool>(false, true, !(!arg_2.a))), vec2<i32>(_wgslsmith_mod_i32(0i, 1i << (var_0.x % 32u)), _wgslsmith_div_i32(arg_2.b.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, arg_2.b.x), u_input.d.yy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1304f - -555f)) - arg_0.x)), !((arg_2.a && false) || true));
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(961f))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-611f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f) + -614f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0.x))))));
    return Struct_2(select(firstTrailingBit(vec4<i32>(firstLeadingBit(-21934i), 2147483647i, 0i, abs(14441i))), ~(~firstTrailingBit(vec4<i32>(2147483647i, -14506i, -8660i, 2147483647i))), !select(vec4<bool>(true, true, false, arg_2.d), vec4<bool>(arg_2.d, true, false, arg_2.a), vec4<bool>(false, false, false, arg_2.d))), var_0.yyw, global4[_wgslsmith_index_u32(~(~0u), 21u)], u_input.d | -(u_input.d << (~vec3<u32>(var_0.x, global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)]) % vec3<u32>(32u))), select(min(var_0.xx, ~vec2<u32>(0u, 0u)), ~var_0.wy, select(select(vec2<bool>(false, var_2.d), vec2<bool>(var_2.a, var_2.d), true), select(vec2<bool>(true, var_2.a), vec2<bool>(var_2.a, arg_2.a), vec2<bool>(true, false)), arg_2.d)) << ((vec2<u32>(var_0.x, ~0u) ^ (vec2<u32>(1u, 0u) << (var_0.xz % vec2<u32>(32u)))) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> vec4<bool> {
    let var_0 = !select(select(!vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(true, !arg_0.x, true, all(vec4<bool>(arg_0.x, false, arg_0.x, false))), any(arg_0)), vec4<bool>(arg_0.x, any(arg_0.yy), true, true), !select(!vec4<bool>(true, false, arg_0.x, false), vec4<bool>(arg_0.x, false, false, arg_0.x), !vec4<bool>(true, true, false, arg_0.x)));
    global4 = array<Struct_1, 21>();
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(453f, 112f) * vec2<f32>(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-239f, 527f) + vec2<f32>(arg_1, 466f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-188f, arg_1) - vec2<f32>(835f, arg_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(190f, 758f) * vec2<f32>(arg_1, 726f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1110f, arg_1)), Struct_1(false, u_input.d.xx, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(1u, 29u)] >> (u_input.a % 32u)), 4u)]), true && (_wgslsmith_add_i32(u_input.b, u_input.c) > select(u_input.b, u_input.b, true))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 + arg_1))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.a, 4u)]))))))));
    let var_2 = Struct_2(~(-vec4<i32>(0i, 22115i, -40021i, var_1.c.b.x) ^ (var_1.a >> (vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)], 4294967295u, u_input.a) % vec4<u32>(32u)))), var_1.b, Struct_1(true, _wgslsmith_clamp_vec2_i32(~var_1.d.zz, ~(-u_input.d.xx), vec2<i32>(_wgslsmith_mult_i32(15421i, 0i), -var_1.d.x)), -857f, _wgslsmith_add_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)]), var_1.e.x) >= min(global3[_wgslsmith_index_u32(48022u, 29u)], var_1.b.x | 12269u)), -(~u_input.d) >> (abs(vec3<u32>(~u_input.a, countOneBits(u_input.a), ~global3[_wgslsmith_index_u32(5566u, 29u)])) % vec3<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.e.x, var_1.e.x), ~var_1.b.yy));
    var var_3 = reverseBits(_wgslsmith_dot_vec2_i32(-u_input.d.zx, vec2<i32>(-2147483647i, _wgslsmith_mod_i32(-104972i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.b.x, -83327i), vec2<i32>(-25253i, 0i))))));
    return !(!vec4<bool>(false, true, true, var_1.b.x == u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1721f;
    global3 = array<u32, 29>();
    let var_0 = vec4<bool>(true, false, any(func_1(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), global1[_wgslsmith_index_u32(u_input.a, 4u)])), true);
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(14272u, 4u)], _wgslsmith_f_op_f32(ceil(-247f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], 180f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(1u, 4u)], 881f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1868f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4043u, 4u)] * global1[_wgslsmith_index_u32(83417u, 4u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1[_wgslsmith_index_u32(u_input.a, 4u)])))), var_0.x)), Struct_1(select(false, u_input.c == ~0i, !(var_0.x || true)), ~_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.d.x, u_input.b), vec2<i32>(-66184i, u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1320f, global1[_wgslsmith_index_u32(28787u, 4u)])) + global1[_wgslsmith_index_u32(u_input.a, 4u)]), func_1(select(var_0.wzz, var_0.wwx, var_0.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30422u, 29u)], 4u)])).x == true), func_2(vec2<f32>(_wgslsmith_f_op_f32(-1000f - -189f), _wgslsmith_f_op_f32(min(-1670f, global1[_wgslsmith_index_u32(~0u, 4u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-665f, global1[_wgslsmith_index_u32(37177u, 4u)]), vec2<f32>(-1116f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(670u, 29u)], 4u)]))))), Struct_1(true, ~(~u_input.d.xz), _wgslsmith_f_op_f32(max(692f, global1[_wgslsmith_index_u32(u_input.a, 4u)])), all(var_0)), -189f).c.c);
    global2 = -1183f;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_u32(1u, u_input.a), var_1.b.x, !all(func_1(vec3<bool>(var_1.c.d, true, var_1.c.a), var_1.c.c))));
}

