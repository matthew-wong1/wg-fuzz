struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1 = Struct_1(16082u, vec4<bool>(false, false, false, false), vec3<bool>(true, false, false), vec2<u32>(0u, 53719u));

var<private> global2: array<vec4<bool>, 11>;

var<private> global3: array<u32, 25> = array<u32, 25>(4294967295u, 28162u, 42958u, 11093u, 1u, 1u, 19297u, 139u, 1u, 28322u, 1u, 1u, 0u, 71160u, 1u, 8503u, 50122u, 1u, 4294967295u, 7031u, 1u, 1u, 1u, 4294967295u, 26382u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    global3 = array<u32, 25>();
    let var_0 = !global2[_wgslsmith_index_u32(49886u, 11u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-330f, _wgslsmith_f_op_f32(f32(-1f) * -859f)) - 923f)));
    let var_2 = vec4<bool>(var_0.x, var_0.x, true, false);
    var var_3 = 1i;
    return (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1287f)))) == _wgslsmith_f_op_f32(-1542f + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1523f)))) | false;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    var var_0 = arg_1;
    let var_1 = vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))));
    global1 = Struct_1(74515u, select(vec4<bool>(!(!arg_1.c.x), ~(-16399i) > min(0i, u_input.a.x), func_3(Struct_1(var_0.a, vec4<bool>(true, true, var_0.c.x, false), var_0.c, vec2<u32>(80488u, 64403u)), ~vec2<u32>(83863u, arg_3), Struct_1(24854u, vec4<bool>(false, false, global1.b.x, global1.c.x), vec3<bool>(global1.b.x, true, false), arg_1.d), arg_1.d >> (vec2<u32>(global1.a, 16238u) % vec2<u32>(32u))), any(vec2<bool>(true, global1.c.x))), select(!vec4<bool>(false, true, true, global1.c.x), vec4<bool>(global1.c.x, arg_1.c.x, var_0.c.x || false, global1.c.x), all(!global1.b.yz)), false), !vec3<bool>(global1.c.x, func_3(Struct_1(7111u, var_0.b, vec3<bool>(arg_1.c.x, false, arg_1.c.x), vec2<u32>(1u, arg_3)), var_0.d, Struct_1(1u, vec4<bool>(false, global1.b.x, arg_1.b.x, arg_1.c.x), vec3<bool>(true, var_0.b.x, var_0.b.x), vec2<u32>(4077u, 1457u)), min(vec2<u32>(4294967295u, 1u), var_0.d)), arg_1.b.x), vec2<u32>(arg_1.a, ~firstLeadingBit(~var_0.a)));
    var var_2 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3, 4294967295u, global3[_wgslsmith_index_u32(36654u, 25u)], global3[_wgslsmith_index_u32(global1.a, 25u)]), vec4<u32>(global1.a, global1.d.x, global3[_wgslsmith_index_u32(1u, 25u)], arg_3)), ~vec4<u32>(0u, arg_1.a, 25974u, 67320u)), ~(~arg_3)), vec4<bool>(true, ~arg_3 > global3[_wgslsmith_index_u32(max(global1.a, global3[_wgslsmith_index_u32(global1.a, 25u)]), 25u)], var_0.b.x, false), select(!vec3<bool>(global1.b.x, true, !var_0.c.x), select(select(vec3<bool>(var_0.b.x, true, var_0.b.x), global1.c, true), !global1.c, arg_1.b.xxw), vec3<bool>(true, false, !all(vec3<bool>(true, true, false)))), vec2<u32>(15661u, _wgslsmith_div_u32(~arg_1.d.x, reverseBits(~arg_3))));
    var_0 = arg_1;
    return arg_1.d.x;
}

