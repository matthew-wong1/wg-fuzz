struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<bool, 2>;

var<private> global1: array<vec4<u32>, 31>;

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<vec4<f32>, 25>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = -1013f;
    let var_1 = any(select(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a.x, ~4294967295u), 2u)], _wgslsmith_clamp_u32(u_input.a.x, 52571u, arg_2.x) > ~60692u, all(select(vec4<bool>(global0[_wgslsmith_index_u32(61936u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(38472u, 2u)], global0[_wgslsmith_index_u32(2664u, 2u)], false, global0[_wgslsmith_index_u32(arg_2.x, 2u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(arg_2.x, 2u)], true)))), vec3<bool>(global0[_wgslsmith_index_u32(abs(u_input.a.x), 2u)], !all(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 2u)], global0[_wgslsmith_index_u32(arg_2.x, 2u)])), all(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 2u)], false, true))), vec3<bool>(firstTrailingBit(-11261i) > arg_1.x, false, any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true, true)))));
    var var_2 = min(arg_0.x, min(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, arg_0.x, 12116i, arg_1.x), arg_0, !vec4<bool>(false, true, var_1, false)), firstTrailingBit(~arg_0)), arg_1.x));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(497f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1746f)), _wgslsmith_f_op_f32(1100f * 1506f), any(vec4<bool>(var_1, true, false, true)))) * -187f))), _wgslsmith_f_op_f32(round(-806f))));
    var var_3 = 233f;
    return _wgslsmith_sub_u32(~0u, ~1u);
}

fn func_4(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = -946f;
    var var_1 = select(!vec2<bool>((2147483647i >> (u_input.a.x % 32u)) >= 4153i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.a.b, 14498i, arg_0.c.c.b), vec3<i32>(-40506i, arg_0.a.c.b, arg_0.a.c.b)) <= firstLeadingBit(arg_0.c.a.b)), vec2<bool>(!all(!vec4<bool>(false, true, arg_0.a.a.e.x, true)), !(!(false || arg_0.c.b.x))), vec2<bool>(!(!arg_0.a.b.x), false));
    let var_2 = -(~vec4<i32>(_wgslsmith_sub_i32(-31651i, _wgslsmith_div_i32(arg_0.c.c.b, arg_0.c.c.b)), reverseBits(arg_0.a.c.b << (4294967295u % 32u)), arg_0.c.a.b & -1i, 1i));
    var_1 = select(vec2<bool>(false, true), arg_0.c.a.e, !global0[_wgslsmith_index_u32(u_input.a.x, 2u)]);
    var var_3 = -137f;
    return u_input.a.yx;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: f32) -> bool {
    global1 = array<vec4<u32>, 31>();
    var var_0 = u_input.a.yw & func_4(Struct_3(global2[_wgslsmith_index_u32(28100u, 26u)], abs(func_3(vec4<i32>(-48556i, -1i, 0i, -6079i), vec2<i32>(-10190i, 30651i), vec4<u32>(35489u, u_input.a.x, u_input.a.x, 1u))), global2[_wgslsmith_index_u32(~(~4294967295u), 26u)]));
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = any(vec3<bool>(func_2(_wgslsmith_f_op_f32(max(arg_3, -362f)), _wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_f_op_f32(1228f + arg_0.c.a.x)), global0[_wgslsmith_index_u32(abs(arg_1.c.d.x ^ 57770u), 2u)], arg_1.c.b >= (arg_0.a.b & 0i))) && arg_0.c.e.x;
    let var_1 = u_input.a.x;
    global2 = array<Struct_2, 26>();
    var var_2 = arg_1.a;
    var var_3 = Struct_2(arg_1.c, arg_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.c.a), 0i, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1051f))), _wgslsmith_f_op_f32(var_2.a.x * -1444f), 471f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0.c.a.x))))), vec3<u32>((var_1 >> (21146u % 32u)) << (func_3(vec4<i32>(arg_1.a.b, 36395i, arg_1.a.b, -795i), vec2<i32>(arg_1.a.b, arg_0.a.b), vec4<u32>(var_1, u_input.a.x, arg_1.a.d.x, var_2.d.x)) % 32u), var_2.d.x, 1u), select(arg_0.c.e, !arg_1.a.e, vec2<bool>(select(true, true, global0[_wgslsmith_index_u32(0u, 2u)]), true))));
    return select(var_2.d.x, ~7195u, all(vec4<bool>(true, !var_2.e.x, var_3.c.e.x, var_2.e.x)));
}

fn func_5(arg_0: u32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1438f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f)), _wgslsmith_f_op_f32(ceil(-1306f)));
    global2 = array<Struct_2, 26>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.x) - vec2<f32>(-2331f, var_0.x)))), _wgslsmith_mod_i32(-abs(abs(-1i)), _wgslsmith_add_i32(1i, abs(1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -983f))), _wgslsmith_f_op_f32(-436f * _wgslsmith_f_op_f32(select(-352f, var_0.x, global0[_wgslsmith_index_u32(54954u, 2u)]))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(select(-475f, 137f, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-824f - var_0.x)))) + global3[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec3<u32>(max(~countOneBits(u_input.a.x), countOneBits(1u)), 23441u, reverseBits(u_input.a.x)), vec2<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u ^ arg_0, arg_0), 2u)], func_2(var_0.x, 872f, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(35188u, 26u)];
    var var_1 = Struct_2(func_5(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, var_0.c.d.x), func_1(Struct_2(Struct_1(vec2<f32>(var_0.a.a.x, 1029f), var_0.c.b, vec4<f32>(468f, -545f, -1786f, 406f), vec3<u32>(41055u, 1u, u_input.a.x), var_0.c.e), var_0.b, Struct_1(vec2<f32>(var_0.a.c.x, 1709f), 0i, global3[_wgslsmith_index_u32(34033u, 25u)], var_0.c.d, var_0.b.zz)), global2[_wgslsmith_index_u32(50164u, 26u)], true, var_0.a.c.x)), ~0u)), var_0.b, func_5(~u_input.a.x));
    var var_2 = Struct_2(var_0.a, select(var_1.b, var_0.b, global0[_wgslsmith_index_u32(42317u, 2u)]), func_5(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_1.c.d.x, u_input.a.x) | _wgslsmith_div_u32(42416u, 4294967295u), var_1.a.d.x, _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(var_0.a.d.x, 17670u)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1602f, var_2.c.a.x))), vec2<f32>(-338f, var_1.a.a.x))))), var_0.c.b, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1118f, var_0.a.a.x, _wgslsmith_f_op_f32(var_1.c.c.x + var_1.c.a.x), _wgslsmith_div_f32(-1528f, var_0.a.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1117f, var_2.a.c.x, var_1.a.c.x, -1225f)))))), vec3<u32>(60877u << (var_0.c.d.x % 32u), u_input.a.x ^ var_2.c.d.x, 108836u) | _wgslsmith_div_vec3_u32(var_1.a.d ^ vec3<u32>(var_1.a.d.x, var_2.a.d.x, 2222u), ~var_2.c.d), !func_5(_wgslsmith_dot_vec3_u32(var_0.c.d, vec3<u32>(4294967295u, var_2.a.d.x, 16794u))).e), vec3<bool>(select(true, _wgslsmith_f_op_f32(-var_1.c.a.x) == _wgslsmith_f_op_f32(-var_1.c.c.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 0u, 1u, 29086u)), abs(u_input.a.x)), 2u)]), true, true), var_0.a);
    var var_4 = -1i;
    let var_5 = func_5(~(~(90834u >> (countOneBits(var_2.a.d.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.x);
}

