struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(10771u, 1u), vec2<u32>(61112u, 30839u));

var<private> global1: Struct_2;

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_2, 4>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = global1.b.c;
    let var_1 = 4294967295u;
    var var_2 = Struct_1(arg_1.a, global1.b.b, !(u_input.d < firstTrailingBit(2147483647i | u_input.d)), ~var_1);
    var var_3 = Struct_1(max(min(select(abs(vec3<u32>(global1.d.d, var_2.d, u_input.c)), vec3<u32>(global2.x, u_input.a, global1.c.x), true), ~vec3<u32>(0u, 2372u, 4294967295u)), max(vec3<u32>(var_2.b.x, u_input.a, global2.x) >> (~global2.wwy % vec3<u32>(32u)), countOneBits(~vec3<u32>(6821u, 1u, u_input.c)))), var_2.b, !global1.b.c, 10470u);
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1154f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-808f, -336f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(-228f)))))), !all(vec2<bool>(any(arg_0), true))));
    return ~(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 1u), ~global2.x) ^ 0u) & arg_1.b.x;
}

fn func_2() -> i32 {
    var var_0 = ~(~0u);
    let var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, !global1.b.c | global1.d.c), select(vec3<bool>(global1.b.c && global1.d.c, global1.d.c & true, global1.d.c && false), select(select(vec3<bool>(global1.b.c, false, global1.b.c), vec3<bool>(global1.d.c, false, global1.d.c), vec3<bool>(global1.d.c, true, false)), !vec3<bool>(true, true, global1.b.c), !vec3<bool>(false, global1.d.c, global1.b.c)), vec3<bool>(true, true, false)));
    let var_2 = global2.xy;
    global1 = Struct_2(vec2<u32>(var_2.x, u_input.c), Struct_1(vec3<u32>(firstTrailingBit(24938u), 1u, _wgslsmith_sub_u32(var_2.x | 51057u, 55060u)), global2.wxx, -238f <= _wgslsmith_f_op_f32(select(-1237f, _wgslsmith_f_op_f32(f32(-1f) * -1069f), false | global1.d.c)), ~global1.c.x), firstTrailingBit(vec3<u32>(1u << (1u % 32u), u_input.c, ~func_3(vec4<bool>(var_1.x, var_1.x, true, var_1.x), Struct_1(vec3<u32>(35546u, 1u, 17057u), global2.zxy, global1.d.c, var_2.x)))), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(~0u, min(u_input.c, 0u), _wgslsmith_mod_u32(global2.x, u_input.a)), vec3<u32>(~4294967295u, 0u, u_input.a)), select(abs(vec3<u32>(global2.x, var_2.x, u_input.a)), min(global2.wxx, global1.c), false || global1.b.c) >> (global1.d.b % vec3<u32>(32u)), !(min(u_input.d, 9635i) >= 16662i), abs(abs(17338u))));
    var var_3 = global3[_wgslsmith_index_u32(~var_2.x, 4u)];
    return _wgslsmith_mult_i32(u_input.b, -2147483647i);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1713f))), -1334f)))));
    let var_1 = var_0.x;
    let var_2 = select(~abs(vec2<i32>(u_input.d, u_input.b)), vec2<i32>(-firstLeadingBit(0i), func_2()), vec2<bool>(true, true)) & ~(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(0i, u_input.d)) | -max(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, 23237i)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-906f, -710f) + vec2<f32>(2437f, var_0.x))))));
    global2 = firstLeadingBit(vec4<u32>(func_3(!(!vec4<bool>(global1.b.c, false, true, false)), Struct_1(~vec3<u32>(0u, 4294967295u, global2.x), ~global1.d.a, false, ~global2.x)), 1u, ~global2.x, 14304u ^ global1.d.b.x));
    return StorageBuffer(vec3<i32>(var_2.x, _wgslsmith_mod_i32(abs(var_2.x) ^ 1i, 1i), u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(select(_wgslsmith_div_u32(51069u, 64031u), global2.x, u_input.b > u_input.d), ~min(u_input.c, 1u)), firstTrailingBit(_wgslsmith_div_vec2_u32(global2.wy, abs(global0[_wgslsmith_index_u32(4294967295u, 2u)])))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 659f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1472f + var_0.x), -1488f) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 1032f), vec2<f32>(var_0.x, 1009f))), _wgslsmith_div_vec2_f32(vec2<f32>(-416f, var_0.x), vec2<f32>(-2781f, 1281f))))))), reverseBits(global2.x) & reverseBits(global1.d.b.x), vec3<f32>(1103f, 492f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -1499f)) + -1438f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(10903u, 4u)];
    let x = u_input.a;
    s_output = func_1();
}

