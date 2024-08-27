struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> i32 {
    return -(-9677i ^ _wgslsmith_mult_i32(~(~(-2147483647i)), ~u_input.b | -u_input.b));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = all(select(!vec4<bool>(any(vec3<bool>(false, true, false)), all(vec2<bool>(true, true)), u_input.c < u_input.c, true), vec4<bool>(true, true, true, true), false || all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))));
    var var_1 = var_0;
    let var_2 = -arg_2.a;
    let var_3 = 2147483647i;
    let var_4 = global0[_wgslsmith_index_u32(firstTrailingBit(abs(firstTrailingBit(u_input.a.x >> (u_input.c % 32u)))), 30u)];
    return ~var_3;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    var var_0 = Struct_4(false);
    global0 = array<Struct_3, 30>();
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-func_2(), countOneBits(-1i), -21891i), vec3<i32>(firstTrailingBit(firstLeadingBit(func_3(vec3<f32>(133f, 221f, 336f), 332f, Struct_1(u_input.b)))), ~_wgslsmith_mod_i32(30388i, 6110i), u_input.b));
    return Struct_2(true);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(1u, 9u)];
    var var_1 = Struct_1(~_wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, u_input.b), vec4<i32>(-10719i, -2147483647i, u_input.b, u_input.b)), vec4<i32>(-2147483647i, -8097i, _wgslsmith_div_i32(1i, 20267i), _wgslsmith_mult_i32(u_input.b, 2147483647i))));
    var var_2 = !vec4<bool>(true, true, arg_0.a, all(vec2<bool>(true, true)));
    var_1 = Struct_1(-2147483647i);
    global0 = array<Struct_3, 30>();
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 8825i;
    let var_1 = true;
    let var_2 = vec3<bool>(!(!any(vec4<bool>(true, var_1, true, var_1)) & var_1), true != any(select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(false, var_1, var_1), vec3<bool>(false, var_1, var_1)), vec3<bool>(false, true, var_1), u_input.c < 42955u)), true);
    let var_3 = func_4(func_1(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(var_0, u_input.b), ~vec2<i32>(-2147483647i, var_0), select(vec2<bool>(true, true), var_2.zy, var_1)), -vec2<i32>(u_input.b, -1i), countOneBits(vec2<i32>(-1i, -64349i))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a.yy)), false), all(select(vec4<bool>(func_1(vec2<i32>(var_0, 1i), u_input.a.zy, false).a, var_2.x, true, var_2.x), !select(vec4<bool>(var_2.x, true, var_1, var_2.x), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, false, var_2.x, true)), var_1)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, abs(_wgslsmith_clamp_u32(u_input.a.x, u_input.c, u_input.a.x))), vec2<u32>(min(u_input.c, 91514u), u_input.a.x)));
    let var_4 = u_input.b;
    var var_5 = Struct_1(-1i);
    let var_6 = all(select(var_2, var_2, u_input.c >= _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 1u), vec4<u32>(45787u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(76573u, u_input.c, u_input.a.x, 8339u))));
    global1 = array<Struct_4, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(32651i, -11599i), u_input.b), var_5.a | var_0), _wgslsmith_add_i32(reverseBits(firstLeadingBit(2147483647i)), 38495i << (u_input.a.x % 32u)), vec2<i32>(1i, _wgslsmith_clamp_i32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1255f, -505f, 317f)), _wgslsmith_f_op_f32(f32(-1f) * -104f), Struct_1(1i)), _wgslsmith_sub_i32(-9400i, i32(-1i) * -1i), -53170i)));
}

