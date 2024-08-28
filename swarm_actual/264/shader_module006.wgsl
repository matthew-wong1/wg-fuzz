struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_2, 31>;

var<private> global2: Struct_2 = Struct_2(-1776f);

var<private> global3: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(1513f, -854f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = !(!(!vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, false)));
    var_0 = select(!vec4<bool>(var_0.x, !select(var_0.x, true, var_0.x), var_0.x, all(select(var_0.zy, var_0.zw, var_0.x))), select(select(vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x | var_0.x, true, true), vec4<bool>(var_0.x, true, true, u_input.a < u_input.d.x), vec4<bool>(all(var_0.xxw), true, u_input.e.x != 4294967295u, any(var_0.yzx))), select(!vec4<bool>(var_0.x, var_0.x, false, true), select(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !var_0.x), vec4<bool>(any(vec4<bool>(var_0.x, true, true, true)), !var_0.x, true, true)), !select(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, true, var_0.x, true), var_0.x), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, true, var_0.x, false), false), any(vec4<bool>(var_0.x, var_0.x, true, true)))), any(select(!(!var_0.wy), var_0.wy, true)));
    let var_1 = select(~vec3<i32>(1i, 1i, 1i), -(~select(~vec3<i32>(-10643i, 2147483647i, 19983i), -vec3<i32>(-1i, 11755i, -18046i), var_0.x)), 4294967295u != ~u_input.b.x);
    let var_2 = vec2<i32>(~var_1.x, abs(-1i));
    global2 = global1[_wgslsmith_index_u32(1u, 31u)];
    return 40588u;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.a, arg_0.a, 1000f)), vec4<f32>(arg_2, 531f, 277f, arg_0.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, arg_2, arg_0.a, arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(207f, 2157f, 680f, arg_0.a) + vec4<f32>(-2295f, global2.a, -839f, arg_2)))))));
    var var_1 = global1[_wgslsmith_index_u32(func_3(), 31u)];
    var var_2 = (abs(-select(vec3<i32>(-14286i, arg_1, arg_1), vec3<i32>(2147483647i, 65084i, -42826i), true)) ^ firstLeadingBit(vec3<i32>(2147483647i, arg_1, ~(-1i)))) << (countOneBits(select(_wgslsmith_div_vec3_u32(u_input.b, ~u_input.b), u_input.b, _wgslsmith_f_op_f32(floor(-841f)) == -256f)) % vec3<u32>(32u));
    var_2 = -vec3<i32>(var_2.x, -2147483647i, max(-arg_1, firstTrailingBit(i32(-1i) * -13372i)));
    let var_3 = true;
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(countOneBits(vec2<u32>(37613u, u_input.e.x))), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), ~vec2<u32>(u_input.b.x, u_input.e.x))), countOneBits(firstLeadingBit(firstLeadingBit(u_input.d))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> Struct_2 {
    global0 = _wgslsmith_div_i32(-1i >> (~func_2(Struct_2(global2.a), -2147483647i, arg_0.b) % 32u), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 31871i), vec3<i32>(2147483647i, 2147483647i, 0i))) != ~(-1i);
    let var_0 = arg_0;
    var var_1 = -1054f;
    global2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1392f * global2.a))))));
    let var_2 = var_0;
    return global1[_wgslsmith_index_u32(var_2.a, 31u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> StorageBuffer {
    var var_0 = ~(~(~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, 0u, arg_2, arg_0.a), vec4<u32>(1u, 0u, 74447u, arg_2), vec4<u32>(1u, u_input.d.x, arg_0.a, u_input.d.x)))));
    global2 = Struct_2(arg_1.a);
    global3 = array<vec2<f32>, 1>();
    let var_1 = Struct_1(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1887f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-553f, arg_0.b, false)))), all(vec4<bool>(true, true, true, true)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -452f), -897f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), 1000f))), var_1.b));
    return StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.b, 1000f)), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_add_vec2_i32(select(vec2<i32>(1i, 1i), vec2<i32>(-62419i, i32(-1i) * -2147483647i), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), min(firstTrailingBit(vec2<i32>(-1i, 43636i)), vec2<i32>(79364i, -18449i)) << (min(~var_0.xy, select(vec2<u32>(var_1.a, 0u), var_0.zw, vec2<bool>(true, false))) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1126f, -766f) + global3[_wgslsmith_index_u32(u_input.e.x, 1u)]) * global3[_wgslsmith_index_u32(7228u, 1u)]), 1i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(_wgslsmith_div_u32(u_input.e.x >> (1u % 32u), ~62329u) << (1u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1372f)) * global2.a)), func_1(Struct_1(_wgslsmith_dot_vec2_u32(abs(u_input.c.zz), u_input.b.zx), _wgslsmith_f_op_f32(f32(-1f) * -974f)), 59726u, select(vec4<bool>(true, false, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), false), vec4<bool>(true, true, true, true))), u_input.c.x);
}

