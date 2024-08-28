struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(4427u, 34428u, 44498u, 1u, 32078u, 4294967295u, 4294967295u, 15192u, 17529u, 20644u, 0u, 59795u, 4294967295u, 4294967295u, 4294967295u, 363u, 1u, 99173u, 51165u, 11025u, 0u);

var<private> global1: array<Struct_3, 24>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> u32 {
    let var_0 = -11291i;
    return ~(~(~0u));
}

fn func_3() -> i32 {
    global0 = array<u32, 21>();
    let var_0 = abs(select(reverseBits(~vec4<i32>(1i, 0i, -1i, 2147483647i)), -_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 22820i, 1i, 2147483647i), vec4<i32>(2147483647i, -6580i, -28908i, -1i)), u_input.b.x <= abs(global0[_wgslsmith_index_u32(u_input.a, 21u)]))) >> (~_wgslsmith_mult_vec4_u32(~u_input.b << (u_input.b % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~u_input.b, _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-110f, 372f)))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, 792f, var_1, var_1)))))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_f_op_vec4_f32(max(var_2.a, var_2.a))))));
    return _wgslsmith_mod_i32(max(~var_0.x, _wgslsmith_add_i32(var_0.x, -var_0.x ^ select(var_0.x, 15981i, false))), var_0.x);
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    global1 = array<Struct_3, 24>();
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(~func_3(), abs(~1i), 26544i), vec3<i32>(-19055i, -func_3(), 1i));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(-43669i & max(var_0.x, 2147483647i)), 31367i, 26223i, var_0.x), vec4<i32>(var_0.x, _wgslsmith_mod_i32(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 27957i), var_0)) | max(_wgslsmith_mult_i32(-1i, 29865i), -2147483647i), 36438i, ~_wgslsmith_dot_vec3_i32(var_0, var_0) >> (4294967295u % 32u)));
    global1 = array<Struct_3, 24>();
    let var_2 = !(!(true || (arg_0.x == arg_0.x)));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(-arg_0.x), -395f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1470f, -337f, 166f) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))))), ~((vec4<i32>(-1i, var_0.x, 26157i, var_0.x) >> (u_input.b % vec4<u32>(32u))) ^ -vec4<i32>(var_0.x, var_0.x, -2147483647i, 1i)) | firstLeadingBit(firstTrailingBit(min(vec4<i32>(var_0.x, var_0.x, 1i, var_0.x), vec4<i32>(34074i, -16618i, -9044i, -36251i)))), Struct_2(_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0, vec4<f32>(arg_0.x, 620f, arg_0.x, arg_0.x)))))), Struct_1(true, u_input.b << (firstLeadingBit(~vec4<u32>(4294967295u, 26754u, u_input.a, 13924u)) % vec4<u32>(32u))), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 24>();
    global1 = array<Struct_3, 24>();
    global1 = array<Struct_3, 24>();
    var var_0 = func_1();
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1627f), -1711f, _wgslsmith_f_op_f32(247f - -158f), _wgslsmith_f_op_f32(1145f + 1416f))))));
    global0 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, 0u, ~func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.a.x, var_1.c.a.x, -277f, var_1.a.a.x), vec4<f32>(var_1.c.a.x, -477f, -1446f, var_1.a.a.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(-943f, 1000f, var_1.c.a.x, var_1.a.a.x), var_1.a.a))).d.b.x);
}

