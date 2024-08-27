struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(336f, 2002f, 3011f, -1950f), vec3<bool>(true, true, true), vec2<i32>(-14464i, 13907i), 0u);

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 17>;

var<private> global3: f32;

var<private> global4: array<u32, 23> = array<u32, 23>(40703u, 4294967295u, 1u, 20387u, 7379u, 1u, 1u, 43725u, 3888u, 40857u, 0u, 1u, 1u, 17195u, 1u, 0u, 0u, 0u, 52157u, 4294967295u, 28850u, 1u, 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(global0.d, 17u)];
    global2 = array<Struct_3, 17>();
    global3 = 344f;
    global2 = array<Struct_3, 17>();
    global2 = array<Struct_3, 17>();
    return _wgslsmith_add_u32(0u, ~_wgslsmith_sub_u32(36105u, ~(u_input.b.x | global1.b.x)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>) -> vec4<bool> {
    global0 = Struct_2(vec4<f32>(656f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.a * arg_0.a.a), arg_0.a.a)), global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1192f)) + _wgslsmith_f_op_f32(f32(-1f) * -343f)))), vec3<bool>(global1.d, global1.c.x > _wgslsmith_f_op_f32(-global0.a.x), !arg_0.a.e.a), select(-_wgslsmith_add_vec2_i32(u_input.a.zz, -vec2<i32>(2716i, -1i)), global0.c, !vec2<bool>(true, arg_0.a.d.x == true)), arg_0.a.e.b.x);
    global3 = _wgslsmith_f_op_f32(-arg_0.a.e.c.x);
    global0 = Struct_2(global0.a, select(select(vec3<bool>(true, true, arg_0.a.d.x), select(!arg_0.a.d.zzz, global0.b, select(global0.b, vec3<bool>(false, global1.a, true), vec3<bool>(false, global1.d, arg_0.a.d.x))), true || global1.d), arg_0.a.d.zwx, false), arg_0.a.c.zz, 21338u);
    let var_0 = reverseBits(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, global4[_wgslsmith_index_u32(arg_0.a.e.b.x, 23u)]), ~4294967295u, ~global0.d), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, global0.d, arg_0.a.b, 1u)), vec4<u32>(u_input.b.x, 4294967295u, 102464u, 0u))) << (vec2<u32>(firstTrailingBit(u_input.b.x), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, arg_0.a.e.b.x), u_input.b.x)) % vec2<u32>(32u)));
    global3 = -673f;
    return !vec4<bool>(select(true, (false && global0.b.x) & arg_0.a.e.a, true), true | all(global0.b), !any(vec2<bool>(false, true)) && arg_0.a.e.d, true);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-444f, 665f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(310f)), -111f))));
    let var_1 = 4294967295u;
    global2 = array<Struct_3, 17>();
    global4 = array<u32, 23>();
    var var_2 = u_input.a.x;
    return Struct_1(!global0.b.x, ~vec3<u32>(func_2(global4[_wgslsmith_index_u32(37065u, 23u)]) ^ ~24190u, 4294967295u, ~4294967295u & global4[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c.x))), _wgslsmith_f_op_f32(abs(334f)), 1000f, 1694f), _wgslsmith_f_op_vec4_f32(sign(global1.c))), any(select(func_3(Struct_5(global2[_wgslsmith_index_u32(global1.b.x, 17u)], u_input.a), u_input.a.wwz), vec4<bool>(global1.a, global0.b.x, all(vec2<bool>(global1.d, true)), u_input.c.x < u_input.c.x), false)));
}

fn func_4(arg_0: Struct_1) -> i32 {
    return min(global0.c.x, global0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(303f - _wgslsmith_f_op_f32(abs(global1.c.x)))));
    var var_2 = ~global1.b.x;
    let var_3 = func_4(func_1());
    var_0 = vec2<i32>(0i, ~6701i);
    var var_4 = vec3<bool>(!global0.b.x, false, func_1().d);
    var var_5 = u_input.a.yzw;
    let var_6 = var_4.x;
    var_1 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(0u, global4[_wgslsmith_index_u32(u_input.b.x, 23u)], global1.b.x, u_input.b.x)), ~firstLeadingBit(vec4<u32>(global1.b.x, u_input.b.x, 87778u, global4[_wgslsmith_index_u32(global1.b.x, 23u)]))), firstLeadingBit(vec2<u32>(~65188u, 4294967295u)) << (max(max(global1.b.xy >> (vec2<u32>(30996u, 0u) % vec2<u32>(32u)), ~u_input.b), vec2<u32>(~4294967295u, ~19425u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, func_1().c.x)))));
}

