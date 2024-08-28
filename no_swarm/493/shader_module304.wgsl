struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<bool, 9>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(408f, 327f, 583f, -265f), vec2<i32>(-52390i, -11327i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = 17518i;
    var var_1 = !all(!vec3<bool>(global2[_wgslsmith_index_u32(28006u, 9u)], true, global0.a.x > arg_1.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1184f, _wgslsmith_div_f32(-488f, 1023f)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(global0.a.x)), _wgslsmith_f_op_f32(234f - 830f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.xy) - vec2<f32>(1845f, 228f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1188f, -677f) - global0.a.x), _wgslsmith_f_op_f32(func_2(vec3<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]), Struct_1(global3.a, vec2<i32>(-2147483647i, global3.b.x)), vec3<i32>(1i, -2147483647i, u_input.b.x), Struct_1(vec4<f32>(global0.a.x, 458f, 2282f, global3.a.x), vec2<i32>(u_input.b.x, global0.b.x)))))));
    var var_1 = !(!(!(!vec2<bool>(global2[_wgslsmith_index_u32(37585u, 9u)], false))));
    let var_2 = 1u;
    global2 = array<bool, 9>();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 666f, global3.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-global0.a.x))))), vec2<i32>(-global0.b.x, ~1i));
    return Struct_1(vec4<f32>(566f, global3.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, var_1.x), Struct_1(global0.a, global3.b), vec3<i32>(global0.b.x, -2147483647i, u_input.a.x), Struct_1(vec4<f32>(-486f, 945f, global3.a.x, global3.a.x), u_input.b.ww))))), var_0.x), vec2<i32>(countOneBits(~(-13798i)), -_wgslsmith_mod_i32(abs(u_input.b.x), _wgslsmith_div_i32(u_input.a.x, global3.b.x))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = global0.a.ww;
    global3 = arg_0;
    let var_1 = all(select(vec4<bool>(!select(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(2099u, 9u)]), global2[_wgslsmith_index_u32(4294967295u, 9u)], true, !global2[_wgslsmith_index_u32(4294967295u, 9u)] & true), vec4<bool>(all(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 9u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(1u, 9u)], false, false), vec3<bool>(true, global2[_wgslsmith_index_u32(23676u, 9u)], true))), any(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(43697u, 9u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 9u)]), true)), all(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 9u)], false, global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(45313u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(47944u, 9u)]), true)), true), select(!(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], true, global2[_wgslsmith_index_u32(66289u, 9u)])), select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 9u)], false, true), !vec4<bool>(global2[_wgslsmith_index_u32(2909u, 9u)], true, global2[_wgslsmith_index_u32(35564u, 9u)], global2[_wgslsmith_index_u32(22412u, 9u)]), all(vec4<bool>(global2[_wgslsmith_index_u32(275u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], true, global2[_wgslsmith_index_u32(0u, 9u)]))), global2[_wgslsmith_index_u32(0u, 9u)] && (-31312i < u_input.a.x))));
    global3 = arg_0;
    global2 = array<bool, 9>();
    return (0u >> (_wgslsmith_div_u32(~1u, ~38484u) % 32u)) << (_wgslsmith_div_u32(~1u, reverseBits(1u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_div_vec2_u32(~vec2<u32>(firstTrailingBit(~46479u), 32764u), select(vec2<u32>(min(0u, 4294967295u) >> (1u % 32u), func_3(Struct_1(vec4<f32>(global0.a.x, var_0.a.x, -1000f, 377f), vec2<i32>(global0.b.x, -48903i)))), abs(~vec2<u32>(0u, 4238u)), !(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 45758u, 56631u), 9u)] & !global2[_wgslsmith_index_u32(19531u, 9u)])));
    var var_2 = vec4<i32>(_wgslsmith_add_i32(max(-(global3.b.x ^ 0i), abs(~global0.b.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-6594i, var_0.b.x), max(global0.b.x, _wgslsmith_clamp_i32(global0.b.x, 2147483647i, -2147483647i)))), var_0.b.x, ~var_0.b.x, _wgslsmith_mod_i32(-global0.b.x, ~_wgslsmith_mod_i32(37829i, abs(-16969i))));
    let var_3 = u_input.b;
    var var_4 = countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(~max(45639u, 20082u), 81127u)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(firstLeadingBit(0i), _wgslsmith_sub_i32(~2692i, countOneBits(-2147483647i)), abs(global3.b.x), func_1().b.x));
}

