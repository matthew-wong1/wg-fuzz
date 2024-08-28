struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-712f, -180f), -8313i);

var<private> global3: Struct_1 = Struct_1(vec2<f32>(1000f, -220f), 1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(2645f + arg_2.a.x), _wgslsmith_div_f32(-213f, global2.a.x)), i32(-1i) * -7024i);
    let var_1 = arg_2;
    let var_2 = !(!(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true))));
    global0 = array<u32, 31>();
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a)), 1i & max(-754i, ~arg_2.b >> (4679u % 32u)));
    return 50853u;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = vec3<u32>(~(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.a, 12397u)), 31u)] | (global0[_wgslsmith_index_u32(0u, 31u)] >> (global0[_wgslsmith_index_u32(u_input.c.x, 31u)] % 32u))), global0[_wgslsmith_index_u32(26826u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]) & vec3<u32>(1u, func_3(-2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(u_input.a), 31u)], 28u)], Struct_1(vec2<f32>(438f, arg_0.x), 0i), Struct_1(vec2<f32>(-176f, -1094f), 1i)) ^ ~_wgslsmith_sub_u32(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], 31u)], 31u)]), u_input.a);
    var var_1 = global1[_wgslsmith_index_u32(0u, 28u)];
    let var_2 = vec2<f32>(global3.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-218f + global3.a.x), _wgslsmith_mult_i32(global3.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 6699i), u_input.b)) <= (~2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, var_1.b, 3027i), vec3<i32>(-66970i, 2147483647i, -21286i))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(var_1.a.x, var_1.a.x));
    var_1 = global1[_wgslsmith_index_u32(select(~_wgslsmith_clamp_u32(var_0.x, 1u, ~global0[_wgslsmith_index_u32(0u >> (u_input.c.x % 32u), 31u)]), ~(func_3(_wgslsmith_add_i32(-76504i, global3.b), global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(var_0.x << (1u % 32u), 28u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), 28u)]) & _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 14651u, global0[_wgslsmith_index_u32(24855u, 31u)], 4294967295u), vec4<u32>(u_input.a, arg_1, 30281u, global0[_wgslsmith_index_u32(71351u, 31u)]) | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 31u)], 31u)], 31u)], 27930u, var_0.x, arg_1))), any(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false))))), 28u)];
    return global1[_wgslsmith_index_u32(35248u, 28u)];
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global3 = Struct_1(vec2<f32>(-1842f, 1f), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.b.x & 2147483647i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.b, -19866i, global2.b, 0i), vec4<i32>(global2.b, 1i, global3.b, 19466i)))), ~(~(-vec3<i32>(-4399i, global3.b, 1150i)))));
    var var_0 = global3.b;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.x, -163f), global3.a, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global3.a.x) * global2.a))), vec2<f32>(_wgslsmith_f_op_f32(global3.a.x + global2.a.x), global3.a.x))), global0[_wgslsmith_index_u32(0u, 31u)], global2.a.x);
    let var_2 = global1[_wgslsmith_index_u32(select(4294967295u, global0[_wgslsmith_index_u32(func_3(~_wgslsmith_add_i32(_wgslsmith_mult_i32(-14807i, var_1.b), var_1.b), Struct_1(vec2<f32>(1719f, _wgslsmith_f_op_f32(-var_1.a.x)), -select(global3.b, -24440i, true)), var_1, func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-202f, global3.a.x)), true)), 63905u, _wgslsmith_f_op_f32(-func_2(vec2<f32>(1330f, -393f), arg_0.x, 466f).a.x))), 31u)], !select(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global3.a.x) != 324f, any(vec2<bool>(true, false)) & true)), 28u)];
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, -151f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1918f)), -302f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-193f))), true))), 0i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(global2.a * global3.a), -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-512f, _wgslsmith_f_op_f32(f32(-1f) * -1455f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), 561f)));
    let var_1 = arg_1;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-155f, -2033f))), ~0u, -606f).a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.x, 2074f)) - -1211f))) * 639f);
    let var_2 = var_1;
    let var_3 = all(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false)), true, !any(vec2<bool>(true, true))));
    return StorageBuffer(31225u, _wgslsmith_mod_i32(55929i, 9517i), -3530i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(u_input.c & vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, 34u), u_input.a ^ 67498u)), _wgslsmith_dot_vec3_u32(select(reverseBits(firstTrailingBit(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), ~vec3<u32>(4294967295u, 8124u, u_input.c.x) & vec3<u32>(global0[_wgslsmith_index_u32(46944u, 31u)], 55459u, 1u), any(vec2<bool>(true, true))), countOneBits(vec3<u32>(~0u, ~89219u, _wgslsmith_dot_vec4_u32(vec4<u32>(71320u, 0u, 37174u, 28918u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 0u, global0[_wgslsmith_index_u32(28083u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)]))))), min(reverseBits(u_input.c), ~(u_input.c ^ u_input.c) | _wgslsmith_clamp_vec2_u32(u_input.c, ~u_input.c, u_input.c ^ vec2<u32>(0u, 57368u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.a.x, global3.a.x), vec2<f32>(global3.a.x, 545f)))), reverseBits(35144i >> (0u % 32u))));
}

