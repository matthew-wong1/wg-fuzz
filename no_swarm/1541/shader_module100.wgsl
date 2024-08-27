struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
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

var<private> global0: array<i32, 10> = array<i32, 10>(36018i, 0i, 0i, 25729i, i32(-2147483648), 1i, 2147483647i, 32504i, 23633i, -4989i);

var<private> global1: Struct_2 = Struct_2(vec2<u32>(15908u, 29512u), Struct_1(vec3<bool>(false, false, false), 4294967295u, true, -491f), Struct_1(vec3<bool>(true, false, false), 4294967295u, false, 1386f), vec3<f32>(-727f, -754f, -385f));

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<u32>(1u, 67359u), Struct_1(vec3<bool>(true, true, false), 82290u, true, 469f), Struct_1(vec3<bool>(false, true, false), 0u, false, 500f), vec3<f32>(524f, 795f, -445f)), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(vec3<bool>(true, true, true), 0u, false, 536f), Struct_1(vec3<bool>(true, true, true), 0u, false, 1049f), vec3<f32>(-592f, -2177f, -1959f)), Struct_2(vec2<u32>(23038u, 31356u), Struct_1(vec3<bool>(false, true, false), 1u, false, -516f), Struct_1(vec3<bool>(true, true, true), 0u, false, -1506f), vec3<f32>(1194f, 1569f, -1605f)), Struct_2(vec2<u32>(73948u, 4294967295u), Struct_1(vec3<bool>(false, true, false), 11020u, true, -950f), Struct_1(vec3<bool>(false, false, true), 19649u, true, 113f), vec3<f32>(155f, 230f, -893f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-290f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.d) * _wgslsmith_f_op_f32(-514f + 1441f))), _wgslsmith_f_op_f32(sign(arg_0.x)), arg_1.x), global1.b);
    var var_1 = _wgslsmith_div_i32(reverseBits(reverseBits(u_input.a.x)), u_input.a.x);
    global0 = array<i32, 10>();
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.b.b ^ 52754u, var_0.c.b | 4294967295u, var_0.c.b, global1.a.x)), firstTrailingBit((vec4<u32>(34825u, var_0.c.b, global1.a.x, global1.b.b) << (vec4<u32>(global1.b.b, 4294967295u, global1.c.b, 11120u) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global1.c.b, 83u, 8036u, 4294967295u), vec4<u32>(global1.b.b, global1.c.b, global1.c.b, 71619u)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_add_u32(~7493u, var_0.c.b << (0u % 32u)), global1.c.b, 0u, ~(~29589u)) % vec4<u32>(32u))), 4u)];
    var var_2 = -2894i;
    return firstTrailingBit(vec4<i32>(~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global1.a, global1.a), 10u)], -2147483647i, u_input.a.x, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(u_input.a, abs(vec2<i32>(u_input.a.x, 2147483647i))))));
}

