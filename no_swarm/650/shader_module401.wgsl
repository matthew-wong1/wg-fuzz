struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    var var_0 = -arg_2 | _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(abs(vec2<i32>(-2147483647i, arg_2)), reverseBits(vec2<i32>(-14520i, arg_2)), false), vec2<i32>(2147483647i, arg_2), vec2<i32>(2147483647i, _wgslsmith_sub_i32(-2147483647i, arg_2))), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(arg_2, arg_2))) ^ vec2<i32>(_wgslsmith_div_i32(58731i, 2147483647i), arg_2 ^ arg_2));
    var var_1 = Struct_1(!(!(!global0.a)), arg_0.xx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1567f - 334f) - -466f)), arg_1.x)), vec3<bool>(false, false && (_wgslsmith_f_op_f32(ceil(global0.c)) > 1f), firstLeadingBit(select(0i, arg_2, true)) == 0i));
    global1 = u_input.a;
    var var_2 = Struct_4(Struct_3(Struct_1((true || var_1.a) || (false == global0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.c, -766f), vec2<f32>(-1000f, global0.c)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1392f + arg_0.x), 999f)), vec3<bool>(all(var_1.d), any(vec2<bool>(var_1.d.x, var_1.a)), var_1.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1953f, arg_1.x), vec2<f32>(arg_1.x, 980f)), global0.b, select(vec2<bool>(global0.a, true), !var_1.d.yy, global0.d.xy)))));
    var var_3 = Struct_4(var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.a.b.x), -908f), var_2.b, all(select(vec4<bool>(var_2.a.a.a, var_2.a.a.a, global0.a, true), vec4<bool>(var_1.a, false, var_2.a.a.a, global0.a), false))))));
    return select(~_wgslsmith_dot_vec2_u32(global1.zz, vec2<u32>(global1.x, 4294967295u)) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 57201u), max(vec2<u32>(18140u, global1.x), vec2<u32>(u_input.a.x, u_input.a.x))) % 32u), global1.x, false);
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<i32>(~(-1i), ~1i << ((func_3(vec3<f32>(712f, 592f, global0.c), vec4<f32>(global0.b.x, -1106f, global0.c, global0.b.x), 58i) | ~global1.x) % 32u)) >> (vec2<u32>(u_input.a.x, countOneBits(countOneBits(u_input.a.x))) % vec2<u32>(32u));
    var var_1 = global0.a;
    var var_2 = select(vec2<u32>(4294967295u, 4294967295u), global1.zx, all(select(select(select(vec4<bool>(false, false, global0.a, true), vec4<bool>(global0.d.x, global0.d.x, false, true), vec4<bool>(false, global0.a, global0.a, false)), select(vec4<bool>(global0.d.x, false, global0.d.x, true), vec4<bool>(true, false, true, global0.a), vec4<bool>(global0.a, global0.d.x, false, global0.d.x)), global0.d.x), vec4<bool>(global0.d.x, global0.a, any(vec4<bool>(false, false, false, false)), true), select(vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x), vec4<bool>(false, false, global0.d.x, true), true))));
    let var_3 = Struct_2(Struct_1(global0.d.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(global0.b)), global0.b)))), global0.b.x, vec3<bool>(true, false, true)), Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(499f, global0.b.x), _wgslsmith_f_op_f32(round(global0.c)), any(vec4<bool>(true, false, false, global0.d.x))))), global0.d), _wgslsmith_f_op_vec2_f32(trunc(global0.b)));
    global0 = var_3.b;
    return Struct_1(global0.d.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(exp2(var_3.a.b.x))), var_3.b.b.x), _wgslsmith_f_op_vec2_f32(var_3.b.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1224f, -1886f))))), -635f, select(global0.d, vec3<bool>(true, any(var_3.b.d.zx), !var_3.b.a), var_3.b.d));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: bool) -> i32 {
    let var_0 = func_2();
    var var_1 = Struct_3(Struct_1(all(select(select(var_0.d.xx, var_0.d.zz, var_0.d.x), !vec2<bool>(global0.d.x, false), !var_0.d.x)), arg_0.yx, var_0.c, vec3<bool>(_wgslsmith_f_op_f32(max(arg_1, arg_0.x)) != _wgslsmith_f_op_f32(ceil(arg_1)), !arg_2, true)));
    var var_2 = select(select(any(vec4<bool>(true, true, true, true)), true, _wgslsmith_dot_vec2_i32(vec2<i32>(30723i, 0i), vec2<i32>(1581i, 1i)) >= -2147483647i), false, global0.a) | !arg_2;
    var var_3 = 2147483647i;
    let var_4 = Struct_4(Struct_3(Struct_1(var_1.a.a, vec2<f32>(func_2().c, _wgslsmith_f_op_f32(global0.c - -1609f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-168f)) - _wgslsmith_f_op_f32(-var_0.c)), vec3<bool>(global0.d.x, false || var_1.a.d.x, arg_2))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_1.a.c))));
    return ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(2147483647i, -46092i, 19489i), 2147483647i), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 24089i, 0i), vec4<i32>(1i, 1i, 1i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(~((-vec4<i32>(42563i, -2147483647i, 0i, 1i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -27192i, 0i, 0i), vec4<i32>(-51119i, -7433i, -3179i, -17917i), vec4<i32>(-1i, 31268i, 4827i, -7203i))) ^ vec4<i32>(1i, ~(-1i), _wgslsmith_add_i32(0i, -141i), _wgslsmith_sub_i32(2122i, 0i))), select(abs(vec4<i32>(~1i, _wgslsmith_div_i32(22287i, -24603i), _wgslsmith_mult_i32(-29046i, -8466i), -24338i)), -vec4<i32>(select(-1i, 14912i, false), _wgslsmith_div_i32(1i, -1i), firstLeadingBit(0i), countOneBits(1i)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.a, global0.d.x, global0.a, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, global0.d.x, false, true), vec4<bool>(global0.d.x, true, true, global0.a), vec4<bool>(false, false, true, false))))), vec4<i32>(func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c, global0.c, 673f, 1715f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.x), 814f, true)), true), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 42798i), vec3<i32>(-21825i, 14058i, -1i)), -2147483647i), _wgslsmith_div_i32(1i, -38831i)), _wgslsmith_clamp_i32(54506i, 0i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-59806i, 50664i), vec2<i32>(38767i, -1i))), 2147483647i));
    var var_1 = -127f;
    let var_2 = Struct_3(func_2());
    let var_3 = Struct_2(var_2.a, var_2.a, vec2<f32>(113f, _wgslsmith_div_f32(-335f, -872f)));
    let var_4 = ~31201i;
    var var_5 = _wgslsmith_mult_i32(var_4, _wgslsmith_sub_i32(abs(44966i), var_0.x) & _wgslsmith_clamp_i32(~1i, _wgslsmith_mult_i32(0i ^ var_0.x, -var_0.x), _wgslsmith_add_i32(_wgslsmith_div_i32(-3358i, -44555i), var_4)));
    global0 = func_2();
    let var_6 = ~(_wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(17562u, 1u, u_input.a.x)), 29893u) ^ abs(~(~4294967295u)));
    var var_7 = _wgslsmith_clamp_i32(~(-_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_0, var_0), var_0 | var_0)), 1i, -34919i);
    let x = u_input.a;
    s_output = StorageBuffer(~min(firstLeadingBit(u_input.a.x), ~var_6));
}

