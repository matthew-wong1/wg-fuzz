struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    let var_0 = arg_0.a.c;
    let var_1 = arg_0.a.d.yzy;
    return arg_0.a.c;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(80129u, 3u)];
    var var_1 = var_0.a.a;
    var_0 = global0[_wgslsmith_index_u32(9346u, 3u)];
    var var_2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(41599u, 39053u), u_input.c, min(_wgslsmith_clamp_vec2_u32(vec2<u32>(100232u, 30743u), var_0.a.a.b, vec2<u32>(0u, 4294967295u)), min(var_1.b, var_0.a.a.b))) >> (~vec2<u32>(_wgslsmith_add_u32(var_0.a.a.a, var_0.a.a.a), countOneBits(~var_0.a.a.a)) % vec2<u32>(32u));
    var_1 = var_0.a.a;
    return ~arg_0;
}

fn func_2(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = vec2<f32>(-1000f, 1f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -823f)))));
    var var_2 = Struct_1(func_4(_wgslsmith_sub_u32(0u, u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 674f, -611f, var_0.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(994f, var_0.x, 1451f, -561f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-744f, var_0.x, -544f)))))), select(vec2<bool>(arg_0.x & arg_0.x, false), !func_3(Struct_2(Struct_1(100295u, vec2<u32>(4294967295u, 0u), arg_0, vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x))), 27755i), vec2<bool>(arg_0.x, arg_0.x))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, max(u_input.c.x & u_input.c.x, firstTrailingBit(u_input.c.x))), vec2<u32>(u_input.c.x, 8431u | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 82347u, u_input.c.x), vec4<u32>(9366u, 1u, u_input.c.x, u_input.c.x)))), select(vec2<bool>(any(vec3<bool>(true, true, true)), func_3(Struct_2(Struct_1(u_input.a.x, vec2<u32>(u_input.a.x, 47729u), arg_0, vec4<i32>(-2147483647i, u_input.b.x, 0i, u_input.b.x))), countOneBits(-46936i)).x), arg_0, vec2<bool>(any(select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true))), u_input.c.x >= _wgslsmith_mult_u32(20574u, 43573u))), _wgslsmith_div_vec4_i32(max(vec4<i32>(firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -8247i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-71924i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 58312i, -64456i)), select(0i, u_input.b.x, arg_0.x)), vec4<i32>(-1i) * -vec4<i32>(34947i, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(-2147483647i, 2147483647i, -2147483647i, -_wgslsmith_add_i32(u_input.b.x, u_input.b.x))));
    global0 = array<Struct_3, 3>();
    var_2 = Struct_1(u_input.a.x, ~(vec2<u32>(abs(18317u), u_input.c.x) ^ var_2.b), func_3(Struct_2(Struct_1(1u, vec2<u32>(u_input.c.x, 0u) >> (var_2.b % vec2<u32>(32u)), var_2.c, vec4<i32>(u_input.b.x, var_2.d.x, u_input.b.x, -14022i))), abs(-u_input.b.x)), var_2.d);
    return ~abs(vec4<i32>(-3744i, reverseBits(abs(1i)), _wgslsmith_sub_i32(max(var_2.d.x, -14008i), abs(-27913i)), (var_2.d.x | -2147483647i) << (abs(u_input.c.x) % 32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = !(!(!select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true)));
    var var_1 = var_0.zz;
    return Struct_1(91555u ^ ~_wgslsmith_sub_u32(_wgslsmith_div_u32(66658u, u_input.a.x), ~u_input.c.x), ~(~(~u_input.c) & u_input.a.wx), !select(!var_0.zz, var_0.zy, var_1.x), firstTrailingBit((vec4<i32>(u_input.b.x, -9934i, -8453i, -2147483647i) ^ func_2(vec2<bool>(false, false))) | vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), -u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -8663i), u_input.b), u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<Struct_3, 3>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(563f))));
    let var_2 = select(var_0.b, vec2<u32>(23726u, firstLeadingBit(min(1u, 4294967295u))), func_3(Struct_2(func_1()), 1i).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_1)), -559f, _wgslsmith_f_op_f32(-var_1), 1014f))), vec2<u32>(min(~u_input.c.x, u_input.a.x), abs(var_2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1571f), 559f))));
}

