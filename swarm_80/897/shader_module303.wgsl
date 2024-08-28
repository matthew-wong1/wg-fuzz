struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(-1i, 0i, i32(-2147483648), -40113i), vec4<i32>(i32(-2147483648), -1i, 17662i, -32996i), vec4<i32>(-1i, 0i, 16699i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 15269i), vec4<i32>(-43346i, -1i, 21053i, 2147483647i), vec4<i32>(-21994i, 4949i, -1i, 0i), vec4<i32>(-14412i, 25108i, 43220i, 1i), vec4<i32>(15303i, -88927i, -45067i, 2147483647i), vec4<i32>(2147483647i, 11863i, 1926i, 0i), vec4<i32>(-74767i, 35474i, -9532i, 2147483647i), vec4<i32>(36712i, -20868i, -22482i, 5842i), vec4<i32>(-1i, -2164i, 14602i, -1i), vec4<i32>(16354i, 2358i, 2147483647i, -33123i), vec4<i32>(-36062i, 35809i, i32(-2147483648), -9582i));

var<private> global1: array<Struct_3, 32>;

var<private> global2: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = vec2<u32>(~(~((u_input.e.x & u_input.e.x) & ~u_input.d.x)), 1u);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.d.x, reverseBits(~5479u)), 1u), 32u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)) * var_1.b))) - var_1.b);
    var_2 = var_1.b;
    var var_3 = vec4<bool>(false, select(any(select(vec4<bool>(false, false, var_1.c.b.x, false), !vec4<bool>(arg_0.b.x, false, arg_2, false), select(vec4<bool>(arg_0.b.x, arg_0.b.x, var_1.c.b.x, global2.x), vec4<bool>(global2.x, var_1.d.b.x, false, true), vec4<bool>(true, true, true, arg_2)))), false, false != (~32238u != (u_input.e.x ^ 0u))), false, all(vec3<bool>(!arg_1.b.x, !arg_0.b.x, true || select(false, true, true))));
    return all(select(select(!vec4<bool>(var_3.x, global2.x, arg_2, false), select(vec4<bool>(false, global2.x, var_3.x, var_1.c.b.x), vec4<bool>(true, true, true, true), true), vec4<bool>(var_3.x, select(false, arg_0.b.x, true), all(arg_0.b), arg_0.b.x)), !(!select(vec4<bool>(false, true, true, arg_1.b.x), vec4<bool>(arg_2, false, false, true), true)), arg_0.b.x));
}