fn func_3() -> vec2<u32> {
    global1 = global2[_wgslsmith_index_u32(global1.b.b, 4u)];
    let var_0 = reverseBits(u_input.a.x >> (~0u % 32u));
    var var_1 = vec2<u32>(0u, abs(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.b, global1.c.b, 4294967295u), vec3<u32>(0u, 27446u, 30014u)), global1.a.x & abs(global1.a.x))));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, var_1.x), 4u)];
    var var_3 = vec4<i32>(u_input.a.x, ~(~u_input.a.x << ((var_1.x >> (var_1.x % 32u)) % 32u)), _wgslsmith_div_i32(i32(-1i) * -global0[_wgslsmith_index_u32(var_1.x, 10u)], countOneBits(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global1.b.b, 10u)], var_0))), -32333i) | firstLeadingBit(select(select(-vec4<i32>(u_input.a.x, var_0, -2147483647i, 37573i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, global0[_wgslsmith_index_u32(var_2.a.x, 10u)], var_0), vec4<i32>(global0[_wgslsmith_index_u32(global1.a.x, 10u)], -14464i, u_input.a.x, -2147483647i)), false), -abs(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 0i)), select(select(vec4<bool>(true, var_2.c.c, var_2.c.c, var_2.b.c), vec4<bool>(var_2.c.c, true, var_2.c.a.x, var_2.b.a.x), true), vec4<bool>(true, global1.c.a.x, true, global1.c.a.x), all(vec2<bool>(global1.b.a.x, true)))));
    return var_2.a;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(func_3(), Struct_1(vec3<bool>(global1.a.x <= 43636u, !all(vec2<bool>(true, global1.b.c)), global1.b.c), global1.b.b, _wgslsmith_div_u32(_wgslsmith_add_u32(global1.a.x, 11249u), _wgslsmith_mod_u32(0u, 11012u)) > _wgslsmith_add_u32(_wgslsmith_sub_u32(global1.a.x, global1.b.b), global1.c.b), -316f), global1.b, vec3<f32>(global1.b.d, -552f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-154f, global1.d.x) + 480f)));
    global1 = Struct_2(_wgslsmith_mod_vec2_u32(max(_wgslsmith_add_vec2_u32(~var_0.a, min(vec2<u32>(var_0.c.b, global1.b.b), global1.a)), vec2<u32>(global1.c.b, 24818u) ^ vec2<u32>(63097u, 69583u)), _wgslsmith_sub_vec2_u32(vec2<u32>(min(1u, global1.b.b), _wgslsmith_div_u32(global1.b.b, var_0.c.b)), abs(~var_0.a))), global1.b, global1.c, var_0.d);
    global2 = array<Struct_2, 4>();
    global0 = array<i32, 10>();
    var var_1 = Struct_1(select(global1.b.a, global1.b.a, global1.c.a), (var_0.a.x & var_0.a.x) << (_wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(1521u, global1.a.x, var_0.a.x), vec3<u32>(51014u, 0u, global1.b.b), false)), vec3<u32>(0u, global1.c.b, 45708u)) % 32u), !(!var_0.b.c), _wgslsmith_f_op_f32(step(228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.d.x, 1256f)) * -359f)))));
    return Struct_2(vec2<u32>(var_0.c.b, ~var_1.b), var_0.b, Struct_1(!(!select(vec3<bool>(var_0.c.c, true, global1.c.a.x), global1.b.a, false)), var_0.a.x, !(min(u_input.a.x, global0[_wgslsmith_index_u32(global1.a.x, 10u)]) < (arg_0.x | arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-606f * global1.d.x)) * _wgslsmith_f_op_f32(1159f + _wgslsmith_f_op_f32(var_1.d + 763f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(545f, -694f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(204f * 190f) - _wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-global1.c.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_2(min(func_1(vec3<f32>(-1388f, _wgslsmith_f_op_f32(f32(-1f) * -928f), -749f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1345f)))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 10u)], -1i, -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(51753u, 10u)], global0[_wgslsmith_index_u32(61862u, 10u)], 28105i, global0[_wgslsmith_index_u32(41348u, 10u)]))));
    var var_0 = global1.b.d;
    var_0 = -944f;
    let var_1 = func_2(-_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-16699i, -2147483647i, global0[_wgslsmith_index_u32(39668u, 10u)], 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -13439i, global0[_wgslsmith_index_u32(global1.c.b, 10u)], 41389i), vec4<i32>(global0[_wgslsmith_index_u32(global1.c.b, 10u)], 2147483647i, u_input.a.x, global0[_wgslsmith_index_u32(global1.a.x, 10u)]))), vec4<i32>(-2147483647i, 94182i, -15577i, u_input.a.x) >> (~vec4<u32>(63123u, 4294967295u, 28247u, 0u) % vec4<u32>(32u)))).c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(563f)) - -306f);
    var var_3 = global2[_wgslsmith_index_u32(11021u ^ global1.c.b, 4u)];
    var var_4 = Struct_3(-1645f, vec3<f32>(var_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.d.x))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.c.d, var_2)))))), Struct_1(!vec3<bool>(any(vec4<bool>(var_3.b.a.x, false, false, false)), select(true, true, global1.c.a.x), true), _wgslsmith_add_u32(var_3.c.b ^ 0u, 50536u), true, _wgslsmith_f_op_f32(940f * var_3.b.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1466f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2)))));
}

