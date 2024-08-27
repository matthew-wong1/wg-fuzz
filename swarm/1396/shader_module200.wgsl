struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<vec4<u32>, 2>;

var<private> global2: vec4<u32> = vec4<u32>(1u, 124346u, 16107u, 0u);

var<private> global3: vec2<u32> = vec2<u32>(4195u, 4294967295u);

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> f32 {
    return 619f;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: bool) -> u32 {
    return ~(~select(select(~arg_0, 400u, any(vec2<bool>(true, arg_2))), global3.x, false));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    global3 = ~(~global2.yw);
    var var_0 = false;
    global2 = ~_wgslsmith_div_vec4_u32(abs(abs(~vec4<u32>(global2.x, 93517u, 0u, global2.x))), vec4<u32>(global2.x, 2154u ^ _wgslsmith_clamp_u32(17547u, global3.x, 40744u), global2.x, ~max(68000u, 29401u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1003f, 259f, arg_0.b.a.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.e) * arg_0.b.b.x) - _wgslsmith_f_op_f32(exp2(arg_0.c))), _wgslsmith_f_op_f32(arg_0.b.e + arg_0.a.e)));
    global0 = array<Struct_2, 8>();
    return abs(global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(3369i, u_input.a.x, -8940i, u_input.a.x) >> ((global1[_wgslsmith_index_u32(global3.x, 2u)] >> (global1[_wgslsmith_index_u32(global3.x, 2u)] % vec4<u32>(32u))) % vec4<u32>(32u)), abs(~vec4<i32>(-54989i, u_input.a.x, u_input.a.x, -22014i)), -(~vec4<i32>(-33089i, u_input.a.x, u_input.a.x, u_input.a.x))));
    var_0 = -(~firstTrailingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.x, 2147483647i, 1i, 31800i), _wgslsmith_div_vec4_i32(vec4<i32>(-70822i, 0i, u_input.a.x, -1i), vec4<i32>(2147483647i, 2147483647i, var_0.x, 1i)), vec4<i32>(-2147483647i, 8442i, u_input.a.x, u_input.a.x))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1216f) - -347f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(328f, -678f, 271f, -835f), vec4<f32>(1000f, 940f, -1000f, 1101f))), vec4<f32>(403f, 574f, 453f, -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(428f, _wgslsmith_f_op_f32(462f * -771f), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, false, true), vec3<f32>(624f, 1938f, -710f), u_input.a, var_0.x, -141f), var_0.xwy, false)), _wgslsmith_f_op_f32(959f - -599f)) * vec4<f32>(_wgslsmith_f_op_f32(-1061f - -528f), -456f, 887f, _wgslsmith_f_op_f32(-912f + -175f))))));
    var_0 = _wgslsmith_sub_vec4_i32(~(~(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -45001i, 6974i, var_0.x), vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x)) | -vec4<i32>(1i, var_0.x, -1i, u_input.a.x))), vec4<i32>(reverseBits(var_0.x), -2147483647i, 1i, -25856i));
    let var_2 = -u_input.a.x;
    var var_3 = vec4<u32>(global3.x, global3.x, _wgslsmith_mod_u32(func_2(max(global2.x, 93709u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, u_input.a.x, var_2, -2147483647i), vec4<i32>(-2147483647i, var_0.x, u_input.a.x, u_input.a.x)), true) ^ ~func_3(Struct_2(Struct_1(vec3<bool>(true, false, false), var_1.b.yyw, vec2<i32>(43217i, -1i), 22652i, 1109f), Struct_1(vec3<bool>(true, false, true), vec3<f32>(var_1.a, var_1.b.x, var_1.b.x), var_0.yx, -10493i, 281f), var_1.b.x), vec2<i32>(-2147483647i, -3255i)), global3.x), 0u);
    global3 = countOneBits(~vec2<u32>(~4294967295u, var_3.x)) | max(firstLeadingBit(~global2.zz) | _wgslsmith_add_vec2_u32(vec2<u32>(14515u, 1u) >> (var_3.ww % vec2<u32>(32u)), vec2<u32>(var_3.x, global3.x)), max(~firstTrailingBit(vec2<u32>(global3.x, 17869u)), vec2<u32>(var_3.x, var_3.x)));
    var_3 = global1[_wgslsmith_index_u32(global3.x, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(var_0.yz >> (_wgslsmith_sub_vec2_u32(var_3.zy, global2.yy) % vec2<u32>(32u)), abs(~(-var_0.xy))), ~u_input.a.x, _wgslsmith_mod_i32(var_2, _wgslsmith_div_i32(-9213i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -7900i, var_2, var_0.x), vec4<i32>(var_0.x, var_2, var_0.x, 2606i)) | 18362i)), vec4<u32>(_wgslsmith_dot_vec3_u32(var_3.zwz, vec3<u32>(~global3.x, global3.x, var_3.x)), reverseBits((30549u & var_3.x) | ~global3.x), max(~var_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, global2.x, global3.x), var_3.zzy)), ~(var_3.x >> (31987u % 32u))), var_3.x & _wgslsmith_dot_vec3_u32((var_3.zyz & var_3.wxx) & reverseBits(vec3<u32>(global3.x, var_3.x, 1u)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, 1u, 261u), vec3<u32>(global2.x, global2.x, 1u)), ~var_3.yyz, vec3<bool>(true, true, true))));
}

