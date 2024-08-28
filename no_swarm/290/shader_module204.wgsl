struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 29>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(-1000f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = !any(vec4<bool>(any(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 29u)], false, true)) || any(vec4<bool>(arg_3.x, arg_3.x, false, global1[_wgslsmith_index_u32(108189u, 29u)])), true, ~u_input.b > 1u, _wgslsmith_mod_u32(arg_2.x, u_input.b) >= ~arg_2.x));
    global1 = array<bool, 29>();
    let var_1 = arg_0;
    global0 = select(select(global1[_wgslsmith_index_u32(u_input.b, 29u)], true, true), !global1[_wgslsmith_index_u32(arg_2.x, 29u)] || !(!(!arg_3.x)), true);
    var var_2 = var_1;
    return var_1;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    global1 = array<bool, 29>();
    global0 = _wgslsmith_mult_i32(11865i, 1i) < _wgslsmith_add_i32(~(~u_input.a), u_input.a);
    var var_0 = ~21147u;
    let var_1 = vec3<i32>(u_input.a, ~u_input.a, -57640i);
    global0 = !all(vec4<bool>(u_input.b < 0u, false, false, true));
    return _wgslsmith_dot_vec3_i32(~var_1, ~(-var_1));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    var var_0 = !all(vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(21441u, 29u)], arg_0, false, true)), global1[_wgslsmith_index_u32(102846u, 29u)]));
    let var_1 = global3.a;
    let var_2 = func_3(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(36918u, 13249u, _wgslsmith_mod_u32(u_input.b, 27406u)), 22658u & u_input.b, u_input.b), 4294967295u, 80139u), func_2(Struct_1(477f), select(vec3<u32>(18360u, _wgslsmith_sub_u32(1u, 1u), ~u_input.b), ~(vec3<u32>(u_input.b, u_input.b, 1u) >> (vec3<u32>(u_input.b, 25487u, u_input.b) % vec3<u32>(32u))), select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(62645u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), global1[_wgslsmith_index_u32(4294967295u, 29u)])), vec2<u32>(36875u, u_input.b), select(vec4<bool>(!arg_0, all(vec2<bool>(arg_0, false)), false, true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(35538u, 29u)], true, global1[_wgslsmith_index_u32(7471u, 29u)]), select(vec4<bool>(true, arg_0, global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(7125u, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], arg_0, true, arg_0), vec4<bool>(global1[_wgslsmith_index_u32(38315u, 29u)], false, arg_0, true)), !vec4<bool>(global1[_wgslsmith_index_u32(22896u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], true, true)), arg_0)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(global2.a, 1000f)), -1039f))));
    var var_3 = 29504u;
    var_3 = 13722u;
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(global2.a)), global3.a, _wgslsmith_f_op_f32(557f * global2.a));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_div_i32(max(u_input.a, u_input.a), -u_input.a);
    global2 = func_2(Struct_1(_wgslsmith_div_f32(-1012f, arg_0.x)), vec3<u32>(~min(select(0u, 27895u, arg_1.x), abs(u_input.b)), ~(1u >> (u_input.b % 32u)), 587u), ~vec2<u32>(0u, _wgslsmith_clamp_u32(3558u, u_input.b, ~1u)), select(!select(vec4<bool>(false, false, arg_1.x, false), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(22760u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<bool>(false, arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(u_input.b, 29u)])), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, true, _wgslsmith_div_f32(511f, arg_0.x) == _wgslsmith_f_op_f32(round(1278f))), true));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(-firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-3911i, u_input.a), vec2<i32>(0i, -27696i))), -37814i, u_input.a, -1844i), vec4<i32>(57295i, select(u_input.a, 1i, any(!vec4<bool>(arg_1.x, arg_1.x, true, false))), 32715i, ~(-u_input.a) >> (u_input.b % 32u)));
    var var_2 = var_1.yz << (~vec2<u32>(max(~0u, _wgslsmith_mult_u32(1u, 60447u)), u_input.b) % vec2<u32>(32u));
    var var_3 = u_input.b;
    return reverseBits(1i);
}

