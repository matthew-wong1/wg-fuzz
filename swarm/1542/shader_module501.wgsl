struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<bool, 30> = array<bool, 30>(false, true, true, false, false, false, true, true, false, false, false, false, false, false, false, true, false, false, false, true, true, false, true, false, false, true, false, true, false, true);

var<private> global2: array<Struct_1, 4>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = ~(~(~(~arg_0.a.a.a.x ^ 1u)));
    var var_1 = Struct_2(Struct_1(~firstLeadingBit(vec3<u32>(arg_2.x, var_0, 4294967295u)) << (_wgslsmith_clamp_vec3_u32(~arg_0.a.a.a, _wgslsmith_mult_vec3_u32(vec3<u32>(14476u, arg_2.x, 4294967295u), vec3<u32>(var_0, arg_0.a.a.a.x, 1u)), ~vec3<u32>(var_0, arg_0.a.a.a.x, var_0)) % vec3<u32>(32u))));
    var var_2 = vec2<i32>(u_input.a.x, u_input.b);
    global0 = 4294967295u;
    var var_3 = ~vec3<i32>(~_wgslsmith_add_i32(2147483647i, -1i), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, var_2.x, 1i, -65833i), vec4<i32>(9960i, 0i, var_2.x, var_2.x))), vec4<i32>(~31213i, var_2.x, u_input.b, abs(-1i))), _wgslsmith_mod_i32(min(-28560i, 2147483647i), -arg_1) | ~42806i);
    return select(select(select(select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 30u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 30u)], false, true), false), select(select(vec4<bool>(true, false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(var_1.a.a.x, 30u)], false, true, global1[_wgslsmith_index_u32(0u, 30u)]), global1[_wgslsmith_index_u32(40451u, 30u)]), !vec4<bool>(global1[_wgslsmith_index_u32(var_0, 30u)], global1[_wgslsmith_index_u32(12596u, 30u)], false, global1[_wgslsmith_index_u32(10301u, 30u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(16425u, 30u)], global1[_wgslsmith_index_u32(arg_0.a.a.a.x, 30u)], global1[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(false, true, true, true))), global1[_wgslsmith_index_u32(var_1.a.a.x, 30u)]), vec4<bool>(true, select(6000u, 19233u, false) == 1u, true, true), global1[_wgslsmith_index_u32(abs(var_1.a.a.x), 30u)]), vec4<bool>(!global1[_wgslsmith_index_u32(abs(max(4294967295u, 4294967295u)), 30u)], any(!select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(var_0, 30u)], global1[_wgslsmith_index_u32(arg_2.x, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_1.a.a.x, 30u)], false, global1[_wgslsmith_index_u32(var_0, 30u)], global1[_wgslsmith_index_u32(arg_0.a.a.a.x, 30u)]), global1[_wgslsmith_index_u32(0u, 30u)])), false, any(vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(var_1.a.a.x, 30u)], all(vec2<bool>(global1[_wgslsmith_index_u32(var_1.a.a.x, 30u)], global1[_wgslsmith_index_u32(var_0, 30u)])), all(vec2<bool>(false, true))))), vec4<bool>(any(vec2<bool>(!global1[_wgslsmith_index_u32(arg_0.a.a.a.x, 30u)], all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], true, global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(44723u, 30u)])))), !(!global1[_wgslsmith_index_u32(arg_0.a.a.a.x, 30u)]), !(_wgslsmith_f_op_f32(f32(-1f) * -1433f) > _wgslsmith_f_op_f32(round(413f))), false));
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = select(vec4<bool>(true, true, true, true), select(select(func_3(Struct_3(Struct_2(global2[_wgslsmith_index_u32(75852u, 4u)])), u_input.a.x, ~vec2<u32>(0u, arg_0)), func_3(Struct_3(Struct_2(global2[_wgslsmith_index_u32(arg_0, 4u)])), 1i, ~vec2<u32>(1u, 9586u)), global1[_wgslsmith_index_u32(52987u, 30u)]), !(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 30u)], true, false))), !vec4<bool>(arg_0 > 17950u, true, any(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], false)), any(vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 30u)], true, global1[_wgslsmith_index_u32(arg_0, 30u)])))), vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 30u)], false, _wgslsmith_f_op_f32(-arg_1) <= arg_1, arg_0 >= 0u));
    global2 = array<Struct_1, 4>();
    var_0 = select(!(!vec4<bool>(true, var_0.x, global1[_wgslsmith_index_u32(~arg_0, 30u)], !global1[_wgslsmith_index_u32(88102u, 30u)])), !vec4<bool>(all(vec3<bool>(false, var_0.x, false)), true, global1[_wgslsmith_index_u32(arg_0, 30u)], var_0.x & any(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0, 30u)]))), false);
    global1 = array<bool, 30>();
    let var_1 = vec2<bool>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-20583i, u_input.b, 0i, u_input.c), vec4<i32>(countOneBits(51210i), abs(u_input.a.x), 7570i, ~1i)) > ((10602i >> (select(arg_0, arg_0, true) % 32u)) & abs(firstTrailingBit(2147483647i))), !global1[_wgslsmith_index_u32(arg_0, 30u)]);
    return abs(abs(-reverseBits(u_input.c))) << (~(~arg_0) % 32u);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    let var_0 = -vec3<i32>(~(i32(-1i) * -1i), -2147483647i, abs(-func_2(4294967295u, 763f)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-320f)) * _wgslsmith_f_op_f32(abs(-1188f))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f)), _wgslsmith_f_op_f32(ceil(1f)))));
    let var_2 = Struct_2(Struct_1(~vec3<u32>(1u, 1u, 1u)));
    let var_3 = 980f;
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~(select(var_2.a.a, vec3<u32>(4294967295u, 33699u, var_2.a.a.x), false) >> (~var_2.a.a % vec3<u32>(32u))), select(vec3<u32>(70719u, 38648u, 64279u) | firstLeadingBit(vec3<u32>(71029u, var_2.a.a.x, 0u)), var_2.a.a, select(!arg_1, !vec3<bool>(arg_1.x, arg_0, false), arg_1))), _wgslsmith_mod_vec3_u32(var_2.a.a, ~(~vec3<u32>(var_2.a.a.x, var_2.a.a.x, 1417u))) >> ((_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.a.a, vec3<u32>(0u, var_2.a.a.x, 6687u)), max(var_2.a.a, var_2.a.a)) << ((var_2.a.a & ~var_2.a.a) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(abs(1116f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    let var_0 = Struct_2(Struct_1(vec3<u32>(1u, 1u, 1u)));
    global2 = array<Struct_1, 4>();
    var var_1 = u_input.a;
    let var_2 = !(!(!(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(4294967295u, 30u)], vec3<bool>(false, false, true))) >= _wgslsmith_f_op_f32(max(-296f, 151f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(var_0.a.a.x, 30u)], vec3<bool>(var_2, global1[_wgslsmith_index_u32(19421u, 30u)], true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(736f, -843f)))))), vec3<u32>(24205u, firstLeadingBit(~(4294967295u << (var_0.a.a.x % 32u))), 12618u), ~(-1i));
}

