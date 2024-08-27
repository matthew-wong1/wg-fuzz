struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<u32, 15> = array<u32, 15>(0u, 0u, 39121u, 4294967295u, 86433u, 1u, 16041u, 15521u, 0u, 0u, 47741u, 28918u, 55162u, 71218u, 73978u);

var<private> global2: Struct_2 = Struct_2(true, vec4<f32>(688f, 289f, -373f, 322f));

var<private> global3: vec4<f32> = vec4<f32>(1000f, -1000f, -1000f, -210f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = ~1u;
    let var_1 = _wgslsmith_mod_u32(reverseBits(~4294967295u), ~(~global1[_wgslsmith_index_u32(4422u, 15u)]));
    return _wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.b.x, 410f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + 1803f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1262f * 186f))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    global2 = global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 4u)];
    let var_0 = Struct_1(~_wgslsmith_add_i32(arg_0.x, arg_0.x));
    global0 = array<Struct_2, 4>();
    let var_1 = global0[_wgslsmith_index_u32(~(0u & (countOneBits(~42610u) >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], 1u)), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 0u, 1u, u_input.d.x)) % 32u))), 4u)];
    var var_2 = !select(!vec3<bool>(true, var_1.a, any(vec2<bool>(var_1.a, true))), select(select(!vec3<bool>(var_1.a, false, global2.a), select(vec3<bool>(true, var_1.a, global2.a), vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, global2.a, var_1.a)), select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(global2.a, global2.a, false), false)), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, var_1.a), vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(global2.a, global2.a, var_1.a)), vec3<bool>(true, true, global2.a)), select(vec3<bool>(global2.a, true, true), vec3<bool>(global2.a, true, false), var_1.a)), all(vec2<bool>(false, select(var_1.a, true, true))));
    return global0[_wgslsmith_index_u32(71744u, 4u)];
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global1 = array<u32, 15>();
    var var_0 = 1i;
    let var_1 = func_3(~(-_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(72875i, -517i))), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, global1[_wgslsmith_index_u32(95275u, 15u)]), 4u)])));
    let var_2 = countOneBits(select(~vec3<i32>(~(-2147483647i), ~(-20546i), ~(-13733i)), ~(-vec3<i32>(1i, 34983i, -22845i)), vec3<bool>(true, global2.a, all(!vec3<bool>(var_1.a, true, false)))));
    var var_3 = var_1.a;
    return Struct_2(any(vec3<bool>(false, true, !(!var_1.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, -1488f) * -386f)), 2534f, 1128f, 139f));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.b.x + global2.b.x), 1000f, arg_2.b.x < -1173f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(-arg_2.b.x), -2405f))));
    var var_0 = arg_0.b.x;
    var var_1 = global0[_wgslsmith_index_u32(((u_input.b ^ 0u) ^ (u_input.a.x ^ abs(_wgslsmith_sub_u32(76049u, arg_1)))) ^ min(reverseBits(~max(33727u, 0u)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.d.x, 1u, 88897u)) >> ((vec4<u32>(4294967295u, 1u, 34888u, arg_1) | vec4<u32>(u_input.d.x, 1u, arg_1, arg_1)) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.d.x, u_input.c, u_input.c, u_input.c)))), 4u)];
    var var_2 = select(!select(vec3<bool>(false != arg_2.a, true, true), !select(vec3<bool>(arg_2.a, var_1.a, true), vec3<bool>(true, true, true), false), var_1.a), select(select(select(vec3<bool>(global2.a, var_1.a, true), select(vec3<bool>(false, global2.a, true), vec3<bool>(global2.a, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false)), any(vec3<bool>(true, arg_0.a, arg_2.a))), select(!vec3<bool>(var_1.a, false, arg_0.a), vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(8016u, 15u)] < global1[_wgslsmith_index_u32(36341u, 15u)]), select(select(vec3<bool>(false, arg_2.a, var_1.a), vec3<bool>(true, var_1.a, true), vec3<bool>(true, arg_0.a, true)), !vec3<bool>(true, arg_0.a, true), select(vec3<bool>(var_1.a, true, global2.a), vec3<bool>(var_1.a, false, var_1.a), arg_0.a))), vec3<bool>(!(!global2.a), !(!global2.a), !arg_2.a && !arg_2.a), !vec3<bool>(any(vec4<bool>(true, global2.a, false, false)), false, true)), select(!(!select(vec3<bool>(global2.a, true, arg_0.a), vec3<bool>(true, global2.a, var_1.a), vec3<bool>(true, false, true))), !(!select(vec3<bool>(arg_2.a, arg_2.a, false), vec3<bool>(false, global2.a, arg_2.a), vec3<bool>(arg_2.a, global2.a, global2.a))), any(vec4<bool>(false, var_1.a, arg_0.a, global2.a)) & arg_0.a));
    var var_3 = Struct_1(-1i);
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(arg_3.x);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 4u)];
    let var_2 = 1u;
    let var_3 = Struct_2(global2.a, arg_2.b);
    var var_4 = var_0;
    return func_4(Struct_2(arg_0.a, func_4(arg_0, 1u, Struct_2(!global2.a, _wgslsmith_f_op_vec4_f32(-arg_0.b))).b), global1[_wgslsmith_index_u32(~58931u, 15u)], func_4(var_3, _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(11980u, 15u)], 44249u), var_2), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(_wgslsmith_mod_vec3_u32(u_input.a, ~vec3<u32>(48093u, 49608u, 4294967295u))), abs(1u), global0[_wgslsmith_index_u32(u_input.b, 4u)]), u_input.a, global0[_wgslsmith_index_u32(1u, 4u)], vec2<i32>(min(reverseBits(~20451i), ~max(-2147483647i, -1i)), -41519i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, _wgslsmith_mod_i32(-2147483647i, min(2147483647i, _wgslsmith_add_i32(-2147483647i, -1i))), _wgslsmith_add_i32(52719i, -(i32(-1i) * -57639i))), select(select(~4294967295u, _wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 12210u), 15u)]), var_0.a), 4294967295u, false), var_0.b, u_input.d, -_wgslsmith_add_vec4_i32(min(~vec4<i32>(-9102i, 17666i, -1i, 4083i), select(vec4<i32>(1i, 1i, 14539i, 40261i), vec4<i32>(31457i, 1593i, 2147483647i, -2147483647i), false)), vec4<i32>(_wgslsmith_mult_i32(-5062i, 0i), -41223i << (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 32174i, 51077i, -2147483647i), vec4<i32>(-1i, 12457i, -36884i, -4945i)), 1i)));
}

