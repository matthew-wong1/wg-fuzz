struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(0i, 7125u, 0u), Struct_1(1i, 53843u, 4294967295u), Struct_1(10938i, 1u, 40906u), Struct_1(-32326i, 21499u, 0u), Struct_1(i32(-2147483648), 4294967295u, 4294967295u), Struct_1(-47020i, 73351u, 0u), Struct_1(-1i, 19729u, 27007u), Struct_1(-1i, 1u, 0u), Struct_1(0i, 93719u, 19185u), Struct_1(-1i, 30054u, 21624u), Struct_1(-39303i, 4294967295u, 29618u), Struct_1(1i, 53151u, 4294967295u), Struct_1(121561i, 1u, 4294967295u), Struct_1(-39236i, 23932u, 6711u), Struct_1(0i, 28434u, 18419u), Struct_1(3576i, 22303u, 18682u));

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: bool) -> f32 {
    global2 = !(!vec4<bool>(false, arg_1, !(false & arg_3), all(global2.zxy)));
    var var_0 = -873f;
    global1 = array<Struct_1, 16>();
    global2 = !vec4<bool>((arg_2.x ^ ~0u) >= 18291u, true || global3.x, !global2.x, all(!global2.zyy));
    var var_1 = firstLeadingBit(arg_0.a);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(545f, -917f))), -567f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1533f * 2273f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -169f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-704f + -353f) - 688f)), true));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -106f;
    let var_1 = firstTrailingBit(u_input.b);
    global3 = !vec2<bool>(select(true, false, ~31416u <= abs(u_input.b.x)), !(global2.x & true));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(822u, 32u)], false, vec4<u32>(41012u, arg_1.b, 1u, u_input.b.x), true)), _wgslsmith_f_op_f32(step(-389f, -1088f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0, var_0) + vec3<f32>(-1631f, -345f, 830f)))))))));
    global2 = !vec4<bool>(all(!select(global2.yyy, global2.xxy, false)), !global2.x, !(arg_0 != 0i), false);
    return global0[_wgslsmith_index_u32(reverseBits(~var_1.x | 0u), 32u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = ~1509u;
    var var_1 = func_2(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(30071i, -1i, 0i, -48166i), vec4<i32>(28430i, -2147483647i, arg_0.a, arg_0.a)), ~vec4<i32>(2147483647i, 4577i, arg_0.a, arg_0.a)) | max(arg_2.a, ~arg_2.a)), arg_2);
    var var_2 = -(-_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(arg_0.a, arg_2.a)), max(vec2<i32>(arg_2.a, arg_2.a), vec2<i32>(arg_2.a, var_1.a))) >> (vec2<u32>(~(36704u >> (var_1.b % 32u)), var_0) % vec2<u32>(32u)));
    let var_3 = global3.x;
    let var_4 = ~arg_0.c ^ var_0;
    return firstLeadingBit(arg_0.c);
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global1 = array<Struct_1, 16>();
    var var_0 = Struct_1(~1i << (~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 22111u, u_input.a.x) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x << (~1u % 32u), u_input.a.x, 0u, func_4(func_2(-25064i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), _wgslsmith_f_op_f32(abs(522f)), Struct_1(0i, u_input.b.x, u_input.b.x))), firstLeadingBit(vec4<u32>(~u_input.b.x, u_input.b.x, ~u_input.b.x, countOneBits(0u)))), _wgslsmith_dot_vec2_u32(min(vec2<u32>(max(u_input.b.x, u_input.a.x), ~u_input.b.x), min(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) & _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u))), vec2<u32>(u_input.a.x, ~min(32222u, 1u))));
    var var_1 = global0[_wgslsmith_index_u32(var_0.c, 32u)];
    return firstTrailingBit(_wgslsmith_clamp_u32(var_1.b, u_input.a.x >> (var_0.c % 32u), 22177u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = !global2.x;
    global3 = select(!(!vec2<bool>(true, global3.x)), global2.zx, func_1() == _wgslsmith_sub_u32(var_0.x, ~abs(0u)));
    var var_2 = func_2(i32(-1i) * -67710i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u << ((_wgslsmith_mod_u32(var_0.x, u_input.b.x) << (select(17872u, 13824u, false) % 32u)) % 32u), ~0u), 32u)]);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(729f, 1227f, 238f, 401f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2283f, 1217f, -714f, 2037f), vec4<f32>(-170f, -1866f, 798f, -856f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, _wgslsmith_f_op_f32(f32(-1f) * -167f), 614f, -1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 475f, -371f, -563f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(3357f))) * _wgslsmith_f_op_f32(-564f - 263f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(295f, -777f)) - _wgslsmith_div_f32(-745f, 559f)))), _wgslsmith_f_op_f32(floor(-373f)), _wgslsmith_f_op_f32(func_3(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, var_2.a, var_2.a, 2147483647i), vec4<i32>(var_2.a, -1502i, -2147483647i, var_2.a)), Struct_1(var_2.a, 0u, 21075u)), firstTrailingBit(4294967295u) == func_2(2147483647i, global1[_wgslsmith_index_u32(96009u, 16u)]).b, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, var_0.x) | vec4<u32>(var_2.b, 4294967295u, u_input.a.x, 0u), max(vec4<u32>(u_input.a.x, 43817u, 5772u, 1u), vec4<u32>(var_0.x, u_input.b.x, var_2.b, 0u))), global2.x))), select(select(vec4<bool>(!global3.x, 1u >= u_input.b.x, global2.x | global2.x, any(global2.zy)), vec4<bool>(all(vec3<bool>(global2.x, false, global3.x)), true, global3.x, !global3.x), !(!vec4<bool>(global2.x, global3.x, true, false))), select(!vec4<bool>(global2.x, global2.x, true, true), !select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(global2.x, global3.x, global3.x, global2.x), global3.x), vec4<bool>(false, false, true, global2.x)), vec4<bool>(select(global3.x, true, false), false, false, any(vec2<bool>(global2.x, global2.x))))));
    var var_4 = 1u;
    var_4 = firstLeadingBit(u_input.b.x);
    let var_5 = ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 59526u), 4294967295u, var_2.c, ~(~var_0.x)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(105424u, var_2.b, u_input.b.x, 66668u), vec4<u32>(u_input.b.x, var_0.x, var_0.x, 41076u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(46271u, 1u, 43405u, 1u), vec4<u32>(13860u, var_0.x, 44461u, 4294967295u)) % vec4<u32>(32u))));
    let var_6 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(min(firstLeadingBit(vec3<i32>(7833i, var_2.a, var_2.a)), -vec3<i32>(var_2.a, var_2.a, 0i))), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, abs(var_2.a), ~var_2.a), max(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a, var_2.a, -2147483647i), vec3<i32>(var_2.a, var_2.a, -1i)), ~vec3<i32>(-2147483647i, -2147483647i, -34965i)))), vec3<i32>(min(var_2.a | -var_2.a, -1i), 47803i, -var_2.a), vec3<i32>(-64534i, _wgslsmith_dot_vec3_i32(vec3<i32>(15673i, 20751i, -1i), abs(vec3<i32>(var_2.a, 35315i, 0i))), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_2.b, var_2.c, ~(~var_0.x), func_4(func_2(var_2.a, global0[_wgslsmith_index_u32(var_2.b, 32u)]), _wgslsmith_f_op_f32(-456f + 395f), Struct_1(var_2.a, var_0.x, var_0.x))));
}

