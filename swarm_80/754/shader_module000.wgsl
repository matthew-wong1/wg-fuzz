struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: Struct_1;

var<private> global2: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    let var_0 = -_wgslsmith_div_i32(arg_2 & global1.a.x, -28832i);
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    let var_1 = Struct_2((all(select(vec3<bool>(global1.b, false, true), vec3<bool>(global1.b, true, false), vec3<bool>(global1.b, true, global1.b))) || global1.b) || (global0[_wgslsmith_index_u32(0u, 24u)] < arg_0.x), Struct_1(global1.a, any(!select(vec4<bool>(true, true, global1.b, global1.b), vec4<bool>(true, global1.b, false, false), vec4<bool>(global1.b, false, global1.b, global1.b)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global1.a.yx, select(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], arg_2), -vec2<i32>(0i, 36453i), global1.b)), arg_2), global1.a, Struct_1(reverseBits(~arg_3), global1.b));
    let var_2 = global0[_wgslsmith_index_u32(1u, 24u)];
    return _wgslsmith_div_i32(~(~global1.a.x >> (1410u % 32u)), ~(i32(-1i) * -16007i));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_2(false, Struct_1(~max(select(vec4<i32>(-50880i, 1i, 17065i, global0[_wgslsmith_index_u32(arg_0.x, 24u)]), vec4<i32>(global0[_wgslsmith_index_u32(11946u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -53363i, -40757i), vec4<bool>(false, true, global1.b, true)), min(global1.a, vec4<i32>(global1.a.x, 1i, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 0i))), false), ~15123i, vec4<i32>(_wgslsmith_mod_i32(func_3(global1.a.www, vec2<i32>(global1.a.x, 16915i), global0[_wgslsmith_index_u32(1u, 24u)], global1.a), 36887i) ^ _wgslsmith_add_i32(_wgslsmith_sub_i32(global1.a.x, 2147483647i), ~(-1i)), _wgslsmith_clamp_i32(-40724i, _wgslsmith_clamp_i32(~global1.a.x, ~global1.a.x, _wgslsmith_mod_i32(-63949i, -10714i)), ~1i), _wgslsmith_div_i32(-2090i, ~global1.a.x ^ abs(global0[_wgslsmith_index_u32(0u, 24u)])), 1i), Struct_1(global1.a, any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)] <= 2147483647i, true))));
    var var_1 = Struct_1(var_0.d, global1.b);
    let var_2 = vec2<f32>(-1602f, _wgslsmith_f_op_f32(-1f));
    var_0 = Struct_2(true, var_0.e, 0i, firstTrailingBit(select(firstLeadingBit(global1.a), global1.a | var_1.a, select(vec4<bool>(false, true, global1.b, true), vec4<bool>(false, var_1.b, false, var_0.e.b), vec4<bool>(var_1.b, true, true, var_1.b)))) >> (~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, arg_0.x, 40484u))) % vec4<u32>(32u)), Struct_1(global1.a, all(vec4<bool>(any(vec2<bool>(var_0.a, global1.b)), var_1.b, true, var_1.b))));
    var_0 = Struct_2(global1.b, var_0.b, var_0.b.a.x, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(1u, 24u)], global1.a.x), global1.a.zw, vec2<bool>(global1.b, var_1.b)), reverseBits(vec2<i32>(1i, var_0.b.a.x))), 2147483647i, 17980i, i32(-1i) * -6859i), var_1.a), var_0.b);
    return Struct_1(-var_0.b.a, true);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> u32 {
    global1 = Struct_1(global1.a, any(vec2<bool>(global1.b, global1.b)));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(31281u, _wgslsmith_mod_u32(arg_0.x, u_input.a.x)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 19570u), ~arg_0.xx) % vec2<u32>(32u)), firstTrailingBit(countOneBits(vec2<u32>(u_input.a.x, 55662u)) & ~u_input.a)), select(select(arg_0.xy, ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_0.x, arg_0.x)), arg_1.x), ~(~vec2<u32>(u_input.a.x, 1u)), vec2<bool>(all(vec4<bool>(true, global1.b, global1.b, false)), false))), 24u)];
    var var_0 = func_2(arg_0 & vec3<u32>(26927u, ~4294967295u, 82489u));
    global1 = func_2(vec3<u32>(u_input.a.x, arg_0.x, arg_0.x));
    let var_1 = select(arg_1, arg_1, true);
    return 106487u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global2 = _wgslsmith_add_i32(i32(-1i) * -5949i, reverseBits(abs(1i)));
    let var_1 = _wgslsmith_sub_u32(~(~_wgslsmith_mod_u32(func_1(vec3<u32>(4294967295u, 4294967295u, var_0.x), vec3<bool>(true, false, true)), 0u & u_input.a.x)), _wgslsmith_mult_u32(~(~_wgslsmith_div_u32(4294967295u, u_input.a.x)), 1u));
    let var_2 = ~(abs(26324u) | var_0.x);
    let var_3 = !select(!vec2<bool>(global1.b, global1.b), vec2<bool>(true, !func_2(vec3<u32>(var_0.x, var_2, var_1)).b), !select(vec2<bool>(true, true), select(vec2<bool>(global1.b, false), vec2<bool>(false, global1.b), vec2<bool>(global1.b, false)), select(vec2<bool>(true, global1.b), vec2<bool>(global1.b, true), true)));
    var var_4 = select(~vec4<u32>(~var_1, firstLeadingBit(select(72792u, 99681u, global1.b)), var_1, ~(var_0.x & 29200u)), max(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(26405u, var_0.x, 1u, u_input.a.x), min(vec4<u32>(1u, u_input.a.x, 4294967295u, 1u), vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, var_2))), countOneBits(69231u), _wgslsmith_sub_u32(1u, ~var_1)), vec4<u32>(abs(var_2), firstTrailingBit(u_input.a.x), var_1, ~(~var_0.x))), any(vec3<bool>(func_2(_wgslsmith_div_vec3_u32(vec3<u32>(var_1, var_2, var_0.x), vec3<u32>(4294967295u, 9726u, 47080u))).b, true, all(vec3<bool>(true, true, global1.b)))));
    var var_5 = true;
    var_5 = any(select(select(vec4<bool>(all(vec3<bool>(false, true, var_3.x)), false | global1.b, !var_3.x, true), vec4<bool>(any(vec4<bool>(var_3.x, false, true, false)), false, false, false), select(select(vec4<bool>(false, global1.b, true, global1.b), vec4<bool>(true, true, false, var_3.x), vec4<bool>(true, false, false, global1.b)), vec4<bool>(var_3.x, var_3.x, true, var_3.x), select(vec4<bool>(true, var_3.x, true, var_3.x), vec4<bool>(global1.b, true, global1.b, true), vec4<bool>(true, global1.b, true, global1.b)))), vec4<bool>(false, !all(vec2<bool>(false, global1.b)), global1.b, !func_2(vec3<u32>(var_4.x, 1u, var_2)).b), select(vec4<bool>(!var_3.x, all(var_3), !var_3.x, true), !(!vec4<bool>(var_3.x, global1.b, var_3.x, var_3.x)), select(select(vec4<bool>(false, var_3.x, true, global1.b), vec4<bool>(var_3.x, var_3.x, global1.b, var_3.x), vec4<bool>(var_3.x, true, false, global1.b)), vec4<bool>(true, false, global1.b, false), var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_div_u32(~0u, ~u_input.a.x), ~(~var_2)), global1.a.x, firstLeadingBit(vec3<i32>(abs(abs(-29569i)), firstLeadingBit(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 24u)], 27933i)), -reverseBits(global0[_wgslsmith_index_u32(var_0.x, 24u)]))));
}

