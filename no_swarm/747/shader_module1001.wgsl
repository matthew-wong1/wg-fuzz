struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, false, false, true, true, true, false, true, false, true, false, true, true, true, false, false, true, true, false, false, true, true, false, true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<bool, 26>();
    let var_0 = select(vec3<bool>(any(select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(arg_1.b.x, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(arg_2.b.x, 26u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.b.x, 26u)], global0[_wgslsmith_index_u32(arg_2.c.x, 26u)], global0[_wgslsmith_index_u32(arg_2.b.x, 26u)]))), any(vec2<bool>(false, all(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 26u)])))), false), !select(select(select(vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(1761u, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(1233u, 26u)], false, true)), select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.c.x, 26u)], true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(arg_1.c.x, 26u)], false), global0[_wgslsmith_index_u32(arg_2.b.x, 26u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(9320u, 26u)], true), vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]))), vec3<bool>(true, 577f < arg_2.d.x, any(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(22899u, 26u)]))), select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_2.c.x, 26u)]), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(arg_1.b.x, 26u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.d.x, arg_2.d.x)) - _wgslsmith_f_op_f32(1338f + arg_1.d.x))) > _wgslsmith_f_op_f32(arg_2.d.x * _wgslsmith_f_op_f32(-arg_1.d.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, arg_2.d.x, 234f, arg_2.d.x)))), vec4<f32>(arg_2.d.x, 857f, _wgslsmith_f_op_f32(round(-744f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, arg_2.d.x))))))));
    let var_2 = ~max(arg_1.b.x >> (1u % 32u), ~0u);
    var var_3 = vec3<u32>(arg_2.b.x, countOneBits(9927u), ~u_input.b.x);
    return _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - arg_2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) - -790f)))));
}

