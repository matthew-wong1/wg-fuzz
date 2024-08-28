struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

var<private> global2: Struct_5;

var<private> global3: array<Struct_1, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> f32 {
    var var_0 = Struct_4(vec2<u32>(~(~global0.b), select(abs(u_input.a.x), abs(u_input.b), global0.a) ^ u_input.b));
    var var_1 = -vec4<i32>(-(~(-7017i)), i32(-1i) * -1i, _wgslsmith_add_i32(_wgslsmith_add_i32(2699i, 0i), _wgslsmith_sub_i32(0i >> (1u % 32u), ~(-905i))), -1i);
    return -438f;
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_5) -> vec4<bool> {
    var var_0 = Struct_5(reverseBits(countOneBits(global2.a)));
    global2 = Struct_5(u_input.a.x);
    global1 = arg_1;
    var var_1 = arg_0.x;
    global3 = array<Struct_1, 21>();
    return !(!select(select(vec4<bool>(false, global0.a, global0.a, true), !vec4<bool>(true, global0.a, global0.a, global0.a), !vec4<bool>(global0.a, global0.a, true, global0.a)), !(!vec4<bool>(global0.a, global0.a, true, true)), global0.b <= 36274u));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_5) -> Struct_3 {
    let var_0 = 78685u;
    global1 = _wgslsmith_mod_i32(arg_1, -arg_0);
    let var_1 = vec3<f32>(-1125f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)))));
    var var_2 = vec4<bool>(all(select(vec4<bool>(global0.a, true, true, global0.a), select(vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, global0.a, false), true), func_3(var_1, arg_1, vec3<u32>(global2.a, u_input.a.x, u_input.b), Struct_5(global0.b)))) | !((true || global0.a) & false), !any(select(func_3(vec3<f32>(-1000f, -329f, -1859f), -2147483647i, vec3<u32>(u_input.b, 2178u, 1u), arg_2).xxx, vec3<bool>(global0.a, false, false), global0.a)), true, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)) * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(-696f)))), var_1.x, var_1.x)));
    return Struct_3(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.x, global0.c.x, -1000f)))), ~(~2147483647i), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, arg_2.a, 1u), vec3<u32>(4294967295u, 65793u, global2.a)), arg_2.a << (global2.a % 32u)), arg_2).x || true, ~(~1u) ^ (~(var_0 ^ 0u) >> (102143u % 32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.x, var_1.x)))))));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    return arg_0;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec4_u32(min(vec4<u32>(arg_2.b, arg_2.b, global0.b, global2.a), ~(~(~vec4<u32>(global2.a, u_input.b, arg_2.b, u_input.b)))), vec4<u32>(abs(42421u | global0.b) >> (min(~global0.b, arg_2.b) % 32u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global0.b, 4294967295u), ~0u, func_1(0i, -2147483647i, Struct_5(24934u)).b), ~4294967295u), _wgslsmith_mult_u32(1u, ~global2.a | global2.a), 1u), firstLeadingBit(abs(~(~vec4<u32>(0u, 1u, arg_2.b, global2.a)))));
    let var_1 = -2147483647i;
    let var_2 = global3[_wgslsmith_index_u32(arg_2.b, 21u)];
    global0 = Struct_3((4294967295u != _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.b, u_input.a.x), u_input.a), var_0.xz)) && false, global2.a, arg_2.c);
    global3 = array<Struct_1, 21>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, arg_2.c.x, -930f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-748f + arg_2.c.x), _wgslsmith_f_op_f32(global0.c.x + arg_2.c.x), arg_2.c.x))) * vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1817f), -508f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-min(countOneBits(-802i), firstTrailingBit(-1i)), ~1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(vec2<i32>(1i, ~1i), vec3<bool>(select(all(!vec3<bool>(global0.a, false, global0.a)), true, !global0.a), global0.a, global0.a), func_4(func_1(var_0.x, -15797i, Struct_5(global0.b)))));
    global3 = array<Struct_1, 21>();
    var var_2 = vec4<i32>(-var_0.x, var_0.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, var_0.x), 0i), 2147483647i);
    global1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(vec2<u32>(8104u, 90112u), u_input.a) ^ ~vec2<u32>(global2.a, 33314u)), ~max(vec2<i32>(-2147483647i, max(1i, var_0.x)), vec2<i32>(0i, var_2.x) & var_2.yz), ~firstLeadingBit(1i) & var_2.x, _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -var_2.x, var_2.x, var_0.x), ~firstLeadingBit(-var_2.wwy)));
}

