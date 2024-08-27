struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 1u, 0u, 7186u);

var<private> global1: array<i32, 27> = array<i32, 27>(0i, 1i, -38082i, 34585i, 28691i, 32654i, 2147483647i, 0i, 21682i, -2967i, 2147483647i, -54344i, -31839i, -13955i, 993i, i32(-2147483648), i32(-2147483648), 66128i, 22619i, 1i, 2338i, -1i, -1i, 33580i, 21527i, -31994i, -29440i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>) -> bool {
    let var_0 = Struct_1(2147483647i, arg_1.x, !select(!select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x), vec3<bool>(true, true, true), select(vec3<bool>(false, false, arg_0.x), !vec3<bool>(arg_0.x, false, true), select(vec3<bool>(arg_0.x, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, arg_0.x)))), _wgslsmith_f_op_f32(abs(158f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -643f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x))))));
    global1 = array<i32, 27>();
    var var_1 = u_input.b.x == u_input.b.x;
    var var_2 = -7109i;
    var var_3 = Struct_3(vec4<bool>(true, true, true, true));
    return true;
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = !vec3<bool>(!arg_0 & (u_input.a == (36937u ^ global0.x)), all(vec2<bool>(func_3(vec2<bool>(true, true), vec2<f32>(-1000f, 1240f)), any(vec4<bool>(arg_0, true, true, true)))), arg_0);
    global0 = _wgslsmith_sub_vec4_u32(u_input.b, abs(~max(u_input.b & vec4<u32>(global0.x, 0u, u_input.b.x, u_input.b.x), ~vec4<u32>(global0.x, global0.x, 5927u, global0.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1039f, -289f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-136f, 820f) - vec2<f32>(-781f, -258f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    global0 = ~vec4<u32>(1u >> (global0.x % 32u), 4294967295u, firstTrailingBit(9353u), _wgslsmith_add_u32(u_input.c.x, u_input.b.x));
    global0 = ~(u_input.b | vec4<u32>(_wgslsmith_dot_vec3_u32(global0.yzy, vec3<u32>(29564u, global0.x, u_input.a) & vec3<u32>(u_input.c.x, 0u, 29970u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.x, u_input.b.x), u_input.a & 58120u), _wgslsmith_mult_u32(global0.x & global0.x, ~4294967295u), 4294967295u << ((u_input.b.x >> (0u % 32u)) % 32u)));
    return vec3<bool>(all(vec3<bool>(arg_0 || true, any(vec3<bool>(true, true, true)), true)), ~19142u > abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 4294967295u, global0.x), u_input.b.zwx)), !var_0.x);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = !vec4<bool>(!arg_2.c.x, arg_0, !arg_0, true);
    var var_1 = arg_1.a;
    let var_2 = Struct_2(Struct_1(~(-48064i ^ min(arg_2.a, -64473i)), _wgslsmith_f_op_f32(-117f - arg_3), select(func_2(arg_1.a != -2147483647i), vec3<bool>(arg_2.c.x, false, arg_0), vec3<bool>(arg_1.c.x, arg_0 == var_0.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b, 1357f) - 1000f)), arg_1.e));
    global1 = array<i32, 27>();
    let var_3 = Struct_3(select(!(!vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_1.c.x)), var_0, var_0.x | !all(var_0)));
    return max(30743i, -9956i) & select(arg_2.a, _wgslsmith_div_i32(firstTrailingBit(7236i), arg_2.a), false);
}

fn func_4(arg_0: i32) -> Struct_2 {
    var var_0 = vec4<i32>(-1i) * -(firstTrailingBit(vec4<i32>(2147483647i, 2147483647i, -1i, arg_0)) & abs(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.c.x, 27u)], arg_0, 1i), vec4<i32>(3784i, -40566i, -1i, global1[_wgslsmith_index_u32(u_input.c.x, 27u)]))));
    var var_1 = Struct_3(vec4<bool>(true, true, true, true));
    let var_2 = global0.x;
    var var_3 = _wgslsmith_add_vec2_u32(~vec2<u32>(~27091u, global0.x << (_wgslsmith_add_u32(global0.x, global0.x) % 32u)), countOneBits(u_input.c.zx));
    var var_4 = _wgslsmith_div_vec3_u32(~vec3<u32>(~reverseBits(u_input.a), _wgslsmith_mod_u32(~global0.x, 0u), _wgslsmith_div_u32(1u >> (global0.x % 32u), ~1u)), vec3<u32>(_wgslsmith_div_u32(27754u, ~u_input.a), ~var_3.x, 79707u));
    return Struct_2(Struct_1(1i, 790f, select(vec3<bool>(var_1.a.x, true, true), !(!vec3<bool>(var_1.a.x, var_1.a.x, true)), var_1.a.x), -1543f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, -2007f, 1278f, 141f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1255f, -1505f, -1000f, 793f) + vec4<f32>(-1444f, 199f, 1201f, -995f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    var var_0 = global1[_wgslsmith_index_u32(~u_input.b.x, 27u)];
    global1 = array<i32, 27>();
    let var_1 = func_4(max(_wgslsmith_add_i32(-2147483647i, func_1(true, Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 2041f, vec3<bool>(true, true, false), -1000f, vec4<f32>(2997f, -379f, 944f, 242f)), Struct_1(48537i, 856f, vec3<bool>(true, false, false), 595f, vec4<f32>(842f, -154f, 961f, 1886f)), -1259f)) >> (reverseBits(u_input.a >> (global0.x % 32u)) % 32u), -1i));
    var_0 = 30762i;
    global0 = select(~_wgslsmith_mult_vec4_u32(u_input.b, reverseBits(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(4294967295u, global0.x, global0.x, 4294967295u)))), vec4<u32>(0u, abs(u_input.a), ~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, global0.x), u_input.c.x | 44915u), firstTrailingBit(3667u) & u_input.c.x), select(vec4<bool>((global0.x | u_input.c.x) > 0u, true, !var_1.a.c.x && true, var_1.a.c.x), vec4<bool>(all(var_1.a.c.yx), select(true, var_1.a.c.x, var_1.a.c.x), true, var_1.a.c.x), !func_3(var_1.a.c.zz, vec2<f32>(-287f, -223f)) == any(select(var_1.a.c.zz, vec2<bool>(true, true), var_1.a.c.xz))));
    var_0 = countOneBits(firstTrailingBit(~min(max(38940i, -1388i), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.e.zz, abs((vec4<i32>(-1i) * -vec4<i32>(-1i, var_1.a.a, 32403i, 12095i)) | _wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.a.a, global1[_wgslsmith_index_u32(global0.x, 27u)], -1i, -2147483647i), firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(global0.x, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)], -10705i, global1[_wgslsmith_index_u32(15535u, 27u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.e.xwz))), firstTrailingBit(reverseBits(~vec4<i32>(-1i, global1[_wgslsmith_index_u32(69420u, 27u)], -2147483647i, 0i))), min(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.a, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]) | vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], var_1.a.a), -vec2<i32>(var_1.a.a, -2147483647i)), vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x >> (62477u % 32u), 27u)], _wgslsmith_div_i32(23215i, -2147483647i))) & vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(var_1.a.a, 32413i, global1[_wgslsmith_index_u32(0u, 27u)])), firstLeadingBit(_wgslsmith_add_i32(-16692i, global1[_wgslsmith_index_u32(global0.x, 27u)]))));
}

