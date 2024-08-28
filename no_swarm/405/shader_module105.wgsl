struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24>;

var<private> global1: array<Struct_4, 15>;

var<private> global2: vec2<u32> = vec2<u32>(26246u, 69530u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<i32>) -> vec2<f32> {
    global2 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~6118u, abs(u_input.a.x >> (0u % 32u))), abs(~vec2<u32>(u_input.a.x, global2.x))), ~select(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, global2.x)), max(vec2<u32>(0u, u_input.a.x), vec2<u32>(1u, u_input.a.x))), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, 0u), abs(u_input.a.xy)), vec2<bool>(true, global2.x > 0u)));
    return vec2<f32>(-893f, _wgslsmith_f_op_f32(f32(-1f) * -544f));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<f32> {
    global1 = array<Struct_4, 15>();
    let var_0 = Struct_3(Struct_2(arg_1.c.b, ~(~vec2<i32>(arg_0.x, arg_1.c.c)), arg_1.c, arg_1.d, _wgslsmith_sub_i32(~2147483647i >> (~global2.x % 32u), 245i)), _wgslsmith_f_op_f32(223f + 1489f), false, Struct_2(arg_1.a, vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.d.x, u_input.d.x, u_input.b, -33117i), _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(global2.x, 24u)], vec4<i32>(arg_0.x, 2147483647i, u_input.b, arg_1.d.x))), 1i), Struct_1(arg_1.c.a, !arg_1.a, _wgslsmith_sub_i32(-1i, firstLeadingBit(1i)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 2625u), vec4<u32>(global2.x, u_input.a.x, 0u, 45373u)), vec2<i32>(firstTrailingBit(-25979i), -14468i)), select(select(arg_1.d, global0[_wgslsmith_index_u32(1u, 24u)], arg_1.a) >> (vec4<u32>(57864u, 56885u, 0u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 0i), vec2<i32>(arg_1.d.x, 1i)), 1i, arg_1.e, -arg_0.x), !(!arg_1.c.b)), select(-arg_1.d.x, reverseBits(1i), true | arg_1.a) >> (_wgslsmith_add_u32(~arg_1.c.d, reverseBits(38394u)) % 32u)), arg_1.c.a);
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.c.a, -580f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -672f), vec2<f32>(639f, 985f))), !vec2<bool>(false, var_0.a.c.b))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1518f, -1270f), vec2<f32>(arg_1.c.a, arg_1.c.a))))))));
}

fn func_1() -> StorageBuffer {
    global1 = array<Struct_4, 15>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(u_input.d)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1578f, -415f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(firstTrailingBit(vec3<i32>(63672i, 39358i, u_input.b)), Struct_2(true, vec2<i32>(u_input.b, u_input.d.x), Struct_1(-1000f, false, u_input.e, 4294967295u, u_input.d.zy), vec4<i32>(1370i, -5991i, u_input.e, u_input.e), 21679i))))));
    global0 = array<vec4<i32>, 24>();
    let var_1 = ~firstLeadingBit(firstTrailingBit(countOneBits(min(u_input.a, vec4<u32>(4294967295u, 19806u, u_input.a.x, 16043u)))));
    var var_2 = var_0.x;
    return StorageBuffer(~vec4<u32>(u_input.a.x, 1u, 7078u, var_1.x), _wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(~(~4294967295u), u_input.a.x, _wgslsmith_clamp_u32(1u, u_input.a.x, global2.x & 37159u))), var_1.xwz, ~u_input.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, -961f, 1400f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(689f, 590f, var_0.x) + vec3<f32>(var_0.x, 266f, var_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mod_vec2_u32(~u_input.a.yx, ~vec2<u32>(reverseBits(global2.x << (global2.x % 32u)), abs(global2.x) & 33042u));
    global1 = array<Struct_4, 15>();
    var var_0 = i32(-1i) * -_wgslsmith_add_i32(1i, -2147483647i);
    let var_1 = 4294967295u;
    var_0 = u_input.d.x;
    let x = u_input.a;
    s_output = func_1();
}

