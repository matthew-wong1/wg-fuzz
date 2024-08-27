struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(64886i, vec3<bool>(true, false, true), vec4<bool>(true, true, false, true)), 26379u, vec4<u32>(9689u, 14646u, 1u, 4294967295u), vec3<u32>(8942u, 1u, 89133u));

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: array<Struct_5, 10>;

var<private> global3: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> bool {
    global1 = array<vec4<u32>, 18>();
    global3 = -1i | abs(-(~arg_1.a));
    global3 = -(~global0.a.a);
    var var_0 = Struct_3(Struct_1(-firstTrailingBit(-2147483647i & arg_1.a), vec3<bool>(any(arg_1.c), global0.a.a < _wgslsmith_sub_i32(-34443i, arg_1.a), any(vec2<bool>(true, true))), arg_1.c), 4294967295u, vec4<u32>(~(~(~65965u)), reverseBits(3364u), abs(countOneBits(u_input.a)) | (0u ^ global0.c.x), arg_2), global0.c.wyy << (_wgslsmith_add_vec3_u32(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(63916u, 17910u, 35862u), vec3<u32>(global0.d.x, 1u, 0u)), global0.d.x), vec3<u32>(_wgslsmith_dot_vec4_u32(global0.c, vec4<u32>(23851u, u_input.a, 25399u, 4294967295u)), 1u, ~u_input.a)) % vec3<u32>(32u)));
    global1 = array<vec4<u32>, 18>();
    return all(select(var_0.a.c.xzw, !(!vec3<bool>(var_0.a.c.x, arg_1.b.x, global0.a.b.x)), select(!vec3<bool>(var_0.a.c.x, arg_0.x, true), vec3<bool>(!arg_0.x, arg_0.x | global0.a.c.x, true), arg_1.b)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> vec3<f32> {
    var var_0 = Struct_4(~33509u, Struct_3(Struct_1(firstLeadingBit(arg_0), select(!arg_1.xxz, global0.a.b, select(arg_1.wyx, arg_1.yxx, vec3<bool>(true, true, true))), !select(global0.a.c, vec4<bool>(true, true, global0.a.b.x, arg_1.x), vec4<bool>(true, true, false, arg_1.x))), 22600u, ~vec4<u32>(~global0.c.x, _wgslsmith_div_u32(u_input.a, global0.c.x), _wgslsmith_mult_u32(global0.b, 0u), _wgslsmith_mult_u32(global0.b, 1u)), select(~_wgslsmith_mod_vec3_u32(global0.c.xzx, vec3<u32>(59966u, 30579u, global0.b)), reverseBits(~global0.c.xww), !arg_1.wyx)));
    let var_1 = var_0.b.a;
    var var_2 = -168f;
    let var_3 = var_0.b;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(120f, 462f, -1183f))) - vec3<f32>(1f, 1f, 1f))));
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = min(global0.c, _wgslsmith_sub_vec4_u32(select(arg_0.b.c, abs(vec4<u32>(u_input.a, 0u, 34150u, 4294967295u)), vec4<bool>(any(arg_0.b.a.c.ww), any(vec3<bool>(arg_0.b.a.b.x, global0.a.c.x, true)), func_2(global0.a.b.xy, arg_0.b.a, 1u), global0.a.c.x)), _wgslsmith_add_vec4_u32(global0.c, vec4<u32>(1u, global0.c.x, arg_0.b.c.x, 1u) ^ _wgslsmith_mod_vec4_u32(global0.c, arg_0.b.c))));
    global3 = select(-2147483647i, ~global0.a.a, !(!(!arg_0.b.a.c.x) || all(!vec3<bool>(global0.a.b.x, arg_0.b.a.b.x, arg_0.b.a.c.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(~(-global0.a.a), global0.a.c));
    global0 = arg_0.b;
    let var_2 = vec3<i32>(-12218i, firstTrailingBit(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.a.a, 4417i, 24788i, global0.a.a), vec4<i32>(arg_0.b.a.a, arg_0.b.a.a, arg_0.b.a.a, -3639i)), ~global0.a.a | abs(global0.a.a))), -1i);
    return select(~arg_0.b.a.a, abs(-2147483647i), global0.a.c.x) >> (_wgslsmith_mult_u32(~(~firstLeadingBit(0u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(abs(arg_0.a), firstLeadingBit(var_0.x)), max(24150u, u_input.a) ^ _wgslsmith_dot_vec2_u32(arg_0.b.c.ww, global0.c.yy))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 18>();
    global2 = array<Struct_5, 10>();
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -922f), _wgslsmith_f_op_f32(step(192f, 352f)))) * -128f)));
    var var_2 = _wgslsmith_div_f32(689f, 328f);
    global3 = 0i | _wgslsmith_dot_vec2_i32(max(reverseBits(countOneBits(vec2<i32>(global0.a.a, -8957i))), ~vec2<i32>(global0.a.a, -21537i)), vec2<i32>(global0.a.a, func_1(Struct_4(global0.b, Struct_3(Struct_1(global0.a.a, vec3<bool>(var_0, var_0, true), global0.a.c), 4684u, global1[_wgslsmith_index_u32(64163u, 18u)], vec3<u32>(1u, 1u, global0.b))))) << (~global0.c.zx % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(1i), _wgslsmith_f_op_f32(-var_1.x));
}

