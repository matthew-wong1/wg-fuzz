struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    return abs(~(-3400i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    global1 = arg_2;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1005f), arg_0.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c.x), 242f, (arg_0.e.x & firstLeadingBit(u_input.a.x)) == _wgslsmith_sub_i32(-89734i, -2147483647i))), arg_2.c.x);
    let var_1 = arg_2.e;
    var var_2 = Struct_1(arg_0.a, arg_0.e.x, arg_0.c, ~(~(-u_input.a)), firstTrailingBit(select(-(arg_2.d.yx ^ global1.d.zz), vec2<i32>(arg_0.b, var_1.x) >> (vec2<u32>(1209u, 39328u) % vec2<u32>(32u)), vec2<bool>(any(arg_0.a.yw), all(arg_0.a)))));
    var var_3 = arg_2;
    return 1u;
}

fn func_1() -> i32 {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(-firstLeadingBit(-1191i), _wgslsmith_div_i32(_wgslsmith_add_i32(~global1.b, u_input.b.x), 1i)), -(~global1.d.x), func_2(Struct_1(vec4<bool>(!global1.a.x, global1.c.x > global1.c.x, true, global1.a.x), global1.e.x, global1.c, -vec3<i32>(1i, global1.b, global1.d.x) | reverseBits(vec3<i32>(-13538i, 1579i, u_input.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-29799i, 22519i), vec2<i32>(1i, global1.d.x)))));
    global2 = -37212i;
    var var_1 = vec3<u32>(abs(1u), ~(~abs(~50200u)), _wgslsmith_mod_u32(4294967295u, 1u));
    var var_2 = _wgslsmith_clamp_i32(1i, var_0.x, min(_wgslsmith_clamp_i32(1i, global1.d.x, global1.b), global1.e.x));
    let var_3 = Struct_1(global1.a, firstLeadingBit(global1.e.x), global1.c, global1.d, vec2<i32>(-5810i >> (func_3(Struct_1(vec4<bool>(global1.a.x, global1.a.x, false, false), u_input.a.x, global1.c, vec3<i32>(var_0.x, u_input.b.x, 7633i), var_0.zz), !vec2<bool>(true, global1.a.x), Struct_1(global1.a, global1.b, global1.c, u_input.a, vec2<i32>(u_input.b.x, -13130i))) % 32u), 12704i));
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.b.x, -1i, var_3.b > 1i), ~1i), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global1.d.yx, vec2<i32>(var_0.x, u_input.b.x)), var_3.b >> (var_1.x % 32u)), 1i)), -reverseBits(-_wgslsmith_div_i32(6281i, var_0.x)), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a;
    global2 = 1i;
    global2 = -1i;
    var var_1 = var_0.x & (var_0.x & select(2147483647i, func_1(), false));
    let var_2 = global1.a.xzz;
    var var_3 = Struct_1(global1.a, func_1(), _wgslsmith_f_op_vec3_f32(abs(global1.c)), -(countOneBits(firstTrailingBit(vec3<i32>(21970i, u_input.b.x, var_0.x))) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(18724u, 14644u, 4294967295u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))), vec2<i32>(func_2(Struct_1(!vec4<bool>(true, var_2.x, true, false), 1i, _wgslsmith_f_op_vec3_f32(select(global1.c, vec3<f32>(global1.c.x, -660f, -773f), vec3<bool>(true, var_2.x, false))), ~var_0, min(vec2<i32>(-2305i, var_0.x), vec2<i32>(28097i, global1.e.x)))), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.yx, firstTrailingBit(_wgslsmith_mod_vec2_i32(var_0.zz, vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, -1i))), firstLeadingBit(firstLeadingBit(1u & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 84086u), vec2<u32>(53835u, 0u)))), -min(var_0.zz, ~var_3.e));
}

