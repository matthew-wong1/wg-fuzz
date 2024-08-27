struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-700f))));
    global4 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_mod_i32(arg_0.x, global0.c);
    let var_2 = global4[_wgslsmith_index_u32(~reverseBits(_wgslsmith_mult_u32(abs(u_input.a), 37120u)) | 1u, 14u)];
    var var_3 = global4[_wgslsmith_index_u32(1u, 14u)];
    return !vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a))) == _wgslsmith_f_op_f32(-199f * var_3.a), 1336f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-688f)) * _wgslsmith_f_op_f32(f32(-1f) * -354f)), false);
}

fn func_2() -> vec3<bool> {
    var var_0 = global4[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(u_input.a, ~(~u_input.a >> (~u_input.a % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 42519u, reverseBits(global1.x), 0u), ~vec4<u32>(3116u, 4294967295u, global0.b, u_input.a) | ~vec4<u32>(4294967295u, u_input.a, 4294967295u, 50917u)))), 14u)];
    let var_1 = !(!func_3(~vec2<i32>(-42055i, -51741i), vec2<u32>(global1.x, global0.b) & _wgslsmith_mult_vec2_u32(vec2<u32>(20159u, 13192u), vec2<u32>(42145u, 96232u))));
    let var_2 = global4[_wgslsmith_index_u32(global0.b, 14u)];
    global4 = array<Struct_1, 14>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d + global3.d), _wgslsmith_f_op_f32(ceil(574f))))), 1u, -(select(-var_2.c, reverseBits(-1i), any(vec4<bool>(var_1.x, var_1.x, true, var_1.x))) >> (abs(1u) % 32u)), 402f);
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = !(!select(func_2(), select(vec3<bool>(true, true, true), func_2(), true), func_2().x));
    let var_1 = abs(global0.c);
    var_0 = !func_2();
    var var_2 = arg_1.x;
    global4 = array<Struct_1, 14>();
    return -_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(global0.c, -19248i, 44565i), vec3<i32>(global3.c, -12886i, -30033i), vec3<bool>(var_0.x, false, true)) >> (vec3<u32>(1u, 0u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-1i, ~arg_0.c, global0.c)), -reverseBits(~vec3<i32>(global3.c, global2.c, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b;
    let var_1 = global2.a;
    let var_2 = -(~(~(~vec3<i32>(global0.c, 0i, global2.c))) ^ _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-25723i, 34047i, global3.c)), firstTrailingBit(func_1(global4[_wgslsmith_index_u32(u_input.a, 14u)], vec2<bool>(false, true), Struct_1(global0.a, global2.b, -65450i, global0.d)))));
    var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(6693u, global1.x), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 1u, global3.b, global1.x)), ~vec4<u32>(u_input.a, global3.b, 4294967295u, 3715u)), _wgslsmith_sub_u32(6211u, 1u)), vec3<u32>(u_input.a, global2.b, abs(u_input.a)));
    var var_3 = global2.c;
    let var_4 = _wgslsmith_f_op_f32(ceil(global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstLeadingBit(firstTrailingBit(1u)), ~25238u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.d + -429f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-373f)), _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(abs(-1000f))))))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(~global0.c, select(-50084i, -17792i, true), _wgslsmith_mult_i32(global3.c, -2147483647i)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(global3.c, global2.c, 36715i)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, -6936i, -2147483647i), vec3<i32>(global3.c, -3543i, global3.c)))));
}

