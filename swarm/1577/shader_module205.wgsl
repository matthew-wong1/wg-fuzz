struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: vec3<i32> = vec3<i32>(0i, 1i, -21758i);

var<private> global2: Struct_1;

var<private> global3: vec2<bool>;

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = !(!var_0.x) && true;
    let var_2 = ~(~(~global2.b.yww));
    var var_3 = Struct_3(Struct_1(u_input.a.x, select(vec4<u32>(_wgslsmith_sub_u32(global2.b.x, 4294967295u), countOneBits(global2.b.x), _wgslsmith_sub_u32(4294967295u, 28336u), var_2.x), reverseBits(~global2.b), !(!global3.x)), global0[_wgslsmith_index_u32(global2.b.x, 2u)]));
    var var_4 = Struct_3(Struct_1(1i, ~_wgslsmith_add_vec4_u32(vec4<u32>(23636u, 9127u, var_2.x, 4294967295u), global2.b), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(var_2.x, arg_0.x), ~0u), 2u)])));
    return Struct_2(1i, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(var_3.a.b.x, 735u, 1u, 1u), ~vec4<u32>(1u, 1u, 55034u, var_3.a.b.x))), vec4<u32>(select(var_3.a.b.x, var_3.a.b.x, global3.x) | 43297u, 36474u, 26863u, min(0u, var_2.x | var_4.a.b.x))), firstLeadingBit(-(~vec3<i32>(global1.x, var_4.a.a, global2.a))), _wgslsmith_f_op_f32(f32(-1f) * -141f) < _wgslsmith_f_op_f32(round(-1698f)), global2.c);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec2<bool> {
    global2 = Struct_1(global1.x, vec4<u32>(~4294967295u, select(0u, 1u, global3.x) & 11355u, ~31560u, ~func_2(vec2<u32>(global2.b.x, 20234u)).b) | ~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, 4294967295u, 0u), global2.b), _wgslsmith_f_op_f32(-global2.c));
    global0 = array<f32, 2>();
    let var_0 = Struct_2(u_input.a.x, 1u, abs(countOneBits(-(vec3<i32>(2147483647i, -34486i, -40769i) >> (global2.b.wyw % vec3<u32>(32u))))), true, global2.c);
    var var_1 = -1i;
    var var_2 = vec4<i32>(35870i, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-2147483647i, global1.x, 1i, global1.x)), vec4<i32>(u_input.a.x | 2147483647i, _wgslsmith_mult_i32(1i, 24525i), _wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(var_0.a, var_0.a, 15704i)), _wgslsmith_add_i32(31656i, var_0.a))), 16367i, global1.x) ^ firstTrailingBit(max(-select(vec4<i32>(0i, var_0.a, var_0.c.x, global1.x), vec4<i32>(global2.a, global2.a, -6035i, -2147483647i), arg_1.x), firstLeadingBit(vec4<i32>(global1.x, global2.a, u_input.a.x, -8525i)) | max(vec4<i32>(global2.a, var_0.c.x, var_0.a, global1.x), vec4<i32>(0i, global2.a, global1.x, global1.x))));
    return select(vec2<bool>(false, !(_wgslsmith_f_op_f32(173f * -353f) == _wgslsmith_div_f32(global2.c, global0[_wgslsmith_index_u32(global2.b.x, 2u)]))), select(select(!select(arg_1.zz, vec2<bool>(true, true), arg_1.yz), !select(arg_1.yx, arg_1.zz, arg_1.yz), arg_1.yy), vec2<bool>(!(global3.x | var_0.d), any(!vec4<bool>(var_0.d, var_0.d, false, true))), !((i32(-1i) * -58207i) < ~global1.x)), arg_1.yz);
}

