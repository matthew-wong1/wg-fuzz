struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(i32(-2147483648), 1i, -42178i), vec3<i32>(35840i, 1i, -35308i));

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: array<i32, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> i32 {
    var var_0 = 58005u;
    let var_1 = _wgslsmith_mult_i32(22475i, global1.b.x);
    let var_2 = _wgslsmith_dot_vec2_i32(global1.b.yw, -global1.b.zz);
    var var_3 = vec2<u32>(~abs(abs(~24052u)), _wgslsmith_div_u32(25744u, min(firstTrailingBit(~4294967295u), ~1u)));
    var var_4 = vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-var_1, ~0i, -global3[_wgslsmith_index_u32(var_3.x, 2u)], -u_input.a), ~(~(global1.b & global1.b))), ~(-2147483647i), 1i);
    return select(~max(min(~(-2147483647i), _wgslsmith_div_i32(1i, 1i)), _wgslsmith_add_i32(var_2, var_4.x) << (var_3.x % 32u)), 0i, true);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    let var_0 = Struct_1(!global1.a, vec4<i32>(0i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_2.x, firstTrailingBit(-26274i)), min(firstLeadingBit(global3[_wgslsmith_index_u32(arg_1, 2u)]), func_2()), countOneBits(select(0i, arg_2.x, true))), -arg_2.x | _wgslsmith_mod_i32(firstLeadingBit(2147483647i), global1.b.x), u_input.a), global1.c);
    let var_1 = true;
    global2 = true;
    let var_2 = abs(-min(-var_0.b.x << (arg_1 % 32u), _wgslsmith_clamp_i32(u_input.a | arg_2.x, _wgslsmith_mod_i32(-2147483647i, global3[_wgslsmith_index_u32(1u, 2u)]), 2147483647i)));
    return _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(73539u, ~arg_1)) | arg_1;
}

fn func_3() -> u32 {
    global2 = !all(vec4<bool>(true, !(global1.a.x && global1.a.x), false, global3[_wgslsmith_index_u32(40838u, 2u)] >= global3[_wgslsmith_index_u32(~4294967295u, 2u)]));
    global0 = array<vec3<i32>, 2>();
    global3 = array<i32, 2>();
    global3 = array<i32, 2>();
    global1 = Struct_1(select(!vec3<bool>(any(global1.a.yz), global1.a.x, global1.a.x || global1.a.x), select(global1.a, global1.a, !vec3<bool>(false, global1.a.x, true)), false == any(!vec3<bool>(true, false, global1.a.x))), global1.b, vec2<f32>(-1586f, global1.c.x));
    return ~(~_wgslsmith_div_u32(reverseBits(877u), _wgslsmith_clamp_u32(49546u, 1u, 83446u)) | 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(0u, 2u)];
    var var_1 = select(vec4<bool>(any(vec4<bool>(global1.a.x, true, true, true)) && true, global1.a.x, false, true), vec4<bool>(true, true, true, true), vec4<bool>(any(!select(vec4<bool>(false, true, false, global1.a.x), vec4<bool>(true, global1.a.x, false, global1.a.x), vec4<bool>(true, false, global1.a.x, true))), global1.a.x, _wgslsmith_add_u32(max(44549u, 1u), min(4294967295u, 54789u)) > func_1(!vec3<bool>(false, false, global1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(53851u, 0u, 37292u, 0u), vec4<u32>(1u, 1820u, 1u, 4294967295u)), max(var_0.zy, vec2<i32>(0i, -2147483647i))), global1.a.x));
    var var_2 = ~(~vec4<u32>(func_3(), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 72802u, 40171u), vec3<u32>(1704u, 7880u, 8205u)) >> (abs(0u) % 32u), 1u, func_3()));
    global1 = Struct_1(!vec3<bool>(true, !any(vec4<bool>(false, global1.a.x, false, global1.a.x)), true), global1.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(f32(-1f) * -554f))), -690f));
    var_2 = ~(vec4<u32>(~1u, var_2.x, var_2.x, _wgslsmith_add_u32(select(var_2.x, 38910u, var_1.x), ~7995u)) << (~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_2.x, 0u, var_2.x, 0u)), ~vec4<u32>(var_2.x, 0u, var_2.x, var_2.x)) % vec4<u32>(32u)));
    var_1 = select(vec4<bool>(!var_1.x, false, !all(select(vec4<bool>(true, var_1.x, global1.a.x, true), vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(var_1.x, var_1.x, global1.a.x, true))), all(vec3<bool>(var_1.x, !global1.a.x, true))), vec4<bool>(true, any(vec2<bool>(!var_1.x, var_1.x)), true, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.x);
}

