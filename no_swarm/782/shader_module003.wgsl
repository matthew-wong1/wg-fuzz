struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: vec4<f32>;

var<private> global2: Struct_3;

var<private> global3: vec3<u32> = vec3<u32>(0u, 4294967295u, 0u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: u32) -> vec2<i32> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), global1.x, global2.c.x, -347f))));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(72851u, 13944u, u_input.a.x, 1u)), firstTrailingBit(vec4<u32>(6841u, arg_2, global3.x, arg_2))), vec4<u32>(4294967295u, global3.x, u_input.a.x, arg_2) << ((vec4<u32>(u_input.a.x, 49633u, u_input.a.x, global3.x) & vec4<u32>(68143u, arg_2, 1u, 4294967295u)) % vec4<u32>(32u))), ~(~firstTrailingBit(vec4<u32>(u_input.a.x, 0u, 37490u, global2.b.b.e)))) >> (42603u % 32u), 5u)];
    return countOneBits(arg_1.yz);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = global2.b.d;
    let var_1 = arg_0.xzx;
    var var_2 = Struct_3(-(arg_0.zw >> ((~vec2<u32>(0u, 1u) ^ global3.zx) % vec2<u32>(32u))), global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -247f, global1.x) * global2.c) * _wgslsmith_f_op_vec3_f32(vec3<f32>(155f, arg_1.b.c.x, arg_3.a) + vec3<f32>(arg_1.c.x, arg_3.a, -422f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(global2.b.c)), global1.xxw, arg_1.b.d)))));
    let var_3 = arg_1;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) - arg_3.a), -2259f, _wgslsmith_f_op_f32(-global2.c.x), -219f);
    return func_3(vec4<i32>(23688i, 36507i, select(firstTrailingBit(~global2.b.b.c.x), ~(-1i), !all(vec4<bool>(true, true, true, true))), ~_wgslsmith_clamp_i32(-2147483647i, 2147483647i, var_2.b.b.c.x) >> (~(~0u) % 32u)), _wgslsmith_sub_vec4_i32(-arg_0, arg_0) & (((vec4<i32>(arg_0.x, 2147483647i, -21125i, 87518i) | vec4<i32>(-2147483647i, -1i, 2147483647i, -2147483647i)) >> (~vec4<u32>(0u, global2.b.b.e, global3.x, 886u) % vec4<u32>(32u))) << (~vec4<u32>(arg_1.b.b.e, arg_1.b.b.e, var_2.b.e.e, 4294967295u) % vec4<u32>(32u))), var_2.b.b.e);
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.e, u_input.a.x, global2.b.e.e), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global3.x, 6633u, 6802u), vec3<u32>(global3.x, global2.b.b.e, 42125u)), vec3<u32>(4294967295u, global2.b.e.e, arg_0.e) << (vec3<u32>(u_input.a.x, arg_0.e, arg_0.e) % vec3<u32>(32u)))));
    var var_1 = arg_0.b.x;
    var var_2 = !vec4<bool>(!(!arg_0.b.x), true, all(!vec4<bool>(true, true, arg_0.b.x, arg_0.b.x)), true);
    let var_3 = false;
    let var_4 = global2.b.e.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1433f)));
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    var var_0 = 8790i;
    let var_1 = global2.b.b.e;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(select(global2.b.c.x, _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(trunc(global1.x)), !vec2<bool>(global2.b.d.x, false), func_2(vec4<i32>(global2.a.x, global2.a.x, 6209i, 1i), global0[_wgslsmith_index_u32(28053u, 5u)], true, Struct_1(1146f, vec2<bool>(global2.b.b.b.x, global2.b.b.b.x), vec2<i32>(global2.b.b.c.x, global2.a.x), -1000f, 33249u)), _wgslsmith_f_op_f32(global1.x + global2.b.b.d), global2.b.b.e | u_input.a.x))), true)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-981f)) * -892f));
    global0 = array<Struct_3, 5>();
    let var_2 = global2.b.e.b.x;
    return StorageBuffer(countOneBits(_wgslsmith_div_u32(u_input.a.x, global2.b.e.e)), global3.x, _wgslsmith_mod_vec2_u32(firstTrailingBit(~global3.xz ^ vec2<u32>(global2.b.e.e, 4294967295u)), ~u_input.a), -(~2147483647i), -func_3(vec4<i32>(-3455i, global2.a.x, global2.b.b.c.x, 1i), abs(vec4<i32>(1i, 1i, 1i, 1i)), abs(5243u)).x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<f32>(_wgslsmith_div_f32(global2.b.b.a, _wgslsmith_f_op_f32(trunc(1055f))), _wgslsmith_f_op_f32(-720f + -2095f), _wgslsmith_div_f32(global1.x, 1033f)));
}

