struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 19875u, 48195u, 85348u), vec3<i32>(4256i, 13802i, i32(-2147483648)), vec4<f32>(2635f, -590f, 1006f, 571f), -130f);

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: array<f32, 22>;

var<private> global4: array<Struct_2, 7>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1328f, global0.d)), _wgslsmith_f_op_f32(-arg_1.b.c.x))), 1000f), _wgslsmith_f_op_f32(floor(630f)))));
    var var_1 = 423f;
    var var_2 = global4[_wgslsmith_index_u32(14551u, 7u)];
    let var_3 = vec3<bool>(true, true, true);
    var_1 = arg_1.b.d;
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(-_wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(-2147483647i, -2147483647i, -30025i, arg_3.b.x))), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2330i, 2147483647i, arg_3.b.x, var_2.b.b.x), vec4<i32>(arg_1.b.b.x, -10415i, 0i, var_2.b.b.x)), u_input.d, vec4<i32>(31839i, global0.b.x, 470i, -47439i) << (vec4<u32>(global0.a.x, 29187u, 4136u, 0u) % vec4<u32>(32u)))), -21709i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = vec3<i32>(global0.b.x, -1i & arg_1.b.b.x, _wgslsmith_clamp_i32(0i, min(select(9053i, -2147483647i, false), arg_1.b.b.x), ~u_input.d.x));
    global1 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 22u)] * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(901f, 141f)))));
    let var_1 = 32014i;
    var var_2 = reverseBits(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(abs(arg_1.b.a.x), u_input.a.x), vec2<u32>(1u, arg_2))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.c.yyy)));
    return arg_1.c.x;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global3 = array<f32, 22>();
    var var_0 = vec2<bool>(select(true, true, func_4(vec4<i32>(i32(-1i) * -1i, func_3(arg_0.x, global4[_wgslsmith_index_u32(global0.a.x, 7u)], vec2<bool>(false, true), Struct_1(global0.a, u_input.d.zzx, global0.c, arg_0.x)), reverseBits(-2147483647i), u_input.d.x), global4[_wgslsmith_index_u32(firstLeadingBit(~97528u), 7u)], ~66602u, ~select(u_input.b.x, u_input.e, false))), true);
    var_0 = select(vec2<bool>(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.x)), global3[_wgslsmith_index_u32(global0.a.x, 22u)])) <= 105f), vec2<bool>(false, true), any(vec4<bool>(var_0.x, var_0.x, false, !(!var_0.x))));
    global2 = ~0u;
    let var_1 = any(vec4<bool>(false, var_0.x, var_0.x, select(66836u, ~0u, true) != firstTrailingBit(global0.a.x)));
    return global4[_wgslsmith_index_u32(129094u << (1u % 32u), 7u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = !select(select(vec3<bool>(arg_1.c.x, true, arg_1.c.x), vec3<bool>(true, arg_2.c.x, false), any(select(vec3<bool>(true, arg_1.c.x, arg_2.c.x), vec3<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x), vec3<bool>(arg_1.c.x, arg_2.c.x, arg_1.c.x)))), vec3<bool>(!func_2(vec3<f32>(arg_2.b.c.x, 211f, 218f)).c.x, arg_2.c.x, any(vec4<bool>(false, arg_2.c.x, arg_1.c.x, arg_1.c.x)) || all(arg_1.c)), vec3<bool>(arg_2.c.x, true, true));
    global0 = func_2(global0.c.xxy).b;
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(global0.a.ywz), vec3<u32>(arg_1.a.x >> (23447u % 32u), 1u, _wgslsmith_add_u32(arg_1.d.x, 13568u)), u_input.a), vec3<u32>((arg_0.x >> (1u % 32u)) & _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(u_input.e, arg_0.x)), ~max(arg_2.d.x, arg_3.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 9968u, 4294967295u), vec4<u32>(arg_2.d.x, u_input.a.x, 4294967295u, arg_2.d.x)))), _wgslsmith_add_u32(abs(1u), 1u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-global0.c);
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b.c.x), -1230f, 701f)), var_2.xwz)));
    return _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 4294967295u, 25207u), var_3.d.ywy), vec3<u32>(~1u, 4294967295u, 21285u));
}

