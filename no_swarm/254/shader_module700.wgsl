struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: u32 = 92259u;

var<private> global2: vec3<u32>;

var<private> global3: array<vec3<bool>, 29>;

var<private> global4: vec2<i32> = vec2<i32>(1i, -79718i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    var var_0 = Struct_1(u_input.a, arg_0.b, vec2<bool>(false, arg_1.x), countOneBits(_wgslsmith_mod_u32(countOneBits(~0u), ~u_input.a.x)));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_mod_vec2_i32(max(vec2<i32>(_wgslsmith_clamp_i32(-9712i, countOneBits(18063i), _wgslsmith_div_i32(22639i, 13793i)), u_input.b.x), countOneBits(select(-u_input.b, _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(7221i, u_input.b.x)), arg_1.x))), ~vec2<i32>(-5570i, global4.x));
    let var_3 = ~(~u_input.b.x);
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(511f)))) >= 1f;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    var var_0 = Struct_1(~countOneBits(~vec3<u32>(u_input.a.x, global2.x, 0u)), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.b.x), select(vec2<bool>(arg_0.c.x, func_3(arg_0, arg_0.b.yy)), select(!arg_0.b.xy, select(arg_0.b.xx, select(vec2<bool>(false, arg_0.c.x), vec2<bool>(false, false), vec2<bool>(arg_0.c.x, true)), func_3(Struct_1(vec3<u32>(0u, arg_0.d, 4294967295u), arg_0.b, arg_0.c, u_input.a.x), vec2<bool>(arg_0.b.x, arg_0.b.x))), arg_0.b.yy), arg_0.b.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, _wgslsmith_add_u32(global2.x, 1u), _wgslsmith_div_u32(4726u, 16280u)), ~vec4<u32>(arg_0.d, global2.x, global2.x, global2.x) << ((vec4<u32>(1u, 66463u, 1u, 27048u) & vec4<u32>(0u, 0u, 4294967295u, arg_0.d)) % vec4<u32>(32u))), _wgslsmith_mult_u32(countOneBits(1u), ~arg_0.d)));
    let var_1 = Struct_1(~firstTrailingBit(var_0.a ^ arg_0.a) << (var_0.a % vec3<u32>(32u)), vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(554f, -889f, false)), -1716f, false)) <= 1162f, -751f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(791f)))), any(select(select(vec4<bool>(var_0.b.x, true, var_0.c.x, true), vec4<bool>(false, true, arg_0.b.x, var_0.c.x), vec4<bool>(false, arg_0.b.x, var_0.b.x, false)), !vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.b.x), true))), !(!(!select(arg_0.c, vec2<bool>(arg_0.b.x, true), vec2<bool>(var_0.c.x, false)))), abs(59109u));
    let var_2 = arg_0;
    var_0 = var_2;
    var var_3 = ~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_0.a.x, 4294967295u), reverseBits(49448u), ~4294967295u, ~31847u), ~vec4<u32>(var_2.d, var_1.a.x, u_input.a.x, u_input.a.x) >> ((vec4<u32>(18028u, var_2.a.x, 14663u, var_0.d) & vec4<u32>(8373u, 0u, 4294967295u, arg_0.a.x)) % vec4<u32>(32u))));
    return false;
}

fn func_1() -> i32 {
    let var_0 = -1i;
    var var_1 = true;
    global0 = vec2<i32>(_wgslsmith_mod_i32(abs(22623i), var_0), ~min(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, var_0), vec2<i32>(-1i, 14729i))), u_input.b.x >> (_wgslsmith_mult_u32(11249u, u_input.a.x) % 32u)));
    let var_2 = Struct_1(u_input.a, select(select(vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(~(41926u & u_input.a.x), 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), select(!global3[_wgslsmith_index_u32(1u, 29u)], select(select(vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(4294967295u, 29u)], vec3<bool>(false, false, true)), global3[_wgslsmith_index_u32(1u, 29u)], true), all(vec2<bool>(true, false))), true), !vec2<bool>(func_2(Struct_1(vec3<u32>(global2.x, 31972u, u_input.a.x), global3[_wgslsmith_index_u32(4294967295u, 29u)], vec2<bool>(true, false), u_input.a.x), firstLeadingBit(vec3<i32>(44219i, var_0, var_0))), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), _wgslsmith_sub_u32(4294967295u, ~40915u));
    var var_3 = Struct_1(u_input.a & vec3<u32>(17327u, ~_wgslsmith_div_u32(5979u, u_input.a.x), var_2.a.x), select(!(!vec3<bool>(true, var_2.c.x, true)), var_2.b, !var_2.b), var_2.b.zy, 4294967295u);
    return (2147483647i & global0.x) | -u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(u_input.a << ((_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, 68249u, 504u), u_input.a) & ~select(u_input.a, u_input.a, true)) % vec3<u32>(32u)));
    var var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, firstLeadingBit(reverseBits(-1i))), func_1()));
}

