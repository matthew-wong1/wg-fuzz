struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 28711u, 0u, 0u);

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: array<bool, 25> = array<bool, 25>(false, true, true, false, true, false, false, false, true, true, false, true, true, false, false, false, false, false, false, false, true, false, false, false, true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    global0 = ~(-abs(vec3<i32>(arg_0.d ^ 51028i, _wgslsmith_sub_i32(arg_0.d, global0.x), global0.x)));
    global1 = firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, 1u, abs(4294967295u)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 7539u, arg_1), vec4<u32>(arg_0.b.a.x, arg_1, 4294967295u, 0u)), global1.x), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, u_input.c.x), arg_0.b.a.yy)), u_input.b.x & ~(global1.x ^ 4294967295u)));
    let var_0 = arg_0;
    var var_1 = ~_wgslsmith_clamp_u32(firstTrailingBit(arg_0.a), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(global1.xy), vec2<u32>(0u, u_input.c.x)), vec2<u32>(_wgslsmith_add_u32(4294967295u, arg_1), ~arg_0.a)), ~global1.x);
    var var_2 = (any(vec3<bool>(arg_0.c, true, all(vec3<bool>(true, false, true)))) || false) || !(!(!(!arg_0.c)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1655f, _wgslsmith_f_op_f32(max(-378f, _wgslsmith_f_op_f32(step(-2485f, 496f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-668f - 1f))))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(u_input.c.x, 25u)], arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(1u, Struct_1(vec4<u32>(11282u, global1.x, 1u, 90073u)), false, global0.x), 4294967295u)) * -482f), _wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(abs(-1176f)))));
    var var_1 = var_0.c.x;
    let var_2 = arg_0;
    var var_3 = vec2<bool>(true, !(!(!any(vec2<bool>(true, false)))));
    return 4294967295u;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> vec2<i32> {
    global1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(firstTrailingBit(global1.x), global1.x, ~(~1u), 85107u), _wgslsmith_div_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.x, 0u, 16328u, 59052u), vec4<u32>(_wgslsmith_sub_u32(arg_0.x, 4294967295u), _wgslsmith_mult_u32(arg_0.x, global1.x), 6813u, global1.x >> (u_input.c.x % 32u)))));
    global1 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_2(false, select(true, false, global2.x) | all(vec3<bool>(global3[_wgslsmith_index_u32(0u, 25u)], true, global3[_wgslsmith_index_u32(arg_0.x, 25u)])), vec2<u32>(~u_input.a.x, reverseBits(4294967295u)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global0.x, 2147483647i, global0.x, global0.x), vec4<i32>(66405i, global0.x, 21852i, 36586i), vec4<i32>(global0.x, -34849i, -2821i, 2147483647i))), max(countOneBits(arg_0.x), ~arg_0.x), 0u, _wgslsmith_mod_u32(arg_0.x, global1.x)), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(45289u, 2451u, 4294967295u, global1.x))), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(global1.xw, global1.zz)), u_input.b.x, 59613u)));
    global3 = array<bool, 25>();
    global0 = -reverseBits(min(vec3<i32>(global0.x, 17439i, 29135i), vec3<i32>(-66347i, global0.x, 0i)) >> (select(vec3<u32>(4294967295u, 51819u, global1.x), vec3<u32>(global1.x, 16721u, 4294967295u), true) % vec3<u32>(32u))) << (~(~(arg_0 | vec3<u32>(23094u, 75389u, 4294967295u))) % vec3<u32>(32u));
    let var_0 = global0.x;
    return -_wgslsmith_mult_vec2_i32(countOneBits(global0.yx), _wgslsmith_add_vec2_i32(global0.xz, vec2<i32>(global0.x, 1i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -1434f;
    global1 = countOneBits(~firstTrailingBit(u_input.c));
    global2 = select(select(!vec3<bool>(!global3[_wgslsmith_index_u32(u_input.c.x, 25u)], any(vec3<bool>(global2.x, false, true)), global3[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec3<bool>(false, !(global2.x && true), false), select(select(vec3<bool>(true, global2.x, true), select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, true, true), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 25u)], global2.x)), !vec3<bool>(global2.x, global2.x, global2.x)), vec3<bool>(true, true, true), (55130u <= u_input.b.x) || all(vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 25u)], true)))), vec3<bool>(any(vec2<bool>(any(vec3<bool>(global2.x, true, global2.x)), true)), false, true), false);
    global2 = select(select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], true, global3[_wgslsmith_index_u32(44233u, 25u)]), vec3<bool>(global3[_wgslsmith_index_u32(13526u, 25u)], false, global2.x), global3[_wgslsmith_index_u32(abs(0u), 25u)]), select(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(23615u, 25u)]), vec3<bool>(global3[_wgslsmith_index_u32(arg_2.a.x, 25u)], global3[_wgslsmith_index_u32(u_input.b.x, 25u)], false), false), vec3<bool>(global2.x, false, global2.x), !vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 25u)], global2.x)), _wgslsmith_div_i32(arg_0.x, arg_0.x) > global0.x), select(vec3<bool>(true | global3[_wgslsmith_index_u32(4294967295u, 25u)], true | global2.x, global2.x), !select(vec3<bool>(true, global3[_wgslsmith_index_u32(global1.x, 25u)], global2.x), vec3<bool>(false, global3[_wgslsmith_index_u32(76845u, 25u)], global2.x), false), any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 25u)], global2.x)) != !global2.x), vec3<bool>(false, false, !any(vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 25u)], global2.x)))), vec3<bool>(true, !all(vec3<bool>(true, global2.x, true)), !(false | global3[_wgslsmith_index_u32(~global1.x, 25u)])), select(vec3<bool>((var_0 == 1000f) | (global2.x != false), all(vec3<bool>(global3[_wgslsmith_index_u32(3392u, 25u)], global2.x, true)) || !global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec3<bool>(true, global2.x, select(global3[_wgslsmith_index_u32(4294967295u, 25u)], all(vec3<bool>(global2.x, global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(arg_2.a.x, 25u)])), !global2.x)), vec3<bool>(true, true, true)));
    let var_1 = vec3<i32>(-1i) * -abs(min(~vec3<i32>(global0.x, global0.x, arg_0.x), ~vec3<i32>(global0.x, arg_0.x, -1i)));
    return Struct_1(arg_2.a << (u_input.c % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec3<bool>(any(!vec4<bool>(false, global3[_wgslsmith_index_u32(118879u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)], global2.x)) & true, all(global2.yx), (global2.x & global3[_wgslsmith_index_u32(u_input.b.x, 25u)]) || true);
    var var_0 = func_4(func_1(firstTrailingBit(vec3<u32>(countOneBits(4294967295u), 1u, 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(506f - 128f)), _wgslsmith_f_op_f32(f32(-1f) * -961f)))), global0.xy, Struct_1(vec4<u32>(26299u, abs(0u), u_input.c.x, global1.x)));
    var var_1 = Struct_1(select(max(~vec4<u32>(0u, var_0.a.x, u_input.b.x, 0u), u_input.b), u_input.b, global2.x));
    global0 = reverseBits(firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(global0.x, global0.x, global0.x)), vec3<i32>(global0.x, -65317i, global0.x)) & _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, 2147483647i, 30715i), select(vec3<i32>(-8349i, -2147483647i, global0.x), vec3<i32>(global0.x, 16797i, 18481i), global3[_wgslsmith_index_u32(var_1.a.x, 25u)]))));
    let var_2 = select(min(~(-vec4<i32>(global0.x, 2147483647i, global0.x, global0.x)), -(~vec4<i32>(75931i, global0.x, -1i, -1i))), ~vec4<i32>(~2147483647i, abs(global0.x), 1i, -27002i), all(select(!global2.xz, global2.yy, !global2.yy))) ^ vec4<i32>(_wgslsmith_mod_i32(global0.x, -(~global0.x)), _wgslsmith_mult_i32(_wgslsmith_div_i32(1i >> (var_0.a.x % 32u), i32(-1i) * -31813i), global0.x), i32(-1i) * -(6855i << (global1.x % 32u)), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(52734i, global0.x, -1i))));
    let var_3 = Struct_1(u_input.c);
    let var_4 = abs(global1.wzy) << (_wgslsmith_mod_vec3_u32(max(_wgslsmith_sub_vec3_u32(abs(global1.wwy), global1.yxw), _wgslsmith_mod_vec3_u32(u_input.b.yzw, _wgslsmith_mult_vec3_u32(var_3.a.wyx, u_input.c.yzz))), max(abs(var_1.a.zzw), var_1.a.zzx << (global1.yxy % vec3<u32>(32u))) & var_3.a.wxy) % vec3<u32>(32u));
    global3 = array<bool, 25>();
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.x), _wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(2147483647i, 2147483647i)), global0.x, -((countOneBits(vec3<i32>(-9011i, var_2.x, -1i)) ^ _wgslsmith_mod_vec3_i32(var_2.wxx, var_2.xwx)) >> (var_3.a.xyx % vec3<u32>(32u))));
}

