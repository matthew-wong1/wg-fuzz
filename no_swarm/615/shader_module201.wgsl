struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<Struct_2, 13>;

var<private> global2: vec4<u32> = vec4<u32>(51034u, 39968u, 4294967295u, 43910u);

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<u32>(27684u, 0u, 4294967295u), vec2<u32>(0u, 46034u), 77442u), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(17016u, 0u), 3682u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 10664u), vec2<u32>(1u, 73703u), 39883u), Struct_1(vec3<u32>(105800u, 0u, 0u), vec2<u32>(4294967295u, 4986u), 1u), Struct_1(vec3<u32>(4968u, 1u, 0u), vec2<u32>(0u, 28334u), 32186u), Struct_1(vec3<u32>(40828u, 0u, 0u), vec2<u32>(0u, 0u), 46431u), Struct_1(vec3<u32>(22477u, 66206u, 72739u), vec2<u32>(102012u, 15344u), 70367u), Struct_1(vec3<u32>(50733u, 4294967295u, 19868u), vec2<u32>(48647u, 4294967295u), 55717u), Struct_1(vec3<u32>(0u, 4294967295u, 29863u), vec2<u32>(9860u, 98163u), 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_3 {
    global2 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, ~4294967295u << (1u % 32u), _wgslsmith_sub_u32(~4294967295u, u_input.a), 1u), ~(~vec4<u32>(116u, 4294967295u, u_input.d.x, 94791u)) << (vec4<u32>(29563u, 0u, ~u_input.d.x, global2.x) % vec4<u32>(32u))));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -112f);
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(~u_input.a, 13u)]);
    let var_2 = u_input.b.x;
    let var_3 = !vec3<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.a.b.a.x, global2.x), 3u)] && (0i <= u_input.c.x), true, (-160f > var_0) && true);
    return Struct_3(var_1.a);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> vec3<f32> {
    global1 = array<Struct_2, 13>();
    var var_0 = vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b.x, firstTrailingBit(u_input.b.x), 2147483647i, -29407i), vec4<i32>(max(14452i, 54313i), u_input.b.x, 1i, 870i)), _wgslsmith_dot_vec4_i32((u_input.b << (vec4<u32>(8484u, global2.x, 1u, arg_1.a.b.c) % vec4<u32>(32u))) | select(vec4<i32>(u_input.c.x, -2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(-22778i, u_input.b.x, -22969i, 0i), true), u_input.c)) >> (max(arg_2.b.a, vec3<u32>(func_2().a.a.x, 1u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(110011u, arg_1.a.d.c, u_input.d.x), arg_1.a.b.a), arg_2.d.a >> (vec3<u32>(1u, 58370u, 1u) % vec3<u32>(32u))))) % vec3<u32>(32u));
    var var_1 = max(abs(~vec3<u32>(arg_1.a.b.b.x, 4294967295u, u_input.a | 88938u)), vec3<u32>(select(43576u, ~_wgslsmith_div_u32(4294967295u, global2.x), func_2().a.c.x), arg_2.a.x, _wgslsmith_dot_vec3_u32(max(vec3<u32>(28561u, u_input.d.x, 1u) ^ u_input.d, arg_1.a.b.a), vec3<u32>(_wgslsmith_clamp_u32(1u, arg_2.b.a.x, arg_2.a.x), 10839u, _wgslsmith_clamp_u32(83189u, arg_1.a.b.b.x, 1u)))));
    var var_2 = func_2().a;
    var var_3 = func_2();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) + _wgslsmith_div_f32(-601f, 674f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(144f * arg_3))) * 1259f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec2<i32>(countOneBits(_wgslsmith_add_i32(~arg_0.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -4952i, 26638i, 1i), u_input.b))), _wgslsmith_mult_i32(arg_0.x, u_input.c.x));
    var var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(-724f, func_2(), func_2().a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1000f)), -247f, true)), 432f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2902f)) - -597f), _wgslsmith_f_op_f32(f32(-1f) * -340f), !global0[_wgslsmith_index_u32(17687u, 3u)])))));
    var var_3 = func_2().a.b;
    return 576f;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = global3[_wgslsmith_index_u32(reverseBits(~(~(_wgslsmith_mod_u32(0u, global2.x) >> (~u_input.d.x % 32u)))), 9u)];
    global0 = array<bool, 3>();
    global3 = array<Struct_1, 9>();
    return StorageBuffer(var_0.c, vec2<f32>(1050f, arg_1.x), _wgslsmith_add_u32((10264u >> (arg_2.b.a.x % 32u)) | ~var_0.a.x, ~global2.x) & ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 31543u, arg_2.d.c, 60541u), vec4<u32>(0u, u_input.a, global2.x, global2.x)) & func_2().a.a.x), ~max(firstTrailingBit(vec2<u32>(global2.x, 1u)) & ~vec2<u32>(0u, 0u), firstLeadingBit(arg_2.b.a.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 54583u;
    global0 = array<bool, 3>();
    let var_1 = global2.x;
    var var_2 = vec2<i32>(-7496i, -u_input.b.x);
    let x = u_input.a;
    s_output = func_4(!vec3<bool>(!global0[_wgslsmith_index_u32(~91057u, 3u)], true, _wgslsmith_f_op_f32(step(550f, -255f)) != _wgslsmith_f_op_f32(func_1(u_input.c.yy, global3[_wgslsmith_index_u32(global2.x, 9u)]))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f)), _wgslsmith_f_op_f32(f32(-1f) * -1280f))), _wgslsmith_f_op_f32(select(-1892f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1165f))), true && any(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0, 3u)], global0[_wgslsmith_index_u32(var_0, 3u)]))))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, u_input.d.x), 13u)]);
}