fn func_1() -> bool {
    var var_0 = ~(~func_5(global0.a.xy, Struct_2(u_input.a, Struct_1(vec4<u32>(1u, global0.a.x, global0.a.x, 4294967295u), vec3<i32>(global0.b.x, -13382i, global0.b.x), global0.c, 307f), vec2<bool>(false, true), vec4<u32>(18806u, 33406u, 1u, global0.a.x)), func_2(_wgslsmith_f_op_vec3_f32(-global0.c.ywz)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, global0.c.x, -309f) + global0.c.www)).b));
    global2 = var_0.x;
    var var_1 = _wgslsmith_mod_i32(-countOneBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(66467i, global0.b.x), u_input.d.x)), 21338i);
    var var_2 = -func_2(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 280f, global0.c.x) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 22u)], 1732f, global0.c.x))).b.c.yzz + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_0.x, 22u)], global0.d, 2216f)))).b.b.x;
    global0 = func_2(_wgslsmith_f_op_vec3_f32(ceil(global0.c.zyw))).b;
    return all(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(func_2(global0.c.zyy).c.x, true), vec2<bool>(func_4(u_input.d, global4[_wgslsmith_index_u32(var_0.x, 7u)], u_input.e, u_input.e), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, false)))), vec2<bool>((1u ^ var_0.x) < 20237u, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3[_wgslsmith_index_u32(~0u, 22u)];
    var var_0 = vec4<f32>(_wgslsmith_div_f32(global0.d, global0.c.x), global3[_wgslsmith_index_u32(u_input.a.x, 22u)], _wgslsmith_f_op_f32(-235f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 22u)]))))), _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(981f * _wgslsmith_div_f32(-591f, global0.c.x))));
    var var_1 = vec2<bool>(global0.b.x != -1i, !func_1() & (_wgslsmith_div_i32(-u_input.d.x, u_input.d.x) <= _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, global0.b.x), _wgslsmith_sub_i32(u_input.d.x, 4365i))));
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(~(~54303u), ~global0.a.x), u_input.e, firstTrailingBit(~1u), 1u), abs(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d.x, -2147483647i, global0.b.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, u_input.c.x, u_input.d.x), global0.b), min(u_input.c.x, u_input.d.x), 13739i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.c, _wgslsmith_f_op_vec4_f32(-global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), var_0.x) * -544f));
    let var_3 = Struct_2(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(global0.a.yxy, global0.a.www) >> ((u_input.b.x >> (global0.a.x % 32u)) % 32u), _wgslsmith_dot_vec3_u32(u_input.a, abs(vec3<u32>(global0.a.x, 49718u, 22290u))), _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, var_2.a.x, global0.a.x, 23057u), vec4<u32>(u_input.b.x, var_2.a.x, 52644u, 48043u)), var_2.a))), var_2, select(!vec2<bool>(true, any(vec3<bool>(false, var_1.x, false))), func_2(vec3<f32>(630f, -109f, 1255f)).c, !select(vec2<bool>(false, var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x)), var_1.x)), global0.a);
    global0 = func_2(func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-789f, 2452f, var_0.x)))))).b.c.wzx).b;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d + global3[_wgslsmith_index_u32(var_2.a.x, 22u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-583f, global0.c.x))), 768f, _wgslsmith_f_op_f32(sign(736f))))) - vec4<f32>(272f, global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.d), -128f, var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.d)))))));
    global3 = array<f32, 22>();
    global3 = array<f32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1025f * global0.c.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(29038u, 22u)] * var_2.d) + -1109f))), vec3<i32>(-20184i, countOneBits(~u_input.d.x) >> (u_input.e % 32u), -42004i), vec4<i32>(var_3.b.b.x, -1i, var_2.b.x, global0.b.x << (global0.a.x % 32u)));
}

