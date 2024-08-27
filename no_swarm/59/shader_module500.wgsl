struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<vec4<bool>, 26>;

var<private> global2: array<i32, 13>;

var<private> global3: array<vec2<u32>, 24>;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.b.x;
    let var_1 = global4.a.b.x;
    global0 = array<Struct_2, 27>();
    global2 = array<i32, 13>();
    let var_2 = _wgslsmith_mult_i32(~1i, _wgslsmith_mod_i32(~(-1i), u_input.c));
    return global4.c;
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = select(select(!select(!vec3<bool>(true, false, global4.c.a), select(vec3<bool>(false, global4.a.a, true), vec3<bool>(global4.c.a, global4.c.a, true), vec3<bool>(false, global4.a.c, global4.c.c)), false), select(!select(vec3<bool>(global4.c.a, false, true), vec3<bool>(global4.c.c, true, global4.a.a), vec3<bool>(false, global4.c.c, false)), select(select(vec3<bool>(false, global4.a.a, false), vec3<bool>(global4.a.c, global4.c.c, global4.a.c), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, global4.c.a), vec3<bool>(true, true, true), vec3<bool>(global4.a.c, false, true)), select(vec3<bool>(true, global4.c.c, global4.c.a), vec3<bool>(true, global4.a.a, global4.a.c), vec3<bool>(false, global4.c.a, global4.a.c))), false), !(!(!vec3<bool>(global4.a.c, false, global4.a.c)))), vec3<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(global4.c.a, true), false)), func_1(Struct_2(any(vec3<bool>(global4.a.c, global4.c.c, global4.c.c)), global4.c.b, true)).c, true && any(!global1[_wgslsmith_index_u32(4294967295u, 26u)])), vec3<bool>(!func_1(Struct_2(true, vec4<f32>(-984f, arg_0, arg_0, global4.c.b.x), false)).a, countOneBits(-2147483647i) <= global2[_wgslsmith_index_u32(1465u, 13u)], func_1(Struct_2(!global4.c.c, global4.c.b, func_1(Struct_2(false, global4.c.b, true)).c)).c));
    global2 = array<i32, 13>();
    var var_1 = ~countOneBits(~u_input.b.zx);
    let var_2 = u_input.d.yzw;
    global3 = array<vec2<u32>, 24>();
    return global4.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(-1614f, _wgslsmith_f_op_f32(trunc(global4.a.b.x)), (arg_2.a.x != arg_2.a.x) & true)), arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - global4.a.b.x)) - _wgslsmith_f_op_f32(-642f * _wgslsmith_f_op_f32(-global4.a.b.x))), -630f), ~1u, select(!arg_2.c, arg_2.c, false));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-555f)), 141f, _wgslsmith_f_op_f32(-1859f * global4.a.b.x), func_1(global4.c).b.x)) - _wgslsmith_f_op_vec4_f32(arg_2.a - vec4<f32>(_wgslsmith_f_op_f32(-global4.c.b.x), _wgslsmith_f_op_f32(sign(-1716f)), arg_2.a.x, _wgslsmith_f_op_f32(step(global4.c.b.x, var_0.a.x))))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(691f)), _wgslsmith_f_op_f32(f32(-1f) * -176f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4.a.b.x)) * -215f))), !vec4<bool>(true, any(arg_2.c.yyy), true, global4.c.a));
    var var_2 = 95099u;
    var var_3 = false & !(!arg_2.c.x || var_1.c.x);
    let var_4 = arg_3.x;
    return countOneBits(global4.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(func_1(global4.a), ~func_2(global4.a, select(u_input.d, u_input.d, global4.a.a) | abs(u_input.d), Struct_1(func_1(Struct_2(true, vec4<f32>(-659f, global4.c.b.x, global4.a.b.x, global4.a.b.x), true)).b, countOneBits(global4.b.x), global1[_wgslsmith_index_u32(global4.b.x, 26u)]), !select(vec3<bool>(true, global4.a.a, global4.a.a), vec3<bool>(global4.c.a, false, false), global4.c.a)), Struct_2(!(!global4.c.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, global4.a.b.x, 2414f, global4.a.b.x))), false));
    global4 = Struct_3(global0[_wgslsmith_index_u32(~u_input.b.x, 27u)], vec3<u32>(select(min(firstTrailingBit(4294967295u), ~4294967295u), ~40522u, true), 0u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 0u << (global4.b.x % 32u)), global4.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.b.x, u_input.b.x, u_input.b.x), vec3<u32>(global4.b.x, 35616u, u_input.b.x)))), global0[_wgslsmith_index_u32(global4.b.x, 27u)]);
    let var_0 = ~(~global4.b.zz);
    var var_1 = Struct_1(vec4<f32>(1526f, global4.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1197f, _wgslsmith_f_op_f32(-global4.a.b.x))) * 1854f), _wgslsmith_f_op_f32(exp2(global4.a.b.x))), ~(countOneBits(max(4294967295u, global4.b.x)) << (var_0.x % 32u)), !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(global4.a.b.x), ~_wgslsmith_mult_u32(var_0.x, var_0.x)), 26u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.b.x) * 309f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), abs(u_input.d.zzz), -vec2<i32>(abs(global2[_wgslsmith_index_u32(var_0.x, 13u)]), global2[_wgslsmith_index_u32(u_input.b.x, 13u)] | 6086i) | u_input.d.xx);
}

