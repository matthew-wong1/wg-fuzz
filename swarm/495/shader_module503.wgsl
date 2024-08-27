struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(0u, 24624u, 12603u), vec3<u32>(0u, 0u, 45109u), vec3<u32>(21856u, 0u, 4991u));

var<private> global2: vec3<f32> = vec3<f32>(313f, 361f, 705f);

var<private> global3: array<Struct_2, 16>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(175f, vec4<u32>(min(abs(1u), arg_1.x), _wgslsmith_dot_vec2_u32(global4.b.yz, arg_1.yx), 48630u, ~_wgslsmith_sub_u32(arg_3.b.x, firstLeadingBit(arg_3.b.x))), false, -1814i, vec4<bool>(false, any(select(select(arg_0.yyx, vec3<bool>(arg_3.e.x, global0.x, arg_0.x), vec3<bool>(arg_2, global0.x, true)), select(global4.e.zxw, global4.e.zwx, arg_3.e.x), vec3<bool>(global0.x, arg_0.x, global4.e.x))), true, all(global0.yz)));
    let var_1 = global3[_wgslsmith_index_u32(var_0.b.x, 16u)];
    global1 = array<vec3<u32>, 3>();
    let var_2 = var_1.b.x;
    var var_3 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(reverseBits(countOneBits(arg_3.d)), arg_3.d), 1i, ~(-arg_3.d ^ _wgslsmith_clamp_i32(arg_3.d, u_input.b, 2147483647i))), arg_3.d, -54736i);
    return _wgslsmith_mult_vec3_i32(vec3<i32>(-1114i, ~(-(~global4.d)), var_3.x), select(vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, var_3.x), var_3.yz), arg_3.d) << (vec3<u32>(u_input.c, min(4294967295u, 1648u), _wgslsmith_div_u32(7900u, var_1.b.x)) % vec3<u32>(32u)), -firstTrailingBit(vec3<i32>(36723i, var_3.x, global4.d) << (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u))), any(vec2<bool>(true, global0.x)) && false));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = true;
    var var_1 = func_3(!select(!vec4<bool>(global0.x, global4.e.x, true, true), !(!vec4<bool>(arg_0, global0.x, var_0, var_0)), !(!vec4<bool>(arg_0, true, var_0, false))), _wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(~(~4294967295u), 3u)], (vec3<u32>(global4.b.x, 1u, 43713u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d, global4.b.x), global4.b.yxz)) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(global4.b.x, 17072u, u_input.d)), abs(vec3<u32>(~4294967295u, u_input.c & global4.b.x, ~1u))), any(!global0.zy), Struct_1(1279f, vec4<u32>(_wgslsmith_mod_u32(0u, global4.b.x) << ((u_input.d << (71393u % 32u)) % 32u), ~88519u, _wgslsmith_sub_u32(global4.b.x << (1u % 32u), _wgslsmith_mod_u32(0u, 17957u)), global4.b.x), arg_0, -(_wgslsmith_mod_i32(0i, u_input.b) >> (u_input.a % 32u)), global4.e));
    let var_2 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false != global4.c, any(vec2<bool>(arg_0, true)), false), global4.e, !all(vec3<bool>(false, global4.c, arg_0))), 2147483647i >= (0i ^ abs(var_1.x))), select(select(!(!vec4<bool>(true, global4.c, var_0, global0.x)), !global4.e, !select(global4.e, global4.e, true)), !select(!vec4<bool>(false, true, true, global0.x), vec4<bool>(false, var_0, var_0, false), false), vec4<bool>(true, true, global0.x, true)), false);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) - 705f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.a)) * -2480f)))));
    var var_4 = global3[_wgslsmith_index_u32(reverseBits(~u_input.d), 16u)];
    return global0.wwx;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_1(-1249f, _wgslsmith_add_vec4_u32(arg_1.b, global4.b), arg_1.e.x, ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(max(arg_3.x, 50827i), 9304i), 1i, -(~global4.d)), !vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -445f) == global2.x, all(vec2<bool>(true, true)), any(!vec2<bool>(true, global0.x))));
    global3 = array<Struct_2, 16>();
    let var_1 = func_2(global0.x);
    var var_2 = arg_3.zx;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xx))), global2.zz);
    return global4.e.zyy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 23369u;
    let var_1 = 1841f;
    let var_2 = !select(!vec3<bool>(global4.c, false, global0.x), !(!func_1(vec3<u32>(73665u, global4.b.x, 21472u), Struct_1(189f, vec4<u32>(u_input.a, 88854u, global4.b.x, 4294967295u), global0.x, -27816i, global4.e), global4.d, vec3<i32>(global4.d, u_input.b, u_input.b))), all(select(vec4<bool>(false, global4.c, false, global4.c), global4.e, true)));
    var var_3 = 41743i;
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(global2.x + -824f)), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2255f)) * global2.x)))));
    var var_5 = vec2<bool>(true, (global4.a >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1841f + var_1), _wgslsmith_div_f32(-554f, global2.x)))) && true);
    global1 = array<vec3<u32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~(global1[_wgslsmith_index_u32(u_input.a, 3u)] ^ global1[_wgslsmith_index_u32(u_input.d, 3u)]), _wgslsmith_f_op_vec2_f32(-global2.yy), u_input.b);
}