fn func_1() -> bool {
    global0 = array<f32, 2>();
    var var_0 = func_2(global2.b.zy);
    let var_1 = true;
    global3 = !(!vec2<bool>(all(func_3(vec3<f32>(1049f, -1579f, global0[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(global3.x, false, false))), func_3(vec3<f32>(global0[_wgslsmith_index_u32(1u, 2u)], -911f, var_0.e), vec3<bool>(global3.x, false, false)).x || true));
    var var_2 = vec4<u32>(23402u, ~(~max(max(global2.b.x, var_0.b), _wgslsmith_add_u32(global2.b.x, 26617u))), _wgslsmith_div_u32(~(~7841u) | _wgslsmith_dot_vec2_u32(~global2.b.xz, ~vec2<u32>(9469u, var_0.b)), ~(30628u | _wgslsmith_dot_vec3_u32(global2.b.zzw, vec3<u32>(global2.b.x, 23236u, 0u)))), var_0.b);
    return true & var_0.d;
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_2(min(abs(2147483647i), 0i), _wgslsmith_add_u32(81374u, select(max(_wgslsmith_mult_u32(4294967295u, 1u), 1u), 4294967295u >> (global2.b.x % 32u), arg_0)), vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, -2147483647i)), global2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -47151i), u_input.a) ^ reverseBits(-18201i)) << (~global2.b.yxw % vec3<u32>(32u)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * global2.c))));
    let var_1 = Struct_1(0i, _wgslsmith_div_vec4_u32(~firstLeadingBit(global2.b << (vec4<u32>(var_0.b, 53048u, 1u, 33952u) % vec4<u32>(32u))), select(countOneBits(vec4<u32>(0u, var_0.b, var_0.b, global2.b.x)) ^ vec4<u32>(var_0.b, 11302u, 4294967295u, var_0.b), max(firstLeadingBit(vec4<u32>(1u, global2.b.x, 0u, global2.b.x)), countOneBits(vec4<u32>(63286u, 4294967295u, 3728u, 37756u))), false)), global2.c);
    let var_2 = Struct_3(var_1);
    var var_3 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, var_1.b.x, countOneBits(var_2.a.b.x))), global2.b.wwx);
    global4 = countOneBits(-23295i);
    return var_2;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = true;
    global3 = vec2<bool>(!select(global3.x, !global3.x, true), global3.x);
    var var_1 = ~4294967295u;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-484f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global2.b.x, 2u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global2.c)), 197f)), -595f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_f_op_f32(f32(-1f) * -537f), global2.c, _wgslsmith_f_op_f32(trunc(-343f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-479f, global2.c, 1575f, global0[_wgslsmith_index_u32(47936u, 2u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(202f, 201f, arg_1.a.c, -2532f) + vec4<f32>(-129f, -1732f, -281f, arg_1.a.c)))), !(!select(vec4<bool>(true, false, global3.x, false), vec4<bool>(global3.x, global3.x, global3.x, global3.x), false)))));
    var var_3 = Struct_2(_wgslsmith_div_i32(~(-2147483647i), _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x))), select(_wgslsmith_sub_u32(_wgslsmith_sub_u32(global2.b.x, 23947u), global2.b.x), _wgslsmith_sub_u32(1u, firstTrailingBit(arg_1.a.b.x)), true), _wgslsmith_sub_vec3_i32(~(vec3<i32>(0i, -1758i, global2.a) << (arg_1.a.b.yyw % vec3<u32>(32u))), vec3<i32>(global2.a, arg_1.a.a, -global2.a)) >> (~firstTrailingBit(vec3<u32>(global2.b.x, global2.b.x, arg_1.a.b.x) << (vec3<u32>(arg_1.a.b.x, arg_1.a.b.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), true, -472f);
    return arg_1;
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> vec2<u32> {
    global2 = arg_0.a;
    var var_0 = func_4(all(!(!select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, global3.x, true), global3.x))), all(select(!vec3<bool>(false, global3.x, global3.x), !(!vec3<bool>(global3.x, false, true)), select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(global3.x, global3.x, global3.x), global3.x))));
    return global2.b.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))), func_4(func_1(), false)), global2.c);
    global1 = select(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-1830i, u_input.a.x)), u_input.a), _wgslsmith_dot_vec2_i32(max(global1.yx, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 0i), global1.yz)), 26463i)), -reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(global2.a, global1.x, 31566i), -vec3<i32>(global2.a, 2147483647i, -2147483647i))), select(select(select(!vec3<bool>(global3.x, global3.x, global3.x), !vec3<bool>(true, global3.x, global3.x), true), select(!vec3<bool>(global3.x, global3.x, global3.x), select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, true, global3.x), vec3<bool>(false, true, false)), vec3<bool>(false, global3.x, global3.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, global3.x), global3.x), vec3<bool>(true, true, true), !global3.x)), !vec3<bool>(all(vec3<bool>(true, global3.x, true)), !global3.x, any(vec2<bool>(global3.x, global3.x))), true));
    let var_1 = Struct_2(_wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_mod_i32(global1.x, u_input.a.x)) | ((u_input.a.x >> ((69950u & global2.b.x) % 32u)) ^ global2.a), var_0.x, firstTrailingBit(-(vec3<i32>(global2.a, 1i, 61936i) << (~global2.b.zxz % vec3<u32>(32u)))), global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(global2.b.x, 2u)], Struct_3(Struct_1(global2.a, global2.b, 1512f))).a.c - 386f) + global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.b.x, select(77651u, var_0.x, global3.x), _wgslsmith_div_u32(39720u, global2.b.x)), 2u)]), 388f, all(!(!vec4<bool>(false, global3.x, true, global3.x))))));
    let var_2 = Struct_2(global2.a, 38277u, select(var_1.c, var_1.c, vec3<bool>(!var_1.d, global3.x, global3.x)), any(!(!(!vec3<bool>(var_1.d, true, false)))), -203f);
    let var_3 = Struct_2(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_div_i32(-var_2.c.x << (func_2(global2.b.yz).b % 32u), 16688i)), ~_wgslsmith_sub_u32(min(~var_2.b, var_1.b), ~22018u), var_1.c, false, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.b, 2u)], var_1.e));
    global1 = select(vec3<i32>(32622i, -global1.x, -13489i), _wgslsmith_add_vec3_i32(var_3.c, abs(var_3.c) << (reverseBits(global2.b.yxx) % vec3<u32>(32u))), false);
    var var_4 = 2147483647i;
    var var_5 = func_4(any(select(vec4<bool>(var_1.d, var_3.d, var_2.d, global3.x), select(vec4<bool>(var_3.d, var_2.d, true, var_3.d), vec4<bool>(var_3.d, var_3.d, true, false), vec4<bool>(true, false, false, var_1.d)), vec4<bool>(var_3.d, var_2.d, false, var_1.d))) && var_1.d, var_3.d).a;
    global4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_3.e, -443f)));
}

