struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<Struct_1, 15>;

var<private> global2: bool = false;

var<private> global3: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global4: array<vec2<u32>, 9>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-743f, -2592f))) - vec2<f32>(arg_2, 560f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-862f, 1589f) + vec2<f32>(arg_2, 1492f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, _wgslsmith_f_op_f32(floor(arg_2))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-245f, arg_2) - vec2<f32>(arg_2, arg_2)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(500f, arg_2)))))));
    let var_1 = Struct_1(vec2<i32>(0i, -_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(-40185i, global0[_wgslsmith_index_u32(arg_3.b.x, 20u)], 58824i)))), arg_3.b);
    global2 = true;
    global0 = array<i32, 20>();
    return _wgslsmith_mod_u32(abs(~(~1u)), ~_wgslsmith_mult_u32(~46681u, _wgslsmith_sub_u32(~4294967295u, ~u_input.a)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = ~1i;
    global2 = !(true | !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))));
    global4 = array<vec2<u32>, 9>();
    var var_1 = u_input.a;
    var_1 = ~(~0u);
    return _wgslsmith_sub_u32(arg_1.b.x, ~u_input.a);
}

fn func_2() -> Struct_1 {
    let var_0 = -1983f;
    var var_1 = !((func_4(-1i, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(3007u, u_input.a, u_input.a), 15u)], global1[_wgslsmith_index_u32(func_3(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(59285u, 20u)], u_input.b.x), global4[_wgslsmith_index_u32(34785u, 9u)]), vec4<bool>(false, false, true, true), var_0, Struct_1(vec2<i32>(-12453i, u_input.b.x), vec2<u32>(u_input.a, u_input.a))), 15u)]) | ~(~13400u)) > ~global3.x);
    let var_2 = Struct_1(vec2<i32>(u_input.b.x, ~(-global0[_wgslsmith_index_u32(14793u, 20u)])), _wgslsmith_add_vec2_u32((global4[_wgslsmith_index_u32(abs(u_input.a), 9u)] >> (vec2<u32>(1u, global3.x) % vec2<u32>(32u))) << (vec2<u32>(4294967295u, ~global3.x) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 27296u), global4[_wgslsmith_index_u32(global3.x, 9u)]), ~vec2<u32>(25085u, 1u), vec2<u32>(u_input.a, 1u))));
    global2 = (1i & reverseBits(u_input.b.x)) <= _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-28346i, 39242i, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(45572u, 20u)]) >> (vec4<u32>(0u, var_2.b.x, 0u, 13719u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(global3.x, 20u)]), -2147483647i & global0[_wgslsmith_index_u32(var_2.b.x, 20u)], 0i, u_input.b.x)), -1i);
    global0 = array<i32, 20>();
    return Struct_1(~_wgslsmith_add_vec2_i32(u_input.b.xy, _wgslsmith_mod_vec2_i32(min(var_2.a, var_2.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 15661i), vec2<i32>(u_input.b.x, 0i)))), ~vec2<u32>(var_2.b.x, 5978u));
}

fn func_1() -> Struct_1 {
    global3 = global4[_wgslsmith_index_u32(countOneBits(1u), 9u)];
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(global3.x), 0u >> (~(~(~u_input.a)) % 32u)), 15u)];
    var_0 = func_2();
    var var_1 = !all(!vec4<bool>(any(vec2<bool>(false, true)), true, true, 0u != u_input.a));
    var var_2 = select(!vec4<bool>(true, select(true, all(vec3<bool>(true, true, false)), true), all(vec3<bool>(true, true, true)), true), vec4<bool>(~4294967295u <= _wgslsmith_sub_u32(func_3(Struct_1(var_0.a, global4[_wgslsmith_index_u32(global3.x, 9u)]), vec4<bool>(true, false, false, true), 412f, Struct_1(vec2<i32>(8277i, -25535i), global4[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_mult_u32(global3.x, 1u)), -68042i <= _wgslsmith_div_i32(min(-17638i, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.yy, var_0.a)), true, _wgslsmith_f_op_f32(round(1000f)) <= -393f), any(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), all(vec4<bool>(true, false, false, false)))));
    return global1[_wgslsmith_index_u32(var_0.b.x, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>((global0[_wgslsmith_index_u32(52729u, 20u)] ^ var_0.a.x) ^ ~2147483647i, var_0.a.x), abs(vec2<i32>(~(-31399i), u_input.b.x | u_input.b.x))), global4[_wgslsmith_index_u32(global3.x, 9u)]);
    global3 = ~_wgslsmith_mod_vec2_u32(max(firstTrailingBit(~var_0.b), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.x, var_0.b.x >> (0u % 32u), _wgslsmith_mult_u32(var_1.b.x, 4294967295u)), 9u)]), ~global4[_wgslsmith_index_u32(108065u, 9u)]);
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(max(var_0.b.x, ~(~var_0.b.x)), firstTrailingBit(global3.x)), func_1().b.x);
    global2 = all(select(!vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, false)), !(4294967295u >= var_1.b.x), true && select(true, true, true), true)));
    let var_3 = _wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1450f)))), _wgslsmith_f_op_f32(step(-1125f, 254f))))));
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(var_1.a.x, global0[_wgslsmith_index_u32(0u, 20u)], var_0.a.x, global0[_wgslsmith_index_u32(1u, 20u)]) >> (vec4<u32>(global3.x, u_input.a, 13523u, var_1.b.x) % vec4<u32>(32u))) << (~(vec4<u32>(var_2, 19053u, var_2, var_1.b.x) | vec4<u32>(var_1.b.x, global3.x, 0u, 7467u)) % vec4<u32>(32u)), select(vec4<i32>(u_input.b.x, var_0.a.x, var_4.a.x, global0[_wgslsmith_index_u32(global3.x, 20u)]) | vec4<i32>(var_1.a.x, 40451i, global0[_wgslsmith_index_u32(17442u, 20u)], 7874i), vec4<i32>(2147483647i, countOneBits(var_0.a.x), 0i, 0i), vec4<bool>(true, true, true, true))));
}

