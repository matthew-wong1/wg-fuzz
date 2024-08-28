struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: vec3<i32> = vec3<i32>(-1i, -1i, 37466i);

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global3: array<f32, 8>;

var<private> global4: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> bool {
    global0 = global2[_wgslsmith_index_u32(~u_input.c.x, 32u)];
    global0 = Struct_1(select(any(!arg_0.xx), !all(!vec4<bool>(true, true, global0.a, true)), !any(arg_0)));
    global4 = array<vec2<bool>, 28>();
    global4 = array<vec2<bool>, 28>();
    global2 = array<Struct_1, 32>();
    return true;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<u32>) -> bool {
    global4 = array<vec2<bool>, 28>();
    var var_0 = Struct_1(all(select(!vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(func_3(vec3<bool>(true, global0.a, false), global3[_wgslsmith_index_u32(1u, 8u)], global0.a, Struct_1(arg_1)), true, global1.x > u_input.e.x, all(vec3<bool>(arg_1, false, true))), !(!vec4<bool>(true, false, global0.a, false)))));
    let var_1 = global2[_wgslsmith_index_u32(u_input.c.x, 32u)];
    global2 = array<Struct_1, 32>();
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_add_u32(40981u, ~4294967295u), 13309u);
    return false;
}

fn func_1() -> bool {
    let var_0 = func_2(4294967295u, global0.a, ~_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(26759u, 17940u, u_input.d.x, u_input.c.x), vec4<u32>(u_input.a, 37837u, 4294967295u, 11548u)), vec4<u32>(reverseBits(2212u), u_input.a, 1u, u_input.a << (0u % 32u))));
    var var_1 = vec4<u32>(firstLeadingBit(~3829u), u_input.d.x, ~0u ^ _wgslsmith_mult_u32(70238u, u_input.c.x), 16974u);
    let var_2 = ~(u_input.c.x << ((~firstLeadingBit(11770u) | var_1.x) % 32u));
    global1 = vec3<i32>(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-60057i, global1.x) >> (var_1.zw % vec2<u32>(32u)), -vec2<i32>(u_input.b.x, u_input.b.x)), global1.x)), -_wgslsmith_div_i32(2147483647i, global1.x), u_input.b.x);
    let var_3 = vec4<i32>(global1.x, min(0i, _wgslsmith_add_i32(u_input.e.x, 28576i)) << (0u % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(reverseBits(~vec2<i32>(50013i, 2147483647i)), -vec2<i32>(global1.x, global1.x) & ~vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_clamp_i32(global1.x, 11253i, _wgslsmith_div_i32(-2147483647i, u_input.e.x)), global1.x)), global1.x);
    return false & var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, 30443i, -37891i, 21249i), vec4<i32>(global1.x, global1.x, u_input.b.x, -41580i), vec4<i32>(u_input.b.x, -14001i, global1.x, global1.x)), -vec4<i32>(u_input.b.x, u_input.b.x, -1i, 16642i)) >> (countOneBits(~vec4<u32>(u_input.c.x, 43504u, 49469u, 1u)) % vec4<u32>(32u)), -(-vec4<i32>(13886i, global1.x, 1i, -1i) >> ((vec4<u32>(1u, u_input.a, u_input.d.x, 41705u) | vec4<u32>(u_input.a, 60727u, u_input.c.x, 0u)) % vec4<u32>(32u)))), reverseBits(_wgslsmith_add_i32(~firstLeadingBit(u_input.e.x), 0i)));
    var_0 = select(u_input.e.x, select(abs(u_input.e.x), -1i, !(!func_1())), global0.a);
    global0 = Struct_1(-global1.x != -1i);
    global1 = firstLeadingBit(vec3<i32>(global1.x, _wgslsmith_mult_i32(-29207i, u_input.b.x), -global1.x) | max(vec3<i32>(u_input.b.x, -3911i, 16931i), vec3<i32>(u_input.e.x, u_input.b.x, global1.x) & vec3<i32>(28778i, global1.x, 2147483647i))) >> ((vec3<u32>(abs(_wgslsmith_div_u32(u_input.c.x, u_input.a)), ~1u, u_input.a) ^ vec3<u32>(reverseBits(~4294967295u), u_input.d.x >> (4294967295u % 32u), 0u & u_input.d.x)) % vec3<u32>(32u));
    var var_1 = vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 8u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(max(u_input.a, 20622u) << (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), u_input.d)) % 32u), 8u)] - -804f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(45983u, 8u)] + global3[_wgslsmith_index_u32(0u, 8u)]))) * global3[_wgslsmith_index_u32(u_input.c.x, 8u)]), -438f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-757f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -453f), -2942f, all(vec4<bool>(global0.a, global0.a, true, true)))))));
    global3 = array<f32, 8>();
    var var_2 = Struct_1(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 20380i, -2147483647i, -69184i), vec4<i32>(u_input.e.x, -11212i, -16909i, 1i)), u_input.e.x), _wgslsmith_add_i32(global1.x, (u_input.e.x ^ global1.x) >> (~40492u % 32u)), u_input.b.x), var_1.xwz, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-435f * -1393f), var_1.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(184f, 550f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(643f * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4227u, 8u)]))), _wgslsmith_f_op_f32(-152f - _wgslsmith_f_op_f32(-var_1.x))));
}

