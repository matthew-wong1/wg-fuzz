struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: array<Struct_3, 31>;

var<private> global2: vec3<f32>;

var<private> global3: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(!(!arg_0.e.a), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, arg_0.a.b.x, -13839i), vec3<i32>(-13598i, -408i, arg_0.e.b.x)), u_input.a), vec4<i32>(_wgslsmith_mod_i32(-1i, -1i), 1i, 2930i, ~arg_2.x))), Struct_1(arg_0.e.a, _wgslsmith_mult_vec4_i32(arg_3, arg_0.e.b)), arg_0.b.x);
    return arg_0.a;
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = select(vec4<bool>(func_2(global1[_wgslsmith_index_u32(u_input.c.x | 1u, 31u)], u_input.c.x, -firstLeadingBit(vec2<i32>(2147483647i, u_input.d.x)), (arg_0.b.b >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 21707u) % vec4<u32>(32u))) & select(vec4<i32>(arg_0.b.b.x, 30308i, u_input.b, u_input.d.x), arg_0.b.b, global3[_wgslsmith_index_u32(4294967295u, 10u)])).a.x, arg_0.c, true, arg_0.a.a.x), global3[_wgslsmith_index_u32(74254u, 10u)], vec4<bool>(any(!select(arg_0.a.a, arg_0.a.a, true)), func_2(global1[_wgslsmith_index_u32(~u_input.c.x >> (4294967295u % 32u), 31u)], ~(~u_input.c.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(9033i, -1i), u_input.d.yy, vec2<i32>(arg_0.b.b.x, 21047i)), arg_0.a.b).a.x, arg_0.a.a.x, _wgslsmith_f_op_f32(max(global2.x, global2.x)) >= _wgslsmith_f_op_f32(-284f + global2.x)));
    var var_1 = arg_0.b.a.yy;
    let var_2 = global2.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(202f)))) + global2.x);
    let var_4 = u_input.c.yz;
    return abs(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.x, u_input.c.x, u_input.c.x, var_4.x), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 21291u), vec4<u32>(var_4.x, var_4.x, 951u, var_4.x)), vec4<u32>(31191u, 20563u, u_input.c.x, 37128u)), 37681u), ~u_input.c.x, ~_wgslsmith_sub_u32(u_input.c.x, ~1u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> StorageBuffer {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))) * vec3<f32>(_wgslsmith_div_f32(global2.x, arg_1), global2.x, -1320f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_1, 2072f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(641f, -353f, -1000f) - vec3<f32>(-1000f, -1723f, -608f)))))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(391f, 1601f))));
    global3 = array<vec4<bool>, 10>();
    global1 = array<Struct_3, 31>();
    let var_0 = u_input.c;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624f + global2.x))) - 1f), arg_1, func_2(Struct_3(Struct_1(vec3<bool>(false, true, false), -vec4<i32>(u_input.b, 23413i, u_input.b, u_input.a)), vec2<bool>(true, true), ~arg_0.x, firstTrailingBit(arg_0.x), Struct_1(vec3<bool>(true, true, true), -vec4<i32>(1i, 32329i, u_input.b, u_input.a))), _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, ~0u), u_input.c.x), u_input.d.xz, min(vec4<i32>(u_input.a, -11589i, u_input.d.x, -6526i) & vec4<i32>(u_input.a, -2138i, -38274i, u_input.a), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 236i, -24981i), vec4<i32>(u_input.b, u_input.d.x, u_input.b, u_input.a)), reverseBits(u_input.d.x), firstLeadingBit(u_input.d.x), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(1i, u_input.d.x, u_input.b))))), -(vec3<i32>(u_input.b, u_input.d.x, u_input.d.x) ^ u_input.d) << (u_input.c % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-global2.x)) - _wgslsmith_f_op_f32(-arg_1)) - global2.x));
    return StorageBuffer(func_3(Struct_2(Struct_1(select(var_1.c.a, vec3<bool>(true, var_1.c.a.x, false), var_1.c.a.x), ~var_1.c.b), func_2(Struct_3(Struct_1(var_1.c.a, vec4<i32>(0i, u_input.d.x, var_1.c.b.x, u_input.b)), var_1.c.a.zx, arg_0.x, 6878u, Struct_1(vec3<bool>(true, var_1.c.a.x, var_1.c.a.x), var_1.c.b)), ~var_0.x, vec2<i32>(-43017i, 0i), var_1.c.b), _wgslsmith_f_op_f32(var_1.b - var_1.b) <= _wgslsmith_f_op_f32(global2.x - 400f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b - global2.x))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 39349i;
    let x = u_input.a;
    s_output = func_1(abs(u_input.c.zy) | (u_input.c.zx << (u_input.c.xz % vec2<u32>(32u))), -1704f);
}

