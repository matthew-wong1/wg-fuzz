struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: vec3<f32>;

var<private> global3: array<bool, 21> = array<bool, 21>(false, true, false, true, false, true, false, false, true, false, true, true, true, true, true, false, false, false, false, false, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = ~global0.b;
    var var_1 = arg_0;
    let var_2 = Struct_1(any(global1.yy), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3, global0.b.x, 83965u, arg_1) >> (arg_0.b % vec4<u32>(32u)), ~arg_0.b), global0.b), _wgslsmith_div_vec4_u32(~(~vec4<u32>(36284u, arg_0.b.x, 31734u, u_input.a)), var_1.b)), global0.c);
    let var_3 = var_2.b.x;
    global2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, 1779f, -1766f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 803f, -571f) + vec3<f32>(global0.c.x, -510f, 926f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, global2.x, -752f))))))), !(!arg_0.a)));
    return _wgslsmith_f_op_f32(3116f - -1427f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1079f, global0.c.x, 674f), _wgslsmith_div_vec3_f32(vec3<f32>(-339f, global0.c.x, -935f), vec3<f32>(840f, -619f, global0.c.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(func_3(Struct_1(arg_1.a, arg_1.b, global2.yz), arg_0.b.x, arg_1.b.x, 84477u)))))));
    global1 = !(!vec3<bool>(global0.a, global0.a, false));
    var var_0 = abs(arg_0.b.zyz);
    var var_1 = -u_input.b;
    global0 = Struct_1(false, global0.b, _wgslsmith_div_vec2_f32(arg_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.zy) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1305f) - vec2<f32>(global0.c.x, arg_1.c.x))))));
    return _wgslsmith_f_op_f32(trunc(-564f));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1187f)), global0.c.x, _wgslsmith_f_op_f32(exp2(global2.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(978f, global0.c.x, 418f)) - vec3<f32>(arg_0.c.x, 1448f, global0.c.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, -1000f, global0.c.x), vec3<f32>(1079f, arg_0.c.x, arg_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, 426f, arg_0.c.x)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(515f, global2.x, global2.x) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.x, global0.c.x, global0.c.x), vec3<f32>(704f, 251f, -1236f), true))) + vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(true, vec4<u32>(u_input.a, 4294967295u, 12261u, u_input.a), vec2<f32>(-1000f, global0.c.x)), Struct_1(arg_0.a, arg_0.b, global2.xy))), _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(454f * 537f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-351f, global2.x, 1000f)))))));
    global0 = arg_0;
    var var_0 = -firstLeadingBit(6513i);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.c.x);
    global0 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 21>();
    let var_0 = func_1(Struct_1(false, vec4<u32>(~1u, 4294967295u, min(36025u << (global0.b.x % 32u), select(u_input.a, u_input.a, global3[_wgslsmith_index_u32(u_input.a, 21u)])), ~(~40779u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, global0.c.x), vec2<f32>(global0.c.x, global0.c.x), global1.x)))));
    global0 = func_1(func_1(func_1(func_1(Struct_1(global3[_wgslsmith_index_u32(var_0.b.x, 21u)], vec4<u32>(var_0.b.x, 0u, var_0.b.x, 1u), var_0.c)))));
    let var_1 = vec4<u32>(~1u, abs(global0.b.x), ~global0.b.x, global0.b.x);
    global0 = var_0;
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-559f, 690f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(global0.c.x)), func_1(Struct_1(global1.x, global0.b, vec2<f32>(1000f, -1704f))).c.x), vec2<f32>(656f, 1000f))) * _wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(-global2.yy))), _wgslsmith_dot_vec3_i32(vec3<i32>(-30758i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), min(u_input.b.x, -3519i)), -u_input.b) >> (reverseBits(1u >> (global0.b.x % 32u)) % 32u), ~vec3<u32>(~u_input.a, ~_wgslsmith_add_u32(5941u, global0.b.x), select(var_1.x, ~53862u, true)));
}

