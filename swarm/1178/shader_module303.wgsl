struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, false, false, false, false, true, false, false, true, false, true, true, false, true, true, false, false, false, true, false, false, true, false, true, false, true, true);

var<private> global1: array<vec3<f32>, 3>;

var<private> global2: i32 = 17752i;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> vec4<i32> {
    var var_0 = Struct_1(-1000f, global3.b);
    var_0 = Struct_1(arg_1, arg_1);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(695f)), arg_1);
    let var_2 = reverseBits(select(u_input.a.xy, abs(~abs(vec2<i32>(281i, u_input.b))), select(vec2<bool>(-1718i > u_input.a.x, true), vec2<bool>(global0[_wgslsmith_index_u32(~0u, 27u)], !global0[_wgslsmith_index_u32(arg_0.x, 27u)]), global0[_wgslsmith_index_u32(~arg_0.x, 27u)])));
    let var_3 = !all(vec3<bool>(true, !any(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(25288u, 27u)])), true));
    return -vec4<i32>(-u_input.b & u_input.a.x, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.a.x, 1i), -vec4<i32>(u_input.b, -23851i, u_input.a.x, 0i)), _wgslsmith_mult_i32(-(u_input.b << (arg_0.x % 32u)), _wgslsmith_dot_vec3_i32(~u_input.a, u_input.a << (vec3<u32>(arg_0.x, arg_0.x, 10493u) % vec3<u32>(32u)))), ~0i);
}

fn func_2() -> i32 {
    global3 = Struct_1(1f, -1223f);
    global1 = array<vec3<f32>, 3>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) + global3.a) - global3.a)));
    return _wgslsmith_dot_vec4_i32(select(func_3(reverseBits(~vec3<u32>(1u, 49086u, 1u)), -1153f), vec4<i32>(u_input.a.x, _wgslsmith_add_i32(reverseBits(-1i), -u_input.b), u_input.a.x, u_input.b), vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(6444u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(4633u, 27u)])) | true, global0[_wgslsmith_index_u32(1u, 27u)], -603f >= _wgslsmith_f_op_f32(var_0.b * var_0.a), true)), vec4<i32>(-(~abs(2147483647i)), u_input.a.x & u_input.b, select(u_input.b, -u_input.a.x, false), _wgslsmith_mod_i32(-(u_input.a.x | 2147483647i), u_input.a.x)));
}

fn func_1() -> Struct_1 {
    global2 = func_2();
    global0 = array<bool, 27>();
    let var_0 = -reverseBits(vec2<i32>(0i, u_input.b));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(135f + global3.b)))));
    var var_2 = Struct_1(1839f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1012f))), -464f))));
    return Struct_1(1f, global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(firstLeadingBit(vec3<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4934u, 44237u, 0u), vec3<u32>(21952u, 4294967295u, 2721u)), 1u)), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(12492u, 2737u, 25210u), all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 27u)], false, global0[_wgslsmith_index_u32(30303u, 27u)]))) & ~vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(3217u, 35236u, 0u)), ~(~vec3<u32>(50997u, 92942u, 0u))), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(5461u, 0u), vec2<u32>(28771u, 4294967295u)), select(vec2<u32>(13632u, 4294967295u), abs(vec2<u32>(3448u, 1u)), true)), max(~min(29562u, 4294967295u), 4294967295u))), 27u)];
    let var_2 = u_input.b & ~_wgslsmith_dot_vec4_i32(-vec4<i32>(-8569i, 1i, -35506i, u_input.b) | -vec4<i32>(u_input.b, 5931i, 2147483647i, u_input.a.x), firstLeadingBit(vec4<i32>(u_input.a.x, 13539i, -17760i, 2939i)) >> (~vec4<u32>(54823u, 75666u, 1u, 6560u) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global3.b)), 754f, 1000f, -1423f)))));
    var var_4 = u_input.a.zy ^ max(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-12243i, 1i), u_input.a.zy), vec2<i32>(var_2, u_input.b), u_input.a.yz), -vec2<i32>(-26952i, 2147483647i) & vec2<i32>(u_input.a.x, u_input.b)), -vec2<i32>(-var_2, var_2));
    var_0 = func_1();
    var var_5 = Struct_1(_wgslsmith_f_op_f32(sign(var_0.b)), var_0.b);
    var var_6 = ~vec2<u32>(1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(reverseBits(var_4.x) | select(2147483647i, var_2, global0[_wgslsmith_index_u32(var_6.x, 27u)]), var_2, var_2), var_6.x, select(_wgslsmith_sub_vec3_u32(~(vec3<u32>(541u, 1u, 62136u) & vec3<u32>(var_6.x, var_6.x, var_6.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_6.x, 36167u, var_6.x), vec3<u32>(36742u, 1u, var_6.x)), vec3<u32>(var_6.x, 68160u, var_6.x) & vec3<u32>(var_6.x, var_6.x, var_6.x))), ~abs(~vec3<u32>(23721u, 0u, var_6.x)), false), _wgslsmith_mod_u32(var_6.x ^ (max(var_6.x, 0u) | ~1u), 14542u), vec4<u32>(_wgslsmith_add_u32(0u >> (var_6.x % 32u), ~var_6.x) ^ countOneBits(var_6.x), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12632u, var_6.x), vec3<u32>(18696u, var_6.x, var_6.x)) >> (var_6.x % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), firstLeadingBit(firstLeadingBit(vec2<u32>(var_6.x, var_6.x)))), var_6.x));
}

