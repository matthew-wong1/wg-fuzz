struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(6788u, 13442u, 52835u);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global2: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> vec3<i32> {
    var var_0 = !any(!select(!vec3<bool>(global2.x, false, global2.x), !vec3<bool>(global2.x, global2.x, false), true));
    let var_1 = vec4<i32>(94892i, 2147483647i, _wgslsmith_clamp_i32(-43193i, -9103i, 1i), arg_1.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-286f * 1000f), -569f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-467f * -1204f)))) - 715f), arg_0.a, vec3<bool>(false, true, global2.x));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-1626f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2042f)))), Struct_1(var_2.c.x), select(vec3<bool>(false, any(!var_2.c), 1404f == _wgslsmith_f_op_f32(trunc(1187f))), !select(!vec3<bool>(arg_0.a.a, true, true), select(vec3<bool>(var_2.c.x, global2.x, global2.x), var_2.c, true), false), true));
    let var_3 = arg_1.x;
    return ~abs(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, -2147483647i, arg_1.x), vec3<i32>(var_3, -2147483647i, 0i)), -var_1.ywz));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = 1i;
    let var_1 = countOneBits(~vec2<u32>(~4294967295u, 7735u));
    var var_2 = abs(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-var_0, var_0), ~var_0, -var_0), func_3(Struct_3(Struct_1(global2.x), 1u), ~(-vec4<i32>(var_0, -15629i, -25930i, var_0)))));
    var var_3 = Struct_3(Struct_1(true), u_input.b.x);
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-654f))));
    return Struct_3(var_3.a, ~var_3.b << (~(~4835u) % 32u));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3) -> vec2<u32> {
    global0 = abs(~u_input.a);
    let var_0 = vec3<i32>(8722i, ~_wgslsmith_add_i32(16007i, select(max(arg_1, arg_1), arg_1, arg_2.a.a)), -(i32(-1i) * -arg_1));
    let var_1 = func_2(select(u_input.a.yz, u_input.b.xz, true));
    var var_2 = global2.x;
    var var_3 = ~(_wgslsmith_mult_vec4_i32(vec4<i32>(~(-23363i), select(arg_1, -20850i, arg_2.a.a), firstLeadingBit(1i), 0i), -vec4<i32>(arg_1, arg_1, 1i, var_0.x)) << (vec4<u32>(~arg_2.b, 24865u, global0.x, _wgslsmith_sub_u32(86893u | u_input.b.x, 2415u)) % vec4<u32>(32u)));
    return vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(33285u, var_1.b, u_input.a.x)), arg_2.b ^ u_input.a.x, abs(1u), var_1.b >> (u_input.b.x % 32u))), arg_0), ~(~(~0u)));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = -1142f;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 * var_0))), var_0, var_0) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1540f, var_0)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-779f, var_0, var_0))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 1004f) * vec3<f32>(-1047f, 1339f, 1000f)))))));
    global1 = array<Struct_1, 18>();
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), -881f, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(491f, _wgslsmith_f_op_f32(f32(-1f) * -476f), 384f)))));
    var var_2 = global1[_wgslsmith_index_u32(1u, 18u)];
    return Struct_1(!all(!(!global2.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(true | global2.x, _wgslsmith_mult_vec2_u32(~global0.yz, _wgslsmith_add_vec2_u32(func_1(~u_input.b, 1i, Struct_3(Struct_1(global2.x), 18663u)), _wgslsmith_mult_vec2_u32(max(global0.xy, vec2<u32>(17954u, global0.x)), _wgslsmith_mod_vec2_u32(u_input.a.yy, u_input.a.zz)))), ~u_input.b);
    var var_1 = -vec2<i32>(-2147483647i, 1i);
    var var_2 = ~((_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(var_1.x, var_1.x, -50322i)), func_3(Struct_3(Struct_1(var_0.a), global0.x), vec4<i32>(-22075i, -2147483647i, -1i, 0i))) << (~vec3<u32>(global0.x, global0.x, global0.x) % vec3<u32>(32u))) ^ vec3<i32>(var_1.x, 0i, -(~var_1.x)));
    var var_3 = func_2(countOneBits(u_input.a.yz));
    let var_4 = Struct_4(Struct_3(func_4(true, u_input.a.yz, _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(global0.x, 22210u, 0u, 2347u))), _wgslsmith_dot_vec2_u32(u_input.b.yy & global0.yx, vec2<u32>(4294967295u, 5692u)) & 1u), !global2.zy);
    global1 = array<Struct_1, 18>();
    global2 = vec3<bool>(!(_wgslsmith_f_op_f32(select(-328f, 470f, true)) >= _wgslsmith_f_op_f32(299f - -449f)) & (_wgslsmith_f_op_f32(round(351f)) > _wgslsmith_f_op_f32(f32(-1f) * -301f)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<i32>(var_1.x ^ firstTrailingBit(var_1.x), _wgslsmith_mult_i32(var_2.x, -var_1.x), ~(~1i)), vec2<u32>(85118u, 0u));
}

