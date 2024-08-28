struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<f32, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    global1 = array<f32, 22>();
    global0 = array<Struct_1, 13>();
    global1 = array<f32, 22>();
    global0 = array<Struct_1, 13>();
    var var_0 = Struct_3(vec3<u32>(1u, _wgslsmith_sub_u32(~1u | _wgslsmith_mod_u32(0u, u_input.a.x), u_input.b.x), reverseBits(~(~1u))), firstTrailingBit(u_input.b.x), -reverseBits(~abs(vec4<i32>(4997i, u_input.c.x, u_input.c.x, u_input.c.x))));
    return global0[_wgslsmith_index_u32(u_input.a.x, 13u)];
}

fn func_1(arg_0: f32, arg_1: f32) -> i32 {
    global1 = array<f32, 22>();
    global1 = array<f32, 22>();
    var var_0 = vec2<f32>(global1[_wgslsmith_index_u32(~u_input.a.x, 22u)], arg_1);
    var var_1 = func_2();
    let var_2 = ~u_input.a.x;
    return ~u_input.c.x;
}

fn func_3(arg_0: u32) -> Struct_1 {
    var var_0 = true;
    var var_1 = func_2();
    var var_2 = ~min(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, u_input.c.x, 0i, 0i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 4294967295u, 4294967295u, arg_0), vec4<u32>(0u, arg_0, u_input.d, 1u)) % vec4<u32>(32u)), vec4<i32>(2147483647i, var_1.c, u_input.c.x, i32(-1i) * -2147483647i)));
    let var_3 = _wgslsmith_div_i32(~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c, -38477i, -20862i, -2147483647i), vec4<i32>(var_1.c, var_1.c, 2147483647i, u_input.c.x)), max(vec4<i32>(-19563i, u_input.c.x, -11512i, 0i), vec4<i32>(1i, -1i, u_input.c.x, u_input.c.x))), 21400i), func_1(_wgslsmith_f_op_f32(step(-455f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.b, 22u)]) * 799f))), global1[_wgslsmith_index_u32(49661u, 22u)]));
    global0 = array<Struct_1, 13>();
    return func_2();
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_add_i32(arg_1.c, u_input.c.x);
    var var_1 = arg_1;
    let var_2 = u_input.c.zy;
    global1 = array<f32, 22>();
    let var_3 = Struct_2(arg_1.d.wwz, 1000f, max(~select(1589i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, var_1.c, 24221i), u_input.c), true), u_input.c.x), Struct_1(!any(!arg_1.d.xw), ~_wgslsmith_add_u32(~var_1.e, 15075u), -reverseBits(-25936i), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)] <= 1047f, arg_0, var_1.a, arg_0), _wgslsmith_dot_vec2_u32(u_input.b, select(u_input.b, u_input.a.zz, var_1.d.wz))), func_3(0u));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4((((-229i >= u_input.c.x) & true) || any(vec3<bool>(true, true, true))) || (min(reverseBits(0i), func_1(global1[_wgslsmith_index_u32(9212u, 22u)], -1000f)) < ~func_2().c), func_3(~u_input.d));
    var var_1 = vec4<i32>(511i, func_1(var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, global1[_wgslsmith_index_u32(var_0.e.b, 22u)]) * _wgslsmith_f_op_f32(var_0.b + -1228f)), _wgslsmith_f_op_f32(-236f + _wgslsmith_f_op_f32(f32(-1f) * -1619f))))), abs(-20004i), _wgslsmith_add_i32(u_input.c.x << (~u_input.b.x % 32u), 22508i));
    global1 = array<f32, 22>();
    let var_2 = Struct_3(reverseBits(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)), ~27993u, ~(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c.x, var_0.d.c, 2147483647i, 1i), vec4<i32>(var_1.x, var_0.e.c, 2147483647i, u_input.c.x) << (vec4<u32>(u_input.b.x, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u)), ~vec4<i32>(-1589i, u_input.c.x, var_0.d.c, -15754i))));
    var var_3 = countOneBits(firstTrailingBit(4294967295u)) << (~(~select(~var_2.a.x, func_4(var_0.e.d.x, var_0.d).e.b, any(var_0.e.d))) % 32u);
    var_3 = var_0.e.b;
    global0 = array<Struct_1, 13>();
    var var_4 = var_1.x << (u_input.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-(vec2<i32>(-71682i, u_input.c.x) >> (~var_2.a.zz % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(var_1.x, -u_input.c.x), var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-907f))), var_0.e.b, 372f);
}

