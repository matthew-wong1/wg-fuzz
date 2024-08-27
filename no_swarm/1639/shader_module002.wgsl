struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<bool, 21>;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 31248u, 3820u, 0u);

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-445f));
    global2 = ~max(vec4<u32>(global2.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(1u), _wgslsmith_add_u32(arg_0.c.x, 42586u)), 1u)], 1u, 1u), vec4<u32>(70354u, select(global0[_wgslsmith_index_u32(~1u, 1u)], global0[_wgslsmith_index_u32(48154u, 1u)] >> (global0[_wgslsmith_index_u32(arg_0.b, 1u)] % 32u), true), _wgslsmith_div_u32(0u, 1u), 2215u));
    global2 = vec4<u32>(arg_0.c.x, ~(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(54251u, 1u)], 0u) & 0u), _wgslsmith_div_u32(abs(u_input.b), 25393u), _wgslsmith_div_u32(~(_wgslsmith_mod_u32(0u, 1u) | min(0u, arg_0.b)), _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(~global2.x, 1u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 1u)], 41350u), 1u)])));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(var_0, 694f)), _wgslsmith_f_op_f32(step(var_0, var_0)), var_0, 1068f)))));
    global1 = array<bool, 21>();
    return u_input.c;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(683f + -766f)))));
    var var_1 = _wgslsmith_mult_i32(max(func_3(global3[_wgslsmith_index_u32(arg_2.c.x, 13u)]) | _wgslsmith_mult_i32(arg_0, -8958i), _wgslsmith_sub_i32(~u_input.a.x, 3949i ^ arg_0)), -32402i) >> (~firstTrailingBit(firstTrailingBit(30705u)) % 32u);
    var var_2 = _wgslsmith_f_op_f32(max(307f, _wgslsmith_f_op_f32(598f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f + _wgslsmith_f_op_f32(f32(-1f) * -664f))))));
    var_0 = 1000f;
    var var_3 = -(~u_input.a.x & -38005i);
    return 10934u;
}

fn func_1() -> bool {
    global2 = ~(~vec4<u32>(49795u, select(3432u, global2.x, global1[_wgslsmith_index_u32(u_input.b, 21u)]) | 63566u, 1339u, func_2(u_input.a.x, all(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4732u, 1u)], 21u)], false, false, global1[_wgslsmith_index_u32(13051u, 21u)])), Struct_1(true, global0[_wgslsmith_index_u32(global2.x, 1u)], global2.xwy, vec3<u32>(global2.x, global0[_wgslsmith_index_u32(21540u, 1u)], 1u)))));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = _wgslsmith_f_op_f32(-1778f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(388f, _wgslsmith_f_op_f32(round(-1000f))))));
    var var_1 = _wgslsmith_mult_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.a.x, u_input.a.x, 2147483647i), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, 1i)), -1i), vec2<i32>(u_input.a.x, u_input.c));
    var_0 = _wgslsmith_f_op_f32(-335f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(515f * _wgslsmith_f_op_f32(min(-126f, _wgslsmith_f_op_f32(step(-122f, -875f)))))));
    return all(select(vec3<bool>(!global1[_wgslsmith_index_u32(global2.x, 21u)], !global1[_wgslsmith_index_u32(u_input.b, 21u)], any(vec3<bool>(global1[_wgslsmith_index_u32(44983u, 21u)], true, true))), select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 21u)], true), vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 21u)], true, true), true), vec3<bool>(global1[_wgslsmith_index_u32(56876u, 21u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 21u)]), vec3<bool>(false, true, true)), vec3<bool>(global2.x != global0[_wgslsmith_index_u32(1u, 1u)], true, 0i >= var_1.x))) || true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(), 1u, vec3<u32>(~4294967295u, u_input.b, _wgslsmith_dot_vec2_u32(~global2.wz >> (~global2.yx % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(global2.xy, global2.yx))), _wgslsmith_mult_vec3_u32(vec3<u32>(select(51754u >> (global2.x % 32u), _wgslsmith_add_u32(35755u, global2.x), true), ~abs(65344u), global2.x), countOneBits(select(global2.zww, vec3<u32>(47121u, u_input.b, global2.x), select(vec3<bool>(false, global1[_wgslsmith_index_u32(1045u, 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 21u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 1u)], 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 21u)]), global1[_wgslsmith_index_u32(4294967295u, 21u)])))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -438f);
    global3 = array<Struct_1, 13>();
    global2 = vec4<u32>(func_2(u_input.c, any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)], var_0.a)), Struct_1(any(vec4<bool>(var_0.a, global1[_wgslsmith_index_u32(u_input.b, 21u)], var_0.a, false)), ~43364u, ~global2.yzw, _wgslsmith_sub_vec3_u32(var_0.d, global2.zyz))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(reverseBits(global2.xw), var_0.c.zx), ~32786u), 0u, var_0.c.x) ^ vec4<u32>(var_0.c.x, ~global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 1u)], _wgslsmith_add_u32(_wgslsmith_sub_u32(~global2.x, 1u), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4911u, 1u)], 1u)], _wgslsmith_mod_u32(29776u, global2.x), abs(global2.x))), global0[_wgslsmith_index_u32(30909u, 1u)]);
    let var_2 = Struct_1(false, ~func_2(-abs(1i), true, global3[_wgslsmith_index_u32(0u, 13u)]), ~(~vec3<u32>(5095u, u_input.b, 6582u) & var_0.d) >> ((~(~global2.zwz) ^ abs(vec3<u32>(global2.x, 30148u, 1u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 55825u, u_input.b), vec3<u32>(38780u, 40660u, 5707u)), var_0.d.x, abs(0u)), vec3<u32>(0u, 5894u, _wgslsmith_div_u32(var_0.d.x, global2.x))), _wgslsmith_mod_vec3_u32(~abs(var_0.c), ~var_0.c & firstLeadingBit(global2.ywy))));
    var var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1891f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1 - -527f), _wgslsmith_f_op_f32(sign(-1359f)), _wgslsmith_div_f32(var_1, 717f), var_1)))), vec4<i32>(firstLeadingBit(select(i32(-1i) * -2147483647i, 1i, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, -2147483647i, u_input.c, u_input.a.x)), abs(2147483647i)), min(select(vec4<i32>(-9074i, -1i, 43596i, -2147483647i), vec4<i32>(30884i, u_input.c, u_input.a.x, 17168i), true), ~vec4<i32>(1i, 40568i, u_input.a.x, 1i))), func_3(var_0), func_3(Struct_1(true, 1u, var_2.c, vec3<u32>(92815u, var_0.d.x, global0[_wgslsmith_index_u32(1u, 1u)])))), u_input.a.x);
}

