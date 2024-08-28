struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(602f, vec4<bool>(false, true, false, false), 0u);

var<private> global1: vec4<bool>;

var<private> global2: Struct_2;

var<private> global3: array<bool, 13>;

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 2030u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = arg_2.b;
    var var_1 = !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.c, reverseBits(global2.b.c)), 13u)];
    var_1 = !global1.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f), _wgslsmith_f_op_f32(ceil(-194f))), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.a) * -759f))))));
    global4 = _wgslsmith_mod_vec2_u32(vec2<u32>(19239u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c, var_0.c, arg_2.b.c), abs(arg_1.yyx)), ~u_input.c)), ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(max(arg_1.ww, arg_1.yy), vec2<u32>(16842u, 5804u)), ~(~arg_1.zz)));
    return var_0.b;
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = global2.b;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + -800f)) - _wgslsmith_f_op_f32(-1654f - 2528f)), select(global0.b, !func_3(vec4<i32>(-12910i, u_input.a.x, u_input.a.x, 47439i) | u_input.b, vec4<u32>(32140u, arg_0, global2.b.c, var_0.c), Struct_2(global0.b.yzz, global2.b)), vec4<bool>(false, false, _wgslsmith_f_op_f32(exp2(global0.a)) >= _wgslsmith_f_op_f32(var_0.a + -641f), global3[_wgslsmith_index_u32(~22975u << (_wgslsmith_mult_u32(0u, var_0.c) % 32u), 13u)])), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, arg_0, global2.b.c), vec4<u32>(1u, 60978u, global4.x, 1u)) >> (_wgslsmith_add_u32(8633u, _wgslsmith_mod_u32(0u, 19125u)) % 32u)));
    let var_2 = _wgslsmith_dot_vec3_i32(-u_input.a, u_input.a);
    var_1 = global2.b;
    var var_3 = Struct_2(global1.wxw, global2.b);
    return Struct_2(!func_3(vec4<i32>(~var_2, -8184i, var_2, 1i), countOneBits(~vec4<u32>(global2.b.c, global0.c, var_3.b.c, 19860u)), Struct_2(!var_0.b.zwz, var_3.b)).yyz, global2.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = !(!vec4<bool>(all(!arg_1.xw), true, true, global2.a.x));
    let var_1 = Struct_1(1256f, global0.b, global4.x);
    var var_2 = arg_0.a;
    global0 = var_1;
    var var_3 = func_2(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(~global4.x, global0.c, abs(arg_2.x))) | 0u).b;
    return func_2(_wgslsmith_div_u32(var_1.c, ~1u)).b;
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = ~_wgslsmith_div_i32(~countOneBits(-u_input.b.x), _wgslsmith_mult_i32(-u_input.b.x, ~u_input.a.x) >> (22228u % 32u));
    global3 = array<bool, 13>();
    var var_1 = Struct_2(vec3<bool>(global0.b.x, all(select(global2.b.b.xwx, vec3<bool>(global0.b.x, false, false), select(arg_0.b.wxz, arg_0.b.xyx, vec3<bool>(global1.x, global2.a.x, true)))), global0.b.x | (_wgslsmith_f_op_f32(trunc(-210f)) <= _wgslsmith_f_op_f32(sign(1054f)))), func_4(arg_0, select(vec4<bool>(global3[_wgslsmith_index_u32(16085u, 13u)], any(arg_0.b.zx), true, -1713f >= global0.a), !arg_0.b, false), abs(~firstTrailingBit(u_input.c.xy)), func_2(~(~35204u))));
    var var_2 = _wgslsmith_f_op_f32(-func_2(min(abs(~global0.c), 4294967295u)).b.a);
    var var_3 = ~1u;
    return StorageBuffer(reverseBits(_wgslsmith_mod_u32(abs(abs(u_input.c.x)), var_1.b.c)), vec2<u32>(4294967295u, min(var_1.b.c, ~4294967295u)) ^ ~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c.x, global4.x), u_input.c.zy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.a, 1035f, false)) + _wgslsmith_f_op_f32(-global2.b.a)))), var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global2.b);
}

