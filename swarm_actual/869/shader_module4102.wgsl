struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 28>;

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec4<bool> {
    let var_0 = global0.b;
    global1 = array<bool, 28>();
    let var_1 = 556f;
    global2 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(910f)), var_1, -666f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 276f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, _wgslsmith_f_op_f32(f32(-1f) * -502f)))));
    return vec4<bool>(!(!var_0.a), false, true, true);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_3) -> u32 {
    let var_0 = (~(-vec3<i32>(u_input.a, 0i, arg_0) & vec3<i32>(arg_0, 1i, u_input.a)) | vec3<i32>(~24154i, arg_0, i32(-1i) * -26026i)) ^ (vec3<i32>(-1i) * -(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 0i, 27321i), vec3<i32>(26404i, u_input.a, u_input.a)) << (vec3<u32>(1u, 55407u, 4294967295u) % vec3<u32>(32u))));
    var var_1 = select(!(!func_2()), select(vec4<bool>(all(select(vec3<bool>(true, arg_3.b.a, false), arg_3.d, false)), true, !global0.d.x, !global0.d.x), vec4<bool>(~global0.c == ~u_input.b.x, all(arg_3.d.xx), 2147483647i == u_input.a, arg_3.d.x), false), !(!vec4<bool>(true, all(vec2<bool>(false, true)), any(vec2<bool>(global0.b.a, false)), false)));
    var var_2 = _wgslsmith_add_vec2_u32(~abs(u_input.b.yy), select(_wgslsmith_mult_vec2_u32(u_input.b.xy, vec2<u32>(min(1u, arg_3.a.a), _wgslsmith_div_u32(u_input.b.x, 24176u))), u_input.b.xx, !global0.d.x));
    global1 = array<bool, 28>();
    let var_3 = Struct_1(~(~global0.a.a ^ reverseBits(_wgslsmith_mod_u32(u_input.b.x, arg_1))));
    return arg_3.a.a;
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(true);
    global2 = u_input.a;
    var var_1 = vec3<i32>(u_input.a, u_input.a, -2147483647i);
    let var_2 = global0.a;
    var_0 = Struct_2(var_1.x > ~select(-u_input.a, countOneBits(var_1.x), true));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x ^ 23197u, global0.c, ~1u, var_2.a) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, ~8100u, ~4294967295u, ~global0.a.a), abs(min(vec4<u32>(68949u, global0.a.a, 1u, 60301u), vec4<u32>(u_input.b.x, 15111u, u_input.b.x, var_2.a)))), ~(~reverseBits(vec4<u32>(u_input.b.x, var_2.a, 4294967295u, 1u)) | select(reverseBits(vec4<u32>(1u, 1u, global0.c, 0u)), vec4<u32>(global0.c, 36925u, 58942u, 29777u), all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)], false, global0.b.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(func_1(max(-14846i, select(2147483647i, u_input.a, global0.d.x) | u_input.a), global0.a.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1968f, 1666f, 854f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, -522f, -1000f, 215f)))), Struct_3(Struct_1(u_input.b.x & u_input.b.x), Struct_2(any(vec4<bool>(global0.d.x, true, true, true))), ~_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.zz), !vec3<bool>(false, global1[_wgslsmith_index_u32(global0.a.a, 28u)], global0.b.a))));
    global1 = array<bool, 28>();
    var_0 = abs(67410u);
    global0 = Struct_3(global0.a, Struct_2(true), func_1(~u_input.a, u_input.b.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1439f, 386f, 1000f, 870f) - vec4<f32>(1555f, -577f, 354f, -590f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, -1746f, -462f, 535f)))), Struct_3(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(55833u, global0.c, global0.a.a), vec3<u32>(49746u, u_input.b.x, u_input.b.x))), global0.b, global0.c, select(global0.d, global0.d, global0.d))), select(select(global0.d, vec3<bool>(global1[_wgslsmith_index_u32(select(global0.a.a, 44041u, global0.d.x), 28u)], select(global0.b.a, false, global0.b.a), global1[_wgslsmith_index_u32(32410u, 28u)]), global0.d), !func_2().yxz, global0.d));
    let var_1 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(51076u, u_input.b.x), ~func_3(), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-699f))))), vec4<i32>(u_input.a, -abs(25010i), _wgslsmith_add_i32(4864i, -(1i >> (global0.a.a % 32u))), u_input.a));
}

