struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: array<Struct_1, 3>;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 6428u);

var<private> global3: array<Struct_4, 4>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.x) + 450f));
    let var_1 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(2291i, _wgslsmith_mod_i32(-6710i, arg_1.b.a) ^ ~(-1i), -arg_1.a.a, _wgslsmith_sub_i32(1i, arg_1.a.a)), _wgslsmith_sub_vec4_i32(select(countOneBits(vec4<i32>(arg_1.a.a, 9153i, -18333i, arg_1.b.a)), vec4<i32>(-2147483647i, 2147483647i, 22624i, 1i), select(vec4<bool>(arg_1.d, false, arg_0, arg_0), vec4<bool>(arg_0, true, true, arg_1.d), vec4<bool>(false, arg_0, false, false))), abs(-vec4<i32>(-1i, arg_1.a.a, 0i, arg_1.a.a))), select(!(!vec4<bool>(arg_0, arg_0, false, arg_1.a.b.x)), !vec4<bool>(arg_0, arg_0, false, true), !arg_1.a.b.x)), ~_wgslsmith_add_vec4_i32(~(~vec4<i32>(11047i, 26972i, -2147483647i, arg_1.a.a)), vec4<i32>(-1i) * -vec4<i32>(arg_1.a.a, 34314i, arg_1.a.a, 0i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, -936f))) + _wgslsmith_f_op_f32(f32(-1f) * -778f))) * arg_1.c.a.x);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-714f, var_0.b, -193f, 1262f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.c.a.x, 890f, arg_1.c.a.x, 1004f)))) + var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b + -768f)))));
    global3 = array<Struct_4, 4>();
    return _wgslsmith_f_op_vec3_f32(arg_1.c.a.zxx - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1510f, _wgslsmith_f_op_f32(-var_0.a.x), 1000f))), var_0.a.xxx));
}

fn func_2(arg_0: i32) -> vec3<u32> {
    let var_0 = vec4<bool>(4294967295u < (1u & min(_wgslsmith_dot_vec2_u32(global2.yz, vec2<u32>(1u, 0u)), 4294967295u)), firstTrailingBit(_wgslsmith_mult_i32(~arg_0, 1i)) > -_wgslsmith_sub_i32(2147483647i, ~(-18926i)), true, true);
    var var_1 = global3[_wgslsmith_index_u32(27357u, 4u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(var_1.c.a.zxy, _wgslsmith_f_op_vec3_f32(func_3(var_0.x, global3[_wgslsmith_index_u32(u_input.a.x, 4u)])))), 1u ^ ~u_input.a.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_sub_i32(var_1.a.a, -2147483647i)), arg_0), abs(min(vec2<i32>(var_1.a.a, 0i) >> (global2.xz % vec2<u32>(32u)), select(vec2<i32>(2147483647i, arg_0), vec2<i32>(0i, 2147483647i), var_0.yx))), vec2<i32>(arg_0, -(~2147483647i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.a.x)))), var_1.c.a.x)), select(!(!(!vec3<bool>(var_1.a.b.x, true, true))), !select(vec3<bool>(true, var_1.a.b.x, true), !var_0.yyw, select(var_0.yxx, var_0.yxz, vec3<bool>(false, false, false))), !(!var_0.x) || (_wgslsmith_f_op_f32(-var_1.c.b) > var_1.c.b)));
    global3 = array<Struct_4, 4>();
    global2 = vec3<u32>(0u, ~29484u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.zwy, vec3<u32>(52841u, global0[_wgslsmith_index_u32(~4294967295u, 9u)], _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), select(_wgslsmith_mult_vec3_u32(~vec3<u32>(global2.x, 1u, global2.x), ~vec3<u32>(var_2.b, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)])), u_input.a.ywx, var_2.e.x)));
    return _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~9491u, countOneBits(1u), 4294967295u), 0u, countOneBits(~10879u)) & ~abs(max(u_input.a.xzz, u_input.a.yzw)), u_input.a.wyy);
}

