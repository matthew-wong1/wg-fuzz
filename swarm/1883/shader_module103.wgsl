struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec3<i32> {
    var var_0 = !(!(!vec4<bool>(arg_0.x, !arg_0.x, !arg_1.c.x, any(vec4<bool>(true, arg_2.x, false, true)))));
    global0 = array<i32, 7>();
    let var_1 = true;
    return arg_1.a;
}

fn func_2(arg_0: i32, arg_1: u32) -> i32 {
    global0 = array<i32, 7>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, global0[_wgslsmith_index_u32(1u, 7u)], -1i) >> (vec3<u32>(1u, 4294967295u, arg_1) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(71753u, 7u)], arg_0, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(1u, 7u)], -14571i, -118761i))), _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_1, 7u)], 2147483647i, global0[_wgslsmith_index_u32(arg_1, 7u)]), vec3<i32>(-1i, 0i, arg_0))), vec2<u32>(u_input.a, u_input.b), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<i32>(_wgslsmith_sub_i32(arg_0, arg_0), -arg_0)), Struct_1(vec3<i32>(~(-arg_0), ~(0i << (arg_1 % 32u)), countOneBits(~2147483647i)), ~(~vec2<u32>(85629u, 62620u)), select(vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(true, true), true), firstLeadingBit(countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(41496u, 7u)], arg_0))) << ((abs(vec2<u32>(u_input.b, u_input.b)) & (vec2<u32>(0u, 0u) << (vec2<u32>(arg_1, 4294967295u) % vec2<u32>(32u)))) % vec2<u32>(32u))), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_1 << (u_input.b % 32u), 7u)], arg_0, arg_0), -func_3(vec2<bool>(true, true), Struct_1(vec3<i32>(31178i, -9538i, -46751i), vec2<u32>(30839u, 0u), vec2<bool>(true, true), vec2<i32>(-2147483647i, 20449i)), vec2<bool>(true, true), vec2<u32>(arg_1, u_input.a))), vec2<u32>(56333u << (1u % 32u), max(arg_1, arg_1)) ^ reverseBits(vec2<u32>(u_input.b, arg_1) & vec2<u32>(u_input.b, 0u)), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), false), vec2<bool>(true, true)), max(vec2<i32>(37401i, arg_0), select(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(arg_1, 7u)], global0[_wgslsmith_index_u32(52146u, 7u)])), func_3(vec2<bool>(false, false), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(14384u, 7u)], -23209i, arg_0), vec2<u32>(u_input.b, arg_1), vec2<bool>(true, false), vec2<i32>(-1i, -1i)), vec2<bool>(true, true), vec2<u32>(arg_1, 4294967295u)).xx, true))), vec2<f32>(-1000f, -389f), firstLeadingBit(vec3<i32>(-2147483647i & arg_0, 0i, ~(~1i))));
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    var var_1 = var_0.a.c.x;
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = !vec2<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true)), -74109i == ~func_2(global0[_wgslsmith_index_u32(u_input.b, 7u)], u_input.a));
    global0 = array<i32, 7>();
    var var_1 = Struct_2(Struct_1(vec3<i32>(select(0i, global0[_wgslsmith_index_u32(4294967295u, 7u)], all(vec3<bool>(var_0.x, var_0.x, var_0.x))), global0[_wgslsmith_index_u32(4294967295u, 7u)], i32(-1i) * -628i), firstTrailingBit(abs(vec2<u32>(u_input.a, u_input.b))), select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), false), vec2<bool>(false, var_0.x), false), select(var_0, select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)), var_0), var_0.x), firstTrailingBit(vec2<i32>(-global0[_wgslsmith_index_u32(u_input.a, 7u)], _wgslsmith_clamp_i32(-38603i, 1i, global0[_wgslsmith_index_u32(1u, 7u)])))), Struct_1(firstTrailingBit(~(-vec3<i32>(0i, -20073i, global0[_wgslsmith_index_u32(4294967295u, 7u)]))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.b)), ~vec2<u32>(0u, 1u)), var_0, _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 52582i), vec2<i32>(-24645i, -69706i) | vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b, 7u)])), countOneBits(vec2<i32>(10809i, -32866i)) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), Struct_1(~(-vec3<i32>(-37809i, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(27000u, 7u)])) ^ -(~vec3<i32>(2011i, 37795i, global0[_wgslsmith_index_u32(4294967295u, 7u)])), vec2<u32>(u_input.b ^ ~u_input.b, 4294967295u), vec2<bool>(var_0.x, false), vec2<i32>(i32(-1i) * -1i, ~(i32(-1i) * -1i))), vec2<f32>(-827f, 1f), -(~max(abs(vec3<i32>(26578i, 72511i, global0[_wgslsmith_index_u32(u_input.a, 7u)])), vec3<i32>(2147483647i, 1i, global0[_wgslsmith_index_u32(1u, 7u)]))));
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.c.a.x, 2147483647i), -68698i), max(firstTrailingBit(var_1.a.a.x), -1i) >> (var_1.b.b.x % 32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(var_1.e, vec3<i32>(var_1.c.d.x, -5977i, var_1.b.a.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_1.a.b.x, 7u)], -1i), var_1.e.yx)), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(-1i, 2147483647i, var_1.c.d.x)), vec3<i32>(global0[_wgslsmith_index_u32(var_1.c.b.x, 7u)], -1i, -1952i), vec3<i32>(-1i, var_1.e.x, var_1.b.a.x) >> (vec3<u32>(var_1.c.b.x, 1u, 0u) % vec3<u32>(32u)))), vec3<i32>(var_1.e.x, -6016i, _wgslsmith_dot_vec2_i32(var_1.e.yx, var_1.a.d))));
    var_1 = Struct_2(var_1.c, Struct_1(-var_1.b.a, ~var_1.b.b, var_0, ~firstTrailingBit(_wgslsmith_mod_vec2_i32(var_2.xx, var_2.yz))), Struct_1(countOneBits(-abs(var_1.e)), vec2<u32>(_wgslsmith_mod_u32(var_1.c.b.x, 4294967295u), 17303u), select(var_0, var_1.c.c, vec2<bool>(true, true)), abs(abs(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 7u)]) & var_2.zz))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, var_1.d.x) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_1.d.x))))))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(0i, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)]), -2147483647i, 5566i, i32(-1i) * -15713i), -_wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.a.x, var_2.x, -54240i, global0[_wgslsmith_index_u32(u_input.b, 7u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], var_2.x, -8503i))), global0[_wgslsmith_index_u32(var_1.b.b.x, 7u)], 13247i));
    return Struct_1(vec3<i32>(var_1.b.a.x, -51875i, var_1.c.d.x), _wgslsmith_mod_vec2_u32(~var_1.c.b, var_1.c.b), vec2<bool>(true, true), firstLeadingBit(_wgslsmith_add_vec2_i32(var_2.xz, vec2<i32>(-14945i, global0[_wgslsmith_index_u32(var_1.b.b.x, 7u)] | 1i))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> vec3<bool> {
    global0 = array<i32, 7>();
    var var_0 = ~firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_0.e.x, global0[_wgslsmith_index_u32(6412u, 7u)]), arg_0.c.a.x & 1i));
    global0 = array<i32, 7>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1058f)))));
    global0 = array<i32, 7>();
    return !vec3<bool>(func_1().c.x, false, true | arg_0.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(abs(-vec4<i32>(10784i, -1i, global0[_wgslsmith_index_u32(1u, 7u)], -2147483647i)));
    var var_1 = _wgslsmith_mod_vec4_i32(-(~(-(~vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 7u)], 59183i, var_0.x)))), ~(vec4<i32>(-var_0.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a), 7u)], min(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 7u)]), var_0.x) << (vec4<u32>(~50871u, u_input.b, 36269u, 26419u) % vec4<u32>(32u))));
    let var_2 = all(func_4(Struct_2(Struct_1(var_0.wxz, vec2<u32>(1u, 58006u), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<i32>(-8115i, global0[_wgslsmith_index_u32(u_input.b, 7u)])), func_1(), Struct_1(firstLeadingBit(vec3<i32>(var_1.x, global0[_wgslsmith_index_u32(31419u, 7u)], var_1.x)), vec2<u32>(u_input.b, u_input.a) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), vec2<bool>(true, true), -var_0.yy), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(539f, -1177f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(275f, 2449f))), false)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 7u)], var_1.x, global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<i32>(var_1.x, var_1.x, -66265i))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(173f, 1000f, -1000f)))))));
    global0 = array<i32, 7>();
    var_1 = vec4<i32>(firstLeadingBit(~_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, 2147483647i), -var_1.x)), -1i, min(abs(_wgslsmith_div_i32(-global0[_wgslsmith_index_u32(u_input.a, 7u)], var_0.x >> (0u % 32u))), var_0.x), firstTrailingBit(1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(369f, 877f))), 1801f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f))), -(reverseBits(vec4<i32>(var_0.x, var_1.x, 44892i, var_1.x)) << ((vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b) & vec4<u32>(u_input.a, u_input.b, u_input.a, 1989u)) % vec4<u32>(32u))) ^ firstLeadingBit(max(-vec4<i32>(var_0.x, -2147483647i, 3963i, 60913i), ~vec4<i32>(42629i, 0i, -1i, 56005i))), _wgslsmith_div_vec4_u32(vec4<u32>(56261u, 27860u, 17895u, _wgslsmith_add_u32(63405u, _wgslsmith_div_u32(6997u, u_input.b))), ~max(firstLeadingBit(vec4<u32>(41711u, 99868u, 0u, 32779u)), firstTrailingBit(vec4<u32>(u_input.a, 21174u, u_input.a, u_input.b)))), 0u);
}

