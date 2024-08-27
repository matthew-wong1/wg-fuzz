struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: f32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * -155f)))), !(min(u_input.c.x, 4092i) > -38308i), global0.c);
    let var_1 = Struct_3(u_input.d);
    var var_2 = ~(0u | (53391u ^ ~var_1.a.x)) < max(_wgslsmith_add_u32(u_input.a.x, global0.c.b), 2523u);
    let var_3 = _wgslsmith_mod_vec3_u32(u_input.a.zwz, ~vec3<u32>(~4294967295u, select(var_0.c.b, 10225u, false), min(38029u, global0.c.c)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(18060u, global0.c.c), var_1.a.x >> (var_1.a.x % 32u)), vec3<u32>(0u, 4294967295u, u_input.a.x), select(countOneBits(vec3<u32>(1u, 59963u, 82590u)), vec3<u32>(u_input.b, var_0.c.b, u_input.b), arg_2.wwz)));
    var var_4 = var_0;
    return global2[_wgslsmith_index_u32(15257u, 1u)];
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    let var_0 = global0.c;
    let var_1 = vec2<i32>(2147483647i, 29401i);
    let var_2 = var_1;
    var var_3 = !all(!select(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], false, global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<bool>(global0.b, global0.b, false), select(vec3<bool>(global0.c.a, global0.b, false), vec3<bool>(false, true, var_0.e), true)));
    var var_4 = select(select(vec2<bool>(_wgslsmith_f_op_f32(global0.a * 1567f) == _wgslsmith_f_op_f32(f32(-1f) * -965f), true), select(vec2<bool>(u_input.c.x > var_2.x, all(vec4<bool>(global0.b, var_0.e, global0.c.e, global0.b))), vec2<bool>(global0.c.a, true), !select(vec2<bool>(false, global0.b), vec2<bool>(global0.b, false), vec2<bool>(false, true))), !vec2<bool>(any(vec3<bool>(false, global2[_wgslsmith_index_u32(3615u, 1u)], false)), true)), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 1u)], global2[_wgslsmith_index_u32(~0u, 1u)]), select(select(!select(vec2<bool>(true, false), vec2<bool>(var_0.e, var_0.d), var_0.e), vec2<bool>(var_0.a & true, global2[_wgslsmith_index_u32(firstTrailingBit(0u), 1u)]), false), select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.a, false), vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0.a.x, 1u)]), var_0.a), vec2<bool>(true, true)), vec2<bool>(true, var_0.e), true), !select(select(vec2<bool>(true, global0.b), vec2<bool>(false, var_0.d), global2[_wgslsmith_index_u32(var_0.c, 1u)]), select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 1u)]), vec2<bool>(true, true), true), vec2<bool>(global0.c.a, true))));
    return global0.c.d;
}

fn func_1() -> i32 {
    global0 = Struct_2(925f, false && func_2(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)]), !vec2<bool>(global0.b, global2[_wgslsmith_index_u32(u_input.b, 1u)]), !(!vec4<bool>(true, true, global0.b, global2[_wgslsmith_index_u32(0u, 1u)])), -952f), Struct_1(global2[_wgslsmith_index_u32(global0.c.c, 1u)], global0.c.b, _wgslsmith_add_u32(u_input.a.x, 1u), func_3(Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a.zz)), ~(~1u)), any(vec4<bool>(true, !global0.b, 2147483647i <= u_input.c.x, any(vec3<bool>(true, global0.c.e, true))))));
    var var_0 = 57587u;
    global1 = _wgslsmith_sub_u32(4294967295u, abs(1u));
    var var_1 = !(!global0.b | select(global0.c.a, !global0.c.a, true));
    global2 = array<bool, 1>();
    return firstTrailingBit(_wgslsmith_div_i32(min(~1i, 0i), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(_wgslsmith_mod_i32(8962i | -u_input.c.x, ~_wgslsmith_mod_i32(u_input.c.x, -61797i)), ~u_input.c.x, ~(-35613i)));
    global1 = min(1u, ~_wgslsmith_mult_u32(27798u, u_input.a.x));
    let var_1 = i32(-1i) * -16535i;
    let var_2 = ~(-max(~func_1(), 46054i));
    var_0 = ~u_input.c;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1142f), global0.a, global0.c.c < u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))) * _wgslsmith_f_op_f32(-global0.a)), true, Struct_1(u_input.a.x <= u_input.b, firstTrailingBit(~global0.c.c), 0u, !global0.c.d, global2[_wgslsmith_index_u32(firstTrailingBit(~71897u | global0.c.b), 1u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-693f * var_3.a), _wgslsmith_div_f32(var_3.a, 707f)), _wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(exp2(global0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(579f, var_3.a, global0.a))))))));
}

