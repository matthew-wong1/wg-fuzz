struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
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

var<private> global0: vec3<f32> = vec3<f32>(703f, -477f, 400f);

var<private> global1: array<u32, 31>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(true), Struct_4(false), Struct_4(true));

var<private> global4: u32 = 0u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(global2.c.x, global0.x), min(vec2<u32>(u_input.a.x & 101584u, ~global1[_wgslsmith_index_u32(0u, 31u)]) ^ global2.b, vec2<u32>(reverseBits(u_input.a.x), global2.d) | u_input.a.yx), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1236f, 1082f), global0.x), vec2<f32>(1235f, -874f)), 1u, global2.e);
    let var_1 = arg_0.a;
    global3 = array<Struct_4, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-511f + global2.c.x)), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(min(var_0.c.x, -389f)))), 134f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -373f), _wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(-1468f - 2660f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-448f, _wgslsmith_f_op_f32(-1749f * global2.c.x), global2.a)))), vec3<bool>((true || all(vec3<bool>(true, false, var_1))) && any(!vec4<bool>(true, arg_0.a, false, var_1)), false, var_1)));
    let var_3 = vec4<bool>(false, arg_0.a, arg_0.a, any(select(vec2<bool>(var_1 != arg_0.a, !var_1), vec2<bool>(true, var_1), select(vec2<bool>(true, arg_0.a), select(vec2<bool>(var_1, var_1), vec2<bool>(arg_0.a, true), vec2<bool>(false, var_1)), true))));
    return global2.e.x;
}

fn func_2() -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 31u)], min(~global2.b.x, 8728u))), 3u)];
    let var_1 = global0.x;
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(global0.x))), -1465f))), global2.b, global0.zz, 4294967295u, min(global2.e, vec4<i32>(-11512i, firstLeadingBit(-u_input.b.x), 1i, func_3(global3[_wgslsmith_index_u32(1u, 3u)]))));
    global1 = array<u32, 31>();
    let var_3 = abs(countOneBits(vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(-43651i, u_input.b.x)), var_2.e.x & abs(0i), u_input.c)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_2.a), ~(~(u_input.a.xx ^ vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(max(global0.x, var_2.c.x))) - global0.xx), 4721u, -vec4<i32>(_wgslsmith_mod_i32(var_3.x, u_input.d), ~var_2.e.x, global2.e.x, var_3.x)), Struct_1(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_sub_vec2_u32(vec2<u32>(27783u, global1[_wgslsmith_index_u32(~u_input.a.x, 31u)]), ~vec2<u32>(4294967295u, global2.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(725f, -913f) + global0.zx), vec2<f32>(-425f, 1743f), true))), 1u, global2.e));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = max(arg_2.b.d, max(global2.d, arg_3));
    let var_1 = Struct_2(arg_2.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1483f, _wgslsmith_f_op_f32(1357f * -597f)))), vec2<u32>(_wgslsmith_mod_u32(4294967295u, ~arg_2.b.b.x), 21509u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global2.a, arg_1), arg_2.b.c), vec2<f32>(global2.a, -455f)))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 1u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.a.b, u_input.a.xx), 31u)] >> (_wgslsmith_clamp_u32(0u, u_input.a.x, 55235u) % 32u)), abs(global2.e & abs(arg_2.a.e))));
    global2 = arg_2.a;
    return func_2().b;
}

fn func_1(arg_0: i32) -> vec4<u32> {
    let var_0 = 1i;
    let var_1 = vec3<u32>(u_input.a.x, global2.d, 20312u);
    var var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 31u)];
    let var_3 = func_4(Struct_4(~(-58794i) >= var_0), global2.a, func_2(), (1u >> (~countOneBits(var_1.x) % 32u)) ^ (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a.zyx, u_input.a.yxx), 0u) | 30608u));
    global4 = ~77109u;
    return vec4<u32>(_wgslsmith_sub_u32(~85644u, ~var_1.x) | _wgslsmith_sub_u32(~u_input.a.x, ~84919u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_3.d, global2.b.x, 4294967295u) >> (vec4<u32>(52492u, var_1.x, 0u, 79317u) % vec4<u32>(32u)), vec4<u32>(1u, 51777u, 21172u, var_1.x)) | ~(4294967295u << (var_3.d % 32u)), 4294967295u, ~_wgslsmith_add_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 31u)], 21858u), var_3.d)) | ~(~_wgslsmith_mult_vec4_u32(u_input.a << (vec4<u32>(0u, 1u, 4294967295u, 1u) % vec4<u32>(32u)), ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 31>();
    let var_0 = func_1(2147483647i);
    let var_1 = true;
    var var_2 = vec3<i32>(-26689i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(56723i, _wgslsmith_dot_vec4_i32(global2.e, global2.e)), _wgslsmith_mult_i32(u_input.b.x, 40035i) >> (_wgslsmith_mod_u32(global2.d, global1[_wgslsmith_index_u32(4294967295u, 31u)]) % 32u)), min(u_input.b, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global2.e.x, -21346i, 19976i), global2.e), _wgslsmith_dot_vec4_i32(global2.e, vec4<i32>(u_input.b.x, global2.e.x, -3345i, -35400i))))), u_input.e);
    var_2 = vec3<i32>(-22739i, abs(0i), global2.e.x);
    var var_3 = max(-global2.e.yz, ((abs(vec2<i32>(var_2.x, 37123i)) | (vec2<i32>(var_2.x, 5917i) ^ global2.e.yx)) & -reverseBits(u_input.b)) ^ select(-(vec2<i32>(22300i, var_2.x) << (var_0.xw % vec2<u32>(32u))), abs(var_2.xy), vec2<bool>(any(vec2<bool>(var_1, false)), var_1)));
    global1 = array<u32, 31>();
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().b.a * 1016f)), -961f)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - global2.c.x), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.x - 1138f));
}