fn func_2() -> vec4<u32> {
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    var var_0 = ~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(countOneBits(25612u), ~1u, u_input.b.x), _wgslsmith_clamp_u32(countOneBits(u_input.b.x), u_input.b.x & 1u, u_input.b.x >> (u_input.b.x % 32u))));
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, ~u_input.b.x), firstTrailingBit(1493u)) & _wgslsmith_div_u32(40007u, firstTrailingBit(select(u_input.b.x, 33053u, true))), u_input.b.x, ~(~_wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~u_input.b.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-243f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f * 487f) + -452f)), 1639f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a.yx << (u_input.b % vec2<u32>(32u)), Struct_1(2147483647i, vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(8463u, 0u, u_input.b.x, 0u), vec2<f32>(571f, -606f)), Struct_1(u_input.a.x, vec4<u32>(4294967295u, 3949u, 0u, 24992u), vec4<u32>(1u, 1u, 22735u, u_input.b.x), vec2<f32>(800f, 525f)))))) * vec3<f32>(1814f, _wgslsmith_f_op_f32(-1000f + -352f), 119f));
    return (abs(abs(~vec4<u32>(1u, 45035u, 0u, u_input.b.x))) >> (~firstLeadingBit(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x))) % vec4<u32>(32u))) | vec4<u32>(u_input.b.x, min(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x) >> (u_input.b % vec2<u32>(32u)), ~vec2<u32>(29321u, 0u))), countOneBits(~u_input.b.x), max(~(4294967295u | u_input.b.x), _wgslsmith_clamp_u32(~u_input.b.x, ~u_input.b.x, 31182u)));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(max(1u, arg_1.x), 0u, arg_1.x ^ u_input.b.x, select(~52223u, _wgslsmith_sub_u32(u_input.b.x, arg_1.x), false)), vec4<u32>(_wgslsmith_mult_u32(1u, ~78274u), 4294967295u, u_input.b.x, arg_1.x));
    return Struct_1(countOneBits(u_input.a.x), func_2(), vec4<u32>(_wgslsmith_dot_vec2_u32(~(~arg_1), firstTrailingBit(select(vec2<u32>(0u, arg_1.x), vec2<u32>(arg_1.x, var_0), global0[_wgslsmith_index_u32(var_0, 26u)]))), firstTrailingBit(arg_1.x) << (1u % 32u), ~(~71320u), 12925u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -665f), 457f))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = !vec4<bool>(!global0[_wgslsmith_index_u32(arg_1.c.x >> (arg_1.b.x % 32u), 26u)] | true, any(vec4<bool>(arg_1.a < 1i, false, !global0[_wgslsmith_index_u32(1u, 26u)], -26499i < u_input.a.x)), _wgslsmith_f_op_f32(exp2(arg_1.d.x)) < _wgslsmith_div_f32(-1024f, _wgslsmith_f_op_f32(f32(-1f) * -932f)), all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], false, global0[_wgslsmith_index_u32(arg_1.b.x, 26u)])) | all(vec4<bool>(true, global0[_wgslsmith_index_u32(26972u, 26u)], global0[_wgslsmith_index_u32(arg_0.x, 26u)], false)));
    global0 = array<bool, 26>();
    let var_1 = func_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~arg_1.a), u_input.a.zx), min(arg_1.b.xx, vec2<u32>(arg_0.x, _wgslsmith_mult_u32(4294967295u, arg_1.b.x))) | countOneBits(reverseBits(arg_1.b.yw)), u_input.a.x);
    var var_2 = arg_0.x;
    global0 = array<bool, 26>();
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~max(_wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x) ^ u_input.b.x, ~(~52230u)), 26u)];
    global0 = array<bool, 26>();
    var var_1 = !(!select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], false), !vec3<bool>(true, global0[_wgslsmith_index_u32(15441u, 26u)], global0[_wgslsmith_index_u32(73021u, 26u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)])), !select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec3<bool>(true, true, false), true), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)] & global0[_wgslsmith_index_u32(u_input.b.x, 26u)], false)));
    var var_2 = Struct_1(~2147483647i, ~(~abs(abs(vec4<u32>(u_input.b.x, 4294967295u, 65671u, u_input.b.x)))), _wgslsmith_div_vec4_u32(func_4(vec3<u32>(~u_input.b.x, ~u_input.b.x, abs(1u)), func_1(max(u_input.a.x, u_input.a.x), _wgslsmith_mod_vec2_u32(u_input.b, u_input.b), u_input.a.x)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 21813u) & vec4<u32>(u_input.b.x, 64934u, 5639u, 14528u), min(vec4<u32>(0u, 1u, 56911u, 0u), vec4<u32>(u_input.b.x, 14108u, 0u, u_input.b.x))))), vec2<f32>(-1679f, _wgslsmith_f_op_f32(579f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(820f, -428f)) * _wgslsmith_f_op_f32(f32(-1f) * -1591f)))));
    let var_3 = func_1(var_2.a, (u_input.b ^ vec2<u32>(reverseBits(u_input.b.x), firstTrailingBit(44710u))) << (vec2<u32>(_wgslsmith_div_u32(u_input.b.x, ~69036u), abs(~u_input.b.x)) % vec2<u32>(32u)), countOneBits(firstTrailingBit(1i) >> (79959u % 32u)));
    global0 = array<bool, 26>();
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_sub_i32(min(u_input.a.x, u_input.a.x), abs(var_3.a)), -countOneBits(firstTrailingBit(-21473i)), ~(u_input.a.x ^ -1i), var_4.a), func_4(func_4(~select(var_2.b.yww, var_3.b.wyy, global0[_wgslsmith_index_u32(1771u, 26u)]), var_3).yyw, var_3).xzx, vec4<f32>(_wgslsmith_f_op_f32(floor(var_4.d.x)), _wgslsmith_f_op_f32(1401f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-619f, 1885f)) * _wgslsmith_f_op_f32(var_3.d.x - 120f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-973f - -396f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.x))), var_2.d.x), (vec4<i32>(_wgslsmith_div_i32(var_2.a, var_3.a), ~(-3763i), firstTrailingBit(-23240i), func_1(-2147483647i, var_4.c.xx, var_4.a).a) & min(vec4<i32>(var_4.a, 0i, 0i, 61848i), vec4<i32>(-2147483647i, -56863i, 2147483647i, var_2.a))) | min(vec4<i32>(var_3.a << (var_3.c.x % 32u), _wgslsmith_add_i32(22271i, var_4.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -73563i), vec3<i32>(var_4.a, var_3.a, u_input.a.x)), -u_input.a.x), abs(-vec4<i32>(-2147483647i, 48648i, 2147483647i, u_input.a.x))));
}

