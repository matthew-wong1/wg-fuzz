struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(1i, 1i, 21392i), vec3<i32>(-1i, -65513i, 84969i), vec3<i32>(2147483647i, 74218i, 16087i), vec3<i32>(-2438i, 15889i, 2147483647i), vec3<i32>(29547i, 7154i, -83770i));

var<private> global2: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, true, false));

var<private> global3: Struct_1 = Struct_1(18735u, vec3<i32>(-1i, -19653i, i32(-2147483648)), false);

var<private> global4: array<u32, 26> = array<u32, 26>(0u, 80877u, 4294967295u, 1u, 15115u, 1u, 13868u, 4294967295u, 0u, 4294967295u, 19584u, 0u, 15643u, 28203u, 1u, 36881u, 1u, 0u, 0u, 1u, 134778u, 3031u, 28197u, 1u, 0u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return 607f;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.c, 7u)])));
    let var_1 = Struct_1(_wgslsmith_div_u32(0u, 1u), firstLeadingBit(~vec3<i32>(-2147483647i, -u_input.a.x, _wgslsmith_mod_i32(u_input.d.x, global3.b.x))), global3.c);
    global0 = array<Struct_1, 7>();
    var var_2 = global0[_wgslsmith_index_u32(~u_input.c, 7u)];
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(var_0)), var_0);
    return !(!(!var_2.c));
}

fn func_1() -> u32 {
    var var_0 = -vec2<i32>(~(-22181i), _wgslsmith_add_i32(0i, u_input.a.x));
    global4 = array<u32, 26>();
    global2 = array<vec3<bool>, 1>();
    var var_1 = false;
    let var_2 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(global3.a, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, global4[_wgslsmith_index_u32(19045u, 26u)], 56216u, 34276u)), ~75532u), ~31403u), -global3.b, global3.c);
    return ~select(~(~max(44027u, var_2.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(24503u, 27015u, u_input.c), u_input.b.wzw), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(countOneBits(select(vec3<u32>(109116u, global4[_wgslsmith_index_u32(4294967295u, 26u)], u_input.c), ~vec3<u32>(37496u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 26u)], 26u)], global4[_wgslsmith_index_u32(0u, 26u)]), !global2[_wgslsmith_index_u32(u_input.b.x, 1u)])));
    global0 = array<Struct_1, 7>();
    var var_1 = global0[_wgslsmith_index_u32(max(~max(4294967295u, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(1u, 26u)], 0u)) & global4[_wgslsmith_index_u32(4294967295u, 26u)], ~(~(~14013u)) << (u_input.e % 32u)), 7u)];
    global2 = array<vec3<bool>, 1>();
    global3 = global0[_wgslsmith_index_u32(max(~(~1u), _wgslsmith_sub_u32(global3.a, func_1())), 7u)];
    var var_2 = !(!vec4<bool>(!(u_input.b.x > u_input.b.x), !func_2(), max(69005u, 55563u) >= (4294967295u | global4[_wgslsmith_index_u32(36938u, 26u)]), any(!vec2<bool>(global3.c, false))));
    global1 = array<vec3<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(407f * 199f) - _wgslsmith_f_op_f32(f32(-1f) * -385f))), -1000f), ~(~global4[_wgslsmith_index_u32(firstTrailingBit(24315u), 26u)]), ~_wgslsmith_mult_i32(~(~(-28579i)), ~(-10972i)), 85086u);
}