fn func_5(arg_0: vec2<i32>, arg_1: f32) -> Struct_1 {
    global1 = array<bool, 29>();
    let var_0 = ~(~vec4<u32>(_wgslsmith_add_u32(~u_input.b, ~u_input.b), abs(1u), ~u_input.b, _wgslsmith_clamp_u32(0u, u_input.b, u_input.b << (u_input.b % 32u))));
    var var_1 = select(!(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], false, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(38718u, 29u)], false)), select(vec4<bool>(global1[_wgslsmith_index_u32(13169u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], false, global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(14627u, 29u)], true), false), arg_1 > arg_1)), select(select(!(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(15393u, 29u)], global1[_wgslsmith_index_u32(3610u, 29u)], global1[_wgslsmith_index_u32(var_0.x, 29u)])), vec4<bool>(global1[_wgslsmith_index_u32(51364u, 29u)] | true, true, true && global1[_wgslsmith_index_u32(45269u, 29u)], !global1[_wgslsmith_index_u32(27459u, 29u)]), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 29u)], false, global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(var_0.x, 29u)]), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(var_0.x, 29u)])), !vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 29u)], false, false), select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(31062u, 29u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(36487u, 29u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], true, global1[_wgslsmith_index_u32(var_0.x, 29u)])))), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(var_0.x, 29u)], false, global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(14936u, 29u)], global1[_wgslsmith_index_u32(73485u, 29u)], global1[_wgslsmith_index_u32(var_0.x, 29u)], true))), select(global1[_wgslsmith_index_u32(max(u_input.b, 26590u), 29u)], false, all(!vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 29u)], global1[_wgslsmith_index_u32(var_0.x, 29u)])))), vec4<bool>(global1[_wgslsmith_index_u32(~u_input.b, 29u)], true, _wgslsmith_f_op_f32(f32(-1f) * -1188f) <= global2.a, !(_wgslsmith_sub_u32(var_0.x, u_input.b) >= u_input.b)));
    var_1 = select(vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 29u)], var_1.x, global1[_wgslsmith_index_u32(var_0.x, 29u)], false), true)) && !all(vec2<bool>(true, global1[_wgslsmith_index_u32(1926u, 29u)])), true, var_1.x, select(false & global1[_wgslsmith_index_u32(firstLeadingBit(1u), 29u)], all(select(var_1.xy, vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 29u)]), var_1.wy)), var_1.x)), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b), 29u)], true, any(var_1.zz)), vec4<bool>(arg_1 >= 1572f, !var_1.x, true, all(var_1.xz)), global1[_wgslsmith_index_u32(abs(~5512u), 29u)]), select(select(vec4<bool>(var_1.x, false, var_1.x, false), !vec4<bool>(global1[_wgslsmith_index_u32(111600u, 29u)], false, true, var_1.x), any(vec4<bool>(false, var_1.x, global1[_wgslsmith_index_u32(u_input.b, 29u)], false))), !vec4<bool>(true, false, var_1.x, true), var_1.x || (global3.a < global3.a)), select(all(select(vec3<bool>(var_1.x, global1[_wgslsmith_index_u32(var_0.x, 29u)], false), var_1.xww, false)), true, _wgslsmith_f_op_f32(364f - -1278f) == _wgslsmith_f_op_f32(-global2.a))), any(select(var_1.ywx, var_1.xyx, true)));
    global3 = func_2(func_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global2.a))))), ~firstTrailingBit(vec3<u32>(4294967295u, 39012u, u_input.b) >> (vec3<u32>(4294967295u, var_0.x, 13574u) % vec3<u32>(32u))), ~countOneBits(~vec2<u32>(u_input.b, u_input.b)), !vec4<bool>(var_1.x, var_0.x > 76216u, global1[_wgslsmith_index_u32(~111658u, 29u)], true)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~var_0.wzy, vec3<u32>(u_input.b, ~var_0.x, var_0.x)), var_0.zyw), countOneBits(var_0.ww), select(vec4<bool>(_wgslsmith_f_op_f32(global3.a + global2.a) >= -1000f, true, true, true && all(var_1.xyw)), vec4<bool>(all(vec2<bool>(false, true)), (0i & u_input.a) > ~0i, false, global1[_wgslsmith_index_u32(14830u, 29u)]), 1000f == _wgslsmith_f_op_f32(step(508f, _wgslsmith_f_op_f32(trunc(-101f))))));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * _wgslsmith_f_op_f32(ceil(arg_1))) - 1710f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(vec2<i32>(~(4680i & ~u_input.a), func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(false)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.a, -802f, 1557f))), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 29u)], true))), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], true, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, 906f)))));
    global2 = func_2(Struct_1(-1532f), vec3<u32>(~0u, 50118u, 6058u), firstTrailingBit(vec2<u32>(~_wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b)) ^ (u_input.b ^ 1u))), !(!select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(30259u, 29u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], false, true, false), any(vec4<bool>(false, global1[_wgslsmith_index_u32(77953u, 29u)], true, false)))));
    var var_0 = global1[_wgslsmith_index_u32(1u >> (_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(0u, 46201u, 1u, 4294967295u))), max(vec4<u32>(abs(30082u), 4294967295u << (u_input.b % 32u), firstLeadingBit(u_input.b), max(30092u, 0u)), ~select(vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, 34032u), true))) % 32u), 29u)];
    var var_1 = !global1[_wgslsmith_index_u32(u_input.b, 29u)];
    let var_2 = vec4<i32>(1i, ~u_input.a, u_input.a, u_input.a);
    var var_3 = select(select(!(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 29u)], false, global1[_wgslsmith_index_u32(27386u, 29u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(104238u, 29u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], true, true, false))), select(!(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.b, 29u)])), select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], true, global1[_wgslsmith_index_u32(u_input.b, 29u)], true), vec4<bool>(global1[_wgslsmith_index_u32(50315u, 29u)], global1[_wgslsmith_index_u32(42126u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], false, global1[_wgslsmith_index_u32(13979u, 29u)], true)), vec4<bool>(true, global2.a >= -509f, true, true)), select(!select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(0u, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], true), global1[_wgslsmith_index_u32(u_input.b, 29u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(18102u, 29u)], false, global1[_wgslsmith_index_u32(u_input.b, 29u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 29u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], true, global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(76855u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)])), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], false, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)])), all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(12685u, 29u)])))), !vec4<bool>(all(!vec2<bool>(true, global1[_wgslsmith_index_u32(17433u, 29u)])), !select(false, true, false), global1[_wgslsmith_index_u32(u_input.b, 29u)], true), select(!vec4<bool>(true, all(vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(u_input.b, 29u)] | global1[_wgslsmith_index_u32(u_input.b, 29u)], true), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], false, false, global1[_wgslsmith_index_u32(u_input.b, 29u)])), !(global3.a != func_5(var_2.yz, 1760f).a)));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(vec3<i32>(var_2.x, -u_input.a, var_2.x)), _wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 23096i, var_2.x), vec3<i32>(_wgslsmith_mod_i32(var_2.x, u_input.a), u_input.a, countOneBits(-1i))), select(vec3<bool>(true, true, any(var_3.wy)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], true, true), var_3.xyy, !global1[_wgslsmith_index_u32(0u, 29u)]), vec3<bool>(all(vec3<bool>(true, global1[_wgslsmith_index_u32(39495u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)])), true, true))), select(~_wgslsmith_clamp_vec4_i32(var_2, var_2, vec4<i32>(1i, -80611i, 10955i, var_2.x)), _wgslsmith_mod_vec4_i32(~(-var_2), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, 2147483647i, u_input.a), -vec4<i32>(var_2.x, 0i, 1i, var_2.x), var_2)), var_3.x), _wgslsmith_mult_u32(u_input.b, max(7399u, u_input.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(global2.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a, global3.a) + func_2(Struct_1(-693f), vec3<u32>(32314u, 1u, 23798u), vec2<u32>(1u, u_input.b), vec4<bool>(var_3.x, global1[_wgslsmith_index_u32(14870u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], false)).a))))));
}

