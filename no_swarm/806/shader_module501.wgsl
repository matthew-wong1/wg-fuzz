struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-1320f, -624f, -1000f), Struct_1(12216u, 1i, vec4<bool>(true, false, true, true), vec3<f32>(148f, -471f, 619f)));

var<private> global1: array<vec4<bool>, 19>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = global0.b.d;
    let var_1 = u_input.a;
    let var_2 = ~vec4<i32>(global0.b.b, ~global0.b.b, arg_0.b, ~(global0.b.b << (var_1.x % 32u))) | _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(4394i, arg_0.b, global0.b.b, 4529i), -vec4<i32>(-40574i, 18803i, global0.b.b, 0i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<i32>(arg_0.b, global0.b.b, arg_0.b, 6034i)), ~vec4<i32>(arg_0.b, arg_0.b, global0.b.b, -11289i), select(vec4<i32>(-43466i, 0i, arg_0.b, -1i), vec4<i32>(-21629i, 12790i, arg_0.b, arg_0.b), vec4<bool>(arg_0.c.x, true, global0.b.c.x, true)))), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, arg_0.b, arg_0.b));
    return abs(vec4<i32>(_wgslsmith_mod_i32(select(_wgslsmith_sub_i32(49885i, var_2.x), 1i, true), firstLeadingBit(_wgslsmith_dot_vec4_i32(var_2, var_2))), 15688i, ~_wgslsmith_div_i32(1i, 2147483647i), 14346i));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global1 = array<vec4<bool>, 19>();
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(global0.b.d)), global0.b);
    let var_0 = Struct_1(19172u, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, arg_0.b.x, 1i) >> (vec3<u32>(u_input.a.x, arg_0.c, arg_0.c) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-1i, -2147483647i, 1i)), max(vec3<i32>(arg_0.b.x, global0.b.b, 22882i), vec3<i32>(36082i, -58882i, 1i)))), ~global0.b.b), !global1[_wgslsmith_index_u32(u_input.a.x, 19u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.d.x + global0.b.d.x) * global0.a.x), -428f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1202f, -487f)))))));
    let var_1 = var_0;
    let var_2 = vec4<bool>(-firstTrailingBit(abs(-33397i)) > _wgslsmith_dot_vec4_i32(~(vec4<i32>(1i, -1i, -7492i, 0i) << (vec4<u32>(arg_0.c, 52767u, global0.b.a, 70391u) % vec4<u32>(32u))), func_3(Struct_1(var_1.a, var_1.b, vec4<bool>(arg_0.a, false, var_0.c.x, true), vec3<f32>(global0.b.d.x, var_0.d.x, var_1.d.x)))), _wgslsmith_f_op_f32(select(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x), any(vec3<bool>(false, false, false)))) < -1269f, true, global0.b.c.x);
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    global1 = array<vec4<bool>, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-730f - 125f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -936f)))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.d.x, _wgslsmith_f_op_f32(sign(global0.b.d.x)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-global0.b.d.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a.x - -1880f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(-2393f))) - vec3<f32>(_wgslsmith_f_op_f32(max(301f, -1133f)), _wgslsmith_f_op_f32(-855f * -1295f), var_0.x))), Struct_1(~func_2(Struct_3(arg_0.a, vec2<i32>(1i, 1i), global0.b.a)).c, global0.b.b << (38020u % 32u), select(!vec4<bool>(true, false, arg_0.a, global0.b.c.x), !select(vec4<bool>(arg_0.a, arg_0.a, global0.b.c.x, false), global1[_wgslsmith_index_u32(arg_2.x, 19u)], global0.b.c), global0.b.c.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(615f, var_0.x, -1527f), vec3<f32>(646f, -1256f, arg_1))), var_0))));
    var var_1 = global0.a;
    global1 = array<vec4<bool>, 19>();
    return Struct_1(abs(u_input.a.x), 2147483647i, select(!global1[_wgslsmith_index_u32(global0.b.a, 19u)], !(!global1[_wgslsmith_index_u32(~arg_0.c, 19u)]), vec4<bool>(any(select(vec4<bool>(arg_0.a, arg_0.a, global0.b.c.x, true), vec4<bool>(arg_0.a, false, false, global0.b.c.x), vec4<bool>(global0.b.c.x, global0.b.c.x, arg_0.a, arg_0.a))), global0.b.c.x, global0.b.c.x, false && global0.b.c.x)), global0.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = arg_3;
    let var_1 = arg_1.x;
    return global0.a;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(i32(-1i) * -2147483647i, reverseBits(_wgslsmith_div_i32(global0.b.b, global0.b.b)), all(select(select(global1[_wgslsmith_index_u32(global0.b.a, 19u)], vec4<bool>(global0.b.c.x, true, arg_2.c.x, true), !global1[_wgslsmith_index_u32(global0.b.a, 19u)]), !(!global0.b.c), global1[_wgslsmith_index_u32(0u, 19u)])));
    let var_1 = vec4<i32>(~(~_wgslsmith_mod_i32(2147483647i, global0.b.b << (u_input.a.x % 32u))), 1i, _wgslsmith_div_i32(func_3(Struct_1(~29253u, _wgslsmith_mod_i32(global0.b.b, 1i), vec4<bool>(arg_2.c.x, false, true, arg_2.c.x), global0.b.d)).x, ~global0.b.b), global0.b.b);
    var var_2 = ~select(_wgslsmith_sub_vec3_u32(~u_input.a >> (vec3<u32>(arg_0.c, u_input.a.x, 0u) % vec3<u32>(32u)), u_input.a), u_input.a, all(global0.b.c.yz));
    global1 = array<vec4<bool>, 19>();
    var_0 = 51214i;
    return Struct_1(1u, countOneBits(arg_2.b & abs(_wgslsmith_sub_i32(var_1.x, global0.b.b))), vec4<bool>(true, false, global0.b.c.x != !(arg_2.d.x >= -1095f), true), global0.b.d);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    global1 = array<vec4<bool>, 19>();
    return func_6(Struct_3(true, -(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, arg_0.b), vec2<i32>(0i, -8161i)) >> (~u_input.a.zz % vec2<u32>(32u))), arg_2.b.a | abs(reverseBits(u_input.a.x))), (_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, global0.b.a), vec2<u32>(1u, arg_2.b.a)), vec2<u32>(arg_0.a, 1u)) ^ vec2<u32>(global0.b.a, ~1u)) | vec2<u32>(global0.b.a, reverseBits(firstLeadingBit(u_input.a.x))), Struct_1(~(~u_input.a.x), -1i, global1[_wgslsmith_index_u32(max(~47888u, global0.b.a), 19u)], _wgslsmith_f_op_vec3_f32(func_5(func_4(func_2(Struct_3(arg_0.c.x, vec2<i32>(global0.b.b, arg_2.b.b), arg_0.a)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(global0.b.a, 1594u, 0u, global0.b.a), vec4<u32>(arg_0.a, global0.b.a, 58953u, 0u))), global0.a, global0.b.c.yzz, func_2(Struct_3(global0.b.c.x, vec2<i32>(arg_2.b.b, -1i), u_input.a.x))))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    global1 = array<vec4<bool>, 19>();
    var var_0 = ~(~max(u_input.a, ~u_input.a >> (reverseBits(u_input.a) % vec3<u32>(32u))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.b.d), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.d.x, 1411f, arg_0.d.x)))))) - arg_0.d), global0.b);
    global1 = array<vec4<bool>, 19>();
    global1 = array<vec4<bool>, 19>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.b.d.x, 329f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 788f, global0.a.x) * vec3<f32>(global0.b.d.x, _wgslsmith_f_op_f32(select(1099f, global0.a.x, true)), 438f))), func_7(func_1(global0.b, min(global0.b.b, -global0.b.b), Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-921f, -1563f, -1068f), global0.b.d)), global0.b)), func_2(func_2(Struct_3(true, vec2<i32>(0i, global0.b.b), 0u)))));
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(994f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.d.x)), _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.x))))), global0.b);
    var var_0 = Struct_3(false, vec2<i32>(~global0.b.b, ~func_1(Struct_1(u_input.a.x, global0.b.b, global0.b.c, global0.a), 3136i, Struct_2(vec3<f32>(1988f, global0.b.d.x, -965f), global0.b)).b) | -func_3(global0.b).yz, 6866u);
    var var_1 = func_2(func_2(Struct_3(-global0.b.b == var_0.b.x, (vec2<i32>(var_0.b.x, -10743i) >> (vec2<u32>(var_0.c, var_0.c) % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(var_0.b, vec2<i32>(var_0.b.x, 20796i)), reverseBits(~u_input.a.x))));
    let var_2 = -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(global0.b.b), _wgslsmith_clamp_i32(-1i, var_0.b.x, -21919i)), var_1.b), _wgslsmith_sub_i32(_wgslsmith_sub_i32(~1i, i32(-1i) * -2563i), func_4(Struct_3(false, var_1.b, 4294967295u), _wgslsmith_f_op_f32(round(global0.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, var_1.c)).b), var_1.b.x);
    let var_3 = u_input.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_mult_i32(1i, 54198i) & -var_1.b.x, var_0.b.x, func_2(func_2(func_2(Struct_3(var_0.a, vec2<i32>(23111i, -1i), global0.b.a)))).b.x, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -293f), _wgslsmith_f_op_f32(-global0.a.x), var_0.c >= _wgslsmith_div_u32(var_3.x, 42228u)))), vec2<u32>(1u, ~(4294967295u & u_input.a.x)) & firstTrailingBit(~vec2<u32>(var_1.c, var_0.c)), global0.a.xz, _wgslsmith_f_op_f32(-func_7(Struct_1(4294967295u, _wgslsmith_clamp_i32(22198i, var_0.b.x, 31531i), !vec4<bool>(var_0.a, false, var_1.a, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-157f, -963f, 1000f) * global0.a)), func_2(Struct_3(false, vec2<i32>(0i, var_2.x), u_input.a.x))).d.x));
}

