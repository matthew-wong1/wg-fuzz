struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 20>;

var<private> global2: vec2<bool>;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(-1166f, vec4<bool>(true, false, true, false)), false, 1u), vec4<bool>(false, false, true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = vec2<i32>(2147483647i, -1i);
    global0 = global3.b.x;
    var var_1 = global3.a.a.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_f_op_f32(floor(-1748f))));
    global0 = var_1.x;
    return global3.a;
}

fn func_3() -> vec2<i32> {
    var var_0 = func_2(~0i);
    global2 = select(vec2<bool>(true, true), global3.b.zz, true);
    global1 = array<Struct_1, 20>();
    let var_1 = global3.a;
    global1 = array<Struct_1, 20>();
    return vec2<i32>(reverseBits(-40169i), -_wgslsmith_div_i32(-29264i, i32(-1i) * -2147483647i) << (select(~35965u, u_input.c, var_1.a.b.x) % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(global3.a.c, 20u)];
    let var_1 = u_input.d;
    var var_2 = !vec3<bool>(var_0.b.x && global2.x, global2.x && global3.a.b, false);
    global3 = Struct_3(func_2(2147483647i | u_input.b.x), func_2(_wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.a.x, -1i) >> (u_input.d.xz % vec2<u32>(32u))), select(u_input.b.yz, ~vec2<i32>(u_input.a.x, u_input.b.x), !var_2.x))).a.b);
    let var_3 = Struct_4(_wgslsmith_mult_vec2_i32(u_input.a.zx, min(vec2<i32>(47556i, ~(-2147483647i)), select(func_3(), -vec2<i32>(u_input.b.x, 2147483647i), var_0.b.x))), func_2(~u_input.b.x).a, func_2(u_input.b.x).a.b.x, !(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.a, global3.a.a.a)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.a.a))));
    return global3.a.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> bool {
    global2 = !vec2<bool>(_wgslsmith_mod_u32(~0u, ~global3.a.c) > u_input.c, true);
    global0 = arg_1.b.x;
    global3 = Struct_3(Struct_2(func_1(), true, reverseBits(_wgslsmith_div_u32(firstLeadingBit(global3.a.c), countOneBits(5893u)))), vec4<bool>(false != select(all(vec3<bool>(global2.x, arg_1.b.x, false)), true, !global3.a.a.b.x), !global3.a.a.b.x, true, all(arg_1.b)));
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(1u, 20u)], true, ~_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.d.x, u_input.d.x), func_2(reverseBits(-1i)).c));
    global3 = Struct_3(Struct_2(func_2(arg_3).a, func_1().b.x, firstLeadingBit(1u)), select(global3.a.a.b, global3.a.a.b, true));
    return ((arg_3 & u_input.a.x) >= 0i) | all(global3.a.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 43132u;
    global0 = func_4(Struct_4(abs(reverseBits(vec2<i32>(u_input.b.x, u_input.b.x) ^ u_input.a.wz)), Struct_1(-529f, global3.a.a.b), true, global3.b.x), func_1(), true, _wgslsmith_clamp_i32(u_input.b.x, u_input.a.x, -u_input.a.x));
    let var_1 = vec3<i32>(-1i, select(firstLeadingBit(_wgslsmith_div_i32(i32(-1i) * -26126i, -31068i)), u_input.b.x, firstTrailingBit(~var_0) <= u_input.d.x), -14034i);
    global2 = vec2<bool>(true && global3.a.a.b.x, !global3.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.a.a), global3.a.a.a), max(~(~vec4<u32>(1u, var_0, 86904u, var_0)), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), u_input.d), global3.a.c), _wgslsmith_dot_vec3_u32(~u_input.d, vec3<u32>(18151u, 0u, 11679u)), firstLeadingBit(25583u), _wgslsmith_sub_u32(~global3.a.c, u_input.c << (u_input.d.x % 32u)))), _wgslsmith_sub_i32(~(-2147483647i), u_input.b.x) | (i32(-1i) * -68974i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.a.a.a, global3.a.a.a, global3.a.a.a, -285f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1165f, global3.a.a.a, global3.a.a.a, -416f) * vec4<f32>(1651f, global3.a.a.a, 1124f, -1172f)), vec4<f32>(global3.a.a.a, global3.a.a.a, 1243f, -828f))))));
}