fn func_1() -> Struct_3 {
    global0 = array<u32, 9>();
    let var_0 = Struct_2(vec4<f32>(-725f, 956f, -1234f, _wgslsmith_f_op_f32(-312f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -422f))))), -1827f);
    global2 = max(~(~u_input.a.wxx) & (u_input.a.yxy | ~func_2(2147483647i)), u_input.a.ywz);
    global0 = array<u32, 9>();
    var var_1 = countOneBits(vec2<u32>(u_input.a.x, func_2(-32215i).x));
    return Struct_3(-41269i, !select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), global2.x > global0[_wgslsmith_index_u32(4294967295u, 9u)])));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec3<bool>(true, false, true);
    let var_1 = global3[_wgslsmith_index_u32(~(4294967295u | ~_wgslsmith_div_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 9u)], 12265u), _wgslsmith_dot_vec4_u32(vec4<u32>(18983u, global0[_wgslsmith_index_u32(0u, 9u)], 4294967295u, 73560u), u_input.a))), 4u)];
    let var_2 = Struct_5(vec4<bool>(true, var_0.x, true, !(true && func_1().b.x)), arg_2.b.x);
    let var_3 = !select(func_1().b, func_1().b, vec2<bool>(select(true, all(var_2.a.zx), true), false));
    let var_4 = var_1.c;
    return var_1.c;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    let var_0 = select(vec3<bool>(true, all(func_1().b), select(true, true, true) & select(true, true, true)), vec3<bool>(true, true, (all(vec4<bool>(true, false, true, true)) | true) && true), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), false), vec3<bool>(false, true, true), any(vec3<bool>(false, true, false))), !vec3<bool>(any(vec2<bool>(false, false)), true, true), 4294967295u > max(0u, global0[_wgslsmith_index_u32(~u_input.a.x, 9u)])));
    let var_1 = var_0.x;
    let var_2 = max(select(vec2<u32>(_wgslsmith_dot_vec3_u32(abs(u_input.a.wyx), u_input.a.wwx), 4294967295u), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(39830u, 27818u), vec2<u32>(u_input.a.x, 72340u), vec2<u32>(global2.x, 4294967295u)), select(u_input.a.zw, u_input.a.xw, vec2<bool>(var_1, var_0.x))) << (vec2<u32>(global2.x << (u_input.a.x % 32u), 4294967295u) % vec2<u32>(32u)), vec2<bool>(true, true)), ~(~countOneBits(vec2<u32>(u_input.a.x, global2.x))));
    global0 = array<u32, 9>();
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -742f)))))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(global3[_wgslsmith_index_u32(34811u, 4u)], !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), func_1()));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_0.a, ~(-1i), 1i), var_0.a), vec2<i32>(_wgslsmith_sub_i32(0i, ~57221i), 1i >> (abs(global2.x) % 32u))) & ~var_0.a;
    global2 = _wgslsmith_sub_vec3_u32(~select(u_input.a.zxw, u_input.a.yzw, vec3<bool>(true, false, var_0.b.x)) ^ (_wgslsmith_add_vec3_u32(u_input.a.wwz, vec3<u32>(global2.x, global2.x, u_input.a.x)) << (countOneBits(u_input.a.yzx) % vec3<u32>(32u))), firstLeadingBit(~func_2(var_0.a))) & firstTrailingBit(~min(abs(u_input.a.xyx), u_input.a.zxw));
    let var_2 = true;
    var_0 = Struct_3(var_0.a, var_0.b);
    global3 = array<Struct_4, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_2(func_5(Struct_2(vec4<f32>(-2512f, -1158f, -953f, 745f), 527f)).a).x, 1u, ~global0[_wgslsmith_index_u32(4294967295u, 9u)] | global0[_wgslsmith_index_u32(~1u, 9u)], 43535u >> (global2.x % 32u)), ~(~vec4<u32>(~global0[_wgslsmith_index_u32(4294967295u, 9u)], ~37835u, select(u_input.a.x, 12778u, false), 27477u)));
}

