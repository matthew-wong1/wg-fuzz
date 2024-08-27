struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(4294967295u, 0u), 0u, 8112i, -30931i, vec2<i32>(1i, 0i)), Struct_1(vec2<u32>(45474u, 2852u), 5765u, 5181i, -53519i, vec2<i32>(32156i, -1i)), Struct_1(vec2<u32>(0u, 29234u), 116656u, -19692i, 0i, vec2<i32>(2147483647i, 21509i)), Struct_1(vec2<u32>(0u, 5371u), 0u, 17800i, 14121i, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<u32>(0u, 4294967295u), 4294967295u, -7346i, 0i, vec2<i32>(2026i, -1i)), Struct_1(vec2<u32>(25690u, 1u), 0u, 0i, 2147483647i, vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<u32>(26069u, 0u), 24731u, -47394i, 22013i, vec2<i32>(i32(-2147483648), 21873i)), Struct_1(vec2<u32>(9512u, 4294967295u), 1u, 20342i, -12776i, vec2<i32>(0i, -6411i)), Struct_1(vec2<u32>(8013u, 61474u), 47096u, 23569i, 25587i, vec2<i32>(2147483647i, 17654i)), Struct_1(vec2<u32>(1u, 46777u), 0u, -122780i, 29030i, vec2<i32>(1i, 1i)), Struct_1(vec2<u32>(50779u, 0u), 53073u, 1i, 2147483647i, vec2<i32>(0i, -1i)), Struct_1(vec2<u32>(4294967295u, 0u), 0u, 22589i, -28555i, vec2<i32>(-1i, 1i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), 4294967295u, -1i, -1i, vec2<i32>(-17005i, -1i)), Struct_1(vec2<u32>(4294967295u, 72728u), 1u, 0i, 1i, vec2<i32>(34448i, 4516i)), Struct_1(vec2<u32>(4294967295u, 43903u), 4294967295u, 1961i, 2147483647i, vec2<i32>(-1i, 0i)), Struct_1(vec2<u32>(15747u, 6163u), 1u, -59253i, 37782i, vec2<i32>(34786i, 9581i)));

var<private> global2: array<bool, 8>;

var<private> global3: vec3<u32> = vec3<u32>(64321u, 4294967295u, 1u);

var<private> global4: vec3<f32> = vec3<f32>(-2063f, 1694f, -149f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = ~(-1i);
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.x)));
    var var_3 = _wgslsmith_mult_u32(9716u, _wgslsmith_add_u32(_wgslsmith_mult_u32(~(~26676u), 0u), 34344u));
    var var_4 = global2[_wgslsmith_index_u32(max(~u_input.a, 7176u) ^ u_input.a, 8u)];
    return 18023u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_4) -> bool {
    global2 = array<bool, 8>();
    let var_0 = _wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(firstTrailingBit(~(~59383u)), firstTrailingBit(firstLeadingBit(~global3.x)), countOneBits(global3.x)));
    var var_1 = min(~var_0, ~(~1u));
    let var_2 = vec2<bool>(any(vec4<bool>(arg_2.b <= (i32(-1i) * -2147483647i), true, false, all(vec2<bool>(global2[_wgslsmith_index_u32(var_0, 8u)], false)))), global2[_wgslsmith_index_u32(~abs(firstLeadingBit(1u)), 8u)]);
    global2 = array<bool, 8>();
    return all(!(!select(select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(true, false, var_2.x, global2[_wgslsmith_index_u32(35093u, 8u)]), var_2.x), !vec4<bool>(true, global2[_wgslsmith_index_u32(arg_2.a.x, 8u)], false, var_2.x), var_2.x)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> bool {
    global3 = _wgslsmith_div_vec3_u32(vec3<u32>(18471u >> (global3.x % 32u), firstLeadingBit(~abs(35770u)), countOneBits(0u)), arg_1.xww);
    let var_0 = Struct_4((arg_1.zy ^ ~min(global3.zz, arg_1.xw)) | _wgslsmith_add_vec2_u32(vec2<u32>(func_2(global4.x), 4294967295u), ~vec2<u32>(arg_0, 55094u)), _wgslsmith_add_i32(countOneBits(-16449i) >> (~_wgslsmith_sub_u32(u_input.a, global3.x) % 32u), 1i));
    var var_1 = Struct_5(var_0);
    let var_2 = 2147483647i;
    var var_3 = 127f;
    return func_3(vec4<u32>(0u, 4294967295u, func_2(global4.x), _wgslsmith_mult_u32(42993u, reverseBits(arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-310f, _wgslsmith_f_op_f32(trunc(global4.x)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4.x)) - global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.x))))), Struct_4(var_0.a, -12519i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(all(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(global3.x, 8u)], global2[_wgslsmith_index_u32(1u, 8u)]), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(61767u, 8u)], global2[_wgslsmith_index_u32(48928u, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], true)), !vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(7316u, 8u)]))), 29604u != select(global3.x, 1u, any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]))), any(vec2<bool>(false, false)));
    let var_1 = !(!func_1(~(~global3.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global3.x, 120950u, u_input.a), vec4<u32>(global3.x, 0u, 70589u, global3.x)) & (vec4<u32>(149299u, u_input.a, 0u, global3.x) & vec4<u32>(4294967295u, 38607u, 4525u, global3.x)), ~(global3.x >> (1u % 32u))));
    let var_2 = vec4<u32>((countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(56310u, u_input.a, global3.x), vec3<u32>(2124u, 0u, global3.x))) | firstLeadingBit(_wgslsmith_add_u32(13090u, 50224u))) >> (~u_input.a % 32u), min(countOneBits(u_input.a), _wgslsmith_clamp_u32(u_input.a, firstTrailingBit(abs(16858u)), 53287u)), select(~_wgslsmith_sub_u32(abs(u_input.a), min(global3.x, global3.x)), ~2483u, all(var_0.xz)), 0u);
    var var_3 = var_2;
    global4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -840f, global4.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.x, global4.x, global4.x))))))));
    let var_4 = select(vec3<bool>(true, global2[_wgslsmith_index_u32(34145u, 8u)], true), select(vec3<bool>(func_1(6417u, ~var_2, min(38568u, var_3.x)), func_3(var_2, global4.xx, Struct_4(global3.yy, 16476i)) || all(vec4<bool>(false, true, true, var_0.x)), true), !(!select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, global2[_wgslsmith_index_u32(39979u, 8u)], true))), select(!vec3<bool>(var_1, var_0.x, false), select(vec3<bool>(var_1, var_0.x, var_1), !vec3<bool>(false, var_1, true), false && global2[_wgslsmith_index_u32(var_2.x, 8u)]), true)), var_1 || any(select(select(vec2<bool>(global2[_wgslsmith_index_u32(var_3.x, 8u)], true), var_0.xz, var_0.yx), select(vec2<bool>(false, var_1), var_0.xy, false), true)));
    var var_5 = vec3<i32>(_wgslsmith_div_i32(select(abs(i32(-1i) * -5078i), _wgslsmith_mult_i32(1i, 16642i >> (var_3.x % 32u)), any(vec2<bool>(false, var_1))), firstTrailingBit(-1i)), countOneBits(select(~_wgslsmith_mod_i32(66622i, -22215i), select(-1485i, -22591i, var_0.x) >> (max(var_3.x, var_2.x) % 32u), false)), 10130i);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_f32(-global4.x)), var_5.xy, -1i, -653f);
}

