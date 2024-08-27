struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 3>;

var<private> global3: array<u32, 28>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> i32 {
    global0 = array<vec2<f32>, 28>();
    global1 = Struct_3(global1.b.d, Struct_2(~(~vec4<u32>(u_input.a, 3309u, 38379u, 0u) >> (abs(global1.b.a) % vec4<u32>(32u))), -(_wgslsmith_add_i32(-30816i, arg_0) & (i32(-1i) * -1i)), _wgslsmith_div_f32(global1.b.c, 576f), Struct_1(global1.a.b, _wgslsmith_f_op_f32(exp2(global1.b.d.a)), global1.b.a.x >= global1.b.a.x)), (vec4<i32>(countOneBits(arg_0), ~u_input.d, i32(-1i) * -42019i, 2147483647i) & min(~global1.c, -vec4<i32>(global1.b.b, 2147483647i, 2147483647i, global1.d.x))) << (~global1.b.a % vec4<u32>(32u)), global1.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-1285f, arg_2), vec2<f32>(arg_2, -370f)), _wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(51074u, 28u)]))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(525f, global1.b.c), vec2<f32>(1545f, -1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.e.x, 950f), vec2<f32>(arg_2, global1.b.d.b)))))), all(arg_1.zz))));
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2)), -478f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(795f, arg_2)))), arg_2));
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1072f))))));
    var var_2 = all(vec4<bool>(any(vec4<bool>(true, select(global1.a.c, global1.b.d.c, false), global1.a.c, any(vec4<bool>(arg_1.x, true, global1.a.c, global1.b.d.c)))), -u_input.d > countOneBits(arg_0), true, true));
    return firstLeadingBit(25643i);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_0.e.x))) + -1000f));
    global3 = array<u32, 28>();
    var var_1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(arg_0.c, abs(global1.c)), 0i, firstTrailingBit(func_3(u_input.b.x, vec3<bool>(global1.b.d.c, true, arg_0.b.d.c), arg_0.e.x))), _wgslsmith_add_vec3_i32(firstTrailingBit(firstTrailingBit(vec3<i32>(460i, -48385i, global1.b.b))), _wgslsmith_sub_vec3_i32(u_input.b << (arg_0.b.a.yyz % vec3<u32>(32u)), arg_0.c.yyx)));
    var var_2 = global1.b.a.yw;
    let var_3 = var_0;
    return var_0;
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: f32) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(max(573f, global1.a.b)));
    let var_1 = vec4<bool>(true, true, false, true);
    var var_2 = global1.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-104f)), _wgslsmith_f_op_f32(419f + _wgslsmith_f_op_f32(f32(-1f) * -101f))) * _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~global1.b.a.x), firstTrailingBit(1u)), 28u)]));
    global2 = array<Struct_3, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) * var_2.d.b);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(10093u, arg_2.x), _wgslsmith_mod_u32(4294967295u, global3[_wgslsmith_index_u32(global1.b.a.x, 28u)] | 4294967295u), 1u, u_input.c), firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(global1.b.a, vec4<u32>(arg_2.x, 4294967295u, u_input.c, 77688u)), global1.b.a | vec4<u32>(1u, global3[_wgslsmith_index_u32(global1.b.a.x, 28u)], global1.b.a.x, global1.b.a.x)))), -81841i, _wgslsmith_f_op_f32(func_4(func_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, 1674u | global3[_wgslsmith_index_u32(arg_2.x, 28u)]), 3u)], 681f, _wgslsmith_mult_i32(-global1.b.b, -7662i | arg_0.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-4574i, arg_0.x), u_input.b.xz, global1.a.c), u_input.b.zz, select(vec2<i32>(2147483647i, 47954i), vec2<i32>(arg_3, 1i), global1.b.d.c)), arg_0.zw), global1.b.c)), global1.b.d);
    let var_1 = abs(vec4<u32>(_wgslsmith_div_u32(select(22205u, 1u, arg_1 >= arg_1), arg_2.x), _wgslsmith_clamp_u32(~var_0.a.x, ~global1.b.a.x, ~0u) & 13092u, global3[_wgslsmith_index_u32(4294967295u, 28u)], reverseBits(4294967295u)));
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_f32(global1.a.a, _wgslsmith_f_op_f32(-global1.a.b)), _wgslsmith_f_op_f32(735f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1357f) + -2038f)), any(select(!vec4<bool>(false, global1.b.d.c, false, true), !vec4<bool>(global1.a.c, var_0.d.c, true, global1.b.d.c), false))), Struct_2(_wgslsmith_div_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(63981u, 28u)], 19827u, 13333u, var_1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.x, 25960u, var_1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, global1.b.a.x, var_0.a.x), vec4<u32>(38124u, 78571u, u_input.c, 0u)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(arg_0, arg_0), arg_0), ~arg_0), global1.b.c, var_0.d), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(func_3(2147483647i, vec3<bool>(false, global1.b.d.c, true), var_0.c), -1i, select(-2147483647i, arg_3, false), -3903i)), (vec4<i32>(-3486i, 26248i, 39294i, arg_0.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 35282u, var_0.a.x, 1u), arg_2) % vec4<u32>(32u))) >> (~max(vec4<u32>(1u, u_input.c, 1u, u_input.c), global1.b.a) % vec4<u32>(32u))), vec2<i32>(69556i << ((1u << (_wgslsmith_clamp_u32(2230u, global1.b.a.x, global1.b.a.x) % 32u)) % 32u), var_0.b), global0[_wgslsmith_index_u32(72177u, 28u)]);
    return StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, _wgslsmith_f_op_f32(min(var_2.a.b, var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(995f * var_2.a.b) * -877f), global1.a.b) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2048f, global1.a.b, 2316f, 1182f), vec4<f32>(294f, 986f, var_2.e.x, -1000f), vec4<bool>(true, var_2.b.d.c, global1.b.d.c, false)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_f_op_f32(-var_0.d.b), _wgslsmith_f_op_f32(1158f * -1000f), var_2.b.c))), u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(2166f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f * 380f)), _wgslsmith_f_op_f32(f32(-1f) * -280f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 28>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-global1.b.d.a));
    var var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~global1.b.a.x, 916u), vec2<u32>(258u, max(44129u, _wgslsmith_add_u32(2215u, global3[_wgslsmith_index_u32(1u, 28u)]))));
    global3 = array<u32, 28>();
    var var_2 = _wgslsmith_dot_vec3_u32(abs(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 16355u, 0u), global1.b.a.xzy, global1.b.a.zzy))), select(_wgslsmith_add_vec3_u32(global1.b.a.zzz, select(_wgslsmith_sub_vec3_u32(global1.b.a.wzy, global1.b.a.xyw), vec3<u32>(1u, global3[_wgslsmith_index_u32(global1.b.a.x, 28u)], 28400u), select(vec3<bool>(true, false, false), vec3<bool>(global1.b.d.c, global1.a.c, false), true))), ~select(vec3<u32>(0u, 1u, 4294967295u), select(vec3<u32>(global3[_wgslsmith_index_u32(25014u, 28u)], 1u, u_input.a), global1.b.a.zzy, vec3<bool>(true, global1.b.d.c, true)), all(vec3<bool>(true, false, true))), vec3<bool>(!all(vec4<bool>(global1.a.c, global1.b.d.c, false, global1.b.d.c)), any(vec2<bool>(global1.b.d.c, global1.a.c)), all(vec2<bool>(true, true)))));
    global3 = array<u32, 28>();
    let x = u_input.a;
    s_output = func_1(~global1.c, select(global1.b.b, u_input.b.x, global1.a.c), ~(~global1.b.a >> (_wgslsmith_add_vec4_u32(global1.b.a, vec4<u32>(global3[_wgslsmith_index_u32(1u, 28u)], 4294967295u, 19002u, u_input.c)) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25205u, 28u)], 28u)], global1.b.a.x, u_input.a, u_input.c), firstTrailingBit(~vec4<u32>(0u, 12231u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)]))), 17341i);
}

