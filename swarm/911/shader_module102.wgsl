struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<u32>(0u, 126003u), 1i), Struct_1(vec2<u32>(70478u, 1u), 17192i), Struct_1(vec2<u32>(18510u, 4294967295u), 35261i), Struct_1(vec2<u32>(34819u, 3906u), -40493i), Struct_1(vec2<u32>(0u, 4294967295u), 15926i), Struct_1(vec2<u32>(19148u, 77379u), 29572i), Struct_1(vec2<u32>(0u, 1u), 5346i), Struct_1(vec2<u32>(3289u, 8186u), -28984i), Struct_1(vec2<u32>(776u, 56634u), i32(-2147483648)), Struct_1(vec2<u32>(27399u, 97138u), -5144i), Struct_1(vec2<u32>(1372u, 42072u), 40137i), Struct_1(vec2<u32>(1u, 0u), 47228i), Struct_1(vec2<u32>(29612u, 37950u), 2147483647i), Struct_1(vec2<u32>(78066u, 4294967295u), i32(-2147483648)), Struct_1(vec2<u32>(1u, 5327u), 1i), Struct_1(vec2<u32>(0u, 47641u), 7901i), Struct_1(vec2<u32>(0u, 0u), 41198i), Struct_1(vec2<u32>(0u, 1u), i32(-2147483648)), Struct_1(vec2<u32>(39805u, 0u), 10567i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> i32 {
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_1 * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), arg_1.x))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), !select(!(!arg_0), vec3<bool>(988f >= var_1.x, true, false), arg_0));
    global1 = Struct_2(0u, global1.c, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~12207u, 28868u, 4294967295u), _wgslsmith_mod_vec3_u32(max(vec3<u32>(4294967295u, 21379u, global1.b.a.x), vec3<u32>(1u, 29211u, 1u)), ~(vec3<u32>(22615u, global1.c.a.x, global1.c.a.x) << (vec3<u32>(4294967295u, global1.a, global0.x) % vec3<u32>(32u))))), 19u)], global1.a);
    var var_3 = !any(select(vec4<bool>(false, true, arg_0.x, false), vec4<bool>(true, false, true, arg_0.x), select(vec4<bool>(arg_0.x, var_2.b.x, var_2.b.x, true), vec4<bool>(false, true, true, var_2.b.x), vec4<bool>(arg_0.x, true, var_2.b.x, arg_0.x)))) & (-2147483647i > (u_input.a.x | firstLeadingBit(~71396i)));
    return max(select(_wgslsmith_mod_i32(-u_input.a.x, u_input.a.x), u_input.a.x, any(arg_0)), u_input.a.x) & 50319i;
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = func_3(arg_0.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1081f - _wgslsmith_f_op_f32(-1267f + 1290f)) - 220f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a + arg_0.a))) * _wgslsmith_f_op_f32(trunc(-782f)))), vec3<f32>(arg_0.a, 431f, 1895f));
    var_0 = u_input.a.x;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f + arg_0.a)), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_0.a - 765f)), _wgslsmith_f_op_f32(-arg_0.a)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-887f, -278f, arg_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 443f, -238f) + vec3<f32>(arg_0.a, 732f, arg_0.a))), select(select(vec3<bool>(arg_0.b.x, arg_0.b.x, true), arg_0.b, vec3<bool>(arg_0.b.x, arg_0.b.x, false)), select(arg_0.b, vec3<bool>(false, arg_0.b.x, true), vec3<bool>(arg_0.b.x, true, false)), select(arg_0.b.x, false, arg_0.b.x))))));
    var var_2 = Struct_4(-106f, vec3<bool>(arg_0.b.x, true, !(22907u < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 131400u, global0.x), vec3<u32>(global1.b.a.x, 4294967295u, global0.x)))));
    var var_3 = select(vec2<bool>(arg_0.b.x, (all(vec2<bool>(arg_0.b.x, arg_0.b.x)) || true) | arg_0.b.x), var_2.b.xx, !select(select(!vec2<bool>(var_2.b.x, true), select(vec2<bool>(false, false), var_2.b.yy, arg_0.b.zy), arg_0.b.x), var_2.b.yx, arg_0.b.x));
    return var_2.a;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -745f)));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) + 1548f)));
    var var_1 = _wgslsmith_f_op_f32(func_2(Struct_4(611f, vec3<bool>(true, true, true))));
    global0 = firstTrailingBit(vec3<u32>(~62443u, 4294967295u, ~(~firstTrailingBit(global1.a))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1840f, 1122f))), -1440f)));
    return global2[_wgslsmith_index_u32(global0.x, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d;
    var var_1 = Struct_2(global1.a, func_1(), Struct_1(global1.c.a, countOneBits(global1.c.b) << (44523u % 32u)), _wgslsmith_sub_u32(1u, global0.x) & ~(~(~9037u)));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(select(select(vec4<u32>(global0.x, 1u, 4294967295u, 4294967295u), vec4<u32>(45820u, 1u, 67803u, global1.a), vec4<bool>(false, false, true, false)), ~vec4<u32>(43894u, global0.x, global1.b.a.x, 17442u), true)), vec4<u32>(_wgslsmith_div_u32(1u & var_1.a, 6605u ^ global1.d), var_1.a, global0.x, global1.b.a.x)), var_1.b.a.x);
    let var_3 = -firstLeadingBit(~vec4<i32>(abs(var_1.c.b), -var_1.b.b, _wgslsmith_clamp_i32(var_1.b.b, 46870i, global1.c.b), u_input.a.x));
    var var_4 = select(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(var_2.x, 54286u), var_2.x), abs(global1.c.a.x), abs(abs(global1.d))) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 0u, var_1.a)), reverseBits(vec3<u32>(100483u, global1.b.a.x, 4294967295u))), global1.d, reverseBits(45698u >> (global0.x % 32u))) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(global1.d, var_2.x, 49960u)), all(!vec4<bool>(var_3.x >= -1i, false, true, true)));
    var var_5 = global1.b.a;
    var_4 = _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(var_2.x, firstTrailingBit(var_2.x), ~4294967295u)), ~vec3<u32>(25039u, var_1.c.a.x, var_1.d));
    global0 = ~countOneBits(vec3<u32>(~1u, global0.x, max(~1u, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(var_5.x, 95873u, func_1().a.x, ~(~0u))), 56173u);
}

