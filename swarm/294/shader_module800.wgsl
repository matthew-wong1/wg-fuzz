struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: vec2<f32>;

var<private> global2: Struct_1;

var<private> global3: Struct_2 = Struct_2(-249f, Struct_1(true, 303f, false), Struct_1(false, -1827f, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> i32 {
    global0 = array<i32, 19>();
    var var_0 = select(select(select(!(!vec3<bool>(global3.b.c, true, global2.a)), select(select(vec3<bool>(global2.a, global3.c.c, global2.c), vec3<bool>(global2.c, global3.b.a, true), vec3<bool>(global2.c, global3.b.c, global3.c.a)), !vec3<bool>(global3.b.a, global2.c, global2.a), vec3<bool>(true, global3.c.a, true)), any(select(vec2<bool>(global2.c, global2.c), vec2<bool>(true, true), global3.c.a))), !select(vec3<bool>(global3.c.a, global3.c.c, global3.b.c), select(vec3<bool>(false, false, false), vec3<bool>(false, global3.c.c, global2.a), vec3<bool>(global3.b.a, global3.b.a, global3.c.c)), all(vec2<bool>(global3.c.c, global2.a))), vec3<bool>(true, true, !all(vec2<bool>(false, global3.b.c)))), !select(vec3<bool>(u_input.a.x != u_input.a.x, -129f < global1.x, global2.a), select(vec3<bool>(true, true, global2.c), select(vec3<bool>(global3.b.a, global3.c.c, false), vec3<bool>(global3.c.c, true, false), global3.b.c), any(vec4<bool>(false, global2.c, false, false))), false), vec3<bool>((~u_input.b <= 2031i) == !global3.c.a, false | global2.c, any(vec2<bool>(true, true))));
    var var_1 = global1.x;
    var var_2 = (1i >> (1u % 32u)) & max(-1i, min(~global0[_wgslsmith_index_u32(4294967295u, 19u)], u_input.b) ^ 1i);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0)))) * _wgslsmith_f_op_f32(round(218f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(375f, global3.c.b), global2.b)));
    return ~global0[_wgslsmith_index_u32(u_input.a.x, 19u)];
}

fn func_2() -> u32 {
    global2 = global3.c;
    var var_0 = global3.c;
    let var_1 = global3.b;
    var var_2 = min(vec2<i32>(func_3(-835f), global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec2<i32>(-17630i, _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-26648i, global0[_wgslsmith_index_u32(4206u, 19u)], -39842i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], u_input.b, 2147483647i)) | global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 19u)])));
    let var_3 = Struct_2(var_1.b, Struct_1(any(vec3<bool>(global2.c, var_1.a, false)) & (true && any(vec4<bool>(var_0.a, false, true, global2.a))), -772f, false), global3.c);
    return ~_wgslsmith_div_u32(u_input.a.x >> (_wgslsmith_clamp_u32(1u, u_input.a.x & u_input.a.x, u_input.a.x) % 32u), ~(~(~u_input.a.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = vec3<u32>(abs(1u), 56863u, 9787u);
    global2 = Struct_1((~u_input.a.x < 48525u) & select(select(any(vec2<bool>(global3.c.c, false)), any(vec3<bool>(global3.b.a, global2.a, false)), global2.a), global3.b.a, all(select(vec4<bool>(global3.c.c, global2.a, false, false), vec4<bool>(true, false, global2.a, global3.b.c), global3.c.a))), arg_0.x, select(global2.c, !global2.c, global2.c));
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(18676u, arg_1.x, u_input.a.x, 64582u)), ~(~vec4<u32>(29218u, u_input.a.x, var_0.x, arg_1.x))), ~_wgslsmith_mult_u32(var_0.x, _wgslsmith_clamp_u32(var_0.x, var_0.x, 1u)), ~3908u, _wgslsmith_mod_u32((var_0.x | u_input.a.x) | ~0u, var_0.x)), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(4294967295u, 8045u, arg_1.x, 89310u)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(86247u, 4294967295u, var_0.x, 4294967295u), ~vec4<u32>(5066u, 112712u, 16325u, 4294967295u))), firstLeadingBit(_wgslsmith_mod_vec4_u32(select(vec4<u32>(26804u, var_0.x, var_0.x, var_0.x), vec4<u32>(0u, u_input.a.x, 21133u, u_input.a.x), true), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 17572u, arg_1.x, 1u), ~vec4<u32>(u_input.a.x, var_0.x, var_0.x, var_0.x)))));
    let var_2 = ~countOneBits(arg_1 & vec3<u32>(1u, ~115u, _wgslsmith_mult_u32(1u, u_input.a.x)));
    let var_3 = global2.a;
    return global3.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1262f)), _wgslsmith_f_op_f32(f32(-1f) * -182f))))), vec3<u32>(((u_input.a.x & 1u) >> (func_2() % 32u)) | firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x, 31987u, 104439u)), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 0u), u_input.a.x)), 4294967295u));
    global2 = Struct_1(global3.c.b >= _wgslsmith_div_f32(global2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), global3.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2152f, _wgslsmith_f_op_f32(f32(-1f) * -969f)))), !(36973i > firstLeadingBit(u_input.b << (u_input.a.x % 32u))));
    var var_1 = ~abs(-countOneBits(max(vec3<i32>(global0[_wgslsmith_index_u32(2035u, 19u)], 0i, u_input.b), vec3<i32>(-1i, 50698i, 1i))));
    var var_2 = _wgslsmith_f_op_f32(-105f * -638f);
    var var_3 = global3.c;
    return func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) - vec2<f32>(global3.c.b, arg_3.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-765f * global2.b), _wgslsmith_f_op_f32(-arg_1.b)))), vec3<u32>(firstLeadingBit(reverseBits(u_input.a.x) | countOneBits(u_input.a.x)), ~u_input.a.x, firstTrailingBit(~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global3.b.b))), vec2<f32>(-685f, _wgslsmith_f_op_f32(-global1.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-889f, -1471f)), -503f)), global3.b, !all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.b, -1114f, global3.a, 1209f) + vec4<f32>(global1.x, -399f, -452f, -149f))))));
    global2 = global3.c;
    let var_0 = min(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(max(u_input.b, 336i), i32(-1i) * -14340i, u_input.b, u_input.b ^ 2147483647i)), ~(~(vec4<i32>(u_input.b, 15599i, u_input.b, u_input.b) >> (vec4<u32>(69810u, 1u, 19099u, u_input.a.x) % vec4<u32>(32u))))), min(firstTrailingBit(~vec4<i32>(-2147483647i, -28535i, 0i, u_input.b)) >> (vec4<u32>(~u_input.a.x, ~u_input.a.x, 1u, abs(4294967295u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(u_input.b, _wgslsmith_div_i32(-17175i, global0[_wgslsmith_index_u32(u_input.a.x, 19u)])), -u_input.b ^ 5029i, 20755i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 12567i) | var_0.yw, ~var_0.xx)), 422f);
}

