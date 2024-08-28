struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

var<private> global2: array<i32, 24> = array<i32, 24>(2147483647i, -5840i, i32(-2147483648), 2147483647i, 1i, -17994i, 0i, 1i, 2147483647i, i32(-2147483648), 0i, -1i, 23100i, 1i, 2147483647i, 2147483647i, 26757i, 23056i, -15233i, 0i, 102811i, 0i, 26467i, i32(-2147483648));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: i32) -> f32 {
    return -2375f;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_3) -> vec4<u32> {
    global1 = arg_3.a.b.x;
    global2 = array<i32, 24>();
    let var_0 = Struct_4(arg_1.a.a, !(!select(!vec3<bool>(arg_1.a.d.a.b.x, arg_3.a.b.x, global0.a.b.x), vec3<bool>(true, true, false), !arg_0.a.b.x)), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1551f, arg_3.b, -1829f) + arg_1.a.d.a.a)), !arg_2.b, ~(~vec2<u32>(1u, arg_0.a.c.x))), _wgslsmith_div_f32(438f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.b - -1532f)))), reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(arg_2.c.c, vec4<u32>(arg_2.c.c.x, arg_0.a.c.x, 0u, 4294967295u)), _wgslsmith_mult_vec4_u32(arg_1.a.c.c, vec4<u32>(12967u, 11751u, arg_1.a.c.c.x, 36313u))))), arg_2.d, ~vec4<i32>(reverseBits(-1i), reverseBits(arg_2.e.x), arg_1.a.e.x, -3812i));
    var var_1 = ~vec2<u32>(~12426u, 93438u);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a.a, _wgslsmith_f_op_vec3_f32(arg_3.a.a * vec3<f32>(-1379f, arg_0.b, 496f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-922f, arg_3.b, -1000f)))))), select(vec3<bool>(all(vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, false)) && false, arg_1.a.b.x, arg_2.b.x), !select(vec3<bool>(false, true, true), vec3<bool>(true, arg_1.a.d.a.b.x, arg_1.a.c.a.b.x), true), vec3<bool>(true, !arg_0.a.b.x, select(arg_1.a.e.x, 23923i, false) > var_0.e.x)), vec2<u32>(~select(18998u, ~u_input.a.x, arg_1.b > 505f), countOneBits(0u)));
    return ~vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.d.a.c, arg_1.a.d.a.c, vec2<u32>(4294967295u, arg_3.c.x)), vec2<u32>(var_2.c.x, 1u)), arg_3.c.x, ~arg_1.a.c.a.c.x, arg_2.c.a.c.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = global0.a.a.x;
    global0 = Struct_3(Struct_1(global0.a.a, !global0.a.b, vec2<u32>(~0u << (u_input.b.x % 32u), arg_0.x)), global0.a.a.x, arg_0);
    var var_1 = Struct_2(global0.a);
    var var_2 = _wgslsmith_add_vec4_i32(abs(~(~vec4<i32>(-19040i, 0i, -2147483647i, -1i))) | abs(select(-vec4<i32>(0i, 38885i, -2147483647i, global2[_wgslsmith_index_u32(0u, 24u)]), vec4<i32>(29432i, -1461i, global2[_wgslsmith_index_u32(global0.a.c.x, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]) >> (vec4<u32>(4294967295u, global0.c.x, u_input.a.x, 80317u) % vec4<u32>(32u)), !vec4<bool>(var_1.a.b.x, true, var_1.a.b.x, false))), abs((vec4<i32>(-2962i, 8217i, global2[_wgslsmith_index_u32(642u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]) << (arg_0 % vec4<u32>(32u))) << (vec4<u32>(u_input.a.x, 0u, 1u, 4294967295u) % vec4<u32>(32u))) ^ countOneBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(22u, 24u)], 44731i, global2[_wgslsmith_index_u32(4294967295u, 24u)], 31617i), vec4<i32>(global2[_wgslsmith_index_u32(var_1.a.c.x, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(41467u, 24u)], global2[_wgslsmith_index_u32(var_1.a.c.x, 24u)]))));
    var var_3 = vec2<i32>(var_2.x, 16184i >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(select(arg_0.x, 8733u, global0.a.b.x), global0.c.x), global0.c.x) % 32u));
    return Struct_3(Struct_1(var_1.a.a, global0.a.b, global0.c.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1585f - global0.a.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)))), select(arg_0, func_4(Struct_3(global0.a, _wgslsmith_f_op_f32(floor(global0.a.a.x)), firstTrailingBit(vec4<u32>(1u, 0u, u_input.b.x, 52072u))), Struct_5(Struct_4(var_2.yzz, vec3<bool>(true, false, true), Struct_3(var_1.a, global0.b, vec4<u32>(arg_0.x, u_input.a.x, 1u, u_input.a.x)), Struct_2(global0.a), vec4<i32>(-1i, -2147483647i, -14519i, var_2.x)), -234f, _wgslsmith_f_op_f32(func_3(Struct_3(global0.a, -754f, vec4<u32>(u_input.a.x, 16987u, arg_0.x, 18317u)), var_1.a.c.x, var_1.a.a.x, global2[_wgslsmith_index_u32(var_1.a.c.x, 24u)]))), Struct_4(select(vec3<i32>(var_2.x, var_3.x, -1417i), var_2.xwx, vec3<bool>(global0.a.b.x, true, false)), vec3<bool>(true, var_1.a.b.x, var_1.a.b.x), Struct_3(Struct_1(global0.a.a, var_1.a.b, u_input.b), global0.a.a.x, global0.c), Struct_2(Struct_1(vec3<f32>(global0.b, var_1.a.a.x, -2041f), var_1.a.b, vec2<u32>(0u, 40953u))), -vec4<i32>(-2147483647i, var_2.x, -11220i, 1i)), Struct_3(Struct_1(vec3<f32>(var_1.a.a.x, -570f, -241f), vec3<bool>(true, var_1.a.b.x, true), vec2<u32>(13469u, 48223u)), var_1.a.a.x, arg_0)), global0.a.b.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_3 {
    global0 = func_2(global0.c);
    global1 = false;
    global0 = func_2(global0.c);
    global2 = array<i32, 24>();
    let var_0 = Struct_5(Struct_4(-_wgslsmith_div_vec3_i32(max(vec3<i32>(-57519i, 0i, global2[_wgslsmith_index_u32(0u, 24u)]), vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(14188u, 24u)], global2[_wgslsmith_index_u32(11153u, 24u)])), ~vec3<i32>(-1i, 2147483647i, 0i)), !vec3<bool>(true, 1344f >= global0.a.a.x, 28691u < u_input.b.x), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(global0.a.a + vec3<f32>(global0.b, global0.a.a.x, global0.a.a.x)), global0.a.b, vec2<u32>(u_input.b.x, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), abs(_wgslsmith_sub_vec4_u32(global0.c, global0.c))), Struct_2(global0.a), ~abs(vec4<i32>(global2[_wgslsmith_index_u32(arg_1, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(arg_0.x, 24u)], global2[_wgslsmith_index_u32(arg_0.x, 24u)])) ^ select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-9423i, 29995i, global2[_wgslsmith_index_u32(global0.a.c.x, 24u)], global2[_wgslsmith_index_u32(12871u, 24u)]), vec4<i32>(-1i, 2147483647i, 0i, global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec4<i32>(21546i, 11392i, -2147483647i, global2[_wgslsmith_index_u32(arg_0.x, 24u)])), vec4<i32>(1499i, global2[_wgslsmith_index_u32(arg_0.x, 24u)], 0i, global2[_wgslsmith_index_u32(global0.c.x, 24u)]) << (vec4<u32>(25877u, arg_0.x, 100393u, 1u) % vec4<u32>(32u)), true)), global0.a.a.x, _wgslsmith_f_op_f32(round(global0.a.a.x)));
    return var_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.c.wwx, global0.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, global0.a.c), (u_input.a.zx & global0.c.wy) << (firstTrailingBit(global0.a.c) % vec2<u32>(32u))), global0.c.x << ((_wgslsmith_clamp_u32(17303u, 66020u, 4294967295u) >> (_wgslsmith_div_u32(global0.c.x, 4294967295u) % 32u)) % 32u), 1u));
}