fn func_1() -> vec2<i32> {
    let var_0 = max(vec3<u32>(_wgslsmith_mod_u32(~firstLeadingBit(100035u), 1u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, _wgslsmith_clamp_u32(1u, 4294967295u, 16717u), abs(37787u), global1.d.x >> (1u % 32u)), ~vec4<u32>(14983u, 56134u, 50140u, 11799u))), reverseBits(vec3<u32>(~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(7801u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)]), ~53666u, 4294967295u)));
    global0 = select(-min(_wgslsmith_mod_vec2_i32(u_input.b.xx, vec2<i32>(18918i, global0.x) | u_input.b.xx), -vec2<i32>(global0.x, global0.x)), u_input.a, all(select(vec2<bool>(true, global1.c.x), vec2<bool>(global1.b.x, true), global1.b.yy)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(174f - -1000f))) + 102f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global2 = array<vec4<bool>, 11>();
    var var_2 = Struct_1(global1.a, vec4<bool>(global1.b.x, !(!(global1.c.x || global1.c.x)), global1.b.x, global1.b.x), select(!vec3<bool>(false, true, global1.c.x), !vec3<bool>(all(global1.b), global0.x < 1i, !global1.c.x), vec3<bool>(!(!global1.b.x), all(global2[_wgslsmith_index_u32(35277u, 11u)]) || true, true)), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.d.x, 90505u, var_0.x) ^ vec4<u32>(66391u, 9533u, 0u, 124077u), reverseBits(vec4<u32>(global1.d.x, 2871u, var_0.x, var_0.x))), 33559u, 4294967295u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x), global1.a >> (117121u % 32u), 1u >> (global3[_wgslsmith_index_u32(24384u, 25u)] % 32u), ~var_0.x), vec4<u32>(4294967295u, func_2(vec4<f32>(-130f, var_1.x, -293f, var_1.x), Struct_1(global3[_wgslsmith_index_u32(global1.d.x, 25u)], vec4<bool>(global1.b.x, true, true, false), global1.b.wyz, vec2<u32>(64397u, 26420u)), vec2<f32>(var_1.x, 357f), global1.d.x), 4294967295u ^ global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0, var_0), 25u)])), 25u)]));
    return _wgslsmith_div_vec2_i32(~vec2<i32>(max(u_input.b.x, global0.x), global0.x), countOneBits(~firstLeadingBit(u_input.a))) | ~(_wgslsmith_sub_vec2_i32(-u_input.a, vec2<i32>(1i, global0.x)) >> (global1.d % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((~1u << (max(reverseBits(global3[_wgslsmith_index_u32(13488u, 25u)]), 4294967295u) % 32u)) >> (select(~86871u, 0u, global1.c.x) % 32u), !global1.b, global1.c, _wgslsmith_add_vec2_u32(global1.d, vec2<u32>(~(~0u), abs(51448u))));
    let var_1 = vec4<i32>(abs(38267i), u_input.a.x, 0i, u_input.b.x);
    global0 = _wgslsmith_add_vec2_i32(func_1(), firstTrailingBit(-_wgslsmith_sub_vec2_i32(max(vec2<i32>(-27353i, 21554i), vec2<i32>(var_1.x, global0.x)), var_1.zx)));
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1.a >> (28712u % 32u), max(_wgslsmith_mult_u32(var_0.a, 68979u), 20071u)), 11u)];
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-739f))), 1f))), _wgslsmith_f_op_f32(-787f + 157f)));
    global1 = var_0;
    var var_4 = Struct_1(_wgslsmith_mult_u32(~(~1u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], var_0.a, 0u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a, 25u)], 25u)], var_0.d.x, global1.a))), select(vec4<bool>(func_3(Struct_1(50678u, var_0.b, vec3<bool>(true, true, global1.c.x), vec2<u32>(5762u, global3[_wgslsmith_index_u32(1u, 25u)])), global1.d, var_0, vec2<u32>(4294967295u, global1.a)) || var_2.x, global1.c.x, func_3(var_0, ~var_0.d, var_0, min(vec2<u32>(12532u, 64625u), var_0.d)), false), global1.b, true), var_0.b.wxy, ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global1.d.x, 25u)], 25u)], global1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(42674i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1496f, _wgslsmith_f_op_f32(select(var_3, var_3, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f + var_3)), _wgslsmith_f_op_f32(-var_3)) - vec3<f32>(var_3, var_3, 1462f)), 40027u);
}