fn func_2(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = Struct_1(abs(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, arg_0), firstTrailingBit(u_input.c))), all(select(vec3<bool>(!global2.x, global2.x, global2.x), vec3<bool>(global2.x, all(vec2<bool>(false, global2.x)), global2.x), global2.x)), global2.zx, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 706f)));
    var var_1 = !all(vec4<bool>(global2.x || (global2.x & var_0.b), true, !all(vec4<bool>(true, global2.x, false, global2.x)), global2.x));
    let var_2 = Struct_2(~(65576i ^ _wgslsmith_div_i32(~var_0.a.x, 1i)), vec2<bool>(false, any(vec4<bool>(var_0.c.x, false, true, func_3(Struct_2(var_0.a.x, vec2<bool>(false, true), vec2<i32>(arg_0, arg_0)), Struct_2(var_0.a.x, var_0.c, u_input.c), global2.x)))), -(~abs(vec2<i32>(var_0.a.x, 1i))));
    var var_3 = Struct_4(all(var_0.c), -29718i, global1[_wgslsmith_index_u32(115101u, 32u)], var_0, func_3(Struct_2(~reverseBits(0i), vec2<bool>(true, !global2.x), abs(var_0.a >> (u_input.d % vec2<u32>(32u)))), var_2, true & (var_0.d <= ~u_input.d.x)));
    let var_4 = var_0;
    return var_0.a.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> f32 {
    global1 = array<Struct_3, 32>();
    global0 = array<vec4<i32>, 14>();
    var var_0 = 42013u;
    var var_1 = Struct_4(arg_1.b.x, -34531i, Struct_3(func_2(1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, 1719f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-824f, -589f, -863f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(310f, -1008f, -223f), vec3<f32>(1255f, 1068f, 702f), vec3<bool>(true, arg_1.b.x, arg_1.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(step(293f, 1000f)), -824f)), Struct_2(u_input.c.x, global2.zx, vec2<i32>(-6642i, -2147483647i) & min(u_input.c, vec2<i32>(arg_0.x, -13636i))), Struct_2(func_2(-34794i, _wgslsmith_f_op_f32(ceil(1542f))), arg_1.b, firstLeadingBit(arg_1.c) ^ u_input.c), _wgslsmith_f_op_f32(step(-622f, 1780f))), Struct_1(arg_1.c, !arg_1.b.x, !select(arg_1.b, vec2<bool>(arg_1.b.x, false), true), countOneBits(_wgslsmith_div_u32(50551u, u_input.b.x)), 1015f), arg_1.b.x);
    var_0 = 13979u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.d.e, 1020f)))), _wgslsmith_f_op_f32(floor(-343f)))), _wgslsmith_div_f32(var_1.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2235f, -182f))), true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_3 {
    var var_0 = Struct_4(arg_2, countOneBits(u_input.c.x), Struct_3(2147483647i, arg_0.yzz, Struct_2(~(-26831i), global2.zz, select(vec2<i32>(arg_1, u_input.c.x), select(vec2<i32>(-54004i, 48671i), u_input.c, global2.yz), arg_2)), Struct_2(abs(abs(arg_1)), global2.xx, -(~vec2<i32>(2147483647i, 29727i))), arg_0.x), Struct_1(vec2<i32>(14901i, 2147483647i << (select(4333u, u_input.b.x, global2.x) % 32u)), !(-440f > arg_0.x) & all(vec3<bool>(global2.x, global2.x, true)), global2.yy, ~(~(~u_input.d.x)), _wgslsmith_div_f32(-787f, -257f)), true);
    var var_1 = Struct_3(~(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -32271i), vec2<i32>(-1i, 0i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-188f, _wgslsmith_f_op_f32(-var_0.d.e), 1159f))) * _wgslsmith_f_op_vec3_f32(-var_0.c.b)), var_0.c.d, Struct_2(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.c.x, -1i), vec3<i32>(49161i, var_0.c.c.a, -18102i) << (u_input.b % vec3<u32>(32u)))), vec2<bool>(~var_0.d.d >= ~0u, !all(vec2<bool>(false, false))), vec2<i32>(-2147483647i, -8178i) >> ((_wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(17761u, 103369u), u_input.e.wz) << (select(vec2<u32>(39719u, u_input.b.x), u_input.d, var_0.e) % vec2<u32>(32u))) % vec2<u32>(32u))), 1153f);
    global0 = array<vec4<i32>, 14>();
    let var_2 = true;
    var_0 = Struct_4(true, 1i, var_0.c, Struct_1(vec2<i32>(var_1.a, -1i), true, vec2<bool>(arg_2, any(select(vec3<bool>(var_1.d.b.x, arg_3, false), vec3<bool>(var_2, true, var_0.e), vec3<bool>(true, arg_2, true)))), 54676u, -181f), true);
    return global1[_wgslsmith_index_u32(~25967u, 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 297f;
    let var_1 = u_input.c.x;
    var var_2 = Struct_4(global2.x, -(-(u_input.c.x | var_1) ^ -u_input.c.x), func_4(vec4<f32>(440f, _wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_f_op_f32(-512f + _wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.c.x, -95176i, -69111i, u_input.c.x), Struct_2(u_input.c.x, vec2<bool>(global2.x, true), vec2<i32>(var_1, 1i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-695f + -561f))), -(func_2(2147483647i, -287f) << (u_input.d.x % 32u)), ~(u_input.c.x >> (0u % 32u)) >= countOneBits(~2147483647i), global2.x), Struct_1(abs(u_input.c) | ~(-vec2<i32>(u_input.c.x, u_input.c.x)), false, global2.xy, 1u, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-448f, 401f, -1210f, 1348f))), -_wgslsmith_div_i32(u_input.c.x, 56292i), false, global2.x).e), false);
    let var_3 = _wgslsmith_add_vec2_i32(~vec2<i32>(var_1, countOneBits(-9283i)), vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, abs(u_input.c.x)), u_input.c.x)) >> (min(u_input.e.zy, firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.b.yx, u_input.d)) | vec2<u32>(~var_2.d.d, ~4294967295u)) % vec2<u32>(32u));
    global0 = array<vec4<i32>, 14>();
    var var_4 = var_2.d.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b.x, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(~4294967295u, 43496u), 4430u)), 14u)], -26447i, _wgslsmith_mod_u32(reverseBits(u_input.e.x), ~(~var_2.d.d)));
}

