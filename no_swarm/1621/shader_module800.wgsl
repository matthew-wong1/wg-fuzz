struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(12515u, 40662u, 6256u, 0u);

var<private> global1: array<vec3<bool>, 15>;

var<private> global2: array<Struct_1, 11>;

var<private> global3: i32 = -16420i;

var<private> global4: array<vec2<i32>, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    var var_0 = arg_2;
    var var_1 = arg_1.c;
    global1 = array<vec3<bool>, 15>();
    let var_2 = Struct_1(abs(min(abs(vec3<i32>(7457i, 36300i, arg_1.a.x)) << (firstTrailingBit(global0.zzx) % vec3<u32>(32u)), vec3<i32>(arg_1.a.x, min(1i, 57655i), i32(-1i) * -2147483647i))), ~(~_wgslsmith_add_vec4_u32(~arg_1.b, vec4<u32>(global0.x, global0.x, 56724u, arg_0.x) ^ vec4<u32>(u_input.a, arg_1.b.x, 4294967295u, 26361u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_1.c.x, arg_1.c.x) + vec3<f32>(var_1.x, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(round(arg_1.c.x)), var_1.x))));
    global1 = array<vec3<bool>, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(global0.x << (arg_0.b.x % 32u), 11u)];
    let var_1 = countOneBits(_wgslsmith_dot_vec2_u32(global0.wy, arg_0.b.zy));
    let var_2 = arg_0;
    global4 = array<vec2<i32>, 26>();
    global4 = array<vec2<i32>, 26>();
    return _wgslsmith_f_op_f32(min(var_2.c.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec3_u32(var_2.b.wyx, firstTrailingBit(vec3<u32>(global0.x, 103701u, global0.x))), Struct_1(~var_0.a, vec4<u32>(var_1, ~1u, abs(arg_0.b.x), 4294967295u), _wgslsmith_f_op_vec3_f32(-var_0.c)), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, false)))), !(!all(vec2<bool>(false, false)))))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.b.wxx, reverseBits(firstLeadingBit(arg_0.b)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(286f, arg_0.c.x, arg_0.c.x), arg_0.c), _wgslsmith_f_op_vec3_f32(-arg_0.c))), arg_0.c.zz))));
    var var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_0.c.x));
    let var_2 = select(vec4<bool>(false, !select(true, true, false) || any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), arg_0.b.x == 19906u, (~u_input.c <= 22031u) & true), vec4<bool>(select(true, false, false) && (u_input.b.x < _wgslsmith_div_i32(arg_0.a.x, 2147483647i)), all(vec2<bool>(true, true)), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), true), false == (select(~13723u, u_input.a, all(vec4<bool>(false, true, true, true))) <= 1u));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, var_1.x)) - arg_0.c.zz);
    var var_3 = Struct_1(countOneBits(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(10139i, 0i), u_input.b.yz), _wgslsmith_mult_i32(-u_input.b.x, u_input.b.x), 1i)), vec4<u32>(25863u, min(~abs(24866u), _wgslsmith_mult_u32(~0u, ~4294967295u)), 1u, _wgslsmith_add_u32(55084u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1u, u_input.a, 42835u), arg_0.b), 1u))), vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_0.b.wxw, Struct_1(vec3<i32>(u_input.b.x, -1i, -58330i), _wgslsmith_mult_vec4_u32(arg_0.b, vec4<u32>(4294967295u, arg_0.b.x, arg_0.b.x, global0.x)), _wgslsmith_f_op_vec3_f32(-arg_0.c)), select(vec2<bool>(var_2.x, false), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false), vec2<bool>(false, true)), var_2.x || true), _wgslsmith_f_op_f32(exp2(var_1.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0.c.x, arg_0.c.x));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(-206f));
    global3 = func_1(global2[_wgslsmith_index_u32(9638u, 11u)]);
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a | 29589u, ~4294967295u), global0.x | u_input.c), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.x, _wgslsmith_clamp_u32(global0.x, 44944u, 8314u)), _wgslsmith_mod_u32(~u_input.a, 4294967295u)), _wgslsmith_mod_u32(abs(global0.x), 9688u), u_input.c), ~max(abs(~vec4<u32>(19281u, u_input.c, u_input.a, 4294967295u)), vec4<u32>(1u, u_input.c, _wgslsmith_add_u32(u_input.a, u_input.a), reverseBits(u_input.a))));
    var_1 = firstLeadingBit(vec4<u32>(20630u, 1164u, global0.x, u_input.a << (1u % 32u)));
    var var_2 = select(reverseBits(vec4<u32>(u_input.c, ~19270u, var_1.x, 1u) ^ max(vec4<u32>(0u, u_input.a, 30929u, 1u) | vec4<u32>(var_1.x, 1u, 31362u, 5938u), ~vec4<u32>(1328u, var_1.x, var_1.x, 70263u))), abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(38471u, 0u, 8785u, 1555u), countOneBits(~vec4<u32>(64890u, u_input.a, 4294967295u, global0.x)), vec4<u32>(u_input.a >> (var_1.x % 32u), reverseBits(4294967295u), _wgslsmith_mult_u32(global0.x, 11360u), 12590u))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, any(global1[_wgslsmith_index_u32(37184u, 15u)]), true, true), vec4<bool>(any(vec4<bool>(false, true, false, false)), true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true)), !vec4<bool>(u_input.b.x <= u_input.b.x, false, true, true)));
    global3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zx);
}

