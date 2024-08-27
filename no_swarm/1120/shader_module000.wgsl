struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(0i, -1i, 0i, 12905i, 2147483647i);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<i32, 29>;

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(false, vec2<f32>(-529f, -700f), vec2<bool>(false, true), true), Struct_3(true, vec2<f32>(-653f, -2250f), vec2<bool>(false, true), false), Struct_3(true, vec2<f32>(171f, 1411f), vec2<bool>(false, false), true), Struct_3(true, vec2<f32>(-538f, -457f), vec2<bool>(false, true), true), Struct_3(true, vec2<f32>(1765f, 358f), vec2<bool>(false, false), true), Struct_3(false, vec2<f32>(-334f, -1000f), vec2<bool>(true, false), true), Struct_3(false, vec2<f32>(893f, -899f), vec2<bool>(false, true), true), Struct_3(false, vec2<f32>(895f, -738f), vec2<bool>(true, true), true), Struct_3(true, vec2<f32>(-818f, -607f), vec2<bool>(false, false), false), Struct_3(false, vec2<f32>(-865f, -301f), vec2<bool>(false, true), true), Struct_3(true, vec2<f32>(-213f, 204f), vec2<bool>(false, true), true), Struct_3(false, vec2<f32>(151f, 466f), vec2<bool>(false, false), true), Struct_3(true, vec2<f32>(-448f, 547f), vec2<bool>(false, true), false), Struct_3(true, vec2<f32>(259f, 113f), vec2<bool>(true, false), false), Struct_3(true, vec2<f32>(-456f, -572f), vec2<bool>(true, true), false), Struct_3(false, vec2<f32>(374f, 312f), vec2<bool>(true, false), true), Struct_3(false, vec2<f32>(549f, -145f), vec2<bool>(false, false), false), Struct_3(true, vec2<f32>(409f, -148f), vec2<bool>(false, true), true), Struct_3(false, vec2<f32>(1237f, -1206f), vec2<bool>(false, true), true), Struct_3(false, vec2<f32>(-667f, 818f), vec2<bool>(false, false), true), Struct_3(true, vec2<f32>(1127f, -968f), vec2<bool>(false, false), false), Struct_3(false, vec2<f32>(-562f, -1972f), vec2<bool>(false, false), false), Struct_3(true, vec2<f32>(-265f, -1357f), vec2<bool>(false, true), true), Struct_3(false, vec2<f32>(372f, 729f), vec2<bool>(false, false), false), Struct_3(false, vec2<f32>(650f, -513f), vec2<bool>(false, false), true), Struct_3(true, vec2<f32>(-1250f, 310f), vec2<bool>(false, false), true), Struct_3(false, vec2<f32>(-399f, 1966f), vec2<bool>(false, false), false), Struct_3(true, vec2<f32>(540f, 271f), vec2<bool>(false, true), false), Struct_3(true, vec2<f32>(-1033f, -197f), vec2<bool>(true, true), true), Struct_3(false, vec2<f32>(-506f, 423f), vec2<bool>(false, true), false));

var<private> global4: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<u32>(35827u, 12447u, 0u, 1078u), 1162f), Struct_2(vec4<u32>(92447u, 63518u, 4294967295u, 49201u), 1000f), Struct_2(vec4<u32>(54694u, 0u, 58857u, 1u), -1732f), Struct_2(vec4<u32>(6622u, 0u, 883u, 61878u), 1000f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3) -> i32 {
    global0 = array<i32, 5>();
    return u_input.c;
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global1 = !(!vec2<bool>(global1.x, -2147483647i != -u_input.c));
    var var_0 = !vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -694f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(768f))), abs(reverseBits(-25478i)) <= _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, 2032i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], 1i, -1i)), reverseBits(global0[_wgslsmith_index_u32(u_input.a, 5u)])), select(u_input.b.x, abs(u_input.d.x), all(vec4<bool>(global1.x, true, true, true))) > ~(~u_input.b.x), !(firstLeadingBit(18192u) >= u_input.d.x));
    let var_1 = Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(37562u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.d.x, u_input.d.x, 50069u, 0u)), ~vec4<u32>(u_input.b.x, 69067u, u_input.b.x, 15472u)), vec4<u32>(~u_input.d.x, u_input.a, select(1u, u_input.d.x, true), u_input.d.x)), countOneBits(vec4<u32>(4294967295u, u_input.b.x ^ u_input.d.x, firstTrailingBit(u_input.d.x), u_input.a)), ~(~vec4<u32>(43378u, 4294967295u, u_input.d.x, 1u))), 349f);
    return any(var_0.zw);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_1(arg_1.b.x, vec2<i32>(~(-reverseBits(-1i)), func_2(!vec4<bool>(global1.x, false, false, arg_1.c.x), Struct_3(false, arg_1.b, vec2<bool>(true, false), arg_2.c.x)) & -(~1i)), (~global0[_wgslsmith_index_u32(4294967295u, 5u)] << (_wgslsmith_div_u32(1u, 1u) % 32u)) | (_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~arg_0.x, 5u)], u_input.c >> (4294967295u % 32u)) << (arg_0.x % 32u)));
    global3 = array<Struct_3, 30>();
    global3 = array<Struct_3, 30>();
    var var_1 = !vec2<bool>(func_3((vec3<i32>(48762i, 11986i, global2[_wgslsmith_index_u32(48270u, 29u)]) << (u_input.d % vec3<u32>(32u))) & vec3<i32>(-1i, 2147483647i, -25065i)), true);
    let var_2 = arg_3.yww;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    var var_0 = u_input.b.x >> (7872u % 32u);
    var_0 = _wgslsmith_sub_u32(~45146u, firstTrailingBit(u_input.b.x));
    var var_1 = select(~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c, -16963i, -51091i)), -vec3<i32>(u_input.c, -56853i, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(0u, 5u)], u_input.c), vec3<i32>(global0[_wgslsmith_index_u32(77300u, 5u)], u_input.c, global2[_wgslsmith_index_u32(u_input.a, 29u)])) | -vec3<i32>(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(u_input.d.x, 29u)], global0[_wgslsmith_index_u32(22522u, 5u)])), _wgslsmith_mod_vec3_i32(~(~vec3<i32>(u_input.c, 17423i, u_input.c) ^ max(vec3<i32>(u_input.c, 5339i, u_input.c), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 5u)]))), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c, 12406i, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(u_input.a, 29u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 1i, global2[_wgslsmith_index_u32(62428u, 29u)]), vec3<i32>(0i, u_input.c, u_input.c)), -29243i))), _wgslsmith_f_op_f32(trunc(397f)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec3<u32>(0u, 1u, u_input.b.x), global3[_wgslsmith_index_u32(58821u, 30u)], Struct_3(true, vec2<f32>(1099f, 536f), vec2<bool>(false, global1.x), global1.x), vec4<u32>(u_input.d.x, 4294967295u, u_input.a, 0u))))), -635f)));
    var var_2 = ~abs(0u);
    let var_3 = Struct_3(global1.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(200f + _wgslsmith_f_op_f32(1043f - -290f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f))), !vec2<bool>(any(!vec4<bool>(true, global1.x, true, global1.x)), _wgslsmith_f_op_f32(round(-247f)) == _wgslsmith_f_op_f32(trunc(325f))), 1u != u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

