struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_1;

var<private> global1: array<i32, 11>;

var<private> global2: array<vec2<f32>, 32>;

var<private> global3: f32 = 572f;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = -214f;
    global3 = 786f;
    let var_1 = max(~_wgslsmith_dot_vec3_u32(arg_1.b, vec3<u32>(global0.b.x, 66718u, arg_1.b.x) ^ (vec3<u32>(29204u, global0.b.x, 73021u) & arg_1.b)), global0.b.x);
    var var_2 = ~arg_1.d;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.a - vec2<f32>(arg_1.e, 499f)), _wgslsmith_f_op_vec2_f32(max(arg_1.a, arg_1.a)), !global0.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e, -892f) * _wgslsmith_f_op_vec2_f32(-arg_1.a)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1717f, arg_1.a.x), _wgslsmith_f_op_vec2_f32(arg_1.a - vec2<f32>(2243f, 1000f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(-1000f, -440f)))), false))), vec3<u32>(12344u, _wgslsmith_mult_u32(reverseBits(~arg_1.b.x), countOneBits(global0.b.x)), 0u), global0.c, arg_1.d, 481f);
    return 5453u;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_add_u32(countOneBits(~1u), ~_wgslsmith_mod_u32(func_3(-2147483647i, Struct_1(vec2<f32>(global0.e, global0.a.x), global0.b, global0.c, vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), -782f)), ~0u));
    global1 = array<i32, 11>();
    let var_1 = global1[_wgslsmith_index_u32(global0.b.x, 11u)] << (global0.b.x % 32u);
    var var_2 = -1i;
    let var_3 = Struct_1(vec2<f32>(global0.a.x, global0.a.x), global0.b, select(!(!vec2<bool>(global0.c.x, true)), global0.c, global0.c), select(-min(select(global0.d, global0.d, vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true)), -vec4<i32>(global0.d.x, u_input.a, global1[_wgslsmith_index_u32(0u, 11u)], global0.d.x)), _wgslsmith_mult_vec4_i32(global0.d ^ _wgslsmith_add_vec4_i32(vec4<i32>(-28782i, global0.d.x, 26011i, u_input.a), global0.d), vec4<i32>(global1[_wgslsmith_index_u32(5187u, 11u)], 28271i, -2147483647i, global1[_wgslsmith_index_u32(global0.b.x, 11u)]) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), vec4<u32>(1u, 0u, global0.b.x, 3098u)) % vec4<u32>(32u))), true), global0.a.x);
    return ~_wgslsmith_div_u32(var_3.b.x, max(~global0.b.x << (~41964u % 32u), 64683u));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.a.x - global0.a.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 32>();
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(754f, global0.a.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 1000f))) + vec2<f32>(_wgslsmith_div_f32(872f, 1164f), _wgslsmith_f_op_f32(-global0.e))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(-341f)), 677f);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(global0.b.x, 32u)] + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.a, vec2<f32>(var_0.x, var_0.x)))), global0.a))), min(global0.b, vec3<u32>(global0.b.x, func_1(Struct_1(global0.a, global0.b, vec2<bool>(false, true), global0.d, var_0.x)), ~(~4294967295u))), select(vec2<bool>(false, any(vec2<bool>(true, global0.c.x))), vec2<bool>(true, false), !select(!global0.c, vec2<bool>(global0.c.x, true), global0.c.x)), -vec4<i32>(-_wgslsmith_mult_i32(u_input.a, 31344i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0.d.xw, vec2<i32>(51356i, global0.d.x)), vec2<i32>(global1[_wgslsmith_index_u32(global0.b.x, 11u)], global0.d.x)), u_input.a, global1[_wgslsmith_index_u32(global0.b.x, 11u)]), -1000f);
    let var_1 = Struct_1(vec2<f32>(global0.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1713f)))), abs(global0.b & vec3<u32>(0u, 0u, 1u)) | vec3<u32>(global0.b.x, func_2(), global0.b.x & global0.b.x), select(select(global0.c, select(vec2<bool>(false, true), vec2<bool>(global0.c.x, global0.c.x), global0.c), select(select(global0.c, global0.c, global0.c.x), select(global0.c, vec2<bool>(global0.c.x, global0.c.x), global0.c), select(global0.c.x, false, global0.c.x))), global0.c, select(global0.c, select(vec2<bool>(true, global0.c.x), select(vec2<bool>(global0.c.x, global0.c.x), vec2<bool>(global0.c.x, true), global0.c.x), global0.c.x), true)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(39515i << (global0.b.x % 32u), _wgslsmith_dot_vec2_i32(global0.d.wy, global0.d.yw), abs(14021i), global0.d.x), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 1i, global1[_wgslsmith_index_u32(global0.b.x, 11u)], -1i), vec4<i32>(0i, global0.d.x, -2147483647i, global0.d.x), global0.d)), -vec4<i32>(34083i, global0.d.x, -1i, 84697i)), countOneBits(-abs(global0.d)), -vec4<i32>(firstLeadingBit(19073i), reverseBits(0i), 0i, global0.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f), -230f))));
    let var_2 = 4294967295u;
    var var_3 = vec2<bool>(!global0.c.x & ((!global0.c.x | any(vec3<bool>(global0.c.x, var_1.c.x, true))) && var_1.c.x), global0.c.x);
    var var_4 = vec2<i32>(-1i, ~global0.d.x) ^ abs(var_1.d.wy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1564f));
}

