struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2>;

var<private> global1: Struct_4 = Struct_4(Struct_3(vec3<i32>(9534i, -1i, -29056i), Struct_1(4294967295u, 6263i, vec2<f32>(-2011f, -214f), vec4<f32>(1252f, 736f, 676f, 1208f))), Struct_2(vec2<bool>(true, false), false, vec3<i32>(7306i, 15075i, 0i)), false);

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<Struct_4, 15>;

var<private> global4: Struct_5 = Struct_5(vec2<u32>(19057u, 1u));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_mult_vec2_i32(-global1.b.c.yx, ~(-(~(global1.a.a.yy ^ vec2<i32>(u_input.a, u_input.a)))));
    var var_1 = global1.b;
    var var_2 = global1.a;
    global4 = Struct_5(global4.a);
    var var_3 = Struct_2(select(!var_1.a, var_1.a, all(vec4<bool>(var_1.c.x == -73252i, 0u >= global1.a.b.a, var_1.a.x, any(vec2<bool>(global1.c, true))))), var_1.b, firstTrailingBit(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(2147483647i, 7225i, -2147483647i), var_2.a), reverseBits(vec3<i32>(26336i, 10617i, -7254i) ^ global1.a.a), global1.b.c)));
    return firstLeadingBit(0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2) -> u32 {
    var var_0 = select(~(-vec4<i32>(max(-13001i, global1.a.a.x), firstTrailingBit(arg_0.x), global1.b.c.x, firstLeadingBit(arg_0.x))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, 1i, countOneBits(2147483647i), arg_2.c.x), -(~(-vec4<i32>(-35862i, arg_2.c.x, arg_2.c.x, arg_0.x)))), true);
    let var_1 = _wgslsmith_add_vec3_i32(~vec3<i32>(arg_2.c.x, -982i ^ ~u_input.a, -22817i), ~(~vec3<i32>(arg_2.c.x, arg_2.c.x, ~u_input.a)));
    var var_2 = u_input.b;
    var var_3 = -832f;
    global1 = global3[_wgslsmith_index_u32(~global1.a.b.a, 15u)];
    return _wgslsmith_clamp_u32(u_input.b.x, func_3(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), var_2.x), u_input.b.x), var_2.x) >> (var_2.x % 32u);
}

fn func_1() -> StorageBuffer {
    let var_0 = ~vec4<i32>(_wgslsmith_add_i32(~(-global1.b.c.x), global1.b.c.x), -17026i, (0i >> (~global4.a.x % 32u)) ^ 90023i, _wgslsmith_mod_i32(~0i, ~55802i) >> (func_2(_wgslsmith_div_vec2_i32(global1.b.c.xz, global1.b.c.zx), !global2.x, Struct_2(vec2<bool>(global1.b.a.x, global1.c), global2.x, global1.b.c)) % 32u));
    var var_1 = global1.a.b.c;
    let var_2 = min(-(~(-_wgslsmith_mod_i32(0i, global1.b.c.x))), -18448i);
    let var_3 = _wgslsmith_f_op_vec2_f32(global1.a.b.c * _wgslsmith_f_op_vec2_f32(-global1.a.b.c));
    var var_4 = -573f;
    return StorageBuffer(_wgslsmith_f_op_f32(floor(var_1.x)), -18337i, _wgslsmith_f_op_f32(-1f), vec3<i32>(u_input.a, firstTrailingBit(1i), -42730i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(205f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1709f) * global1.a.b.c.x) * _wgslsmith_f_op_f32(trunc(-499f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_add_u32(_wgslsmith_mod_u32(firstLeadingBit(global1.a.b.a), ~global1.a.b.a), ~(~global1.a.b.a)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-63606i), _wgslsmith_div_i32(1i, -22022i)), ~(~global1.a.a.xz)), ~(-19997i), ~countOneBits(_wgslsmith_add_i32(u_input.a, -2147483647i))), global1.a.b.d.wz, global1.a.b.d);
    global0 = array<Struct_5, 2>();
    var var_1 = -1000f;
    var var_2 = false;
    global0 = array<Struct_5, 2>();
    let var_3 = !(!(!vec3<bool>(true, true, all(vec2<bool>(global1.c, global2.x)))));
    var var_4 = global1.b.c.yz;
    var var_5 = -1385f;
    let x = u_input.a;
    s_output = func_1();
}

